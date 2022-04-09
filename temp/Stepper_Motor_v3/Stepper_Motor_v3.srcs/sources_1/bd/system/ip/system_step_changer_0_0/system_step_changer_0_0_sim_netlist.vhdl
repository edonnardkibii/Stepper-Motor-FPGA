-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb  4 20:54:53 2021
-- Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/James
--               Kibii/OneDrive/Dokumente/Vivado/SoC_Projects/Stepper_Motor_v3/Stepper_Motor_v3.srcs/sources_1/bd/system/ip/system_step_changer_0_0/system_step_changer_0_0_sim_netlist.vhdl}
-- Design      : system_step_changer_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_step_changer_0_0_step_changer is
  port (
    step_type : out STD_LOGIC_VECTOR ( 4 downto 0 );
    step_signal : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_step_changer_0_0_step_changer : entity is "step_changer";
end system_step_changer_0_0_step_changer;

architecture STRUCTURE of system_step_changer_0_0_step_changer is
  signal p_0_in : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sel : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \step_type_inferred__0/i__n_0\ : STD_LOGIC;
  signal \step_type_reg[10]_i_1_n_0\ : STD_LOGIC;
  signal \step_type_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \step_type_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \step_type_reg[9]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \sel[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \sel[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \sel[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \step_type_inferred__0/i_\ : label is "soft_lutpair0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of \step_type_reg[10]\ : label is "LD";
  attribute SOFT_HLUTNM of \step_type_reg[10]_i_1\ : label is "soft_lutpair3";
  attribute XILINX_LEGACY_PRIM of \step_type_reg[11]\ : label is "LD";
  attribute SOFT_HLUTNM of \step_type_reg[11]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \step_type_reg[7]\ : label is "LD";
  attribute XILINX_LEGACY_PRIM of \step_type_reg[8]\ : label is "LD";
  attribute SOFT_HLUTNM of \step_type_reg[8]_i_1\ : label is "soft_lutpair1";
  attribute XILINX_LEGACY_PRIM of \step_type_reg[9]\ : label is "LD";
  attribute SOFT_HLUTNM of \step_type_reg[9]_i_1\ : label is "soft_lutpair2";
begin
\sel[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sel(0),
      O => p_0_in(0)
    );
\sel[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => p_0_in(1)
    );
\sel[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      I2 => sel(2),
      O => p_0_in(2)
    );
\sel_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => step_signal,
      CE => '1',
      D => p_0_in(0),
      Q => sel(0),
      R => '0'
    );
\sel_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => step_signal,
      CE => '1',
      D => p_0_in(1),
      Q => sel(1),
      R => '0'
    );
\sel_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => step_signal,
      CE => '1',
      D => p_0_in(2),
      Q => sel(2),
      R => '0'
    );
\step_type_inferred__0/i_\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"57"
    )
        port map (
      I0 => sel(2),
      I1 => sel(1),
      I2 => sel(0),
      O => \step_type_inferred__0/i__n_0\
    );
\step_type_reg[10]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \step_type_reg[10]_i_1_n_0\,
      G => \step_type_inferred__0/i__n_0\,
      GE => '1',
      Q => step_type(3)
    );
\step_type_reg[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => \step_type_reg[10]_i_1_n_0\
    );
\step_type_reg[11]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \step_type_reg[11]_i_1_n_0\,
      G => \step_type_inferred__0/i__n_0\,
      GE => '1',
      Q => step_type(4)
    );
\step_type_reg[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => sel(2),
      I1 => sel(0),
      I2 => sel(1),
      O => \step_type_reg[11]_i_1_n_0\
    );
\step_type_reg[7]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => sel(2),
      G => \step_type_inferred__0/i__n_0\,
      GE => '1',
      Q => step_type(0)
    );
\step_type_reg[8]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \step_type_reg[8]_i_1_n_0\,
      G => \step_type_inferred__0/i__n_0\,
      GE => '1',
      Q => step_type(1)
    );
\step_type_reg[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => sel(0),
      I1 => sel(1),
      O => \step_type_reg[8]_i_1_n_0\
    );
\step_type_reg[9]\: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => \step_type_reg[9]_i_1_n_0\,
      G => \step_type_inferred__0/i__n_0\,
      GE => '1',
      Q => step_type(2)
    );
\step_type_reg[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sel(1),
      I1 => sel(0),
      O => \step_type_reg[9]_i_1_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_step_changer_0_0 is
  port (
    step_signal : in STD_LOGIC;
    step_type : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_step_changer_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_step_changer_0_0 : entity is "system_step_changer_0_0,step_changer,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_step_changer_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_step_changer_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_step_changer_0_0 : entity is "step_changer,Vivado 2018.2";
end system_step_changer_0_0;

architecture STRUCTURE of system_step_changer_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \^step_type\ : STD_LOGIC_VECTOR ( 11 downto 7 );
begin
  step_type(11 downto 7) <= \^step_type\(11 downto 7);
  step_type(6) <= \<const0>\;
  step_type(5) <= \<const0>\;
  step_type(4) <= \<const0>\;
  step_type(3) <= \<const0>\;
  step_type(2) <= \<const0>\;
  step_type(1) <= \<const0>\;
  step_type(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.system_step_changer_0_0_step_changer
     port map (
      step_signal => step_signal,
      step_type(4 downto 0) => \^step_type\(11 downto 7)
    );
end STRUCTURE;
