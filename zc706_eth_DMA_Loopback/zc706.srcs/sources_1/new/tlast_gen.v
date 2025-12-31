module tlast_gen (
    input clk,
    // 从机接口 0 (低 16 位: 5MHz DDS)
    input [15:0] s0_axis_tdata,
    input        s0_axis_tvalid,
    output       s0_axis_tready,
    
    // 从机接口 1 (高 16 位: 4MHz DDS)
    input [15:0] s1_axis_tdata,
    input        s1_axis_tvalid,
    output       s1_axis_tready,
    
    // 主机接口 (拼接后的 32 位输出)
    output [31:0] m_axis_tdata,
    output        m_axis_tvalid,
    input         m_axis_tready,
    output        m_axis_tlast
);
    reg [11:0] count = 0;

    // 握手逻辑：只有当两个输入都有效，且输出端准备好时，才进行传输
    wire transfer_en = s0_axis_tvalid && s1_axis_tvalid && m_axis_tready;

    // 只有在同步传输时才告诉输入端：我准备好了
    assign s0_axis_tready = transfer_en;
    assign s1_axis_tready = transfer_en;
    
    assign m_axis_tvalid = s0_axis_tvalid && s1_axis_tvalid;
    
    // 关键：在这里进行拼接
    // s1 放在高 16 位 [31:16]，s0 放在低 16 位 [15:0]
    assign m_axis_tdata  = {s1_axis_tdata, s0_axis_tdata};
    
    assign m_axis_tlast  = (count == 2047);

    always @(posedge clk) begin
        if (transfer_en) begin
            if (count == 2047)
                count <= 0;
            else
                count <= count + 1;
        end
    end
endmodule