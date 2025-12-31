-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Dec 31 17:15:12 2025
-- Host        : wgq running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/study_vivado_ps/zc706_eth_DMA_Loopback/zc706.gen/sources_1/bd/design_1/ip/design_1_dds_compiler_0_5/design_1_dds_compiler_0_5_stub.vhdl
-- Design      : design_1_dds_compiler_0_5
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_dds_compiler_0_5 is
  Port ( 
    aclk : in STD_LOGIC;
    m_axis_data_tvalid : out STD_LOGIC;
    m_axis_data_tready : in STD_LOGIC;
    m_axis_data_tdata : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );

end design_1_dds_compiler_0_5;

architecture stub of design_1_dds_compiler_0_5 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "aclk,m_axis_data_tvalid,m_axis_data_tready,m_axis_data_tdata[15:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "dds_compiler_v6_0_21,Vivado 2021.2";
begin
end;
