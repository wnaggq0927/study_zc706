-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Thu Jan  8 14:54:14 2026
-- Host        : wgq running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_hdmi_test_pattern_0_0_sim_netlist.vhdl
-- Design      : design_1_hdmi_test_pattern_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z045ffg900-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_test_pattern is
  port (
    hdmi_hs : out STD_LOGIC;
    hdmi_vs : out STD_LOGIC;
    hdmi_de : out STD_LOGIC;
    hdmi_data : out STD_LOGIC_VECTOR ( 2 downto 0 );
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_test_pattern;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_test_pattern is
  signal data0 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal h_cnt : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \h_cnt[11]_i_2_n_0\ : STD_LOGIC;
  signal \h_cnt[11]_i_4_n_0\ : STD_LOGIC;
  signal \h_cnt[11]_i_5_n_0\ : STD_LOGIC;
  signal \h_cnt_reg[11]_i_3_n_2\ : STD_LOGIC;
  signal \h_cnt_reg[11]_i_3_n_3\ : STD_LOGIC;
  signal \h_cnt_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \h_cnt_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \h_cnt_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \h_cnt_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \h_cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \h_cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \h_cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \h_cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \h_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \hdmi_data[15]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[15]_i_2_n_0\ : STD_LOGIC;
  signal \hdmi_data[15]_i_3_n_0\ : STD_LOGIC;
  signal \hdmi_data[15]_i_4_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_1_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_2_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_3_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_4_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_5_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_6_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_7_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_8_n_0\ : STD_LOGIC;
  signal \hdmi_data[23]_i_9_n_0\ : STD_LOGIC;
  signal \hdmi_data[7]_i_1_n_0\ : STD_LOGIC;
  signal hdmi_de0 : STD_LOGIC;
  signal hdmi_de_i_2_n_0 : STD_LOGIC;
  signal hdmi_hs_i_2_n_0 : STD_LOGIC;
  signal hdmi_hs_i_3_n_0 : STD_LOGIC;
  signal hdmi_hs_i_4_n_0 : STD_LOGIC;
  signal hdmi_hs_i_5_n_0 : STD_LOGIC;
  signal hdmi_vs_i_1_n_0 : STD_LOGIC;
  signal hdmi_vs_i_2_n_0 : STD_LOGIC;
  signal hdmi_vs_i_3_n_0 : STD_LOGIC;
  signal hdmi_vs_i_4_n_0 : STD_LOGIC;
  signal hdmi_vs_i_5_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal v_cnt : STD_LOGIC;
  signal \v_cnt0_carry__0_n_0\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_1\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_2\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_3\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_4\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_5\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_6\ : STD_LOGIC;
  signal \v_cnt0_carry__0_n_7\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_2\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_3\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_5\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_6\ : STD_LOGIC;
  signal \v_cnt0_carry__1_n_7\ : STD_LOGIC;
  signal v_cnt0_carry_n_0 : STD_LOGIC;
  signal v_cnt0_carry_n_1 : STD_LOGIC;
  signal v_cnt0_carry_n_2 : STD_LOGIC;
  signal v_cnt0_carry_n_3 : STD_LOGIC;
  signal v_cnt0_carry_n_4 : STD_LOGIC;
  signal v_cnt0_carry_n_5 : STD_LOGIC;
  signal v_cnt0_carry_n_6 : STD_LOGIC;
  signal v_cnt0_carry_n_7 : STD_LOGIC;
  signal \v_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[11]_i_2_n_0\ : STD_LOGIC;
  signal \v_cnt[11]_i_3_n_0\ : STD_LOGIC;
  signal \v_cnt[11]_i_4_n_0\ : STD_LOGIC;
  signal \v_cnt[11]_i_5_n_0\ : STD_LOGIC;
  signal \v_cnt[11]_i_6_n_0\ : STD_LOGIC;
  signal \v_cnt[11]_i_7_n_0\ : STD_LOGIC;
  signal \v_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[0]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[10]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[11]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[1]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[2]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[3]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[4]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[5]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[6]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[7]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[8]\ : STD_LOGIC;
  signal \v_cnt_reg_n_0_[9]\ : STD_LOGIC;
  signal \NLW_h_cnt_reg[11]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_h_cnt_reg[11]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_v_cnt0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_v_cnt0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \h_cnt[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_cnt[10]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \h_cnt[11]_i_5\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \h_cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \h_cnt[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \h_cnt[3]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \h_cnt[4]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \h_cnt[5]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \h_cnt[6]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \h_cnt[7]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \h_cnt[8]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \h_cnt[9]_i_1\ : label is "soft_lutpair17";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \h_cnt_reg[11]_i_3\ : label is 35;
  attribute ADDER_THRESHOLD of \h_cnt_reg[4]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \h_cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of \hdmi_data[15]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hdmi_data[15]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_7\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \hdmi_data[23]_i_9\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of hdmi_hs_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of hdmi_hs_i_4 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of hdmi_vs_i_3 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of hdmi_vs_i_5 : label is "soft_lutpair3";
  attribute ADDER_THRESHOLD of v_cnt0_carry : label is 35;
  attribute ADDER_THRESHOLD of \v_cnt0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \v_cnt0_carry__1\ : label is 35;
  attribute SOFT_HLUTNM of \v_cnt[0]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_cnt[10]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \v_cnt[11]_i_3\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \v_cnt[11]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \v_cnt[11]_i_5\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \v_cnt[11]_i_7\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \v_cnt[1]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_cnt[2]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \v_cnt[3]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \v_cnt[4]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \v_cnt[5]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \v_cnt[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \v_cnt[7]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \v_cnt[8]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \v_cnt[9]_i_1\ : label is "soft_lutpair12";
begin
\h_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[0]\,
      O => h_cnt(0)
    );
\h_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(10),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(10)
    );
\h_cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(11),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(11)
    );
\h_cnt[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => rst_n,
      O => \h_cnt[11]_i_2_n_0\
    );
\h_cnt[11]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => \h_cnt[11]_i_5_n_0\,
      I1 => \h_cnt_reg_n_0_[7]\,
      I2 => \h_cnt_reg_n_0_[1]\,
      I3 => \h_cnt_reg_n_0_[10]\,
      I4 => hdmi_hs_i_4_n_0,
      I5 => \h_cnt_reg_n_0_[5]\,
      O => \h_cnt[11]_i_4_n_0\
    );
