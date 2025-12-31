// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Dec 31 17:40:59 2025
// Host        : wgq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/study_vivado_ps/zc706_eth_DMA_Loopback/zc706.gen/sources_1/bd/design_1/ip/design_1_mult_gen_0_0/design_1_mult_gen_0_0_stub.v
// Design      : design_1_mult_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "mult_gen_v12_0_17,Vivado 2021.2" *)
module design_1_mult_gen_0_0(CLK, A, B, P)
/* synthesis syn_black_box black_box_pad_pin="CLK,A[7:0],B[7:0],P[15:0]" */;
  input CLK;
  input [7:0]A;
  input [7:0]B;
  output [15:0]P;
endmodule
