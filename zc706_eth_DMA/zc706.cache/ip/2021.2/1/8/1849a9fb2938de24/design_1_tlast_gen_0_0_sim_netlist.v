// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Dec 30 17:14:47 2025
// Host        : wgq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_tlast_gen_0_0_sim_netlist.v
// Design      : design_1_tlast_gen_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_tlast_gen_0_0,tlast_gen,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "tlast_gen,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (aclk,
    aresetn,
    s_axis_tdata,
    s_axis_tvalid,
    m_axis_tdata,
    m_axis_tvalid,
    m_axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) input [7:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_cosine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cosine} enabled {attribs {resolve_type generated dependency cosine_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency cosine_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency cosine_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} field_sine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value sine} enabled {attribs {resolve_type generated dependency sine_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency sine_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency sine_offset format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency sine_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) input s_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) output m_axis_tlast;

  wire \<const0> ;
  wire aclk;
  wire aresetn;
  wire m_axis_tlast;
  wire [7:0]s_axis_tdata;
  wire s_axis_tvalid;

  assign m_axis_tdata[31] = \<const0> ;
  assign m_axis_tdata[30] = \<const0> ;
  assign m_axis_tdata[29] = \<const0> ;
  assign m_axis_tdata[28] = \<const0> ;
  assign m_axis_tdata[27] = \<const0> ;
  assign m_axis_tdata[26] = \<const0> ;
  assign m_axis_tdata[25] = \<const0> ;
  assign m_axis_tdata[24] = \<const0> ;
  assign m_axis_tdata[23] = \<const0> ;
  assign m_axis_tdata[22] = \<const0> ;
  assign m_axis_tdata[21] = \<const0> ;
  assign m_axis_tdata[20] = \<const0> ;
  assign m_axis_tdata[19] = \<const0> ;
  assign m_axis_tdata[18] = \<const0> ;
  assign m_axis_tdata[17] = \<const0> ;
  assign m_axis_tdata[16] = \<const0> ;
  assign m_axis_tdata[15] = \<const0> ;
  assign m_axis_tdata[14] = \<const0> ;
  assign m_axis_tdata[13] = \<const0> ;
  assign m_axis_tdata[12] = \<const0> ;
  assign m_axis_tdata[11] = \<const0> ;
  assign m_axis_tdata[10] = \<const0> ;
  assign m_axis_tdata[9] = \<const0> ;
  assign m_axis_tdata[8] = \<const0> ;
  assign m_axis_tdata[7:0] = s_axis_tdata;
  assign m_axis_tvalid = s_axis_tvalid;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_gen inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axis_tlast(m_axis_tlast),
        .s_axis_tvalid(s_axis_tvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tlast_gen
   (m_axis_tlast,
    s_axis_tvalid,
    aclk,
    aresetn);
  output m_axis_tlast;
  input s_axis_tvalid;
  input aclk;
  input aresetn;

  wire aclk;
  wire aresetn;
  wire [31:1]data0;
  wire m_axis_tlast;
  wire m_axis_tlast_INST_0_i_1_n_0;
  wire m_axis_tlast_INST_0_i_2_n_0;
  wire m_axis_tlast_INST_0_i_3_n_0;
  wire m_axis_tlast_INST_0_i_4_n_0;
  wire m_axis_tlast_INST_0_i_5_n_0;
  wire m_axis_tlast_INST_0_i_6_n_0;
  wire m_axis_tlast_INST_0_i_7_n_0;
  wire m_axis_tlast_INST_0_i_8_n_0;
  wire p_0_in;
  wire [31:0]packet_cnt;
  wire \packet_cnt_reg[12]_i_2_n_0 ;
  wire \packet_cnt_reg[12]_i_2_n_1 ;
  wire \packet_cnt_reg[12]_i_2_n_2 ;
  wire \packet_cnt_reg[12]_i_2_n_3 ;
  wire \packet_cnt_reg[16]_i_2_n_0 ;
  wire \packet_cnt_reg[16]_i_2_n_1 ;
  wire \packet_cnt_reg[16]_i_2_n_2 ;
  wire \packet_cnt_reg[16]_i_2_n_3 ;
  wire \packet_cnt_reg[20]_i_2_n_0 ;
  wire \packet_cnt_reg[20]_i_2_n_1 ;
  wire \packet_cnt_reg[20]_i_2_n_2 ;
  wire \packet_cnt_reg[20]_i_2_n_3 ;
  wire \packet_cnt_reg[24]_i_2_n_0 ;
  wire \packet_cnt_reg[24]_i_2_n_1 ;
  wire \packet_cnt_reg[24]_i_2_n_2 ;
  wire \packet_cnt_reg[24]_i_2_n_3 ;
  wire \packet_cnt_reg[28]_i_2_n_0 ;
  wire \packet_cnt_reg[28]_i_2_n_1 ;
  wire \packet_cnt_reg[28]_i_2_n_2 ;
  wire \packet_cnt_reg[28]_i_2_n_3 ;
  wire \packet_cnt_reg[31]_i_3_n_2 ;
  wire \packet_cnt_reg[31]_i_3_n_3 ;
  wire \packet_cnt_reg[4]_i_2_n_0 ;
  wire \packet_cnt_reg[4]_i_2_n_1 ;
  wire \packet_cnt_reg[4]_i_2_n_2 ;
  wire \packet_cnt_reg[4]_i_2_n_3 ;
  wire \packet_cnt_reg[8]_i_2_n_0 ;
  wire \packet_cnt_reg[8]_i_2_n_1 ;
  wire \packet_cnt_reg[8]_i_2_n_2 ;
  wire \packet_cnt_reg[8]_i_2_n_3 ;
  wire \packet_cnt_reg_n_0_[0] ;
  wire \packet_cnt_reg_n_0_[10] ;
  wire \packet_cnt_reg_n_0_[11] ;
  wire \packet_cnt_reg_n_0_[12] ;
  wire \packet_cnt_reg_n_0_[13] ;
  wire \packet_cnt_reg_n_0_[14] ;
  wire \packet_cnt_reg_n_0_[15] ;
  wire \packet_cnt_reg_n_0_[16] ;
  wire \packet_cnt_reg_n_0_[17] ;
  wire \packet_cnt_reg_n_0_[18] ;
  wire \packet_cnt_reg_n_0_[19] ;
  wire \packet_cnt_reg_n_0_[1] ;
  wire \packet_cnt_reg_n_0_[20] ;
  wire \packet_cnt_reg_n_0_[21] ;
  wire \packet_cnt_reg_n_0_[22] ;
  wire \packet_cnt_reg_n_0_[23] ;
  wire \packet_cnt_reg_n_0_[24] ;
  wire \packet_cnt_reg_n_0_[25] ;
  wire \packet_cnt_reg_n_0_[26] ;
  wire \packet_cnt_reg_n_0_[27] ;
  wire \packet_cnt_reg_n_0_[28] ;
  wire \packet_cnt_reg_n_0_[29] ;
  wire \packet_cnt_reg_n_0_[2] ;
  wire \packet_cnt_reg_n_0_[30] ;
  wire \packet_cnt_reg_n_0_[31] ;
  wire \packet_cnt_reg_n_0_[3] ;
  wire \packet_cnt_reg_n_0_[4] ;
  wire \packet_cnt_reg_n_0_[5] ;
  wire \packet_cnt_reg_n_0_[6] ;
  wire \packet_cnt_reg_n_0_[7] ;
  wire \packet_cnt_reg_n_0_[8] ;
  wire \packet_cnt_reg_n_0_[9] ;
  wire s_axis_tvalid;
  wire [3:2]\NLW_packet_cnt_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_packet_cnt_reg[31]_i_3_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h00000002)) 
    m_axis_tlast_INST_0
       (.I0(s_axis_tvalid),
        .I1(m_axis_tlast_INST_0_i_1_n_0),
        .I2(m_axis_tlast_INST_0_i_2_n_0),
        .I3(m_axis_tlast_INST_0_i_3_n_0),
        .I4(m_axis_tlast_INST_0_i_4_n_0),
        .O(m_axis_tlast));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m_axis_tlast_INST_0_i_1
       (.I0(\packet_cnt_reg_n_0_[18] ),
        .I1(\packet_cnt_reg_n_0_[19] ),
        .I2(\packet_cnt_reg_n_0_[16] ),
        .I3(\packet_cnt_reg_n_0_[17] ),
        .I4(m_axis_tlast_INST_0_i_5_n_0),
        .O(m_axis_tlast_INST_0_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    m_axis_tlast_INST_0_i_2
       (.I0(\packet_cnt_reg_n_0_[26] ),
        .I1(\packet_cnt_reg_n_0_[27] ),
        .I2(\packet_cnt_reg_n_0_[24] ),
        .I3(\packet_cnt_reg_n_0_[25] ),
        .I4(m_axis_tlast_INST_0_i_6_n_0),
        .O(m_axis_tlast_INST_0_i_2_n_0));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    m_axis_tlast_INST_0_i_3
       (.I0(\packet_cnt_reg_n_0_[2] ),
        .I1(\packet_cnt_reg_n_0_[3] ),
        .I2(\packet_cnt_reg_n_0_[0] ),
        .I3(\packet_cnt_reg_n_0_[1] ),
        .I4(m_axis_tlast_INST_0_i_7_n_0),
        .O(m_axis_tlast_INST_0_i_3_n_0));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    m_axis_tlast_INST_0_i_4
       (.I0(\packet_cnt_reg_n_0_[10] ),
        .I1(\packet_cnt_reg_n_0_[11] ),
        .I2(\packet_cnt_reg_n_0_[8] ),
        .I3(\packet_cnt_reg_n_0_[9] ),
        .I4(m_axis_tlast_INST_0_i_8_n_0),
        .O(m_axis_tlast_INST_0_i_4_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_INST_0_i_5
       (.I0(\packet_cnt_reg_n_0_[21] ),
        .I1(\packet_cnt_reg_n_0_[20] ),
        .I2(\packet_cnt_reg_n_0_[23] ),
        .I3(\packet_cnt_reg_n_0_[22] ),
        .O(m_axis_tlast_INST_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_INST_0_i_6
       (.I0(\packet_cnt_reg_n_0_[29] ),
        .I1(\packet_cnt_reg_n_0_[28] ),
        .I2(\packet_cnt_reg_n_0_[31] ),
        .I3(\packet_cnt_reg_n_0_[30] ),
        .O(m_axis_tlast_INST_0_i_6_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    m_axis_tlast_INST_0_i_7
       (.I0(\packet_cnt_reg_n_0_[5] ),
        .I1(\packet_cnt_reg_n_0_[4] ),
        .I2(\packet_cnt_reg_n_0_[7] ),
        .I3(\packet_cnt_reg_n_0_[6] ),
        .O(m_axis_tlast_INST_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    m_axis_tlast_INST_0_i_8
       (.I0(\packet_cnt_reg_n_0_[13] ),
        .I1(\packet_cnt_reg_n_0_[12] ),
        .I2(\packet_cnt_reg_n_0_[15] ),
        .I3(\packet_cnt_reg_n_0_[14] ),
        .O(m_axis_tlast_INST_0_i_8_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \packet_cnt[0]_i_1 
       (.I0(\packet_cnt_reg_n_0_[0] ),
        .O(packet_cnt[0]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[10]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[10]),
        .O(packet_cnt[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[11]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[11]),
        .O(packet_cnt[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[12]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[12]),
        .O(packet_cnt[12]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[13]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[13]),
        .O(packet_cnt[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[14]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[14]),
        .O(packet_cnt[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[15]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[15]),
        .O(packet_cnt[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[16]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[16]),
        .O(packet_cnt[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[17]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[17]),
        .O(packet_cnt[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[18]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[18]),
        .O(packet_cnt[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[19]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[19]),
        .O(packet_cnt[19]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[1]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[1]),
        .O(packet_cnt[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[20]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[20]),
        .O(packet_cnt[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[21]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[21]),
        .O(packet_cnt[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[22]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[22]),
        .O(packet_cnt[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[23]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[23]),
        .O(packet_cnt[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[24]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[24]),
        .O(packet_cnt[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[25]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[25]),
        .O(packet_cnt[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[26]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[26]),
        .O(packet_cnt[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[27]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[27]),
        .O(packet_cnt[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[28]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[28]),
        .O(packet_cnt[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[29]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[29]),
        .O(packet_cnt[29]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[2]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[2]),
        .O(packet_cnt[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[30]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[30]),
        .O(packet_cnt[30]));
  LUT1 #(
    .INIT(2'h1)) 
    \packet_cnt[31]_i_1 
       (.I0(aresetn),
        .O(p_0_in));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[31]_i_2 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[31]),
        .O(packet_cnt[31]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[3]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[3]),
        .O(packet_cnt[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[4]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[4]),
        .O(packet_cnt[4]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[5]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[5]),
        .O(packet_cnt[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[6]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[6]),
        .O(packet_cnt[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[7]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[7]),
        .O(packet_cnt[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[8]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[8]),
        .O(packet_cnt[8]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \packet_cnt[9]_i_1 
       (.I0(m_axis_tlast_INST_0_i_1_n_0),
        .I1(m_axis_tlast_INST_0_i_2_n_0),
        .I2(m_axis_tlast_INST_0_i_3_n_0),
        .I3(m_axis_tlast_INST_0_i_4_n_0),
        .I4(data0[9]),
        .O(packet_cnt[9]));
  FDRE \packet_cnt_reg[0] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[0]),
        .Q(\packet_cnt_reg_n_0_[0] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[10] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[10]),
        .Q(\packet_cnt_reg_n_0_[10] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[11] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[11]),
        .Q(\packet_cnt_reg_n_0_[11] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[12] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[12]),
        .Q(\packet_cnt_reg_n_0_[12] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \packet_cnt_reg[12]_i_2 
       (.CI(\packet_cnt_reg[8]_i_2_n_0 ),
        .CO({\packet_cnt_reg[12]_i_2_n_0 ,\packet_cnt_reg[12]_i_2_n_1 ,\packet_cnt_reg[12]_i_2_n_2 ,\packet_cnt_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\packet_cnt_reg_n_0_[12] ,\packet_cnt_reg_n_0_[11] ,\packet_cnt_reg_n_0_[10] ,\packet_cnt_reg_n_0_[9] }));
  FDRE \packet_cnt_reg[13] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[13]),
        .Q(\packet_cnt_reg_n_0_[13] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[14] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[14]),
        .Q(\packet_cnt_reg_n_0_[14] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[15] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[15]),
        .Q(\packet_cnt_reg_n_0_[15] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[16] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[16]),
        .Q(\packet_cnt_reg_n_0_[16] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \packet_cnt_reg[16]_i_2 
       (.CI(\packet_cnt_reg[12]_i_2_n_0 ),
        .CO({\packet_cnt_reg[16]_i_2_n_0 ,\packet_cnt_reg[16]_i_2_n_1 ,\packet_cnt_reg[16]_i_2_n_2 ,\packet_cnt_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\packet_cnt_reg_n_0_[16] ,\packet_cnt_reg_n_0_[15] ,\packet_cnt_reg_n_0_[14] ,\packet_cnt_reg_n_0_[13] }));
  FDRE \packet_cnt_reg[17] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[17]),
        .Q(\packet_cnt_reg_n_0_[17] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[18] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[18]),
        .Q(\packet_cnt_reg_n_0_[18] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[19] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[19]),
        .Q(\packet_cnt_reg_n_0_[19] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[1] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[1]),
        .Q(\packet_cnt_reg_n_0_[1] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[20] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[20]),
        .Q(\packet_cnt_reg_n_0_[20] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \packet_cnt_reg[20]_i_2 
       (.CI(\packet_cnt_reg[16]_i_2_n_0 ),
        .CO({\packet_cnt_reg[20]_i_2_n_0 ,\packet_cnt_reg[20]_i_2_n_1 ,\packet_cnt_reg[20]_i_2_n_2 ,\packet_cnt_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\packet_cnt_reg_n_0_[20] ,\packet_cnt_reg_n_0_[19] ,\packet_cnt_reg_n_0_[18] ,\packet_cnt_reg_n_0_[17] }));
  FDRE \packet_cnt_reg[21] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[21]),
        .Q(\packet_cnt_reg_n_0_[21] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[22] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[22]),
        .Q(\packet_cnt_reg_n_0_[22] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[23] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[23]),
        .Q(\packet_cnt_reg_n_0_[23] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[24] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[24]),
        .Q(\packet_cnt_reg_n_0_[24] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \packet_cnt_reg[24]_i_2 
       (.CI(\packet_cnt_reg[20]_i_2_n_0 ),
        .CO({\packet_cnt_reg[24]_i_2_n_0 ,\packet_cnt_reg[24]_i_2_n_1 ,\packet_cnt_reg[24]_i_2_n_2 ,\packet_cnt_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\packet_cnt_reg_n_0_[24] ,\packet_cnt_reg_n_0_[23] ,\packet_cnt_reg_n_0_[22] ,\packet_cnt_reg_n_0_[21] }));
  FDRE \packet_cnt_reg[25] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[25]),
        .Q(\packet_cnt_reg_n_0_[25] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[26] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[26]),
        .Q(\packet_cnt_reg_n_0_[26] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[27] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[27]),
        .Q(\packet_cnt_reg_n_0_[27] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[28] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[28]),
        .Q(\packet_cnt_reg_n_0_[28] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \packet_cnt_reg[28]_i_2 
       (.CI(\packet_cnt_reg[24]_i_2_n_0 ),
        .CO({\packet_cnt_reg[28]_i_2_n_0 ,\packet_cnt_reg[28]_i_2_n_1 ,\packet_cnt_reg[28]_i_2_n_2 ,\packet_cnt_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\packet_cnt_reg_n_0_[28] ,\packet_cnt_reg_n_0_[27] ,\packet_cnt_reg_n_0_[26] ,\packet_cnt_reg_n_0_[25] }));
  FDRE \packet_cnt_reg[29] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[29]),
        .Q(\packet_cnt_reg_n_0_[29] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[2] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[2]),
        .Q(\packet_cnt_reg_n_0_[2] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[30] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[30]),
        .Q(\packet_cnt_reg_n_0_[30] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[31] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[31]),
        .Q(\packet_cnt_reg_n_0_[31] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \packet_cnt_reg[31]_i_3 
       (.CI(\packet_cnt_reg[28]_i_2_n_0 ),
        .CO({\NLW_packet_cnt_reg[31]_i_3_CO_UNCONNECTED [3:2],\packet_cnt_reg[31]_i_3_n_2 ,\packet_cnt_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_packet_cnt_reg[31]_i_3_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\packet_cnt_reg_n_0_[31] ,\packet_cnt_reg_n_0_[30] ,\packet_cnt_reg_n_0_[29] }));
  FDRE \packet_cnt_reg[3] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[3]),
        .Q(\packet_cnt_reg_n_0_[3] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[4] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[4]),
        .Q(\packet_cnt_reg_n_0_[4] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \packet_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\packet_cnt_reg[4]_i_2_n_0 ,\packet_cnt_reg[4]_i_2_n_1 ,\packet_cnt_reg[4]_i_2_n_2 ,\packet_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\packet_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\packet_cnt_reg_n_0_[4] ,\packet_cnt_reg_n_0_[3] ,\packet_cnt_reg_n_0_[2] ,\packet_cnt_reg_n_0_[1] }));
  FDRE \packet_cnt_reg[5] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[5]),
        .Q(\packet_cnt_reg_n_0_[5] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[6] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[6]),
        .Q(\packet_cnt_reg_n_0_[6] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[7] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[7]),
        .Q(\packet_cnt_reg_n_0_[7] ),
        .R(p_0_in));
  FDRE \packet_cnt_reg[8] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[8]),
        .Q(\packet_cnt_reg_n_0_[8] ),
        .R(p_0_in));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \packet_cnt_reg[8]_i_2 
       (.CI(\packet_cnt_reg[4]_i_2_n_0 ),
        .CO({\packet_cnt_reg[8]_i_2_n_0 ,\packet_cnt_reg[8]_i_2_n_1 ,\packet_cnt_reg[8]_i_2_n_2 ,\packet_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\packet_cnt_reg_n_0_[8] ,\packet_cnt_reg_n_0_[7] ,\packet_cnt_reg_n_0_[6] ,\packet_cnt_reg_n_0_[5] }));
  FDRE \packet_cnt_reg[9] 
       (.C(aclk),
        .CE(s_axis_tvalid),
        .D(packet_cnt[9]),
        .Q(\packet_cnt_reg_n_0_[9] ),
        .R(p_0_in));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