\h_cnt[11]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[0]\,
      I1 => \h_cnt_reg_n_0_[4]\,
      I2 => \h_cnt_reg_n_0_[2]\,
      I3 => \h_cnt_reg_n_0_[11]\,
      O => \h_cnt[11]_i_5_n_0\
    );
\h_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(1),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(1)
    );
\h_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(2),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(2)
    );
\h_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(3),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(3)
    );
\h_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(4),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(4)
    );
\h_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(5),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(5)
    );
\h_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(6),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(6)
    );
\h_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(7),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(7)
    );
\h_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(8),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(8)
    );
\h_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => data0(9),
      I1 => \h_cnt[11]_i_4_n_0\,
      O => h_cnt(9)
    );
\h_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(0),
      Q => \h_cnt_reg_n_0_[0]\
    );
\h_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(10),
      Q => \h_cnt_reg_n_0_[10]\
    );
\h_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(11),
      Q => \h_cnt_reg_n_0_[11]\
    );
\h_cnt_reg[11]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_cnt_reg[8]_i_2_n_0\,
      CO(3 downto 2) => \NLW_h_cnt_reg[11]_i_3_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \h_cnt_reg[11]_i_3_n_2\,
      CO(0) => \h_cnt_reg[11]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_h_cnt_reg[11]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(11 downto 9),
      S(3) => '0',
      S(2) => \h_cnt_reg_n_0_[11]\,
      S(1) => \h_cnt_reg_n_0_[10]\,
      S(0) => \h_cnt_reg_n_0_[9]\
    );
\h_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(1),
      Q => \h_cnt_reg_n_0_[1]\
    );
\h_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(2),
      Q => \h_cnt_reg_n_0_[2]\
    );
\h_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(3),
      Q => \h_cnt_reg_n_0_[3]\
    );
\h_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(4),
      Q => \h_cnt_reg_n_0_[4]\
    );
