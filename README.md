# ZC706 FreeRTOS Ultimate Template

基于 Xilinx ZC706 开发板的 Zynq-7000 软硬协同设计参考工程。
集成了 FreeRTOS 实时操作系统，实现了 GPIO 双向控制、UART 交互菜单以及多种 LED 逻辑游戏。

## 🎯 项目亮点 (Features)
* **全栈架构**：Vivado (硬件) + Vitis (软件) + FreeRTOS (OS)。
* **模块化代码**：硬件驱动、任务逻辑、指令解析完全分离。
* **EMIO 深度应用**：解决了 ZC706 板载 LED/SW 跨 IO Bank (1.5V/2.5V) 的电压冲突问题。
* **交互式控制台**：通过串口终端 (UART) 动态切换运行模式。

## 🎮 功能列表 (Modes)
1.  **Waterfall**: 经典的 4-LED 流水灯。
2.  **Switch Ctrl**: 硬件开关直控 LED (输入输出联动)。
3.  **Binary Counter**: 8-4-2-1 二进制自动计数演示。
4.  **Dice Game**: 电子骰子 (带随机动画和结果打印)。
5.  **Reflex Test**: 反应力测试游戏 (毫秒级计时 + 防作弊逻辑 )。
6.  **SOS Signal**: 国际通用求救信号模拟。

## 🛠️ 硬件与环境 (Requirements)
* **Board**: Xilinx Zynq-7000 SoC ZC706 Evaluation Kit
* **EDA Tool**: Vivado / Vitis 2021.2
* **Terminal**: 115200 baud rate

## 🚀 如何使用 (How to Run)
1.  使用 Vivado 打开 `hw/` 目录下的工程，生成 Bitstream。
2.  导出 XSA 硬件描述文件。
3.  在 Vitis 中创建 FreeRTOS 工程，导入 `sw/src` 下的代码。
4.  烧录 FPGA 并运行软件，打开串口终端即可看到菜单。
