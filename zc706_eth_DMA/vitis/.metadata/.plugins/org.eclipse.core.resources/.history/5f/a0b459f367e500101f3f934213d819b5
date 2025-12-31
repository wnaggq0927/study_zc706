#ifndef SYS_CORE_H
#define SYS_CORE_H

#include "xil_types.h"
#include "xgpiops.h"

// --- 硬件引脚重映射 (保持你之前的正确顺序) ---
#define LED1_PIN        57  // 左1 (L)
#define LED2_PIN        55  // 左2
#define LED3_PIN        56  // 左3
#define LED4_PIN        54  // 左4 (R)

#define LED_BASE_PIN    54
#define SW_BASE_PIN     58

// --- 运行模式枚举 ---
typedef enum {
    MODE_WATERFALL = 0,   // 旧功能：流水灯
    MODE_SWITCH_CTRL,     // 旧功能：开关直控
    MODE_BINARY_CNT,      // 【新功能】：二进制计数器
    MODE_DICE_GAME,       // 【新功能】：电子骰子
	MODE_REFLEX_GAME,     // 【新】反应力测试
    MODE_SOS_SIGNAL,      // 【新】SOS 模式
    MODE_OFF              // 关灯
} LedMode_t;

// --- 全局变量 ---
extern volatile LedMode_t g_CurrentMode;
extern XGpioPs Gpio;

#endif