\h_cnt_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \h_cnt_reg[4]_i_2_n_0\,
      CO(2) => \h_cnt_reg[4]_i_2_n_1\,
      CO(1) => \h_cnt_reg[4]_i_2_n_2\,
      CO(0) => \h_cnt_reg[4]_i_2_n_3\,
      CYINIT => \h_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \h_cnt_reg_n_0_[4]\,
      S(2) => \h_cnt_reg_n_0_[3]\,
      S(1) => \h_cnt_reg_n_0_[2]\,
      S(0) => \h_cnt_reg_n_0_[1]\
    );
\h_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(5),
      Q => \h_cnt_reg_n_0_[5]\
    );
\h_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(6),
      Q => \h_cnt_reg_n_0_[6]\
    );
\h_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(7),
      Q => \h_cnt_reg_n_0_[7]\
    );
\h_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(8),
      Q => \h_cnt_reg_n_0_[8]\
    );
\h_cnt_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \h_cnt_reg[4]_i_2_n_0\,
      CO(3) => \h_cnt_reg[8]_i_2_n_0\,
      CO(2) => \h_cnt_reg[8]_i_2_n_1\,
      CO(1) => \h_cnt_reg[8]_i_2_n_2\,
      CO(0) => \h_cnt_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \h_cnt_reg_n_0_[8]\,
      S(2) => \h_cnt_reg_n_0_[7]\,
      S(1) => \h_cnt_reg_n_0_[6]\,
      S(0) => \h_cnt_reg_n_0_[5]\
    );
\h_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => '1',
      CLR => \h_cnt[11]_i_2_n_0\,
      D => h_cnt(9),
      Q => \h_cnt_reg_n_0_[9]\
    );
\hdmi_data[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45FF000000000000"
    )
        port map (
      I0 => \hdmi_data[23]_i_5_n_0\,
      I1 => \hdmi_data[15]_i_2_n_0\,
      I2 => \hdmi_data[23]_i_2_n_0\,
      I3 => \hdmi_data[15]_i_3_n_0\,
      I4 => \hdmi_data[23]_i_6_n_0\,
      I5 => hdmi_de0,
      O => \hdmi_data[15]_i_1_n_0\
    );
\hdmi_data[15]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEE0222"
    )
        port map (
      I0 => \hdmi_data[15]_i_4_n_0\,
      I1 => \h_cnt_reg_n_0_[11]\,
      I2 => \h_cnt_reg_n_0_[10]\,
      I3 => \h_cnt_reg_n_0_[9]\,
      I4 => \hdmi_data[23]_i_8_n_0\,
      O => \hdmi_data[15]_i_2_n_0\
    );
\hdmi_data[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFEFEFEFEFEFEFE"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[11]\,
      I1 => \h_cnt_reg_n_0_[10]\,
      I2 => \h_cnt_reg_n_0_[9]\,
      I3 => \v_cnt[11]_i_4_n_0\,
      I4 => \h_cnt_reg_n_0_[5]\,
      I5 => \h_cnt_reg_n_0_[8]\,
      O => \hdmi_data[15]_i_3_n_0\
    );
\hdmi_data[15]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80808000"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[10]\,
      I1 => \h_cnt_reg_n_0_[8]\,
      I2 => \h_cnt_reg_n_0_[7]\,
      I3 => \h_cnt_reg_n_0_[6]\,
      I4 => \h_cnt_reg_n_0_[5]\,
      O => \hdmi_data[15]_i_4_n_0\
    );
\hdmi_data[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00B0FFFF00000000"
    )
        port map (
      I0 => \hdmi_data[23]_i_2_n_0\,
      I1 => \hdmi_data[23]_i_3_n_0\,
      I2 => \hdmi_data[23]_i_4_n_0\,
      I3 => \hdmi_data[23]_i_5_n_0\,
      I4 => \hdmi_data[23]_i_6_n_0\,
      I5 => hdmi_de0,
      O => \hdmi_data[23]_i_1_n_0\
    );
\hdmi_data[23]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FBBBBBBBAAAAAAAA"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[11]\,
      I1 => \hdmi_data[23]_i_7_n_0\,
      I2 => \h_cnt_reg_n_0_[5]\,
      I3 => \h_cnt_reg_n_0_[4]\,
      I4 => \h_cnt_reg_n_0_[7]\,
      I5 => \h_cnt_reg_n_0_[10]\,
      O => \hdmi_data[23]_i_2_n_0\
    );
