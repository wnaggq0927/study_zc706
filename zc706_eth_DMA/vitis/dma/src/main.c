/* main.c - 内存优化版 */
#include "sys_core.h"
#include "FreeRTOS.h"
#include "task.h"
#include "xil_printf.h"
#include "lwip/sys.h"

void lwip_init();
void network_thread(void *p);

// 主初始化线程
void main_thread(void *p) {
    xil_printf("\r\n--- System Booting ---\r\n");

    Init_All_Hardware();
    lwip_init();

    // 网络线程：1024 足够
    sys_thread_new("NW_THRD", network_thread, NULL, 1024, DEFAULT_THREAD_PRIO);

    // UDP 监听：1024 足够
    sys_thread_new("UDP_THRD", udp_cmd_thread, NULL, 1024, DEFAULT_THREAD_PRIO);

    xil_printf(">> System Started. Launching Tasks...\r\n");

    // --- 任务创建 (优化了栈大小) ---

    // LED 逻辑简单，512 就够了
    xTaskCreate(Task_LED_Logic, "LED", 512, NULL, tskIDLE_PRIORITY + 4, NULL);

    // 串口任务需要做 printf，保持 1024
    xTaskCreate(Task_UART_Cmd, "CMD", 1024, NULL, tskIDLE_PRIORITY + 3, NULL);

    // 系统监控逻辑简单，512 就够了
    xTaskCreate(Task_System_Monitor, "SysMon", 512, NULL, tskIDLE_PRIORITY + 2, NULL);

    // DMA 任务数据量大，给 2048 (原来是 4096，太大了)
    xTaskCreate(Task_DMA_Wave, "DMA", 2048, NULL, tskIDLE_PRIORITY + 1, NULL);

    // 任务完成，释放 main_thread 占用的内存
    vTaskDelete(NULL);
}

int main() {
    xil_printf("--- ZYNQ-7000 Power On ---\r\n");

    // 主线程也不需要 4096，改回 2048
    sys_thread_new("main_thrd", (void(*)(void*))main_thread, 0, 2048, DEFAULT_THREAD_PRIO);

    vTaskStartScheduler();

    while(1);
    return 0;
}
