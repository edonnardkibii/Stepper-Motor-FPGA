-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb  4 20:54:43 2021
-- Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_speed_ctrl_0_0_sim_netlist.vhdl
-- Design      : system_speed_ctrl_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_speed_ctrl is
  port (
    new_clock : out STD_LOGIC;
    clock : in STD_LOGIC;
    time_divider : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_speed_ctrl;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_speed_ctrl is
  signal \counter0_carry__0_n_2\ : STD_LOGIC;
  signal \counter0_carry__0_n_3\ : STD_LOGIC;
  signal \counter0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal counter0_carry_i_1_n_0 : STD_LOGIC;
  signal \counter0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal counter0_carry_i_2_n_0 : STD_LOGIC;
  signal \counter0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal counter0_carry_i_3_n_0 : STD_LOGIC;
  signal \counter0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal counter0_carry_i_4_n_0 : STD_LOGIC;
  signal counter0_carry_i_5_n_0 : STD_LOGIC;
  signal counter0_carry_i_6_n_0 : STD_LOGIC;
  signal counter0_carry_i_7_n_0 : STD_LOGIC;
  signal counter0_carry_i_8_n_0 : STD_LOGIC;
  signal counter0_carry_n_0 : STD_LOGIC;
  signal counter0_carry_n_1 : STD_LOGIC;
  signal counter0_carry_n_2 : STD_LOGIC;
  signal counter0_carry_n_3 : STD_LOGIC;
  signal counter1 : STD_LOGIC_VECTOR ( 11 downto 1 );
  signal \counter1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_0\ : STD_LOGIC;
  signal \counter1_carry__0_n_1\ : STD_LOGIC;
  signal \counter1_carry__0_n_2\ : STD_LOGIC;
  signal \counter1_carry__0_n_3\ : STD_LOGIC;
  signal \counter1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \counter1_carry__1_n_2\ : STD_LOGIC;
  signal \counter1_carry__1_n_3\ : STD_LOGIC;
  signal counter1_carry_i_1_n_0 : STD_LOGIC;
  signal counter1_carry_i_2_n_0 : STD_LOGIC;
  signal counter1_carry_i_3_n_0 : STD_LOGIC;
  signal counter1_carry_i_4_n_0 : STD_LOGIC;
  signal counter1_carry_n_0 : STD_LOGIC;
  signal counter1_carry_n_1 : STD_LOGIC;
  signal counter1_carry_n_2 : STD_LOGIC;
  signal counter1_carry_n_3 : STD_LOGIC;
  signal \counter[10]_i_1_n_0\ : STD_LOGIC;
  signal \counter[10]_i_3_n_0\ : STD_LOGIC;
  signal \counter[10]_i_4_n_0\ : STD_LOGIC;
  signal \counter[10]_i_5_n_0\ : STD_LOGIC;
  signal \counter[10]_i_6_n_0\ : STD_LOGIC;
  signal \counter[10]_i_7_n_0\ : STD_LOGIC;
  signal \counter[9]_i_2_n_0\ : STD_LOGIC;
  signal \counter_reg__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal new_clock_i_2_n_0 : STD_LOGIC;
  signal new_clock_i_3_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 10 downto 0 );
  signal NLW_counter0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter0_carry__0_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_counter1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_counter1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter[10]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter[10]_i_6\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[10]_i_7\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter[6]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter[9]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of new_clock_i_2 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of new_clock_i_3 : label is "soft_lutpair4";
begin
counter0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter0_carry_n_0,
      CO(2) => counter0_carry_n_1,
      CO(1) => counter0_carry_n_2,
      CO(0) => counter0_carry_n_3,
      CYINIT => '1',
      DI(3) => counter0_carry_i_1_n_0,
      DI(2) => counter0_carry_i_2_n_0,
      DI(1) => counter0_carry_i_3_n_0,
      DI(0) => counter0_carry_i_4_n_0,
      O(3 downto 0) => NLW_counter0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => counter0_carry_i_5_n_0,
      S(2) => counter0_carry_i_6_n_0,
      S(1) => counter0_carry_i_7_n_0,
      S(0) => counter0_carry_i_8_n_0
    );
