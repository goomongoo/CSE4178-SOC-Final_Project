-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.2 (win64) Build 3671981 Fri Oct 14 05:00:03 MDT 2022
-- Date        : Wed Dec 11 12:58:13 2024
-- Host        : DESKTOP-PM7M19D running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top design_1_FND_Encoder_0_0 -prefix
--               design_1_FND_Encoder_0_0_ design_1_FND_Encoder_0_0_sim_netlist.vhdl
-- Design      : design_1_FND_Encoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu3eg-sbva484-1-i
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FND_Encoder_0_0_ovf2seg is
  port (
    seg_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    flag : in STD_LOGIC
  );
end design_1_FND_Encoder_0_0_ovf2seg;

architecture STRUCTURE of design_1_FND_Encoder_0_0_ovf2seg is
  signal \seg0_data_reg[7]_i_1_n_0\ : STD_LOGIC;
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \seg0_data_reg[7]\ : label is "LDC";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of \seg0_data_reg[7]\ : label is "VCC:GE";
begin
\seg0_data_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => \seg0_data_reg[7]_i_1_n_0\,
      D => '1',
      G => flag,
      GE => '1',
      Q => seg_out(0)
    );
\seg0_data_reg[7]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => flag,
      O => \seg0_data_reg[7]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FND_Encoder_0_0_FND_Encoder is
  port (
    seg_out : out STD_LOGIC_VECTOR ( 2 downto 0 );
    com_cnt_reg_0 : out STD_LOGIC;
    com_out : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk_in : in STD_LOGIC;
    flag : in STD_LOGIC;
    reset_n : in STD_LOGIC
  );
end design_1_FND_Encoder_0_0_FND_Encoder;

architecture STRUCTURE of design_1_FND_Encoder_0_0_FND_Encoder is
  signal cnt : STD_LOGIC_VECTOR ( 16 downto 0 );
  signal cnt0 : STD_LOGIC_VECTOR ( 16 downto 1 );
  signal \cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[10]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[11]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[13]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[14]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[15]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[6]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt[9]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[16]_i_2_n_7\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_4\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_5\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_6\ : STD_LOGIC;
  signal \cnt_reg[8]_i_2_n_7\ : STD_LOGIC;
  signal com_cnt_i_1_n_0 : STD_LOGIC;
  signal com_cnt_i_2_n_0 : STD_LOGIC;
  signal \^com_cnt_reg_0\ : STD_LOGIC;
  signal \^seg_out\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_cnt_reg[16]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[11]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \cnt[12]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[13]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt[14]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt[16]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt[1]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \cnt[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \cnt[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[5]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \cnt[6]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[7]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt[8]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \cnt[9]_i_1\ : label is "soft_lutpair4";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \cnt_reg[16]_i_2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_reg[8]_i_2\ : label is 35;
  attribute SOFT_HLUTNM of com_cnt_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \seg_out[1]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \seg_out[4]_INST_0\ : label is "soft_lutpair9";
begin
  com_cnt_reg_0 <= \^com_cnt_reg_0\;
  seg_out(2 downto 0) <= \^seg_out\(2 downto 0);
\cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => cnt(16),
      I1 => cnt(0),
      O => \cnt[0]_i_1_n_0\
    );
\cnt[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(10),
      I1 => cnt(16),
      O => \cnt[10]_i_1_n_0\
    );
\cnt[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(11),
      I1 => cnt(16),
      O => \cnt[11]_i_1_n_0\
    );
\cnt[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(12),
      I1 => cnt(16),
      O => \cnt[12]_i_1_n_0\
    );
\cnt[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(13),
      I1 => cnt(16),
      O => \cnt[13]_i_1_n_0\
    );
\cnt[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(14),
      I1 => cnt(16),
      O => \cnt[14]_i_1_n_0\
    );
\cnt[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(15),
      I1 => cnt(16),
      O => \cnt[15]_i_1_n_0\
    );
\cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(16),
      I1 => cnt(16),
      O => \cnt[16]_i_1_n_0\
    );
\cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(1),
      I1 => cnt(16),
      O => \cnt[1]_i_1_n_0\
    );
\cnt[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(2),
      I1 => cnt(16),
      O => \cnt[2]_i_1_n_0\
    );
\cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(3),
      I1 => cnt(16),
      O => \cnt[3]_i_1_n_0\
    );
\cnt[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(4),
      I1 => cnt(16),
      O => \cnt[4]_i_1_n_0\
    );
\cnt[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(5),
      I1 => cnt(16),
      O => \cnt[5]_i_1_n_0\
    );
\cnt[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(6),
      I1 => cnt(16),
      O => \cnt[6]_i_1_n_0\
    );
\cnt[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(7),
      I1 => cnt(16),
      O => \cnt[7]_i_1_n_0\
    );
\cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(8),
      I1 => cnt(16),
      O => \cnt[8]_i_1_n_0\
    );
\cnt[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cnt0(9),
      I1 => cnt(16),
      O => \cnt[9]_i_1_n_0\
    );
\cnt_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[0]_i_1_n_0\,
      Q => cnt(0)
    );
\cnt_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[10]_i_1_n_0\,
      Q => cnt(10)
    );
\cnt_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[11]_i_1_n_0\,
      Q => cnt(11)
    );
