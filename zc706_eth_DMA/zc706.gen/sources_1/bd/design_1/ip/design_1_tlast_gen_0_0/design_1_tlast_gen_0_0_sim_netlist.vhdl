-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Wed Dec 31 10:02:34 2025
-- Host        : wgq running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               f:/study_vivado_ps/zc706_eth_DMA/zc706.gen/sources_1/bd/design_1/ip/design_1_tlast_gen_0_0/design_1_tlast_gen_0_0_sim_netlist.vhdl
-- Design      : design_1_tlast_gen_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tlast_gen_0_0_tlast_gen is
  port (
    m_axis_tlast : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tvalid : in STD_LOGIC;
    m_axis_tready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_tlast_gen_0_0_tlast_gen : entity is "tlast_gen";
end design_1_tlast_gen_0_0_tlast_gen;

architecture STRUCTURE of design_1_tlast_gen_0_0_tlast_gen is
  signal axis_handshake : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal m_axis_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_3_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_4_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_5_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_6_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_7_n_0 : STD_LOGIC;
  signal m_axis_tlast_INST_0_i_8_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal packet_cnt : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal packet_cnt_0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \packet_cnt_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \packet_cnt_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \packet_cnt_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \packet_cnt_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \packet_cnt_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \packet_cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \packet_cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \packet_cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \packet_cnt_reg[20]_i_2_n_0\ : STD_LOGIC;
  signal \packet_cnt_reg[20]_i_2_n_1\ : STD_LOGIC;
  signal \packet_cnt_reg[20]_i_2_n_2\ : STD_LOGIC;
  signal \packet_cnt_reg[20]_i_2_n_3\ : STD_LOGIC;
  signal \packet_cnt_reg[24]_i_2_n_0\ : STD_LOGIC;
  signal \packet_cnt_reg[24]_i_2_n_1\ : STD_LOGIC;
  signal \packet_cnt_reg[24]_i_2_n_2\ : STD_LOGIC;
  signal \packet_cnt_reg[24]_i_2_n_3\ : STD_LOGIC;
  signal \packet_cnt_reg[28]_i_2_n_0\ : STD_LOGIC;
  signal \packet_cnt_reg[28]_i_2_n_1\ : STD_LOGIC;
  signal \packet_cnt_reg[28]_i_2_n_2\ : STD_LOGIC;
  signal \packet_cnt_reg[28]_i_2_n_3\ : STD_LOGIC;
  signal \packet_cnt_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \packet_cnt_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \packet_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \packet_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \packet_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \packet_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \packet_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \packet_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \packet_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \packet_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \NLW_packet_cnt_reg[31]_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_packet_cnt_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of m_axis_tlast_INST_0 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \packet_cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \packet_cnt_reg[12]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \packet_cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \packet_cnt_reg[20]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \packet_cnt_reg[24]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \packet_cnt_reg[28]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \packet_cnt_reg[31]_i_4\ : label is 35;
  attribute ADDER_THRESHOLD of \packet_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \packet_cnt_reg[8]_i_2\ : label is 35;
begin
m_axis_tlast_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      O => m_axis_tlast
    );
m_axis_tlast_INST_0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => packet_cnt(18),
      I1 => packet_cnt(19),
      I2 => packet_cnt(16),
      I3 => packet_cnt(17),
      I4 => m_axis_tlast_INST_0_i_5_n_0,
      O => m_axis_tlast_INST_0_i_1_n_0
    );
m_axis_tlast_INST_0_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => packet_cnt(26),
      I1 => packet_cnt(27),
      I2 => packet_cnt(24),
      I3 => packet_cnt(25),
      I4 => m_axis_tlast_INST_0_i_6_n_0,
      O => m_axis_tlast_INST_0_i_2_n_0
    );
m_axis_tlast_INST_0_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF7FFF"
    )
        port map (
      I0 => packet_cnt(2),
      I1 => packet_cnt(3),
      I2 => packet_cnt(0),
      I3 => packet_cnt(1),
      I4 => m_axis_tlast_INST_0_i_7_n_0,
      O => m_axis_tlast_INST_0_i_3_n_0
    );
m_axis_tlast_INST_0_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFEFFF"
    )
        port map (
      I0 => packet_cnt(10),
      I1 => packet_cnt(11),
      I2 => packet_cnt(8),
      I3 => packet_cnt(9),
      I4 => m_axis_tlast_INST_0_i_8_n_0,
      O => m_axis_tlast_INST_0_i_4_n_0
    );
m_axis_tlast_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => packet_cnt(21),
      I1 => packet_cnt(20),
      I2 => packet_cnt(23),
      I3 => packet_cnt(22),
      O => m_axis_tlast_INST_0_i_5_n_0
    );
