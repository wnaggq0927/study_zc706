import sys
import socket
import re
from PySide6.QtWidgets import (QApplication, QMainWindow, QWidget, QVBoxLayout,
                               QHBoxLayout, QGridLayout, QPushButton, QLabel, QTextEdit, QFrame)
from PySide6.QtCore import Qt, QThread, Signal, Property, QSize
from PySide6.QtGui import QColor

# --- 配置部分 ---
BOARD_IP = "192.168.0.20"
BOARD_PORT = 5001

# --- QSS 样式表 ---
STYLESHEET = """
QMainWindow {
    background-color: #121212;
}
QLabel {
    color: #e0e0e0;
    font-family: 'Segoe UI', sans-serif;
}
QTextEdit {
    background-color: #1e1e1e;
    color: #00ff00;
    border: 1px solid #333;
    border-radius: 5px;
    font-family: 'Consolas', monospace;
    font-size: 12px;
}
QPushButton {
    background-color: #2d2d2d;
    color: white;
    border: 2px solid #3d3d3d;
    border-radius: 8px;
    padding: 15px;
    font-size: 14px;
    font-weight: bold;
}
QPushButton:hover {
    background-color: #3d3d3d;
    border-color: #555;
}
QPushButton:pressed {
    background-color: #1a1a1a;
    border-color: #00ff00;
}
QPushButton#SOS_BTN {
    background-color: #4a1414;
    border-color: #7f1d1d;
}
QPushButton#SOS_BTN:hover {
    background-color: #7f1d1d;
    border-color: #ff3333;
}
"""


# --- 自定义 LED 组件 ---
class LedWidget(QFrame):
    def __init__(self, color="#00ff00"):
        super().__init__()
        self.setFixedSize(30, 30)  # 灯的大小
        self.base_color = color
        self.is_on = False
        self.update_style()

    def set_status(self, on):
        self.is_on = on
        self.update_style()

    def update_style(self):
        if self.is_on:
            # 亮灯样式：高亮颜色 + 边框 + 发光光晕 (box-shadow 模拟)
            style = f"""
                background-color: {self.base_color};
                border-radius: 15px;
                border: 2px solid #fff;
            """
        else:
            # 灭灯样式：深灰色 + 暗边框
            style = """
                background-color: #222;
                border-radius: 15px;
                border: 2px solid #444;
            """
        self.setStyleSheet(style)


# --- 后台通信线程 ---
class UdpWorker(QThread):
    log_signal = Signal(str)
    led_signal = Signal(list)  # 新增信号：发送 [0, 1, 0, 1] 这种状态列表

    def __init__(self):
        super().__init__()
        self.running = True
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.settimeout(1.0)

    def send_cmd(self, cmd):
        try:
            self.sock.sendto(cmd.encode(), (BOARD_IP, BOARD_PORT))
            self.log_signal.emit(f">> [PC -> FPGA]: {cmd}")
        except Exception as e:
            self.log_signal.emit(f"!! 发送错误: {e}")

    def run(self):
        self.log_signal.emit(f"--- 正在连接 {BOARD_IP}:{BOARD_PORT} ---")
        while self.running:
            try:
                data, addr = self.sock.recvfrom(1024)
                msg = data.decode()

                # 1. 发送日志到 UI
                self.log_signal.emit(f"<< [FPGA]: {msg}")

                # 2. 尝试解析 LED 状态 (针对你的 Binary Count 模式)
                # 寻找类似 [ 0 1 0 1 ] 的字符串
                match = re.search(r'\[\s*([01])\s+([01])\s+([01])\s+([01])\s*\]', msg)
                if match:
                    # 提取出 4 个状态，转换为整数列表 [1, 0, 0, 1]
                    states = [int(match.group(i)) for i in range(1, 5)]
                    self.led_signal.emit(states)

                # 针对 Dice 模式 (Dice Result: 3) -> 转换为二进制显示
                if "Dice Result:" in msg:
                    try:
                        val = int(msg.split(":")[-1].strip())
                        # 转换为 4位二进制列表 (例如 3 -> [0, 0, 1, 1])
                        states = [(val >> 3) & 1, (val >> 2) & 1, (val >> 1) & 1, (val >> 0) & 1]
                        self.led_signal.emit(states)
                    except:
                        pass

            except socket.timeout:
                continue
            except Exception as e:
                if self.running:
                    self.log_signal.emit(f"!! 接收错误: {e}")

    def stop(self):
        self.running = False
        self.sock.close()
        self.wait()


