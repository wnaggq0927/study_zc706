/* sys_core.h - 全局声明文件 */
#ifndef SYS_CORE_H
#define SYS_CORE_H

#include "xil_types.h"
#include "xgpiops.h"
#include "lwip/sockets.h"
#include "xadcps.h"
#include "xaxidma.h"

// --- 硬件参数 ---
#define LED1_PIN        57
#define LED2_PIN        55
#define LED3_PIN        56
#define LED4_PIN        54
#define SW_BASE_PIN     58
extern XAxiDma AxiDma;
#define DMA_DEV_ID      XPAR_AXIDMA_0_DEVICE_ID
#define RX_BUFFER_BASE  0x10000000
#define MAX_PKT_LEN     (1024 * 4)

// --- 模式枚举 ---
typedef enum {
    MODE_WATERFALL = 0,
    MODE_SWITCH_CTRL,
    MODE_BINARY_CNT,
    MODE_DICE_GAME,
    MODE_REFLEX_GAME,
    MODE_SOS_SIGNAL,
    MODE_OFF,
    MODE_WAVE_OSCILLO
} LedMode_t;

// --- 【关键】所有变量必须加 extern，并且不能赋值 ---
extern volatile LedMode_t g_CurrentMode;
extern XGpioPs Gpio;
extern XAdcPs XAdcInst;

extern int g_udp_sock;
extern struct sockaddr_in g_pc_addr;
extern int g_pc_connected;

// --- 函数声明 ---
void Init_All_Hardware(void); // 统一初始化
void UDP_Send_Log(char* msg);
void Read_Chip_Temp(char *buffer);
void Read_Chip_Vcc(char *buffer);

// --- 任务声明 ---
void Task_LED_Logic(void *pvParameters);
void Task_System_Monitor(void *pvParameters);
void Task_DMA_Wave(void *pvParameters);
void udp_cmd_thread(void *p);
// 在 sys_core.h 底部确认有这一行
void network_thread(void *p);
// ... 前面的代码 ...

// --- 函数声明 ---
void Init_All_Hardware(void);
void UDP_Send_Log(char* msg);
void Read_Chip_Temp(char *buffer);
void Read_Chip_Vcc(char *buffer);

// --- 任务声明 (在这里统一声明) ---
void Task_LED_Logic(void *pvParameters);
void Task_System_Monitor(void *pvParameters);
void Task_DMA_Wave(void *pvParameters);
void udp_cmd_thread(void *p);
void network_thread(void *p);

// 【修改】加上参数，移到这里
void Task_UART_Cmd(void *pvParameters);

#endif