m_axis_tlast_INST_0_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => packet_cnt(29),
      I1 => packet_cnt(28),
      I2 => packet_cnt(31),
      I3 => packet_cnt(30),
      O => m_axis_tlast_INST_0_i_6_n_0
    );
m_axis_tlast_INST_0_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => packet_cnt(5),
      I1 => packet_cnt(4),
      I2 => packet_cnt(7),
      I3 => packet_cnt(6),
      O => m_axis_tlast_INST_0_i_7_n_0
    );
m_axis_tlast_INST_0_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => packet_cnt(13),
      I1 => packet_cnt(12),
      I2 => packet_cnt(15),
      I3 => packet_cnt(14),
      O => m_axis_tlast_INST_0_i_8_n_0
    );
\packet_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => packet_cnt(0),
      O => packet_cnt_0(0)
    );
\packet_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(10),
      O => packet_cnt_0(10)
    );
\packet_cnt[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(11),
      O => packet_cnt_0(11)
    );
\packet_cnt[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(12),
      O => packet_cnt_0(12)
    );
\packet_cnt[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(13),
      O => packet_cnt_0(13)
    );
\packet_cnt[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(14),
      O => packet_cnt_0(14)
    );
\packet_cnt[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(15),
      O => packet_cnt_0(15)
    );
\packet_cnt[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(16),
      O => packet_cnt_0(16)
    );
\packet_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(17),
      O => packet_cnt_0(17)
    );
\packet_cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(18),
      O => packet_cnt_0(18)
    );
\packet_cnt[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(19),
      O => packet_cnt_0(19)
    );
\packet_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(1),
      O => packet_cnt_0(1)
    );
\packet_cnt[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(20),
      O => packet_cnt_0(20)
    );
\packet_cnt[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(21),
      O => packet_cnt_0(21)
    );
\packet_cnt[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(22),
      O => packet_cnt_0(22)
    );
\packet_cnt[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(23),
      O => packet_cnt_0(23)
    );
\packet_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(24),
      O => packet_cnt_0(24)
    );
\packet_cnt[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(25),
      O => packet_cnt_0(25)
    );
\packet_cnt[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(26),
      O => packet_cnt_0(26)
    );
\packet_cnt[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(27),
      O => packet_cnt_0(27)
    );
\packet_cnt[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(28),
      O => packet_cnt_0(28)
    );
\packet_cnt[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(29),
      O => packet_cnt_0(29)
    );
\packet_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(2),
      O => packet_cnt_0(2)
    );
\packet_cnt[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(30),
      O => packet_cnt_0(30)
    );
\packet_cnt[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn,
      O => p_0_in
    );
\packet_cnt[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axis_tvalid,
      I1 => m_axis_tready,
      O => axis_handshake
    );
\packet_cnt[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(31),
      O => packet_cnt_0(31)
    );
\packet_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(3),
      O => packet_cnt_0(3)
    );
\packet_cnt[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(4),
      O => packet_cnt_0(4)
    );
\packet_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(5),
      O => packet_cnt_0(5)
    );
\packet_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(6),
      O => packet_cnt_0(6)
    );
\packet_cnt[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(7),
      O => packet_cnt_0(7)
    );
\packet_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(8),
      O => packet_cnt_0(8)
    );
\packet_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFE0000"
    )
        port map (
      I0 => m_axis_tlast_INST_0_i_1_n_0,
      I1 => m_axis_tlast_INST_0_i_2_n_0,
      I2 => m_axis_tlast_INST_0_i_3_n_0,
      I3 => m_axis_tlast_INST_0_i_4_n_0,
      I4 => data0(9),
      O => packet_cnt_0(9)
    );
\packet_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(0),
      Q => packet_cnt(0),
      R => p_0_in
    );
\packet_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(10),
      Q => packet_cnt(10),
      R => p_0_in
    );
\packet_cnt_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(11),
      Q => packet_cnt(11),
      R => p_0_in
    );
\packet_cnt_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(12),
      Q => packet_cnt(12),
      R => p_0_in
    );
\packet_cnt_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_cnt_reg[8]_i_2_n_0\,
      CO(3) => \packet_cnt_reg[12]_i_2_n_0\,
      CO(2) => \packet_cnt_reg[12]_i_2_n_1\,
      CO(1) => \packet_cnt_reg[12]_i_2_n_2\,
      CO(0) => \packet_cnt_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3 downto 0) => packet_cnt(12 downto 9)
    );
\packet_cnt_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(13),
      Q => packet_cnt(13),
      R => p_0_in
    );