\counter0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter0_carry_n_0,
      CO(3 downto 2) => \NLW_counter0_carry__0_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter0_carry__0_n_2\,
      CO(0) => \counter0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => \counter0_carry_i_1__0_n_0\,
      DI(0) => \counter0_carry_i_2__0_n_0\,
      O(3 downto 0) => \NLW_counter0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \counter0_carry_i_3__0_n_0\,
      S(0) => \counter0_carry_i_4__0_n_0\
    );
counter0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \counter_reg__0\(7),
      I1 => counter1(7),
      I2 => \counter_reg__0\(6),
      I3 => counter1(6),
      O => counter0_carry_i_1_n_0
    );
\counter0_carry_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => counter1(11),
      I1 => \counter_reg__0\(10),
      I2 => counter1(10),
      O => \counter0_carry_i_1__0_n_0\
    );
counter0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7510"
    )
        port map (
      I0 => counter1(5),
      I1 => counter1(4),
      I2 => \counter_reg__0\(4),
      I3 => \counter_reg__0\(5),
      O => counter0_carry_i_2_n_0
    );
\counter0_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \counter_reg__0\(9),
      I1 => counter1(9),
      I2 => \counter_reg__0\(8),
      I3 => counter1(8),
      O => \counter0_carry_i_2__0_n_0\
    );
counter0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => counter1(3),
      I2 => \counter_reg__0\(2),
      I3 => counter1(2),
      O => counter0_carry_i_3_n_0
    );
\counter0_carry_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"21"
    )
        port map (
      I0 => counter1(10),
      I1 => counter1(11),
      I2 => \counter_reg__0\(10),
      O => \counter0_carry_i_3__0_n_0\
    );
counter0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D444"
    )
        port map (
      I0 => counter1(1),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => time_divider(0),
      O => counter0_carry_i_4_n_0
    );
\counter0_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter1(8),
      I1 => \counter_reg__0\(8),
      I2 => counter1(9),
      I3 => \counter_reg__0\(9),
      O => \counter0_carry_i_4__0_n_0\
    );
counter0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter1(6),
      I1 => \counter_reg__0\(6),
      I2 => counter1(7),
      I3 => \counter_reg__0\(7),
      O => counter0_carry_i_5_n_0
    );
counter0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8421"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => \counter_reg__0\(5),
      I2 => counter1(4),
      I3 => counter1(5),
      O => counter0_carry_i_6_n_0
    );
counter0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => counter1(3),
      I1 => \counter_reg__0\(3),
      I2 => counter1(2),
      I3 => \counter_reg__0\(2),
      O => counter0_carry_i_7_n_0
    );
counter0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2184"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      I2 => counter1(1),
      I3 => time_divider(0),
      O => counter0_carry_i_8_n_0
    );
counter1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => counter1_carry_n_0,
      CO(2) => counter1_carry_n_1,
      CO(1) => counter1_carry_n_2,
      CO(0) => counter1_carry_n_3,
      CYINIT => time_divider(0),
      DI(3 downto 0) => time_divider(4 downto 1),
      O(3 downto 0) => counter1(4 downto 1),
      S(3) => counter1_carry_i_1_n_0,
      S(2) => counter1_carry_i_2_n_0,
      S(1) => counter1_carry_i_3_n_0,
      S(0) => counter1_carry_i_4_n_0
    );
\counter1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => counter1_carry_n_0,
      CO(3) => \counter1_carry__0_n_0\,
      CO(2) => \counter1_carry__0_n_1\,
      CO(1) => \counter1_carry__0_n_2\,
      CO(0) => \counter1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => time_divider(8 downto 5),
      O(3 downto 0) => counter1(8 downto 5),
      S(3) => \counter1_carry__0_i_1_n_0\,
      S(2) => \counter1_carry__0_i_2_n_0\,
      S(1) => \counter1_carry__0_i_3_n_0\,
      S(0) => \counter1_carry__0_i_4_n_0\
    );
\counter1_carry__0_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(8),
      O => \counter1_carry__0_i_1_n_0\
    );
\counter1_carry__0_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(7),
      O => \counter1_carry__0_i_2_n_0\
    );
