#include "sys_core.h"
#include "xparameters.h"
#include "xil_printf.h"

XGpioPs Gpio;

int Setup_Hardware(void)
{
    XGpioPs_Config *ConfigPtr;
    int Status;

    xil_printf("[Init] Configuring Hardware (4 LEDs + 4 SWs)...\r\n");

    ConfigPtr = XGpioPs_LookupConfig(XPAR_XGPIOPS_0_DEVICE_ID);
    Status = XGpioPs_CfgInitialize(&Gpio, ConfigPtr, ConfigPtr->BaseAddr);
    if (Status != XST_SUCCESS) return XST_FAILURE;

    // 1. 配置前 4 个引脚 (LED) 为输出
    for(int i=0; i<4; i++) {
        int pin = LED_BASE_PIN + i;
        XGpioPs_SetDirectionPin(&Gpio, pin, 1);    // Output
        XGpioPs_SetOutputEnablePin(&Gpio, pin, 1); // Enable
        XGpioPs_WritePin(&Gpio, pin, 0);           // 默认灭
    }

    // 2. 配置后 4 个引脚 (Switch) 为输入
    for(int i=0; i<4; i++) {
        int pin = SW_BASE_PIN + i;
        XGpioPs_SetDirectionPin(&Gpio, pin, 0);    // Input
        XGpioPs_SetOutputEnablePin(&Gpio, pin, 0); // Disable Output
    }

    return XST_SUCCESS;
}
