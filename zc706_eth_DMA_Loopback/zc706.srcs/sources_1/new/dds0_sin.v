module dds0_sin(
    input  [15:0] din,
    output [7:0]  dout_cos, // I路
    output [7:0]  dout_sin  // Q路
);
    assign dout_cos = din[7:0];
    assign dout_sin = din[15:8];
endmodule