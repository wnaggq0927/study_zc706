/*
 * Modular FreeRTOS Demo
 * 包含：sys_core.h, sys_hw.c, task_led.c, task_cmd.c
 */

#include "FreeRTOS.h"
#include "task.h"
#include "sys_core.h"
#include "xil_printf.h"

// 外部函数声明 (或者你可以把这些放在头文件里)
extern int Setup_Hardware(void);
extern void Task_LED_Logic(void *pvParameters);
extern void Task_UART_Cmd(void *pvParameters);

int main(void)
{
    xil_printf("\r\n--- System Booting ---\r\n");

    // 1. 硬件初始化
    if (Setup_Hardware() != XST_SUCCESS) {
        xil_printf("HW Init Failed!\r\n");
        return -1;
    }

    // 2. 创建任务

    // 任务: 串口指令监听 (优先级低一点，给人机交互留时间)
    xTaskCreate(Task_UART_Cmd,
                "CMD_Port",
                configMINIMAL_STACK_SIZE,
                NULL,
                tskIDLE_PRIORITY + 1,
                NULL);

    // 任务: LED 逻辑执行 (优先级高一点，保证灯光流畅)
    xTaskCreate(Task_LED_Logic,
                "LED_Core",
                configMINIMAL_STACK_SIZE,
                NULL,
                tskIDLE_PRIORITY + 2,
                NULL);

    // 3. 启动
    xil_printf("Scheduler Starting...\r\n");
    vTaskStartScheduler();

    for(;;);
}
