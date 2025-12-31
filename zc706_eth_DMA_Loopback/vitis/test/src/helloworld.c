/******************************************************************************
 * ZYNQ DMA Loopback Test (Standalone)
 *
 * 硬件要求:
 * 1. AXI DMA (Simple Mode, SG Disabled)
 * 2. AXI4-Stream Data FIFO (连接 MM2S -> FIFO -> S2MM)
 * 3. FIFO Data Width = 4 Bytes (32-bit)
 ******************************************************************************/

#include "xaxidma.h"
#include "xparameters.h"
#include "xil_cache.h"
#include "xil_printf.h"

// --- 参数定义 ---
#define DMA_DEV_ID          XPAR_AXIDMA_0_DEVICE_ID

// 数据包长度 (字节)
// 1024 个点 * 4 字节/点 = 4096 字节
#define PACKET_LEN_BYTES    4096

// --- 全局变量 ---
XAxiDma AxiDma; // DMA 实例

// 数据 Buffer (使用 64字节对齐，避免 Cache 一致性问题)
u32 TxBuffer[PACKET_LEN_BYTES / 4] __attribute__ ((aligned (64)));
u32 RxBuffer[PACKET_LEN_BYTES / 4] __attribute__ ((aligned (64)));

// --- 函数声明 ---
int DMA_Loopback_Test(XAxiDma *AxiDmaInstPtr);

// ============================================================================
// Main 函数
// ============================================================================
int main() {
    int Status;
    XAxiDma_Config *CfgPtr;

    xil_printf("\r\n--- Entering Main (DMA Loopback Test) ---\r\n");

    // 1. 查找 DMA 硬件配置
    CfgPtr = XAxiDma_LookupConfig(DMA_DEV_ID);
    if (!CfgPtr) {
        xil_printf("No config found for %d\r\n", DMA_DEV_ID);
        return XST_FAILURE;
    }

    // 2. 初始化 DMA 驱动
    Status = XAxiDma_CfgInitialize(&AxiDma, CfgPtr);
    if (Status != XST_SUCCESS) {
        xil_printf("Initialization failed, Status = %d\r\n", Status);
        return XST_FAILURE;
    }

    // 3. 检查是否启用了 SG (Scatter Gather) 模式
    // 如果硬件开了 SG 但我们用 SimpleTransfer，会报错
    if(XAxiDma_HasSg(&AxiDma)){
        xil_printf("Error: Hardware has SG enabled but software uses Simple Mode!\r\n");
        xil_printf("Please uncheck 'Enable Scatter Gather Engine' in Vivado.\r\n");
        return XST_FAILURE;
    }

    // 4. 执行 Loopback 测试
    Status = DMA_Loopback_Test(&AxiDma);

    if (Status == XST_SUCCESS) {
        xil_printf("--- Test Finished Successfully ---\r\n");
    } else {
        xil_printf("--- Test Failed ---\r\n");
    }

    return 0;
}

// ============================================================================
// 测试函数实现
// ============================================================================
int DMA_Loopback_Test(XAxiDma *AxiDmaInstPtr) {
    int Status;
    int TimeOut;

    xil_printf("Starting Loopback Test...\r\n");

    // --- Step 1: 复位 DMA ---
    // 这是最关键的一步，确保 DMA 处于干净状态
    XAxiDma_Reset(AxiDmaInstPtr);
    TimeOut = 10000;
    while (XAxiDma_ResetIsDone(AxiDmaInstPtr) != 1) {
        TimeOut--;
        if(!TimeOut) {
            xil_printf("Error: DMA Reset Failed/Timeout!\r\n");
            return XST_FAILURE;
        }
    }
    xil_printf("DMA Reset Done.\r\n");

    // --- Step 2: 禁用中断 ---
    // 我们使用轮询模式 (Polling)，必须关掉中断，否则可能会卡死
    XAxiDma_IntrDisable(AxiDmaInstPtr, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DEVICE_TO_DMA);
    XAxiDma_IntrDisable(AxiDmaInstPtr, XAXIDMA_IRQ_ALL_MASK, XAXIDMA_DMA_TO_DEVICE);

    // --- Step 3: 准备数据 ---
    // TX 填入递增数据, RX 清零
    for(int i = 0; i < (PACKET_LEN_BYTES / 4); i++) {
        TxBuffer[i] = i;
        RxBuffer[i] = 0;
    }

    // --- Step 4: Cache 维护 ---
    // 把 TxBuffer 从 CPU Cache 刷入 DDR (让 DMA 能读到数据)
    Xil_DCacheFlushRange((UINTPTR)TxBuffer, PACKET_LEN_BYTES);
    // 把 RxBuffer 在 Cache 中标记无效 (确保 CPU 下次读是从 DDR 读)
    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, PACKET_LEN_BYTES);

    // --- Step 5: 启动 DMA 接收 (S2MM) ---
    // 必须先启动接收，准备好盘子接数据
    Status = XAxiDma_SimpleTransfer(AxiDmaInstPtr, (UINTPTR)RxBuffer,
                                    PACKET_LEN_BYTES, XAXIDMA_DEVICE_TO_DMA);
    if (Status != XST_SUCCESS) {
        xil_printf("Error: RX Config Failed, Status = %d\r\n", Status);
        return XST_FAILURE;
    }

    // --- Step 6: 启动 DMA 发送 (MM2S) ---
    Status = XAxiDma_SimpleTransfer(AxiDmaInstPtr, (UINTPTR)TxBuffer,
                                    PACKET_LEN_BYTES, XAXIDMA_DMA_TO_DEVICE);
    if (Status != XST_SUCCESS) {
        xil_printf("Error: TX Config Failed, Status = %d\r\n", Status);
        return XST_FAILURE;
    }

    // --- Step 7: 等待传输完成 ---
    xil_printf("Wait for transfer...\r\n");

    // 等待发送完成
    while (XAxiDma_Busy(AxiDmaInstPtr, XAXIDMA_DMA_TO_DEVICE)) {
        // 可以在这里加一个计数器防止死循环，但为了简单演示先略过
    }

    // 等待接收完成
    while (XAxiDma_Busy(AxiDmaInstPtr, XAXIDMA_DEVICE_TO_DMA)) {
        // Wait
    }

    // --- Step 8: 数据校验 ---
    int ErrorCnt = 0;

    // 再次无效化 Cache，防止 CPU 读到传输前的旧 Cache
    Xil_DCacheInvalidateRange((UINTPTR)RxBuffer, PACKET_LEN_BYTES);

    for(int i = 0; i < (PACKET_LEN_BYTES / 4); i++) {
        if (RxBuffer[i] != TxBuffer[i]) {
            xil_printf("Data Mismatch at index %d: Sent %d, Recv %d\r\n",
                        i, TxBuffer[i], RxBuffer[i]);
            ErrorCnt++;
            if (ErrorCnt > 10) {
                xil_printf("... Too many errors, verify stopped.\r\n");
                break;
            }
        }
    }

    if (ErrorCnt == 0) {
        xil_printf("Success: DMA Loopback Check Passed!\r\n");
        return XST_SUCCESS;
    } else {
        xil_printf("Failure: Found %d Errors.\r\n", ErrorCnt);
        return XST_FAILURE;
    }
}
