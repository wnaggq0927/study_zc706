module hdmi_test_pattern(
    input  wire       clk,        // 148.5 MHz
    input  wire       rst_n,
    output wire       hdmi_hs,
    output wire       hdmi_vs,
    output wire       hdmi_de,
    output wire [23:0] hdmi_data
);

    // --- 1080p 时序参数 ---
    parameter H_ACTIVE = 1920;
    parameter H_TOTAL  = 2200;
    parameter V_ACTIVE = 1080;
    parameter V_TOTAL  = 1125;
    
    // 同步信号生成参数
    parameter H_FP = 88;  parameter H_SYNC = 44;  parameter H_BP = 148;
    parameter V_FP = 4;   parameter V_SYNC = 5;   parameter V_BP = 36;

    reg [11:0] h_cnt;
    reg [11:0] v_cnt;
    reg [15:0] frame_cnt; // 帧计数器

// 每一场结束（VSync），计数器加 1
always @(posedge clk or negedge rst_n) begin
    if (!rst_n) 
        frame_cnt <= 0;
    else if (h_cnt == H_TOTAL-1 && v_cnt == V_TOTAL-1) // 一帧结束
        frame_cnt <= frame_cnt + 1;
end
    // 原始同步信号
    wire hs_raw, vs_raw, de_raw;

    // --------------------------------------------------
    // 1. 计数器生成
    // --------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            h_cnt <= 0; v_cnt <= 0;
        end else begin
            if (h_cnt == H_TOTAL - 1) begin
                h_cnt <= 0;
                if (v_cnt == V_TOTAL - 1) v_cnt <= 0;
                else v_cnt <= v_cnt + 1;
            end else h_cnt <= h_cnt + 1;
        end
    end

    // 生成原始 Sync 信号
    assign hs_raw = ~((h_cnt >= (H_ACTIVE + H_FP)) && (h_cnt < (H_ACTIVE + H_FP + H_SYNC)));
    assign vs_raw = ~((v_cnt >= (V_ACTIVE + V_FP)) && (v_cnt < (V_ACTIVE + V_FP + V_SYNC)));
    assign de_raw = (h_cnt < H_ACTIVE) && (v_cnt < V_ACTIVE);

    // --------------------------------------------------
    // 2. 曼德博坐标映射
    // --------------------------------------------------
    // 目标区域：X [-2.5, 0.8], Y [-1.1, 1.1]
    wire signed [15:0] c_r_init;
    wire signed [15:0] c_i_init;
    
assign c_r_init = -16'sd10240 + $signed({4'b0, h_cnt}) * 16'sd7 + $signed(frame_cnt[15:2] * 16'sd50);
assign c_i_init = -16'sd4600  + $signed({4'b0, v_cnt}) * 16'sd7;

    // --------------------------------------------------
    // 3. 曼德博流水线 (Pipeline)
    // --------------------------------------------------
    parameter ITERATIONS = 20; // 迭代 20 次
    
    wire signed [15:0] z_r [0:ITERATIONS];
    wire signed [15:0] z_i [0:ITERATIONS];
    wire signed [15:0] c_r [0:ITERATIONS];
    wire signed [15:0] c_i [0:ITERATIONS];
    wire [7:0]         iter[0:ITERATIONS];

    // 初始化第 0 级
    assign z_r[0] = 0;
    assign z_i[0] = 0;
    assign c_r[0] = c_r_init;
    assign c_i[0] = c_i_init;
    assign iter[0]= 0;

    genvar i;
    generate
        for (i = 0; i < ITERATIONS; i = i + 1) begin : pipe
            mandelbrot_stage #(
                .WIDTH(16), .F_BITS(12)
            ) u_stage (
                .clk    (clk),
                .rst_n  (rst_n),
                .z_r_in (z_r[i]), .z_i_in (z_i[i]),
                .c_r_in (c_r[i]), .c_i_in (c_i[i]),
                .iter_in(iter[i]),
                
                .z_r_out(z_r[i+1]), .z_i_out(z_i[i+1]),
                .c_r_out(c_r[i+1]), .c_i_out(c_i[i+1]),
                .iter_out(iter[i+1])
            );
        end
    endgenerate

    // --------------------------------------------------
    // 4. 同步信号延迟 (Sync Delay) - 关键修改区域！
    // --------------------------------------------------
    // 之前是 ITERATIONS，现在因为每个 Stage 耗时 2 周期，所以乘 2
    localparam TOTAL_LATENCY = ITERATIONS * 2;
    
    reg [TOTAL_LATENCY-1:0] hs_dly, vs_dly, de_dly;
    
    always @(posedge clk) begin
        // 移位寄存器变长了
        hs_dly <= {hs_dly[TOTAL_LATENCY-2:0], hs_raw};
        vs_dly <= {vs_dly[TOTAL_LATENCY-2:0], vs_raw};
        de_dly <= {de_dly[TOTAL_LATENCY-2:0], de_raw};
    end

    // 输出延迟后的 Sync 信号
    assign hdmi_hs = hs_dly[TOTAL_LATENCY-1];
    assign hdmi_vs = vs_dly[TOTAL_LATENCY-1];
    assign hdmi_de = de_dly[TOTAL_LATENCY-1];

    // --------------------------------------------------
    // 5. 颜色映射 (Color Map)
    // --------------------------------------------------
    wire [7:0] final_iter = iter[ITERATIONS];
    
    assign hdmi_data = (hdmi_de) ? 
                       ((final_iter == ITERATIONS) ? 24'h000000 : 
                        {final_iter[4:0] << 3, final_iter[5:0] << 2, final_iter[2:0] << 5}) 
                       : 24'h000000;

endmodule