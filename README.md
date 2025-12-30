# ZC706 FPGA Gigabit Ethernet LED Controller

This project demonstrates a full-stack embedded system on the Xilinx ZC706 evaluation board (Zynq-7000 XC7Z045). It features a **FreeRTOS** based embedded system controlling hardware via **Gigabit Ethernet (UDP)** using a **Python/PySide6** GUI.

## 🚀 Features

* **FPGA Logic**: Zynq-7000 PS/PL co-design.
* **RTOS**: FreeRTOS running multiple tasks (LED Logic, UDP Listener, UART Menu).
* **Network**: LwIP stack (Socket API) handling UDP commands on Port 5001.
* **Drivers**: Custom drivers for MIO GPIOs (LEDs, Buttons) and PHY Reset logic.
* **Host App**: Modern Cyberpunk-style GUI built with Python (PySide6).

## 🛠️ Hardware Setup

* **Board**: Xilinx ZC706 (XC7Z045-FFG900-2)
* **Connection**:
    * Ethernet Cable -> PC (Static IP: 192.168.0.x)
    * USB UART -> PC (for debugging)
* **IP Settings**:
    * Board IP: `192.168.0.20`
    * Port: `5001`

## 📂 Project Structure

* `Hardware/`: Constraints and hardware handoff files.
* `Software/`: C source code for Vitis (FreeRTOS + LwIP).
* `PC_App/`: Python GUI controller script.

## ⚡ How to Run

1.  **FPGA**: Load the bitstream and launch the Vitis application.
2.  **PC**: Install Python dependencies:
    ```bash
    pip install pyside6
    ```
3.  **Start**: Run the Python script:
    ```bash
    python gui_control.py
    ```

## 📸 Demo

*(Here you can upload a screenshot of your GUI and the Board)*
