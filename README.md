# ZC706 Ethernet & DMA Oscilloscope Project

## 项目简介 (Introduction)
本项目基于 Xilinx ZC706 开发板 (Zynq-7000)，实现了一个基于 **AXI DMA** 的简易示波器功能。

系统通过 PL 端产生正弦波数据，利用 AXI Stream 协议和 AXI DMA 将数据高速搬运至 PS 端 DDR 内存，最终通过千兆以太网 (LwIP UDP) 将波形数据发送至上位机进行显示。

## 硬件与软件环境 (Environment)
* **开发板**: Xilinx ZC706 (XC7Z045-FFG900-2)
* **开发工具**: Vivado / Vitis (SDK) 2019.x (或其他版本)
* **操作系统**: FreeRTOS (PS端)
* **网络协议**: UDP (LwIP Stack)

## 系统架构 (System Architecture)

### 1. PL (Programmable Logic)
数据流向：`DDS Compiler` -> `TLAST Generator` -> `AXI DMA (S2MM)`
* **DDS Compiler**: 产生连续的正弦波数据 (8-bit)。
* **TLAST Generator (自定义模块)**:
    * 将 8-bit 数据高位补零扩展为 32-bit (符合 AXI DMA 对齐要求)。
    * 负责计数并在每包结束时拉高 `TLAST` 信号，解决 DMA 传输边界问题。
* **AXI DMA**: 配置为 S2MM (Write Channel) 模式，负责将 Stream 数据写入 DDR3。

### 2. PS (Processing System)
* **FreeRTOS 任务**:
    * `Task_DMA_Wave`: 控制 DMA 启动传输，处理 Cache 一致性，读取 DDR 数据。
    * `LwIP UDP`: 负责网络数据的打包与发送。
* **交互界面**: 串口终端菜单 (Mode 7: Oscilloscope)。

## 关键技术参数 (Technical Details)

### DMA 传输配置
为确保 DMA 不发生 `Wait for TLAST` 超时错误，软硬件参数严格匹配：
* **单包点数 (Points)**: 1024 点
* **数据位宽 (Width)**: 32-bit (4 Bytes)
* **单包字节 (Bytes)**: 4096 Bytes (1024 * 4)
* **软件读取步长**: 由于硬件进行了高 24 位补零，软件读取时使用 `index * 4` 提取有效低 8 位数据。

### 文件结构 (File Structure)
* `zc706_eth_DMA/`: Vivado 工程目录 (重命名自 zc706_eth)
* `src/verilog/`:
    * `tlast_gen.v`: 关键的 AXI Stream 封包逻辑模块。
* `src/sdk/`:
    * `main.c`: FreeRTOS 任务调度与菜单逻辑。
    * `dma_task.c`: DMA 配置与数据搬运核心代码。

## 快速开始 (Quick Start)
1.  **Vivado**: 打开工程，生成 Bitstream 并导出 Hardware (XSA/HDF)。
2.  **SDK/Vitis**: 更新硬件平台规范，编译 C 代码。
3.  **运行**:
    * 连接串口 (115200) 和网线。
    * 系统启动后，在串口菜单输入 `7` 进入 **Oscilloscope (DMA)** 模式。
    * 上位机使用 UDP 调试助手或 Python 脚本接收波形数据。

## 版本历史 (History)
* **Branch: zc706_eth_DMA**:
    * [Fix] 修复了 DMA 等待 TLAST 超时的问题 (Verilog 逻辑优化)。
    * [Fix] 修正了 C 语言读取 Buffer 时的地址偏移问题 (解决波形归零现象)。
    * [Feature] 实现了 1024 点/包的完整正弦波采集。

---
*Author: [little wang]*
*Last Updated: 2025-12-31*
