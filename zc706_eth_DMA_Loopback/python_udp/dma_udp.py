import sys
import socket
import collections
import numpy as np
from PySide6.QtWidgets import (QApplication, QMainWindow, QWidget, QVBoxLayout,
                               QHBoxLayout, QGridLayout, QPushButton, QLabel, QTextEdit, QFrame, QCheckBox)
from PySide6.QtCore import Qt, QThread, Signal
import pyqtgraph as pg

# --- 配置 ---
BOARD_IP = "192.168.0.20"
BOARD_PORT = 5001
MAX_HISTORY = 600

# --- 样式表 ---
STYLESHEET = """
QMainWindow { background-color: #121212; }
QLabel { color: #e0e0e0; font-family: 'Segoe UI'; font-size: 14px; }
QPushButton {
    background-color: #2d2d2d; color: white; border: 2px solid #3d3d3d;
    border-radius: 8px; padding: 12px; font-weight: bold;
}
QPushButton:hover { background-color: #3d3d3d; border-color: #00d2ff; }
QPushButton#WAVE_BTN { background-color: #003366; border-color: #0088ff; }
QFrame#CARD { background-color: #1a1a1a; border-radius: 10px; border: 1px solid #333; }
QCheckBox { color: #e0e0e0; font-weight: bold; }
"""


# --- UDP 通信线程 ---
class UdpWorker(QThread):
    log_signal = Signal(str)
    monitor_signal = Signal(str, str)
    # 发送：Ref_Sin, Ref_Cos, Mixed_Result
    wave_signal = Signal(list, list, list)

    def __init__(self):
        super().__init__()
        self.sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        self.sock.settimeout(0.5)
        self.sock.setsockopt(socket.SOL_SOCKET, socket.SO_RCVBUF, 2 * 1024 * 1024)
        self.running = True

    def send_cmd(self, cmd):
        try:
            self.sock.sendto(cmd.encode(), (BOARD_IP, BOARD_PORT))
        except Exception as e:
            self.log_signal.emit(f"!! 发送失败: {e}")

    def run(self):
        self.log_signal.emit(f"DDC 诊断模式启动 @ {BOARD_IP}...")
        while self.running:
            try:
                data, _ = self.sock.recvfrom(10240)
                if len(data) == 8192:
                    raw_u32 = np.frombuffer(data, dtype=np.uint32)

                    # 1. 解析低 16 位 (s0接口: DDS1 原始流)
                    # 强制转换为 int8 补码，确保正负波形正常
                    cos1 = (raw_u32 & 0xFF).astype(np.int8)  # bits [7:0]
                    sin1 = ((raw_u32 >> 8) & 0xFF).astype(np.int8)  # bits [15:8]

                    # 2. 解析高 16 位 (s1接口: 乘法器 16位结果)
                    # 强制转换为 int16
                    mixed_raw = (raw_u32 >> 16).astype(np.int16)

                    # 3. 极端的显示平衡：如果红线遮挡了绿线，这里强制拉开差距
                    # 我们让 Mixed 缩小 1024 倍，确保不干扰 8 位的原始信号
                    mixed_plot = (mixed_raw / 1024.0).tolist()
                    sin1_plot = sin1.tolist()
                    cos1_plot = cos1.tolist()

                    self.wave_signal.emit(sin1_plot, cos1_plot, mixed_plot)
                else:
                    try:
                        msg = data.decode('utf-8')
                        if "[DATA]" in msg:
                            parts = msg.replace("[DATA]", "").strip().split(',')
                            self.monitor_signal.emit(parts[0].split(':')[1].strip(),
                                                     parts[1].split(':')[1].strip())
                        else:
                            self.log_signal.emit(f"FPGA: {msg}")
                    except:
                        pass
            except socket.timeout:
                continue

    def stop(self):
        self.running = False; self.sock.close(); self.wait()


