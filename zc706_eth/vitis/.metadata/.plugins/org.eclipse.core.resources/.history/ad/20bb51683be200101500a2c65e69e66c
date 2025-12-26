#include "FreeRTOS.h"
#include "task.h"
#include "sys_core.h"
#include "sleep.h"
#include "stdlib.h"
#include "xil_printf.h"

// 辅助函数：设置 4 个灯 (L1, L2, L3, L4)
static void Set_Leds(int l1, int l2, int l3, int l4) {
    XGpioPs_WritePin(&Gpio, LED1_PIN, l1);
    XGpioPs_WritePin(&Gpio, LED2_PIN, l2);
    XGpioPs_WritePin(&Gpio, LED3_PIN, l3);
    XGpioPs_WritePin(&Gpio, LED4_PIN, l4);
}

// 辅助函数：二进制显示 (8-4-2-1)
// val=5 -> 0101 -> 灯灭,灯亮,灯灭,灯亮
static void Show_Binary(u8 val) {
    Set_Leds((val>>3)&1, (val>>2)&1, (val>>1)&1, (val>>0)&1);
}

// 辅助函数：骰子动画
static void Play_Dice_Animation() {
    for(int i=0; i<15; i++) {
        Show_Binary(rand() % 16);
        usleep(30000 + (i * 5000)); // 动画稍微调快一点点
    }
}

