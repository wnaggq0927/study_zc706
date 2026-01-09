module mandelbrot_stage #(
    parameter WIDTH = 16,   // 数据位宽 (Q4.12)
    parameter F_BITS = 12   // 小数位宽
)(
    input  wire clk,
    input  wire rst_n,
    
    // 输入
    input  wire signed [WIDTH-1:0] z_r_in,
    input  wire signed [WIDTH-1:0] z_i_in,
    input  wire signed [WIDTH-1:0] c_r_in,
    input  wire signed [WIDTH-1:0] c_i_in,
    input  wire [7:0] iter_in,             
    
    // 输出 (延迟 2 个周期)
    output reg signed [WIDTH-1:0] z_r_out,
    output reg signed [WIDTH-1:0] z_i_out,
    output reg signed [WIDTH-1:0] c_r_out,
    output reg signed [WIDTH-1:0] c_i_out,
    output reg [7:0] iter_out
);

    // --- 第一级流水线寄存器 (存乘法结果) ---
    reg signed [2*WIDTH-1:0] z_r_sq_reg;
    reg signed [2*WIDTH-1:0] z_i_sq_reg;
    reg signed [2*WIDTH-1:0] z_mul_reg;
    
    // 第一级传递寄存器 (保持信号同步)
    reg signed [WIDTH-1:0] c_r_d1, c_i_d1;
    reg signed [WIDTH-1:0] z_r_d1, z_i_d1; // 备用，如果逃逸了需要保持原值
    reg [7:0]  iter_d1;

    // --- 第一级逻辑：计算乘法 ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            z_r_sq_reg <= 0; z_i_sq_reg <= 0; z_mul_reg  <= 0;
            c_r_d1 <= 0; c_i_d1 <= 0; iter_d1 <= 0;
            z_r_d1 <= 0; z_i_d1 <= 0;
        end else begin
            // 乘法操作
            z_r_sq_reg <= z_r_in * z_r_in;
            z_i_sq_reg <= z_i_in * z_i_in;
            z_mul_reg  <= z_r_in * z_i_in;
            
            // 数据透传
            c_r_d1 <= c_r_in;
            c_i_d1 <= c_i_in;
            z_r_d1 <= z_r_in;
            z_i_d1 <= z_i_in;
            iter_d1 <= iter_in;
        end
    end

    // --- 第二级逻辑：加减法与逃逸判断 ---
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            z_r_out <= 0; z_i_out <= 0;
            c_r_out <= 0; c_i_out <= 0;
            iter_out <= 0;
        end else begin
            // 传递 C
            c_r_out <= c_r_d1;
            c_i_out <= c_i_d1;

            // 逃逸判断 (4.0 = 4 << 24)
            if ((z_r_sq_reg + z_i_sq_reg) > (34'sd4 << (2*F_BITS))) begin
                // 已逃逸：锁定 Z 值，iter 不变
                z_r_out  <= z_r_d1; 
                z_i_out  <= z_i_d1;
                iter_out <= iter_d1; 
            end else begin
                // 未逃逸：更新 Z
                // Zr = Zr^2 - Zi^2 + Cr
                z_r_out <= ((z_r_sq_reg - z_i_sq_reg) >>> F_BITS) + c_r_d1;
                // Zi = 2*Zr*Zi + Ci
                z_i_out <= ((z_mul_reg  <<< 1)        >>> F_BITS) + c_i_d1;
                
                // 迭代次数 + 1
                iter_out <= iter_d1 + 1;
            end
        end
    end

endmodule