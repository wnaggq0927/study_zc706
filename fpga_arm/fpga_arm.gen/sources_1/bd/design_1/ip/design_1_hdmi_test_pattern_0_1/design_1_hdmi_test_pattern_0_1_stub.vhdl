-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Jan  8 17:25:45 2026
-- Host        : wgq running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               h:/test/two/fpga_arm/fpga_arm.gen/sources_1/bd/design_1/ip/design_1_hdmi_test_pattern_0_1/design_1_hdmi_test_pattern_0_1_stub.vhdl
-- Design      : design_1_hdmi_test_pattern_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_hdmi_test_pattern_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    hdmi_hs : out STD_LOGIC;
    hdmi_vs : out STD_LOGIC;
    hdmi_de : out STD_LOGIC;
    hdmi_data : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );

end design_1_hdmi_test_pattern_0_1;

architecture stub of design_1_hdmi_test_pattern_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,rst_n,hdmi_hs,hdmi_vs,hdmi_de,hdmi_data[23:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "hdmi_test_pattern,Vivado 2021.2";
begin
end;