\packet_cnt_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(14),
      Q => packet_cnt(14),
      R => p_0_in
    );
\packet_cnt_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(15),
      Q => packet_cnt(15),
      R => p_0_in
    );
\packet_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(16),
      Q => packet_cnt(16),
      R => p_0_in
    );
\packet_cnt_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_cnt_reg[12]_i_2_n_0\,
      CO(3) => \packet_cnt_reg[16]_i_2_n_0\,
      CO(2) => \packet_cnt_reg[16]_i_2_n_1\,
      CO(1) => \packet_cnt_reg[16]_i_2_n_2\,
      CO(0) => \packet_cnt_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3 downto 0) => packet_cnt(16 downto 13)
    );
\packet_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(17),
      Q => packet_cnt(17),
      R => p_0_in
    );
\packet_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(18),
      Q => packet_cnt(18),
      R => p_0_in
    );
\packet_cnt_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(19),
      Q => packet_cnt(19),
      R => p_0_in
    );
\packet_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(1),
      Q => packet_cnt(1),
      R => p_0_in
    );
\packet_cnt_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(20),
      Q => packet_cnt(20),
      R => p_0_in
    );
\packet_cnt_reg[20]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_cnt_reg[16]_i_2_n_0\,
      CO(3) => \packet_cnt_reg[20]_i_2_n_0\,
      CO(2) => \packet_cnt_reg[20]_i_2_n_1\,
      CO(1) => \packet_cnt_reg[20]_i_2_n_2\,
      CO(0) => \packet_cnt_reg[20]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3 downto 0) => packet_cnt(20 downto 17)
    );
\packet_cnt_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(21),
      Q => packet_cnt(21),
      R => p_0_in
    );
\packet_cnt_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(22),
      Q => packet_cnt(22),
      R => p_0_in
    );
\packet_cnt_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(23),
      Q => packet_cnt(23),
      R => p_0_in
    );
\packet_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(24),
      Q => packet_cnt(24),
      R => p_0_in
    );
\packet_cnt_reg[24]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_cnt_reg[20]_i_2_n_0\,
      CO(3) => \packet_cnt_reg[24]_i_2_n_0\,
      CO(2) => \packet_cnt_reg[24]_i_2_n_1\,
      CO(1) => \packet_cnt_reg[24]_i_2_n_2\,
      CO(0) => \packet_cnt_reg[24]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3 downto 0) => packet_cnt(24 downto 21)
    );
\packet_cnt_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(25),
      Q => packet_cnt(25),
      R => p_0_in
    );
\packet_cnt_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(26),
      Q => packet_cnt(26),
      R => p_0_in
    );
\packet_cnt_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(27),
      Q => packet_cnt(27),
      R => p_0_in
    );
\packet_cnt_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(28),
      Q => packet_cnt(28),
      R => p_0_in
    );
\packet_cnt_reg[28]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_cnt_reg[24]_i_2_n_0\,
      CO(3) => \packet_cnt_reg[28]_i_2_n_0\,
      CO(2) => \packet_cnt_reg[28]_i_2_n_1\,
      CO(1) => \packet_cnt_reg[28]_i_2_n_2\,
      CO(0) => \packet_cnt_reg[28]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3 downto 0) => packet_cnt(28 downto 25)
    );
\packet_cnt_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(29),
      Q => packet_cnt(29),
      R => p_0_in
    );
\packet_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(2),
      Q => packet_cnt(2),
      R => p_0_in
    );
\packet_cnt_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(30),
      Q => packet_cnt(30),
      R => p_0_in
    );
\packet_cnt_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(31),
      Q => packet_cnt(31),
      R => p_0_in
    );
\packet_cnt_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_cnt_reg[28]_i_2_n_0\,
      CO(3 downto 2) => \NLW_packet_cnt_reg[31]_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \packet_cnt_reg[31]_i_4_n_2\,
      CO(0) => \packet_cnt_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_packet_cnt_reg[31]_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => packet_cnt(31 downto 29)
    );
\packet_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(3),
      Q => packet_cnt(3),
      R => p_0_in
    );
\packet_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(4),
      Q => packet_cnt(4),
      R => p_0_in
    );
\packet_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \packet_cnt_reg[4]_i_2_n_0\,
      CO(2) => \packet_cnt_reg[4]_i_2_n_1\,
      CO(1) => \packet_cnt_reg[4]_i_2_n_2\,
      CO(0) => \packet_cnt_reg[4]_i_2_n_3\,
      CYINIT => packet_cnt(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3 downto 0) => packet_cnt(4 downto 1)
    );
\packet_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(5),
      Q => packet_cnt(5),
      R => p_0_in
    );