# --- 主界面 ---
class DDCFixWindow(QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("ZYNQ DDC 硬件诊断示波器")
        self.resize(1150, 850)

        self.bufs = [collections.deque([0] * MAX_HISTORY, maxlen=MAX_HISTORY) for _ in range(3)]

        self.worker = UdpWorker()
        self.worker.log_signal.connect(self.update_log)
        self.worker.monitor_signal.connect(self.update_monitor)
        self.worker.wave_signal.connect(self.update_wave)
        self.worker.start()

        main_widget = QWidget();
        self.setCentralWidget(main_widget)
        self.layout = QVBoxLayout(main_widget)

        self.setup_header()
        self.setup_wave_plot()
        self.setup_monitor_panel()
        self.setup_grid()
        self.setup_log()

    def setup_header(self):
        h = QHBoxLayout()
        title = QLabel("LOW 16-BIT (REF) & HIGH 16-BIT (MIXED) SYNC VIEW")
        title.setStyleSheet("font-size: 18px; font-weight: bold; color: #00d2ff;")
        self.pause_chk = QCheckBox("⏸ 暂停显示")
        h.addWidget(title);
        h.addStretch();
        h.addWidget(self.pause_chk)
        self.layout.addLayout(h)

    def setup_wave_plot(self):
        self.plot_widget = pg.PlotWidget()
        self.plot_widget.setBackground('#050505')
        self.plot_widget.showGrid(x=True, y=True, alpha=0.3)
        self.plot_widget.setYRange(-40, 40)  # 缩小量程，专门查看 8 位信号
        self.plot_widget.addLegend()

        self.curves = [
            # 绿色 Sine：加粗显示，确认为 [15:8] 位数据
            self.plot_widget.plot(pen=pg.mkPen('#00ff00', width=3), name="DDS1_Sin (Ref)"),
            # 灰色 Cosine：确认低 8 位数据
            self.plot_widget.plot(pen=pg.mkPen('#888888', width=1, style=Qt.DashLine), name="DDS1_Cos (Ref)"),
            # 红色 Mixed：显示混频包络
            self.plot_widget.plot(pen=pg.mkPen('#ff3333', width=1.5), name="Mixed_Result")
        ]
        self.layout.addWidget(self.plot_widget)

    def setup_monitor_panel(self):
        h = QHBoxLayout()
        self.temp_lab = self.create_card(h, "温度", "--.- C", "#ff5555")
        self.vcc_lab = self.create_card(h, "电压", "-.-- V", "#55ffff")
        self.layout.addLayout(h)

    def create_card(self, layout, title, val, color):
        f = QFrame();
        f.setObjectName("CARD");
        l = QVBoxLayout(f)
        t = QLabel(title);
        t.setAlignment(Qt.AlignCenter);
        t.setStyleSheet("color: #666;")
        v = QLabel(val);
        v.setAlignment(Qt.AlignCenter);
        v.setStyleSheet(f"color: {color}; font-size: 20px; font-weight: bold;")
        l.addWidget(t);
        l.addWidget(v);
        layout.addWidget(f)
        return v

    def setup_grid(self):
        grid = QGridLayout()
        btns = [("🌊 流流", '1'), ("🎛️ 开关", '2'), ("📈 混频", '7'), ("🔌 关闭", '0')]
        for i, (txt, cmd) in enumerate(btns):
            b = QPushButton(txt)
            b.clicked.connect(lambda _, c=cmd: self.worker.send_cmd(c))
            grid.addWidget(b, 0, i)
        self.layout.addLayout(grid)

    def setup_log(self):
        self.log_box = QTextEdit();
        self.log_box.setReadOnly(True);
        self.log_box.setMaximumHeight(80)
        self.log_box.setStyleSheet("background: #000; color: #0f0; font-family: Consolas;")
        self.layout.addWidget(self.log_box)

    def update_log(self, text):
        self.log_box.append(text)

    def update_monitor(self, t, v):
        self.temp_lab.setText(t); self.vcc_lab.setText(v)

    def update_wave(self, s1, c1, mix):
        if self.pause_chk.isChecked(): return
        data = [s1, c1, mix]
        for i in range(3):
            self.bufs[i].extend(data[i])
            self.curves[i].setData(list(self.bufs[i]))

    def closeEvent(self, event):
        self.worker.stop(); event.accept()


if __name__ == "__main__":
    app = QApplication(sys.argv);
    app.setStyleSheet(STYLESHEET)
    window = DDCFixWindow();
    window.show()
    sys.exit(app.exec())