import tkinter as tk
from tkinter import scrolledtext
import socket
import threading
import sys

# --- 配置部分 ---
BOARD_IP = "192.168.0.20"
BOARD_PORT = 5001


class ZC706_Controller:
    def __init__(self, root):
        self.root = root
        self.root.title("ZC706 FPGA Ultimate Controller")
        self.root.geometry("600x450")

        # 1. 初始化 UDP Socket
        try:
            self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
            # 设置接收超时，方便线程退出
            self.sock.settimeout(1.0)
        except Exception as e:
            print(f"Socket Error: {e}")
            sys.exit(1)

        self.running = True

        # --- 界面布局 ---

        # 顶部：标题和状态
        header_frame = tk.Frame(root)
        header_frame.pack(pady=10)
        tk.Label(header_frame, text="ZC706 远程控制中心", font=("Arial", 16, "bold")).pack()
        tk.Label(header_frame, text=f"Target: {BOARD_IP}:{BOARD_PORT}", fg="gray").pack()

        # 中部：按钮区域 (使用 Grid 网格布局)
        btn_frame = tk.Frame(root)
        btn_frame.pack(pady=10)

        # 定义按钮配置： (显示文字, 发送指令, 颜色)
        buttons = [
            ("1. 流水灯 (Waterfall)", '1', "#4CAF50"),
            ("2. 开关直控 (Switch)", '2', "#2196F3"),
            ("3. 二进制计数 (Binary)", '3', "#FF9800"),
            ("4. 电子骰子 (Dice)", '4', "#9C27B0"),
            ("5. 反应力测试 (Reflex)", '5', "#E91E63"),
            ("6. SOS 救援信号", '6', "#f44336"),
            ("0. 关灯 (Turn OFF)", '0', "#607D8B")
        ]

        # 动态生成按钮
        for i, (text, cmd, color) in enumerate(buttons):
            btn = tk.Button(btn_frame, text=text, bg=color, fg="white", font=("Arial", 11),
                            width=25, height=2,
                            command=lambda c=cmd: self.send_command(c))
            # 布局逻辑：每行放2个
            row = i // 2
            col = i % 2
            # 如果是最后一个“关灯”，让它居中占两列
            if i == len(buttons) - 1:
                btn.grid(row=row, column=0, columnspan=2, pady=5)
            else:
                btn.grid(row=row, column=col, padx=5, pady=5)

        # 底部：日志显示区域
        log_frame = tk.Frame(root)
        log_frame.pack(fill='both', expand=True, padx=10, pady=10)
        tk.Label(log_frame, text="通信日志 (System Log):", anchor="w").pack(fill='x')

        self.log_area = scrolledtext.ScrolledText(log_frame, height=10, state='disabled', bg="#1e1e1e", fg="#00ff00")
        self.log_area.pack(fill='both', expand=True)

        # --- 启动后台接收线程 ---
        self.recv_thread = threading.Thread(target=self.receive_loop)
        self.recv_thread.daemon = True  # 设置为守护线程，主程序关了它也关
        self.recv_thread.start()

        # 处理窗口关闭事件
        self.root.protocol("WM_DELETE_WINDOW", self.on_closing)

    def log(self, message, tag=None):
        """ 向日志区域添加文字 """
        self.log_area.config(state='normal')  # 解锁
        self.log_area.insert(tk.END, message + "\n", tag)
        self.log_area.see(tk.END)  # 自动滚动到底部
        self.log_area.config(state='disabled')  # 锁定

    def send_command(self, cmd):
        """ 发送 UDP 指令 """
        try:
            self.sock.sendto(cmd.encode(), (BOARD_IP, BOARD_PORT))
            self.log(f">> 发送指令: {cmd}", "sent")
        except Exception as e:
            self.log(f"发送错误: {e}")

    def receive_loop(self):
        """ 后台线程：死循环接收板子的回复 """
        self.log("--- UDP 监听已启动 ---")
        while self.running:
            try:
                # 阻塞等待数据 (最长等1秒，因为设置了 timeout)
                data, addr = self.sock.recvfrom(1024)
                msg = data.decode()
                # 更新 GUI (Tkinter 在这里通常是线程安全的，但标准做法是用 Queue，这里简单处理)
                self.log(f"[FPGA]: {msg}")
            except socket.timeout:
                continue  # 超时没数据，继续循环
            except Exception as e:
                if self.running:
                    self.log(f"接收错误: {e}")
                break

    def on_closing(self):
        """ 关闭窗口时的清理工作 """
        self.running = False
        self.sock.close()
        self.root.destroy()


# --- 主程序入口 ---
if __name__ == "__main__":
    root = tk.Tk()
    app = ZC706_Controller(root)

    # 配置日志颜色标签
    app.log_area.tag_config("sent", foreground="cyan")

    root.mainloop()