\hdmi_data[23]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8000"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[9]\,
      I1 => \h_cnt_reg_n_0_[8]\,
      I2 => \h_cnt_reg_n_0_[6]\,
      I3 => \h_cnt_reg_n_0_[7]\,
      I4 => \h_cnt_reg_n_0_[10]\,
      I5 => \h_cnt_reg_n_0_[11]\,
      O => \hdmi_data[23]_i_3_n_0\
    );
\hdmi_data[23]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF07"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[9]\,
      I1 => \h_cnt_reg_n_0_[10]\,
      I2 => \h_cnt_reg_n_0_[11]\,
      I3 => \hdmi_data[23]_i_8_n_0\,
      O => \hdmi_data[23]_i_4_n_0\
    );
\hdmi_data[23]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00FF57FF00000000"
    )
        port map (
      I0 => \v_cnt[11]_i_4_n_0\,
      I1 => \h_cnt_reg_n_0_[4]\,
      I2 => \h_cnt_reg_n_0_[5]\,
      I3 => \h_cnt_reg_n_0_[9]\,
      I4 => \h_cnt_reg_n_0_[8]\,
      I5 => \hdmi_data[23]_i_9_n_0\,
      O => \hdmi_data[23]_i_5_n_0\
    );
\hdmi_data[23]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF80FF"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[5]\,
      I1 => \h_cnt_reg_n_0_[4]\,
      I2 => \v_cnt[11]_i_4_n_0\,
      I3 => \hdmi_data[23]_i_9_n_0\,
      I4 => \h_cnt_reg_n_0_[9]\,
      I5 => \h_cnt_reg_n_0_[8]\,
      O => \hdmi_data[23]_i_6_n_0\
    );
\hdmi_data[23]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0007"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[7]\,
      I1 => \h_cnt_reg_n_0_[6]\,
      I2 => \h_cnt_reg_n_0_[8]\,
      I3 => \h_cnt_reg_n_0_[9]\,
      O => \hdmi_data[23]_i_7_n_0\
    );
\hdmi_data[23]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000001000F000F"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[5]\,
      I1 => \h_cnt_reg_n_0_[4]\,
      I2 => \h_cnt_reg_n_0_[8]\,
      I3 => \h_cnt_reg_n_0_[11]\,
      I4 => \h_cnt_reg_n_0_[6]\,
      I5 => \h_cnt_reg_n_0_[7]\,
      O => \hdmi_data[23]_i_8_n_0\
    );
\hdmi_data[23]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[11]\,
      I1 => \h_cnt_reg_n_0_[10]\,
      O => \hdmi_data[23]_i_9_n_0\
    );
\hdmi_data[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8000000"
    )
        port map (
      I0 => \hdmi_data[23]_i_4_n_0\,
      I1 => \hdmi_data[23]_i_3_n_0\,
      I2 => \hdmi_data[23]_i_5_n_0\,
      I3 => \hdmi_data[15]_i_3_n_0\,
      I4 => hdmi_de0,
      O => \hdmi_data[7]_i_1_n_0\
    );
\hdmi_data_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \hdmi_data[15]_i_1_n_0\,
      Q => hdmi_data(1),
      R => '0'
    );
\hdmi_data_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \hdmi_data[23]_i_1_n_0\,
      Q => hdmi_data(2),
      R => '0'
    );
\hdmi_data_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \hdmi_data[7]_i_1_n_0\,
      Q => hdmi_data(0),
      R => '0'
    );
hdmi_de_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000001555FFFF"
    )
        port map (
      I0 => hdmi_vs_i_5_n_0,
      I1 => \v_cnt_reg_n_0_[5]\,
      I2 => \v_cnt_reg_n_0_[4]\,
      I3 => \v_cnt_reg_n_0_[3]\,
      I4 => \v_cnt_reg_n_0_[10]\,
      I5 => hdmi_de_i_2_n_0,
      O => hdmi_de0
    );
