import sys
import socket
import re
from PySide6.QtWidgets import (QApplication, QMainWindow, QWidget, QVBoxLayout,
                               QHBoxLayout, QGridLayout, QPushButton, QLabel, QTextEdit, QFrame)
from PySide6.QtCore import Qt, QThread, Signal
from PySide6.QtGui import QFont

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
/* 标题样式 */
QLabel#HEADER {
    font-size: 24px; 
    font-weight: bold; 
    color: #00d2ff; 
    letter-spacing: 2px;
}
/* 终端样式 */
QTextEdit {
    background-color: #1e1e1e;
    color: #00ff00;
    border: 1px solid #333;
    border-radius: 5px;
    font-family: 'Consolas', monospace;
    font-size: 12px;
}
/* 按钮通用样式 */
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
/* SOS 红色按钮特异样式 */
QPushButton#SOS_BTN {
    background-color: #4a1414;
    border-color: #7f1d1d;
}
QPushButton#SOS_BTN:hover {
    background-color: #7f1d1d;
    border-color: #ff3333;
}
/* 仪表盘卡片样式 */
QFrame#MONITOR_CARD {
    background-color: #1a1a1a;
    border: 1px solid #333;
    border-radius: 10px;
}
QLabel#MONITOR_TITLE {
    color: #888;
    font-size: 12px;
    font-weight: bold;
}
QLabel#MONITOR_VALUE {
    font-size: 22px;
    font-weight: bold;
    font-family: 'Consolas';
}
"""


# --- 自定义 LED 组件 ---
class LedWidget(QFrame):
    def __init__(self, color="#00ff00"):
        super().__init__()
        self.setFixedSize(30, 30)
        self.base_color = color
        self.is_on = False
        self.update_style()

    def set_status(self, on):
        self.is_on = on
        self.update_style()

    def update_style(self):
        if self.is_on:
            style = f"""
                background-color: {self.base_color};
                border-radius: 15px;
                border: 2px solid #fff;
                margin: 2px;
            """
        else:
            style = """
                background-color: #222;
                border-radius: 15px;
                border: 2px solid #444;
                margin: 2px;
            """
        self.setStyleSheet(style)


# --- 后台通信线程 ---
class UdpWorker(QThread):
    log_signal = Signal(str)
    led_signal = Signal(list)  # 用于更新 LED
    monitor_signal = Signal(str, str)  # 【新增】用于更新 温度 和 电压 (Temp, Vcc)

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

                # --- 1. 处理系统监控数据 [DATA] ---
                # 格式: "[DATA] Temp:45.1C, Vcc:0.99V"
                if "[DATA]" in msg:
                    try:
                        # 去掉前缀，按逗号分割
                        clean_msg = msg.replace("[DATA]", "").strip()
                        parts = clean_msg.split(',')

                        # 提取 Temp 值 (例如 "Temp:45.1C" -> "45.1C")
                        temp_val = parts[0].split(':')[1].strip()
                        # 提取 Vcc 值 (例如 "Vcc:0.99V" -> "0.99V")
                        vcc_val = parts[1].split(':')[1].strip()

                        # 发送信号更新 UI
                        self.monitor_signal.emit(temp_val, vcc_val)
                    except:
                        pass  # 解析失败就不管了

                    # 监控数据就不打印到日志框了，免得刷屏太快
                    continue

                    # --- 2. 其他常规日志 ---
                self.log_signal.emit(f"<< [FPGA]: {msg}")

                # --- 3. 解析 LED 状态 (Binary Mode) ---
                # 寻找类似 [ 0 1 0 1 ] 的字符串
                match = re.search(r'\[\s*([01])\s+([01])\s+([01])\s+([01])\s*\]', msg)
                if match:
                    states = [int(match.group(i)) for i in range(1, 5)]
                    self.led_signal.emit(states)

                # --- 4. 解析 Dice Mode ---
                if "Dice Result:" in msg:
                    try:
                        val = int(msg.split(":")[-1].strip())
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
        self.resize(700, 700)  # 稍微加高一点

        self.worker = UdpWorker()
        self.worker.log_signal.connect(self.update_log)
        self.worker.led_signal.connect(self.update_leds)
        self.worker.monitor_signal.connect(self.update_monitor)  # 【新增】连接监控信号
        self.worker.start()

        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        self.layout = QVBoxLayout(main_widget)
        self.layout.setSpacing(15)
        self.layout.setContentsMargins(25, 25, 25, 25)

        self.setup_header()
        self.setup_monitor_panel()  # 【新增】监控仪表盘
        self.setup_led_panel()
        self.setup_grid()
        self.setup_log()

    def setup_header(self):
        title = QLabel("ZC706 FPGA COMMANDER")
        title.setObjectName("HEADER")
        title.setAlignment(Qt.AlignCenter)
        self.layout.addWidget(title)

    # --- 新增：监控仪表盘 ---
    def setup_monitor_panel(self):
        panel_layout = QHBoxLayout()
        panel_layout.setSpacing(20)

        # 温度卡片
        self.temp_label = self.create_monitor_card(panel_layout, "CHIP TEMP", "Wait...", "#ff5555")

        # 电压卡片
        self.vcc_label = self.create_monitor_card(panel_layout, "CORE VCC", "Wait...", "#55ffff")

        self.layout.addLayout(panel_layout)

    def create_monitor_card(self, parent_layout, title_text, init_value, value_color):
        card = QFrame()
        card.setObjectName("MONITOR_CARD")
        card_layout = QVBoxLayout(card)
        card_layout.setContentsMargins(15, 15, 15, 15)

        title = QLabel(title_text)
        title.setObjectName("MONITOR_TITLE")
        title.setAlignment(Qt.AlignCenter)

        value = QLabel(init_value)
        value.setObjectName("MONITOR_VALUE")
        value.setStyleSheet(f"color: {value_color};")
        value.setAlignment(Qt.AlignCenter)

        card_layout.addWidget(title)
        card_layout.addWidget(value)

        parent_layout.addWidget(card)
        return value  # 返回 Value Label 以便后续更新

    def setup_led_panel(self):
        led_frame = QFrame()
        led_frame.setStyleSheet("background-color: #1a1a1a; border-radius: 10px; border: 1px solid #333;")
        h_layout = QHBoxLayout(led_frame)
        h_layout.setContentsMargins(20, 15, 20, 15)

        # 居中显示
        h_layout.addStretch()

        self.leds = []
        for i in range(4):
            lbl = QLabel(f"L{i + 1}")
            lbl.setStyleSheet("color: #666; font-weight: bold; margin-right: 5px;")
            h_layout.addWidget(lbl)

            led = LedWidget(color="#00ff00")
            h_layout.addWidget(led)
            self.leds.append(led)

            if i < 3: h_layout.addSpacing(25)

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

            # 布局逻辑：最后一行占两格，其他一行两个
            if i == len(buttons) - 1:
                grid.addWidget(btn, i // 2, 0, 1, 2)
            else:
                grid.addWidget(btn, i // 2, i % 2)
        self.layout.addLayout(grid)

    def setup_log(self):
        lbl = QLabel("TERMINAL OUTPUT:")
        lbl.setStyleSheet("font-size: 12px; font-weight: bold; margin-top: 10px; color: #666;")
        self.layout.addWidget(lbl)
        self.log_box = QTextEdit()
        self.log_box.setReadOnly(True)
        self.layout.addWidget(self.log_box)

    # --- Slot: 更新日志 ---
    def update_log(self, text):
        self.log_box.append(text)
        sb = self.log_box.verticalScrollBar()
        sb.setValue(sb.maximum())

    # --- Slot: 更新 LED ---
    def update_leds(self, states):
        for i, state in enumerate(states):
            if i < len(self.leds):
                self.leds[i].set_status(state == 1)

    # --- Slot: 更新监控数据 ---
    def update_monitor(self, temp, vcc):
        self.temp_label.setText(temp)  # 例如 "45.1C"
        self.vcc_label.setText(vcc)  # 例如 "0.99V"

    def closeEvent(self, event):
        self.worker.stop()
        event.accept()


if __name__ == "__main__":
    app = QApplication(sys.argv)
    app.setStyleSheet(STYLESHEET)
    window = ZC706Window()
    window.show()
    sys.exit(app.exec())