// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Dec 30 16:40:16 2025
// Host        : wgq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               f:/study_vivado_ps/zc706_eth_DMA/zc706.gen/sources_1/bd/design_1/ip/design_1_ila_0_0/design_1_ila_0_0_stub.v
// Design      : design_1_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2021.2" *)
module design_1_ila_0_0(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[7:0]" */;
  input clk;
  input [7:0]probe0;
endmodule
