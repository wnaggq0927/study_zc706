// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Wed Jan  7 14:54:28 2026
// Host        : wgq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_hdmi_test_pattern_0_0_sim_netlist.v
// Design      : design_1_hdmi_test_pattern_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_hdmi_test_pattern_0_0,hdmi_test_pattern,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "hdmi_test_pattern,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clk,
    rst_n,
    hdmi_hs,
    hdmi_vs,
    hdmi_de,
    hdmi_data);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 148500000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, INSERT_VIP 0" *) input clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input rst_n;
  output hdmi_hs;
  output hdmi_vs;
  output hdmi_de;
  output [23:0]hdmi_data;

  wire clk;
  wire [22:6]\^hdmi_data ;
  wire hdmi_de;
  wire hdmi_hs;
  wire hdmi_vs;
  wire rst_n;

  assign hdmi_data[23] = \^hdmi_data [22];
  assign hdmi_data[22] = \^hdmi_data [22];
  assign hdmi_data[21] = \^hdmi_data [22];
  assign hdmi_data[20] = \^hdmi_data [22];
  assign hdmi_data[19] = \^hdmi_data [22];
  assign hdmi_data[18] = \^hdmi_data [22];
  assign hdmi_data[17] = \^hdmi_data [22];
  assign hdmi_data[16] = \^hdmi_data [22];
  assign hdmi_data[15] = \^hdmi_data [14];
  assign hdmi_data[14] = \^hdmi_data [14];
  assign hdmi_data[13] = \^hdmi_data [14];
  assign hdmi_data[12] = \^hdmi_data [14];
  assign hdmi_data[11] = \^hdmi_data [14];
  assign hdmi_data[10] = \^hdmi_data [14];
  assign hdmi_data[9] = \^hdmi_data [14];
  assign hdmi_data[8] = \^hdmi_data [14];
  assign hdmi_data[7] = \^hdmi_data [6];
  assign hdmi_data[6] = \^hdmi_data [6];
  assign hdmi_data[5] = \^hdmi_data [6];
  assign hdmi_data[4] = \^hdmi_data [6];
  assign hdmi_data[3] = \^hdmi_data [6];
  assign hdmi_data[2] = \^hdmi_data [6];
  assign hdmi_data[1] = \^hdmi_data [6];
  assign hdmi_data[0] = \^hdmi_data [6];
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_test_pattern inst
       (.clk(clk),
        .hdmi_data({\^hdmi_data [22],\^hdmi_data [14],\^hdmi_data [6]}),
        .hdmi_de(hdmi_de),
        .hdmi_hs(hdmi_hs),
        .hdmi_vs(hdmi_vs),
        .rst_n(rst_n));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_test_pattern
   (hdmi_hs,
    hdmi_vs,
    hdmi_de,
    hdmi_data,
    clk,
    rst_n);
  output hdmi_hs;
  output hdmi_vs;
  output hdmi_de;
  output [2:0]hdmi_data;
  input clk;
  input rst_n;

  wire clk;
  wire [11:1]data0;
  wire [11:0]h_cnt;
  wire \h_cnt[11]_i_2_n_0 ;
  wire \h_cnt[11]_i_4_n_0 ;
  wire \h_cnt[11]_i_5_n_0 ;
  wire \h_cnt_reg[11]_i_3_n_2 ;
  wire \h_cnt_reg[11]_i_3_n_3 ;
  wire \h_cnt_reg[4]_i_2_n_0 ;
  wire \h_cnt_reg[4]_i_2_n_1 ;
  wire \h_cnt_reg[4]_i_2_n_2 ;
  wire \h_cnt_reg[4]_i_2_n_3 ;
  wire \h_cnt_reg[8]_i_2_n_0 ;
  wire \h_cnt_reg[8]_i_2_n_1 ;
  wire \h_cnt_reg[8]_i_2_n_2 ;
  wire \h_cnt_reg[8]_i_2_n_3 ;
  wire \h_cnt_reg_n_0_[0] ;
  wire \h_cnt_reg_n_0_[10] ;
  wire \h_cnt_reg_n_0_[11] ;
  wire \h_cnt_reg_n_0_[1] ;
  wire \h_cnt_reg_n_0_[2] ;
  wire \h_cnt_reg_n_0_[3] ;
  wire \h_cnt_reg_n_0_[4] ;
  wire \h_cnt_reg_n_0_[5] ;
  wire \h_cnt_reg_n_0_[6] ;
  wire \h_cnt_reg_n_0_[7] ;
  wire \h_cnt_reg_n_0_[8] ;
  wire \h_cnt_reg_n_0_[9] ;
  wire [2:0]hdmi_data;
  wire \hdmi_data[15]_i_1_n_0 ;
  wire \hdmi_data[15]_i_2_n_0 ;
  wire \hdmi_data[15]_i_3_n_0 ;
  wire \hdmi_data[15]_i_4_n_0 ;
  wire \hdmi_data[23]_i_1_n_0 ;
  wire \hdmi_data[23]_i_2_n_0 ;
  wire \hdmi_data[23]_i_3_n_0 ;
  wire \hdmi_data[23]_i_4_n_0 ;
  wire \hdmi_data[23]_i_5_n_0 ;
  wire \hdmi_data[23]_i_6_n_0 ;
  wire \hdmi_data[23]_i_7_n_0 ;
  wire \hdmi_data[23]_i_8_n_0 ;
  wire \hdmi_data[23]_i_9_n_0 ;
  wire \hdmi_data[7]_i_1_n_0 ;
  wire hdmi_de;
  wire hdmi_de0;
  wire hdmi_de_i_2_n_0;
  wire hdmi_hs;
  wire hdmi_hs_i_1_n_0;
  wire hdmi_hs_i_2_n_0;
  wire hdmi_hs_i_3_n_0;
  wire hdmi_hs_i_4_n_0;
  wire hdmi_hs_i_5_n_0;
  wire hdmi_vs;
  wire hdmi_vs0;
  wire hdmi_vs_i_2_n_0;
  wire hdmi_vs_i_3_n_0;
  wire hdmi_vs_i_4_n_0;
  wire hdmi_vs_i_5_n_0;
  wire rst_n;
  wire v_cnt;
  wire v_cnt0_carry__0_n_0;
  wire v_cnt0_carry__0_n_1;
  wire v_cnt0_carry__0_n_2;
  wire v_cnt0_carry__0_n_3;
  wire v_cnt0_carry__0_n_4;
  wire v_cnt0_carry__0_n_5;
  wire v_cnt0_carry__0_n_6;
  wire v_cnt0_carry__0_n_7;
  wire v_cnt0_carry__1_n_2;
  wire v_cnt0_carry__1_n_3;
  wire v_cnt0_carry__1_n_5;
  wire v_cnt0_carry__1_n_6;
  wire v_cnt0_carry__1_n_7;
  wire v_cnt0_carry_n_0;
  wire v_cnt0_carry_n_1;
  wire v_cnt0_carry_n_2;
  wire v_cnt0_carry_n_3;
  wire v_cnt0_carry_n_4;
  wire v_cnt0_carry_n_5;
  wire v_cnt0_carry_n_6;
  wire v_cnt0_carry_n_7;
  wire \v_cnt[0]_i_1_n_0 ;
  wire \v_cnt[10]_i_1_n_0 ;
  wire \v_cnt[11]_i_2_n_0 ;
  wire \v_cnt[11]_i_3_n_0 ;
  wire \v_cnt[11]_i_4_n_0 ;
  wire \v_cnt[11]_i_5_n_0 ;
  wire \v_cnt[11]_i_6_n_0 ;
  wire \v_cnt[11]_i_7_n_0 ;
  wire \v_cnt[1]_i_1_n_0 ;
  wire \v_cnt[2]_i_1_n_0 ;
  wire \v_cnt[3]_i_1_n_0 ;
  wire \v_cnt[4]_i_1_n_0 ;
  wire \v_cnt[5]_i_1_n_0 ;
  wire \v_cnt[6]_i_1_n_0 ;
  wire \v_cnt[7]_i_1_n_0 ;
  wire \v_cnt[8]_i_1_n_0 ;
  wire \v_cnt[9]_i_1_n_0 ;
  wire \v_cnt_reg_n_0_[0] ;
  wire \v_cnt_reg_n_0_[10] ;
  wire \v_cnt_reg_n_0_[11] ;
  wire \v_cnt_reg_n_0_[1] ;
  wire \v_cnt_reg_n_0_[2] ;
  wire \v_cnt_reg_n_0_[3] ;
  wire \v_cnt_reg_n_0_[4] ;
  wire \v_cnt_reg_n_0_[5] ;
  wire \v_cnt_reg_n_0_[6] ;
  wire \v_cnt_reg_n_0_[7] ;
  wire \v_cnt_reg_n_0_[8] ;
  wire \v_cnt_reg_n_0_[9] ;
  wire [3:2]\NLW_h_cnt_reg[11]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_h_cnt_reg[11]_i_3_O_UNCONNECTED ;
  wire [3:2]NLW_v_cnt0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_v_cnt0_carry__1_O_UNCONNECTED;

  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \h_cnt[0]_i_1 
       (.I0(\h_cnt_reg_n_0_[0] ),
        .O(h_cnt[0]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[10]_i_1 
       (.I0(data0[10]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[10]));
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[11]_i_1 
       (.I0(data0[11]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[11]));
  LUT1 #(
    .INIT(2'h1)) 
    \h_cnt[11]_i_2 
       (.I0(rst_n),
        .O(\h_cnt[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000040)) 
    \h_cnt[11]_i_4 
       (.I0(\h_cnt[11]_i_5_n_0 ),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt_reg_n_0_[1] ),
        .I3(\h_cnt_reg_n_0_[10] ),
        .I4(hdmi_hs_i_4_n_0),
        .I5(\h_cnt_reg_n_0_[5] ),
        .O(\h_cnt[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    \h_cnt[11]_i_5 
       (.I0(\h_cnt_reg_n_0_[0] ),
        .I1(\h_cnt_reg_n_0_[4] ),
        .I2(\h_cnt_reg_n_0_[2] ),
        .I3(\h_cnt_reg_n_0_[11] ),
        .O(\h_cnt[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[1]_i_1 
       (.I0(data0[1]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[2]_i_1 
       (.I0(data0[2]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[2]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[3]_i_1 
       (.I0(data0[3]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[4]_i_1 
       (.I0(data0[4]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[4]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[5]_i_1 
       (.I0(data0[5]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[5]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[6]_i_1 
       (.I0(data0[6]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[6]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[7]_i_1 
       (.I0(data0[7]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[8]_i_1 
       (.I0(data0[8]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[8]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \h_cnt[9]_i_1 
       (.I0(data0[9]),
        .I1(\h_cnt[11]_i_4_n_0 ),
        .O(h_cnt[9]));
  FDCE \h_cnt_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[0]),
        .Q(\h_cnt_reg_n_0_[0] ));
  FDCE \h_cnt_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[10]),
        .Q(\h_cnt_reg_n_0_[10] ));
  FDCE \h_cnt_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[11]),
        .Q(\h_cnt_reg_n_0_[11] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \h_cnt_reg[11]_i_3 
       (.CI(\h_cnt_reg[8]_i_2_n_0 ),
        .CO({\NLW_h_cnt_reg[11]_i_3_CO_UNCONNECTED [3:2],\h_cnt_reg[11]_i_3_n_2 ,\h_cnt_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_h_cnt_reg[11]_i_3_O_UNCONNECTED [3],data0[11:9]}),
        .S({1'b0,\h_cnt_reg_n_0_[11] ,\h_cnt_reg_n_0_[10] ,\h_cnt_reg_n_0_[9] }));
  FDCE \h_cnt_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[1]),
        .Q(\h_cnt_reg_n_0_[1] ));
  FDCE \h_cnt_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[2]),
        .Q(\h_cnt_reg_n_0_[2] ));
  FDCE \h_cnt_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[3]),
        .Q(\h_cnt_reg_n_0_[3] ));
  FDCE \h_cnt_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[4]),
        .Q(\h_cnt_reg_n_0_[4] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \h_cnt_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\h_cnt_reg[4]_i_2_n_0 ,\h_cnt_reg[4]_i_2_n_1 ,\h_cnt_reg[4]_i_2_n_2 ,\h_cnt_reg[4]_i_2_n_3 }),
        .CYINIT(\h_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\h_cnt_reg_n_0_[4] ,\h_cnt_reg_n_0_[3] ,\h_cnt_reg_n_0_[2] ,\h_cnt_reg_n_0_[1] }));
  FDCE \h_cnt_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[5]),
        .Q(\h_cnt_reg_n_0_[5] ));
  FDCE \h_cnt_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[6]),
        .Q(\h_cnt_reg_n_0_[6] ));
  FDCE \h_cnt_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[7]),
        .Q(\h_cnt_reg_n_0_[7] ));
  FDCE \h_cnt_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[8]),
        .Q(\h_cnt_reg_n_0_[8] ));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 \h_cnt_reg[8]_i_2 
       (.CI(\h_cnt_reg[4]_i_2_n_0 ),
        .CO({\h_cnt_reg[8]_i_2_n_0 ,\h_cnt_reg[8]_i_2_n_1 ,\h_cnt_reg[8]_i_2_n_2 ,\h_cnt_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\h_cnt_reg_n_0_[8] ,\h_cnt_reg_n_0_[7] ,\h_cnt_reg_n_0_[6] ,\h_cnt_reg_n_0_[5] }));
  FDCE \h_cnt_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(h_cnt[9]),
        .Q(\h_cnt_reg_n_0_[9] ));
  LUT6 #(
    .INIT(64'h45FF000000000000)) 
    \hdmi_data[15]_i_1 
       (.I0(\hdmi_data[23]_i_5_n_0 ),
        .I1(\hdmi_data[15]_i_2_n_0 ),
        .I2(\hdmi_data[23]_i_2_n_0 ),
        .I3(\hdmi_data[15]_i_3_n_0 ),
        .I4(\hdmi_data[23]_i_6_n_0 ),
        .I5(hdmi_de0),
        .O(\hdmi_data[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFEEE0222)) 
    \hdmi_data[15]_i_2 
       (.I0(\hdmi_data[15]_i_4_n_0 ),
        .I1(\h_cnt_reg_n_0_[11] ),
        .I2(\h_cnt_reg_n_0_[10] ),
        .I3(\h_cnt_reg_n_0_[9] ),
        .I4(\hdmi_data[23]_i_8_n_0 ),
        .O(\hdmi_data[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFEFEFEFEFEFEFE)) 
    \hdmi_data[15]_i_3 
       (.I0(\h_cnt_reg_n_0_[11] ),
        .I1(\h_cnt_reg_n_0_[10] ),
        .I2(\h_cnt_reg_n_0_[9] ),
        .I3(\v_cnt[11]_i_4_n_0 ),
        .I4(\h_cnt_reg_n_0_[5] ),
        .I5(\h_cnt_reg_n_0_[8] ),
        .O(\hdmi_data[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h80808000)) 
    \hdmi_data[15]_i_4 
       (.I0(\h_cnt_reg_n_0_[10] ),
        .I1(\h_cnt_reg_n_0_[8] ),
        .I2(\h_cnt_reg_n_0_[7] ),
        .I3(\h_cnt_reg_n_0_[6] ),
        .I4(\h_cnt_reg_n_0_[5] ),
        .O(\hdmi_data[15]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00B0FFFF00000000)) 
    \hdmi_data[23]_i_1 
       (.I0(\hdmi_data[23]_i_2_n_0 ),
        .I1(\hdmi_data[23]_i_3_n_0 ),
        .I2(\hdmi_data[23]_i_4_n_0 ),
        .I3(\hdmi_data[23]_i_5_n_0 ),
        .I4(\hdmi_data[23]_i_6_n_0 ),
        .I5(hdmi_de0),
        .O(\hdmi_data[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFBBBBBBBAAAAAAAA)) 
    \hdmi_data[23]_i_2 
       (.I0(\h_cnt_reg_n_0_[11] ),
        .I1(\hdmi_data[23]_i_7_n_0 ),
        .I2(\h_cnt_reg_n_0_[5] ),
        .I3(\h_cnt_reg_n_0_[4] ),
        .I4(\h_cnt_reg_n_0_[7] ),
        .I5(\h_cnt_reg_n_0_[10] ),
        .O(\hdmi_data[23]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    \hdmi_data[23]_i_3 
       (.I0(\h_cnt_reg_n_0_[9] ),
        .I1(\h_cnt_reg_n_0_[8] ),
        .I2(\h_cnt_reg_n_0_[6] ),
        .I3(\h_cnt_reg_n_0_[7] ),
        .I4(\h_cnt_reg_n_0_[10] ),
        .I5(\h_cnt_reg_n_0_[11] ),
        .O(\hdmi_data[23]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFF07)) 
    \hdmi_data[23]_i_4 
       (.I0(\h_cnt_reg_n_0_[9] ),
        .I1(\h_cnt_reg_n_0_[10] ),
        .I2(\h_cnt_reg_n_0_[11] ),
        .I3(\hdmi_data[23]_i_8_n_0 ),
        .O(\hdmi_data[23]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00FF57FF00000000)) 
    \hdmi_data[23]_i_5 
       (.I0(\v_cnt[11]_i_4_n_0 ),
        .I1(\h_cnt_reg_n_0_[4] ),
        .I2(\h_cnt_reg_n_0_[5] ),
        .I3(\h_cnt_reg_n_0_[9] ),
        .I4(\h_cnt_reg_n_0_[8] ),
        .I5(\hdmi_data[23]_i_9_n_0 ),
        .O(\hdmi_data[23]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF80FF)) 
    \hdmi_data[23]_i_6 
       (.I0(\h_cnt_reg_n_0_[5] ),
        .I1(\h_cnt_reg_n_0_[4] ),
        .I2(\v_cnt[11]_i_4_n_0 ),
        .I3(\hdmi_data[23]_i_9_n_0 ),
        .I4(\h_cnt_reg_n_0_[9] ),
        .I5(\h_cnt_reg_n_0_[8] ),
        .O(\hdmi_data[23]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0007)) 
    \hdmi_data[23]_i_7 
       (.I0(\h_cnt_reg_n_0_[7] ),
        .I1(\h_cnt_reg_n_0_[6] ),
        .I2(\h_cnt_reg_n_0_[8] ),
        .I3(\h_cnt_reg_n_0_[9] ),
        .O(\hdmi_data[23]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000001000F000F)) 
    \hdmi_data[23]_i_8 
       (.I0(\h_cnt_reg_n_0_[5] ),
        .I1(\h_cnt_reg_n_0_[4] ),
        .I2(\h_cnt_reg_n_0_[8] ),
        .I3(\h_cnt_reg_n_0_[11] ),
        .I4(\h_cnt_reg_n_0_[6] ),
        .I5(\h_cnt_reg_n_0_[7] ),
        .O(\hdmi_data[23]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \hdmi_data[23]_i_9 
       (.I0(\h_cnt_reg_n_0_[11] ),
        .I1(\h_cnt_reg_n_0_[10] ),
        .O(\hdmi_data[23]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hF8000000)) 
    \hdmi_data[7]_i_1 
       (.I0(\hdmi_data[23]_i_4_n_0 ),
        .I1(\hdmi_data[23]_i_3_n_0 ),
        .I2(\hdmi_data[23]_i_5_n_0 ),
        .I3(\hdmi_data[15]_i_3_n_0 ),
        .I4(hdmi_de0),
        .O(\hdmi_data[7]_i_1_n_0 ));
  FDRE \hdmi_data_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\hdmi_data[15]_i_1_n_0 ),
        .Q(hdmi_data[1]),
        .R(1'b0));
  FDRE \hdmi_data_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\hdmi_data[23]_i_1_n_0 ),
        .Q(hdmi_data[2]),
        .R(1'b0));
  FDRE \hdmi_data_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\hdmi_data[7]_i_1_n_0 ),
        .Q(hdmi_data[0]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000007FFFFF)) 
    hdmi_de_i_1
       (.I0(\v_cnt_reg_n_0_[3] ),
        .I1(\v_cnt_reg_n_0_[5] ),
        .I2(\v_cnt_reg_n_0_[4] ),
        .I3(hdmi_vs_i_5_n_0),
        .I4(\v_cnt_reg_n_0_[10] ),
        .I5(hdmi_de_i_2_n_0),
        .O(hdmi_de0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF8000)) 
    hdmi_de_i_2
       (.I0(\h_cnt_reg_n_0_[8] ),
        .I1(\h_cnt_reg_n_0_[7] ),
        .I2(\h_cnt_reg_n_0_[9] ),
        .I3(\h_cnt_reg_n_0_[10] ),
        .I4(\v_cnt_reg_n_0_[11] ),
        .I5(\h_cnt_reg_n_0_[11] ),
        .O(hdmi_de_i_2_n_0));
  FDRE hdmi_de_reg
       (.C(clk),
        .CE(1'b1),
        .D(hdmi_de0),
        .Q(hdmi_de),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h008000800080FFAA)) 
    hdmi_hs_i_1
       (.I0(\h_cnt_reg_n_0_[10] ),
        .I1(hdmi_hs_i_2_n_0),
        .I2(hdmi_hs_i_3_n_0),
        .I3(\h_cnt_reg_n_0_[11] ),
        .I4(hdmi_hs_i_4_n_0),
        .I5(hdmi_hs_i_5_n_0),
        .O(hdmi_hs_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    hdmi_hs_i_2
       (.I0(\h_cnt_reg_n_0_[7] ),
        .I1(\h_cnt_reg_n_0_[6] ),
        .I2(\h_cnt_reg_n_0_[8] ),
        .I3(\h_cnt_reg_n_0_[9] ),
        .O(hdmi_hs_i_2_n_0));
  LUT3 #(
    .INIT(8'hEA)) 
    hdmi_hs_i_3
       (.I0(\h_cnt_reg_n_0_[5] ),
        .I1(\h_cnt_reg_n_0_[3] ),
        .I2(\h_cnt_reg_n_0_[4] ),
        .O(hdmi_hs_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    hdmi_hs_i_4
       (.I0(\h_cnt_reg_n_0_[8] ),
        .I1(\h_cnt_reg_n_0_[9] ),
        .I2(\h_cnt_reg_n_0_[3] ),
        .I3(\h_cnt_reg_n_0_[6] ),
        .O(hdmi_hs_i_4_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    hdmi_hs_i_5
       (.I0(\h_cnt_reg_n_0_[4] ),
        .I1(\h_cnt_reg_n_0_[5] ),
        .I2(\h_cnt_reg_n_0_[10] ),
        .I3(\h_cnt_reg_n_0_[2] ),
        .I4(\h_cnt_reg_n_0_[7] ),
        .O(hdmi_hs_i_5_n_0));
  FDRE hdmi_hs_reg
       (.C(clk),
        .CE(1'b1),
        .D(hdmi_hs_i_1_n_0),
        .Q(hdmi_hs),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h2022202220220000)) 
    hdmi_vs_i_1
       (.I0(hdmi_vs_i_2_n_0),
        .I1(hdmi_vs_i_3_n_0),
        .I2(hdmi_vs_i_4_n_0),
        .I3(\v_cnt_reg_n_0_[6] ),
        .I4(\v_cnt_reg_n_0_[2] ),
        .I5(hdmi_vs_i_5_n_0),
        .O(hdmi_vs0));
  LUT5 #(
    .INIT(32'hA8888888)) 
    hdmi_vs_i_2
       (.I0(\v_cnt_reg_n_0_[10] ),
        .I1(hdmi_vs_i_5_n_0),
        .I2(\v_cnt_reg_n_0_[4] ),
        .I3(\v_cnt_reg_n_0_[5] ),
        .I4(\v_cnt_reg_n_0_[3] ),
        .O(hdmi_vs_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    hdmi_vs_i_3
       (.I0(\v_cnt_reg_n_0_[11] ),
        .I1(\v_cnt_reg_n_0_[9] ),
        .I2(\v_cnt_reg_n_0_[8] ),
        .I3(\v_cnt_reg_n_0_[7] ),
        .O(hdmi_vs_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    hdmi_vs_i_4
       (.I0(\v_cnt_reg_n_0_[3] ),
        .I1(\v_cnt_reg_n_0_[1] ),
        .I2(\v_cnt_reg_n_0_[0] ),
        .I3(\v_cnt_reg_n_0_[4] ),
        .I4(\v_cnt_reg_n_0_[5] ),
        .I5(\v_cnt_reg_n_0_[2] ),
        .O(hdmi_vs_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    hdmi_vs_i_5
       (.I0(\v_cnt_reg_n_0_[8] ),
        .I1(\v_cnt_reg_n_0_[9] ),
        .I2(\v_cnt_reg_n_0_[6] ),
        .I3(\v_cnt_reg_n_0_[7] ),
        .O(hdmi_vs_i_5_n_0));
  FDRE hdmi_vs_reg
       (.C(clk),
        .CE(1'b1),
        .D(hdmi_vs0),
        .Q(hdmi_vs),
        .R(1'b0));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry
       (.CI(1'b0),
        .CO({v_cnt0_carry_n_0,v_cnt0_carry_n_1,v_cnt0_carry_n_2,v_cnt0_carry_n_3}),
        .CYINIT(\v_cnt_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry_n_4,v_cnt0_carry_n_5,v_cnt0_carry_n_6,v_cnt0_carry_n_7}),
        .S({\v_cnt_reg_n_0_[4] ,\v_cnt_reg_n_0_[3] ,\v_cnt_reg_n_0_[2] ,\v_cnt_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry__0
       (.CI(v_cnt0_carry_n_0),
        .CO({v_cnt0_carry__0_n_0,v_cnt0_carry__0_n_1,v_cnt0_carry__0_n_2,v_cnt0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({v_cnt0_carry__0_n_4,v_cnt0_carry__0_n_5,v_cnt0_carry__0_n_6,v_cnt0_carry__0_n_7}),
        .S({\v_cnt_reg_n_0_[8] ,\v_cnt_reg_n_0_[7] ,\v_cnt_reg_n_0_[6] ,\v_cnt_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 v_cnt0_carry__1
       (.CI(v_cnt0_carry__0_n_0),
        .CO({NLW_v_cnt0_carry__1_CO_UNCONNECTED[3:2],v_cnt0_carry__1_n_2,v_cnt0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_v_cnt0_carry__1_O_UNCONNECTED[3],v_cnt0_carry__1_n_5,v_cnt0_carry__1_n_6,v_cnt0_carry__1_n_7}),
        .S({1'b0,\v_cnt_reg_n_0_[11] ,\v_cnt_reg_n_0_[10] ,\v_cnt_reg_n_0_[9] }));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \v_cnt[0]_i_1 
       (.I0(\v_cnt_reg_n_0_[0] ),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[10]_i_1 
       (.I0(v_cnt0_carry__1_n_6),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200020002)) 
    \v_cnt[11]_i_1 
       (.I0(\v_cnt[11]_i_3_n_0 ),
        .I1(\v_cnt[11]_i_4_n_0 ),
        .I2(\v_cnt[11]_i_5_n_0 ),
        .I3(\h_cnt_reg_n_0_[5] ),
        .I4(\h_cnt_reg_n_0_[3] ),
        .I5(\h_cnt_reg_n_0_[4] ),
        .O(v_cnt));
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[11]_i_2 
       (.I0(v_cnt0_carry__1_n_5),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[11]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \v_cnt[11]_i_3 
       (.I0(\h_cnt_reg_n_0_[10] ),
        .I1(\h_cnt_reg_n_0_[1] ),
        .I2(\h_cnt_reg_n_0_[7] ),
        .I3(\h_cnt[11]_i_5_n_0 ),
        .O(\v_cnt[11]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \v_cnt[11]_i_4 
       (.I0(\h_cnt_reg_n_0_[6] ),
        .I1(\h_cnt_reg_n_0_[7] ),
        .O(\v_cnt[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \v_cnt[11]_i_5 
       (.I0(\h_cnt_reg_n_0_[9] ),
        .I1(\h_cnt_reg_n_0_[8] ),
        .O(\v_cnt[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000080000000)) 
    \v_cnt[11]_i_6 
       (.I0(\v_cnt[11]_i_7_n_0 ),
        .I1(\v_cnt_reg_n_0_[5] ),
        .I2(\v_cnt_reg_n_0_[6] ),
        .I3(\v_cnt_reg_n_0_[2] ),
        .I4(\v_cnt_reg_n_0_[10] ),
        .I5(hdmi_vs_i_3_n_0),
        .O(\v_cnt[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \v_cnt[11]_i_7 
       (.I0(\v_cnt_reg_n_0_[4] ),
        .I1(\v_cnt_reg_n_0_[0] ),
        .I2(\v_cnt_reg_n_0_[1] ),
        .I3(\v_cnt_reg_n_0_[3] ),
        .O(\v_cnt[11]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[1]_i_1 
       (.I0(v_cnt0_carry_n_7),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[2]_i_1 
       (.I0(v_cnt0_carry_n_6),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[3]_i_1 
       (.I0(v_cnt0_carry_n_5),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[4]_i_1 
       (.I0(v_cnt0_carry_n_4),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[5]_i_1 
       (.I0(v_cnt0_carry__0_n_7),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[6]_i_1 
       (.I0(v_cnt0_carry__0_n_6),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[7]_i_1 
       (.I0(v_cnt0_carry__0_n_5),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[8]_i_1 
       (.I0(v_cnt0_carry__0_n_4),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \v_cnt[9]_i_1 
       (.I0(v_cnt0_carry__1_n_7),
        .I1(\v_cnt[11]_i_6_n_0 ),
        .O(\v_cnt[9]_i_1_n_0 ));
  FDCE \v_cnt_reg[0] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[0]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[0] ));
  FDCE \v_cnt_reg[10] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[10]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[10] ));
  FDCE \v_cnt_reg[11] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[11]_i_2_n_0 ),
        .Q(\v_cnt_reg_n_0_[11] ));
  FDCE \v_cnt_reg[1] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[1]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[1] ));
  FDCE \v_cnt_reg[2] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[2]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[2] ));
  FDCE \v_cnt_reg[3] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[3]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[3] ));
  FDCE \v_cnt_reg[4] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[4]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[4] ));
  FDCE \v_cnt_reg[5] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[5]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[5] ));
  FDCE \v_cnt_reg[6] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[6]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[6] ));
  FDCE \v_cnt_reg[7] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[7]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[7] ));
  FDCE \v_cnt_reg[8] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[8]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[8] ));
  FDCE \v_cnt_reg[9] 
       (.C(clk),
        .CE(v_cnt),
        .CLR(\h_cnt[11]_i_2_n_0 ),
        .D(\v_cnt[9]_i_1_n_0 ),
        .Q(\v_cnt_reg_n_0_[9] ));
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