void Task_LED_Logic(void *pvParameters)
{
    const TickType_t xDelayWaterfall = pdMS_TO_TICKS(150);

    // 状态变量
    int counter = 0;
    int last_counter = -1; // 用于去重打印
    int last_sw_state = 0;
    int game_state = 0;
    TickType_t start_time = 0;
    int leds[4] = {LED1_PIN, LED2_PIN, LED3_PIN, LED4_PIN};
        for(int i=0; i<4; i++) {
            XGpioPs_SetDirectionPin(&Gpio, leds[i], 1);    // 1 = Output
            XGpioPs_SetOutputEnablePin(&Gpio, leds[i], 1); // Enable Output
            XGpioPs_WritePin(&Gpio, leds[i], 0);           // 先全部熄灭
        }

        // 2. 配置 4 个 开关 为输入 (Input)
        // 假设你有4个开关，从 SW_BASE_PIN 开始
        for(int i=0; i<4; i++) {
            XGpioPs_SetDirectionPin(&Gpio, SW_BASE_PIN + i, 0); // 0 = Input
        }
    // 获取初始开关状态
    last_sw_state = XGpioPs_ReadPin(&Gpio, SW_BASE_PIN + 0);

    for (;;) {
        switch (g_CurrentMode) {

            // --- 模式 0: 流水灯 ---
            case MODE_WATERFALL:
                 Set_Leds(1, 0, 0, 0); vTaskDelay(xDelayWaterfall);
                 Set_Leds(0, 1, 0, 0); vTaskDelay(xDelayWaterfall);
                 Set_Leds(0, 0, 1, 0); vTaskDelay(xDelayWaterfall);
                 Set_Leds(0, 0, 0, 1); vTaskDelay(xDelayWaterfall);
                 Set_Leds(0, 0, 1, 0); vTaskDelay(xDelayWaterfall);
                 Set_Leds(0, 1, 0, 0); vTaskDelay(xDelayWaterfall);
                 break;

            // --- 模式 1: 开关直控 ---
            case MODE_SWITCH_CTRL: {
                int led_map[4] = {LED1_PIN, LED2_PIN, LED3_PIN, LED4_PIN};
                for(int i=0; i<4; i++) {
                     XGpioPs_WritePin(&Gpio, led_map[i], XGpioPs_ReadPin(&Gpio, SW_BASE_PIN+i));
                }
                vTaskDelay(pdMS_TO_TICKS(50));
                break;
            }

            // --- 模式 2: 二进制计数器 (带串口打印) ---
            case MODE_BINARY_CNT:
                // SW1: ON=暂停, OFF=运行
                if (XGpioPs_ReadPin(&Gpio, SW_BASE_PIN + 0) == 0) {
                    // SW2: ON=倒数, OFF=正数
                    if (XGpioPs_ReadPin(&Gpio, SW_BASE_PIN + 1) == 0)
                        counter++;
                    else
                        counter--;
                }

                // 循环限制 0-15
                if(counter > 15) counter = 0;
                if(counter < 0)  counter = 15;

                Show_Binary(counter);

                // 【关键修改】只有数值变了才打印，防止暂停时刷屏
                if (counter != last_counter) {
                    xil_printf(">> Binary: %2d  [ %d %d %d %d ]\r\n",
                        counter,
                        (counter>>3)&1, (counter>>2)&1, (counter>>1)&1, (counter>>0)&1
                    );
                    last_counter = counter;
                }

                // SW3 控制速度
                if (XGpioPs_ReadPin(&Gpio, SW_BASE_PIN + 2))
                    vTaskDelay(pdMS_TO_TICKS(200));
                else
                    vTaskDelay(pdMS_TO_TICKS(1000));
                break;

            // --- 模式 3: 电子骰子 (带串口打印) ---
            case MODE_DICE_GAME:
            {
                int current_sw = XGpioPs_ReadPin(&Gpio, SW_BASE_PIN + 3);

                if (current_sw != last_sw_state) {
                    last_sw_state = current_sw;
                    xil_printf(">> Rolling...\r\n");

                    Play_Dice_Animation(); // 播放动画

                    int dice_value = (rand() % 6) + 1; // 生成 1-6
                    Show_Binary(dice_value);           // 显示结果

                    // 【关键修改】立刻打印结果
                    xil_printf(">> Dice Result: %d\r\n", dice_value);
                }

                vTaskDelay(pdMS_TO_TICKS(100));
                break;
            }

            // --- 模式 4: 反应力测试 ---
            // --- 模式 4: 反应力测试 (防作弊修复版) ---
                        case MODE_REFLEX_GAME:
                        {
                            // 阶段 0: 准备
                            if (game_state == 0) {
                                Set_Leds(0, 0, 0, 0);
                                xil_printf(">> Ready... Wait for Light!\r\n");

                                int random_delay = 2000 + (rand() % 3000);
                                vTaskDelay(pdMS_TO_TICKS(random_delay));

                                // 【关键修复】在亮灯前一瞬间，更新当前的开关状态作为基准
                                // 这样你在等待期间乱动开关，就不会被算进去了
                                last_sw_state = XGpioPs_ReadPin(&Gpio, SW_BASE_PIN + 0);

                                // 突然全亮！
                                Set_Leds(1, 1, 1, 1);
                                start_time = xTaskGetTickCount();
                                game_state = 1;
                            }

                            // 阶段 1: 监测反应
                            else if (game_state == 1) {
                                int curr_sw = XGpioPs_ReadPin(&Gpio, SW_BASE_PIN + 0);

                                if (curr_sw != last_sw_state) {
                                    // 使用 Tick 差值计算
                                    TickType_t end_time = xTaskGetTickCount();
                                    int diff_ms = (end_time - start_time) * portTICK_PERIOD_MS;

                                    // 增加“抢跑”判定：如果时间太短（比如小于 50ms），算作犯规
                                    if (diff_ms < 50) {
                                         xil_printf(">> TOO FAST! False Start! (Cheater?)\r\n");
                                    } else {
                                        xil_printf(">> BOOM! Your Time: %d ms\r\n", diff_ms);

                                        if(diff_ms < 200) xil_printf(">> RANK: PRO PLAYER!\r\n");
                                        else if(diff_ms < 300) xil_printf(">> RANK: Normal.\r\n");
                                        else xil_printf(">> RANK: Slow...\r\n");
                                    }

                                    last_sw_state = curr_sw;
                                    game_state = 2;
                                }
                            }

                            // 阶段 2: 冷却
                            else if (game_state == 2) {
                                Set_Leds(0, 1, 1, 0);
                                vTaskDelay(pdMS_TO_TICKS(2000));
                                game_state = 0;
                            }

                            vTaskDelay(pdMS_TO_TICKS(10));
                            break;
                        }

            // --- 模式 5: SOS 信号 ---
            case MODE_SOS_SIGNAL:
            {
                // S
                for(int i=0; i<3; i++) { Set_Leds(1,1,1,1); vTaskDelay(pdMS_TO_TICKS(100)); Set_Leds(0,0,0,0); vTaskDelay(pdMS_TO_TICKS(100)); }
                vTaskDelay(pdMS_TO_TICKS(300));
                // O
                for(int i=0; i<3; i++) { Set_Leds(1,1,1,1); vTaskDelay(pdMS_TO_TICKS(400)); Set_Leds(0,0,0,0); vTaskDelay(pdMS_TO_TICKS(100)); }
                vTaskDelay(pdMS_TO_TICKS(300));
                // S
                for(int i=0; i<3; i++) { Set_Leds(1,1,1,1); vTaskDelay(pdMS_TO_TICKS(100)); Set_Leds(0,0,0,0); vTaskDelay(pdMS_TO_TICKS(100)); }
                vTaskDelay(pdMS_TO_TICKS(1500));
                break;
            }

            default:
                Set_Leds(0, 0, 0, 0);
                vTaskDelay(pdMS_TO_TICKS(100));
                break;
        }
    }
}
