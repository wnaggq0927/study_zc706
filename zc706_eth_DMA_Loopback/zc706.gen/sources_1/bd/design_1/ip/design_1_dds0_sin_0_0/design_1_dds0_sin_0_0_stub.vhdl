-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Dec 31 17:40:56 2025
-- Host        : wgq running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               f:/study_vivado_ps/zc706_eth_DMA_Loopback/zc706.gen/sources_1/bd/design_1/ip/design_1_dds0_sin_0_0/design_1_dds0_sin_0_0_stub.vhdl
-- Design      : design_1_dds0_sin_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_dds0_sin_0_0 is
  Port ( 
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_cos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dout_sin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end design_1_dds0_sin_0_0;

architecture stub of design_1_dds0_sin_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "din[15:0],dout_cos[7:0],dout_sin[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "dds0_sin,Vivado 2021.2";
begin
end;