hdmi_de_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFF8000"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[8]\,
      I1 => \h_cnt_reg_n_0_[7]\,
      I2 => \h_cnt_reg_n_0_[9]\,
      I3 => \h_cnt_reg_n_0_[10]\,
      I4 => \v_cnt_reg_n_0_[11]\,
      I5 => \h_cnt_reg_n_0_[11]\,
      O => hdmi_de_i_2_n_0
    );
hdmi_de_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hdmi_de0,
      Q => hdmi_de,
      R => '0'
    );
hdmi_hs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFF7FFF7F0055"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[10]\,
      I1 => hdmi_hs_i_2_n_0,
      I2 => hdmi_hs_i_3_n_0,
      I3 => \h_cnt_reg_n_0_[11]\,
      I4 => hdmi_hs_i_4_n_0,
      I5 => hdmi_hs_i_5_n_0,
      O => p_0_in
    );
hdmi_hs_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[7]\,
      I1 => \h_cnt_reg_n_0_[6]\,
      I2 => \h_cnt_reg_n_0_[8]\,
      I3 => \h_cnt_reg_n_0_[9]\,
      O => hdmi_hs_i_2_n_0
    );
hdmi_hs_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EA"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[5]\,
      I1 => \h_cnt_reg_n_0_[3]\,
      I2 => \h_cnt_reg_n_0_[4]\,
      O => hdmi_hs_i_3_n_0
    );
hdmi_hs_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[8]\,
      I1 => \h_cnt_reg_n_0_[9]\,
      I2 => \h_cnt_reg_n_0_[3]\,
      I3 => \h_cnt_reg_n_0_[6]\,
      O => hdmi_hs_i_4_n_0
    );
hdmi_hs_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[4]\,
      I1 => \h_cnt_reg_n_0_[5]\,
      I2 => \h_cnt_reg_n_0_[10]\,
      I3 => \h_cnt_reg_n_0_[2]\,
      I4 => \h_cnt_reg_n_0_[7]\,
      O => hdmi_hs_i_5_n_0
    );
hdmi_hs_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in,
      Q => hdmi_hs,
      R => '0'
    );
hdmi_vs_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEEEFEEEFEEFFFF"
    )
        port map (
      I0 => hdmi_vs_i_2_n_0,
      I1 => hdmi_vs_i_3_n_0,
      I2 => hdmi_vs_i_4_n_0,
      I3 => \v_cnt_reg_n_0_[6]\,
      I4 => \v_cnt_reg_n_0_[2]\,
      I5 => hdmi_vs_i_5_n_0,
      O => hdmi_vs_i_1_n_0
    );
hdmi_vs_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"55557FFF"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[10]\,
      I1 => \v_cnt_reg_n_0_[3]\,
      I2 => \v_cnt_reg_n_0_[4]\,
      I3 => \v_cnt_reg_n_0_[5]\,
      I4 => hdmi_vs_i_5_n_0,
      O => hdmi_vs_i_2_n_0
    );
hdmi_vs_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[11]\,
      I1 => \v_cnt_reg_n_0_[9]\,
      I2 => \v_cnt_reg_n_0_[8]\,
      I3 => \v_cnt_reg_n_0_[7]\,
      O => hdmi_vs_i_3_n_0
    );
hdmi_vs_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[3]\,
      I1 => \v_cnt_reg_n_0_[1]\,
      I2 => \v_cnt_reg_n_0_[0]\,
      I3 => \v_cnt_reg_n_0_[4]\,
      I4 => \v_cnt_reg_n_0_[5]\,
      I5 => \v_cnt_reg_n_0_[2]\,
      O => hdmi_vs_i_4_n_0
    );
hdmi_vs_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[8]\,
      I1 => \v_cnt_reg_n_0_[9]\,
      I2 => \v_cnt_reg_n_0_[6]\,
      I3 => \v_cnt_reg_n_0_[7]\,
      O => hdmi_vs_i_5_n_0
    );
hdmi_vs_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => hdmi_vs_i_1_n_0,
      Q => hdmi_vs,
      R => '0'
    );
