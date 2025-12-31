-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Dec 31 17:40:56 2025
-- Host        : wgq running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/study_vivado_ps/zc706_eth_DMA_Loopback/zc706.gen/sources_1/bd/design_1/ip/design_1_dds0_sin_0_0/design_1_dds0_sin_0_0_sim_netlist.vhdl
-- Design      : design_1_dds0_sin_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_dds0_sin_0_0 is
  port (
    din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout_cos : out STD_LOGIC_VECTOR ( 7 downto 0 );
    dout_sin : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_dds0_sin_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_dds0_sin_0_0 : entity is "design_1_dds0_sin_0_0,dds0_sin,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_dds0_sin_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_dds0_sin_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_dds0_sin_0_0 : entity is "dds0_sin,Vivado 2021.2";
end design_1_dds0_sin_0_0;

architecture STRUCTURE of design_1_dds0_sin_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  \^din\(15 downto 0) <= din(15 downto 0);
  dout_cos(7 downto 0) <= \^din\(7 downto 0);
  dout_sin(7 downto 0) <= \^din\(15 downto 8);
end STRUCTURE;
