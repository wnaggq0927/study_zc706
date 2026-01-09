import socket
import cv2
import numpy as np

# ================= 配置 =================
UDP_IP = "0.0.0.0"
UDP_PORT = 5005
WIDTH = 1080
HEIGHT = 720
CHANNELS = 2
FRAME_SIZE = WIDTH * HEIGHT * CHANNELS
PACKET_SIZE = 1450  # 必须和 C 代码一致


def main():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    sock.bind((UDP_IP, UDP_PORT))

    sock.setsockopt(socket.SOL_SOCKET, socket.SO_RCVBUF, 64 * 1024 * 1024)
    # 【关键修改】设置一个很短的超时时间 (比如 0.1秒)
    # 如果 0.1秒没收到数据，说明这一帧可能断了，或者发完了，我们利用这个间隙重置 buffer
    sock.settimeout(0.1)

    print(f"Listening on {UDP_IP}:{UDP_PORT}...")
    print("按 'q' 键退出...")

    frame_buffer = bytearray(FRAME_SIZE)
    buffer_idx = 0

    while True:
        try:
            # 接收数据
            data, addr = sock.recvfrom(4096)
            d_len = len(data)

            # 拼包
            if buffer_idx + d_len <= FRAME_SIZE:
                frame_buffer[buffer_idx: buffer_idx + d_len] = data
                buffer_idx += d_len
            else:
                # 溢出保护：如果多了，直接丢弃，等待下一帧重置
                buffer_idx = 0
                continue

            # 显示逻辑
            if buffer_idx == FRAME_SIZE:
                # 1. 解码为 uint16 矩阵
                raw_frame = np.frombuffer(frame_buffer, dtype=np.uint16).reshape((HEIGHT, WIDTH))

                # 2. 还原回 BGR888 供 OpenCV 显示 (位移还原)
                img_bgr = np.zeros((HEIGHT, WIDTH, 3), dtype=np.uint8)
                img_bgr[:, :, 2] = ((raw_frame & 0xF800) >> 8).astype(np.uint8)  # R
                img_bgr[:, :, 1] = ((raw_frame & 0x07E0) >> 3).astype(np.uint8)  # G
                img_bgr[:, :, 0] = ((raw_frame & 0x001F) << 3).astype(np.uint8)  # B

                # 显示 (可根据需要 resize)
                cv2.imshow('ZC706 RGB565 Camera', img_bgr)
                buffer_idx = 0

                if cv2.waitKey(1) & 0xFF == ord('q'):
                    break

        except socket.timeout:
            # 【自动修复机制】
            # 如果超时了（说明数据流断了或一帧发完了但没满），强制清空 Buffer
            # 这样下一包数据来的时候，会从头开始存，画面就自动对齐了！
            if buffer_idx > 0:
                # print("Timeout/Frame Gap - Resetting Buffer")
                buffer_idx = 0
            continue
        except Exception as e:
            print(f"Error: {e}")
            break

    sock.close()
    cv2.destroyAllWindows()


if __name__ == "__main__":
    main()