v_cnt0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => v_cnt0_carry_n_0,
      CO(2) => v_cnt0_carry_n_1,
      CO(1) => v_cnt0_carry_n_2,
      CO(0) => v_cnt0_carry_n_3,
      CYINIT => \v_cnt_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3) => v_cnt0_carry_n_4,
      O(2) => v_cnt0_carry_n_5,
      O(1) => v_cnt0_carry_n_6,
      O(0) => v_cnt0_carry_n_7,
      S(3) => \v_cnt_reg_n_0_[4]\,
      S(2) => \v_cnt_reg_n_0_[3]\,
      S(1) => \v_cnt_reg_n_0_[2]\,
      S(0) => \v_cnt_reg_n_0_[1]\
    );
\v_cnt0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => v_cnt0_carry_n_0,
      CO(3) => \v_cnt0_carry__0_n_0\,
      CO(2) => \v_cnt0_carry__0_n_1\,
      CO(1) => \v_cnt0_carry__0_n_2\,
      CO(0) => \v_cnt0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \v_cnt0_carry__0_n_4\,
      O(2) => \v_cnt0_carry__0_n_5\,
      O(1) => \v_cnt0_carry__0_n_6\,
      O(0) => \v_cnt0_carry__0_n_7\,
      S(3) => \v_cnt_reg_n_0_[8]\,
      S(2) => \v_cnt_reg_n_0_[7]\,
      S(1) => \v_cnt_reg_n_0_[6]\,
      S(0) => \v_cnt_reg_n_0_[5]\
    );
\v_cnt0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \v_cnt0_carry__0_n_0\,
      CO(3 downto 2) => \NLW_v_cnt0_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \v_cnt0_carry__1_n_2\,
      CO(0) => \v_cnt0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_v_cnt0_carry__1_O_UNCONNECTED\(3),
      O(2) => \v_cnt0_carry__1_n_5\,
      O(1) => \v_cnt0_carry__1_n_6\,
      O(0) => \v_cnt0_carry__1_n_7\,
      S(3) => '0',
      S(2) => \v_cnt_reg_n_0_[11]\,
      S(1) => \v_cnt_reg_n_0_[10]\,
      S(0) => \v_cnt_reg_n_0_[9]\
    );
\v_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[0]\,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[0]_i_1_n_0\
    );
\v_cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_cnt0_carry__1_n_6\,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[10]_i_1_n_0\
    );
\v_cnt[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200020002"
    )
        port map (
      I0 => \v_cnt[11]_i_3_n_0\,
      I1 => \v_cnt[11]_i_4_n_0\,
      I2 => \v_cnt[11]_i_5_n_0\,
      I3 => \h_cnt_reg_n_0_[5]\,
      I4 => \h_cnt_reg_n_0_[3]\,
      I5 => \h_cnt_reg_n_0_[4]\,
      O => v_cnt
    );
\v_cnt[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_cnt0_carry__1_n_5\,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[11]_i_2_n_0\
    );
\v_cnt[11]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[10]\,
      I1 => \h_cnt_reg_n_0_[1]\,
      I2 => \h_cnt_reg_n_0_[7]\,
      I3 => \h_cnt[11]_i_5_n_0\,
      O => \v_cnt[11]_i_3_n_0\
    );
\v_cnt[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[6]\,
      I1 => \h_cnt_reg_n_0_[7]\,
      O => \v_cnt[11]_i_4_n_0\
    );
\v_cnt[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \h_cnt_reg_n_0_[9]\,
      I1 => \h_cnt_reg_n_0_[8]\,
      O => \v_cnt[11]_i_5_n_0\
    );
\v_cnt[11]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => \v_cnt[11]_i_7_n_0\,
      I1 => \v_cnt_reg_n_0_[5]\,
      I2 => \v_cnt_reg_n_0_[6]\,
      I3 => \v_cnt_reg_n_0_[2]\,
      I4 => \v_cnt_reg_n_0_[10]\,
      I5 => hdmi_vs_i_3_n_0,
      O => \v_cnt[11]_i_6_n_0\
    );
\v_cnt[11]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \v_cnt_reg_n_0_[4]\,
      I1 => \v_cnt_reg_n_0_[0]\,
      I2 => \v_cnt_reg_n_0_[1]\,
      I3 => \v_cnt_reg_n_0_[3]\,
      O => \v_cnt[11]_i_7_n_0\
    );
\v_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_cnt0_carry_n_7,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[1]_i_1_n_0\
    );
\v_cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_cnt0_carry_n_6,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[2]_i_1_n_0\
    );
