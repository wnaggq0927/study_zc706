import sys
import socket
import collections  # 【新增】用于高效存储历史数据
from PySide6.QtWidgets import (QApplication, QMainWindow, QWidget, QVBoxLayout,
                               QHBoxLayout, QGridLayout, QPushButton, QLabel, QTextEdit, QFrame, QCheckBox)
from PySide6.QtCore import Qt, QThread, Signal
import pyqtgraph as pg

# --- 配置 ---
BOARD_IP = "192.168.0.20"
BOARD_PORT = 5001
MAX_HISTORY = 50000  # 【关键】你想保留多少个历史点？这里设置了 5万点

# --- 样式表 (保持不变) ---
STYLESHEET = """
QMainWindow { background-color: #121212; }
QLabel { color: #e0e0e0; font-family: 'Segoe UI'; font-size: 14px; }
QPushButton {
    background-color: #2d2d2d; color: white; border: 2px solid #3d3d3d;
    border-radius: 8px; padding: 12px; font-weight: bold;
}
QPushButton:hover { background-color: #3d3d3d; border-color: #00d2ff; }
QPushButton#WAVE_BTN { background-color: #003366; border-color: #0066cc; }
QPushButton#WAVE_BTN:hover { background-color: #004080; border-color: #0088ff; }
QFrame#CARD { background-color: #1a1a1a; border-radius: 10px; border: 1px solid #333; }
QCheckBox { color: #e0e0e0; font-weight: bold; spacing: 8px; }
QCheckBox::indicator { width: 18px; height: 18px; }
"""


# --- UDP 通信线程 (保持不变) ---
class UdpWorker(QThread):
    log_signal = Signal(str)
    monitor_signal = Signal(str, str)
    wave_signal = Signal(list)

    def __init__(self):
        super().__init__()
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.settimeout(0.5)
        self.running = True

    def send_cmd(self, cmd):
        try:
            self.sock.sendto(cmd.encode(), (BOARD_IP, BOARD_PORT))
            self.log_signal.emit(f">> 发送: {cmd}")
        except Exception as e:
            self.log_signal.emit(f"!! 发送错误: {e}")

    def run(self):
        self.log_signal.emit(f"正在监听 {BOARD_IP}:{BOARD_PORT} ...")
        while self.running:
            try:
                data, addr = self.sock.recvfrom(4096)
                msg = data.decode()

                if "[WAVE]" in msg:
                    try:
                        clean_msg = msg.replace("[WAVE]", "").strip()
                        if clean_msg.endswith(','): clean_msg = clean_msg[:-1]
                        str_values = clean_msg.split(',')
                        int_values = [int(x) for x in str_values if x.strip() != '']
                        self.wave_signal.emit(int_values)
                    except:
                        pass
                    continue

                if "[DATA]" in msg:
                    clean_msg = msg.replace("[DATA]", "").strip()
                    parts = clean_msg.split(',')
                    if len(parts) >= 2:
                        temp = parts[0].split(':')[1].strip()
                        vcc = parts[1].split(':')[1].strip()
                        self.monitor_signal.emit(temp, vcc)
                    continue

                if "[DATA]" not in msg and "[WAVE]" not in msg:
                    self.log_signal.emit(f"FPGA: {msg}")

            except socket.timeout:
                continue
            except Exception as e:
                pass

    def stop(self):
        self.running = False
        self.sock.close()
        self.wait()


