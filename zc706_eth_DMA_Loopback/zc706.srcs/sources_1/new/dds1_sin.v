`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/12/31 17:33:22
// Design Name: 
// Module Name: dds1_sin
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module dds1_sin(
input  [15:0] din,
    output [7:0]  dout_cos, // I路
    output [7:0]  dout_sin  // Q路
    );
    assign dout_cos = din[7:0];
    assign dout_sin = din[15:8];
endmodule