\counter1_carry__0_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(6),
      O => \counter1_carry__0_i_3_n_0\
    );
\counter1_carry__0_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(5),
      O => \counter1_carry__0_i_4_n_0\
    );
\counter1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter1_carry__0_n_0\,
      CO(3 downto 2) => \NLW_counter1_carry__1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \counter1_carry__1_n_2\,
      CO(0) => \counter1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1 downto 0) => time_divider(10 downto 9),
      O(3) => \NLW_counter1_carry__1_O_UNCONNECTED\(3),
      O(2 downto 0) => counter1(11 downto 9),
      S(3) => '0',
      S(2) => \counter1_carry__1_i_1_n_0\,
      S(1) => \counter1_carry__1_i_2_n_0\,
      S(0) => \counter1_carry__1_i_3_n_0\
    );
\counter1_carry__1_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(11),
      O => \counter1_carry__1_i_1_n_0\
    );
\counter1_carry__1_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(10),
      O => \counter1_carry__1_i_2_n_0\
    );
\counter1_carry__1_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(9),
      O => \counter1_carry__1_i_3_n_0\
    );
counter1_carry_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(4),
      O => counter1_carry_i_1_n_0
    );
counter1_carry_i_2: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(3),
      O => counter1_carry_i_2_n_0
    );
counter1_carry_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(2),
      O => counter1_carry_i_3_n_0
    );
counter1_carry_i_4: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => time_divider(1),
      O => counter1_carry_i_4_n_0
    );
\counter[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_reg__0\(0),
      O => \p_0_in__0\(0)
    );
\counter[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFEFAAAAAAAAA"
    )
        port map (
      I0 => \counter[10]_i_3_n_0\,
      I1 => \counter[10]_i_4_n_0\,
      I2 => \counter[10]_i_5_n_0\,
      I3 => time_divider(2),
      I4 => time_divider(3),
      I5 => \counter0_carry__0_n_2\,
      O => \counter[10]_i_1_n_0\
    );
\counter[10]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFF2000"
    )
        port map (
      I0 => \counter_reg__0\(9),
      I1 => new_clock_i_3_n_0,
      I2 => \counter[10]_i_6_n_0\,
      I3 => \counter_reg__0\(8),
      I4 => \counter_reg__0\(10),
      O => \p_0_in__0\(10)
    );
\counter[10]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAFEFFAAAAAAAA"
    )
        port map (
      I0 => new_clock_i_2_n_0,
      I1 => \counter_reg__0\(3),
      I2 => \counter_reg__0\(2),
      I3 => \counter[10]_i_7_n_0\,
      I4 => new_clock_i_3_n_0,
      I5 => \counter_reg__0\(8),
      O => \counter[10]_i_3_n_0\
    );
\counter[10]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => time_divider(4),
      I1 => time_divider(5),
      I2 => time_divider(6),
      I3 => time_divider(8),
      I4 => time_divider(7),
      O => \counter[10]_i_4_n_0\
    );
\counter[10]_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => time_divider(9),
      I1 => time_divider(11),
      I2 => time_divider(10),
      O => \counter[10]_i_5_n_0\
    );
\counter[10]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \counter_reg__0\(3),
      I1 => \counter_reg__0\(2),
      I2 => \counter_reg__0\(1),
      I3 => \counter_reg__0\(0),
      O => \counter[10]_i_6_n_0\
    );
\counter[10]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \counter_reg__0\(1),
      I1 => \counter_reg__0\(0),
      O => \counter[10]_i_7_n_0\
    );
\counter[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      O => \p_0_in__0\(1)
    );
\counter[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      O => \p_0_in__0\(2)
    );
\counter[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_reg__0\(2),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(0),
      I3 => \counter_reg__0\(3),
      O => \p_0_in__0\(3)
    );
\counter[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter_reg__0\(0),
      I1 => \counter_reg__0\(1),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(3),
      I4 => \counter_reg__0\(4),
      O => \p_0_in__0\(4)
    );
