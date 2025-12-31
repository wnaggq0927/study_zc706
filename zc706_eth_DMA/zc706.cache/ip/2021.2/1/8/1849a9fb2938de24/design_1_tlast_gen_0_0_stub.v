// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Dec 30 17:14:47 2025
// Host        : wgq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tlast_gen_0_0_stub.v
// Design      : design_1_tlast_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "tlast_gen,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(aclk, aresetn, s_axis_tdata, s_axis_tvalid, 
  m_axis_tdata, m_axis_tvalid, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="aclk,aresetn,s_axis_tdata[7:0],s_axis_tvalid,m_axis_tdata[31:0],m_axis_tvalid,m_axis_tlast" */;
  input aclk;
  input aresetn;
  input [7:0]s_axis_tdata;
  input s_axis_tvalid;
  output [31:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
endmodule
