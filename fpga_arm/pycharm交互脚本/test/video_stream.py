import socket
import cv2
import numpy as np
import time
import struct
import math
import random
import mediapipe as mp

# ================= 配置 =================
FPGA_IP = "192.168.0.20"
FPGA_PORT = 5006
CHUNK_SIZE = 1450
WIDTH, HEIGHT = 1080, 720  # 保持 720p RGB565 稳定版

# ================= AI 初始化 =================
mp_hands = mp.solutions.hands
mp_draw = mp.solutions.drawing_utils
# max_num_hands=1: 专注单手，速度最快
hands = mp_hands.Hands(
    min_detection_confidence=0.7,
    min_tracking_confidence=0.7,
    max_num_hands=1
)

# ================= 网络初始化 =================
sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)

# ================= 全局变量 =================
canvas_points = []  # 绘画轨迹
effect_color = (255, 255, 0)  # 默认特效颜色 (青色: BGR)
prev_gesture = "NONE"


# 计算两点距离 (用于识别 OK 手势)
def get_dist(p1, p2):
    return math.hypot(p1.x - p2.x, p1.y - p2.y)


def main():
    global effect_color, prev_gesture

    cap = cv2.VideoCapture(0)
    cap.set(cv2.CAP_PROP_FRAME_WIDTH, WIDTH)
    cap.set(cv2.CAP_PROP_FRAME_HEIGHT, HEIGHT)

    print("\n=== 终极手势交互系统 (MediaPipe) 已启动 ===")
    print("功能指南：")
    print("☝  食指移动 -> 绘制光剑轨迹")
    print("✊  握紧拳头 -> 清空画布")
    print("👌  OK 手势  -> 切换颜色")
    print("按 'Ctrl+C' 停止")

    current_img_id = 1

    try:
        while True:
            ret, frame = cap.read()
            if not ret: break

            # 1. 镜像翻转 (交互必须步骤)
            frame = cv2.flip(frame, 1)
            h, w, _ = frame.shape

            # 2. AI 处理
            rgb_frame = cv2.cvtColor(frame, cv2.COLOR_BGR2RGB)
            results = hands.process(rgb_frame)

            # 3. 手势逻辑处理
            if results.multi_hand_landmarks:
                for hand_lms in results.multi_hand_landmarks:
                    # 绘制超帅的科技感骨架
                    mp_draw.draw_landmarks(frame, hand_lms, mp_hands.HAND_CONNECTIONS)

                    # 获取关键点坐标对象
                    landmarks = hand_lms.landmark

                    # 获取屏幕坐标
                    tip8 = landmarks[8]  # 食指尖
                    cx, cy = int(tip8.x * w), int(tip8.y * h)

                    # --- 手势判断算法 ---

                    # A. 判断是否握拳: 指尖(y) 低于 指关节(y) (注意y向下为正，所以是大于)
                    # 检查 食指(8)、中指(12)、无名指(16)、小指(20) 是否都弯曲
                    fingers_folded = (
                            landmarks[8].y > landmarks[6].y and
                            landmarks[12].y > landmarks[10].y and
                            landmarks[16].y > landmarks[14].y and
                            landmarks[20].y > landmarks[18].y
                    )

                    # B. 判断是否 OK 手势: 大拇指(4) 和 食指(8) 距离很近
                    dist_ok = get_dist(landmarks[4], landmarks[8])
                    is_ok = dist_ok < 0.05

                    # --- 状态机执行 ---
                    if fingers_folded:
                        # ✊ 握拳 -> 清空
                        canvas_points.clear()
                        cv2.putText(frame, "CLEARED!", (50, 100), cv2.FONT_HERSHEY_SIMPLEX, 1.5, (0, 0, 255), 3)

                    elif is_ok:
                        # 👌 OK -> 变色 (加个状态锁，防止闪烁)
                        if prev_gesture != "OK":
                            effect_color = (random.randint(50, 255), random.randint(50, 255), random.randint(50, 255))
                        prev_gesture = "OK"
                        cv2.putText(frame, "COLOR CHANGE!", (50, 100), cv2.FONT_HERSHEY_SIMPLEX, 1, effect_color, 2)

                    else:
                        # ☝ 正常状态 -> 绘图 (只要不是握拳和OK，就默认是食指绘图)
                        prev_gesture = "DRAW"
                        canvas_points.append((cx, cy))
                        # 限制轨迹长度，形成“流光拖尾”效果 (保留最近 40 个点)
                        if len(canvas_points) > 40:
                            canvas_points.pop(0)

                        # 在指尖画个光球
                        cv2.circle(frame, (cx, cy), 10, (255, 255, 255), -1)

            # 4. 绘制所有轨迹 (画在 frame 上，这样 FPGA 也能看到)
            for i in range(1, len(canvas_points)):
                # 线条粗细渐变：越新的点越粗
                thickness = int(np.sqrt(i / len(canvas_points)) * 10) + 1
                cv2.line(frame, canvas_points[i - 1], canvas_points[i], effect_color, thickness)

            # 5. 准星与UI
            cv2.line(frame, (w // 2 - 20, h // 2), (w // 2 + 20, h // 2), (200, 200, 200), 1)
            cv2.line(frame, (w // 2, h // 2 - 20), (w // 2, h // 2 + 20), (200, 200, 200), 1)

            # 6. 转码与发送 (RGB565 + 稳定流控)
            frame_resized = cv2.resize(frame, (WIDTH, HEIGHT))
            img_rgb = cv2.cvtColor(frame_resized, cv2.COLOR_BGR2RGB).astype(np.uint16)

            r5 = (img_rgb[:, :, 0] & 0xF8) << 8
            g6 = (img_rgb[:, :, 1] & 0xFC) << 3
            b5 = (img_rgb[:, :, 2] >> 3)
            rgb565 = r5 | g6 | b5

            data = rgb565.tobytes()
            total_len = len(data)
            sent_len = 0

            while sent_len < total_len:
                end = sent_len + CHUNK_SIZE
                chunk = data[sent_len: end]
                header = struct.pack('<II', current_img_id, sent_len)
                sock.sendto(header + chunk, (FPGA_IP, FPGA_PORT))
                sent_len += len(chunk)

                # 稳定流控参数
                if (sent_len // CHUNK_SIZE) % 320== 0:
                    time.sleep(0.000005)

            current_img_id = 1 if current_img_id == 2 else 2

            # 显示在电脑屏幕上（可选，方便调试）
            cv2.imshow('FPGA Gesture System', frame)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                break

    except KeyboardInterrupt:
        pass
    finally:
        cap.release()
        sock.close()
        cv2.destroyAllWindows()


if __name__ == "__main__":
    main()