\packet_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(6),
      Q => packet_cnt(6),
      R => p_0_in
    );
\packet_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(7),
      Q => packet_cnt(7),
      R => p_0_in
    );
\packet_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(8),
      Q => packet_cnt(8),
      R => p_0_in
    );
\packet_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \packet_cnt_reg[4]_i_2_n_0\,
      CO(3) => \packet_cnt_reg[8]_i_2_n_0\,
      CO(2) => \packet_cnt_reg[8]_i_2_n_1\,
      CO(1) => \packet_cnt_reg[8]_i_2_n_2\,
      CO(0) => \packet_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3 downto 0) => packet_cnt(8 downto 5)
    );
\packet_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => axis_handshake,
      D => packet_cnt_0(9),
      Q => packet_cnt(9),
      R => p_0_in
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_tlast_gen_0_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axis_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axis_tvalid : in STD_LOGIC;
    s_axis_tready : out STD_LOGIC;
    m_axis_tready : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_tlast_gen_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_tlast_gen_0_0 : entity is "design_1_tlast_gen_0_0,tlast_gen,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_tlast_gen_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_tlast_gen_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_tlast_gen_0_0 : entity is "tlast_gen,Vivado 2021.2";
end design_1_tlast_gen_0_0;

architecture STRUCTURE of design_1_tlast_gen_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axis_tready\ : STD_LOGIC;
  signal \^s_axis_tdata\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^s_axis_tvalid\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 aclk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF m_axis:s_axis, ASSOCIATED_RESET aresetn, FREQ_HZ 50000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 aresetn RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tlast : signal is "xilinx.com:interface:axis:1.0 m_axis TLAST";
  attribute X_INTERFACE_PARAMETER of m_axis_tlast : signal is "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axis_tready : signal is "xilinx.com:interface:axis:1.0 m_axis TREADY";
  attribute X_INTERFACE_INFO of m_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 m_axis TVALID";
  attribute X_INTERFACE_INFO of s_axis_tready : signal is "xilinx.com:interface:axis:1.0 s_axis TREADY";
  attribute X_INTERFACE_PARAMETER of s_axis_tready : signal is "XIL_INTERFACENAME s_axis, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 50000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axis_tvalid : signal is "xilinx.com:interface:axis:1.0 s_axis TVALID";
  attribute X_INTERFACE_INFO of m_axis_tdata : signal is "xilinx.com:interface:axis:1.0 m_axis TDATA";
  attribute X_INTERFACE_INFO of s_axis_tdata : signal is "xilinx.com:interface:axis:1.0 s_axis TDATA";
begin
  \^m_axis_tready\ <= m_axis_tready;
  \^s_axis_tdata\(7 downto 0) <= s_axis_tdata(7 downto 0);
  \^s_axis_tvalid\ <= s_axis_tvalid;
  m_axis_tdata(31) <= \<const0>\;
  m_axis_tdata(30) <= \<const0>\;
  m_axis_tdata(29) <= \<const0>\;
  m_axis_tdata(28) <= \<const0>\;
  m_axis_tdata(27) <= \<const0>\;
  m_axis_tdata(26) <= \<const0>\;
  m_axis_tdata(25) <= \<const0>\;
  m_axis_tdata(24) <= \<const0>\;
  m_axis_tdata(23) <= \<const0>\;
  m_axis_tdata(22) <= \<const0>\;
  m_axis_tdata(21) <= \<const0>\;
  m_axis_tdata(20) <= \<const0>\;
  m_axis_tdata(19) <= \<const0>\;
  m_axis_tdata(18) <= \<const0>\;
  m_axis_tdata(17) <= \<const0>\;
  m_axis_tdata(16) <= \<const0>\;
  m_axis_tdata(15) <= \<const0>\;
  m_axis_tdata(14) <= \<const0>\;
  m_axis_tdata(13) <= \<const0>\;
  m_axis_tdata(12) <= \<const0>\;
  m_axis_tdata(11) <= \<const0>\;
  m_axis_tdata(10) <= \<const0>\;
  m_axis_tdata(9) <= \<const0>\;
  m_axis_tdata(8) <= \<const0>\;
  m_axis_tdata(7 downto 0) <= \^s_axis_tdata\(7 downto 0);
  m_axis_tvalid <= \^s_axis_tvalid\;
  s_axis_tready <= \^m_axis_tready\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_tlast_gen_0_0_tlast_gen
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axis_tlast => m_axis_tlast,
      m_axis_tready => \^m_axis_tready\,
      s_axis_tvalid => \^s_axis_tvalid\
    );
end STRUCTURE;