\v_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_cnt0_carry_n_5,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[3]_i_1_n_0\
    );
\v_cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => v_cnt0_carry_n_4,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[4]_i_1_n_0\
    );
\v_cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_cnt0_carry__0_n_7\,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[5]_i_1_n_0\
    );
\v_cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_cnt0_carry__0_n_6\,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[6]_i_1_n_0\
    );
\v_cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_cnt0_carry__0_n_5\,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[7]_i_1_n_0\
    );
\v_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_cnt0_carry__0_n_4\,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[8]_i_1_n_0\
    );
\v_cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \v_cnt0_carry__1_n_7\,
      I1 => \v_cnt[11]_i_6_n_0\,
      O => \v_cnt[9]_i_1_n_0\
    );
\v_cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[0]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[0]\
    );
\v_cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[10]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[10]\
    );
\v_cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[11]_i_2_n_0\,
      Q => \v_cnt_reg_n_0_[11]\
    );
\v_cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[1]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[1]\
    );
\v_cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[2]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[2]\
    );
\v_cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[3]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[3]\
    );
\v_cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[4]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[4]\
    );
\v_cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[5]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[5]\
    );
\v_cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[6]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[6]\
    );
\v_cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[7]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[7]\
    );
\v_cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[8]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[8]\
    );
\v_cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk,
      CE => v_cnt,
      CLR => \h_cnt[11]_i_2_n_0\,
      D => \v_cnt[9]_i_1_n_0\,
      Q => \v_cnt_reg_n_0_[9]\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clk : in STD_LOGIC;
    rst_n : in STD_LOGIC;
    hdmi_hs : out STD_LOGIC;
    hdmi_vs : out STD_LOGIC;
    hdmi_de : out STD_LOGIC;
    hdmi_data : out STD_LOGIC_VECTOR ( 23 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_hdmi_test_pattern_0_0,hdmi_test_pattern,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "hdmi_test_pattern,Vivado 2021.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal \^hdmi_data\ : STD_LOGIC_VECTOR ( 22 downto 6 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 142857132, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_1_FCLK_CLK1, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of rst_n : signal is "xilinx.com:signal:reset:1.0 rst_n RST";
  attribute X_INTERFACE_PARAMETER of rst_n : signal is "XIL_INTERFACENAME rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  hdmi_data(23) <= \^hdmi_data\(22);
  hdmi_data(22) <= \^hdmi_data\(22);
  hdmi_data(21) <= \^hdmi_data\(22);
  hdmi_data(20) <= \^hdmi_data\(22);
  hdmi_data(19) <= \^hdmi_data\(22);
  hdmi_data(18) <= \^hdmi_data\(22);
  hdmi_data(17) <= \^hdmi_data\(22);
  hdmi_data(16) <= \^hdmi_data\(22);
  hdmi_data(15) <= \^hdmi_data\(14);
  hdmi_data(14) <= \^hdmi_data\(14);
  hdmi_data(13) <= \^hdmi_data\(14);
  hdmi_data(12) <= \^hdmi_data\(14);
  hdmi_data(11) <= \^hdmi_data\(14);
  hdmi_data(10) <= \^hdmi_data\(14);
  hdmi_data(9) <= \^hdmi_data\(14);
  hdmi_data(8) <= \^hdmi_data\(14);
  hdmi_data(7) <= \^hdmi_data\(6);
  hdmi_data(6) <= \^hdmi_data\(6);
  hdmi_data(5) <= \^hdmi_data\(6);
  hdmi_data(4) <= \^hdmi_data\(6);
  hdmi_data(3) <= \^hdmi_data\(6);
  hdmi_data(2) <= \^hdmi_data\(6);
  hdmi_data(1) <= \^hdmi_data\(6);
  hdmi_data(0) <= \^hdmi_data\(6);
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hdmi_test_pattern
     port map (
      clk => clk,
      hdmi_data(2) => \^hdmi_data\(22),
      hdmi_data(1) => \^hdmi_data\(14),
      hdmi_data(0) => \^hdmi_data\(6),
      hdmi_de => hdmi_de,
      hdmi_hs => hdmi_hs,
      hdmi_vs => hdmi_vs,
      rst_n => rst_n
    );
end STRUCTURE;