# --- 主界面 ---
class ZC706Window(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("ZYNQ 历史波形记录仪")
        self.resize(1000, 800)

        # 【关键】初始化数据缓冲区
        # deque 是一个“先进先出”队列，当数据超过 MAX_HISTORY 时，会自动丢弃最旧的
        self.data_buffer = collections.deque([0] * 1000, maxlen=MAX_HISTORY)
        self.is_paused = False

        self.worker = UdpWorker()
        self.worker.log_signal.connect(self.update_log)
        self.worker.monitor_signal.connect(self.update_monitor)
        self.worker.wave_signal.connect(self.update_wave)
        self.worker.start()

        main_widget = QWidget()
        self.setCentralWidget(main_widget)
        self.layout = QVBoxLayout(main_widget)
        self.layout.setSpacing(15)
        self.layout.setContentsMargins(20, 20, 20, 20)

        self.setup_header()
        self.setup_wave_plot()
        self.setup_monitor_panel()
        self.setup_grid()
        self.setup_log()

    def setup_header(self):
        h_layout = QHBoxLayout()
        title = QLabel("ZC706 FPGA RECORDER")
        title.setStyleSheet("font-size: 24px; font-weight: bold; color: #00d2ff; letter-spacing: 2px;")

        # 【新增】暂停按钮
        self.pause_chk = QCheckBox("⏸ 暂停绘图 (便于观察)")
        self.pause_chk.stateChanged.connect(self.toggle_pause)

        # 【新增】清除按钮
        clear_btn = QPushButton("🗑️ 清空历史")
        clear_btn.setFixedSize(100, 30)
        clear_btn.clicked.connect(self.clear_history)
        clear_btn.setStyleSheet("background-color: #444; font-size: 12px; padding: 5px;")

        h_layout.addWidget(title)
        h_layout.addStretch()
        h_layout.addWidget(self.pause_chk)
        h_layout.addWidget(clear_btn)
        self.layout.addLayout(h_layout)

    def setup_wave_plot(self):
        self.plot_widget = pg.PlotWidget()
        self.plot_widget.setBackground('#1a1a1a')
        self.plot_widget.setTitle(f"History Waveform (Max {MAX_HISTORY} points)", color='#888', size='12pt')
        self.plot_widget.showGrid(x=True, y=True, alpha=0.3)
        self.plot_widget.setLabel('left', 'Value', units='')
        self.plot_widget.setLabel('bottom', 'Time', units='Samples')

        # 【关键】允许鼠标拖动（默认就是开启的，但我们明确一下）
        self.plot_widget.setMouseEnabled(x=True, y=True)
        # 启用自动缩放模式（初始状态）
        self.plot_widget.enableAutoRange()

        self.wave_curve = self.plot_widget.plot(pen=pg.mkPen(color='#00ff00', width=1))
        self.layout.addWidget(self.plot_widget)

    def setup_monitor_panel(self):
        panel_layout = QHBoxLayout()
        self.temp_label = self.create_card(panel_layout, "TEMP", "--.- C", "#ff5555")
        self.vcc_label = self.create_card(panel_layout, "VCC", "-.-- V", "#55ffff")
        self.layout.addLayout(panel_layout)

    def create_card(self, layout, title, val, color):
        frame = QFrame()
        frame.setObjectName("CARD")
        fl = QVBoxLayout(frame)
        t = QLabel(title)
        t.setAlignment(Qt.AlignCenter)
        t.setStyleSheet("color: #888; font-size: 12px; font-weight: bold;")
        v = QLabel(val)
        v.setAlignment(Qt.AlignCenter)
        v.setStyleSheet(f"color: {color}; font-size: 20px; font-weight: bold; font-family: Consolas;")
        fl.addWidget(t)
        fl.addWidget(v)
        layout.addWidget(frame)
        return v

    def setup_grid(self):
        grid = QGridLayout()
        buttons = [
            ("🌊 流水灯", '1', None), ("🎛️ 开关控", '2', None),
            ("🔢 二进制", '3', None), ("🎲 骰子", '4', None),
            ("⚡ 反应力", '5', None), ("🆘 SOS", '6', "SOS_BTN"),
            ("📈 示波器 (DMA)", '7', "WAVE_BTN"),
            ("🔌 关机", '0', None),
        ]
        for i, (text, cmd, obj_name) in enumerate(buttons):
            btn = QPushButton(text)
            if obj_name: btn.setObjectName(obj_name)
            btn.clicked.connect(lambda _, c=cmd: self.worker.send_cmd(c))
            grid.addWidget(btn, i // 4, i % 4)
        self.layout.addLayout(grid)

    def setup_log(self):
        self.log_box = QTextEdit()
        self.log_box.setReadOnly(True)
        self.log_box.setStyleSheet(
            "background-color: #111; color: #00ff00; border: 1px solid #333; font-family: Consolas; font-size: 11px;")
        self.log_box.setMaximumHeight(100)
        self.layout.addWidget(self.log_box)

    def update_log(self, text):
        self.log_box.append(text)

    def update_monitor(self, temp, vcc):
        self.temp_label.setText(temp)
        self.vcc_label.setText(vcc)

    # --- 核心：更新波形逻辑修改 ---
    def update_wave(self, new_data_chunk):
        if self.is_paused:
            return

        # 【关键】把新收到的一包数据(256个点)追加到历史缓冲区的末尾
        self.data_buffer.extend(new_data_chunk)

        # 转换成 list 或 numpy array 传给绘图库
        self.wave_curve.setData(list(self.data_buffer))

    def toggle_pause(self, state):
        self.is_paused = (state == Qt.Checked)

    def clear_history(self):
        self.data_buffer.clear()
        self.wave_curve.setData([])

    def closeEvent(self, event):
        self.worker.stop()
        event.accept()


if __name__ == "__main__":
    app = QApplication(sys.argv)
    app.setStyleSheet(STYLESHEET)
    window = ZC706Window()
    window.show()
    sys.exit(app.exec())