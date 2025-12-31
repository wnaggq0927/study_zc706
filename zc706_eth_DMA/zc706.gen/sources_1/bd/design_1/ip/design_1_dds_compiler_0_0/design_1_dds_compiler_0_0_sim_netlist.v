// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Dec 30 17:52:41 2025
// Host        : wgq running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               f:/study_vivado_ps/zc706_eth_DMA/zc706.gen/sources_1/bd/design_1/ip/design_1_dds_compiler_0_0/design_1_dds_compiler_0_0_sim_netlist.v
// Design      : design_1_dds_compiler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z045ffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_dds_compiler_0_0,dds_compiler_v6_0_21,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dds_compiler_v6_0_21,Vivado 2021.2" *) 
(* NotValidForBitStream *)
module design_1_dds_compiler_0_0
   (aclk,
    m_axis_data_tvalid,
    m_axis_data_tready,
    m_axis_data_tdata);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 aclk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME aclk_intf, ASSOCIATED_BUSIF M_AXIS_PHASE:S_AXIS_CONFIG:M_AXIS_DATA:S_AXIS_PHASE, ASSOCIATED_RESET aresetn, ASSOCIATED_CLKEN aclken, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input aclk;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TVALID" *) (* x_interface_parameter = "XIL_INTERFACENAME M_AXIS_DATA, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} array_type {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chan} size {attribs {resolve_type generated dependency chan_size format long minimum {} maximum {}} value 1} stride {attribs {resolve_type generated dependency chan_stride format long minimum {} maximum {}} value 8} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_cosine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value cosine} enabled {attribs {resolve_type generated dependency cosine_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency cosine_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency cosine_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}} field_sine {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value sine} enabled {attribs {resolve_type generated dependency sine_enabled format bool minimum {} maximum {}} value true} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency sine_width format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type generated dependency sine_offset format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type generated dependency sine_fractwidth format long minimum {} maximum {}} value 7} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}}}}} TDATA_WIDTH 8 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type automatic dependency {} format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} struct {field_chanid {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value chanid} enabled {attribs {resolve_type generated dependency chanid_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency chanid_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}} field_user {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value user} enabled {attribs {resolve_type generated dependency user_enabled format bool minimum {} maximum {}} value false} datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type generated dependency user_width format long minimum {} maximum {}} value 0} bitoffset {attribs {resolve_type generated dependency user_offset format long minimum {} maximum {}} value 0}}}}}} TUSER_WIDTH 0}, INSERT_VIP 0" *) output m_axis_data_tvalid;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TREADY" *) input m_axis_data_tready;
  (* x_interface_info = "xilinx.com:interface:axis:1.0 M_AXIS_DATA TDATA" *) output [7:0]m_axis_data_tdata;

  wire aclk;
  wire [7:0]m_axis_data_tdata;
  wire m_axis_data_tready;
  wire m_axis_data_tvalid;
  wire NLW_U0_debug_axi_resync_in_UNCONNECTED;
  wire NLW_U0_debug_core_nd_UNCONNECTED;
  wire NLW_U0_debug_phase_nd_UNCONNECTED;
  wire NLW_U0_event_phase_in_invalid_UNCONNECTED;
  wire NLW_U0_event_pinc_invalid_UNCONNECTED;
  wire NLW_U0_event_poff_invalid_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_missing_UNCONNECTED;
  wire NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED;
  wire NLW_U0_m_axis_data_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_phase_tvalid_UNCONNECTED;
  wire NLW_U0_s_axis_config_tready_UNCONNECTED;
  wire NLW_U0_s_axis_phase_tready_UNCONNECTED;
  wire [0:0]NLW_U0_debug_axi_chan_in_UNCONNECTED;
  wire [22:0]NLW_U0_debug_axi_pinc_in_UNCONNECTED;
  wire [22:0]NLW_U0_debug_axi_poff_in_UNCONNECTED;
  wire [22:0]NLW_U0_debug_phase_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_data_tuser_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_phase_tuser_UNCONNECTED;

  (* C_ACCUMULATOR_WIDTH = "23" *) 
  (* C_AMPLITUDE = "0" *) 
  (* C_CHANNELS = "1" *) 
  (* C_CHAN_WIDTH = "1" *) 
  (* C_DEBUG_INTERFACE = "0" *) 
  (* C_HAS_ACLKEN = "0" *) 
  (* C_HAS_ARESETN = "0" *) 
  (* C_HAS_M_DATA = "1" *) 
  (* C_HAS_M_PHASE = "0" *) 
  (* C_HAS_PHASEGEN = "1" *) 
  (* C_HAS_PHASE_OUT = "0" *) 
  (* C_HAS_SINCOS = "1" *) 
  (* C_HAS_S_CONFIG = "0" *) 
  (* C_HAS_S_PHASE = "0" *) 
  (* C_HAS_TLAST = "0" *) 
  (* C_HAS_TREADY = "1" *) 
  (* C_LATENCY = "5" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MODE_OF_OPERATION = "0" *) 
  (* C_MODULUS = "9" *) 
  (* C_M_DATA_HAS_TUSER = "0" *) 
  (* C_M_DATA_TDATA_WIDTH = "8" *) 
  (* C_M_DATA_TUSER_WIDTH = "1" *) 
  (* C_M_PHASE_HAS_TUSER = "0" *) 
  (* C_M_PHASE_TDATA_WIDTH = "1" *) 
  (* C_M_PHASE_TUSER_WIDTH = "1" *) 
  (* C_NEGATIVE_COSINE = "0" *) 
  (* C_NEGATIVE_SINE = "0" *) 
  (* C_NOISE_SHAPING = "0" *) 
  (* C_OPTIMISE_GOAL = "0" *) 
  (* C_OUTPUTS_REQUIRED = "0" *) 
  (* C_OUTPUT_FORM = "0" *) 
  (* C_OUTPUT_WIDTH = "8" *) 
  (* C_PHASE_ANGLE_WIDTH = "8" *) 
  (* C_PHASE_INCREMENT = "2" *) 
  (* C_PHASE_INCREMENT_VALUE = "101000111101011100,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_PHASE_OFFSET = "0" *) 
  (* C_PHASE_OFFSET_VALUE = "0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0" *) 
  (* C_POR_MODE = "0" *) 
  (* C_RESYNC = "0" *) 
  (* C_S_CONFIG_SYNC_MODE = "0" *) 
  (* C_S_CONFIG_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_HAS_TUSER = "0" *) 
  (* C_S_PHASE_TDATA_WIDTH = "1" *) 
  (* C_S_PHASE_TUSER_WIDTH = "1" *) 
  (* C_USE_DSP48 = "0" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  design_1_dds_compiler_0_0_dds_compiler_v6_0_21 U0
       (.aclk(aclk),
        .aclken(1'b1),
        .aresetn(1'b1),
        .debug_axi_chan_in(NLW_U0_debug_axi_chan_in_UNCONNECTED[0]),
        .debug_axi_pinc_in(NLW_U0_debug_axi_pinc_in_UNCONNECTED[22:0]),
        .debug_axi_poff_in(NLW_U0_debug_axi_poff_in_UNCONNECTED[22:0]),
        .debug_axi_resync_in(NLW_U0_debug_axi_resync_in_UNCONNECTED),
        .debug_core_nd(NLW_U0_debug_core_nd_UNCONNECTED),
        .debug_phase(NLW_U0_debug_phase_UNCONNECTED[22:0]),
        .debug_phase_nd(NLW_U0_debug_phase_nd_UNCONNECTED),
        .event_phase_in_invalid(NLW_U0_event_phase_in_invalid_UNCONNECTED),
        .event_pinc_invalid(NLW_U0_event_pinc_invalid_UNCONNECTED),
        .event_poff_invalid(NLW_U0_event_poff_invalid_UNCONNECTED),
        .event_s_config_tlast_missing(NLW_U0_event_s_config_tlast_missing_UNCONNECTED),
        .event_s_config_tlast_unexpected(NLW_U0_event_s_config_tlast_unexpected_UNCONNECTED),
        .event_s_phase_chanid_incorrect(NLW_U0_event_s_phase_chanid_incorrect_UNCONNECTED),
        .event_s_phase_tlast_missing(NLW_U0_event_s_phase_tlast_missing_UNCONNECTED),
        .event_s_phase_tlast_unexpected(NLW_U0_event_s_phase_tlast_unexpected_UNCONNECTED),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(NLW_U0_m_axis_data_tlast_UNCONNECTED),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tuser(NLW_U0_m_axis_data_tuser_UNCONNECTED[0]),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_phase_tdata(NLW_U0_m_axis_phase_tdata_UNCONNECTED[0]),
        .m_axis_phase_tlast(NLW_U0_m_axis_phase_tlast_UNCONNECTED),
        .m_axis_phase_tready(1'b0),
        .m_axis_phase_tuser(NLW_U0_m_axis_phase_tuser_UNCONNECTED[0]),
        .m_axis_phase_tvalid(NLW_U0_m_axis_phase_tvalid_UNCONNECTED),
        .s_axis_config_tdata(1'b0),
        .s_axis_config_tlast(1'b0),
        .s_axis_config_tready(NLW_U0_s_axis_config_tready_UNCONNECTED),
        .s_axis_config_tvalid(1'b0),
        .s_axis_phase_tdata(1'b0),
        .s_axis_phase_tlast(1'b0),
        .s_axis_phase_tready(NLW_U0_s_axis_phase_tready_UNCONNECTED),
        .s_axis_phase_tuser(1'b0),
        .s_axis_phase_tvalid(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.2"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C3FJCcOXv/ooHWXTaSsUzuG3LCea1kFLhxiMEs1WHRvlllAUbVeovr7CzPBNjUvjqE0CwBr5JiFE
C98wCkBbnKHiuK1l2Cju06e2FnPQSqFZEpJIDaNx4eFQT1Ntf21Z6FxvgyiC/lwA4L+CeSQ4t/AB
PPa1c5L1IbgGQyC6BPc=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
PR+lz4aMEKM9jrwzh+cxLBb7oOFENpi6VKQVg5Z/auNLefQHlDN37vC6NupkmzIMOQaMv4vwG5ED
ypm8ux97czVF/jpdAnLCui3yHt0tfpn3xaR8pw3L9GLqjc13xG8b2ADdgq5W73HbR5XAixq+jrWz
T6ZmunIwF7WjiPPBo+ApufR0FldATHNyygYVALlmAuzYNw47XQHFauhl7hvjYJMA5vASevWa9fgO
3hXOQ9C/ifBoIzCb9ro18xQmSPsQMQiuBGFPOAWPF04725QKrFBqFd31Pnf0BzSL+Q+NUi+HqP1N
aV1w8YhH42UnpawE+OIBz2tJ0gTuoerzm5z0sg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
p9SKDXb40dnTTd2nvmR4vnYN/ML2bYNHea2usUOM2yTyTFZFzFMjOAuCEaoV3BxLFthJz7U/9u0U
KkHHY5Gbiajc7hxRdFMD9jV3lwJzhgLJ3YNKDuH4+LnTNPiRPOvbiIe1F41R20K91mj8kbc+nVML
6hebVzjaOUp7NyToXK0=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
FgimluZxnvdEwXNzvxOrVzW6WbGn97hS1VfgtcQyrR5x1hRzh5UzLLAiE05ffMyxrm5sudFSqsQl
ycovUBKRSzp8iO9QRHi/b9c2qvT7BwbP2MC7XmpNUBZASI9zbxFvlqbPg3y7FzY8IvGL3RRmfsOh
akAIp1EedMdbi8uJEdip0Ui0Z7xM8RKU7mVbeFVXwkThF6mKbdlhGEE9mjrbJHHXfXOe6CRDTf8g
6Bvuvx1w7n7z6h9ct6+qFvPooLI00LdIS8rcZTO05DOVMx+jfnFBAmRcgZLSJfpcTAbkgOjQ1Usq
vFnsxHK0EdaH0+wQIf/MK3BUAKsv0R3qW5/bjw==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
QnAu/tvx0LgmGaZYyZOz27UGo+0WqoxABx9zk70WodyIaYuhIEUVlt3043lkL23jtD0uvchd2/Ac
VjmGdVWwwebMzniiO6xZhPWxSI7Lk3pvad59I3SSwW8SOxujEXMEcNZxL6vykjhziYAEBIfnjcOt
HvDrINdsZMgk6VyntHh2Yxvb5UPBpsOgFp/XNvSx730KyZoUhEhPUwaPiEWe6Cz0yvOJQ1zzfuqI
zp0UxCp84Y5spIU4Nr7U+gfQKcjVtTJTSG9sQvrUAOWchemR0+X+RGHfnPe8DptbKpeS51osQvxN
JkldgdZJSWeUxc9qwScfwvGEZ82dwe3on8SiwA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GFGvd84O+J1dml9ZOPmc3ZO76c7DMotBGPA3S4MXl8w595G/S/aV23N90H91I71VDP80staPsAD7
6qyBWuIulcHOkyr6QHFtAeL9BiDKEBvKcKY8LkKYc0Jqtgq9oYpqDsQ0V8bBc2C3kv33H3Z7Fn2r
ZwGokq9JZBaSF7o2GG5oNPrDokq3szauslCcju/cA5pVAyUdolPNrNTOhqLUPdIjTt9XFtFviRsO
oghSId+t+3tKN31FYcSjLvAXWQAdCJKZ3s/5Kr2M5km/njceqoXY/nFIFXx6B3W6RLuNMEH5i43S
kTGZWORNUuElamGzToa/NQtTZTU+JgEuzdOYgw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
C+cTCnJcow6trrWkCuGK/j2MpXSbgGSqEZH77Bvr15o/N0MlEzb3EhgIwtR0is4cHe2OFfXgcuh9
cxJpBZ6f346B8x6uuUDbQrZPIcUalCIoMih/AEMoYWsj6k+LZLdozPAspnWe3qdSIEMZh30audRL
9nLm78MkNBjnP/9MTHQcmkBYY12c+8IFip0PAqa/EbdgHLpVGrwbOElGyw8QRKozgds5bgMzdXIH
5qr6PVpCEQNjVqF2UFS6bFbar3hfrzvHVd0ZXCIuwwiNiigd798rUJMiLJO5uFjA3Ma2I0qpxSOw
wXKGHfw0hEjZ98b5GEuu6cBsoSEkWnjmece64w==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
NSTrEXT7eTCefIQjxNa6ganxpjQjVP1sXenVfL93XqcEWQ2ZZCBWi3EPevkgxkI2Jiz/RBNi6lGO
3L8us7xA7HC/dI8Dp+XiZ2qxBDh0CGPH3J+CYSkhK8OeOIc+RZjsbVtrxAZr1bbwvRt17s/d4RYN
dXwCucBL2EWMOkXFqZatHDEY5y4CLM0sIx/U1jiFJ43Y9hmApftEXaiayjzX7WJS41EqhT4qwVXZ
riwhDgibLNTZEBZpQZIXuzzcAUEIxVRXoAJbrwmOVr1gBUN8TlOzNmuvr3WkkSoK+OQEp9OSJK4D
RvkifSbyJx2IQbOcJ06qKz3A3g0OYpmASsoTzHi7J9Kn6+64KZynxncdO25+7nXbNflRa1qH3Uo+
2bZtRJXbBMPdd9n5N5willAtidC4Jken6AsCDOeym3s7ie9xyNzSvH87Wxrej7IA59c5rxK0IYO4
mqnuv/1J/21N0VIqtKopjgOdB6pZj1B7abfaqjMm+g/iXa1QPffrMawC

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
e24Ac2eoCzH4d2MGDNjllrsz302JWX7SHmHY4ZeqELsJGYMPdwmKEbabeI3yvuORUVgvLtlk0dCL
2ksTyI8O69mMICGIwp6B/1FoqxHpr8UH8nRiFk2Ljy7ZwrtKbSNgbf9yGCY8ly/53F4WV5PRjv8I
zmU3oN+s0krwTrhWYXE81mI5k96nJHt15YTTIYDgDU7ysC+gLLHYgkkKlqeavAZWInINVY5pNruw
mIllybKlTMyeuO5hnECXVAq3TCgO8xBlsIEZd7GQASsc6GIlFuQqAW/vknNbsU1n02oklkdvqp3+
2Vym+T4DrCmmDbzEhHEANWvGEa2cG0C9fW3sjg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
oGEsxCsvaAZTAlekJmJ2zsiFi3Xb/16dbIjuOwU03B0BTYbxKUmzFcy2OXldh8Qt3h/2nJse3syz
ttMA7yG9PLvWCzTYhW54sGkZmsvYcRMwUN5sBam6/9aVviu74cZYYJIBwO7tiR6duXxP879KJLME
r9enTJQ21NoEXEUKTr/07kA0pnraVZrpBDftmuI8KUULNh3JpHwG72bA7LyOhpeM0z88VxZmcKx/
aTlwJkB9qcowl7ljrlVvZjZpYwatPh0iPGkstjOH6fYK3jXGtBLWI4yImZB7NJWAx2SmQV0yPvf2
+HY8DxOS2rVA8+nKwSFnN9wWknQ1A0WF6tjoIA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
gDc3LT23JhAO9Zw2mASOBGagR9g4GCf+KmvjiALKi6P3hEI1Z22Qf3xa3DXGHiDVwqf6AJ7CiGVJ
8g//N/+GpVBzYnhXaw0UwilJG0xpfWPmc1n74FCs6yB24NxFN4/rgRjiBWtPxaG/li4YHtGa6m/h
Jmen8Xl4gGt82Ezt9ac5TMFXQuX4Bh3CtMYltYGlsMx+F12yb4svKWuLl5TzylhVJqIh3D1ELDHp
P50f6bwEXzJERqWheWlx0kfeoIbtpEVKRQzKSP1HFR9y/qijb1eJfR0po6M076u/1pFmPoE3SxeA
TpSC2K1L07K81osz2IB022fG5iEZabFqGisHmA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 59280)
`pragma protect data_block
NNI65dp7S1lFAWgH8OPnOhyyekd8bMdgAfOjisL8jEzatankyXQ+QII23Pi+Z+X5CCDWlbxZYO1e
z+QECtk56ukYpK8ZQtRDHjoqO/KzYYWfsO3Pa04zHIfPnuIuTXtqHJ0WP1RUyMUvmMLpCS+2ZAkq
2UbiqjIt0GPcxKW6tjTsLMLry2mm3UNicA4g6DQ0TZS8q9DlS/TtyKra2MSbRXBlAjrNRqG8wLCQ
XXx9tyUPP8qQc+pz756X43d5bqw7oS4+gR8qX3o692Cm8kP6LzS8QUfbszx1DFRP5VaM+Lb6+GmJ
0qmaVVmOOt6LFUBdZgd+wspNLmeg+0Vwy5UIyOdBGP0g+iN69miEpaGLhZnOL2eycPX7CzRWvG4U
9QxO1E7fda+e9BeAjENusPGjgz4ATsBaKuBkHLmcApQ/tF9Qo3Q2VmFC0YMoJNNuzJbzEC2hfXhe
zh0BTybrVwJJxs8566sdCPljOJ52KFkorzH7ja1WYn/ZNFL4Uo9HgaCbQGeBzha0PU1GkFMHcgYb
/mRxytwgJXvlMs46eX+r1NPWWSDjmT+FouFNLeAGIsvw8lb83LufFhvu5+Yn/OP4Uu3LWA2OrrJj
8WK5N3W3/35Cg3O01cGIR1Sbb+OQlDkYJZcTvIZGUyjnpy4O94H8YUQK8r9/nE84pYx4cp1P5NGH
Rp3+gW63KhiAR31qA0JwEiQf/mU3K+GPWSRXX2KxCJmm1cIMzA57CzICPX025LiLw/048Y76qrpi
Ig9e6YD6G4eRaTAkGp4gvYLH425vaNZO28c/tS+O2uFaKIyUj1lJuNdRlNhbrr7sYGQNWHGZ8ro2
TMOyCK9ZB1nrb6GChtYgVAoR9SJASPj5Pq/9nlz05S4O1aSQzbTgjEFQ7Ell6cDCPBw49d5Gvlz0
PH9u/rz2WYCzpg4ZTZ+q1BshsFyfDeii+ipetch2JdcAgdNhM1IDDCmqXkEPOIPswR0AXyUDzwSz
AnCm8pdhEsOb1zBaAGsHsPtp1CHJ0FnbOKd/tq9/y0N/OYVqDBTbj0ZQPP+Chipw3EqX03dOgR4h
Oywi9LRmi3l2T6Ov9gsKzO9gmUjURHetfuHWyvu8rDZVWbz+Y/GqspNZ0EnWTA3ZFmo+itnWB2qW
R7S7/R6qKAv2yWJYK/yG+4wa4FqDa978QyCe0cU2XHMlGNjyO88pHczBBcibdhwQ9cyrxEOyQnaU
N2c52a8touQka67966PR/z89jebME3e7fK28eNQsZnrf2vX4ZyNbCup7nAIcU+o2YWPChubTz4hH
Bw1gXrwoH2S+G5i2qn5lIc6aIHG2wcdLRUY9pCkHr8XfpyjgLHzxkmvMlXMNWGMESVRF/jpaHVNU
gt3Ynpcu/8sZDnGo+FNTdnBmZAcwcYEQHF6Cr4LHW6yePNSehLr2lEMrlQrrhj3UDa3z1n6pvdAj
gUj/+GI4EV8qdsYwxlFoUxlzWV0byBg8/QwQicM6d3YxLZPrEpe4mq0w4aaRNVBQYOeVvHyXmnYw
bSLwz6uniIEzuzxb06YT7HlcAqtViLjlV+fVsKhmQmO5q2y9+l6hKyN2/Uv7KaVuumQ/2BTkSOM0
i+mFg2QKg9an3n9S+xLE/7v3ESlGfTtAEyX1Ku/VcZKKWXWWv9yzWOFfWoeLLslXf1eA+pqqyLy7
PjfT//w3iVlaFvCSCs58i+gxAxmSPrG6HPWgp/6yKrY58ZP18OC2HxJA2HgbyumBAcNsMwBfn9HX
E7fx50YhYm1bcZN6LIQu1XwIZYqYNsUi54kXRw38AtiAYwAdaPfdkEEnAkyhqq0ayjy7O20saqqW
WpBCkzQKijgY3o81iq6KNwu3ZuI6fB0UBHUMU5Sx9eB5edn/c4li2vy9rU2+lT/ffdiKy9oWnWtk
DLPUNM5+4yBlBPxYkxwOBRv9915IXKBgd/wD7AyExVRwiLT8FemJq4IZkIWBwMlNzcLA/HK5o+ts
dMUKQRpmmWCb2U3xWlFfYxy2u7IqWlNojAeuvJ0em4Bg/HDHoHt6V7nyy+Ts+tfMyeKmOdi/hfvf
ikzMXKuOJVwJi130knCUQibURMcZiKxtJEqdpm3UNFLiXJsucmJ4IHIeD7iNpxzCD+xnOHBkaQVn
f3+ivKdP1Kzu4GjuqvXkWb1sDkuM8dNZ+VKOJBk2gPPB0B6IiTiH2n6Ev3i/QQo9jhfUbn27on/K
NVMrnUl/5vFEH46rgLCrDK51aiKbTDRfK9rKtR0bACk157GpNoC7a6HwH+pqxH4QdjE6B6ybkYfN
Bgh5jCOgB/cFYRS4A4qOLWt3mb+2i+QVxkJXs9zsrk5J6MgxpMGf1arLc5V6QhUn9CkGtmrnOmH2
JJS3VTN7CUneqZTnj5034nwOB8CnEoBE6TgA16ufaWvKKoPXaOD00+z4ex/kicHiw6H7WMFQmHWA
WTAfXKXQjtAsKSAgsiIbT0iFIqIfDdFTCqHfjeSOl+op43eJsU77SjjDMOSHg3ODSWlUUhUwDeai
uNzKpArd6MHidbhPZ3skRLtsjWPjQrJ/3w2Rx6XgUDAaLKSXrhT7DO27WCHj8Pzks8G7aobclfgG
SpRv3QC24/vKd4cEwaJ4crm648SdpBiAVx1nO5a7hZvJXYOKGoGwLXKQLgQjza8wEVuD5x0he67a
7rkQu5gY1BNJUxeHIfZv1v1iaLMi+VYXNjlmnmJ7lu5ujiSFBX+yfYYLU58sbKqnjXUMAggfgq2V
LJqL8gjcyMg7TVkMPphckz84JL6aCjAQqLAqiFwtLqIbOUhiw2aork0ESo2pzXhhF2ZQGGK+n8aQ
8REV/2URt2eCNZOoSUseBwF5mQ5yIalG0mjPPH3EmzkuGnZ+N3p91xKUKIWphGsRI821XbA1yNhF
b45y77lmxZKcZhsZ/Baz4uOWw2cwGJOpUuwd6zFrCkwmz68D0paQ3cIminsW4jAMV14gLFYvXOyF
l3IzHvvDSOpCk/eDIJUJE1TtV/Vwk+z1WAeJBp0FaTjKtKJ/fpgAvUAzfa1e5uysIYV9gjz2pTjz
0CCD1fOUf6gg36DEt6lp/+zDc2kPuzjsL16xBHcH5RtVLBTaC8TX+6jdHYtXZDXww438LbhM25on
LgUBXWMLAmADr4cR11bdrrekln/BTw66VeCKnm5SOBVUIb1f+nNtkBrrqz+22tWuHLesChzDNiMg
ZFEKvpXeWgeTbZy04IPzvRg54Cu/jxqqFcT5b0H1Jx/0ugEW/Smu63zEqPD4EdU/04EVL5JDFtlU
4GYxMtucZ7GcDfpupVixi5qZW4G4vb6WfdaiC38sJDdnHA9KxVrze25TGjJ21a8ed7gcEc5DlUb0
Otp22cenCu1YMRJY/YfMj36s+5GfUKOYzZzU+QeDJKW2Svl+uoGYQGFmG4kS5ipVwKoG9MFV51l1
LfB3V9WWn02P+UitaBqnFaPvzKlxx1Ivnv1rjz3yY81/erqX55CuGT8N49vvaDvs9MEGi5xXqJWR
ZuAfkkE6vUzKpLjWnHCWtO7Mke4q8KeSSGXD0sthHAhc5JrNIC21xoDIRgDoQysKUneDopm9qa4L
lHWPwzsfNwlwvvu/CtD6yHFbevk6htwd6uhjp6siLjyHdOiEcZgz9PuMxnn4LObhPOoZBWT11Rbu
69v96SN+ugK6D2jn6Je/y/HgXADeMMoD6ir6tLQoHb2DXLvhdCWO9sJ0DOXD3ONqSKtJLrtFrg4k
880IgxvRzm/e4QO8rBfVuEj/M+hJRV/YvfWRH5YComvX61E5oYsT+JksPOuAh0027CflTtFVc+uw
omLZjOAqkp0GtLmSaGhSdDRNndCSSw7SiEstv1OYVTeEmSz107y0nlTB60rJ/yobDlfKL69za8h2
81X/fIsigPpH94NndnVy4qPYIN+ctM9xHPicetGdWYiNT9JonOiW3wAYVFXzgXRYl9lvoSbnuf9H
suT1MHGhT5X3QOgSDVDCsqAr8x8OHXpAk09vgdM162q+n2Gva1U43UqgisBCEZ5N6WZoTYqMO99n
eNxhpYdqW1TlB3zolOIWHEUIB/3UxE/rOhqW3LqIe3DBrQtfKfNzplBeyCXtiifn9SG2y8z1/UwJ
WJheVhR0NeZzADT4l7x6v9zSHytMJksk+1ZIqmoDv9w2/xPC0QzH3+F+Zx4QTwWRoZjgQoIS/Wc6
RmYsau/2vUjuxhiD511A/AiJxo1LZb1jpzUcrhs+9dvFrd5WSUBZKIPOo/tSHUdveiBLKeAQsX0n
3tM2lLfIREuX4KATKs+q/jbBSYNhQ9XjsARXbgsJv9P0R0YHETDLLB8jTboiK2IRg9gMYmM4Uf5D
K6PfLG8WRsu/lLfgTSc41kxckuIAzKtCNBsDs1BxGeRqbD8hZR/b5vIdFquPf3uQ9t62uxbt8eZm
WC/6BnqiqdVixrQVYfq0J2e+SVIlWl0+dNPYdjDzZA/RE2PoYdT3ZdUwWUOQWR3Q/TJ3YfipB8qe
lXaCefdywADuoKHbBc4havmpBd/1E3M0NIqwKJ5mCZm4YK5d1o8acF13EdWw6WEdKfFXo5vfSkbV
dumD2FW+W/wy/pDCH1JoCPFL+7eu0+MaY/4mFhOHytwdiGzvbR4AkWshWhFFYuE+iIUByuS9Uavt
2FtyIy37kxxuyVUSGJjrCfCsTIApNDSnUFmqTK9pbvmBPKEUIbyU79Afoj+qy7TtxdAZL6SbmhZ4
lEMELdcKzmjW2JjRWQxmi3qzKTq4HMyrf2eS6zaALx4qfyVDzpQgCiKb4PsITUfwD8wCropeDAUc
dKFD/QwJ51dahG7B2kB8bgu60dn3uFiL/p3W1yLt+s/AJuMU3qfhw8qT0l8bIcnKK7qUz9uKsFPD
IvvDViRMIXdBUTXbXHLqtK8uCVAvTWTYuWY2WNlc6xTGRAwqQ9jYXShYNUn1A9US1BFwW3Ygjfh+
8PhVst1KZWPn/lacYwjWHS7fCt+lve/E4fzeZAI2xv05nvjv9IA73CLbYpqwNYxjxm6RThLqu3o4
QuM8i+SPKISyaMpA5wsGbhGweSWHKXaGZ+3i6S5cUqMMglAUFR7HtzADtmOY4Hp/5Z0s7qXIvFWt
Jcr5lI/brFpp8RztT/ugX68pDNtGFxGH/WUq4h6sC8CPMTRzMmHL1JWpo8ejNti/hcCdtSn4yj5F
tRT8+FS8lD38CbzCC6NCpm3CGCpPjA8wk5i9JEU/qSwsdiQ2/YfhtWd6Icr0QzpxnSKCx5Yu0lku
riyMxd3/D7Ss4R6kn5vkP6W3OheOoQsQWn7IsCVVSVapShT1gpkcOZJykND8h+TFd6nyrQquscm2
JvbOV+zCgGuCFsFC8j7VaRlYXaBUpKP9TYBgEdr+FxUn+ku51SJFNwMhYypuyrTzXaF2Z2rpAjgt
ZiPKcTb+iVYB1GzwV/GX25AsDu6uinStC+i8hIePLZ7h8UDbX5UTIKVefAQwe4+OCkRTW7RuTWx9
w6vq9ZQRNLtVOhQVs+N069Kb/wP0Rwnv73mV6VXwrobzbCYeZfEoUtBpDCwanR1DsWWBgGCl2OUG
B3ApxblTgdF72tIQiBNDCRgO6oY4gnnkkpsCfDbsrOFoOfpxrr6kEFflEPpJnj5t0BOQsb4z4cAP
yQ6eny8+2/HEZYul/ubiNR3E8yTS61fyTul9IJj9+dL/nB5sAPNhe+wyqtXv6+bejcxw7LGqqlEx
ceMlh8zSfo5Yj19f17LEhcce+oe0zv8BaKjuWJfZNpmh93I11s1nTUzeBJljLQOB7Wco17SbMAWf
DY8osVYHcpVJYh/zHO8ICsIyDi9XmV/3CBzR/AgU15F/Uw60TK9fSiVu1scIaTuDF9NDyiaYb5VB
IFhbXAeHJsr0kQQvrfksiDmc1Pl//4Pzn69KdkyZoLXejbCtQOpI5Za6MSXjPPb6QEBNYKMnG7/k
fyM09TaCxkkXf8yQ8liBSDKr5Rv26QvP9N/HuushKEjwsNz/INyVLmbojrL84hh0dS60WjVyEqB0
EaaMWRpN7iidqOye+Ucgn9kGqaRcTqUobdSkq9Z4NlLMGLOdfE8pvA+E3U4jMjWMfUNddEH6QReL
Z6gMYCmquzRxLpcEH4TrlCiwoZMQoQ3GJ27/VEl4uqT1NVp/QiLNpgyzGg5Uj9Ix1LksfeGty/XH
XaLzJJWLUkXokf3Dg9wU8SBQvuNknCOqjx2YwG8dhhxrXJL9kJguQF3MBsokGqwWLbtx+8Cc/cDr
6rN9dAu+wafzoXfwb86DMDPGP9g4j7pixhlUwgcPvVGsSYjQVNhE5ARXOrNCYLz5M0MXWSfumlAE
90zyUS3eqNBiWWlp9L7FnM5cPwgy6tycU5BjH8AqZRM98Hb83hWCv4UN3Wkml4j/2/y5PWdBi+ZU
aGTHnFsZXhrXx6Oiii89bHnVW+XJeapRhRKgmDqVsDuNrzolPYmFXwrviU7QfXq3kDmexFgoSA4k
OPle9l3TaHr18Y55K0ZfyH/Vuh499mpegHS5VbCCq5J9qAYNG22hTgNDdUA0i6ChKYgrIT5vxPyI
IkLgBbrqqCDSzpTIfSMv0QVrAdU5PtczR9EjNFPIdht3JuDcn4NPDzI8xPxPPKxcp4N6esed1HwH
1I1TFYfcSC7tNMrvG8hDZF5z1gmrU6IqvHFE7LxrwShoOluSirgmtzKPxaahMf8X8NduwQl3L42i
RjR2pJnd9aexAnMTeVah6qPFAGXzOF7js6Ls0ZQR7b8/IAC+4oRtfGu/JMIXtDsc4v0W8HIQtWvB
EpPutRYkjyu3OhdxRanJ+ba6UibhIO+ObtsiumN21AYlG6MGuQYP9URICqYfbaaS7jzr8goAXjkI
e+Gd6aLcm9amKvKrF8aKRNuG/KW5qPT1q5S0IAvivQQ2cDlmgGCZfv7rtTQu6ePbq5Wf+N+4qSZ2
DHerlu0FeFjaeZijwG0WXRByFmXSwLsDygn5DIrAQzQVNEDTiDVASl/pqmByHZ6sndlUwhc6kHkM
tqrZd24830A6BIcyk1Ee4ifr1RKisXlm5VHEKub4IdPeXK7SQ2B8ZUBAOpqPLTmu6J3bcT3g+4Cg
CLYTqt44dulYpa7Zziqm9GMvigTimiPhBRt5Ms8wHsF22AP6asClSOBbr3iq8iGKKFav2emQ8ipX
P03rQb92XospuvFtWEoF8FMAvXXHBg86Zg97xWcG/EyI7t3ceb5T5WST4bbNsMlY0bmmChClVRYn
HLhVMpoprcbDnkpZyOPAdYruXCD5lzcO8QpY3+OySqgA/vNTqdQ3APSiDssw6hKJuK0JhqTv6zi8
vkCZWEGY053CaGOdanq9T7AGmf0W6CaQZ8snycbmqljSle10TWw3SSfQOqNqZQZ4TBlRZV7656ur
bv5yYh4A1znAKzHp8c0wOu8nJAvPPUYplK1VTlJYKUEga2CU37/zdYuBuhQjF6YJrnvWSjE7vxyT
HoIYU3aLk/2lJWo4k/GL3JR8QZZX+ATndHhZT5I4MV46TLQtKGgLg7wuMVZfK9YhQzSDM7kMdThB
SQCsVmB8jPYdttBqqI/9135v1OOnNZi4sukxk0aBh4cFpmreoprJqtgNndNQKtz+VnjSdKgN3/0n
qPQ2C+Ch0CuFEKb9aQpZI4kNXDAVf2kw0ruIOkc231iD0x8qK7M7WUe3dM6dxxW9qQiJL/VCCGM0
XsTweqcgfx7Lctk4d9+RdY/nkURAyWZcpDcZ2ywHxnOXKwupK68D1FdlUypTQ6y6ZX6EtPUh7QaH
xRR1eSm+NbjOj8N5nJObR1dB82ISzVovvh5GMl3QlLRRvklC/yMtx1w9u7YDkPHDrUqzjmzIi8Q3
ydrHgiFLX6QfiIBpmLiLh9F1rEd/gYiNFCoZxNqdf6D6FEnqhknEMk+s2HfmVSdLy+ZRVOKmdG+b
/7zkq8rX4Xr3pBhh75lFtFSsGAYYwHkx8H39BAuWLt2Sa6+JiQiWEem/m/voSt51qpITsvPkCTbM
23Gc47GLdKI7w9LsHGMbu5oKn8zDcbG3qRHsO9f1MtNuY0xXJP99JeIYIpXb8GpjJhFecQvZVwVd
4ILQYeyO9DpzdRZZ3wIPMJBE8pYlA9Ho068plQMwc2KZJJdvglSuz/RTpEm3RqKaab3uGm1cUlYu
SOaZSk5kNzj6nzoXP6iDcr/SZZ+4DS2944bmNkp2RoodpsZdwOFjg0u/yKiy9qXDa7WyyxVNyvoh
j2nGOXWKeRxVUwyaFS0gFw0rmpRLZWG9QeNlhss8VUgcNm5pcfVmLmdVY1uNPOVTO7faFj3KSmKk
cQioQ+EXoH+ztF+I0zAZO71nSMGTNANzAQcZInUDj6UJChWsOOmJyVFVSBefYHwdElYOVqXOUuKE
Na8lvkEa5Sn6U59Oo0OVCpBKgnY1Lhb9bkchDaG1LaDvArm2A/ZOJgLDOaZ/PD466cgiLp/a5qvA
6SxfcOq9wZPOM/IlGMw7gw/NNmJL8g9JO6pfUDTkjfs9f/VQx2D5AGVaXw968N3An8Rj+5ufC7xp
g4GTgkSgkSWL4RZhsj1uNUqUIq0FbVh5wsaPte2vP/odOKGuDLdP58aYPz1QyHUabOp4jsKZeQwR
jg5kChn/BC5M4ahqVe+7PGVrIYP6QmGiYJGABBZb9Oeu9LDgmt5YiXvO5lYSuunv3NPwO8bAYVl9
WTB9MPJB0o6uU3mU7TyFU/Zyn4yafMWAmUUFKI8xKPnG0u93xzW7D2TjCUnPesPm5Ek7dQsae0st
3PgUesZxC8EFf41cV0lqFhfoNtHpt2fOpaFerPtz0BBfEbJffnFq1qQpX64m+3n9LrAMkErLyFJa
H1q3r/APcYP3jD2T4Y/yDlDZX6AYBfDpkggdIM5sc7jRWSnXTApqlbGlczvmPN9eRHv+r/idUhXa
mD5ohL7qD2GWxCyE6x3J4TIRO/EP/3rNGsTbSAb9BIzVIk7xyQTx2g/u23mV/uoUYRQe+bst2U1Y
tiHD9ASwNUi/xGkKS8ug8cP0Suwi2XyL5b4Ca1SQzRxyzgqtibdBnW1l1tc40mQER6/uHEV0t+RE
trYr8ST02G8opEGBNRFpH+8qge4SkdA5nbervAO61yxUlFMfHNqrIDfxCi3mKmgewi3xj1wMWktl
OzlojmoYNGI1xQHsAXcjXSR9A61THKbXFws8TYug3NhVnePL/ia4STlHFW4KKKOhjxgeBSPb4AFg
gifyW0ZB/gZlI2sPhphAv+p9aHb2+F8CDx/Lw6Hc/czJ1u5ZNMBe51ZQVofxXDpKspnmQdBL5bxy
GRJAqhkZdFtixzDtR/ABNhQAHniKOykJeo9OjAV/x47IIoDd4jS/rWzYnmPSisb1M86NHj6KSgKs
u1A0quJeSGtvIbPDCLD53y7qD/Ua91/tIz5gohDzGyq+SaRIlMYhAPO0IUrwlacfE5XZRdfts/AS
GqCu4lyahq5qzTM0Tow36Pwa8v6cperKXxevRcUDvbJYVVb+AWcM3ZCc0y3egrOyvTWe9Ud9sY3G
aABl1Q3AYMVBSFOIXZvWHrXsZdTa23Sagt4WIm7w10JT6OYK/ldImqsb/Y/N2rQ1cYs4GSbOr7Fb
9FThfVnx249xWNatTP8lSGazBfgdCch+xxUaPi2H1wGZoTG0GsczkoBfo66b2SVuJgtget1vZXRj
VONmW+G7t/Wo5DIbUc99Nq6hpEohWUXRYe7abZx3+Ca8fQuuhLunR5o0/dqZw9KFk3bB2628NFmL
2DTHAeVTlgHtJdzU9sSuBCk9/cw74bkMn6Aq2S2rhVVzPJ5LQ2NffcHpH6Mb85SFk3q8H5YcJjoa
+cBQo3PhWUddhru5G3zqIPx6hVxn6IuQUVCbzxr4klIiwScsMDZ1G1qGywBYLjJshZ0TGJ5G/gan
lXn5A+lwFWIu+PhyDMl1gQ1CTRlcnHDFtiQjGh0fiuGaXVip0IpkKX+vMsuXN7UJ8/2VUSmki8BR
hoBaATbfJdL+Qfe4ReFwru+JNifR2F50zf/k0NkCi5mEOar6E7YpSCjQtCIDGBelWuFVUWLzW2ww
IJgJ8Kcax9oFX7uu7uEnOApc0YKASBNmM3pBkJaMcqLBODu+iVEqHZ4wS4S2e8EuuDYf05q15Wxr
lw7d0h6CFtwbYLIDLgZLWF36snrDSYr6FQLLL2RsaUkVUPldJ+CJgJSDlls2Htj6KWrh00ZKngL3
KkaVgWI9MNq1vnuPuKrstDeYToHWOmTN7lhHt61RZnxYGw1W2WG6tO/xg8V/lITc77aj3+VajqjW
DRgZgqkmyLmiAUhLnArIQfXWenEKnLaPWPPl/e00hcvoinue2u+ssUvdOW+YJsA6agi3Cuo7lePr
KA99drtzcmnjJ96s0vnqBeGtqi2lVa5dt1rP8I9vzlbZ0F7Ke/0sZ3CHSrI04RCgTfN4/5PD3aiU
BSEzaEQI5Avb9FAHU976+4HemyuAefZgnm9I7TBcf59dALkKq01hVc3bG13OzQu33cT5BB6WAsDy
Or9aUZ276kzNeSUSP+sYmhfdui4seNMrprDbhGdSO4Lx2kHt20CU3ot6czmjHj5lR6t2d5fHqbAG
KXYWqTnSMQ2q/kJX0ikel9Slf47a3KQ0529NhaS3Bezvsi5QZDiwL8B7pFT4IymoU9Ghu5PoEGvH
KB/Htzw01mGE1dUJSvfU/4EhO1ZYcZJBQ3RKD3YTk5GCcz1oTiFVheQSTxnue2ngTC3zxgNvbxLY
rnTyFtWgydpH6FtZSsgpnI3d7obNg1YjatIFrF45ooVI7aXQ8G/GSHA7ehYWT0xp0GxQOLFcrXnV
mxskO6ddqcGShNNSjO9zJy3lUy0FoH9sxWF8cmIFi7ukaEL/XPaOCZajtpmJmxKMAoSNBj/tAJUI
v3+Xvcupw3U62PDsRu3VWPbBo/HTJZS6ir8yRJsZbApsGew5WyfOufCwrsLf6reBeRJ0YBpHbvf9
v5yvMouiTpJQisXGzsrvWegOGRV+FksdjuPSgZCAQHVl2P9/R9dC1Qxf00E9EzsLfhW/FrCld2Am
jACrfAwbDvhO0j+rXTio4Zxhy63FtLlqyxrAq5ZmOcq2CMiAsiIlhddnSDdyMhYI2PC74upWAwrn
QJXuxRovv4qhkrBAkSmMiMlUPE3RLaiPfGQICjC5f6U8Q67xpLOIpmCX/Xa57AeVLXpBEXYwivI1
yJfiurd6cMGT7CAogv8drw0LlOShX+OylKnp5roM5fp1KVenRvGyvQhLY1Bs/JBYH1h2SfR724E6
vIXaB+mY9At+pARTmbSTYksx0sU8OjI0gisbe6wudct3ldnpowNcQ/CKNmoghIdGEGGqrFdEw0m5
Qa1V5AczRzgsnegKlr+KU2smeg6IgxZD4+nvXZRzZmKXdwIF1MlcA7seex+KlY2HPEBrOUUhwkNs
WWgRE32MMj784byDy0ZKD3/Yca9Pr86Y2xnh+HhyJj4uUF9wapM6eVZ9CFpUGPU1mSTOeJ7Tvwv+
OJ9UfkL8BsXjWrEuKsEjy7cvm+uSr72D1+KQoKkgppWj/RETH1HosaON6l4T9LPgYZscE2pzIWFU
0ZMq1Uyf8Z51bniEVvIY/z44SSIKWVA8NBo/hd1E0V1d9OLXMhWYRepUI86FXiVrKIPKd3l3Co34
Uy4ZYzujoVP3EsE8nU8RsPW5Q3/SIojAufk1X0eDmhsL2tcFB6njvVxp5qGwPaf5YRAtD+B5cNK+
FuNaMcnL+3RlnxijFtRu+iTApoNiAVhP13/R33JOvHaM8N9J6T9sJ+B1W4dhZHHY6gNC/X0T0RSg
DhP54YQC1uFjTEzuThsbVSKpI7wujlEqKz74r182CPdwinE//WpF3DNqLMkZcaDhHlMOIqk+smW/
ueQcyQN+6ZtKNVqm5xtsqYIrsWauq7SQMQyxk+XLZgZD0xv+YSxhQMCOJ0fehDf59+lwFG5fI8t0
+GPFV4OCQJ5100ig8tV4BzDjRzz/9oNn4KvOuZFuMwtKydCb0/HU979cWzT07Kt/rLnp30CLLVI2
puGo3WoCgemSmvjXeagVNBh6rW3VsFS/i85oV20Qq8NjYpGnUWKJIZ88EPwt1NVb5csSrj6b6lHA
toQSF/Z59VTf2WFhu6iI1Qwj0FtuBT+Hfqgw1FrSJlKhjok/ere3X9OWzu03BJd9KLlrHFsS6r5b
TYzd5yPegHqOw6pqVtVMlXnTRVnj5MV3stMxDzyKzmtcMdV5jHk/Uiak2YYiktOz892eUn8t3Nv0
MmYLC/kpT/jY2GbV7MlKTN0CpbeKDn9mBmLMP3KzFDeuTjFk3QSamEKRF9hYNC1ponHCY16F5B8g
XB/b3kxl8YKatKWnBemRgf+ROBgczEpfsHWszXUQHgDK8Leea33lfaoySt5gvFh5CCTj5iWfbQQO
uLrmfXCAwlk2iEgJgEC+x5/C9b3kIko7QAILNRsZzTtqVwWFuETqL5pkmGhDWG8Nz2hC3iOjwiHH
snF3jUzA9FjvEyCz8ldmar74/xo+lzV+mawZb+UHxdQQtDQS2H9qch8Ib2YwpGH3JPc9kxRHUIdj
D7PjAeIvdzQGoR14ZR2l3ZbL7olrmnp4b1yn0dJs1E+LXbZe0RiSPvKBgky78NgqhGHcju2Tc3Qb
SOwOWSVKysi2L+x+KsTTu7272h2cpez+UmxsWJ1ey5WmpmVXbGhiPCLtSp7AHbaeFS0oo474Ag99
At/7chD7pEgmnkbuyh04vQZJF+nbAUeB9HfE9t/X4qtQxkq4duf2+6GH4CQn1z9dqvCXUXHV9u7Z
gU/mFx8A5t4AqBR9E+mRAQNOmlZ3q4kEmOvI+uZNpPOQXxExoM3+8+55r+rhhCB9lNPM0wyKlTnW
mWfENDx6DnMxdlPNo/WegZTrJPsXUYNBu/UTP1A83e/Z7EDfdBHxxpbAs6PDWx9NUO6PlFhmYySl
TejVRzU/QEbX9SjljDt24RaDwTZZdB3gzj0lz1Qs/0Ubthiv67orymjuFLWXGobcPENY8kSH7KrN
syXuPvRAwoCEE+qNTCCyzNOeLk0lIXjnccHRw8230fAx0QrxZwXeZzpXBv4r0ZQpQiqwN9Zcamuu
Y4GTOaw7t4L2aaMTGoXePBTdHC7jPl64BcW/RQ6UXQRhQp6fGcAW6MeoNgyGd+uxuiE+XNPoCetc
sUFjwJxiUtk5x/7P5ReO6RjEIAOJdYdJ8VMZwJkU5BzWI4xdZtFQ75Ty00FVKd9b/icJkK8gXT+d
fLrmYMXlcizN/sd9pa0O/LGCV+QBnI4xg5c/lzGw3hd/Nor5PRbLykIzrbE3UC6drc3dNYJR/d79
0rNa9zBUYIrGGfIEKYiBtBkBEjIGFOm5KqWAXr+ux7suRGU5feqS+/bLqnF9qYuJPqKgT0C9U0E4
D4NTDXIrimECzrVb3VXQaG22OPJ6rr/me1yYhlV3g/Vb7n3wL72SYrQboVdnotRPBO/KnJwIsqmI
1MICo7ULixd8zyOOGM2NNNepgdQ02u0hdO45L+pv3HucOXLuufR1BbAsli1Q2e0YXUlRiPEsx7LX
t3b84z8Twz2BpBV2VmjNADplp4Ez37li2td2hnZTyx3k/h7lRnswC/EmfLAMcjULu53BfW+b3P+U
iV8Jvs/E8G1n6FMH26MpV8rhoNcE0LAw2mzqRBy9P9cCaPozP9+vjxIKGwULyDW4LEUD0VrNzjPF
NyGOJsGTNKeNKaQ6Oqx8TXgcS0DtUT2NJXqzSL7DjAXmHOz1hBaOFrgewfSQ4TApxfa+fM/s6OeO
Hab1XDh6jPR3Pb0zyQuwry3D3Gh3H8pWcPlnu/Vek760VCF7k8zPkX0+QqmWySZvo2YXMtWsfxho
yVoTX8w9NtlC/sFSg1SWmhplB9I8Q9PzijizFqK/lWejtMKaPs4QkHF4rXOy1jQ3or43IbDaIQu1
suEgSaArfoxqx1jKZ3s8yDvIRBbmDpYDia0BfagmAODlo0C89uVdYmRbUuMzYI7zRNYokx7RAzWL
3AhSHUz5GJLspw3TJfUlaJtOaVpVvAZh54NfW98C9FGNdytQnvHumyVi3i5uFKwntTMnAPluR/Dg
dlByottqRWQJLwdM9Sut9x5GaeUqY8rVlKriSH4N5OvR2Zuk7F75IPdhwYMhzdaUNJKlfKnyD3Vv
0FcQvioAAJZSNhWhR5rqAdSpzVWaWWlDqFxR0FZ0rYP6+wqtVY7J1Z+m61AtlEVAkfQSDecK/HYm
ARzapGkc1SzmxEPHRvOfJ4VZzBRYTq57JXl0VOJoOHFuCZAXfU0k9PRBy+3WfmfpautT7mA6Ggve
4YjfbUNo+IPlY5QWxHAI8HY0/i2zFgxpdauDymlP2sv4t50wAOfD4WEx9d8sq8CNcUW5J+H/lM4i
kfsC+9jyD+zG3Pn0UuY1Q7mGcVZ/6Av9x0STd7PIiLzxSgSQc+ynGgqcVV3ObJ0v0mYSBagi3jTt
HlniVS+L/tow/eyboGLeypKb0cFda/XlP0eoIwPYAxSE74yKMhZKYz1NHmTY1sMl8diSai4O30Zw
pr42eOPrbevPBTkMnVQrFp1/U04oraSCtYWGweB9JfZKnuubbQAOWBvZWl612qgjxFGeGkKjse3t
DtTL3ptyu+tE5F+ELGGrJjnQmZnPSLapCVzHZPjk5YEiR6blJdfJLmj30wCapX1qAWZP8aS1rqcg
BmseZvapoz46X5Gg7/t3tu//QDLyb3B2DOyKN0Njl0gcin81h9JjZVRAcHeYZ492PKdqazSG68vX
1tbsjkgov5qltIAcRrgfjKCU3pUGN4ry9PGBg4mh8lb/pSdSDfRKu/x+AqLpVGeMpdsb/t42Al1h
14tVPrXIcqJnODobPLB413gLoDNbdsgVYpkcIzLZlayGvFqUe0JsKmk8EBo8dgQZ/wdtYXnfuao6
FyyvypOXwLPG7WVmayAIBv/IyrA6R0VytsDsq1OPOQbq+RP2KoiNxu8YfiB5Hx2pRJGGrI6XrS7b
yszaQfTtUqGgGfQcaqPkBpuS7vnLatNaM3oSUOmumTKdgVXkd4NhdrEZtInTtxq1OSZTRdeWObcf
wlVFWzpcp3muL3u40Jhmo6uOeJB4WIMF0G0woJOdF1g+05J1LMW3YxzmQ2OWjPIbmG/vEOtcxiPi
37qF7Qq8IkeoOmY4R+txYQBUabxHAar3HWZDRFRL7ulVDH7dAc1Wr25F9tSSYuW6c2kIhvb4RYoN
nmcxEflDgyByK7fdxmgXhAecshDNVbu+pD3eMLip3FX38xPRX7hoK34TFmFK3kUDYzCkhiCwXF0Y
NXY1wyuY0VHduhrNcBytrnChUcO0XmYjZRWUn1LUkbZtcUpzWk+cUBe5G7fhrEeZyAqXPZkeZ7wS
WSf43gKGRXLL8jjf86X8rhRnLHnSriCNvEk7ojyZnt4n5mcR7pWSqGOC1lRx1sQ5U6FXTYHWtJ7S
0SCrSladFv9BH4h24L5JVLmlIbf9pJ0zWLYZcmzqLXM+8AfCruStw9AUje1q3sK1CpBDr415A9j5
MwmasuAa/qamD62pb8wBB911OcY9fQDQ3bGaKU4C8kFTF5huaNO6LrD6gMCqYAUC0zO3ogAfZEpw
1aBCXrSyb8KO4b/vWvVpJDTvherVZHJyyjILkYYb8Cok9FrvLuwjPydxYcQi085t/PuGHdWMUeht
98BWjDKwBnAPWRuZ+Gb7qV+276krwWcpSSAVwCNdulnRraosOC/z4Zd/HlATROVSR8qOI+dW1cfq
5VoKMb9hYcR0suoDrOil1rwglnJuEnCLsLaAwKNkZPjXCqEYgQ24L/8JZRgPa3NtUgW37JWQnAA0
ZkPkcoJ9zLPRYA7TwSERyYR5UkPeIP4baT36HA0F4O7QP6bvr1qbL42Au0jinkHR8PndtzUH5cc6
bE5Q9kvMO+bLyDxxjrbZfoA7tXRruh01ONB4WkpTrK5eoxrzWyWBtXhuT4l4/Jo6XwzlzClxQ5kr
XV1gcHN72zZINB8xqC3NAurMcEHn0xi/3qujU1kbufk/ownCF75BkrjDjiw2Wwb1kf7MyJOWuTJ+
seq/ZhQk5wyTAVf0VucIh92JSFKep7Le9bbMDgEKK3sBrFGUSc0txEUiqH33oNAg95/Q/PJU/5Ba
FniuSke/evSCTQC3s2ApTTiXPdzJ+M8Tf5A4HWIsGj3rNAFdWDe0IveWCA9S4ZLP07pgBgRG76aq
c7KQwIZ7YJD3cxkXpW5H0+Tt/GIq8I7H1rR6EiA0gd8VR0RhK2VE72OtlTdH9nKPfAGBSYM+jh2x
aeLmfblNoOB2YW2EqdE1yViuP/UYyGEJcpJM9v2fd/Q5hfTsC9zwj9NUuhuESvhR6piTUuGxxKUt
NNJO84LeqUuX8+2MacA/DFxQGtLaM8T+QQ/8Add+T/z+Dgfw/yu+cLh5501vTKNyh6BiOU1TK9iP
hhAc/3Wz5QlbCLz2SXYyKJy9ezoTE6275bYbs61+cPQZy4QLANNDBADWSD2qn343FQbkWQeZBhE4
2cudTsdMTmn3H5REcPcp1AkykIbj3TILRLhupK9LcyI7RyEAdkTJjwFzu9Ne2D1VIVuYbtsEQCIW
rw08XE1GDtI9lN5jt7FtonsawuMwQPmCYtB4syRfAiO8RUj2DbrhDXSVgHe2pm5LA9vQxNh4KbsR
6zn7tajmp++u/sLKyQGuzMu/7AONEzSupU9347x7LdmbNwj1O5xtxdi/43MW9slYZ2GcY5W8tm9+
zBYS3kybUQFlQ6aAqkBa3zxEe39eJPPY9p0FUSR+c/CPel2DtXFF4rh5LWkF6wJACNdS8TbYrs2G
NFcmLx6bPCZhITed6sH99gZ/11PCGTpcXKyD6gGgVj+i7G2Yb55QSh04/uzcFoVqmZ6X6ZMBOjj0
t9K4Re19nUCf+xkQYoomfR+elmKk3nQY3tcuobkFeysr/bIECSrl6p05Q3fC+nJovK4IlW/y9XPm
sNXzJjVsz/wL2QOzl/zCDyceNiEosl8vpFHkeDmzA5eerE0o3P/dwnm/Ab7k8g8PfM524GCCcFMx
gpfsDi1sYD6VoMw3juaeSPkJHpL9tlaDrW5kRdNEKd3VobQjlrO/4DT3QwFNrmCDGODCLVQA11sV
DBBGzsbnGzx/ivNkcona3JPM1qwa97HD8ky3DOoSoKdCglHVaSBLAi6hFdjayZxSLzcQuQvIsof5
8j5PDCfteBOlJ/KkK740bVPlj/6wFcDzthho6AJTSdPGqh0VvPNhs4CGKkhlkAOBKUts/Xneh+Xj
N8IcfCWJf87d7yHgdTuFnCV3uX4mFx0YSWGBGRBlwi2qsxv1Fd/6gPEPrwZNkAgeYWHe7f1ZfDhT
siFRb+0W9M2Y6Tw6dODyi47IxurpZC3/wtpatFsv49NxXEuYF8XUN8XOPSOblO3Vqa3/C5UnuWY1
3o6qICReDGX4nCbDKA+SY2EJMa2EA7JqJZWA8T+nPtUoxQwSZZVXneSkH0bO+X4+J5BboOYStxVo
Lbc/IXX03E4maqZWHAK4ZUysnrpsNeU2m+V9s1/F1jPGyCCEUeaAYeutY8AeNtY1t2c794j235H0
YVl+7OC0LzLCyP+S7SwRs0xOnq8G1Vkzec2o84NJsqyppEL53KyGbGCxneTfgDBI+O5Aj3vac2y+
BvBtV7bL+08EPlktb3QdScvHEbIcWV516/fZg7zA5JKPsbDoYHIlSM3bFuAbC1l0wNK2GgPstJ+C
E6Qg2q7GXDbxl60kku+XONy/zh/CvWAuIgWysJSqtP3nZYSx/oPzc6r0YHFIPKOo0hy1QjhF6qZc
HfmmQLLL9BEhuoSxCoB/B7HCJ9C6BFzTSySLyl/EJHQvi6t0anLe0pMJBNOujmzTOJgHKgOu5lpW
TlvKwhdkf5K1PY3HZAB2VOSMx0lYeq+ndWg044n9wenGzss0YYrTlUv+SLQfjZ+2jwk/0a0pbmPy
YrJmNFkLBR5/3opUVoKKC/EldcmkmZ8iUqOvUH+izTB2A2tHcaSjT2fFeT6YAkiAfCMZasE1yyna
fldGqnnXmqg6u2r1hV41J/34+Rwn2A0hNmlFiFFBWwB8xhpf5C9fLc/ymzRUtQv7mv1Zstat/CgJ
GpjRTWEjhHs4iNP5NPHxxapEKXOwojO6qhMomUxtswsENO7+Zc9jo1khZbgfrHncv7np50ilo11g
M1KoiZ1RHGnd/r3aMsC9i4Pwl3TPWwxABv/btKD4H9Jmi2633Qp3GMSYZVKj1L1b7/dYPckafcYK
JITF7/a0FmxEvSIQG+AqNxE8wPWL5eGnwcIo3TM9rOvvM4mC+Lenqm0MTf0BKFhe+xnqASCOj4u+
O75YazJQ/oUs7fPKqW1uhNhR8Hm6EIakuR2qe9tHOjRNH9DUfBg84V/COtwMFrJjCFOV87l47+7L
mUmC0va+dlK3cvRnBbB+7aiWIfaxscyf6j9zVX2myrCpWIdkPkdabzhjUJorELWXRNO+QJU6U3C5
DBIGYtVHyGjhqGXD4NJG5bMwAjOi+ycb9OzYnK4+DO4HlbMixS0zHTMrkkItveSkx3mM/bCx68Pf
34hWKygBwfIuXTO/iUt2JnX/EVjImi45s8hw+bgevI1OqgE8F+m0cC+jx4tfptQ+h1/zMRhUdAVM
3JFEHGhYtoQRMi9ULNNFOAD79/4x8kPlB3EcSvuqAyF0+NSRgScyDDWqxeyw8sVsMH+n9IHW4AIl
APeZtigFOP01Y2GGwK+NwMvUeDw9WGCwqsu7KF5CsyWq+1DC5cMDBOIei5KvPF+UwrMOytovrj6z
1k2jQAAcPV1RfJolLuCS2vcQFAWzE6NNs9X8TJ/KN4V4UKeURGbD7no78/Zt50myLgHT4UgRGVyu
4Z33xn1fsUcCyNqE4wneLwbnWWlzDrPWzBxNB5yXNyBvMsEggpTM+95H2AewxviMGlNQxlnaSXZW
b+Xw5+zPqSFdbF+YvOr8ZTVNQ7xQKc3Vu5mxSU7x8Mnkihhiv0/rRR8RWZDeK8mEpCzkgDsWMjUi
G/d+JGuLMrPnr9alQvuKdSGThH5LVJEel4V3quqAWSHFcXJynllZmAk2O7hpPeOfUDMBaTWRq6bC
Y1SR4oxQvqE/bzTtjPeQaFgkNHwI4ET+xhl/zaWuLYh1v5C7FurOxNMx1o+9/GpLVJCi6HY4Yh7S
aR22r8xfWIU9O3pf9+/QbTN6RNm1ZRcHbS0Sq+khuxO0JmFFjymtXqcN5d5KKg9a3pfWhM3VF/NX
f2LEUeAmNhBwXQumB6t7ZDLwGL3+61xZhVyIYsIuPgcO2s31K3mldEXViNhrVrjZn33KELvlBdpZ
00NaEY6tMpLC9a5tArsDtlFRUaLXw2iNScSrtdPKbWRzgsfs0xdi3SUs7HQMv6HSDtEHVKfWPkvr
EkMUKPrf0RuklgwsBOxl4C5dypqtwWtk67CXw9U/apMp+C0CLidjovYLTMjHCh3OANjEMkyRNW+M
4YTWIrT1uAXWyr9q5TFJd8TDu6bCXGOcrbblb10DjrQl3ngC0cIRWk+DH8V2MRxQKWJ6WMs2+obW
VDaIQSq/gY7CNTYcTbjUonNufMl2UEy9YpuDXfg9H/9ynA7vSb5KbL6m+aKgJkSSSz3txcvftPcJ
kxn3bAJ/rN+95FWWVCIadiLcmRRcqI1mkcZd20ThYay2+52pYtXcUDkLUZXRCbjQz2rYE5vepTIL
7rOJmLYR688Khg4odVAZMTfIxTN4Fx2Hhy8w6J95UKg9V+4XSuERuYarQLfVRhB8nQQoLYCtMEdE
7XySa8dfATU5EVA4G/miKehOALbjwbjkNxw4WDKwnZUmjTXVIdaYmC5E26PsBGc+5syR9hXABCyv
lB7biOXAkpfSnjCiFlf1ZyxTmC57mNL5s/nBfQp9gdYwXtwnkWd6fQeYu0NNdhUdNQoK42F3nkyY
2IhgT6KmKjwZNGnM9VTgFoW0f84G6bK14qK2miR1hb7N5j6zzY5eF50doEshdrZax2rsxWOqnuaP
7k/pLA9mLYmmwZfpOV5CFc+LBZvpbQmyk/Qwh14wVjuTScw2W6h0QXVPRwt13rdv6xXMuoU56RjN
76nPdFN/uZlAHvq6hAtB+S/ysEatWweRzEoftdOJ3U8FvO6EeaePjMoo3phlUBC3YIyWaKqqQ51+
ysuLu07OitbTzfpwTdIZfd5+S0FcKe1uYDuAnMnjVDoCT5+0AROO8GKmX4e96dNmT6pfqu0tNbWm
MeE0aUjjLONpGT5iNb30BjAaV2bRWuRio2j4byB3FvxT9//4rk6mE/rxqamJ8eU3NQkQWbJlySvc
WBw36LPIqRaUA63ZICYdFeuAA1xKIB2AeiSRVh2ZkpFkEOkGh4PqVYnjSWDN05Sh9zCJ5gwP51Eo
5nJiSzYvBqRTKHozEbJTReq8JsKg6U/xex8Vx1W4bXkDPpSSW5J2MG7kHloO+WCxXNeaBL6xAqYZ
hzxMXCUZQz0oGrH6ElbMc+2/NOq6Q7ExrNPvYW/gOUHUOtVmGjrYC1RVNTlIqbSomPHh/1oVK/NE
rE0PDHe/opbeL3lNpgKIscTMJlJFwRBWTyXhz0RO5wUKL5qvrxl1Xmr9FOPWdo0ysEqBF1giFjJ2
9qHQcSluapQWtx3pzuIu3m3T6FMcKVL/L4w482vDkz+Qmi1ZyfYiOGxVOs9mrH9ZVodl0egSgqUH
iVQ2XhPaJjA0qCoBgsjGrwjhgXYr36i46Vd7YtWqaClsgcsDZUgdHuHoetBhFQ9gTFuwKlWkLM2h
XARJpmK034FoBzxhEBWfuNHSK69vWRviof1xsVJFxVRRsybE4xx8wbT+HU0UYMOxSZSqLGecL6ng
W6qh7Sli9M3ecdvk/d48gAZ2syMUVJWkQYFrALfboyXdBb8Vqk4/8jRnNV/sUcTw4/wXSTQGDPdz
NlOLVZgMWqC2BBkiLDykV6OQLfhfs5GiUTrbPbBhn0r8T96c6FxRdQ2VWdyHqGKYjbFySZMtri2l
zIH71/vE5h6+v5a2LQEdMZWv8gK7ph71DoohqSfdvxzJ3dPkCIBN2zcIWOuy9F/H0hlukncRCitP
NWMr/4/0u88J6LP2zeD/BcwozIPZzbaLQz+0bdwnfTo5KRIWZi3kugCzl+ay70qfMUDhtBzTbjmQ
z1kTh1aNQBXfLysyGWlLANqv9q5+bZMFBUuqwjagbX17gT0TGtHF25toROVqEvfDQYALd48E7S8z
HzesLMLVfRZdBw1uKhgV42dWaO4tDB+FDOhjT/riz4yizFuuJcccem/6XHnGukbbIFM7j62LyUPO
DvQaJAVKKSjfRFTksOowXmoRNAWCydYrAtAs9xTF3FbzObSXoKHrZdpXtuDlAh5ld+W60YVO/crw
odcsgFrEMgiM2PuriNNQviz1BGeK9UT/4a+TXLjpXZ36Wr/G07+x7cEtOg7KAd2n1jKh81B6pL8g
ES/V/XKCPz5wEgR1GnP70fXRifWmn1/l2Rja+l5btIiRZsUEwDCFqzko4cngD9uTlevLVPaqOY3I
piOcyHTAvOZPKswnIQhAoj0XnFt3FV+kWcOY+buHketZJ6wKLoKQhCkgDExthj2HJOJwhcIAZlGE
tpiJ/YSDEbH4Do3XbmmIw9mUaDuc40d9kJSr6ks8LVrKjw9dKgWppFt/c3EFFb0F/Cn5E55O6zrh
SLldCPliQHF+GEpwjR6IFMj4kNW/ul3fcHL+5bKdHUl6GbqV8qYx89bTs/OynEPuGsdzE+h5qKHv
3nVLrhQWKYP2rUYnaw0Tld4IASMlmp8b6sPJjs5W2fOf8l5xduFGh4Yi1O5EU35jW90B7sVQBSv3
nJcZJYf5g4KFNZuhIeifpirxF0HJznWs9MO7rlepJkIhPR6Hr1IZwr4YjV65Watr4DNPNF00V+HK
/MQl1RE08G184YVUHo5hr0WIYXKtKs/OWI85cNmKuLM9hStOfCXu12KS9sYjto66uSCD4BIbm25A
uBSTN7cE+SKjJw+rbily1EQU9r/dm4J3AvYvRwSt/BFREvAW/bDfyu+jfLhnVuamez7zCOY7KZXF
HqWMWMB4IK2bVdXKWwqYvjKcrRl61t2LZQA/GcQfnIPOHNFwLjexAsZwjIEHtfW6nSR1wH539Ui3
ID2surkOmHCUjuGG99ay0ewiTVrk/9peUYR+hxQIRQkZerdLshhSHq97LQn7pB0yoFihFlWxyGh3
S9E0K5R+BrTDwUD8eXltvxu2e+Pv+nZpyCr97tuSvDvxhwZUn6B/9k6fPl2stgc60CATgfZTHBNg
hibt+pBqZanhZN8XasG2dqbeAzrUo7AdALCEQHj2FuxPCXIlIlkc1H8jMzclkNBtLlVMS/BYDoKv
EiNiW+rw31+jYE4liAqjTgyVF/eRAmvmUuX0n1GAP6CBE2GKtPdZQFPQgYTLF2ScZA6kiB3QZ9cF
MXpJ90cX7u5oE8d3s835Ekyy9QGOQhYiHenu+A26YM2zvvITEkdXc8Y3ua1Bwa0Z/z/F+5LMZZ1s
QzWxqgwx7uNgf9vk6vdcR2ZuqST4mLx3nz77FJ9iB13GjAoUktNy67FYu3Pm6xGzMMZG0QM74dIL
Ybyd+tHAKuv8op6NVQPTcZUjVkcRkFgda1m/EafXBlvEjk6u/7eCXHjBNAVoM6dW0mEkf5sFLfPl
YjpDQ8Hjdq8aJ58FDEArvPsQEUqOHNXq21Y5uqig7nYBlNmc7ioUnnY63VdEa6m+g6y6yqL9uvTK
IOE8Jwq2uCwJu7v/fMdpKi+TF3L6AmYYNo1uK6yZ6yxXSRaWNFTMPaCWgvAdyB5xCtebAXjxXufo
5ggJTOWbGsSUDGCk7X2PImBCH5y7Bra9KtYOFQhJaU3HSLMoCyVzEC22qUs9XXwh0+TIz8miTcVP
5ao3qcURz9qvtOpah11ouyuJaAtbXBrdj2RMVmxGtjru5fgX6lAoAIMrzGe94sm1BXIWBDXbgiKe
EKeLyvA0H1biLrsfvaACByNyN+N5XYlP7SGcJb0jCAa2RBf6xBiUu0nS9/l003raAhKZpRygR+wa
vLm+UtwW8Yk01Xaz1VKj1chYv9iRWtHMt/mf4ff6tqrfwsq7yhIbyf/m93KgL8Jo9nfolmkk/zrC
yCVdx55xfTPeZUJAfekGdn0nJ6NVEIIU8dK2/YQsBLDMAFj8+/glh/NNT6XjFScNi3c0+L6WrxcB
8w5AaRqh3CKzLdFsQz7D9O8JS1hdCGewqvkQZRpPIiB+TTo/8L3s/Xe25mCs7QBTystkCOJhqBOx
32m1h+hKL30jgqslDkEDPpTFLgs8x3zwZKAiGeF0CjFwy40vast1QcmEwY65U0DkO4DExizrOsbG
qyCks4Bs1R17/I08yEnvyKtOi8vt6ohRavyH7Io6hWJUvF9K0V0Z5QFsoltW39cnZO/X0AKP8o0P
3UN6v9VGn1XAwNc2K9z9oc6rRKKU7zmcKUtkW6O469r1LUEkeOM39N22oBLu4lcwQKDViMe5j5Y9
gRV2seFnErhi3sCv9VVe5l/mPa8ghKwJ0uDOBLN+OmX8kcqe996WsmeYEMEPZFJZrZYCnJscWYHF
6zcj4EFrtj0DCcyTBXEcLjUoYgwN1mZBvuiR+BGqyyZ1NY/I54nTaLzyMM5qkLlQDvRkjg9d62ey
CMCUDYO/ZahNv0YtLPsGXy9OWL+rLBoCyURJyC3NGi8VV6bOm46oB7HyrJWdqoMxDN+GdLjKqsEn
RkpG/gGxLazVyK4CCSRqxSVNQjnWFLQgaqLEfIU6GDOoLxHgytT8eWBNaUdhaQFOprDpHESWgTbt
/ftdxUJF6TZoaIqaBcu0kVkb209J7I2CUGLHg7uTl03Y93nnXoKC2Qs7YblVvEGFiQJzXBXUWLRl
3UCVCX4ZCA+HrSaTznqNVqA9ai9nSdcj/eKR+t2iYx2NXT8jTfAzztlKS6B/CZg6RZFoPH6OOLd6
h5vZ54axJuy9x3XZlugH9UeTpKGyCWMJXt1SID068P1ru+ucOBdfSF/2cqjvwcY0rqYcRyHTOQ5j
f6gGbJBy2+YOaoM/Mbgqm6Fj3LfyRvEP4g6sxYhtKAr5tDOl+AQ5eOw1/b8dm3BMKhmZLi7eIGto
bxEfnqF39K8+7YklWIUJhf03mVI0DUpzdI8nwsCLMkmklESMC1rSPJIJ7eiCAddF6N1O1f2eswIt
p3qVu4nPxI+E8BE4iExHkVIa5dUlpALwKu11gC2S/lFALLuE7D2l0TioF2Tq305qm+8LCS6y7GgG
Er+B+DoM46aWoihqLyXx1oUjfAa/ZF/TaMsI8kDkCh2KEZUM24rHqWgnGOKjkpcpCXy6qZOMiZDu
/G7p9GsfJ4gctksBUfziB5+AiI8bmHEOgCi5kOhk9BAgQgic1gQPVJgB0QVAdS26o+giRSC6bX2x
9CHJJqsZcW8vZJOZe3PaAZ86BWSmmm3V5vnxcqB0QEFYjMaICdOiymxcR8p3q+fQHw39QH/eGmEg
RF+hdBrg6EcNHaNxKLIemucyG8lfA0syhMoLUgptNYKh1bxipbjHoija6V+Apfxs0RuteEOXJkq3
eFlBBCFRjZDXJOGowPlh9rY0I6oYvfarg3hLTLI6J7OZq0KzuJTzgO7mWnaapsE7e5HbtgEDq/2o
Il1E+FYDjYr62G4cY3psHwX/8qTLgg3kqvW7jc4UF7sdVwDA4SObXEigd9QJ5jCqzkKH02PZMJBm
+GMcrwiHdFRsh9CExS0b6rCvumA3FDW/zgV2Fz/kbINgOs7dtexy1gaInJnQMj2IKvAY23HOLvDx
BHb9d+exM/pi0zNEm3fxZ3O67Imb1zXobCYTieSLk2XmEIAhiMwRFSvDblXxEhim5ZHVPTFzyH6w
DebzBVI0ckjwnwkmjpLGehrfOrZRHpLJpPI9KBkEpUQTTgtyKsLrwT0nl0FbRA/WrJrcug2PS7aX
sIMMc5JYA5ZytKTitavhlJKb9IifRU3TWS9eGpTmYaS6EdT23aDBjmVniRgaeRuLV+zZRwnP4X2r
i0y/WKI/wkPmPUSUzua1nVnfy9uZ1KIthc7SruNGnbjsQhVqoHzRe13Uw2ZvAhKTJuaeBctsWb6G
Uxuq410ljH9CBzWSzgWRje22p9EVzKGXSz2EZQcBZ1I8VtfrkQGZ1m56SPkdY+Jppg1WE6l7zKiS
m8E/2UWD+57Am4ZUoyNCqH+bYQxFdz8AGWg4fv+X471Kovxhjd3jCG00dOidD0T9alSOsLldvAhk
m9lTEmF4+dzNwwrJ5ucFjzc/JPBFUnG1QLlJm0JiV9YqFyyXxEuywn+5W1pVgJoffP0ef27SQN5Y
mRYXacJAun7Wyh4xzF63wq1IVPSarAL9PU2pJaQ4GpVmCVjDyNhFeEfSSA4RXhNU9OY9RVmBM38q
N7kaEKlA8jR/DXDyDAnGIqm4niPlvSYE7lhliCZAF0+gx4ZRfrl0AA1FyGGBEeWo4Ht5Dg1+6zai
Hjy8s7XNiGfdx0xImN5S+a+j5HQOmkD59skEYJ2+H71DEXbxmQKrlkLdlnW1y7i86oxQe8/p9sNn
ehOQVpdqPTftOyEbxo/9o65GTKPvvGN5hffeUo97P/EUm4TY9jwjJPMu/QH8JRUA7j5fSp58uCeW
Le4HUk5EGGFFIEuPlO9Rbnvp5Gpu4ipFxTZHsvwWrSilQKqY0OEpXb50J1EESNW1bVLfXIWZpCiO
E4s2nPeqsl00rPt7WCNqOPWjIrIidf2Dk/0ffkNVf16D3l4o1P6cJaVKqVy8/e+/OxDN8NcH+a7s
OP8iOjCVRA2yTbaXFuWBxaeSCN516W73zSfV8hXobsNnd/hTI/bvAGTAfXlgykryvViZ6Hre4Q1r
LIZuMJ2uzqhVVVCz8fO7jp+uIa89v9TuLc8YznsPVC4m6t47kSAnJ2UMu8GZ/Tsm1EqTa6rEnUct
tKFu505iAuUMBGrpqu4tf5pJ2UN0ArgdhbDhYPhwlW/GioVBVf8wOBmweAPV4EsWMh0kF62N3u/k
RwLPyL6fcxmfm8wq9UbupkJB/8l8rJSo2RBCcddxUaoL8ijD32HL99qmEpBeiAd/D8ocJ48u5ErA
unVE1w2RvQmEmZ1ponb1r0kp0N8OeQfRZ78b5gCbXWV9U5d/EnhM2EDK/t5f78w8X6EnkYfINHih
+CCIJvATaeGo4HCIxdHKbf0l2EuExSyiqKS2aeobh8v/Qe3iDmdU44Y4W2K6u6DFqoY7Z80TV8/x
h5uV+fSEcXc8hcFFmHKqKr82UF6i0Szc7SKDh2CZTcJlfTbe9TWNaUOPanJxPSkVg+DLuU8ng2ai
anKZ30OfFHf4RaidHtw4VAPvYOC6xvPgxyvID2lXF61ORIB95MEObcZJ7Wr/rRPwVH9BUTP2VYBp
JO6nt3u6vzE1LLGlNiwd68LGkyuS3WiiM/pOt7RrHi39TxW8TLljC8JlazM/jmtmsVSftBAxyVsS
rcH+uDdkoA48m5sGzUQvYsn3aWHCWlfczs5abse7l8d94qcALUiqLG4ba1UE4zBev7M2LBd6TzN/
wcAtkLSL+rETtwMe812ccCT+dvPQGzwORb4vhcTo3Ul6zGvJIuz81j4C4ryxxufaPcOELgz6xGyp
cEo/4foYBlzlhfpJXLrTg42FYVvX1Rrqv26q/lMrp8s/in1Ehuxj3abntTyZYVJyC9seIdeEKeNA
abLWgWtY/7YNFtFfKz1gZxaiHToJWPii9LFgP4gz8RKpo7gOAmZQo0Tkx5dHEd83/ivej7A0Davc
tRGo8EjGf+vo6lRbK5BB0r9uJ5Aiz1FxFi+hcw7fI5LSXw1MheTUaumATjcQUN3ALusu9xz4j6Ok
s6D9Rq/eRO2xQWSrjYLUPDBpIajAzCEQaiVjitjX+y079/qEaQ9Xnp2nTgw3eT9CW1EC0H6ojtUM
bKNrA119hIdToIMltEyZ3jlRsINA5h31I/4Fijwi2U7jiZO/T7xFi2MRFUWw7fw16wYLJXCi2O+E
iRz3Jvm5BxP9NzWkZd9rY0pIT7qx1tUjZ413jpT6TsjdKEjGzCb9E6rwoGnWt2Zog+vp0Hp4rWXs
DJ5MipOrbBwl7FaL0OXt0odUii85pflLm2GvlCXs6SJYKFRcBfmdorq0n98hAOXeqUCfYtzoltoi
H4rKgqAcuo5lrypGWn6MUSPiplds8De6FTyQVWGR3w7WlktLa8B0L3fhJm3ifuyBzYSaNQ/IPb6K
SDuUza9l0S9jmKxeqHtz3PDlNDgeXUYJiV7jD1amKFyBwItVvmaOkI1HEShPSORCowgsyeKLl3GJ
9NBdxIuGhO7CXyeFfC11u5HgPWz0EuDsGRey6KHeK0BvkJQzhQcT3AbNj6i6MdflLOx4YyzdPOAa
zfWnnht8j5ePPwL4HBlWr4sgUZNE4inOLbDjZ+fpS8pH4/TMH1mnv6vVS2B92EbZGyEX5MqIMaVA
9lm6rZPn1IaWzEThSkq1rPY8hAbnk1i9xnWkLp/tf/j+uKPzY2vFwu5i1vgKAWQakAbYnMyBBr/8
UTIaDu1uYbEt6UsjHsUorobfjM8qbbNZUEd/4PSXh3/EBLne7wego5iWbPh+5TY7NV9sxwa773ME
oyP2MqALcQkbomzTLhRhzvL+49kIhKVCGt7+dMI7kFuAOEfrV6ljzVYYULtW1dYp1h/qhww65UXA
69Ot3h/NsUGq+6XPTwsEb8LYdQCEXlNzgvfrnXHwELGA9L7VK1Pt7mtpPvPlCKCrJVVG9msntaOQ
lhYRm2HEwseiNxzxhwjzwCW5drvp0qT1DcvhMbEAv5BQRnXR+Px7qsFbbncENBFIDF19oUj7Np88
r5TjgbwAmeynqkFWGPi1Zd+Sl5alb98AIR+nBIvIpN/yqa49Thq472DSmKHLlWpCFLKTYK89qWTV
fbYzhUa86V9JmHN++Fta1Xyhz5l/BbNJF3fGph0m8qgX1lwfEfQLxUKcH+anWvJXaf1zYCBEtFaF
AvIFd0pQv38ROS4Iej+Tta1UrbIhuIknJPdeXrWThawEvF7OLVCQVRWuk9tSSpLAYdkJsNlrUda3
q8rthhLjYSujCcsfqgzFwXYZrdG4NrbPckmQIMlMzgr8f5m/5P1dqsEK2poZy2swezO7N67sHhOk
M908CwHe19xkSUUWhdKnSUeCvpftXYYF6J+gilZpSImVjjjsoBxh+PYV281FVBUvgvU+b/SPP/Pl
q4IBCltSpkN+jxu8nYV9c41SU3cBoeefvQph8zE+og4zjykiy9u620ri91FzUhUFSgO90ziBPxe2
Co9X626VJLheYb5Zr2U/hAqn0bt5vU/0anIw9WkxNyWTOEiws5/i1pW/miOnCnkpC08vF6Z9ajxE
dTupgyhwmli6FLJezBPNFl9lz4L7UKGCPAEL0ecXeysLW3FopFR2jDL12Wg7yqCHqC/nu6L5aH84
V2JRkZ5B7oYRRRf5yZ66zocbhkfKZxMNzuLFgjgpI/0Nl33q/qEDRO0zkInlItAs/UBdXqWiFqmm
L5pjtcfEvoXNvTQiEZry3A9Q2jROOCpHuYf5kJPbNqT58yrcv+r+qVDrnZcni16Xfizp6qIYxLc+
1qbZuKwme6VhcxaYYvSxgp1pbwteTpgxhw48gGl8TrU5IKhQLQYUKHWbnMBuvGLR79nKlcpPLw1z
PTryxqZYUMSDn/N7v5L0XkWKghNjX22O2KrFLrDn2zCkouuzGm+J8293tsU4zCMHNRSuqVd0LEkc
j4lzw+PSM2mvfMoDtaVO9wMhgbs7HVccmE4MatonM4U0f2Xf1BzVmj4NX7TXZQ7OOmZL6gqKkLWJ
zMo35L4JMICworL9JCB7OW0kTHcWZi0A7CQyuvsruihxwWLJe8rEZoXOtUV/EsveAQx611gcj7+N
rCeGK8ln8c/pil+6W23ZWBC75iwdewWFdiFLKwL/PQtQ0JOlJwDnCeie3JSsOZDH2y30HGSQoMZW
g7/TIRjoQZScvVRslyZygcKGdXE3wAIiB7aoJhs6sZwk41gexdXUDnU3uldiiZGNNm/WT+lofzSr
RwOeXwkQJWcqr3Iuvg3UT+RDgbp7Eul1gky2AXfSPP2EBLpfx3Tqwg6MzsNe7wDHT3KiqNDdzM9d
Lg8X7fKCdZXKXaa27w+kfXy8syYyjDzrKqzWCjdDqEh/tKCMrdcoSefgTAvQgwsvwsWUK4+1Rfba
dyqgHODi73recbd2FoILJhdivuPg47KcVlH+q4uM51PRPTqgogRHq4vmCUegEYASx/r/qth6+TDP
RMYSzwk4G3fQZLH74LitGTkZNziKSkTmlXP/oALC6ZVr2Jb6/5xFOjooWa4sDYSi4UgPaUAYqqo6
WAS6C79aYiYxZNLDow00XrddX6p9clMHC3SAlLA4J6vbTcUzY/5W0fiAIbfazVo70r/RFhbjyg1A
zckjpRQIqVvoPJwiTqEc3CGittv3eqkjOIBCgO39XQSFhMEJzIoSCFBlkN6KeqKBIaagCZLjlJOL
4YZ1XwQyGqomCA0uNUi5pd9Y6cYGhVrNIsIOnMtsvt8rCNJK5oVADWJGwN3XSPq44H1Qwk5BBFiX
n1vq6/DAGDvCGplv/R9Yos1mX1JIvQkQs5ZFHJ19vxMKH16kgFEfSWQsHmBQmEWOEMnFnGF/WpfS
TGNPkP5rUdXBJmZlXmYNQXRk9WaKGHvlLBEVA0lIpr4p5UK0OGxT9CP8IibVB451hkAAOQoed9sD
EXTWzYSAzo2Skeky/D22rRxZ5S8VdyjPp9ruPnxau9MBuwbMzU2YxLovjBQV3+nKj5YqjGyrE33o
a9XlV+tlYGvm1LsrUJWfa0hX13ksaqeocjlfKVUos+Gs3ub689Pxm2rM9BtwLfp+ckKO+3jwo5E6
x19i0ZJqJC/nHQlnfCdSe05JCbeD8b/BlaZhmDBxMiXxhrjVSKZ92c/iCwgVRZd4yNryO/IStAps
XuDviP4USR2xxGWePwlyNQ52PUgzrgnVZVbVOkbua9d/dcjxZJ0DeEFDHbly5BZXMYqRvtnu863B
Iw9Y39u2FZLTaHKBjO4Nk4jcR+9RNeMjclk4GTOmpo2izKkxnJc0AlUEDL3nM2qdOfplrIBFY2xb
gCGXfBRmivWO7y6l8ZvBxXuhSgi2iBKsuQtic/uf7UsPLpvhmkKVwSXz8WVeNLCDFXzO6wQ1SPb+
sqn1YhrhbQGUWvFJYX8rZiK2Lmpd9y+J43931llBT1WUmw/fScorD7JziSqp6t3Myx6i7BVOlYAY
eiRtJ6SELeAP0SXsOk7IzdGfbdxMS81sz5uKjgpyP5g1qUJpV4xvKHfij+go7Z+MAst/JwVIJ3Xa
fjWdOdMhWVX89RFjfDoAhGW8hZ3B0V5zw+E8Huxcyc/JdNRq0nyDOblT8G21qhSwuvlpvuQSf70Z
fn9owcc9A0VKonIFYbrL6gD5PQbmHsEqsDrkg5hzbzwkZRXXRhJf8oAOBW2PgZqAO/XXf6IZo34l
pJPLSF+VQfYntcBw+5xaOweY2/nMG6PYsXfomXbmA3lYpMuuRTBz9bY9cX3jzbbzo+O0H0Ta7IOw
7XxVQsv7DpAKQkfRpHK472hQFjTW3pu0ulH3FjUvTOlEcHkoaoGGkLN3YnYbzeGnLtm9ODajfsxN
v6uOWEnMeSgNnq/Cwirh9J8tgghBG5pLsCAOupWtHQgLIR1RnnYxaZGjf+ySzNoffCJHlotObBOW
pdbf89dmU9BELlUs2VzH9a6O7sep0hmoUvPTui1qZ7Q9z9hthLGcsUB4Ef1xDSM/Aw3K6Gm+rZXU
mnVr7IUWX8LRHZgc/xC/HGY5PJbCsue0f2NV3YSdgsd2wLisfO7C71bqjUK6E1+8/1P2EsiPgtED
fuCZouqvVtS+WwVfQFQGwrKuJi/1KmRjmkzyFOMJxwgizuNbo+T/3QznQWR4H7KZ3SgtluQwkpKg
YbMSolxdHlYUnJD/i0wuzPxLH1dPQhMqMSx5sR/x7rTwUBYnLs1Dt4bF47Njyk3oFDIle8qeOEuS
tOJ9Ck1sIEIJHH+fqJZp6hqarkEhdv6zeTZJocQMJyY5TlrxYKeQ2JAuqgsnjPNozSw4x+YsathM
F9kTNFnFapFxZLzMDVor9MoOgfu7ivueVR18ha5SwQsplRmD34u8bxlnukcebBN73lW8Aq//g2da
r7kyql0rsrRl5YxNZR61omezALihlJSUp5+DyDFZmKHd5A0tl/a331I1CCYCZCUBJwHFQb75HouE
hYXWbnbumsEEQL10u+fUDv2F3PGI1g4Lv6ciCKHIUp7T0R+5hR+iv6n4LnkXnDtocpe0tcjUpJ1C
kE5UEOY5tVv89pvcPhyARH2wyri/Aq4dOWAiW4W0i/ZetW2XwLUX6gyWWlJi9w23XL2q2yIobM6U
uNtOMK1eZHKFwifcKO4fl87xXSbzW/bnWCemYWB85WehOUtRxzxDiRVZDgYACkbDmtRElz2eh+Jl
+chTOvOj/YjS/VCixEPhtPPVYGvhWFUQHFVpWhOussMIJM+99NFevgmV/GFGdOEnm8OK1PcQsLWQ
yw5kXu1ctFPfGbQ/zYVv5SJ65oizwjnyuKT/dlbhoutMx9G9vkrAh/OlIR7++VX13u3abJ7CBI7Q
RETmzuZePamhWzrJHT2nzcsW2JF7UJntByZAd5NfzY71neowck+c+mAzuI8b58iR1vp4MHegt06d
8j7mgQqQMqnjJtGk7iuUeyjhh0fVAHRgLhL6pojxjvQD7FD4t7d+U87cfgL7ZfZXD06aZGW1hJk5
ymsJw7j4wtA217IxPU8Lk6aNPZMuZIcGyXGDSSQUUI6+mDEfe0el9kXG5F9QiDG/bLl4Mp46GEku
pHrhNM9scmnEQDSWTpBx/8bF9090r+CvA1PP6wcq06wz32AVdZDza/RnRakGGiTASLGIlyzaRY7N
vUFy2EW0gEnkbEXXwJhQLRFXjmRggyc03qPB+uiS7wVJC2i+cdT1ooQY4gT1rKtesXUvNAFR8bhm
3Q/ytuR6Lj5GnnpK2Exh3twdvGMrbHtQ37Byb9EdtsyKhDrET3PnHT9+LbfUiPk9LRURInow6KvJ
MIKAd+c5S5q5Unn6V3s1VUHJB1NyW4NYvl6eR7liTddxrm9eEFYCdm+8r/JjFmTjKQtX+9rSdkaR
RsN9J++1crdfz0Jltvq+70t/OjZuhLhVT7sAMk4ic1F4wsZeKMRXWkyw0bd21RpA4lOQGbg/4DwM
2b0uH0Ew55snEG0VPh2HIUCSk94imwzyKcSZz837/wcMJ0QAqH4m8gcCaCtgsg9Nodh9fvFhg2ZR
KlyAHmzKPX/XdWZmkFhSTuyfxoJEXcoKOUwjXCA4HHLwZRLgecc7yv4NQ37c5R5V7ArmaL6ILFHI
4vv+VjD8OQi+K8nxtRnYwPyLfGSdFQn5jzP4g3ZM8asEzdK1GScX3Xoak2dUiuNGTYqvgIa22ewN
FrmkZAdLo6AoBYTj3XYOlsdxz/u40tGqYMMsFfuYDHrdkDPfjMYZ6FzjxVz31mlOZ1GJ+UQWfcbq
64jUbJyB4EypKNSjDh8oDUVaBLpNrRk1YnbG6h0g4ZYJaAcebjiVFzMVZqcMdLQHNMpeS1nI83qo
NtzwROfRGb2uCdaGaxc1VGU1mAw/QUun2gy5FGDW0LZ2vW6PAU0BVzDA2EKmQy3RD7uV4bOcKFu0
CHaUjRxnaIWgxA8u0Roo2bFipLodGBbscnal5khnHs8eDz8JohldR9gDB81Tbvh71v6PNsh+F3dG
amMTiwbHbCBdvJUsvFi0G1+H5egrR1s958/D4x8iy7uA6MG2jaCDXMgiqZP+4nOOV1Ty5CN8neJQ
L8+6fWuAUP53+Gz0vR8JFp4+2a4pdHnvm5nRbnZN9g8ZmLwhQQaqUdQnFuk4s6fA5Vu6bdEjLILJ
MzJ8ABt4kv5KFEm7PGCDBs0lv5i6HQzUXC7Sv68IxuasezGBE4p0go0icM28GhlGhDjFwAxqZS/n
WccFqHn2TUoGxHr6d6hdC9nZZAgE2nGoqNpttYc9gmwzqF4FyVQnh2TcbUqFEVJvAmYJSZXeJwqA
k5Zj/3jbvuNHWbn5poopzEdnqzDytm2UkWWDlPnvAZ9YP92ld9jUOBqv2FabKRd0EKJl4/smewRe
EdJ/R7T7iIqYMnxnFABvEqSWzqY4M6eptozG1efA4IwRwGCb1VZujEufL3Ohcr77pD8x6XfCwdgI
tzLWA4QcTCKUnQRwxsmEfi7v1xvv0aCnUmwq0DS2KE2PHjV53p2Z36LnfY3uUAdpv1xpJHxnSc0P
JGhB2WUfQOtx9xd5y2i0NinWGGDAYSEvPEc012RpZ4/90P3HtFvpfS+YMasWA1DjtJJPMVqHPNx7
IHE+er+3iT7gTMgSeNw1o7WQyKxc/F/TdrrgtfruO8YUWbTY3Jvam41n2W5H2nFmPnCWsor802U4
a8OjV5g96JK/eVMQ2YSNCd1QpioJp46Szk0MkvoNrixwkmtMP4Gpd0CG5sLQaf44erNpR+RuFgCY
1ECQWqQkjRdGzwmw7qFwDuomyebv8kU9eMZybuSK1YwLjxgE4x+i/D1uxiutNCeWn4jnULAJpuxh
TPwjmRUo6JMpz/UEp5JLcR/6p3+3acLRXymW6WIhd09hFPrXRXnqyyJPQI12MAq6b+xJHSz7nQR6
PhIzDvng2JV61WTGLQCt6Iw69nCuIslbF+N2b156lPtyZg2nybqkaWTFApA09laCONokoQFmkt2i
lOjhB5c3qA6tVif8v7xbCmL6Axhf5AlrQBy76Hklr4DqsMYoEc3CiIdjkU23XqHRKSMwShvecc31
2adtutGVqZK7ILtA2kZjfJjNf3Srl9F1gSjUleKeUbXiTppj9wgBj1JP8utqXQ5kRi8dBejdOxuq
aC76mMKYugx/J/5SAVJylAz8nBuSVPvLealMacTbM0RnZMTc5dvvIfNnbgJfibcgPb7JK0cm9WQN
sMI2sUtFTs1xYwcF3920BBUmQ5MckT7qDJBkROy9dniCQTpxvO0APDv/NBYza2M76WFX0cOpZ3vt
itzZmjLViEsL3DMHV+Xeoj5fY4fsonXY0H3hOso7FB4P/TFNB1M97ojqAxlAjhwXYEC/2V5EUDVc
2/GDGHJdQEBlcDCUyNa+AhwUIcPCq63kdDmd6bPLxxe298mZfVfChezTGwJdlnVvsQ779guYLzIw
WKUzX+05OMFNOF70upt16xXQmI/WV1pzS6ZyYVuBpZF1fkML+iXWS3rhS2YPqbBJXaAvg9Mcd3mY
/FgO0/SlSyjXu+wiXpr6qkY/VV/Al7R2b2ea7PZrGgB3YvFLUKhNIzMeRPzNtyTXQhflD5VF6NlF
n+StM8Yi32hMA3eBv7XxxFMgtcB5c4L4Nw2trUdC/WlsyhINpLrSyg0xHjXlDTW71YyZKHCI9Mda
5NdXy/x8PCUbOmXNVJPMRhgemitSKieshzdoe/YOFxc8fwOB0DOckjHAdDaZJttLzvdzNdm2xFOw
ot2p1ldCsjDwwzrP1ac5djLI0y5U7IVeGMxkL9BS3ppBgt9iTneP8U9Yapz1qYDQEPVd82PYg2WI
khpswgFbBgODB6Q9HteONZT4TN4pXJtf3ztW3/boyZHaGy7CJw4i3+bZDldp4xEnmXIbZgvu3HuG
RCHZENM0AvPaJ0tZ5lUg/UJZgQ668kpU4RrBJ3FFADOcUKZGYNjyYMom6ftjmG1lHWKZ220B3rkm
pg7RFd88hfRuky/QbVF8UWBdpwZZKmLh6ez5ljk4QziXFzPKwcZjyq4PywIuJSzhZmC8Ahke89Tq
1v0HS0iM5ugZMevggjXOitRxq2aadJxTG/Tgky1SgChlAIS430j8YZ7OiWFFR9leaResEdhF6tU7
/ijBsdG/evWVq4RNhpOsrKnMrEG4weK0sLnV78BUT7DoaH8evt0Z0Ri2P8zDQPXb8fHNL4bSKc0d
ocq1AB8GdRI1oQdXtkNupM6c+1sWMmrtsFwUh3tWV127I+YXtW9rVKMqVOWvAVU4oKXp05cNsv7Q
bSFEvJ0N28EdU51o6IyvWij3g0qDzQ/MGs0RAj3xGX2vpJ+A+9EttdzqR5NfMvOdsz7t4Mnix3AD
Xv4FxpO1XDL0/ifUyCv5yqiMKsmOD90Plz3UkSQB0bE3JOrkvaCQc4V3IYxeXDCFpaw/lMsxb+iw
jZffZIRkdJGrTpHgCxJh02F5ps52m/p1tpGqs+wQy//efHzW81v9BfJ9ILcbirwuOpxLN7RL/XBO
a1Low3D1XihrOrQgULTcq/kopaUfXGfZ2pwx1d7mN5iNnElcNbPphgnoy+NT4njDcHdfOOgYI9Vq
NLE7QmIym8PEQYqmJdEpyBmGfm1yM0pFZJe5nwI2/FG1kg9Oc+yo3/098UzPTM+t45QJDfYX04Bn
tOLScomBb9NlodeGXO+VxZrkBH7lMeVW2gyh+qHYYxmDG06g9Wbjrm1++BK/WZ3qjOMXVd6zhbIF
GRa3kgRyiA0CvcG6IkTi/mZs2Q156pMl8cpk5I5PD3JgC8iHEDANQFeaswv3SMRv6MFg/iFj3hcV
jqcPGB1xj4eibtaPyUHMESOlMowIR3UPyNfiBqEQNv8ukMn3+0gYCRKzwIDadZB1UK+XBAQm15uh
uQWkL1Dif/eHnoIOT4Q1IlbYX45WCK+hBgsJ0/iNSBmuxIEnG9aB0ccqENtNxLpuHGTZVNPvwmek
SRtnOYI5ThrdTF6ZaRAxmz+CjDdQaAKWqPmo7xZ5vDcukltsUPN9EXkf7O+hYTXj46QP5rMVhu1s
l5zGmi2NGuX/fSWGE3U4d7y5yauL0rI4GrCNVKzhZEOUbPtXZS+HSvd8UenOjKKTwPT/xQvtdDqF
6srQdfgy8uWoKjIU/DTnHiWz17Jtu3PXyUhLFaRN/Q4YXOvMcdw2q8cAm9nAU5Kj1LS7/ltiykNT
CCt6kqxBuGUJJrPi1IgCzbokhtiztyhfE8PZ8aPopy2S8eEtgG5Kn71K5KOPX2b61im5rK3jo4FK
p/A67WBlrvL2h5118F3UuOrLnR0AhR3LaM4rjs0OdXq09s0tVAT7OredomexwAY5A6NuYxtLXBNn
RFSHuUPG4tl/7M/jtHohUiZwsHsnzMD7rR7BcdpI8bRIJNYU84ToBUtw4IEKFkExJCHZ1xuyMfpz
yeBQTO9DSQ8Hv0U7zlQUMiKNo7wauv+Gie7Ng29GcFmaThQxekWWRWTBs1Me7ci9Bkji5SOH1lJH
vcXB2N7KEVGOK+Y0NXli1D+a3Q6LgxPyqn+NUg828fbelthaXmITKsu1dM9QFA/IZoauDpP/Lmh8
R6x7pwnbscINCMDt+KYfUTRWDF0rP4jkgN2kCd7Nn60t4F9SAKDXiSDpLbv2eCiV72ri/U8Y6i9R
3UsFxGmHmw849nmA91N5ODaiwPq1tyqUR1OkoIE0vYFC0RIHKV4oBuEzszMBvevB6uzS1+QBUxlA
XUVhLvIyOK+qgVeKpR4qqjjHh+a4VGVQxJ+yHcjpoi1wVtofYqaEfJSXofXlgMUVMuqa56aWKXQL
O2L2I0qzP1h1YgWS/W/JD3luMQB2uylnWE8mcI6hWWms33WEjd1k9rpbRGAg7/XYrtXaEATgzhy+
WDra2L4thXT3i8wDMPnb7IFpKuqTJOYLHNQcyooNDG0shsgDnV3aaVGgXz95ySEHdiBS2YjatdN2
7f4gLa8fTZJuRO2ARPF1pHoN1pmnip8/XZqgTsVsBtw2cAWUcP/xvgzzvXrZpxHJgi8ZtvTKeQyi
sYwk/yPq+1EcwT5K2wJ0YjQG6xtqMkG8hOoP3XM60RK74HvGVVzeTtUm6PEpZ8ZgQsrgMJga2inK
9RTJS7+Dl1oPdgvwFjAMSnaS4Dk76L+NuHmuCDa3gww9NsNysgo4cbpk51hJ7OUez6LPJfyq1YgT
L4lWDbdw5I6hytJJl0oOy5gPA9UkwTOk/nTo9Y+SOpGt9evW+B5a19TEIOrqrWX+KyFYIvMYyX+M
6WYIOko6tUBOrAn2JQ6Jmg/HAkeSnr1A+ERdCxK3DKebvXDfK125jaKepStPIUDqTHGL5gFyFgQW
gvQEFRNnmWaRG16VF16pXDkkuHu3c0vhUKfZnkpTGM4yrMdpVlrDtG04J2TGsVX6u4qDtpcy87Ke
DWoadt4WlCEzKWLnhf53nTgdNQjI0Rf4zj7l5FdZYF3/0pD0Wh63J6cGW16ON2oBhPMU0/2NeRYE
mFy/SDKj7p0MdDTAI9nMqS+cJbYkPrODzD9wBGQ+bVRtkTAtdgyXNAIRQTdAf9iwFeFYe6TbICNa
MpvWCFWdFNxsdAbr4XvKa8XZ8fqC47MIMRRU0l6VeLue1KV/XXrFyWfACzzCi0xJSrj9osMRy7LJ
Or5KWuNrGM4ta30mP+hlh71K2PYWu6+IjJbOQUKOxbUof3xlHAhJln++p56gQkoyKe5dZw1t+Rxc
vyndE11CNUIwHChfcoN0+iZyroQL7OhhRQzokZz5Uso1TRK7xS60EuDWnOmMta/ekFhoheZDraqA
7fc8PotMXEFaHWf2H2hDoajbDCg+/NTN+CHDvH/JjUypH9eL7v2+Z8B60tnSQPQxtYsvNKn7eHIQ
u2wi4h6s5Tk0FFjdiPCya72EmxjVSR0uV+3Dgq6y/zmPn/2gF0A+e6mvhawA9PZPDK7PQkwrtO74
ESzGFOfr+M5DJPbk6QPNuYaJJ9bAeUoOtldxepOrq+e3O88wm5Ll612Ceb4fnPeAcZsf2ddRKnpM
C/nFqgjCe559xiE3raPJndndgYxtUvAxmRN2U7eJGg+IkU0jfnJBB5E/IHCjFYqlbaYuwCMXC/FS
SGEPou6ZFjzHKbIbp0pJdKcxHct0JUk61rvHGpnShcpGAinmwbNWF1iPQiqI728/9nD6IUGOYV7g
CZhjlHMS0XqoheWfXWwylusndL0WTyj6PiXO71j8Q+ULANw8OIOwi1ZA7thJM3RoIWdvQ/SSyuVu
ihj7+OvVltFAeooS8LWTNGF/fF8InQ3woBCZUIpHvSXOEVO8vxolQTWQDcMe18phKfi9Kt+daJNt
HLL3LFqHq8GREcIPCN2URaoyb10FmyhnoU/vaXRjdv6KBziV2HJQ5MeAyV76FJtaBzxnD47dU3s8
kBgUl5Fubj4sefuUN1K1lcyxQWSPmPpy1T4AbxKZEAdFiL4OnM5E9jXsh3KzECVfSm4iI3SQV4Ek
DYHLBavRtodB9SpmlK36rwguDzOLSf2Xdi9+saoA6nMHL1Hc0d/M30NJPGY9gMkpGZXFo7PqSDDm
Zw1+yawCZE48TAyvXiCWrGuI5h3ieehyy0WtsonwScTVB1E3cooUA7okp2AFupCJoxq3NWkZEz0E
eZMgfTuStR4Moxredj9wwtaz4hy/YY8HOC2U1Atq3/eETcENR9AXLjww2O85t9yd1AivUrgJ9I6j
U1Gr2fwNFG3rqLNiHdn+/Pta4pgpXEQ1SgeYJQrrEQdzGPmXUgXAf68dyZyJYCIruPjJRUaTJI72
cFIF4DMUnJxNHhhBWbVkOPApVSFIUWZQy2mchw2DTU/qsnq4Hao6WegqwvIB5myg8CON07sjz2Tc
EyFKTfdLg2D7EYlF8kvB6DZxdg/nMcErG95FzN83UcPC6liT13rMLlpGAyRagC2oSNiUzZL2w4WN
baDyaIdsXy1L5fMv5wSQHrOcCRXBtFFLNt5bdn+DKE4Nap6ROlsDVEkTGp79+x/sOiI/HZb59OXi
eSUfHpvr57aswGELF91vU/Sq+HNRrGpzx9/Rcm39Ltv+g2W5dxqRXnPk2UzpmAFyilEYO8RQIE6c
QFGqTak3hUFGJr2MUqVEXNAkrKHxslNo0M44EvjCa5pp2bL2SwJM0LfkTvnx/zb68wedB5bIH3Lx
t+zIU78nACYHdeQ+ZlVcPrzWIuf7E3csw++yTSpVNbnVKpi8OoMjUqW4tlnfibuREwDxrQYLIIxU
6vlvyIe7vP4PTRXsyoYX1KIHCBl50N6ZtCf90IRFf3mvT7l5ZdXKdfo0crz1066p+NUCU6f/sRRV
GH3nAkIaLlYVYZkEdwKVcvMfJtZMDjAqN77e1N6mHKY1IoFItTlHbe2VeTGThynU/svwQAtFMnst
Bkw6hqdRuMS9DW6dhfvqVeIYkrs/+AwVrt/1ASlp6RqRFZIzCToxcoPT9fzBU+JWjCCfq9287qVY
Hht6UVM/XesDRoeY4nKcGDPKrumOtXivLfMTtZR1GP44Wfoi7mYsp46XICira9qpCYRofQSZyyiO
gCDsWxaKnMcIxcQF5fGcTnx35uV9FG+bG+ozJWDCn8LrOvhyQ3YYkFJtPCTqhmafEiOiwQ9HLJ9c
y4FTzb1Bc2QhBetMCZXs5k7dgEPEW3w4Fk7stW3A3VNRpJiAcmH1i03qN8mHjGiApMsyn/C/prfl
SjYkfi9EtnjB6nhU4ZPeNdhrPxP0jhjihpC84YNI4uvnFxLuVzpQdl57MRTgtAKNiSDynSISwCH9
mLJrIxnWmS3eda7xc0oV2pHbQ5uZOap4oQ49XwQIhp43CIJxn17GbR6reSIaHaqWSi4mqD3xRQxr
tH5begyOUea5AvuDm56kAquCJVYRK1ZO97vOTW5PO6xvObZxjslTvstZ/OPS24UmzLrA6qW1Tvf3
BZEfOytOzAOMTtG2bWLtLw0Rp7sfcZQx/C7OR3hvF98oUw1C6RwayvsRcHUFD6dKrhjznpZ0VLb2
3/DWK0tWW0j85vWxBoOdR3S68gdbA7jjXbu8FCG6aM5elLLjRl5VQTm/QBoRswkM9yJrYYR+wrcd
Phqs9uOlz5eump9owpa3eX0q8ygQattiY63xvb24W91XnqEJRDnaXXkKMzF4spnqMf0PVlC6fBCl
tcX1FUkKQ9ztGpanBsEl4iLg7OjCAYGP+TpOUDwarf3lPvt6pG7LWgpEL4uAbE2/L2atJJcZIdVi
c6ySRUFaoXcZDnS2Dm+/LVduN/oLhzWvZnlxvfEx6RnQyonh0oNHY0JW0Q82W95FoUSANuE3iPNm
FSz2B61xK6ZwB84pE87LlaaSZzU/w3N9nwoZ9E8BIcaeX24HAtzdQE8YdaGnfhzEdBdq0fGn9zzB
997ApPdLvJV7HfYxr2/CFbAfjGGzXO1nJS4f7IXKYcqegler4qYD+IoXebvI7gwEMdi2xBOfyoW0
m2YuIZTurv1s/+DZHDVTHbPBZZ82yQYYFa4g5agYUG0ulpS/A1nhVcRSy0+4a28AQxMImO1kfuKM
9eyxNlRFeQ301u7P2yZB7eVRRuPMnl6+6E+Y6g5AZFxI+QxwPntSVwQW39y4KslS87fWWFOpjkJ4
6qp4Tm6iJEf0ukS4QYLBxOXhQDQnUnmrfABTXWkkxhV1xtv4p3Z3WZi31eljXF6m8lyNNaIM/aDE
3q4QoFjBcI+vIDoizLEc4A3MV8AebiceY+ftoshHS6LdANA0mMOMOpfo5T8MOFquQBHlf6DhE6KL
+0cy5Oe22VDt7k46lv18VErQQB6ZC4gqGBquHbtHJJADZincROjWSMwS1LHAYHtnoiVP+4gPkps4
L195qqvpbYVLyz84zled5eLALAsfw+5K9NmDaoJn+db14OkBvnUVt82/kctaGcQN3fz+kgbaya0F
e/2g/dseoDB6w5R5WuxmX4TPWKivT9c9C/qdVfSiGG3CVY1olyEMgC7H/2LvmUIb2ShXMm+qHfic
xTRKkeNm5J/ZMTGJUTw+XnOeC/3pBlSHtVvRnGzTIjiHINKe65vJe7LaWnyOV1Q7Lxtwjx6UbYJV
4VBowsCjktI4jD99gobTi6jM+HJ7lr8BqiQkzF2VX7DVNMMwV8I/SUe8S0YEAGayIa27ej+D9YzF
omLrWnoZ9dRAFz81Z4kFdu7ZJCJI5ihtO2JDIo4RzzN9aJWEPsIJ0DD9WzPculxOJb2crxB1vdmT
yUH2la6PIgGf9E5qa/0ZHF+X2JuS0Un1aiGspdJ7juPBJ2hZLAy3UC6LmevxdCD1TxIGvUNOdLm0
XIXOQbQLZRrYHG+/nnJMdb0OjYNU2l9RyG4sFak5tHffYadqJ+qGoVsd3UI7KA0iKxPTF1SgdRjs
T50LUDiP031M4floVbA9bZDRsXYKZC+JAlGoFfblMXqF1itciPsao/VPyC9866rMcSV2SOf7bXaH
LPh+2XjHyc8ykfvC9Yr/FYZ3kLZLOTmHpy5yxwkeRRVLH1/6oRcILw0EU0zigN54Vakkd4eO3kzj
QI75NH9Hg0YIcRwRADuOrf38NgSedsJVSLbU8LGT7E+w+ALc5N6Kok/v0frZD/NRDTpCX32dFyBI
xl+qL0CrjH3DIS4z3tP7lPU0Us0ByBJsTQC01+Ayz0OG5UCxKpILAQylf25RW8hg0nSc0YxE2EYH
0KHkp12gJokOvgGjkrAYj2yx+mZE6Tau8I5erEojWb357bpZTIf58/B+FlrqZcd1TaX8mLAmLXHg
2uwPiLqLUb6RCDQ78fZ+M9fOjFZUAjyA8gLZJas6IWZbDG4mnaDg13dmtSvJ6Rt02mumev9K+eFl
c9LHa+vI+jR04WoC51/bOY5hgsnTdK43RE7PM8CwmkKP4IiHjlUhZc5oya+S9CTIf8zxojaQCEg2
iCZc8S0VL6zhUNq8Bpj0NcQjEsLJkNjd5tBtqg5JymbCcZJUUGfOtE8vXwxVQ15SBLrt3HfU92YO
TmM6o76VL4Y3I+wEDLKmUiptTZZcsLnSHHTw1vMKY5GFuaMRLRmmzrbEYMcz6PlQQtQ8POSMfe6d
XUZQQS2yPRcnazkJvPshKu0eNySXrPrzmsZF3m3rm9SP4haOeRqx0DbiC/WGshJyk2ohNfhO/6c3
KC1gc07CuU7LmEVYOwNy61LsuoE5NN/5tq0nL7rNECJlY86ed3RbDKKJwXcR50z0BmsTCHJ7xhhx
wZd2AzH20/p7sk9Aks874+CekP8CtlvoXNfRMBCvNaEnwOnABsgIAiePEED7NQYWWOuzbHApe9G0
ac7t8xWx6ocXIMgkRw0cm57Ts8Ogqe2MglZXIFA60EdF/isu3eRVVnLS3Ltosyg36Es/fy9t3jXA
zbh20GVnFN5QGB/WT6Q6avAhbQ73n+EHC40WkWXh3RDQUFerHPuWJDjjebiTWBOmcNLIRHnqPVLd
I9n/+0QCdyi+WoSLZrfxK4fnyHRkDtfjLj4IL4bFM2NE3bs5oBwYzWI6/SqwTY9RPW8IQuKvdaNW
jr230dNl2UkX/OFvBP+FpAh3uThB+FOWTYKXvAYtr2Xxjuch7V6+Wj2ChvQXpmZ8d5aKuW71iS64
14/6lY7tzfMFf6MWgdQgbjCIy+NtMG5EhwPEXyHNV9jLT0kUykGoJLFFaPIYlPbcOoP7rrw1eklC
3woj5Ebsv4ZeIcp1iNAvWSRpJPC1N3c5pM+Mc1ElK4tGkDpsDHQwHQxGQSHHfawCttJBgzmuWK6n
+lSUxaapBnpDyMbH1PWAJAqub9GZQ6cR7LDBX16AE88o3uNWDg64lUc5voGoLhCkxsacQVWyjZx+
AFQIn5HCcxe9BO1pFpg72X+LAR5KsUgS/eNAv9vA2RDVpTocZ6yoqu8NggCTpWShyewaJcaHV4VM
IdwBzWmKnAhzCsIIhQIVZw44lIdVuLL2GVBJAqHyRmN6HRrccvkADITC7pK/TIAklFmZhZ+oXUBd
szlBE6AXLTsag3MRIWp/yW/YE62B0ayMvuRTfoiyHMB9j/7zB1BUTZKLM2PNWpFM2nvJ3Qzi5+U8
+fTSCjrwZJy0kB4JQXXhuw73IcnJYmGZWCnCF61PwQ/4t4b5Rs3ij8o/VT0hLKC/j0wdGHKkPUEF
/YFE+mLucUd0pXSNaEu2dWXVYzrPpUUN58lTNZvvOMMigOo/68rIS3V0kQiN64UHdeh54+9EkrGK
ZEm0AovaKzaUNA+CtxQHtBndxz+2w6D95+1mKI3KOtGYKrInjpAG15jCquUhd70H6jv3qV2BB3VR
ao0f1wgqjcRBz8okqcA+NPGtQIOY7l7UjKTrMrYU/xRYomINNdQq0bjAm5tkZl/YFsCe5InJAmGQ
03/f/NX9HwRNtnGKq0QvT9b8UyOCwxcPYXAeGB29pW1Bwp6rXA2VuAkKQu5UPjXHd9U+YS/AWN0B
Be2qPyZPKI79qFPxOardTWn2iiiqSnfglBzGPE3wMV0UkZB7HiPTNq0pr9O0BVTl5B39OknclkDB
XMHRf/Yhe/c4/fJyg7rEcZdm57R4SEhFWLd2M/iatg9x5pCPqwAexexZ+yuuFcHTeavAvdE5ImWF
Scc4+BVfr82MqHzr7+m6RvuWk2/IfKhMPPwdId294aVFlv/mymRWXmenQfHiUx1X4aIbMTz0mYTV
8ownExoPKMNnr2PBvaZbag4QHzFoOdJ4RDIMDnq9tpA30LN7fk/HIxh7XlfZM374lWta6ulHft5d
NYUs8MVcIpDNkrljMDTuNmi7HQ2dSZhKfgKzzV3QJ8X3FWm17nondWmwVHRHKRbF81WWWURYFbtu
bnRBNd6ffZ9yiyQ3REc3t/QwFxyHCgrrQn1LTl+yz96Vxfvu6yfr6AHsHfVPMKT5z089HE8iXEEc
9fDtxGiEPRS54EuTXJdxgBWYw43RcxFCWYZFh6tvTZJKi3ByYJpWPXQOLPu09NbaET8CMTreQJoq
8x4n3l8FRxV4+hvDEyp8lp/19jspewCFo/MWTF6HvhinCLsMQ7mVzdtrKRBb+YYBM4IDGt0FNTNN
lQa0+BEnONC3WRJVBAH0zbL9jkSUGhY+m/gQhsb3OkVStQIEi5A+awxBcTEPeQXn3TnWlkfrpoS4
18ckO+xl15dTi00WF/VgDaU0qcg6czXPoKySx3uql+HFoqu6ENPpNrlVcSBXrMjOv+VzWnCPPWW4
JjgGnnD9NtE9Bwh/ZZJWdAvZsBymxrm5pqHT5cESBX4kp2BK6GwBlwLOO0T27zqSbmgwzT8PRczK
aBds4/gj4l4zyIWJn0ngwp+8SEBAHnqFDoPlgK240J2AYlKBOSCyaSI8T+wPtKyZZhtAddRP/wRk
BxbRGEY/4UXqxiQ8WiqEl8ERZ6t2UQOJf4FPUH7JIN8MjUMlGqoQI0DqOdULgd0DuDqacsEbwnVd
WNCYdVHCsFDXF9XvzLn9h9DOF60oNvmLddyBi/nGqjVI9ab+rt4kH/CDKxpLlXk4JA//5X6UOAia
t4MoeKHDCMOrwA6VutDq+7EW2QMzWB9QXFjYDp8quLwyC0ykcTtQODOStOSbdfKGRpCTG6KZ56Da
1SUyk2KVA5tTQO7I3MtVjVIddwUUHiqEZEkIvA1F2U6LYslrsUatJYWtwA1i4bS+ImCU226Zm/vM
hXyQ5sXe6fe8+BjFcqlGq0V2uRrmCzcjojKZ2yIg4sUJgAi77qWUcL5FzopY2i68Mxk+8+rHyQts
C2V/TA0KtIL1DbnuuSFrQuDUxv2+pYY0Wx3LT5tJ2IojhMdkcvd0HwxUa/ZNEpDgTjFL3bJDws4m
vJNM9Wit/PtmS1ULtSTM78JvTByjiyA2IGS2MAaccrujvJ/Cfq80bPjYxOi9ARVzwOXrCo9AgrYR
5m8rzv1GKQLZapdYWFCXh+ZGYhwU/jKNGCEsjlWBgJlDZzw0CHwQmgnahtQiumemGOQKujaoBIW3
Oy2UPcxlNvJ8a8g3LacicAiA3CsIt4Ul0MJ8uhnkArPzDEaaZjD8pEmJcIOQOv6tzqGbcDdh8sDL
54NIYmeF9+Vp0Xx3wnk7d/c/T01IPNlBS3JVX4a06RoK++kcmhW4pwjM4GlX/2hbykrrNiGPoeCJ
qB94SlmFiDMpSUVG9uPzcJOjYHSv9WBvOi9b0qR6IBKgoFp5+Ji5mQBVLgGKyQkPLyUzwEn1JLlI
dRiXzeejx/E4ArywmhjBAIxtuJ8+v0t60z2JWJ3O8CB2FJeRvV5/pBistYJf26X1Anr06UjMGSOW
TrAS1iLgwQyG8TRyOaML6ClALl24ClX2KBViOjvYF1QGSx+8d1RQuI5rPJobbdO/HFZSF8RweSUx
tgxofhsCirEPGULnqOJ8mtO1xcDorMCBJyaDtA+sWucZEXXQuiooCVVB3sePvW2tZKCxwEL/e1N+
aWHE2O352cITmjgEadomhpq+g5+V6GneN87thaZf+orzKU78uhblYxp2REqv8dI/3h3wicqkBwxh
gqkKAIPLzdM1dsxpenLgyMC1ndPaoSs9ys+4VFGBLeYscliw2TYb5RGvoGu9Dyiy9DQt2mFSJXlU
//lqZbi24UeJ35d2/z04xQ5lDa16pfNW9DDGKa6PUPfb9kkEUm8mhXZweEc2SNlES1V/Swb9aAQ1
1VPSVPCBC/r1ZJ8Z8SPcD0DpxI35xYk9/khcB0QM8SueTP4pNvKEqQdw6joclHex+dn7jgdRh6Wd
kwAMHKnE0Jw8AJ/hd1jn9UtTgNRmYmCPsAgkgmwvV8+fHduwM0qTmfZNbOXbSWIVAyaq1TQTGCm5
I6c0ViIKFrq4jjmgo32DZt71ZGWN3DzoTDdzhUcHZAuyrX/gJ/zKmENFKcd84iZ72u9tEPAh/kIU
ZExm8BwOI2nL7ExTMKyyQclHvkfv0ZQEqm25aAxATkTlr0QEUi131SwDfmXr76g0iSCL+yJc75ud
WCAlLSJJlP8syqrheWN3V5VP6Tp9wIpLWsm4TDBDu4IcCvNiMn3iQ4Dth3Yrwgt6+23Ijj7OnEtY
VxV47QV8zG2ueH67G6TSrP5JN8YRD5sU4jmuF6mey9c5y5py5UcBwCloyzgOIxfqI1hW9/gKHAC8
jFAdkZLEddhbxKFrRzscdiK5gzoDhSAZ21ykMYPt8YuDHhl4dTpKl8QZzJuz9QauCvzPINSxcevo
VmrGTxs4B4YxPBMxqcGLOkhV5fKMb908+9qJPVvdB/JJrakPpJNM9Zjn1x3bluuNdovxtRZRwlva
btxxMgaKyJW/v3vX4wIRChKdJ3qf7idS1UL8dYS3i7jJTTRIeoJD0QAWeblIrdWYF1uvwBTUkxB6
ErW3FoPXdJO88cPzty/OKqA5MVCwJmdUqolY9H8ITfJNSaIBCJKpt6IY4DTUs5Axj2kZUsVd5vFO
UVTHIslPGlVAqwsXHwy4gdGwKnwqkz/Tve4NGNXKG9uB5lbyg1LXu+BLUGpXFcJnvk/t5VzfRJBY
/9yTTm7RqxjjuBWZk/87hvrWQ2/7H7qqSWz70iQm6HUA2f9ZW+yEP9v2TahGtcopRqjmu+A4AxpS
VKneaG7DcOTpz2TPDH2dENtPZ9zaY2tscs87f88eHgGIep3C3qN+kCi86ff9Ra3bdPKkLqQa/I6p
tHew9Z6jpF+C3KZFrhezI0WKsIzgbhXY5hIxKcpMoV71uSLpu+Fc/5NQ7nI/tINJSYZXFt7GceMt
wVD2FyhX8Qj54pwPb6oPctFqfvboA/rzsfMu3VD0mN6DY1HYcjWejYrIK4DaqA4mHGw3ba8xDDvL
4ufVNS9hpHgcWhMdL/xrZRq7h50Nl2XTseukzEgqEdXHkPuAJ+9L2YwdMe265P4f/eSHWMAY5fKL
6JfBLC7c+nzr671bcttZrT1f2BCTCmP9xjF9MsRE7aSY6RANTFR1dQwI5E8RM9PNLMLaqR0AzgkY
TvtZlu4xAlyvryw4MD0EfQGKRSvxOl7mm9lQqe9zZIKk9GclwnpKHECGSAIH6cZcBlz2yLK4WQ4p
iPITWqT89qclNrWr3Zx9aam+ksYvHvJvYRpLitIQSsybpg4AYzuHEvaULVfYCQ0h+RJ2gAqkd0pr
ZMIhfqFzErWjCF1ww/c13elrKVMslXhrTXqJcviUSFqMAWT3Hv6mfqMOmkB9Zzmf01kkgMYszHyp
UaYLzXYsIBM/YKZTqaDZGhdjv7yKNNqfZf0AcT+sLivIEk8lIyDAjSr426nRntdXmY7Cj86mcF+P
Fs6N74Qtj9An9wiYrSgItXYlgdf1lRd3khoucEXWNDD+WZ8tkOyy+DpoonQXBjiYsIys5a9zuCZi
TYOOVesanDRGOJ1VOhNth1wzONeK1fOJjyslJpvgRCa11fiiX9EMBw3eJmw8X+7GtheUDJaJmIs3
91pzBsGGKj6yBlX1CETaY6OqvTq7+m/PJVofnV5VZqFp8Fpv/sqXZj/aVYy/jtKV8VJhKINHmotF
T6aIvvOkh0MaC0gjKE550yA1ls3s1DBMTa3dlJM9UDiBQGpV7Cm7G3eqZv8js5v1TX+A9cCP27vD
ZlzQdiq1VFUebVekY+CwzxD8lDw7ynV0Mu2fyLgLr7xVZb0jwsgYSRSoghcCzsu+C39r4EVCaIyF
koiXOBYY50A91ViP2tErZCMozVZ68eQ9Xqu5lJHJdT8Za+wLfBRt5tbevUM7w0ybs86fDgZ+IRNL
P78ejFqlpLyz5VTv/rDMbGV6ggHcu5gNK3ghct3M0hdJPd6B+wSv5LlY85TgYYoBUwT13pHMYLz3
KnL2ayL4QQ/f5/ptmNedgjGs/cRUvOrfUmFF154SBcLrVEytgW504RipdSkhi+oIE9vtRlUy09Nw
GWMCuaoZ5jvhoJ2j6JAaoz1XBSxbVFHLMwj8tf7k0UL2iB2LTuK39yZAreVaJKWb4HqUm5ImnLa7
RdTqBQ+X3drkcAyAoGuEr8MeDnFHd+TVXfvK084ZVDMyV6pM11oO8s8CRetppW2op7qKMxdbTo+e
IDgfqc8SfhXfjj8HsH90dpO1oPNp2x+PUaYmgAVtoc+Y5A6IyWy0OFPoLQrhJpmpxWXEDAK+4ke+
qANrZ3yEUfscGnrgfjJpkPC8bPcalorBq2/OvRgtTiLZpGF03mFc96loNOZpgTwie0Ew7Kr2bL6j
Ik1j4hCL+Ca2/8RGHtkIvdoWu0KDhqi8zXX1Jk3EDeI/Riedm5frBWVHPOOzGO5H+HruRnKWrMVJ
S+6WWYHW34qur/IQ/gHRLYZoFYJrHLyps6c4s2QGJD0mNS4S9FquD3V/A/MvTPXwYL/bwogRYXIQ
SG2HaznUJBkoqHaRH0XpUtu50l1tYbdqcqO3JViB4Ad86GHOTNvtHk6kD7/fh72wMwkrKUj6BXdB
VCUy1N+n51mFWm0iEaqzX9SglxgcJFIaT13fITtmu6GW8jt1yAIjSkKJqMuHxIUMXi7iXhlnxvXG
878IjEg58ojm2vjujiU/v/wXDAOymqCKd+cWsF+c35hINikBh75D67olPa/YaL/3anOczd04TAeF
N72wtuU7Oz2zBpQYRcKQTvSaUP26JgLIqZnuJOhv2qGKsSUlxiK6tEh5n+3vdFSEU5+4gZyA9Py6
Z7bwS1e+tm6c5ohTO+9IyRGogeJ/MCs03YM9cwuDdBJk5cPaIg+ykgNjFrRX/4eI8N18qJkUAox5
4fpWz8h1g7g52fe0BtVAIb6jk0c5+o7jvl3jYm1IkAOILXGv9w9PX8nawLrwK/42K9LlrVrN/fQ+
w7rrK6i/41+lrli9TzC1RvHWrbv74YsbcR0lAuBNiycc88FIaVerxVjjmYaZaNQxm4Ai3zqCq7hM
e2LrY30Nb+HiylUF2U4jFWFRG762NsZpiYYU/VLZCixC+6CJEQmMF2WZc81bFJd9XFjtVCSPDoNs
0Fe6rzkhQ/HuQf5drEPoWV2uchYF3++lmXX47nUrY0Fh3x3ZJG+sO0PD8sktntkZKJYmdvX5Xjtq
VtSq4hkhf87nkjEohMJzgJKW2BkiOFFoKENp1U/tT9sLqrdCjEpjOVUzDAzcyaBKJaVe36rQKFC6
7vaYdAyR+5WD5O0KNYM/+chTk6/NsGy7h2fvajxgX8dSzjgp24C88f5D3J6eaOWj5UfyBEnjVWGG
niFghnmOjdEKEEAOGcZ1MQkn+xoTUJeNd//AvG1XGyzjFMX8rcpTV5VlT9fSVrxLwuC2PWjKNFz+
Mv8RZ6tMX22xtQl8ZlF+FmJQg6ZSQutrMXGOrUGlIVL2gZodm449/RgdkIFjlyA3GH8QWeh3BeU3
cT3UO/9OE+FX4OccQf6xh+AKhcKpipUzkNPvuAkscE4K1vjSSIb2xGGruTGc7BBKaCLLAhWE79eE
DQs/IIiI/8KPUHbXGVhIVNUy/gR/+IkPIU/nlwW1d/IE1SswiXmmmggbE9SQNohmTR8IvdUxyM9v
b7YcqlXXOkb+kpc1ONI4BJgAwQHB9bt3NV+AnNkMV0QcdXmrkbtFv5o1BMjZveK7CRyrV9iD6Fj2
T0MmVgX2bNuTY2O4QmzRhyhnl9W1blS4Y76uHZvLBOS2F+YHI54D8sPCTtq30yMqWH7GitsfAN9h
bz6yidex8gfLrJcJt4/XPOQ/WmSUCsv7YWXNRXcX4nKJB46NTKEri1599cRwyWPCp6qHn5qQ5wT3
dUNaLnN3klwZzb1Vtqjwy1+f1XHVOCjFGFy/UbEwKtV0kCJUZu1OBBLMAnXaSaBYXdG6JiBOZcqr
mluSjd9VPLIrd0b2ksrTIsq2TEL88z2+BGbjGvg8baj+h93J2xaW0mWeO3dplzdpxXaEZ40uA19E
zM+C2ttbdwJbBf/yKa19X8hrRn+NkcgHp2lpMy1OjDj/Prpcu4Nh14Oe9p0+K5fcDrLBrhpVlQsq
WEE2lWvpizHAzSbxffjQg1fHtvFsrHlowAkXGJ3M7j00y9eK6UzI4ymUAfgJGrT/rq4Kygi32BRY
nz/JiWXNkhwhodl1P5aqgDi1TxZxGdM4toRs3VPQnkC5qLG2/MbO4pNFMeYHU7DNIevpZWpGeI4+
ddm8/Njnee62ZBPgR4hI95M4P+3c1MuLGyYzpQ34f9HIc24XYyt8voo7fIORPo2FBsnZwLKPKEfA
6uUyPnC3OAN00mmDAuY5FbLf1V1ZpaTw4GKByqpn4dedR3hLpdCqe02cQC8ghgbC5lAZkVxIjCUk
s83lnRjBFqJb9pIM15R/bAtEV1H93ZIq7LkWc0s8vE2HL/JnhMNH2/GOosz/4OANANQc/aft97VV
fdfpxnoyMBJcqugCq3Lm8eXS4c2EyFfBxPtrSmRfWc7ExZdm4CYydPo6ALvy+ohY2Y17rzBP/MYg
gd4lHmQqNwaqCAwyWqHVVf92UCUtUVjk//BnieFDT8qAp6U4528O2CsK09uQFjDx8nv4l+okuCtC
vNoHcXDyvQtdBmDwmjaXf2u5282pL1dzmdcPz1fwAdr7FyIN79wR9A7l0zJPpcms5Zj1TTW0WO2c
O1LWsutANNjScQ7sOfaqK0dBBsb+8WLyF3/TIZ1q6/IBCXVvTvqyYbNOfp+AWYQ73ArBqdcXoY6x
tenNhmXLO49pZUS76AUB83PaDJ/u904MUPpiBP5ObmZjv1bek7Y4ZzMIHG74/GlpeCRk85u0QK7b
ZPNnoScvApSPEWKh7Rx1b1pvtrx1lSeCz8Txq7YqKFotuMcse5iVEdd/RbXXj6+zfMxM4S2cUtOP
cDjEwNs841KCI5SeAj2G/8qG9Ao9HQC9kgQXnqEffQGeSIX1DDGmG/VAbagagk/HnnuhSw7V+yDs
NDcWSYyVBVasBngZmBrWopiKF3vW79petuVTZYnkWli2U/jSFjL1Id5erSTh4vbMHLZkP9p2WhLb
1mv+gJ6PZjHxFwcAwg6kRBLZubDPLXisIlmDL9wq83GES6IA7T1EV1Qvmp5l+6WyzBvEcgDsyOe6
Gn4PsdGLA1IYlyQanhnZToPhK86iSH3bz8lRLtah/+fD8QiFtNkGPBUrtzxRKDTbJbLttx/WJUn0
SLqf/zkPyIzI55C2JJwcLk0QOCNclVEK19t934+gC+R2y0uC+gZb4p1CEnh4xjlmLjsHkMSROKmY
Si4fVejYlaw1nUj5LwM98AVbMo5EKwRhgCsok8WNFowbc4tAvkyV/Wo0dYckqza7eF4acUWBvFJ3
aCgxC6B5nCEOtDapMNbsNTxNBi40vwXQ6tfZTB1Ab8+PSNW42+4fcLzunzoTUeE3AuIBg4zpXjMP
Vs6ZsUJK1Pt/hW719MpNgupLxpBAL0+5B+PvlQgc+TShJlQVNxGs9r3d2bdOxRRUiSLJUWZxuuMa
7vlEKfvJx5LJcP170CcLzkmeP22NgGIrOZ659mIBantIKALdCrsfU2mZbk+TICclUzvjtrOO/92l
wNXw5N+pE+6NUQO3SJVrMvG1IymeUjQPdHGDem9P48dDznWa7Bp20P7QNCBU9LjRg5/MC/QM7+1d
BAbkhbFtP9Qk678mCDZIr47sEq+I8XPqcaXNGUbA2ToObKjWdx2rqoZ/0jqn4nGySpt0c3K+boLX
mCntLAll7PiN/7/PeafqfbsSkDKRd0W8TcZ9sXKO3basUCXccPA8wQZLzL3V9IMb+ZSG3zudR9Ep
JLC6uXDD6XyjpxBOFWPAX53F7WzOQDPYZoQr1e7z9tvwxl4ofT/S5UHbuNcUF7hcS3Dbuk15pMDo
rl+tq1+NOD3M/Bejvx+s7vOaFSr170AHgzFRBoG2T1KDOOq1eaktF/ghjk+QADPpSw0arxPJPIlw
F+v5NmKsSZwEILqyPU0RBNPq5LBrkbn0EEh7YfHid3/kC5wvhNWtt/IT7Ysk23IIV1J3JCASl1ZK
aSxtxVUAQT0xqGEoMXfXkCG0Pr3758zB5l4DuBzsDtZXv49ZgPTXRgkOPRapOaIrWarbhTZj1FbG
AmLs+fnLk6zvcH1KropkJKIzKBm5PU1ID/76QQq9Qh+170acwuxH2tg1KgzKGqwvQV+u34hDSEH8
dS96VikThAtr6TerA87HtqMsio1hKSH4XxuTtWpyDcvOS9680f/9wLDxOsYN7pIkLiv5w2hBc8wP
i/58gQLljHafO7/o+3pk8/RKEGBoCJYbFhU76PwHymI1yl+GmFfN3m0AwVAzpz3FVBYjfuPQgmYN
u375E/U9V8y3q9T4AHoeyjHdXz9k9lersSgUI12TTwKiW+xDPQiyWQMZTu9QiM3gyAVQ3bR+rDUZ
SyxtfoinhaJcrWuamsq1e9rMV+c6QsA6YWZejrdpVV+ZqrbIkO2wf9BEXOJaDL2wSQu5pvnZ8ezW
TOUhvNSa5mkm/KBRi4WV039H4WoBTYQ46YnUf8G5AMSRpFuvtPA6BiK87B5/LahIrrIfRzrmWZlS
7tXrU4YZ5yhQyopl1ZXBlMwrobQQQlGb89ihaqpuc7vevq92r4MQDsBn8ae6NLBpevyWlkgNwvAh
EMOjkweOwBJOGtUkU/uNV3qDB496dS+DnUehv5XBkJ6veEDDgkkc7Pms4o4EyCl4RFoglyS1VK1M
IwIBzXPc383FB4yhoeRl06Q8RiWXYrzvo/jPInyn1tv6zFrW1bOJi+wqZAHwg6FE7jZv254gWsXN
ST2yEbP1mthDjrs80FXm28dsrY17a/jBaIlviW52cJslYfltq3HHoO29xJvMAH/c7C0UQ4EFL66t
W15q4azlu6iI1FiA7oc8WFxk4Eq3qnuLYJlkdDYnYTkXUkhDrX7PIHg9jGLOMzQQcbKyfB4npg+c
q+NDQvcXh2HImhq93m6dpIwy0zujffsTQ4pNY1FecwL/AJsP5IDBcFqSv7SfOhlEGwjuZ+C+MxXA
gTEJ88L6WOftdyuEvdqNX8kMrGrWwpmnhgutRAaVCsMPkueNN4RRudNbPOfo2/diapFNn1daFfEG
x+Vkpl0z3jMT3SGm/KNX9cUe7+9Jd8F1DSgkFG9Voe3/YUl8gM7/J05XhD4NVDQ3ij3UlVPZ00Af
aFGrgGJtjyh/74br3KV2OEShG40b3pq98VKtKWT0n95R1e8zKZoZSHCKkTuCqdrYNbcgxPTal717
Kwc0dZ1Xs7W4zdl/d+W2xZvkuKUN/AZaUEEDUygdT5Qz4xSI7v0Ax/FGonGVYxyz9C9luOR7k0rx
zA25EjLxY9uhk9WUn12eA2KvFxasZUw8IvKWx0o+oZPH4lzpQ2fTMFO5NNZVrXkxx9wu7UEFauIO
0VoywBwYMwcuT4eSZHyYW1wFJB8635N4J5CeCQltVvnodRBFdrhD3KcKC3BWAgWK9ZUI2eDf0TLQ
TG0b7T8TfeZMiuapOd73rj6/SAjkZc4l9S9pDGzRom9DH8lCwAkIDHTm8VEwTCaHW5BA7uBT1cJp
LUkLhf4OubGutE+m6F6wWIiyxE8moFpL413t0zjUKGIAUftKQuAG2v8rfV025W/SonzUt97WnsPo
V0FYlHZcR2wNFKgwEqMnmP2vLocs/uMtiNZ7hU0/3VsD6S6tkukcIGML6elYQ7sYYBqCVOLIS1JD
0WzSBuqGywMDxBLaBa1YUh1D6aJIyC3OSmukFr4yNIdHi8jsTc7SVT02SWRKPkR18Eayr8/AU8Bd
l9QMTmYlSE3hvE4PguAlAs/G5tgot7myl4PP+vPsbZ/h/5WqIqkraTz2v/JvEG5ev+M3OERr2OPB
DvqD39SelqdFgAOGqJSXcufA7VLre/ljSOU6T0096pYf+25gw3U5cn4tX9gpSJaZh0QjZVo3bkez
DmdH/Dy/K/TTgRehLrd9NUJ/Psi4FuEwHtg2rjwnAaANRh5P7eybi01GopAM0/AgYfegQNBpiD4A
A34LxTYLpqRUXRaeAGqUdNluYr/zNjjmEEo2wO2o0pMpJI0JSK8xnhX6LpCCu2UeF8yXttWBLD2I
HGFDcWw8bzSSv1isiUPJyqzyAWFkCG0xF08T7KCpHraEb6vdrfEsVj5pfAv/4NXCapBYG3O3qwAa
foHhUfdbgNMDBdgq/oIklVIY6S+BZmVZgQXlqybJqFLwMMRPZ1mEhtAH49cUCpk5SJBwipHr5pMn
XW0JTI8Vr+B6F3e1cvUSdsA5j93ycADbbrodxA9y57qXU1OlUSdX+m1SjdR29Eucjq9/1TjxyITO
b/EJDSTpHq1nBPqfoph9f+xNRZ3xO/8TX9BEm9uhfX/Nc8xI7GzJ+lalSoXBsl57wlnSP2Pji+rL
QZvCPq3GPGvkmfs8V8NnJY4vbMPoOfe8S1S41SsLLqEK0LYVdg8COEbxkiIhNi9MvYiSsv/R56Ny
5IUt3NZoUqq9xEN7jxkDe6PJbweZnIC4j6L+6/6hnUqt3AOhCNrz2M4hOwc8letWtz4MeIp+v7Kn
sd8R0PL8nGoC8KC3+gdoXxxGVVqLlvYYLUWPmeYjANZn/R3zrZ7KoNBoBDUemJhp5aZoCgu7i6pg
MyMwLO+27TioUIoFSgdkuZ4Cny8Cp9CUOIVkfdRau+HQ2Uq6Xce5wkBgeoY9dQL+UQNjFZMMYoGR
v56dHL2O9PQ8QBoJxjTNAbipq+aWwfIe+wOjgwnPchBqFDdrfiVd9rbBP3Ev6BOc3b5g9WYvyK90
Gu+jQLCClz/iRj8qwizzyAvhUcN1mgoArXt/S/yJjRY4c9fPU+Sw/bGVGYlHsNC2rHBAbixeRTw7
FfUmgRLfQRLNpUNlaqaAVChM8+ahrzfBzT71VUkDRlIPBLURdJYI5HtzUdZoi440MO4pIRJ+kbka
UN6EYxCiV0oqLGxE4AuA8ZWjU3MoUGngToM1LV4xcEAB43zyUlBIYej1IqFfw/nvjtebbYzpngBO
49ekUwfIWHOEfwiIpT3pfCg+qwlM2YBCAuuwSMQExNihKCAKUieRE90qIh8rUYLInwxwMtwvTz/E
goCzAXdjZXhVbGOH4jPsa/piYudCEQZ66cI3hjTD++BMiX5V/v0FCtNL942+6C2yl1abUiNsGiJ7
4mBosZq0DJTTdon98cOux69OS+KBUoiDen34+us2L58hWEzNbsVGGD46Z6coglAObvx4fe4SThVs
Jv0sXaNuRU25m2zyH6WA2nAiN1oikYmn96xybCzu+o4bjZw1oUi1HNT5rA9voogseIOZR4w5gLMB
eyN+wSeVbgYi1Sp/jyU8AsnOcMakrE/J//5HoDqLR0D3tegfaL50OauS/QFnEaIPcXaNDif6KYH9
1xxcyEMQw+lter22Q0+iCg0pdq7D9hKw+jND8mQIGWDKitMfO276p/CQ8ky0em8Lmys2/NC2g/Pn
lP8br1l62etxI+h5/vb2fJeF6D7U+QzAWc7LT4DJMJOvc8KFS1X6Caxv2uxmHSukOs0cmw5u7lsl
jVSv/CofINCOCYnHaEjSdTT6jQDIOd9wRC6buCG7FEsscxcaCffvdt2p5FpsyHH0v0vnVsddaXYt
kJAeMjEjZsP2FQZ2oWNqVGtO4tsS9tKPQFGVU6vSfgDhQDMO0QcYM4LkOTtzNwtaWa8eJ5jmhRCA
4PqKuVAfdF3hdc845WJs9auM2BXXVWJd4lCfhEISanSU9YgDvY8/FOcBs9k51hYxneWOZfNMQJn2
+RISIg+NKmkiWa1ltcFedrVVvRusS2JIAi0xlpc4bbc465q8XKpcieNfwUMH9JrF8I8qFFdQuIi9
/bZ7BjgekZigrhM0ckgPBQ0XS9pmYosNwc1tv8N4LI9uhCIpvcm7ZVM8AT8y6JpJWKU7MtJBL6RF
TEODrjmm3zj/RrGR2hnA2+NOoDABlURlEAwVxXRZgIGCsKgKEvNpo3SZU2dF/3YqtA1egBIn966+
0wxZNEfmvkZH6bJalDe6pzX+ECaqlNVlwErNtvnJJ/RvTGVX5UZjR2YW0vkmu4WSNx4G+fI1lD4h
Jy6jIFVWn3QBwvh7USmjE8PKjH2uCh/xOkMygRPjBQ0t4QnJ94HY4ST6jaaxkgqGvP127hMg0WwG
0ec0DLzlJak+7yoD1WlhKxGndSIa7KKI6pr1vj54jwppbeG3kiu9RSq2jrEB6e+EoVG1WSFlOjGe
wIQhmC6WiaR6gvY7IzDwfZrd3gfUVleXCct2kMTBj/grx6Tql+ENwxl5/hnJuWwjCGBklUypp1dz
GsLVj6/dw7AWp9k6sgZDt+F5oSvGQy/1cly1locZWaOPEGVTuZ1F/GI9wwW3r4Wfpc9jMs6miHhS
ixdPo+10gF4MJW9/0SMuU8Zy2ZkhGkHzfC5cCkcvIGRsgYT8cVmE418u0aw4ARJqeC+3cZwlJ2CZ
60mzy0iMV+g3a+deGm0RcZJEibkymyYyods2g/Ahi/axgCIeCOJZ7NCV6kg5rqh08xJRx4RtzHjb
4zmI7C+v7Xewdpif+9NYqzzV4q7j4LZWG8d10WFbe/FnhuK+NhwfNuVezHYKt1GAYeuZ1TMmX10n
+zdfZJhNf33awCBKDIaN9r98slsSkSLcm9FHnjRFPEon1ZNfuV6hbPC5eXcyf3jkPc+61o64nE55
3F22C5DI/SPMix6Z0jMDxKAImvcKvWnmdJM/yqAygz6FQzaPmJpUlesQlou3wMifeqKo9b5zWOHH
5AUy2g484xEwNZ0PdP9ZCQzMWVuZs3r6BJIjTRkyET4Y0t62Hc4F1uu3pDxNAgxpOtWg6XDLUtP4
4S437/SXelBEReqV2mJLiyp7tpS8GXrTjsYU6B4k2ldctYpAqg+Na5GFNT+4TMse5e8CyzA9K0Qz
3pJfmRXydl4hrmoZj9vXmQDNFgzPU6Ap68pXr7rSWqfsIFyG9q9YlacuDx+VWlgdOE10AUz7fRej
XryeY3uCJsqF9/12QME7bldNCbV7KfEGRtmqwhBk2kcukGHxUqaY35uuCWfve93FKiLK5FQQ1q3z
vryUlxCPKlgLhU/zTpqaYTRlJHEhsubxSfPeonZEyBSJ49TO8PnoBv51bijb8oIkO2XvOjVbUEQ6
hrMsBLxirT7x0BBSiGP4gPx58dpIuCzMd2dkDhlvTZkr1RW0Y5WKE9z50M4zp3eDITfLn33u9hDH
fa96+mLNdP25CTL2+VNgSk/99XXiS9SWEVfmTlz6n8WMzilJ/KnBaJ5TPxOAKqAcEnF33CBes2r2
X5jxJTjQ7NDTe9FdbfViit35RLTepmVpeWIDddib6F3hP8IWjPRBu+2emM/9jnyyjHVFnE9nxdwY
ghx/kdHn9S4zJxt3Nq7wbjqa5O+4woDxZlZnR6O3u+ZcSqMfLww0WUfojyEOPWhqAzRRpBDJCJNv
Lt9ID5SRrzgIM4RMdc7yVv3l/1LpnSWx7WC+UDdA0KJIgxjWumOPkkDvMIRt3yLPON2wbKQoSTNV
S+x0SviGOK1xhgiPNi+zO4FQ/sy3K4AIDYavLQAg+uCX0ivIL7TQ8yQOFVPL7QOmzVVzaYTM1z4d
kpwNP0WxLWRYJ9fd8ujgjqUDO9zamdFxGHVVlVQrxM8XWc0t3lyQTxa6nakLFCAKb+52k5kP8Rhr
enAfEhskmvG+6C1r0M7vc9iSbhI5/3+Zt8eSW9RAHV+IE4cCf6crxq/WUq/+tOuzV0AwUaUSm1/O
+YcjiZ7s7qj9d6UH/BPN6QZfEGuoqXIka+z0epT7VjWfXQbE1nd/3kR7f2UPxq2zbZL3EzD6xSB7
CfXnDJr3E3EhE8Fg+qAYROOpBazV4yVOnPfGXegRoBJkHpCvPejpm1DCSa1TyL2XZTQO7fLCaH1k
VqoD7mLwUe+YBGPsPfMxyi/jaNmUuZbU7LuRpfGnYMSarmcL92Wp847gTFoN0NHEFSIeppc/1ANz
Yw+hb/YqG70Z0w4/NHGT6hWtm5JqMT0NPNyfhnhVazx1cRE3EzTCQlLWoD5EjiwNDacjpGky53hq
d57s0vaabVcY37yXOp0tHSQ3NLv4zNkgTvM5nx2hhNQa9EWNHowe9gXGk7zr/5+Bn6wEHBTU8EzN
m0VZ2w5ybLynv56SEBJK/6gbwMGQwL/VC6fTZ/WIXszKQcV/+sd/3q7ZrBMVX6ISH1Rpxk1Z1McG
0gG+KWgCTjwZJZz35c7sytylJIrhXO5pfJwfyvBi+UhExykrm04k5B936tLsAk2kT8LHdNPYfNw2
JaZ8EqbsSmB0tBxf0KWPXxGrt0/XX4fbf6ZZB7PtCu25nyajPF+QrqGwv4i1aARn2ywGOzgfwLby
GrLeXNUT+CJyA+GhqTGp4J7QFP79D58Ph7034uwmhNbJcEW4jyezkVE/89ha4rM3ghR6HYYerTvP
M0SnpwA2pPJCYZHGaa059Api0XDypakOCVoJ7QWQ8UI5MoC66ltCeHReHWPp/swgzywOQIEh6kte
rOk55wrUomya4KMvAvJo9GTSGHyY8SRe7ynspYNw81ty/BOuugK5s/DZahEf3g7b/bF+tV54Ikoc
Xx0uQb8vbOhjUPos6+wOXEp/4GkmCq8CvrKNJeiIiVx8nLUgWCLZtMeVfEBrIjQplngD2vu/+/7g
LHyq30n1jg9yN2J0v1q8SDSSHTdKmJEuH4ollm8exxn+3+puvsJiSk58yRVvdOb8+K/ZBqb8My7t
pgytVAOMQook3vcU7/QwHuwRVxjwk1qOE32oF/g/VCR9s13sIG+XH4Rq5Zl+fRNaAHXrLW25NcDe
iuvTlPh2k4nAAGI0FDLNWXwlsNt8wve8QbOtHShn4wvuLWJdCwkwTG1FfzmlY0sxlPlNRPu1JJap
m7lYtfSNKEQJCfDKGV8emprrKkedBXc6pCrpgewN9CZ9oMzQg9H6sIEp11yD8Z7UBF20A0kgKLDU
Xk9c2fQ1t3TXuTr1Awhm7q0DkoRXp05XCVfLJ8Jamcb4HWvm9d0EW2hdfRLG43Y2O75K+INXd/A6
14zwwFTiVYfBmUuHYAFqRNQRpvKH9dGGdcs5yqJhSBhXs5Izf1EbTBIUw2bcweWgmL9e1YwSKFMa
hnVr2Wqadv7UfeLsxuG++xIocOGlf/JEh8aeTm4u5Bf261mtJeMu7hx+9cvwSHbOVoKOA0sq4Gkv
2Q09h8slhjjJK1afl/SD91RGTP8W+0YvVWa1Q8S+jPr2MO31CPq9FxjcIPL5tZ8sS3ds4BWZFWrp
etNbqR73huQak3tde9OsU6MwXx569YrFa9d+Y0VhevQuvgHpJnoOkbCP/0xjqOIj0qbX9rRB7lXp
BCvC6Tg7+FCca5DCqaK+MufHOmBkQz22pqR3E+FvXV65rNuq16josteXVbR0KGVvAkoUXKUp7SX6
jOtw8862WsRW6yoRB3W8NTQEuTBm8GufKJHhfviQuHLUSiXlWqQObM0Vri+m1Al/9pWZAB242Jok
SAHu2KIbs4UirgDoUVmNOqx/W6C97MVhBbBfAaBQC+yuGomioiQONH+aSbJwmvFQXejmTjVIYHxV
OTIDZGajBCkQZy5X/RsQoCebsnzW3ob4EbDHeCCdYpSu8UjPuXO+FOoDs6qfeDaL2BzUrnHV/RGA
ruAzFSnLkB/HLW0Ah41SdxFeEmpG3ZIKFgiUbr9Fn/Na+phePWPTBJ5FNLLCe4GpEyRJc2OjqZNf
ZTzFPXiHVolX98y9nqtdeWyoRlAejDuxUPECrVYK4QviscfFeSW5Pvcp4W6ohQ/jGHutFu5LEdJb
FMglx4AiCGitmqhTZ7KBwynUhG754A4VnyHfvT27u8rDQeS92bpO7SpAKcpmVbcXNfcMdGWs8Tff
4Z7bLp2pGUEZKIiWGtsxvEP6GVTR2dzAyrpoO1LAEgxbvHGI1lGs4yapp5LFuLzPPmKOEsaReVoO
tHqLPdFJ63DYhL1LZrw+VOm4VIKg3KK4s26jpkGf3iw+wqp3IFTFd13Zs+md3F1dLIzxRj76t9Qw
WnRIyIOM6TZ+R2dVFevUZs+KJKm6sr4qUSq1G66lJTiOoWcvcFZIKUFMbuNoKLA7vVAGF8/NW2pJ
6Tdvp+Pv1NN2BEwtSKJzIJGGVK26+ogAJaaXGBLuDjjDk+qbxnrYDxYDO0UUAV27f4H9ClGmdwKX
QVbRLAZo4d/gHTRJ7I+6buvdw61oKjr1/1p+ZsZj2IkgZ+KnN5rWoJR1jpV+ZYE2X5maUTvzZMmw
hF4G1bA4N5nkQvhwbC7U9sOiwIq+6ed7G0D/rm5cZAdB6c/ZMWD8POvwFSCNhcXR8ehDdtdLGG+P
eNeU0KT7yBt3r3xO0ATXMCFFpERCHYFD5WcxYRrtvmWlJmUQcNjCiX9Rcjx4dWjdz5FSC2OjaRTE
FbQIEswkPOwyNavg43sRaQ7SI/yJCnVxIBdDsPf6jFXpKsZYvlvHQUxTGNLKqdBbBvdvDTvd+5T4
t3662uuvHCq2nb0+CifpzK64vHh3daDvPiuQZCP8o7/Z/vmBNQyNUXGhibm0WPYgt80ij/XXhN0n
xrGF8b18ui4HQOPhwAocHHX5Ne6cHdB1AGf1DbLsqk4fI1A1IHq76127cEqrg3wzK0cE/6n+IeqZ
0H0kwPmDdmAe4t3J+73K2EorBJP0ZzKLHwZ+aVrtV1ojas2w5hDS5r16ThjWiG6pjyPhmXyaYgHs
kv6wf/FJKd134UBlSLaSjnaDBfSQUU3rMJtA5RLAXa9HUbHeiqdOEAMkP6bfb/qYx9gD7UJXBjMI
AgJGSPSlck0eh4ihm0+AoaQKO0UzQFvTkeKZ3pGO9znfkjtC3c6Iw9gYCSBymKaL9qtoj5eTthtY
9hTSuciyoxg2ekJDRQKcRG+rjryQiiVEKA9ov3rgis72eI95b6CKkChiMeMB8JKRFiXScLKYcJU+
T7p9lRM8ESyUrjl49buf4KTKiLGTpItqI0XLKRExQKx1vyb8eCNTsCiqbFTR7eFZL4dRvMgXxgxs
CxEfxhxR2c1EqUUOzRwKltfnZvAX6tLBpL6CjSoTHKWvEusuFN0da+P2Q3euZi1wR9Y4zXlXxNks
XNuh5JhwhRuJw8FkIryZLt+jHOQuaVp/9t8S7hn12YUOtP+R9aP6lCAM0dJ0g/n8PmRnNp+yt+bS
U5nlTOT6u59L3S/lubywgguPvJLqnPC13I7tT5NabBkIbSMvaMkWxDMSXpXNjQqLC/UHm3EYPp8P
c4Hyki97Z29l+eg3ZnLmOgoi+vcaEmsPeWF8YnZBNilIPbMHDzbwiYkJk9PnVXAtSU7283n2pf4q
qtCAYFxy5ffq/IbleIF45Z1yh1WYXwHRfT2VgAG1CQwl+WZtY8t2E2ij7a4PHug2wyFJEogzdGVm
9xF1cbAtJ2GMkAs+oXMynDhh7ujTxGVnqSSRUyOwG8v6hHEc3D1FKFoWQiXenH7n11TDpUm/Gt+5
5x9OXKAh3CFrQICPzl9OXnrygCaMro+VbKtekrLnn4RTuXnyrHfr2Dt97JyqQBkRR2WNFVpSiuFw
lRudNoH29h6pOQzjMmjyyNd2XjD2W0qeuJuoeg1rvv+X91KLA3AcgxUDIWE2W8vWcbYVvVSuBsps
R7Li/JbCzBv8VSLjQk8zcuONcVEXgag2RU/jPMBh30R7bDO12ZHyLBd8l9R9Epdg3pKmsMzvcQcE
/BshgFcaQj1zDttttTXjq/q2OORGmWi7CrTk72/GVKyj+S7BqngNG+K70BNrbzwEM6h2O3Andb/C
QUu4ItSmiQmf7SRIRrWZusWqiioLPPHfrIBgnxUjzCartf2a0h/KxkzXKMVJPt/x5FRWijgBPbG3
a5LWavKLiYU9W0kM6N++vOTgnndNDbVy0SFBVoHVDw3RQvpIptkFhDglzD0fC/BQITZcmgM2bVtE
6QBWFzzxuWaatFxLuqt2l4MS2aZMyDQEWUYCpDOwTgjLXcJfA1L7xDwDtGiXu4yl1+0ei8Vc5ja5
eotzBMkHCgA7NOiMM1QXMh+vNl7y/XJza7wG+mvfWEPaSkAKF8xNKnl880rh+m6My69g5GX297Vg
uG2ZsJeeUz0s9tdTyMRHioHJX3YhSIHx2kEZ797/Z4HGYBTzCxzLWojTbmda0PCXdJHwtv6j+Kd3
DCGua/yO5cplkrkWmggyYC1oRIgdkh1Y5iFV3YxuEZY3gsIB8XkJels7tjTL+DY26U3TFJTpWgoL
t+09ISWz4H/wwkkCMBYKvGICOS8cNHAQEh3CFvJWxtjXiVKFZgYowQrikwd96pmpFsx4quEopdXI
reN/M2LkdMZKxGwocF1QOuFM7HMy+fp3qbh/lVp+qCBbIbWWnwDOXdi6pvv73rQ/sYjQqRSu2wBe
CG5Nj1neuXpC+xq98hA0JcuvEql+v/Uf8T63dkdzBNhF5TPz7wOcQVRYc7T99tBaD4pDifS1nd8e
8CpgspY2aqoQ4PGw5hr1zysXSZYz3f10gvACbbwFu/clEfuWjeeHmhXuKupLeOP8S0ZvxSU64M0W
1DJV+9q0bZcQk3j1pmztiVNXoeRix8a+s3fCyM7uu5PaDN1ZoF/O8cb6KbsR0/oom/nFf+Ix70yc
+Opa4dcDSHzE8YrIVnuNkKlwgU+ve1IAswb8b0iFeuXGtj3SCwdbRhGPbmkKaNwOQi2qviwHbcrn
I/ZZm0Blmvy8b+WISocu8VgMdA1enYvwx8GOqgKW9hoZ2YGaPx3PN2D5DjSTRz1DqqtqpXrrAYiX
ykjcnHrJFqG4OCWeIJXq85G3a2SpAPU+YA7Hg9oV/j2mRgathF2/79zFCXMBQ73eFqjLJWvYSTza
xKEjjKgU+bi/kSFzZ0f1SLjZHv22qvQXackNnacwT6BPVgfIHNpdvKm3ESuKoP7GuM4vOv7GoTug
FLqcUrENctkMKfdbvlPAKpM6X3oYkfOa51X8unngA8gfBHXgkFJwLh0QMGChTVnWfc5dh1qFYDi5
NZfY8Awb4O5FPtgwEvCYSl0o+cm0OooHAocIXl4MvXM63h9nDJTqrv5hnVegNptEKuP4/tFsvErO
GYFM3b9i9mdg6NztUE/773WPRy3C+AZn511M5Xz2DNulUaM3VLtkdfOAQVvi01hy9wenAHS1gpI1
9MfDbjB8wq7HnZ3Hw6JmfQU1m7ZuiqQ826PUGk+Hu+EaueG00mxuRuwU8VnNpOd/6qeoTYgi2/0w
muAxblacGdSHdyWjjWV5AjMjQAnSurzR0UtZ5UZBc22aO+YolknhW31+hHcBp4+OpyLRnrXWoT75
hRQbXoPbborM+DGQM19ml/X0WMDhk77AAMlQKN1pxm57KspSvCHrSrAGaqXeoZjQV8LV+eiVKXHX
fgZfto16LN2tip0882z6pIsneEIpgRoPXlacKi+mcLUydZCrIbFyFgqu4jARGtDHD+oA7nT3Nbbo
Wv1L7fnhC1ADqn8BYFe6PZdyey/uvk/ANHq8PBiq3i56vKSz4GucGRmTdzij5OeLDmhMHfi/bukk
4yipE4QLBmjvobnuI4iwYGGA6HD/AUeupcY+DrnD0sbQecwDwQL//yATLOojF7AMKLYfml5dlOeq
hTLXoIg2MG85Dj9vU4SCMWTq5c6S7/+eoZd6E9ThtfwLMKiYhVIG4QkL+ZbBc3nRr4W8+o1IiwUC
20VMDUL0DRaMHnxiitunhDY5hZyYzZvWFNno3vDAvSJVZGoG9zwioHJLiGa80ALvTP8M4apb3Ev3
YLkaurqd9/xbV/Sdk+E+iMm/8FzxMRHrGD9Ve7R0LInoG9hx+OnC8Gn0Nrpl9w4P76sCWIScq1jK
Pq4TByj2jpEBO9bQv5lG0qo6hD2Yo7ex2dkkgRSFMJi4Vvak7QC+O1BbmVFkYfp/k6sHc9Ky2jPK
i/oQtRA0dbaz4XZruPyN801ZKSbB54pDuk9xVimcHIAsW6pe1OlSrsQotMrTORg30pyHimqz6gdS
EKe4NUCp4rP1C6iVQdbonY211U7Nu2ThGjmFuT1MCN4b/4hmCHk0VY9db0A0lA7KnYJZ1yDEVr2b
QmOC/pytODN+A8WSHP+H3c3E+SLsdGFuMvsbgMshuJDV384wVpZNAwvOO8DOdOJjzOn5r5/8kWsL
dbtt4HGATG/SK8b1LmyDj0rxsMuw55YrobA4cic5U9n7P0ObJs6Nj4Toguncdm1K1pOsGSa47Ue/
rN56NtXfnXNX+iRkbF3ywA0Ixs5ZOWJYOZViFHhQuYn1YoVrgdM3EYG3srV6O1oB30ijGt4Blx8g
kWVwPI/HEyt70WE/sr72VrVuxAZn2LO5+DTJocWH8HX8jUjfB9j7rTzMocR+PSqtQcmHEYCivEJk
QxGoVqipp3yCUDrwa1XyO3Z1O72BHSnt6CQMAiO6SZqU85oSWVjXdQw36kmKJyJytuS0Ig55nBFm
qOzEg+BfuU0lKlXlhX1QDGvuNOUIw1zjGqp52UTiMCc/GDkNl3JAwlzIlgbseWDN3D1PLj728FIL
Wn5MzLR9+nzPF7XTJ/ubqnJsyAxH74zmvnrWmucLe9czl8awO51ibRDjQ9GWE4aSdD5aFTzaeEcr
5UUfIuzPN9GYYmmUp1lDeP9SU2IGySDQFdeFuF0ugBlCv8VhQgcJ734ZAI3Lf1A5Umx1F4htiYpS
+aAIavUM+Yoe7LJYM1lGy8Rsuy4ZJXoZyTUTddRhBJc6EyCc+7h+kCGCJonoc7xtkgS5Un/i445u
6BpIJDDeAZN3KlEE+1YUgZAIcxX2LBH305GBGiRjiOvGolafMZrLMZZwCQpnpsOHPgcIWSfbxRrB
4r8hGBvTqoH/Ej8HeN8OSQai9QvrJpJqQHNkDxNu1V7ECzek4f+uGpC1cPEGWcfSaAhcmUAhBYF5
PX9TjjYOCti3iRQCtAKwEw6AITMJPHTKhNOv4RvMUv4pFmyC5I5HML+SejE7A8kqDx11qrMD8mMj
WsZcm+Cy0RFcxwE8aoUrxjYPQOfjQKCVLbobtc231akCYg6CV1DvTW96HLu7AdHNcnufUUEfiKGo
xilV9kHZtBQHhhdzpd6CB8J/bNl5kf/5xP8H1AdVTNoBcIkod6qYE/0i1C62oRXWEZ+S7OIjKUkJ
XGPMbNAnD1UovdD2HYpOHDgQFDQWrEwucy+6cpKk6KdN/E8S18XrG1hC2Tj0obyJ48Nl21DiMMUG
z7A5X7avSLf1M1RtMZbGzPv2mD7XiB9NFGMeZyG+56v9HdnrZwMPzKVYG8ZdAz0f0xgKfOowa4Um
uSVyJEFtAeq5rfUiCEZchdnWPL7TuhrvMH8sUD3CEUsaRHe9+1TdQfBHNfIc7j3hR0zJseYrnGOa
nLaDNMZBX/Sk7KucOJ6mO4agECKThwPqqtGEu4ZOOT+W6NnEZEjQmUZmMxgkxWi2/ALjORBWoPHV
TmWFJV+SGGIZWCttLZUGF02eEvmoQHAK7qpAkH4AY99l/Xad1Jwb95q0upYbDh+U1CON+PQ0TjlZ
I9JDHISm8+yACTTXOsd2IZ1eov3x0E3ONVPcCyiOwkPEsH+Ip4sOwJ+3eLaPv0THSJPp372t4aK6
xy8G0G5x0oI6acNbkCLHoDWEsO4aF10eCFt3eUE+wITcTke6vMTOaonXOfDetpVH7OyPly5kZ98y
EUXsZWC9C4gWIRTxoHjqP98L1awQjU84Jg8OfOzBofHfcrluaFjtaXWMDfBXmzuqUnYCmxZMGT+U
nb5iC4WwKsMxta4plA9XvUlsq6VLgpfjIqAhxuaciacU8V8LP5vet1cvh1SoBA8Ua1lmOU6fgpsM
bLRyT+HitR2dJjeEAzD0njiLiZ8INWpBq16tDkHdttTsgTf3KBY8BFK/mjfCtYr4np762x9VSgnL
KXLCe4a/pE7L7j7tHO0l5wmrBe0unQSPjDN7Qh/J+oj1//ucZPSTl56527qKI3yTeScYcBr7QEJx
QJJchMTPGgQ7UtWVMEyObN6VOL8pd8lteWVFLsDS49xAQzP1ZmO4lxBn24gI0BcBdAUv+C5/8AkR
PpKZjjHZjjlk2pK3Kel2kFbVHtL/bKze4Ss2l1BatLYQRlmUQTVWc0q9GVnuBxm+w5TJGU/SSgOr
ANxe8POrWT0E+cG40xyWmzMyPdr2UvqyK0TdxUUwny0um3T0b0lAZ8EM4Z6JGSVrDeW/8Mh8jpIY
PdiLKgaPFCYiYgEPmXch1ErUHG34WqPsnWd26ieMIb6i5zqm7LlXWJ1Ut+LyQVAoMLSxIR8UO0Vq
FemvmbLqhjw3FLu/6HnNin2ZipUKIWQT5HdH+mG4yHT9HVaeW5g+/4b7D5C8JICmqjqkKNTcA5ZJ
WefUgBZvzI6jl9sdOI6lyqDUfNUTgYppf1Uj8k9fY9ycwclXsKcnZ4YNAARj1JbDRNh2k9yt6SBQ
45cS+82JSFi5yNQBFx0eXvd8EnSt1I8jRswEFbJ3KMMlB4n5kToyjh3t3HVPURhDmVXy8FNEPgeL
jCATG2pGui24WX0TmC2TfFDDK+pQ0ZN7BWpLjdFk7kT6wd71mR/mPsjmKH9X8Q/IqjpJxeHhwMuk
/oXfGDxS7pdDTG4DYAs/ngfnTJzKJmXtKs8bbWde7sjwVWY3b8Erc7QMIobvhN13CQ562eeuHNAM
0X/lmP5OwAx2Gjbtnmheq9MgmNnbBrhBIrAXkipntZAZ8sJpfstjs1Puz3ahkOcm/CTNQ5EUDd8u
TLBbkR5k+JOtUdatmk66BOHsOrghVfITRU8AB0+3Jm2qpnOt43fbyIdSuyu6XBlqjisgRIDNBBNj
DUvPvOZOzh4sm7T00sASaQlcAgUJQ3edA/Sey6HY178C/XJejNTgMz/raroxE4NzsbuLbjXwurfW
pnzx2fnQD7CLqxBnYy2LwnddLLCaACDDIa22Qm/LGTotHm060V9OKs5nagF3CNEhg9optZYISVS4
TA5224J+NqNlzHAKudma+CHcTpyaltTTCwZALHVDUUq9I1fzcZIe+UGgovwPHWkci/VJfU7d92BT
HhPqGBnIdyaAEC4JVYqitQ4WZhjHn1rIxFvQ20OparaeaarfwSLSM/x+Ap6lrlg7GcuNYk3InZsf
DtHiZ1Ip4njgBziUYx4vHFwTZda1WTI0/6yMImXeHF8BrPz+Vzp6KaLtt0lMfCGEEgVSSk+vrkaP
pAz1upWP5psArj0dBGeyoGJzG3fZlMSWli9ywtoiK878MyXRnv9ANJDv+qOFv4z82ik+/mKxGluI
teXfPt8RacMrB1zyOmBlWH27Fv9bF3xKNlQBCiNczhgD93+DEUyLoaekVB7q0zOdXKeIcTUgHf10
8CD5ulHXR7TmIc9+eRijsDD3jD48ZlFcfCFw8pi2toBeOZTJzrhJTP2fCpBY+PWTxpTZKIT2OdG3
MD7QjbOi7miUYacgQftJKLcB3yS/tD8C3SL6o8baDS1TMzP0/fvrwR0MwHNozSrGtH2utHSbpo0U
wxIrM3h42pDpIq7ebKraJ9vfcJrICo/ii6CMp+n726a0SI+sa/r7X8LH+c5+VZNO6w4OzqVkKqHy
akv9Mfimzp6u7HCtIdvuHcTjhyTvMVzxoTEKfkd+6sAlMRz6SxN6TtA2rUX6YTbXTLIrfPxJRSpM
o4KYPKlxP3+TLbm8FA+2+5tBjZfhMmAf3YeUf3jHC9Nue9JJU8KhnBqf+XCu7M8HJNhKD9eZOkNG
yjHnPcwHivMx/Iyrj/PFPMc0RE7aPymePIM4vGXZCU8yRJWh4cYattlSCUMTFSRTO2POQN9yimgw
X4f6BKZr5pm63flogXaz68Hu1cBjrk+LQxlAhVUY+JW7UIbdH/n9Iymb15Cu/dfJI+RgHDCL0G49
bu1Zq4vAlxJKPURX+IDEtV6JDPMRwfxvYgB2wRLHyRbUxlfyi8FyofZleYrQ/d6r4DG8qiD5iPfR
ur1knwQMrBeiEtgp89fQh6N48B1yqz12LHIzRMkCkcFR2jUygg4rQ6pmtKd28G3lcgPnqd4jNpoz
7V+M0U0M2v6y2v3RRCRLRBuRZuvsxwIXhIue5WlMxuv6XH6ZFKS0pVHJrD7tTkmqCcBITAeb4Mdv
kW89liWQ5+m9sF2KDK9vpvpaePXV2BVpmBkPdhMheBF0g35ptaIL+L43gu5fB5+HwIkC0cIzhC3S
2tHA/xPFLmp9pBO5ouWOrWyaY4zNCS8cs09Vgh3dsGbldT96xKYb47CrZ689AJdJtrapauIIg9Mh
/7RWMQg0utpx9tJYhXphkPcmAO9eWqRjQGfMORgl4y/qZigO/yFNF/H4fzQr0mm5USg18EyAf8WR
SrsDhOH+I0zMVhQKSGEceCGcROHAmNqeY1KlD0JtSE46tHVmBVT9hKoQteCRQMDzU34D0yiKsHVs
yxfgMr0oW0ey3IUrIWMxwjKj50mYr2LPv3M6jmSNJ+JF6SjxWg89SEK9T6vlYgKBgu4R9979CbNh
8jytgDcYq5DZosoTxoR1f6vK0hf1e5OKkviUadUzXzbu7PoI/pEw9jj/cgNh+rsKdA6QxYqT/yyP
AwFanM4KdZtSYe9zTNJXldEDzpZaS7oAMboKgCXAUzJuFyQ/bAph5iFYTe0ODF91LzXYI613DmWL
ndJeuCuIUxjm45AY6zjLVjtTKBVPkqYB03ga1U8YMeafmM9LtWSuGDfhmwrSeuIL3snmqpsEikn+
pjJaWtJfOZYL15NmAZW2vwXNh5B1DEDk3jNgwQIQkHYolB9GYmW7sH0PJeKilGufaHEbnK7/fDH/
i1B911bU08ykmgktuvYiZvEIYQuMpF3+VnDcrNuiVasM1UGpd0GRrETHb2DIOIh4xmSK2T0Jw/Tu
xv5E+iEUP/EEcd+t1eHjxTpCiWnx9rK2Bpe+hocFQiyjrAvpW094w+uMpzdBYExtTOzGtSAbkgED
dY5/tOaDhjCI3JquGBIzEgJVe2Ap6zCvp6yhNDd0M5G5NPjIqtHu88nRo31FM5/lKh4svGCcawlq
C+uDUWX3ce8uH0By3wyxUMi5q3KmCKEXbLuy9NQUrj76OVcqpS7Hmo95dKbkWdQIVhEFfGgrio3X
VSkMojg9HgDRDd/LB6NhJO+WqTTE9az/cpwBRBaV8X9gw9eAab9PXJ3hyYxDHVw+hllTeq929+/g
Ttkyl9zigTnXHMtti7SOFQfZ+iRJeM/RM6oBNaCQnWRR1soUxI5TFJGmOpsQGLFkLzBIB6qUZHR2
GuLx+ylXcnho9mNVIXw9foYO8UFjiq+XU3OrtIyY26kchCnfBWF1T5xNRHWmrS3m3ZnXIrp2qTW1
KlAlzZ+q5JsCrsy8pQ+kbqLoJVC9rJ0WnG2CMW3NRgTd5aILgmtj50odMslhk297PX5PrVibzF+b
Ero7UX4o9VdApwMx5kj2SziGSCFW9OmwZVPIDX2Sn+kN1r8Phdepz2WIvGibzbS4WSzmY2wBy/Qa
06ldSDmw51m8BRd1zjCKbmbQjahleBm9r+fp43nImC6Qf5kDsMMZkqUFZHHwUO0pdWEgs7twf8A5
nMDDP+RGffalj319e9x+S+vfzIhZ550ROzyqyilOQHP8PrKHTnSIGfBzKHlJtFLQcOSInWWg3z3z
lf83lI96HrZET4BNuDTv6jie+uB2AsUr8851+c3eyEF4ojF1z0PoLdit1/KxT9m0sEgU48WntwrU
niEZb7prumywCcRtaawuhGY+qCYZKtAobz14KzDBi3FWji/+ecpxoyy8lSccI03Ef7ccVeL58wuc
S9ni7N5rEyKpFOg9vYQBtTzsYWMsFztmCcgH4znn+bG0f46RwU4ttOXi3zpOCxL1/ktTrW7RJWYt
odNEFNw69tzZ5fPy/TMDg3pAjbOrVyvgqk9jJTM7hqwoigb3JCKxqSdHTmExvWa+r6MYIHrDkSXv
xEO3rdM9dzw5kZaLeDSGIso/+AVZCcZPdEkfJbDF2yL750SXQOLsCVM7/rfJXT7ae+3oKVifpxXA
mJhA+9d2i+V5JRPQd3aOBwSE+lxdGuayTPPNSjru4suh9YZZ3t2C1uLPSQ7SRltCSiiMvYKSQb+A
IY1NW4zXkI2tZZM85NxxHprYbcKr+wR54UsNkh6QeN4ayBcPglIlC2c+wGWuuwl0tqfNnmguNfjx
C8t1LKS8Aayvw/pSBJ5EZqDAg+3SN1k8PuyV4aObAycy+sH0SFeYUXznHO0m7Fjw+/Ur0JmJcipd
C0ls4bCOn+7NroA5J/aKYaBhWFM2UUUmziWqtGfPLKF+enWJs7cBpzKBxvi+zpMOcHfy+LDPK5e4
lx5Dfr4Q2b2HU2w3QxFrEXUYQqFQSgy8Z8B6EU07aScAv8/pJ784qdJ+WOJ4vMKj8WibdEd2yqbs
+Nnk1UJCQk+i0i/trWQY+wJw4LRZK8IuN5BQyYT3gjJ66ole416LgI4iP8KW3cbtWhEdfhtVC6NP
GG555V0u0A+LYKJ0FGrcjmP0kKkGZx8Qev2e5h/OyJ71fyTgO1j6SG21gYHFmVOo7SALBYyxhj7p
LTUnXW4bz3pQ3xXnHQrCioOBUDTrYkOWn1dyaiI7voHkBNhzPbp34PnEQiseLgmeXamFvTweCtvL
yTUpuqMGdMLwqpitZ9MqnrAkDBMkjtW7OTRstc1ltNakeBYWRuMsJP92nfy45Kknt/J3M/06xDtU
rd0vLCokpjT55NpIsg7sMiwN0LhRWfp8nL7jZwMf0+cDm1MOWu1cZ3JVNvcgQGfjoDPpQ6ox4i2z
a/sWBOEzeTBhwSgo6BTdz/wF8mp7Do4SZoh29XgEHzXSLIFh0rEjTaHwrxcWsImO79rBTKGjRWnI
rDqBouinZ70Q//i5mA8rVoibIY2dKCooiI9kVXaVz/NmOF/W8OpjatixGrR+dUnWn+IcC3MXB/TH
yX7x38MMUG9mHEjhL2ECtetcCi2YqCFcs5nBo5o/Z17kTyjhBGT1DOYeXc6yr0BoTyV8sDCWOjBR
AUogKStluDxURaVDHJUeoPX7bRlhdYYsi5Suw/b0K+yWDWgW5/aHgxhewp2mC1TIbciyezZCmgMF
/AjmE5tV0p06wAH4lymzcYNmegOtNhIo5q0t5lkiXytSbOlcU//GmAKL5XPqp+URP7K77MwDLpi2
K740jAHulDJbA3gmmMG3G4gsmNV3NqynEkGrBTxUVSN5Ghe/CW32J96wj6WgaiKy0Sx3M/+LMgX0
lcArJrJ4m3AIqpKnvFrfd4WSLIYMTo4eDttQJ/vn18KgvE6hrtBy/ecmg8nISxcxn+lX2I6vhJnB
c6IT7vl50LZaFkWz5nDwKKoxg4MlLgdWRRmr65IFIZRekX8mWi/wWyypkbs7Tm+CH0EqgoJRmNxV
kraYbrpOnVYV43gzLfYvzkcN+ufT6OkB8mSUxe8h6OR5hFSuRAlmwFr40COLG3Y5Jw962QTfps3H
ftkPIRXznsq+4sfkUHJTCkgGAXnuVa+wcDP7po6ztMRsvNfLpUWOFdasIUn0u/4nRz+Nlt6I4kbX
6JSth7UE1FO4lBKtkIpPMtBtMtZIKSu34oyWJC/cUj1gua0H5rtxyco6eAy0G+3rLibyG/yFKRH4
SSADUtXnhSojeZ+O4RdaSdDvAc++hW0okL63ZwFufs5UwUZn8A4mrg2E83nmAbUf0j6CdDRGNsGC
5Y+Fz34+nrJV9dTezYale6d+b01UXCMFmwws0KkKv0phmOZiYLdm/BoPh/iqIodh7taeIhPOtP3h
kiJjCw79CLfBP8WDwIQu/zPsMeChG+JKht2qrCPVG14VowuOKinXRDc4YhBmEqLBFrvyUfmdqozu
BEEsg7hJldOF19E5ERZEb1yhkZeeR0VkQamVx8wVAoZp7tynEiba7pWMRD3OSwjL7bqulWqUpidZ
hK3DL7nSH9Qr+Kh73pMdvLmYLBQeUGJ+8zcZZbPncSYLlfHke3IAoWPPFouQt+aNkwW+mA7czNyG
of1rWyyJF3K8jyJPv62YW4mvqg1h6HbTZjG+spsRpbWCfMNMefMrC/XijkQccRwcxuSp52CWcrI1
JFvCf/FlBH1a5C3Y9ng69POG727mgMotORTIVx2L0k/q1lwKNsJq1yioeD6hkLyaoL1V/gsuNPC2
UcOcFSN/BcP7iGky36XZY1Xd1ebixVLpiv3H0W3vPnyE1oSjCn/oPsB+wSHsZWeYGmz+iXIchV5e
wBHZz8CucIff603vy3hkqi+2NLQQXH5kDVQi7IoaO0/dv8HqVbUij3qMehExH6qLGLC61cLqJ8kf
O8OsirIE/j2kHxLjunlTi15Cw5UXa8KhWcWDN4E0FLgpsPqpMUUFnvG4AWgszL2Xq9xy/xl6NVmS
jnBysSUsRImYrLEZkmwfqvL4CuQjMwFqyS+nqhTtwPb2FXObPWoQi40hk3FgU0pXB0WlQAKiY9v8
V4dfqG/pGiLgXqxQ88+aVj6dzLabmHZBwt2Ea7zfpqMD8NDQfWyioBT9zjhtWk3ZpIK8SLcBttiY
M7yqsmPX/4OCnqIda2sqUvF9KmhlRnlF5wphRSZstz79DzGWj+zBQTcL5co0SQMdQd/13SYYUJ0T
G6ZmviPaw9pWsRPMcVnlHIpD5OMFODoUlNZPVzFWKR0aJIw77BTlenaU0zbECWDYqgYiT7XOijLO
JyBLhwfPgPCQTon5FHKUjO966BSWcSjntAMqf5VUTxitteYzUIdVHphBCnZC6YBDGgO9Ja3lxuiA
Ck3bUfulaJydnSqqt6b7j18kubCcGte2+AKP9IFQeOmo6GLiS/2A+R5nnUW2QelALprIc0+UyUTz
xw3gA3O3Crzxe188/vTE62l0alHhe2yu5rnPVHQmJC/3BNlG9mjIUJJ876kmrByH923JBA4brIdH
EQX1d6Ux1VE9Y2xqTPAtEiqHOitG+cIX8TvcjzCLcGjluQjGFKDgefiLzRCK+mDBQEilkLk4LbD8
dLELoeg1iG/PebyEyIfywGchULpuFF2BWnAuRy1FUqgE5rUR6moP8g7A3sN9N0Jya1HTk2VNDUsa
MDyfcBQyGRePgid4AsZq0qH0ZwWNU1UxiCn5YJx/Vf72D7Pcly7fFjEjrJH9FyT61SXGh4IZhSf0
/EC+dsy/XDYUGqvlky9DNrCguckihTWwKWmuMe++THJwb5oO6GSjap8EjeHmzAYUI6BgZgamjwoE
yMj120hITyCxP0QYr+Sx34RcvrEXAB6OXf0U3aAQ8dsPhh8hR9+0Jb5ITYT89VphZpVogC8WOaY/
wDDOnRuUonlU8aKTrXqL4R2uz2lLBABj/h7mx4LjrlvfbAzvVotJwBlWuNAISB9sxpbLmM3Q21rr
b8O+BynEiyRQXwUhqnI2yyi9mEyQWtJ4dghr6jentctzc3nW8vuarSzEgfC9mDXSsYw+XUEAX6hG
x7arwc9UEmKFsxoO4/HXFLCEscrkhxcaFH8M07HMQt1b//DyBP/zvVKBZiLBk6/eNTX4OlBbGZnS
j0PP4PtuSpvRlOFB1ezC6VV/MkRa5PvRCGEtObpcCef9+uFbdEUm6k51lGEGvh0KxQrRciZAPj1+
KmITpTewdF9ntNy+jVvuV2oeudgAeS2Gv8e7g/WJ1+7mPLy4E86xV31z+0BHK3XTU24xf3hNpsd+
8QZl+EP0kRy7ImhfJjRouX5N7FrXDDLfJRQqVn4OlDUUI8ZVItBhB+t3ogz6nCX8GOWOrDAKXrkZ
QlYwSdTavdlr63lkBNBw4xkoMWy9GMV8Qx4PgTe32rb0CgHzCQeHyvjyt8pOJLlXxyNrnLf/0pto
BCN/GYb07dNkJNerA9Hq+Ga2J65SypxitJZP7V7geSujF6J6mVA31giR1PqrWSKwC8GbLKCwQYUT
6nV0NErpwv4GUGjI1irXXZdzSVZdPvE9VLkOkGIJJt2AgX5+78ZiqafeZctGxkqsWneaMr/Yx0zb
M2bTfGfmEnEsk7qRqoBV9zQ/CqhC7yMbacfOv7w4uQwjoRmN7L8g8fxd5S2mmdovFbH20049iiWZ
e+CrEaPQJthKbOQPN0DSoHxTZRjU2hw/3JF10eILqluMWlbZ460YhitgqQQms/msHRVSCo+1i1MI
Lfm6DVVIIGiALP2l/xJBD7HySvv4w9MfXcf7E+Nfg9cMxE2C4qAGPF3yqH+//lxZ/tOzZJ8gGEJk
wJvSYXzzhuep9CUFCMoMgqwaIRZBaBuNXKuwM2imqJqAo9TO83TOBmiDHFbBchJLWl5C+f6xGP5f
xC2wE7rD8uCnN5C6KoIh/1RXyOvwB2NGpMmITgTqg5EM4YcFM/m+ItjySfspb6RNO5nireV8VoVZ
Y87piLlZWBW6Sjej0lT0G7uaE/P8u+RAbw2U8TphhEiROWIq6NpIr2Uz0a91zBDiPLZcZecI9dKa
/uI2DXrUJD8CkynZOqa7vDylomPSnDqLAAz2Yhb+2a0RYZ4wM1GF3jSdfWOozH5gZ75OMdvoAiiP
etJlNVdrYLg+bFsdz6qce9HcG/+H9Oi8gY2sHxluUM9jvYzYS/9L85jyzTPEjNGoFhBUvwPLqrvH
jQ21AmXAkxHGT+5Au+3vtI0DKjIKrCotny3VyDY9UJXB+ABLgm9eT2OPAysAGvVVdYy5ti/T53iq
PHGnLjJa43yyBsYaEwNbDmP4yXhtJDO8QgJbq6Px4utsnOg/wM0mzF6WfMCXDyaGOY/K5EJnWVBJ
SnjWoU9EEfiTGhoe5eg+4EsDyPAvMdbCJOPvpH8Qv6AVL5XPclJxiU/C1/bjkl0WwDmTkZw79C08
wYmuxSFNGLtoxBxJbQL28imJ5f+v4Bdp/Exx1KVlMDhTM7iLEy55Wk0/f2YiK/6finB8pbrmcU4+
fQfAd8xP3Uid6BPtzrQ6rs1QFWCTYSard5NH1xL59G2Mzt2Ux+ZaH2AgBKyUAXqR7Dm5ubd9whkV
Dak7sVPU/1P+/UydnKORhXLeh5Mdoz4dJYF1puC3y3y8Z6kFQgYqPadsO5nFkKRJUL+xh5ZGCMiE
K8MhC5nmZKMBKmW5Xr2olLOuajyztcNfPuAyrN5UJ1yAgzd3Y+79aN57Ud+fNWdoQ2yWI78xQxwe
1hmmEh/ug/cdUf9IVIBGkXHV5oaF/lN7sVregvFv0w+rH5uV2rDpDUiUVkXpkfc+nYP1sgk/O0as
uwe/XDkmNgbsk2JLNwLcA2hSfmL18LrJt7xJTQIiC5OKRajkyjks2H431mhXWhvDOcWuCOdZsw72
lJ73kRvuk/oDlxb427HeR+B8gKv0QX/AM2MXddq83VCtCD6mDnun0vrJqD82TpRU2rHAF+qnszdQ
Mz0aZsfOBp9BE/XSmmFtXSbqwdCLnBOkl9CpnqCqDxESL/eeASVygdB8jY4CjuVD+6io+h9fmQPu
8TYpnFKC/MTu8YYN6YbVuo/YbVDIKJOwWdmZLASwNvuOzferqAbRavaFQeNq4tT0uE+9Sd3tJzve
r61IcSLwd6/h4VxZyH2hoOEQLTjYtcHAg6jQvmjIb5V8wp++crXSr3l+jxOH8RWOprP6Fno72/qe
leNcIMQHG5WljNBVXBBXt/glsakggEULCYv3tSqmcB4wtfhZ83PbSDU4MhZNfUBoGDYXwcfzaxbE
jKZLR902IV6Q4g5pVTMuFRk7wonVOQck0OwRI5kD9eN7c6x85L/luTKcz6QK3XS1TZkt9bDTVDKh
ZzLp6j0J5XlYVUH9LG8Mue8137a2quBFsWFPVj4mgRwu1k1ItrTdCB/DodRbD/2lFX7jzeUa3RKI
mdg+uA+JkDSANsNlLsKGxGXZSfHxSDFUUlkEjlrTbkyblaeYniYrcbIewzu/yNlD87XgBEVUILpx
vzbkVqjioQ3TrbR7CiAYpFFtIq1xBM+H/wKTU0eNHqXMljHiJeeOB664/c+Hg4H28dll7YaxOJyX
Pt8Mh3O7qVX1kBoLMpLZN4OCpvwuu89G3L8c1wEiLL5y5pEl2lMPCP0S3eV/Og+sJydEAWWTh4Is
X+ciUuiYMFLn6JmXiLZ+NQcHI+qkU7aO5oKQyzqPKBq+wIgjxFOMUFryvPYxUv+MRjNJPqSBTqqM
pcLOaNQTGL3lnBUwp3A3Gkj6CX1sRGmdYoINlJZASChTjANW4dPHSPbq4BijfApIeOT1AzvBsm4Z
IYo+YfMP+qDnUONkZ/BBIBgfvRBToLJsijJjBjkhG95j901/eMQl0SLmYOOG4gGBFXnyGHVBbuo0
XzbxvIcRd9HJZiLPmxbGdhEN3kD91T1YPKJpYN18psdDLjkLBUY00sjHTtk6+IyLb0b0UNesaXii
ZmZBwjjb0yPM3uRDpKQ9ue+VZo9J3xLFh6VUFazLXAWVJF9Hz/bifUJ/aFCUc7+gzeKBQ4PntAg2
s5a/pYriVjMr0bbAgqwAcN5M8AWm/EfFpO0PCClySWOPW6PtjtLbd1CBGvBxI5Qd/wToyHoPqlxJ
nVggF0sNLtiILzm6NKuyGXxfVDRIlwVteurZkUnR6sJO/mb3znml7ZOPLAeXVJtcysObiFSwpDzH
mIItNsw6xlJERLWtP4BcgMEnEwfDMdLIOKV/q+OWeGNWFJaH3P8P3ft0/n1+2wLeBhCTbvHADCcV
a5zUV3vyLSX87/Ohc6OHWQ3d354up1NlIa1u3FzRjOxdmvrKMSEZahu54mhbv02+TR5bSgRUEeTT
lHqKXbj7BAS/5VdNhHFlrkMxW5I9PUr5DpD9TjxImfjYr/oOw5DBWh52KUkS4rvjtWFi6xPYwxcT
0XalJ1sljmmihRTloXlOaTpCvd4psYOSv2c7VZaG+iGzGhLTH0jtu9w5GEYscuLYB6/ROEfVudC6
kwVZjJsKPitzocdbCYrug4SM/76/ipjn38LSCY0lpsFmeaewEp6j2l4oZS+bWPrDkEM7LCtIZS2A
yhTL1Ryjw7EYiN2tZ0597TICbKC6Oyc0RI+30yxCbplM/NVyzM3jU71vPYc2lVcqG8XCA/g/Ax2J
Sha3rsw8hm4wiSgny8UwGCRtmj/x1PuaqVNnX6k4OKAKh2aoca+oHs3Od5yQVkaOPx2jFI6Eyb85
h3Uu5JAoxp3A+aZSuRr8SV6Y9Rkcw2bAFA0VRUfYyStNKiC/or7SAc2Aqglm3Dm9RRoPt4EINyoH
fhTesHn3lkCEDsyPZlPhfRiOOX+3Xc2APYbdus8Y1ticMmNtvyjuy/pi6qJazphovX9SX7vS+D0l
cSZz6+GPEb11IHohfKKNAZqxKIzdUi5A8XVxv9uONtT1N7eIEPgwuhkJHHECE2wdUPVW1vB+6lzo
z+ZYt5uxn6ZiSRb6FsGJIZGboXNh0YCpRqOPSpL28C2EwOLG/eVVpi4fLmLiaEtDvj2EtgoDsbcZ
tDt8NkTBpp+lErTWQYqyVwdvwLwJk9BFH1+kwFgeX5i2e+mapTyItRbeSBNi87U25BFmI7bD1yzW
XZRZvZ5+oKPEox1xyGVqp3p38FquSNAoMhgWESyvL3aZ47BRdGL4lufZTebDbWNR+3YB5Q1cHeKS
H7btJa809/VQELkDjEB/E5oKknY9lw7vZhX/Ww4vDx10aNlk/GP6hfOenUxFs/fwG03j5k/Bmbfb
dnLUixQa8/tKw5T8hz021/SzHlfTPaZQS7nSsnN1UX98x8OXeUkHSXc/OddCCHVARj2Ez/hTTCKl
ghkCn9VkBUqaUS5+FsH1TIx0MiaAiLSHBttR8mJo24KAEOESqCAbEVtNfLlKwpqDIMJTgIl8fgdm
PaeiqddBeqQ2o0yrT52p6JK/E0WO9m8IF7IV/IFRxC4MMPv14zEmsB4iasjj1VtXsNMKSXZdSuKq
GrXycsrDCSrbIoApVgfdhhMZTCivGV7h2R4a4VClyGxyuNjGEiUk1x/J/P1u4HeJcwbLo9WVg50n
rR7O016PXmEF/x0cEwmHat6LW34AQldlhnHs5CyJZxsQN+0FP3rQgkEb53q4KhpBKedn9g630VyM
6mZFfhcYp0pPxs/+fQozyVmxHuiFOaiB2xoAh8r2+nB/qOs/XfcaU7Z+X3bK6TA+y+UrusC/nCuj
XQ5Fzuk5dG9qLBLlSRpXC1LUhI9FMaYRgJODOm0tJXuAdBSVGMqjvqKmBgKFl4iorZwHzBYbA0Gd
/8s7ElR55y3UYeeOTLoCRITRmzh73tCglxVy/kuWU7MEu+GRxcYMveXQhAaD8G2gBpQBzwAGg++m
auD/NTAtkriylnGweJbAOFQgSKD03dN7PKzDfXbnj5wHjnpRX3lztp1/DJQFsAdotAgzISsD94L7
7pG89DDjT4Ns/Gq/3FBjkq4whUlUjiLitC4LF7pU86al3rm4iV725dgp97r+UudY8udMAM0ePWlZ
vFlZQ70f26SXS3MGkU+7WEtANGKQBvELjCraPs0zsF1WcGmHwfWjKibCWnUTfuGn7yLwPXQRF91/
iNQhs79tu0t7ZXiWMo5kkE9ygzsE6dN3gOpZtoLdxvEm/N/9b3Z9ek8W1NGRyhAWluoPc0Bu8qqe
i5lPNWTEjMO2LgpdU7vo2PF3vb+ST0Yaa9gYl0+/z4bhe0v1wWMhOSOiMfyeuyARayjNBNoiW+31
YWpE+HrRnzlTGFJxdHq9+tKSgY4fSOeT17cH/jVog510QWUSjg4XXSwvCzSPsf5y/36heMPI5uXw
FOMnPCr5jNHlZ2LCxqaARFOjXEUhLaR8csblQVgR3i+yBvd3ytvt7Fwn+C4c4c/JzgAv9MZ3bxSC
PPputILbJUQJ/thQuuwcxsOJrUxHKR3j0yagKmx8IQ+QITekYQeJH00Y4u685ArnNvFsZGe/hNNT
RlZ+/JG/NfLOqCX1SPvIunVCjb+VT30zbc3Ztls5YoEkKXyhwMxqyRdaLvGEMtP6+HwqyOEJBXFH
YheHVK2yshg+jyICbApvyqUzzoKtryuQoWCVr4h0R1S3wj9HE1r3gBtZSK67vJQD5eLVPKGu9zUJ
P6f4Ah5h49JZdI/U5G5sUcBM+ii9R7UpirxQpBoLxcGF3yPXSQYfFJaPCwRxXROVdmwmlufstGRJ
ZufXndOOJOquiS5eb4ZI+OmGHUY/FQ6qdbg7icRnsTMdyOF50bLVdj89pwyiY5xI/RUOh4dyLrTq
i+IhzY8jAPQ0haUa4Mx76iny3IwK/xHSx1MVi62aZal28Grq7upy5Bs6xCHyYqHAC+TUNVia0Dre
ryEdVlu8unPv8cZyvEOHiB3ZFvtKdsOhJLXh1Zclbq3aUeWyoGVYVN1rDyNl28QKesqSy2zRKUMG
4pV+8gqO76avIpMrUrHvErTJYPHmz2jj67A7YD6tE0V847fmsbaYRYa2/xj+bowZjVu3YjiPTlml
ra7s5WYDMjq4YJTf3H83VhtrPOXNZe4RXa0pcR8moMhCGIZDEbczqZLkc/o4iDXO94PSnRJ3Tukj
PXkNsZIjbSwwOzTk58zbKL1qkulP9AnNQKzCNAPOsQEh2qccPIpK9A2AuylsBmxo/0PMFfPKu9/Y
`pragma protect end_protected
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