\cnt_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[12]_i_1_n_0\,
      Q => cnt(12)
    );
\cnt_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[13]_i_1_n_0\,
      Q => cnt(13)
    );
\cnt_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[14]_i_1_n_0\,
      Q => cnt(14)
    );
\cnt_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[15]_i_1_n_0\,
      Q => cnt(15)
    );
\cnt_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[16]_i_1_n_0\,
      Q => cnt(16)
    );
\cnt_reg[16]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => \cnt_reg[8]_i_2_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_cnt_reg[16]_i_2_CO_UNCONNECTED\(7),
      CO(6) => \cnt_reg[16]_i_2_n_1\,
      CO(5) => \cnt_reg[16]_i_2_n_2\,
      CO(4) => \cnt_reg[16]_i_2_n_3\,
      CO(3) => \cnt_reg[16]_i_2_n_4\,
      CO(2) => \cnt_reg[16]_i_2_n_5\,
      CO(1) => \cnt_reg[16]_i_2_n_6\,
      CO(0) => \cnt_reg[16]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => cnt0(16 downto 9),
      S(7 downto 0) => cnt(16 downto 9)
    );
\cnt_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[1]_i_1_n_0\,
      Q => cnt(1)
    );
\cnt_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[2]_i_1_n_0\,
      Q => cnt(2)
    );
\cnt_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[3]_i_1_n_0\,
      Q => cnt(3)
    );
\cnt_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[4]_i_1_n_0\,
      Q => cnt(4)
    );
\cnt_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[5]_i_1_n_0\,
      Q => cnt(5)
    );
\cnt_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[6]_i_1_n_0\,
      Q => cnt(6)
    );
\cnt_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[7]_i_1_n_0\,
      Q => cnt(7)
    );
\cnt_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[8]_i_1_n_0\,
      Q => cnt(8)
    );
\cnt_reg[8]_i_2\: unisim.vcomponents.CARRY8
     port map (
      CI => cnt(0),
      CI_TOP => '0',
      CO(7) => \cnt_reg[8]_i_2_n_0\,
      CO(6) => \cnt_reg[8]_i_2_n_1\,
      CO(5) => \cnt_reg[8]_i_2_n_2\,
      CO(4) => \cnt_reg[8]_i_2_n_3\,
      CO(3) => \cnt_reg[8]_i_2_n_4\,
      CO(2) => \cnt_reg[8]_i_2_n_5\,
      CO(1) => \cnt_reg[8]_i_2_n_6\,
      CO(0) => \cnt_reg[8]_i_2_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7 downto 0) => cnt0(8 downto 1),
      S(7 downto 0) => cnt(8 downto 1)
    );
\cnt_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => \cnt[9]_i_1_n_0\,
      Q => cnt(9)
    );
com_cnt_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cnt(16),
      I1 => \^com_cnt_reg_0\,
      O => com_cnt_i_1_n_0
    );
com_cnt_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset_n,
      O => com_cnt_i_2_n_0
    );
com_cnt_reg: unisim.vcomponents.FDCE
     port map (
      C => clk_in,
      CE => '1',
      CLR => com_cnt_i_2_n_0,
      D => com_cnt_i_1_n_0,
      Q => \^com_cnt_reg_0\
    );
\com_out[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^com_cnt_reg_0\,
      O => com_out(0)
    );
ovf2seg_0: entity work.design_1_FND_Encoder_0_0_ovf2seg
     port map (
      flag => flag,
      seg_out(0) => \^seg_out\(2)
    );
\seg_out[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^com_cnt_reg_0\,
      I1 => \^seg_out\(2),
      O => \^seg_out\(0)
    );
\seg_out[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^seg_out\(2),
      I1 => \^com_cnt_reg_0\,
      O => \^seg_out\(1)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_FND_Encoder_0_0 is
  port (
    clk_in : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    flag : in STD_LOGIC;
    seg_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    com_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_FND_Encoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_FND_Encoder_0_0 : entity is "design_1_FND_Encoder_0_0,FND_Encoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_FND_Encoder_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of design_1_FND_Encoder_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_FND_Encoder_0_0 : entity is "FND_Encoder,Vivado 2022.2";
end design_1_FND_Encoder_0_0;

architecture STRUCTURE of design_1_FND_Encoder_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^com_out\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \^seg_out\ : STD_LOGIC_VECTOR ( 6 downto 1 );
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  com_out(3 downto 2) <= \^com_out\(3 downto 2);
  com_out(1) <= \<const1>\;
  com_out(0) <= \<const1>\;
  seg_out(7) <= \^seg_out\(2);
  seg_out(6) <= \^seg_out\(6);
  seg_out(5) <= \^seg_out\(6);
  seg_out(4) <= \^seg_out\(6);
  seg_out(3) <= \^seg_out\(2);
  seg_out(2 downto 1) <= \^seg_out\(2 downto 1);
  seg_out(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.design_1_FND_Encoder_0_0_FND_Encoder
     port map (
      clk_in => clk_in,
      com_cnt_reg_0 => \^com_out\(2),
      com_out(0) => \^com_out\(3),
      flag => flag,
      reset_n => reset_n,
      seg_out(2) => \^seg_out\(2),
      seg_out(1) => \^seg_out\(6),
      seg_out(0) => \^seg_out\(1)
    );
end STRUCTURE;
