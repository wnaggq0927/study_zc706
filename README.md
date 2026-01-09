# 🖐️ FPGA-AI-Gesture-System (赛博手势交互系统)

> 基于 ZC706 FPGA 和 Python MediaPipe 的实时手势视频流交互系统。
> A Real-time Gesture Interaction System based on ZC706 FPGA and MediaPipe.

## 📺 项目简介 (Introduction)

本项目将计算机视觉（AI）与硬件加速（FPGA）相结合。PC 端使用 Python + MediaPipe 进行手势识别和图像渲染，通过 UDP 协议将处理后的 RGB565 视频流实时传输给 ZC706 FPGA 开发板。FPGA 接收数据后写入 DDR3 内存，并通过 VDMA 进行视频输出或回环验证。

**核心亮点：**
- **低延迟通信**：优化了 UDP 协议栈，在 FPGA 端实现了“发送与接收交叉处理”，解决了传统阻塞式发送导致的丢包和高延迟问题。
- **酷炫交互**：支持“光剑绘图”、“握拳清空”、“OK手势变色”等实时互动。
- **软硬协同**：Python 处理高层逻辑，FPGA 处理底层数据流。

## 🛠️ 技术栈 (Tech Stack)

### 💻 PC 端 (Host)
- **语言**: Python 3.10
- **库**: OpenCV, NumPy, MediaPipe (v0.10.14), Socket
- **功能**: 手势识别、图形渲染、RGB565 编码、UDP 分包发送

### ⚙️ FPGA 端 (Embedded)
- **硬件**: Xilinx Zynq-7000 (ZC706 Evaluation Kit)
- **工具**: Vivado / Vitis SDK
- **库**: LwIP (Lightweight IP), BSP (Board Support Package)
- **IP核**: AXI VDMA, AXI GPIO (Optional), AXI Ethernet
- **逻辑**: 乒乓缓存 (Ping-Pong Buffer), 动态显存读写, 伪全双工 UDP 通信

## 🚀 功能展示 (Features)

| 手势 (Gesture) | 功能 (Function) | 效果 (Effect) |
| :--- | :--- | :--- |
| ☝️ **食指移动 (Index Finger)** | 绘图 (Draw) | 屏幕上出现随手指移动的光剑轨迹 |
| ✊ **握拳 (Fist)** | 清屏 (Clear) | 清空画布，显示 "CLEARED!" |
| 👌 **OK 手势 (OK Sign)** | 换色 (Change Color) | 切换光剑和特效的颜色 |

## 📂 文件结构 (File Structure)

```text
├── python_host/
│   ├── hand_test.py       # 主程序：手势识别与UDP发送 (Client)
│   ├── loopback_view.py   # 调试工具：接收FPGA回传的画面 (Server)
│   └── requirements.txt   # Python依赖库
├── fpga_sdk/
│   ├── src/
│   │   ├── main.c         # FPGA 核心 C代码 (LwIP + VDMA逻辑)
│   │   ├── lscript.ld     # 链接脚本
│   └── ...
└── README.md