\counter[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => \counter_reg__0\(3),
      I2 => \counter_reg__0\(2),
      I3 => \counter_reg__0\(1),
      I4 => \counter_reg__0\(0),
      I5 => \counter_reg__0\(5),
      O => \p_0_in__0\(5)
    );
\counter[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter[10]_i_6_n_0\,
      I1 => \counter_reg__0\(4),
      I2 => \counter_reg__0\(5),
      I3 => \counter_reg__0\(6),
      O => \p_0_in__0\(6)
    );
\counter[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \counter[10]_i_6_n_0\,
      I1 => \counter_reg__0\(5),
      I2 => \counter_reg__0\(4),
      I3 => \counter_reg__0\(6),
      I4 => \counter_reg__0\(7),
      O => \p_0_in__0\(7)
    );
\counter[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => \counter_reg__0\(4),
      I2 => \counter_reg__0\(5),
      I3 => \counter_reg__0\(7),
      I4 => \counter[10]_i_6_n_0\,
      I5 => \counter_reg__0\(8),
      O => \p_0_in__0\(8)
    );
\counter[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FFFFF00800000"
    )
        port map (
      I0 => \counter_reg__0\(8),
      I1 => \counter[10]_i_6_n_0\,
      I2 => \counter_reg__0\(7),
      I3 => \counter[9]_i_2_n_0\,
      I4 => \counter_reg__0\(6),
      I5 => \counter_reg__0\(9),
      O => \p_0_in__0\(9)
    );
\counter[9]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => \counter_reg__0\(4),
      I1 => \counter_reg__0\(5),
      O => \counter[9]_i_2_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \counter_reg__0\(0),
      R => \counter[10]_i_1_n_0\
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(10),
      Q => \counter_reg__0\(10),
      R => \counter[10]_i_1_n_0\
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \counter_reg__0\(1),
      R => \counter[10]_i_1_n_0\
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \counter_reg__0\(2),
      R => \counter[10]_i_1_n_0\
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \counter_reg__0\(3),
      R => \counter[10]_i_1_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \counter_reg__0\(4),
      R => \counter[10]_i_1_n_0\
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \counter_reg__0\(5),
      R => \counter[10]_i_1_n_0\
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => \counter_reg__0\(6),
      R => \counter[10]_i_1_n_0\
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => \counter_reg__0\(7),
      R => \counter[10]_i_1_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => \counter_reg__0\(8),
      R => \counter[10]_i_1_n_0\
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clock,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => \counter_reg__0\(9),
      R => \counter[10]_i_1_n_0\
    );
new_clock_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1010101111111111"
    )
        port map (
      I0 => \counter_reg__0\(8),
      I1 => new_clock_i_2_n_0,
      I2 => new_clock_i_3_n_0,
      I3 => \counter_reg__0\(1),
      I4 => \counter_reg__0\(2),
      I5 => \counter_reg__0\(3),
      O => p_0_in
    );
new_clock_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \counter_reg__0\(10),
      I1 => \counter_reg__0\(9),
      O => new_clock_i_2_n_0
    );
new_clock_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \counter_reg__0\(6),
      I1 => \counter_reg__0\(4),
      I2 => \counter_reg__0\(5),
      I3 => \counter_reg__0\(7),
      O => new_clock_i_3_n_0
    );
new_clock_reg: unisim.vcomponents.FDRE
     port map (
      C => clock,
      CE => '1',
      D => p_0_in,
      Q => new_clock,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clock : in STD_LOGIC;
    time_divider : in STD_LOGIC_VECTOR ( 11 downto 0 );
    new_clock : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "system_speed_ctrl_0_0,speed_ctrl,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "speed_ctrl,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clock : signal is "xilinx.com:signal:clock:1.0 clock CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clock : signal is "XIL_INTERFACENAME clock, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of new_clock : signal is "xilinx.com:signal:clock:1.0 new_clock CLK";
  attribute X_INTERFACE_PARAMETER of new_clock : signal is "XIL_INTERFACENAME new_clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_speed_ctrl_0_0_new_clock";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_speed_ctrl
     port map (
      clock => clock,
      new_clock => new_clock,
      time_divider(11 downto 0) => time_divider(11 downto 0)
    );
end STRUCTURE;
