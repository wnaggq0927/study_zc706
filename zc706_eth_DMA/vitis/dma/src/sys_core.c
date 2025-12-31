/* sys_core.c - 硬件驱动与变量定义 */
#include "sys_core.h"
#include "xil_printf.h"

// --- 【关键】变量在这里真正定义并赋值 ---
volatile LedMode_t g_CurrentMode = MODE_WATERFALL;
XGpioPs Gpio;
XAdcPs XAdcInst;
XAxiDma AxiDma;

int g_udp_sock = -1;
struct sockaddr_in g_pc_addr;
int g_pc_connected = 0;

// --- 硬件初始化函数 ---
void Init_All_Hardware(void) {
    int Status;
    XGpioPs_Config *GpioConfig;
    XAdcPs_Config *XAdcConfig;
    XAxiDma_Config *DmaConfig;

    xil_printf(">> Initializing Hardware...\r\n");

    // 1. GPIO 初始化
    GpioConfig = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
    XGpioPs_CfgInitialize(&Gpio, GpioConfig, GpioConfig->BaseAddr);

    int leds[4] = {LED1_PIN, LED2_PIN, LED3_PIN, LED4_PIN};
    for(int i=0; i<4; i++) {
        XGpioPs_SetDirectionPin(&Gpio, leds[i], 1);
        XGpioPs_SetOutputEnablePin(&Gpio, leds[i], 1);
        XGpioPs_WritePin(&Gpio, leds[i], 0);
        XGpioPs_SetDirectionPin(&Gpio, SW_BASE_PIN + i, 0); // 开关设为输入
    }

    // 2. XADC 初始化
    XAdcConfig = XAdcPs_LookupConfig(XPAR_XADCPS_0_DEVICE_ID);
    XAdcPs_CfgInitialize(&XAdcInst, XAdcConfig, XAdcConfig->BaseAddress);
    XAdcPs_SetSequencerMode(&XAdcInst, XADCPS_SEQ_MODE_SAFE);

    // 3. DMA 初始化
    DmaConfig = XAxiDma_LookupConfig(DMA_DEV_ID);
    if(DmaConfig) {
        Status = XAxiDma_CfgInitialize(&AxiDma, DmaConfig);
        if(Status == XST_SUCCESS) {
            XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
            xil_printf(">> DMA Init Success.\r\n");
        } else {
            xil_printf("!! DMA Init Failed.\r\n");
        }
    }
}

// --- 通用发送函数 ---
void UDP_Send_Log(char* msg) {
    if (g_udp_sock >= 0 && g_pc_connected) {
        lwip_sendto(g_udp_sock, msg, strlen(msg), 0,
                   (struct sockaddr *)&g_pc_addr, sizeof(g_pc_addr));
    }
}

// --- 读取辅助函数 ---
void Read_Chip_Temp(char *buffer) {
    u16 raw = XAdcPs_GetAdcData(&XAdcInst, XADCPS_CH_TEMP);
    float temp = ((float)raw * 503.975f / 65536.0f) - 273.15f;
    sprintf(buffer, "Temp: %d.%d C", (int)temp, (int)((temp - (int)temp) * 10));
}

void Read_Chip_Vcc(char *buffer) {
    u16 raw = XAdcPs_GetAdcData(&XAdcInst, XADCPS_CH_VCCINT);
    float vcc = (float)raw * 3.0f / 65536.0f;
    sprintf(buffer, "Vcc: %d.%02d V", (int)vcc, (int)((vcc - (int)vcc) * 100));
}