# --- 主界面 ---
class ZC706Window(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("ZYNQ-7000 终极控制终端")
        self.resize(700, 600)

        self.worker = UdpWorker()
        self.worker.log_signal.connect(self.update_log)
        self.worker.led_signal.connect(self.update_leds)  # 绑定 LED 更新信号
        self.worker.start()

        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        self.layout = QVBoxLayout(main_widget)
        self.layout.setSpacing(20)
        self.layout.setContentsMargins(30, 30, 30, 30)

        self.setup_header()
        self.setup_led_panel()  # 新增：LED 面板
        self.setup_grid()
        self.setup_log()

    def setup_header(self):
        title = QLabel("ZC706 FPGA COMMANDER")
        title.setStyleSheet("font-size: 24px; font-weight: bold; color: #00d2ff; letter-spacing: 2px;")
        title.setAlignment(Qt.AlignCenter)
        self.layout.addWidget(title)

    def setup_led_panel(self):
        # 创建一个容器放 4 个灯
        led_frame = QFrame()
        led_frame.setStyleSheet("background-color: #1a1a1a; border-radius: 10px; border: 1px solid #333;")
        h_layout = QHBoxLayout(led_frame)
        h_layout.setContentsMargins(20, 15, 20, 15)
        h_layout.addStretch()

        self.leds = []
        for i in range(4):
            # 添加标签 (LED 1, LED 2...)
            lbl = QLabel(f"L{i + 1}")
            lbl.setStyleSheet("color: #666; font-weight: bold;")
            h_layout.addWidget(lbl)

            # 添加灯
            led = LedWidget(color="#00ff00")  # 绿色灯
            h_layout.addWidget(led)
            self.leds.append(led)

            if i < 3: h_layout.addSpacing(20)

        h_layout.addStretch()
        self.layout.addWidget(led_frame)

    def setup_grid(self):
        grid = QGridLayout()
        grid.setSpacing(15)
        buttons = [
            ("🌊 流水灯模式", '1', None),
            ("🎛️ 开关直控", '2', None),
            ("🔢 二进制计数", '3', None),
            ("🎲 电子骰子", '4', None),
            ("⚡ 反应力测试", '5', None),
            ("🆘 SOS 救援", '6', "SOS_BTN"),
            ("🔌 关闭系统", '0', None),
        ]
        for i, (text, cmd, obj_name) in enumerate(buttons):
            btn = QPushButton(text)
            btn.setCursor(Qt.PointingHandCursor)
            if obj_name: btn.setObjectName(obj_name)
            btn.clicked.connect(lambda _, c=cmd: self.worker.send_cmd(c))
            if i == len(buttons) - 1:
                grid.addWidget(btn, i // 2, 0, 1, 2)
            else:
                grid.addWidget(btn, i // 2, i % 2)
        self.layout.addLayout(grid)

    def setup_log(self):
        lbl = QLabel("TERMINAL OUTPUT:")
        lbl.setStyleSheet("font-size: 12px; font-weight: bold; margin-top: 10px;")
        self.layout.addWidget(lbl)
        self.log_box = QTextEdit()
        self.log_box.setReadOnly(True)
        self.layout.addWidget(self.log_box)

    def update_log(self, text):
        self.log_box.append(text)
        sb = self.log_box.verticalScrollBar()
        sb.setValue(sb.maximum())

    def update_leds(self, states):
        """ 接收 [1, 0, 0, 1] 更新界面灯光 """
        for i, state in enumerate(states):
            if i < len(self.leds):
                self.leds[i].set_status(state == 1)

    def closeEvent(self, event):
        self.worker.stop()
        event.accept()


if __name__ == "__main__":
    app = QApplication(sys.argv)
    app.setStyleSheet(STYLESHEET)
    window = ZC706Window()
    window.show()
    sys.exit(app.exec())