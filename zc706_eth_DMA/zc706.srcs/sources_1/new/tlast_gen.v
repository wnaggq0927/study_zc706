module tlast_gen(
    input aclk,
    input aresetn,

    // --- 上游接口 ---
    input [7:0] s_axis_tdata,
    input s_axis_tvalid,
    output s_axis_tready,

    // --- 下游接口 ---
    input m_axis_tready,
    output [31:0] m_axis_tdata,
    output m_axis_tvalid,
    output m_axis_tlast
    );

    reg [31:0] packet_cnt;
    wire axis_handshake;
    
    // 握手条件：上下游都 Ready 且 Valid
    assign axis_handshake = s_axis_tvalid && m_axis_tready;

    // --- 计数逻辑 ---
    always @(posedge aclk) begin
        if (!aresetn) begin
            packet_cnt <= 0;
        end
        else if (axis_handshake) begin
            // 0 ~ 1023, 共 1024 个点
            if (packet_cnt == 1023)
                packet_cnt <= 0;
            else
                packet_cnt <= packet_cnt + 1;
        end
    end

    // --- 端口赋值 ---
    assign m_axis_tdata = {24'd0, s_axis_tdata};
    assign m_axis_tvalid = s_axis_tvalid;
    assign s_axis_tready = m_axis_tready;

    // 【关键修改】 TLAST 不依赖 axis_handshake (即不依赖 m_axis_tready)
    // 只要是第 1023 个点，这就是 Last。
    // AXI 规范：TLAST 是 Master 对数据的修饰，必须早于或同时于握手建立
    assign m_axis_tlast = (packet_cnt == 1023); 

endmodule