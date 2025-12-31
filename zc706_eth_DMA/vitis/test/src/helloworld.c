#include "xaxidma.h"
#include "xparameters.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include <stdint.h>  // 【新增】为了使用 int8_t

#define DMA_DEV_ID      XPAR_AXIDMA_0_DEVICE_ID
#define RX_BUFFER_BASE  0x10000000
#define MAX_PKT_LEN     (1024 * 4)

XAxiDma AxiDma;

int main()
{
    int Status;
    XAxiDma_Config *Config;

    // 如果想测试真实的 Cache Coherence，可以注释掉下面这行 Disable
    // 但为了调试方便，先禁用 D-Cache 也是可以的
    Xil_DCacheDisable();

    xil_printf("\r\n--- DMA Debug Test (Signed Wave) ---\r\n");

    Config = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (!Config) {
        xil_printf("No config found for %d\r\n", DMA_DEV_ID);
        return XST_FAILURE;
    }

    Status = XAxiDma_CfgInitialize(&AxiDma, Config);
    if (Status != XST_SUCCESS) {
        xil_printf("Initialization failed %d\r\n", Status);
        return XST_FAILURE;
    }

    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);

    // ==========================================
    // 1. 【关键测试】先把内存填满 "DEADBEEF"
    // ==========================================
    u32 *RxBufferPtr = (u32 *)RX_BUFFER_BASE;

    // 【修改】之前是 i<32，现在改为填满整个包的长度，避免后面打印读到未初始化的区域
    for(int i=0; i < (MAX_PKT_LEN / 4); i++){
        RxBufferPtr[i] = 0xDEADBEEF;
    }

    // 2. 刷新 Cache (如果上面禁用了 Cache，这句其实不起作用，但留着是好习惯)
    Xil_DCacheFlushRange((UINTPTR)RxBufferPtr, MAX_PKT_LEN);

    // 3. Invalidate (同上，好习惯)
    Xil_DCacheInvalidateRange((UINTPTR)RxBufferPtr, MAX_PKT_LEN);

    xil_printf(">> Memory filled with 0xDEADBEEF. Starting DMA...\r\n");

    // 4. 启动 DMA
    Status = XAxiDma_SimpleTransfer(&AxiDma, (UINTPTR)RxBufferPtr,
                                    MAX_PKT_LEN, XAXIDMA_DEVICE_TO_DMA);

    if (Status != XST_SUCCESS) {
        xil_printf("DMA Transfer Failed\r\n");
        return XST_FAILURE;
    }

    while (XAxiDma_Busy(&AxiDma, XAXIDMA_DEVICE_TO_DMA)) {}

    xil_printf(">> DMA Transfer Done!\r\n");

    // 5. 【核心步骤】Invalidate Cache
    Xil_DCacheInvalidateRange((UINTPTR)RxBufferPtr, MAX_PKT_LEN);

    // 6. 检查结果
    xil_printf(">> Checking Data (First 100 samples):\r\n");

    for (int i = 0; i < 100; i++) {
        u32 val = RxBufferPtr[i];

        // 【修改的核心】
        // 1. 取出低8位 (val & 0xFF)
        // 2. 强制转换为 int8_t (有符号8位整数)，这样 0xEF 就会变成 -17
        int8_t signed_val = (int8_t)(val & 0xFF);

        xil_printf("Index %02d: Raw=0x%08X", i, val);

        if(val == 0xDEADBEEF) {
            xil_printf(" (DMA DID NOT WRITE!) <-- ERROR\r\n");
        }
        else {
            // 使用 %4d 让正负数对齐显示，看起来更舒服
            xil_printf(" (Signed Val=%4d)\r\n", signed_val);
        }
    }

    return XST_SUCCESS;
}
