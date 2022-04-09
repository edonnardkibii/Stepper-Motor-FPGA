-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb  4 20:54:55 2021
-- Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/James
--               Kibii/OneDrive/Dokumente/Vivado/SoC_Projects/Stepper_Motor_v3/Stepper_Motor_v3.srcs/sources_1/bd/system/ip/system_spwm_0_0/system_spwm_0_0_sim_netlist.vhdl}
-- Design      : system_spwm_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_spwm_0_0_spwm is
  port (
    sine : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cos : out STD_LOGIC_VECTOR ( 15 downto 0 );
    counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_a_p : out STD_LOGIC;
    pwm_a_n : out STD_LOGIC;
    pwm_b_p : out STD_LOGIC;
    pwm_b_n : out STD_LOGIC;
    clk : in STD_LOGIC;
    step_type : in STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_spwm_0_0_spwm : entity is "spwm";
end system_spwm_0_0_spwm;

architecture STRUCTURE of system_spwm_0_0_spwm is
  signal clear : STD_LOGIC;
  signal \cos[12]_i_4_n_0\ : STD_LOGIC;
  signal \cos[12]_i_5_n_0\ : STD_LOGIC;
  signal \cos[12]_i_6_n_0\ : STD_LOGIC;
  signal \cos[12]_i_7_n_0\ : STD_LOGIC;
  signal \cos[13]_i_4_n_0\ : STD_LOGIC;
  signal \cos[13]_i_5_n_0\ : STD_LOGIC;
  signal \cos[13]_i_6_n_0\ : STD_LOGIC;
  signal \cos[13]_i_7_n_0\ : STD_LOGIC;
  signal \cos[14]_i_2_n_0\ : STD_LOGIC;
  signal \cos[14]_i_3_n_0\ : STD_LOGIC;
  signal \cos[15]_i_1_n_0\ : STD_LOGIC;
  signal cos_abs : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \cos_abs[0]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[10]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[11]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[12]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[13]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[14]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[1]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[2]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[3]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[4]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[5]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[6]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[7]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[8]_i_1_n_0\ : STD_LOGIC;
  signal \cos_abs[9]_i_1_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[10]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[11]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[6]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[8]_i_9_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_10_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_11_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_12_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_13_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_7_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_8_n_0\ : STD_LOGIC;
  signal \cos_reg[9]_i_9_n_0\ : STD_LOGIC;
  signal \^counter\ : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \counter[11]_i_2_n_0\ : STD_LOGIC;
  signal \counter[11]_i_3_n_0\ : STD_LOGIC;
  signal \counter[11]_i_4_n_0\ : STD_LOGIC;
  signal \counter[11]_i_5_n_0\ : STD_LOGIC;
  signal \counter[15]_i_3_n_0\ : STD_LOGIC;
  signal \counter[15]_i_4_n_0\ : STD_LOGIC;
  signal \counter[3]_i_2_n_0\ : STD_LOGIC;
  signal \counter[3]_i_3_n_0\ : STD_LOGIC;
  signal \counter[3]_i_4_n_0\ : STD_LOGIC;
  signal \counter[3]_i_5_n_0\ : STD_LOGIC;
  signal \counter[7]_i_2_n_0\ : STD_LOGIC;
  signal \counter[7]_i_3_n_0\ : STD_LOGIC;
  signal \counter[7]_i_4_n_0\ : STD_LOGIC;
  signal \counter[7]_i_5_n_0\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[15]_i_2_n_1\ : STD_LOGIC;
  signal \counter_reg[15]_i_2_n_2\ : STD_LOGIC;
  signal \counter_reg[15]_i_2_n_3\ : STD_LOGIC;
  signal \counter_reg[15]_i_2_n_4\ : STD_LOGIC;
  signal \counter_reg[15]_i_2_n_5\ : STD_LOGIC;
  signal \counter_reg[15]_i_2_n_6\ : STD_LOGIC;
  signal \counter_reg[15]_i_2_n_7\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \counter_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \g0_b0__0_n_0\ : STD_LOGIC;
  signal g0_b0_n_0 : STD_LOGIC;
  signal \g0_b10__0_n_0\ : STD_LOGIC;
  signal g0_b10_n_0 : STD_LOGIC;
  signal \g0_b11__0_n_0\ : STD_LOGIC;
  signal g0_b11_n_0 : STD_LOGIC;
  signal g0_b12_n_0 : STD_LOGIC;
  signal \g0_b1__0_n_0\ : STD_LOGIC;
  signal g0_b1_n_0 : STD_LOGIC;
  signal \g0_b2__0_n_0\ : STD_LOGIC;
  signal g0_b2_n_0 : STD_LOGIC;
  signal \g0_b3__0_n_0\ : STD_LOGIC;
  signal g0_b3_n_0 : STD_LOGIC;
  signal \g0_b4__0_n_0\ : STD_LOGIC;
  signal g0_b4_n_0 : STD_LOGIC;
  signal \g0_b5__0_n_0\ : STD_LOGIC;
  signal g0_b5_n_0 : STD_LOGIC;
  signal \g0_b6__0_n_0\ : STD_LOGIC;
  signal g0_b6_n_0 : STD_LOGIC;
  signal \g0_b7__0_n_0\ : STD_LOGIC;
  signal g0_b7_n_0 : STD_LOGIC;
  signal \g0_b8__0_n_0\ : STD_LOGIC;
  signal g0_b8_n_0 : STD_LOGIC;
  signal \g0_b9__0_n_0\ : STD_LOGIC;
  signal g0_b9_n_0 : STD_LOGIC;
  signal \g10_b0__0_n_0\ : STD_LOGIC;
  signal g10_b0_n_0 : STD_LOGIC;
  signal \g10_b10__0_n_0\ : STD_LOGIC;
  signal g10_b10_n_0 : STD_LOGIC;
  signal \g10_b11__0_n_0\ : STD_LOGIC;
  signal g10_b11_n_0 : STD_LOGIC;
  signal \g10_b12__0_n_0\ : STD_LOGIC;
  signal g10_b12_n_0 : STD_LOGIC;
  signal \g10_b13__0_n_0\ : STD_LOGIC;
  signal g10_b13_n_0 : STD_LOGIC;
  signal g10_b14_n_0 : STD_LOGIC;
  signal \g10_b1__0_n_0\ : STD_LOGIC;
  signal g10_b1_n_0 : STD_LOGIC;
  signal \g10_b2__0_n_0\ : STD_LOGIC;
  signal g10_b2_n_0 : STD_LOGIC;
  signal \g10_b3__0_n_0\ : STD_LOGIC;
  signal g10_b3_n_0 : STD_LOGIC;
  signal \g10_b4__0_n_0\ : STD_LOGIC;
  signal g10_b4_n_0 : STD_LOGIC;
  signal \g10_b5__0_n_0\ : STD_LOGIC;
  signal g10_b5_n_0 : STD_LOGIC;
  signal \g10_b6__0_n_0\ : STD_LOGIC;
  signal g10_b6_n_0 : STD_LOGIC;
  signal \g10_b7__0_n_0\ : STD_LOGIC;
  signal g10_b7_n_0 : STD_LOGIC;
  signal \g10_b8__0_n_0\ : STD_LOGIC;
  signal g10_b8_n_0 : STD_LOGIC;
  signal \g10_b9__0_n_0\ : STD_LOGIC;
  signal g10_b9_n_0 : STD_LOGIC;
  signal \g11_b0__0_n_0\ : STD_LOGIC;
  signal g11_b0_n_0 : STD_LOGIC;
  signal \g11_b10__0_n_0\ : STD_LOGIC;
  signal g11_b10_n_0 : STD_LOGIC;
  signal \g11_b11__0_n_0\ : STD_LOGIC;
  signal g11_b11_n_0 : STD_LOGIC;
  signal g11_b12_n_0 : STD_LOGIC;
  signal \g11_b1__0_n_0\ : STD_LOGIC;
  signal g11_b1_n_0 : STD_LOGIC;
  signal \g11_b2__0_n_0\ : STD_LOGIC;
  signal g11_b2_n_0 : STD_LOGIC;
  signal \g11_b3__0_n_0\ : STD_LOGIC;
  signal g11_b3_n_0 : STD_LOGIC;
  signal \g11_b4__0_n_0\ : STD_LOGIC;
  signal g11_b4_n_0 : STD_LOGIC;
  signal \g11_b5__0_n_0\ : STD_LOGIC;
  signal g11_b5_n_0 : STD_LOGIC;
  signal \g11_b6__0_n_0\ : STD_LOGIC;
  signal g11_b6_n_0 : STD_LOGIC;
  signal \g11_b7__0_n_0\ : STD_LOGIC;
  signal g11_b7_n_0 : STD_LOGIC;
  signal \g11_b8__0_n_0\ : STD_LOGIC;
  signal g11_b8_n_0 : STD_LOGIC;
  signal \g11_b9__0_n_0\ : STD_LOGIC;
  signal g11_b9_n_0 : STD_LOGIC;
  signal \g12_b0__0_n_0\ : STD_LOGIC;
  signal g12_b0_n_0 : STD_LOGIC;
  signal \g12_b10__0_n_0\ : STD_LOGIC;
  signal g12_b10_n_0 : STD_LOGIC;
  signal \g12_b11__0_n_0\ : STD_LOGIC;
  signal g12_b11_n_0 : STD_LOGIC;
  signal g12_b12_n_0 : STD_LOGIC;
  signal \g12_b1__0_n_0\ : STD_LOGIC;
  signal g12_b1_n_0 : STD_LOGIC;
  signal \g12_b2__0_n_0\ : STD_LOGIC;
  signal g12_b2_n_0 : STD_LOGIC;
  signal \g12_b3__0_n_0\ : STD_LOGIC;
  signal g12_b3_n_0 : STD_LOGIC;
  signal \g12_b4__0_n_0\ : STD_LOGIC;
  signal g12_b4_n_0 : STD_LOGIC;
  signal \g12_b5__0_n_0\ : STD_LOGIC;
  signal g12_b5_n_0 : STD_LOGIC;
  signal \g12_b6__0_n_0\ : STD_LOGIC;
  signal g12_b6_n_0 : STD_LOGIC;
  signal \g12_b7__0_n_0\ : STD_LOGIC;
  signal g12_b7_n_0 : STD_LOGIC;
  signal \g12_b8__0_n_0\ : STD_LOGIC;
  signal g12_b8_n_0 : STD_LOGIC;
  signal \g12_b9__0_n_0\ : STD_LOGIC;
  signal g12_b9_n_0 : STD_LOGIC;
  signal \g13_b0__0_n_0\ : STD_LOGIC;
  signal g13_b0_n_0 : STD_LOGIC;
  signal \g13_b10__0_n_0\ : STD_LOGIC;
  signal g13_b10_n_0 : STD_LOGIC;
  signal \g13_b11__0_n_0\ : STD_LOGIC;
  signal g13_b11_n_0 : STD_LOGIC;
  signal \g13_b12__0_n_0\ : STD_LOGIC;
  signal g13_b12_n_0 : STD_LOGIC;
  signal \g13_b13__0_n_0\ : STD_LOGIC;
  signal g13_b13_n_0 : STD_LOGIC;
  signal g13_b14_n_0 : STD_LOGIC;
  signal \g13_b1__0_n_0\ : STD_LOGIC;
  signal g13_b1_n_0 : STD_LOGIC;
  signal \g13_b2__0_n_0\ : STD_LOGIC;
  signal g13_b2_n_0 : STD_LOGIC;
  signal \g13_b3__0_n_0\ : STD_LOGIC;
  signal g13_b3_n_0 : STD_LOGIC;
  signal \g13_b4__0_n_0\ : STD_LOGIC;
  signal g13_b4_n_0 : STD_LOGIC;
  signal \g13_b5__0_n_0\ : STD_LOGIC;
  signal g13_b5_n_0 : STD_LOGIC;
  signal \g13_b6__0_n_0\ : STD_LOGIC;
  signal g13_b6_n_0 : STD_LOGIC;
  signal \g13_b7__0_n_0\ : STD_LOGIC;
  signal g13_b7_n_0 : STD_LOGIC;
  signal \g13_b8__0_n_0\ : STD_LOGIC;
  signal g13_b8_n_0 : STD_LOGIC;
  signal \g13_b9__0_n_0\ : STD_LOGIC;
  signal g13_b9_n_0 : STD_LOGIC;
  signal \g14_b0__0_n_0\ : STD_LOGIC;
  signal g14_b0_n_0 : STD_LOGIC;
  signal \g14_b10__0_n_0\ : STD_LOGIC;
  signal g14_b10_n_0 : STD_LOGIC;
  signal \g14_b11__0_n_0\ : STD_LOGIC;
  signal g14_b11_n_0 : STD_LOGIC;
  signal \g14_b12__0_n_0\ : STD_LOGIC;
  signal g14_b12_n_0 : STD_LOGIC;
  signal \g14_b13__0_n_0\ : STD_LOGIC;
  signal g14_b13_n_0 : STD_LOGIC;
  signal g14_b14_n_0 : STD_LOGIC;
  signal \g14_b1__0_n_0\ : STD_LOGIC;
  signal g14_b1_n_0 : STD_LOGIC;
  signal \g14_b2__0_n_0\ : STD_LOGIC;
  signal g14_b2_n_0 : STD_LOGIC;
  signal \g14_b3__0_n_0\ : STD_LOGIC;
  signal g14_b3_n_0 : STD_LOGIC;
  signal \g14_b4__0_n_0\ : STD_LOGIC;
  signal g14_b4_n_0 : STD_LOGIC;
  signal \g14_b5__0_n_0\ : STD_LOGIC;
  signal g14_b5_n_0 : STD_LOGIC;
  signal \g14_b6__0_n_0\ : STD_LOGIC;
  signal g14_b6_n_0 : STD_LOGIC;
  signal \g14_b7__0_n_0\ : STD_LOGIC;
  signal g14_b7_n_0 : STD_LOGIC;
  signal \g14_b8__0_n_0\ : STD_LOGIC;
  signal g14_b8_n_0 : STD_LOGIC;
  signal \g14_b9__0_n_0\ : STD_LOGIC;
  signal g14_b9_n_0 : STD_LOGIC;
  signal \g15_b0__0_n_0\ : STD_LOGIC;
  signal g15_b0_n_0 : STD_LOGIC;
  signal \g15_b10__0_n_0\ : STD_LOGIC;
  signal g15_b10_n_0 : STD_LOGIC;
  signal \g15_b11__0_n_0\ : STD_LOGIC;
  signal g15_b11_n_0 : STD_LOGIC;
  signal g15_b12_n_0 : STD_LOGIC;
  signal \g15_b1__0_n_0\ : STD_LOGIC;
  signal g15_b1_n_0 : STD_LOGIC;
  signal \g15_b2__0_n_0\ : STD_LOGIC;
  signal g15_b2_n_0 : STD_LOGIC;
  signal \g15_b3__0_n_0\ : STD_LOGIC;
  signal g15_b3_n_0 : STD_LOGIC;
  signal \g15_b4__0_n_0\ : STD_LOGIC;
  signal g15_b4_n_0 : STD_LOGIC;
  signal \g15_b5__0_n_0\ : STD_LOGIC;
  signal g15_b5_n_0 : STD_LOGIC;
  signal \g15_b6__0_n_0\ : STD_LOGIC;
  signal g15_b6_n_0 : STD_LOGIC;
  signal \g15_b7__0_n_0\ : STD_LOGIC;
  signal g15_b7_n_0 : STD_LOGIC;
  signal \g15_b8__0_n_0\ : STD_LOGIC;
  signal g15_b8_n_0 : STD_LOGIC;
  signal \g15_b9__0_n_0\ : STD_LOGIC;
  signal g15_b9_n_0 : STD_LOGIC;
  signal \g1_b0__0_n_0\ : STD_LOGIC;
  signal g1_b0_n_0 : STD_LOGIC;
  signal \g1_b10__0_n_0\ : STD_LOGIC;
  signal g1_b10_n_0 : STD_LOGIC;
  signal \g1_b11__0_n_0\ : STD_LOGIC;
  signal g1_b11_n_0 : STD_LOGIC;
  signal \g1_b12__0_n_0\ : STD_LOGIC;
  signal g1_b12_n_0 : STD_LOGIC;
  signal \g1_b13__0_n_0\ : STD_LOGIC;
  signal g1_b13_n_0 : STD_LOGIC;
  signal g1_b14_n_0 : STD_LOGIC;
  signal \g1_b1__0_n_0\ : STD_LOGIC;
  signal g1_b1_n_0 : STD_LOGIC;
  signal \g1_b2__0_n_0\ : STD_LOGIC;
  signal g1_b2_n_0 : STD_LOGIC;
  signal \g1_b3__0_n_0\ : STD_LOGIC;
  signal g1_b3_n_0 : STD_LOGIC;
  signal \g1_b4__0_n_0\ : STD_LOGIC;
  signal g1_b4_n_0 : STD_LOGIC;
  signal \g1_b5__0_n_0\ : STD_LOGIC;
  signal g1_b5_n_0 : STD_LOGIC;
  signal \g1_b6__0_n_0\ : STD_LOGIC;
  signal g1_b6_n_0 : STD_LOGIC;
  signal \g1_b7__0_n_0\ : STD_LOGIC;
  signal g1_b7_n_0 : STD_LOGIC;
  signal \g1_b8__0_n_0\ : STD_LOGIC;
  signal g1_b8_n_0 : STD_LOGIC;
  signal \g1_b9__0_n_0\ : STD_LOGIC;
  signal g1_b9_n_0 : STD_LOGIC;
  signal \g2_b0__0_n_0\ : STD_LOGIC;
  signal g2_b0_n_0 : STD_LOGIC;
  signal \g2_b10__0_n_0\ : STD_LOGIC;
  signal g2_b10_n_0 : STD_LOGIC;
  signal \g2_b11__0_n_0\ : STD_LOGIC;
  signal g2_b11_n_0 : STD_LOGIC;
  signal \g2_b12__0_n_0\ : STD_LOGIC;
  signal g2_b12_n_0 : STD_LOGIC;
  signal \g2_b13__0_n_0\ : STD_LOGIC;
  signal g2_b13_n_0 : STD_LOGIC;
  signal g2_b14_n_0 : STD_LOGIC;
  signal \g2_b1__0_n_0\ : STD_LOGIC;
  signal g2_b1_n_0 : STD_LOGIC;
  signal \g2_b2__0_n_0\ : STD_LOGIC;
  signal g2_b2_n_0 : STD_LOGIC;
  signal \g2_b3__0_n_0\ : STD_LOGIC;
  signal g2_b3_n_0 : STD_LOGIC;
  signal \g2_b4__0_n_0\ : STD_LOGIC;
  signal g2_b4_n_0 : STD_LOGIC;
  signal \g2_b5__0_n_0\ : STD_LOGIC;
  signal g2_b5_n_0 : STD_LOGIC;
  signal \g2_b6__0_n_0\ : STD_LOGIC;
  signal g2_b6_n_0 : STD_LOGIC;
  signal \g2_b7__0_n_0\ : STD_LOGIC;
  signal g2_b7_n_0 : STD_LOGIC;
  signal \g2_b8__0_n_0\ : STD_LOGIC;
  signal g2_b8_n_0 : STD_LOGIC;
  signal \g2_b9__0_n_0\ : STD_LOGIC;
  signal g2_b9_n_0 : STD_LOGIC;
  signal \g3_b0__0_n_0\ : STD_LOGIC;
  signal g3_b0_n_0 : STD_LOGIC;
  signal \g3_b10__0_n_0\ : STD_LOGIC;
  signal g3_b10_n_0 : STD_LOGIC;
  signal \g3_b11__0_n_0\ : STD_LOGIC;
  signal g3_b11_n_0 : STD_LOGIC;
  signal g3_b12_n_0 : STD_LOGIC;
  signal g3_b13_n_0 : STD_LOGIC;
  signal \g3_b1__0_n_0\ : STD_LOGIC;
  signal g3_b1_n_0 : STD_LOGIC;
  signal \g3_b2__0_n_0\ : STD_LOGIC;
  signal g3_b2_n_0 : STD_LOGIC;
  signal \g3_b3__0_n_0\ : STD_LOGIC;
  signal g3_b3_n_0 : STD_LOGIC;
  signal \g3_b4__0_n_0\ : STD_LOGIC;
  signal g3_b4_n_0 : STD_LOGIC;
  signal \g3_b5__0_n_0\ : STD_LOGIC;
  signal g3_b5_n_0 : STD_LOGIC;
  signal \g3_b6__0_n_0\ : STD_LOGIC;
  signal g3_b6_n_0 : STD_LOGIC;
  signal \g3_b7__0_n_0\ : STD_LOGIC;
  signal g3_b7_n_0 : STD_LOGIC;
  signal \g3_b8__0_n_0\ : STD_LOGIC;
  signal g3_b8_n_0 : STD_LOGIC;
  signal \g3_b9__0_n_0\ : STD_LOGIC;
  signal g3_b9_n_0 : STD_LOGIC;
  signal \g4_b0__0_n_0\ : STD_LOGIC;
  signal g4_b0_n_0 : STD_LOGIC;
  signal \g4_b10__0_n_0\ : STD_LOGIC;
  signal g4_b10_n_0 : STD_LOGIC;
  signal \g4_b11__0_n_0\ : STD_LOGIC;
  signal g4_b11_n_0 : STD_LOGIC;
  signal g4_b12_n_0 : STD_LOGIC;
  signal g4_b13_n_0 : STD_LOGIC;
  signal \g4_b1__0_n_0\ : STD_LOGIC;
  signal g4_b1_n_0 : STD_LOGIC;
  signal \g4_b2__0_n_0\ : STD_LOGIC;
  signal g4_b2_n_0 : STD_LOGIC;
  signal \g4_b3__0_n_0\ : STD_LOGIC;
  signal g4_b3_n_0 : STD_LOGIC;
  signal \g4_b4__0_n_0\ : STD_LOGIC;
  signal g4_b4_n_0 : STD_LOGIC;
  signal \g4_b5__0_n_0\ : STD_LOGIC;
  signal g4_b5_n_0 : STD_LOGIC;
  signal \g4_b6__0_n_0\ : STD_LOGIC;
  signal g4_b6_n_0 : STD_LOGIC;
  signal \g4_b7__0_n_0\ : STD_LOGIC;
  signal g4_b7_n_0 : STD_LOGIC;
  signal \g4_b8__0_n_0\ : STD_LOGIC;
  signal g4_b8_n_0 : STD_LOGIC;
  signal \g4_b9__0_n_0\ : STD_LOGIC;
  signal g4_b9_n_0 : STD_LOGIC;
  signal \g5_b0__0_n_0\ : STD_LOGIC;
  signal g5_b0_n_0 : STD_LOGIC;
  signal \g5_b10__0_n_0\ : STD_LOGIC;
  signal g5_b10_n_0 : STD_LOGIC;
  signal \g5_b11__0_n_0\ : STD_LOGIC;
  signal g5_b11_n_0 : STD_LOGIC;
  signal \g5_b12__0_n_0\ : STD_LOGIC;
  signal g5_b12_n_0 : STD_LOGIC;
  signal \g5_b13__0_n_0\ : STD_LOGIC;
  signal g5_b13_n_0 : STD_LOGIC;
  signal g5_b14_n_0 : STD_LOGIC;
  signal \g5_b1__0_n_0\ : STD_LOGIC;
  signal g5_b1_n_0 : STD_LOGIC;
  signal \g5_b2__0_n_0\ : STD_LOGIC;
  signal g5_b2_n_0 : STD_LOGIC;
  signal \g5_b3__0_n_0\ : STD_LOGIC;
  signal g5_b3_n_0 : STD_LOGIC;
  signal \g5_b4__0_n_0\ : STD_LOGIC;
  signal g5_b4_n_0 : STD_LOGIC;
  signal \g5_b5__0_n_0\ : STD_LOGIC;
  signal g5_b5_n_0 : STD_LOGIC;
  signal \g5_b6__0_n_0\ : STD_LOGIC;
  signal g5_b6_n_0 : STD_LOGIC;
  signal \g5_b7__0_n_0\ : STD_LOGIC;
  signal g5_b7_n_0 : STD_LOGIC;
  signal \g5_b8__0_n_0\ : STD_LOGIC;
  signal g5_b8_n_0 : STD_LOGIC;
  signal \g5_b9__0_n_0\ : STD_LOGIC;
  signal g5_b9_n_0 : STD_LOGIC;
  signal \g6_b0__0_n_0\ : STD_LOGIC;
  signal g6_b0_n_0 : STD_LOGIC;
  signal \g6_b10__0_n_0\ : STD_LOGIC;
  signal g6_b10_n_0 : STD_LOGIC;
  signal \g6_b11__0_n_0\ : STD_LOGIC;
  signal g6_b11_n_0 : STD_LOGIC;
  signal \g6_b12__0_n_0\ : STD_LOGIC;
  signal g6_b12_n_0 : STD_LOGIC;
  signal \g6_b13__0_n_0\ : STD_LOGIC;
  signal g6_b13_n_0 : STD_LOGIC;
  signal g6_b14_n_0 : STD_LOGIC;
  signal \g6_b1__0_n_0\ : STD_LOGIC;
  signal g6_b1_n_0 : STD_LOGIC;
  signal \g6_b2__0_n_0\ : STD_LOGIC;
  signal g6_b2_n_0 : STD_LOGIC;
  signal \g6_b3__0_n_0\ : STD_LOGIC;
  signal g6_b3_n_0 : STD_LOGIC;
  signal \g6_b4__0_n_0\ : STD_LOGIC;
  signal g6_b4_n_0 : STD_LOGIC;
  signal \g6_b5__0_n_0\ : STD_LOGIC;
  signal g6_b5_n_0 : STD_LOGIC;
  signal \g6_b6__0_n_0\ : STD_LOGIC;
  signal g6_b6_n_0 : STD_LOGIC;
  signal \g6_b7__0_n_0\ : STD_LOGIC;
  signal g6_b7_n_0 : STD_LOGIC;
  signal \g6_b8__0_n_0\ : STD_LOGIC;
  signal g6_b8_n_0 : STD_LOGIC;
  signal \g6_b9__0_n_0\ : STD_LOGIC;
  signal g6_b9_n_0 : STD_LOGIC;
  signal \g7_b0__0_n_0\ : STD_LOGIC;
  signal g7_b0_n_0 : STD_LOGIC;
  signal \g7_b10__0_n_0\ : STD_LOGIC;
  signal g7_b10_n_0 : STD_LOGIC;
  signal \g7_b11__0_n_0\ : STD_LOGIC;
  signal g7_b11_n_0 : STD_LOGIC;
  signal g7_b12_n_0 : STD_LOGIC;
  signal g7_b13_n_0 : STD_LOGIC;
  signal \g7_b1__0_n_0\ : STD_LOGIC;
  signal g7_b1_n_0 : STD_LOGIC;
  signal \g7_b2__0_n_0\ : STD_LOGIC;
  signal g7_b2_n_0 : STD_LOGIC;
  signal \g7_b3__0_n_0\ : STD_LOGIC;
  signal g7_b3_n_0 : STD_LOGIC;
  signal \g7_b4__0_n_0\ : STD_LOGIC;
  signal g7_b4_n_0 : STD_LOGIC;
  signal \g7_b5__0_n_0\ : STD_LOGIC;
  signal g7_b5_n_0 : STD_LOGIC;
  signal \g7_b6__0_n_0\ : STD_LOGIC;
  signal g7_b6_n_0 : STD_LOGIC;
  signal \g7_b7__0_n_0\ : STD_LOGIC;
  signal g7_b7_n_0 : STD_LOGIC;
  signal \g7_b8__0_n_0\ : STD_LOGIC;
  signal g7_b8_n_0 : STD_LOGIC;
  signal \g7_b9__0_n_0\ : STD_LOGIC;
  signal g7_b9_n_0 : STD_LOGIC;
  signal \g8_b0__0_n_0\ : STD_LOGIC;
  signal g8_b0_n_0 : STD_LOGIC;
  signal \g8_b10__0_n_0\ : STD_LOGIC;
  signal g8_b10_n_0 : STD_LOGIC;
  signal \g8_b11__0_n_0\ : STD_LOGIC;
  signal g8_b11_n_0 : STD_LOGIC;
  signal g8_b12_n_0 : STD_LOGIC;
  signal g8_b13_n_0 : STD_LOGIC;
  signal \g8_b1__0_n_0\ : STD_LOGIC;
  signal g8_b1_n_0 : STD_LOGIC;
  signal \g8_b2__0_n_0\ : STD_LOGIC;
  signal g8_b2_n_0 : STD_LOGIC;
  signal \g8_b3__0_n_0\ : STD_LOGIC;
  signal g8_b3_n_0 : STD_LOGIC;
  signal \g8_b4__0_n_0\ : STD_LOGIC;
  signal g8_b4_n_0 : STD_LOGIC;
  signal \g8_b5__0_n_0\ : STD_LOGIC;
  signal g8_b5_n_0 : STD_LOGIC;
  signal \g8_b6__0_n_0\ : STD_LOGIC;
  signal g8_b6_n_0 : STD_LOGIC;
  signal \g8_b7__0_n_0\ : STD_LOGIC;
  signal g8_b7_n_0 : STD_LOGIC;
  signal \g8_b8__0_n_0\ : STD_LOGIC;
  signal g8_b8_n_0 : STD_LOGIC;
  signal \g8_b9__0_n_0\ : STD_LOGIC;
  signal g8_b9_n_0 : STD_LOGIC;
  signal \g9_b0__0_n_0\ : STD_LOGIC;
  signal g9_b0_n_0 : STD_LOGIC;
  signal \g9_b10__0_n_0\ : STD_LOGIC;
  signal g9_b10_n_0 : STD_LOGIC;
  signal \g9_b11__0_n_0\ : STD_LOGIC;
  signal g9_b11_n_0 : STD_LOGIC;
  signal \g9_b12__0_n_0\ : STD_LOGIC;
  signal g9_b12_n_0 : STD_LOGIC;
  signal \g9_b13__0_n_0\ : STD_LOGIC;
  signal g9_b13_n_0 : STD_LOGIC;
  signal g9_b14_n_0 : STD_LOGIC;
  signal \g9_b1__0_n_0\ : STD_LOGIC;
  signal g9_b1_n_0 : STD_LOGIC;
  signal \g9_b2__0_n_0\ : STD_LOGIC;
  signal g9_b2_n_0 : STD_LOGIC;
  signal \g9_b3__0_n_0\ : STD_LOGIC;
  signal g9_b3_n_0 : STD_LOGIC;
  signal \g9_b4__0_n_0\ : STD_LOGIC;
  signal g9_b4_n_0 : STD_LOGIC;
  signal \g9_b5__0_n_0\ : STD_LOGIC;
  signal g9_b5_n_0 : STD_LOGIC;
  signal \g9_b6__0_n_0\ : STD_LOGIC;
  signal g9_b6_n_0 : STD_LOGIC;
  signal \g9_b7__0_n_0\ : STD_LOGIC;
  signal g9_b7_n_0 : STD_LOGIC;
  signal \g9_b8__0_n_0\ : STD_LOGIC;
  signal g9_b8_n_0 : STD_LOGIC;
  signal \g9_b9__0_n_0\ : STD_LOGIC;
  signal g9_b9_n_0 : STD_LOGIC;
  signal i : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \i0_inferred__0/i__carry__0_n_0\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__0_n_1\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__0_n_2\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__0_n_3\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_1\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_2\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry__1_n_3\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_0\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_1\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_2\ : STD_LOGIC;
  signal \i0_inferred__0/i__carry_n_3\ : STD_LOGIC;
  signal \i[0]_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_4_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_5_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_6_n_3\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_0\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_1\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_2\ : STD_LOGIC;
  signal \i__carry__0_i_7_n_3\ : STD_LOGIC;
  signal \i__carry__1_i_1_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_2_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_3_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_2\ : STD_LOGIC;
  signal \i__carry__1_i_4_n_3\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_0\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_1\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_2\ : STD_LOGIC;
  signal \i__carry__1_i_5_n_3\ : STD_LOGIC;
  signal \i__carry_i_1_n_0\ : STD_LOGIC;
  signal \i__carry_i_2_n_0\ : STD_LOGIC;
  signal \i__carry_i_3_n_0\ : STD_LOGIC;
  signal \i__carry_i_4_n_0\ : STD_LOGIC;
  signal i_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \i_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \i_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \i_reg_rep[0]__0_n_0\ : STD_LOGIC;
  signal \i_reg_rep[0]__0_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[0]_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[1]__0_n_0\ : STD_LOGIC;
  signal \i_reg_rep[1]__0_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[1]_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[2]__0_n_0\ : STD_LOGIC;
  signal \i_reg_rep[2]__0_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[2]_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[3]__0_n_0\ : STD_LOGIC;
  signal \i_reg_rep[3]__0_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[3]_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[4]__0_n_0\ : STD_LOGIC;
  signal \i_reg_rep[4]__0_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[4]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg_rep[4]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg_rep[4]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg_rep[4]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg_rep[4]_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[5]__0_n_0\ : STD_LOGIC;
  signal \i_reg_rep[5]__0_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[5]_rep_n_0\ : STD_LOGIC;
  signal \i_reg_rep[6]__0_n_0\ : STD_LOGIC;
  signal \i_reg_rep[7]__0_n_0\ : STD_LOGIC;
  signal \i_reg_rep[8]__0_n_0\ : STD_LOGIC;
  signal \i_reg_rep[8]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg_rep[8]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg_rep[8]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg_rep[8]_i_1_n_3\ : STD_LOGIC;
  signal \i_reg_rep[9]__0_n_0\ : STD_LOGIC;
  signal \i_reg_rep[9]_i_1_n_0\ : STD_LOGIC;
  signal \i_reg_rep[9]_i_1_n_1\ : STD_LOGIC;
  signal \i_reg_rep[9]_i_1_n_2\ : STD_LOGIC;
  signal \i_reg_rep[9]_i_1_n_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 31 downto 10 );
  signal p_0_in_0 : STD_LOGIC;
  signal \p_0_in__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal p_0_out : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \p_0_out__0\ : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal p_1_in : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal pwm_a_n_i_1_n_0 : STD_LOGIC;
  signal \pwm_a_p0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_i_5_n_0\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_i_6_n_0\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_i_7_n_0\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_i_8_n_0\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_n_0\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_n_1\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_n_2\ : STD_LOGIC;
  signal \pwm_a_p0_carry__0_n_3\ : STD_LOGIC;
  signal pwm_a_p0_carry_i_1_n_0 : STD_LOGIC;
  signal pwm_a_p0_carry_i_2_n_0 : STD_LOGIC;
  signal pwm_a_p0_carry_i_3_n_0 : STD_LOGIC;
  signal pwm_a_p0_carry_i_4_n_0 : STD_LOGIC;
  signal pwm_a_p0_carry_i_5_n_0 : STD_LOGIC;
  signal pwm_a_p0_carry_i_6_n_0 : STD_LOGIC;
  signal pwm_a_p0_carry_i_7_n_0 : STD_LOGIC;
  signal pwm_a_p0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_a_p0_carry_n_0 : STD_LOGIC;
  signal pwm_a_p0_carry_n_1 : STD_LOGIC;
  signal pwm_a_p0_carry_n_2 : STD_LOGIC;
  signal pwm_a_p0_carry_n_3 : STD_LOGIC;
  signal pwm_a_p_i_1_n_0 : STD_LOGIC;
  signal pwm_b_n_i_1_n_0 : STD_LOGIC;
  signal \pwm_b_p0_carry__0_n_0\ : STD_LOGIC;
  signal \pwm_b_p0_carry__0_n_1\ : STD_LOGIC;
  signal \pwm_b_p0_carry__0_n_2\ : STD_LOGIC;
  signal \pwm_b_p0_carry__0_n_3\ : STD_LOGIC;
  signal \pwm_b_p0_carry_i_1__0_n_0\ : STD_LOGIC;
  signal pwm_b_p0_carry_i_1_n_0 : STD_LOGIC;
  signal \pwm_b_p0_carry_i_2__0_n_0\ : STD_LOGIC;
  signal pwm_b_p0_carry_i_2_n_0 : STD_LOGIC;
  signal \pwm_b_p0_carry_i_3__0_n_0\ : STD_LOGIC;
  signal pwm_b_p0_carry_i_3_n_0 : STD_LOGIC;
  signal \pwm_b_p0_carry_i_4__0_n_0\ : STD_LOGIC;
  signal pwm_b_p0_carry_i_4_n_0 : STD_LOGIC;
  signal \pwm_b_p0_carry_i_5__0_n_0\ : STD_LOGIC;
  signal pwm_b_p0_carry_i_5_n_0 : STD_LOGIC;
  signal \pwm_b_p0_carry_i_6__0_n_0\ : STD_LOGIC;
  signal pwm_b_p0_carry_i_6_n_0 : STD_LOGIC;
  signal \pwm_b_p0_carry_i_7__0_n_0\ : STD_LOGIC;
  signal pwm_b_p0_carry_i_7_n_0 : STD_LOGIC;
  signal \pwm_b_p0_carry_i_8__0_n_0\ : STD_LOGIC;
  signal pwm_b_p0_carry_i_8_n_0 : STD_LOGIC;
  signal pwm_b_p0_carry_n_0 : STD_LOGIC;
  signal pwm_b_p0_carry_n_1 : STD_LOGIC;
  signal pwm_b_p0_carry_n_2 : STD_LOGIC;
  signal pwm_b_p0_carry_n_3 : STD_LOGIC;
  signal pwm_b_p_i_1_n_0 : STD_LOGIC;
  signal \sine[12]_i_4_n_0\ : STD_LOGIC;
  signal \sine[12]_i_5_n_0\ : STD_LOGIC;
  signal \sine[12]_i_6_n_0\ : STD_LOGIC;
  signal \sine[12]_i_7_n_0\ : STD_LOGIC;
  signal \sine[13]_i_4_n_0\ : STD_LOGIC;
  signal \sine[13]_i_5_n_0\ : STD_LOGIC;
  signal \sine[13]_i_6_n_0\ : STD_LOGIC;
  signal \sine[13]_i_7_n_0\ : STD_LOGIC;
  signal \sine[14]_i_2_n_0\ : STD_LOGIC;
  signal \sine[14]_i_3_n_0\ : STD_LOGIC;
  signal sine_abs : STD_LOGIC_VECTOR ( 14 downto 0 );
  signal \sine_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[10]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[11]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[12]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[1]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[2]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[3]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[4]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[6]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[7]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[8]_i_9_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_10_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_11_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_12_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_13_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_4_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_5_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_6_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_7_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_8_n_0\ : STD_LOGIC;
  signal \sine_reg[9]_i_9_n_0\ : STD_LOGIC;
  signal \NLW_counter_reg[15]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i0_inferred__0/i__carry_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i0_inferred__0/i__carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i0_inferred__0/i__carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i0_inferred__0/i__carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_i__carry__1_i_4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_i__carry__1_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_i_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal NLW_pwm_a_p0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_a_p0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_pwm_b_p0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_pwm_b_p0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cos[15]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cos_abs[12]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cos_abs[13]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cos_abs[14]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \g10_b12__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g10_b13 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \g10_b13__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of g10_b14 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \g13_b12__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \g13_b13__0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of g13_b14 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of g14_b12 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of g14_b13 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of g14_b14 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of g1_b12 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of g1_b13 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \g1_b13__0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of g1_b14 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of g5_b13 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \g6_b13__0\ : label is "soft_lutpair0";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \i_reg[0]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[10]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[11]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[12]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[13]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[14]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[15]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[16]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[17]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[18]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[19]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[1]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[20]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[21]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[22]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[23]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[24]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[25]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[26]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[27]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[28]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[29]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[2]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[30]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[31]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[3]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[4]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[5]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[6]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[7]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[8]\ : label is "no";
  attribute equivalent_register_removal of \i_reg[9]\ : label is "no";
  attribute ORIG_CELL_NAME : string;
  attribute ORIG_CELL_NAME of \i_reg_rep[0]\ : label is "i_reg_rep[0]";
  attribute equivalent_register_removal of \i_reg_rep[0]\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[0]__0\ : label is "i_reg_rep[0]__0";
  attribute equivalent_register_removal of \i_reg_rep[0]__0\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[0]__0_rep\ : label is "i_reg_rep[0]__0";
  attribute equivalent_register_removal of \i_reg_rep[0]__0_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[0]_rep\ : label is "i_reg_rep[0]";
  attribute equivalent_register_removal of \i_reg_rep[0]_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[1]\ : label is "i_reg_rep[1]";
  attribute equivalent_register_removal of \i_reg_rep[1]\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[1]__0\ : label is "i_reg_rep[1]__0";
  attribute equivalent_register_removal of \i_reg_rep[1]__0\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[1]__0_rep\ : label is "i_reg_rep[1]__0";
  attribute equivalent_register_removal of \i_reg_rep[1]__0_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[1]_rep\ : label is "i_reg_rep[1]";
  attribute equivalent_register_removal of \i_reg_rep[1]_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[2]\ : label is "i_reg_rep[2]";
  attribute equivalent_register_removal of \i_reg_rep[2]\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[2]__0\ : label is "i_reg_rep[2]__0";
  attribute equivalent_register_removal of \i_reg_rep[2]__0\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[2]__0_rep\ : label is "i_reg_rep[2]__0";
  attribute equivalent_register_removal of \i_reg_rep[2]__0_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[2]_rep\ : label is "i_reg_rep[2]";
  attribute equivalent_register_removal of \i_reg_rep[2]_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[3]\ : label is "i_reg_rep[3]";
  attribute equivalent_register_removal of \i_reg_rep[3]\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[3]__0\ : label is "i_reg_rep[3]__0";
  attribute equivalent_register_removal of \i_reg_rep[3]__0\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[3]__0_rep\ : label is "i_reg_rep[3]__0";
  attribute equivalent_register_removal of \i_reg_rep[3]__0_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[3]_rep\ : label is "i_reg_rep[3]";
  attribute equivalent_register_removal of \i_reg_rep[3]_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[4]\ : label is "i_reg_rep[4]";
  attribute equivalent_register_removal of \i_reg_rep[4]\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[4]__0\ : label is "i_reg_rep[4]__0";
  attribute equivalent_register_removal of \i_reg_rep[4]__0\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[4]__0_rep\ : label is "i_reg_rep[4]__0";
  attribute equivalent_register_removal of \i_reg_rep[4]__0_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[4]_rep\ : label is "i_reg_rep[4]";
  attribute equivalent_register_removal of \i_reg_rep[4]_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[5]\ : label is "i_reg_rep[5]";
  attribute equivalent_register_removal of \i_reg_rep[5]\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[5]__0\ : label is "i_reg_rep[5]__0";
  attribute equivalent_register_removal of \i_reg_rep[5]__0\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[5]__0_rep\ : label is "i_reg_rep[5]__0";
  attribute equivalent_register_removal of \i_reg_rep[5]__0_rep\ : label is "no";
  attribute ORIG_CELL_NAME of \i_reg_rep[5]_rep\ : label is "i_reg_rep[5]";
  attribute equivalent_register_removal of \i_reg_rep[5]_rep\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[6]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[6]__0\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[7]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[7]__0\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[8]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[8]__0\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[9]\ : label is "no";
  attribute equivalent_register_removal of \i_reg_rep[9]__0\ : label is "no";
  attribute SOFT_HLUTNM of pwm_a_n_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of pwm_a_p_i_1 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of pwm_b_n_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of pwm_b_p_i_1 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \sine[15]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sine_abs[12]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \sine_abs[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \sine_abs[14]_i_1\ : label is "soft_lutpair13";
begin
  counter(15 downto 0) <= \^counter\(15 downto 0);
\cos[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[0]_i_2_n_0\,
      I1 => \cos_reg[0]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[0]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[0]_i_5_n_0\,
      O => \p_0_out__0\(0)
    );
\cos[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[10]_i_2_n_0\,
      I1 => \cos_reg[10]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[10]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[10]_i_5_n_0\,
      O => \p_0_out__0\(10)
    );
\cos[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[11]_i_2_n_0\,
      I1 => \cos_reg[11]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[11]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[11]_i_5_n_0\,
      O => \p_0_out__0\(11)
    );
\cos[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => g3_b12_n_0,
      I1 => \g2_b12__0_n_0\,
      I2 => \i_reg_rep[7]__0_n_0\,
      I3 => \g1_b12__0_n_0\,
      I4 => \i_reg_rep[6]__0_n_0\,
      O => \cos[12]_i_4_n_0\
    );
\cos[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \g6_b12__0_n_0\,
      I1 => \i_reg_rep[7]__0_n_0\,
      I2 => \g5_b12__0_n_0\,
      I3 => \i_reg_rep[6]__0_n_0\,
      I4 => g4_b12_n_0,
      O => \cos[12]_i_5_n_0\
    );
\cos[12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g11_b12_n_0,
      I1 => \g10_b12__0_n_0\,
      I2 => \i_reg_rep[7]__0_n_0\,
      I3 => \i_reg_rep[6]__0_n_0\,
      I4 => \g9_b12__0_n_0\,
      O => \cos[12]_i_6_n_0\
    );
\cos[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \g14_b12__0_n_0\,
      I1 => \i_reg_rep[7]__0_n_0\,
      I2 => \g13_b12__0_n_0\,
      I3 => \i_reg_rep[6]__0_n_0\,
      I4 => g12_b12_n_0,
      O => \cos[12]_i_7_n_0\
    );
\cos[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => g3_b13_n_0,
      I1 => \g2_b13__0_n_0\,
      I2 => \i_reg_rep[7]__0_n_0\,
      I3 => \g1_b13__0_n_0\,
      I4 => \i_reg_rep[6]__0_n_0\,
      O => \cos[13]_i_4_n_0\
    );
\cos[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \g6_b13__0_n_0\,
      I1 => \i_reg_rep[7]__0_n_0\,
      I2 => \g5_b13__0_n_0\,
      I3 => \i_reg_rep[6]__0_n_0\,
      I4 => g4_b13_n_0,
      O => \cos[13]_i_5_n_0\
    );
\cos[13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g13_b14_n_0,
      I1 => \g10_b13__0_n_0\,
      I2 => \i_reg_rep[7]__0_n_0\,
      I3 => \i_reg_rep[6]__0_n_0\,
      I4 => \g9_b13__0_n_0\,
      O => \cos[13]_i_6_n_0\
    );
\cos[13]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => \g14_b13__0_n_0\,
      I1 => \i_reg_rep[7]__0_n_0\,
      I2 => \g13_b13__0_n_0\,
      I3 => \i_reg_rep[6]__0_n_0\,
      I4 => g10_b14_n_0,
      O => \cos[13]_i_7_n_0\
    );
\cos[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0300BFBF"
    )
        port map (
      I0 => g5_b14_n_0,
      I1 => \i_reg_rep[8]__0_n_0\,
      I2 => \i_reg_rep[6]__0_n_0\,
      I3 => g2_b14_n_0,
      I4 => \i_reg_rep[7]__0_n_0\,
      O => \cos[14]_i_2_n_0\
    );
\cos[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8F8F0C0"
    )
        port map (
      I0 => g13_b14_n_0,
      I1 => \i_reg_rep[8]__0_n_0\,
      I2 => \i_reg_rep[7]__0_n_0\,
      I3 => g10_b14_n_0,
      I4 => \i_reg_rep[6]__0_n_0\,
      O => \cos[14]_i_3_n_0\
    );
\cos[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \i_reg_rep[9]__0_n_0\,
      I1 => \i_reg_rep[8]__0_n_0\,
      O => \cos[15]_i_1_n_0\
    );
\cos[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[1]_i_2_n_0\,
      I1 => \cos_reg[1]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[1]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[1]_i_5_n_0\,
      O => \p_0_out__0\(1)
    );
\cos[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[2]_i_2_n_0\,
      I1 => \cos_reg[2]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[2]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[2]_i_5_n_0\,
      O => \p_0_out__0\(2)
    );
\cos[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[3]_i_2_n_0\,
      I1 => \cos_reg[3]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[3]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[3]_i_5_n_0\,
      O => \p_0_out__0\(3)
    );
\cos[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[4]_i_2_n_0\,
      I1 => \cos_reg[4]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[4]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[4]_i_5_n_0\,
      O => \p_0_out__0\(4)
    );
\cos[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[5]_i_2_n_0\,
      I1 => \cos_reg[5]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[5]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[5]_i_5_n_0\,
      O => \p_0_out__0\(5)
    );
\cos[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[6]_i_2_n_0\,
      I1 => \cos_reg[6]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[6]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[6]_i_5_n_0\,
      O => \p_0_out__0\(6)
    );
\cos[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[7]_i_2_n_0\,
      I1 => \cos_reg[7]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[7]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[7]_i_5_n_0\,
      O => \p_0_out__0\(7)
    );
\cos[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[8]_i_2_n_0\,
      I1 => \cos_reg[8]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[8]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[8]_i_5_n_0\,
      O => \p_0_out__0\(8)
    );
\cos[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \cos_reg[9]_i_2_n_0\,
      I1 => \cos_reg[9]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[9]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[9]_i_5_n_0\,
      O => \p_0_out__0\(9)
    );
\cos_abs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[0]_i_2_n_0\,
      I1 => \cos_reg[0]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[0]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[0]_i_5_n_0\,
      O => \cos_abs[0]_i_1_n_0\
    );
\cos_abs[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[10]_i_2_n_0\,
      I1 => \cos_reg[10]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[10]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[10]_i_5_n_0\,
      O => \cos_abs[10]_i_1_n_0\
    );
\cos_abs[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[11]_i_2_n_0\,
      I1 => \cos_reg[11]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[11]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[11]_i_5_n_0\,
      O => \cos_abs[11]_i_1_n_0\
    );
\cos_abs[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \p_0_out__0\(12),
      I1 => \i_reg_rep[9]__0_n_0\,
      I2 => \i_reg_rep[8]__0_n_0\,
      O => \cos_abs[12]_i_1_n_0\
    );
\cos_abs[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \p_0_out__0\(13),
      I1 => \i_reg_rep[9]__0_n_0\,
      I2 => \i_reg_rep[8]__0_n_0\,
      O => \cos_abs[13]_i_1_n_0\
    );
\cos_abs[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => \p_0_out__0\(14),
      I1 => \i_reg_rep[9]__0_n_0\,
      I2 => \i_reg_rep[8]__0_n_0\,
      O => \cos_abs[14]_i_1_n_0\
    );
\cos_abs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[1]_i_2_n_0\,
      I1 => \cos_reg[1]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[1]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[1]_i_5_n_0\,
      O => \cos_abs[1]_i_1_n_0\
    );
\cos_abs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[2]_i_2_n_0\,
      I1 => \cos_reg[2]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[2]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[2]_i_5_n_0\,
      O => \cos_abs[2]_i_1_n_0\
    );
\cos_abs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[3]_i_2_n_0\,
      I1 => \cos_reg[3]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[3]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[3]_i_5_n_0\,
      O => \cos_abs[3]_i_1_n_0\
    );
\cos_abs[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[4]_i_2_n_0\,
      I1 => \cos_reg[4]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[4]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[4]_i_5_n_0\,
      O => \cos_abs[4]_i_1_n_0\
    );
\cos_abs[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[5]_i_2_n_0\,
      I1 => \cos_reg[5]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[5]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[5]_i_5_n_0\,
      O => \cos_abs[5]_i_1_n_0\
    );
\cos_abs[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[6]_i_2_n_0\,
      I1 => \cos_reg[6]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[6]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[6]_i_5_n_0\,
      O => \cos_abs[6]_i_1_n_0\
    );
\cos_abs[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[7]_i_2_n_0\,
      I1 => \cos_reg[7]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[7]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[7]_i_5_n_0\,
      O => \cos_abs[7]_i_1_n_0\
    );
\cos_abs[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[8]_i_2_n_0\,
      I1 => \cos_reg[8]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[8]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[8]_i_5_n_0\,
      O => \cos_abs[8]_i_1_n_0\
    );
\cos_abs[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A0AF3F3FA0AF3030"
    )
        port map (
      I0 => \cos_reg[9]_i_2_n_0\,
      I1 => \cos_reg[9]_i_3_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      I3 => \cos_reg[9]_i_4_n_0\,
      I4 => \i_reg_rep[8]__0_n_0\,
      I5 => \cos_reg[9]_i_5_n_0\,
      O => \cos_abs[9]_i_1_n_0\
    );
\cos_abs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[0]_i_1_n_0\,
      Q => cos_abs(0),
      R => '0'
    );
\cos_abs_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[10]_i_1_n_0\,
      Q => cos_abs(10),
      R => '0'
    );
\cos_abs_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[11]_i_1_n_0\,
      Q => cos_abs(11),
      R => '0'
    );
\cos_abs_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[12]_i_1_n_0\,
      Q => cos_abs(12),
      R => '0'
    );
\cos_abs_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[13]_i_1_n_0\,
      Q => cos_abs(13),
      R => '0'
    );
\cos_abs_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[14]_i_1_n_0\,
      Q => cos_abs(14),
      R => '0'
    );
\cos_abs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[1]_i_1_n_0\,
      Q => cos_abs(1),
      R => '0'
    );
\cos_abs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[2]_i_1_n_0\,
      Q => cos_abs(2),
      R => '0'
    );
\cos_abs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[3]_i_1_n_0\,
      Q => cos_abs(3),
      R => '0'
    );
\cos_abs_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[4]_i_1_n_0\,
      Q => cos_abs(4),
      R => '0'
    );
\cos_abs_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[5]_i_1_n_0\,
      Q => cos_abs(5),
      R => '0'
    );
\cos_abs_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[6]_i_1_n_0\,
      Q => cos_abs(6),
      R => '0'
    );
\cos_abs_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[7]_i_1_n_0\,
      Q => cos_abs(7),
      R => '0'
    );
\cos_abs_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[8]_i_1_n_0\,
      Q => cos_abs(8),
      R => '0'
    );
\cos_abs_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos_abs[9]_i_1_n_0\,
      Q => cos_abs(9),
      R => '0'
    );
\cos_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(0),
      Q => cos(0),
      R => '0'
    );
\cos_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b0__0_n_0\,
      I1 => \g5_b0__0_n_0\,
      O => \cos_reg[0]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[0]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b0__0_n_0\,
      I1 => \g7_b0__0_n_0\,
      O => \cos_reg[0]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[0]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b0__0_n_0\,
      I1 => \g1_b0__0_n_0\,
      O => \cos_reg[0]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[0]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b0__0_n_0\,
      I1 => \g3_b0__0_n_0\,
      O => \cos_reg[0]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[0]_i_6_n_0\,
      I1 => \cos_reg[0]_i_7_n_0\,
      O => \cos_reg[0]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[0]_i_8_n_0\,
      I1 => \cos_reg[0]_i_9_n_0\,
      O => \cos_reg[0]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[0]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[0]_i_10_n_0\,
      I1 => \cos_reg[0]_i_11_n_0\,
      O => \cos_reg[0]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[0]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[0]_i_12_n_0\,
      I1 => \cos_reg[0]_i_13_n_0\,
      O => \cos_reg[0]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b0__0_n_0\,
      I1 => \g13_b0__0_n_0\,
      O => \cos_reg[0]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b0__0_n_0\,
      I1 => \g15_b0__0_n_0\,
      O => \cos_reg[0]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b0__0_n_0\,
      I1 => \g9_b0__0_n_0\,
      O => \cos_reg[0]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b0__0_n_0\,
      I1 => \g11_b0__0_n_0\,
      O => \cos_reg[0]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(10),
      Q => cos(10),
      R => '0'
    );
\cos_reg[10]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b10__0_n_0\,
      I1 => \g5_b10__0_n_0\,
      O => \cos_reg[10]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[10]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b10__0_n_0\,
      I1 => \g7_b10__0_n_0\,
      O => \cos_reg[10]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[10]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b10__0_n_0\,
      I1 => \g1_b10__0_n_0\,
      O => \cos_reg[10]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[10]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b10__0_n_0\,
      I1 => \g3_b10__0_n_0\,
      O => \cos_reg[10]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[10]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[10]_i_6_n_0\,
      I1 => \cos_reg[10]_i_7_n_0\,
      O => \cos_reg[10]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[10]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[10]_i_8_n_0\,
      I1 => \cos_reg[10]_i_9_n_0\,
      O => \cos_reg[10]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[10]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[10]_i_10_n_0\,
      I1 => \cos_reg[10]_i_11_n_0\,
      O => \cos_reg[10]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[10]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[10]_i_12_n_0\,
      I1 => \cos_reg[10]_i_13_n_0\,
      O => \cos_reg[10]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[10]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b10__0_n_0\,
      I1 => \g13_b10__0_n_0\,
      O => \cos_reg[10]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[10]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b10__0_n_0\,
      I1 => \g15_b10__0_n_0\,
      O => \cos_reg[10]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[10]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b10__0_n_0\,
      I1 => \g9_b10__0_n_0\,
      O => \cos_reg[10]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[10]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b10__0_n_0\,
      I1 => \g11_b10__0_n_0\,
      O => \cos_reg[10]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(11),
      Q => cos(11),
      R => '0'
    );
\cos_reg[11]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b11__0_n_0\,
      I1 => \g5_b11__0_n_0\,
      O => \cos_reg[11]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[11]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b11__0_n_0\,
      I1 => \g7_b11__0_n_0\,
      O => \cos_reg[11]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[11]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b11__0_n_0\,
      I1 => \g1_b11__0_n_0\,
      O => \cos_reg[11]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[11]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b11__0_n_0\,
      I1 => \g3_b11__0_n_0\,
      O => \cos_reg[11]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[11]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[11]_i_6_n_0\,
      I1 => \cos_reg[11]_i_7_n_0\,
      O => \cos_reg[11]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[11]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[11]_i_8_n_0\,
      I1 => \cos_reg[11]_i_9_n_0\,
      O => \cos_reg[11]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[11]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[11]_i_10_n_0\,
      I1 => \cos_reg[11]_i_11_n_0\,
      O => \cos_reg[11]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[11]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[11]_i_12_n_0\,
      I1 => \cos_reg[11]_i_13_n_0\,
      O => \cos_reg[11]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b11__0_n_0\,
      I1 => \g13_b11__0_n_0\,
      O => \cos_reg[11]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[11]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b11__0_n_0\,
      I1 => \g15_b11__0_n_0\,
      O => \cos_reg[11]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[11]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b11__0_n_0\,
      I1 => \g9_b11__0_n_0\,
      O => \cos_reg[11]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[11]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b11__0_n_0\,
      I1 => \g11_b11__0_n_0\,
      O => \cos_reg[11]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(12),
      Q => cos(12),
      R => '0'
    );
\cos_reg[12]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[12]_i_2_n_0\,
      I1 => \cos_reg[12]_i_3_n_0\,
      O => \p_0_out__0\(12),
      S => \i_reg_rep[9]__0_n_0\
    );
\cos_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos[12]_i_4_n_0\,
      I1 => \cos[12]_i_5_n_0\,
      O => \cos_reg[12]_i_2_n_0\,
      S => \i_reg_rep[8]__0_n_0\
    );
\cos_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos[12]_i_6_n_0\,
      I1 => \cos[12]_i_7_n_0\,
      O => \cos_reg[12]_i_3_n_0\,
      S => \i_reg_rep[8]__0_n_0\
    );
\cos_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(13),
      Q => cos(13),
      R => '0'
    );
\cos_reg[13]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[13]_i_2_n_0\,
      I1 => \cos_reg[13]_i_3_n_0\,
      O => \p_0_out__0\(13),
      S => \i_reg_rep[9]__0_n_0\
    );
\cos_reg[13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos[13]_i_4_n_0\,
      I1 => \cos[13]_i_5_n_0\,
      O => \cos_reg[13]_i_2_n_0\,
      S => \i_reg_rep[8]__0_n_0\
    );
\cos_reg[13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos[13]_i_6_n_0\,
      I1 => \cos[13]_i_7_n_0\,
      O => \cos_reg[13]_i_3_n_0\,
      S => \i_reg_rep[8]__0_n_0\
    );
\cos_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(14),
      Q => cos(14),
      R => '0'
    );
\cos_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \cos[14]_i_2_n_0\,
      I1 => \cos[14]_i_3_n_0\,
      O => \p_0_out__0\(14),
      S => \i_reg_rep[9]__0_n_0\
    );
\cos_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \cos[15]_i_1_n_0\,
      Q => cos(15),
      R => '0'
    );
\cos_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(1),
      Q => cos(1),
      R => '0'
    );
\cos_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b1__0_n_0\,
      I1 => \g5_b1__0_n_0\,
      O => \cos_reg[1]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[1]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b1__0_n_0\,
      I1 => \g7_b1__0_n_0\,
      O => \cos_reg[1]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[1]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b1__0_n_0\,
      I1 => \g1_b1__0_n_0\,
      O => \cos_reg[1]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[1]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b1__0_n_0\,
      I1 => \g3_b1__0_n_0\,
      O => \cos_reg[1]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[1]_i_6_n_0\,
      I1 => \cos_reg[1]_i_7_n_0\,
      O => \cos_reg[1]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[1]_i_8_n_0\,
      I1 => \cos_reg[1]_i_9_n_0\,
      O => \cos_reg[1]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[1]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[1]_i_10_n_0\,
      I1 => \cos_reg[1]_i_11_n_0\,
      O => \cos_reg[1]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[1]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[1]_i_12_n_0\,
      I1 => \cos_reg[1]_i_13_n_0\,
      O => \cos_reg[1]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b1__0_n_0\,
      I1 => \g13_b1__0_n_0\,
      O => \cos_reg[1]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b1__0_n_0\,
      I1 => \g15_b1__0_n_0\,
      O => \cos_reg[1]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b1__0_n_0\,
      I1 => \g9_b1__0_n_0\,
      O => \cos_reg[1]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b1__0_n_0\,
      I1 => \g11_b1__0_n_0\,
      O => \cos_reg[1]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(2),
      Q => cos(2),
      R => '0'
    );
\cos_reg[2]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b2__0_n_0\,
      I1 => \g5_b2__0_n_0\,
      O => \cos_reg[2]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[2]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b2__0_n_0\,
      I1 => \g7_b2__0_n_0\,
      O => \cos_reg[2]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[2]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b2__0_n_0\,
      I1 => \g1_b2__0_n_0\,
      O => \cos_reg[2]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b2__0_n_0\,
      I1 => \g3_b2__0_n_0\,
      O => \cos_reg[2]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[2]_i_6_n_0\,
      I1 => \cos_reg[2]_i_7_n_0\,
      O => \cos_reg[2]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[2]_i_8_n_0\,
      I1 => \cos_reg[2]_i_9_n_0\,
      O => \cos_reg[2]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[2]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[2]_i_10_n_0\,
      I1 => \cos_reg[2]_i_11_n_0\,
      O => \cos_reg[2]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[2]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[2]_i_12_n_0\,
      I1 => \cos_reg[2]_i_13_n_0\,
      O => \cos_reg[2]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b2__0_n_0\,
      I1 => \g13_b2__0_n_0\,
      O => \cos_reg[2]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b2__0_n_0\,
      I1 => \g15_b2__0_n_0\,
      O => \cos_reg[2]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b2__0_n_0\,
      I1 => \g9_b2__0_n_0\,
      O => \cos_reg[2]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[2]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b2__0_n_0\,
      I1 => \g11_b2__0_n_0\,
      O => \cos_reg[2]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(3),
      Q => cos(3),
      R => '0'
    );
\cos_reg[3]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b3__0_n_0\,
      I1 => \g5_b3__0_n_0\,
      O => \cos_reg[3]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[3]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b3__0_n_0\,
      I1 => \g7_b3__0_n_0\,
      O => \cos_reg[3]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[3]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b3__0_n_0\,
      I1 => \g1_b3__0_n_0\,
      O => \cos_reg[3]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[3]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b3__0_n_0\,
      I1 => \g3_b3__0_n_0\,
      O => \cos_reg[3]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[3]_i_6_n_0\,
      I1 => \cos_reg[3]_i_7_n_0\,
      O => \cos_reg[3]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[3]_i_8_n_0\,
      I1 => \cos_reg[3]_i_9_n_0\,
      O => \cos_reg[3]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[3]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[3]_i_10_n_0\,
      I1 => \cos_reg[3]_i_11_n_0\,
      O => \cos_reg[3]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[3]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[3]_i_12_n_0\,
      I1 => \cos_reg[3]_i_13_n_0\,
      O => \cos_reg[3]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b3__0_n_0\,
      I1 => \g13_b3__0_n_0\,
      O => \cos_reg[3]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b3__0_n_0\,
      I1 => \g15_b3__0_n_0\,
      O => \cos_reg[3]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b3__0_n_0\,
      I1 => \g9_b3__0_n_0\,
      O => \cos_reg[3]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b3__0_n_0\,
      I1 => \g11_b3__0_n_0\,
      O => \cos_reg[3]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(4),
      Q => cos(4),
      R => '0'
    );
\cos_reg[4]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b4__0_n_0\,
      I1 => \g5_b4__0_n_0\,
      O => \cos_reg[4]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[4]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b4__0_n_0\,
      I1 => \g7_b4__0_n_0\,
      O => \cos_reg[4]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[4]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b4__0_n_0\,
      I1 => \g1_b4__0_n_0\,
      O => \cos_reg[4]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[4]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b4__0_n_0\,
      I1 => \g3_b4__0_n_0\,
      O => \cos_reg[4]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[4]_i_6_n_0\,
      I1 => \cos_reg[4]_i_7_n_0\,
      O => \cos_reg[4]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[4]_i_8_n_0\,
      I1 => \cos_reg[4]_i_9_n_0\,
      O => \cos_reg[4]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[4]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[4]_i_10_n_0\,
      I1 => \cos_reg[4]_i_11_n_0\,
      O => \cos_reg[4]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[4]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[4]_i_12_n_0\,
      I1 => \cos_reg[4]_i_13_n_0\,
      O => \cos_reg[4]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b4__0_n_0\,
      I1 => \g13_b4__0_n_0\,
      O => \cos_reg[4]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b4__0_n_0\,
      I1 => \g15_b4__0_n_0\,
      O => \cos_reg[4]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[4]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b4__0_n_0\,
      I1 => \g9_b4__0_n_0\,
      O => \cos_reg[4]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[4]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b4__0_n_0\,
      I1 => \g11_b4__0_n_0\,
      O => \cos_reg[4]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(5),
      Q => cos(5),
      R => '0'
    );
\cos_reg[5]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b5__0_n_0\,
      I1 => \g5_b5__0_n_0\,
      O => \cos_reg[5]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[5]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b5__0_n_0\,
      I1 => \g7_b5__0_n_0\,
      O => \cos_reg[5]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[5]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b5__0_n_0\,
      I1 => \g1_b5__0_n_0\,
      O => \cos_reg[5]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[5]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b5__0_n_0\,
      I1 => \g3_b5__0_n_0\,
      O => \cos_reg[5]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[5]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[5]_i_6_n_0\,
      I1 => \cos_reg[5]_i_7_n_0\,
      O => \cos_reg[5]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[5]_i_8_n_0\,
      I1 => \cos_reg[5]_i_9_n_0\,
      O => \cos_reg[5]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[5]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[5]_i_10_n_0\,
      I1 => \cos_reg[5]_i_11_n_0\,
      O => \cos_reg[5]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[5]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[5]_i_12_n_0\,
      I1 => \cos_reg[5]_i_13_n_0\,
      O => \cos_reg[5]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b5__0_n_0\,
      I1 => \g13_b5__0_n_0\,
      O => \cos_reg[5]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b5__0_n_0\,
      I1 => \g15_b5__0_n_0\,
      O => \cos_reg[5]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[5]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b5__0_n_0\,
      I1 => \g9_b5__0_n_0\,
      O => \cos_reg[5]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[5]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b5__0_n_0\,
      I1 => \g11_b5__0_n_0\,
      O => \cos_reg[5]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(6),
      Q => cos(6),
      R => '0'
    );
\cos_reg[6]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b6__0_n_0\,
      I1 => \g5_b6__0_n_0\,
      O => \cos_reg[6]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[6]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b6__0_n_0\,
      I1 => \g7_b6__0_n_0\,
      O => \cos_reg[6]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[6]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b6__0_n_0\,
      I1 => \g1_b6__0_n_0\,
      O => \cos_reg[6]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[6]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b6__0_n_0\,
      I1 => \g3_b6__0_n_0\,
      O => \cos_reg[6]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[6]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[6]_i_6_n_0\,
      I1 => \cos_reg[6]_i_7_n_0\,
      O => \cos_reg[6]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[6]_i_8_n_0\,
      I1 => \cos_reg[6]_i_9_n_0\,
      O => \cos_reg[6]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[6]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[6]_i_10_n_0\,
      I1 => \cos_reg[6]_i_11_n_0\,
      O => \cos_reg[6]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[6]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[6]_i_12_n_0\,
      I1 => \cos_reg[6]_i_13_n_0\,
      O => \cos_reg[6]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b6__0_n_0\,
      I1 => \g13_b6__0_n_0\,
      O => \cos_reg[6]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b6__0_n_0\,
      I1 => \g15_b6__0_n_0\,
      O => \cos_reg[6]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[6]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b6__0_n_0\,
      I1 => \g9_b6__0_n_0\,
      O => \cos_reg[6]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[6]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b6__0_n_0\,
      I1 => \g11_b6__0_n_0\,
      O => \cos_reg[6]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(7),
      Q => cos(7),
      R => '0'
    );
\cos_reg[7]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b7__0_n_0\,
      I1 => \g5_b7__0_n_0\,
      O => \cos_reg[7]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[7]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b7__0_n_0\,
      I1 => \g7_b7__0_n_0\,
      O => \cos_reg[7]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[7]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b7__0_n_0\,
      I1 => \g1_b7__0_n_0\,
      O => \cos_reg[7]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[7]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b7__0_n_0\,
      I1 => \g3_b7__0_n_0\,
      O => \cos_reg[7]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[7]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[7]_i_6_n_0\,
      I1 => \cos_reg[7]_i_7_n_0\,
      O => \cos_reg[7]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[7]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[7]_i_8_n_0\,
      I1 => \cos_reg[7]_i_9_n_0\,
      O => \cos_reg[7]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[7]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[7]_i_10_n_0\,
      I1 => \cos_reg[7]_i_11_n_0\,
      O => \cos_reg[7]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[7]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[7]_i_12_n_0\,
      I1 => \cos_reg[7]_i_13_n_0\,
      O => \cos_reg[7]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b7__0_n_0\,
      I1 => \g13_b7__0_n_0\,
      O => \cos_reg[7]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[7]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b7__0_n_0\,
      I1 => \g15_b7__0_n_0\,
      O => \cos_reg[7]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[7]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b7__0_n_0\,
      I1 => \g9_b7__0_n_0\,
      O => \cos_reg[7]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[7]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b7__0_n_0\,
      I1 => \g11_b7__0_n_0\,
      O => \cos_reg[7]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(8),
      Q => cos(8),
      R => '0'
    );
\cos_reg[8]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b8__0_n_0\,
      I1 => \g5_b8__0_n_0\,
      O => \cos_reg[8]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[8]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b8__0_n_0\,
      I1 => \g7_b8__0_n_0\,
      O => \cos_reg[8]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[8]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b8__0_n_0\,
      I1 => \g1_b8__0_n_0\,
      O => \cos_reg[8]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[8]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b8__0_n_0\,
      I1 => \g3_b8__0_n_0\,
      O => \cos_reg[8]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[8]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[8]_i_6_n_0\,
      I1 => \cos_reg[8]_i_7_n_0\,
      O => \cos_reg[8]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[8]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[8]_i_8_n_0\,
      I1 => \cos_reg[8]_i_9_n_0\,
      O => \cos_reg[8]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[8]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[8]_i_10_n_0\,
      I1 => \cos_reg[8]_i_11_n_0\,
      O => \cos_reg[8]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[8]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[8]_i_12_n_0\,
      I1 => \cos_reg[8]_i_13_n_0\,
      O => \cos_reg[8]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[8]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b8__0_n_0\,
      I1 => \g13_b8__0_n_0\,
      O => \cos_reg[8]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[8]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b8__0_n_0\,
      I1 => \g15_b8__0_n_0\,
      O => \cos_reg[8]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[8]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b8__0_n_0\,
      I1 => \g9_b8__0_n_0\,
      O => \cos_reg[8]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[8]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b8__0_n_0\,
      I1 => \g11_b8__0_n_0\,
      O => \cos_reg[8]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \p_0_out__0\(9),
      Q => cos(9),
      R => '0'
    );
\cos_reg[9]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g4_b9__0_n_0\,
      I1 => \g5_b9__0_n_0\,
      O => \cos_reg[9]_i_10_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[9]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g6_b9__0_n_0\,
      I1 => \g7_b9__0_n_0\,
      O => \cos_reg[9]_i_11_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[9]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g0_b9__0_n_0\,
      I1 => \g1_b9__0_n_0\,
      O => \cos_reg[9]_i_12_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[9]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g2_b9__0_n_0\,
      I1 => \g3_b9__0_n_0\,
      O => \cos_reg[9]_i_13_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[9]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[9]_i_6_n_0\,
      I1 => \cos_reg[9]_i_7_n_0\,
      O => \cos_reg[9]_i_2_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[9]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[9]_i_8_n_0\,
      I1 => \cos_reg[9]_i_9_n_0\,
      O => \cos_reg[9]_i_3_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[9]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[9]_i_10_n_0\,
      I1 => \cos_reg[9]_i_11_n_0\,
      O => \cos_reg[9]_i_4_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[9]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \cos_reg[9]_i_12_n_0\,
      I1 => \cos_reg[9]_i_13_n_0\,
      O => \cos_reg[9]_i_5_n_0\,
      S => \i_reg_rep[7]__0_n_0\
    );
\cos_reg[9]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g12_b9__0_n_0\,
      I1 => \g13_b9__0_n_0\,
      O => \cos_reg[9]_i_6_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[9]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g14_b9__0_n_0\,
      I1 => \g15_b9__0_n_0\,
      O => \cos_reg[9]_i_7_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[9]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g8_b9__0_n_0\,
      I1 => \g9_b9__0_n_0\,
      O => \cos_reg[9]_i_8_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\cos_reg[9]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \g10_b9__0_n_0\,
      I1 => \g11_b9__0_n_0\,
      O => \cos_reg[9]_i_9_n_0\,
      S => \i_reg_rep[6]__0_n_0\
    );
\counter[11]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(11),
      I1 => \^counter\(11),
      O => \counter[11]_i_2_n_0\
    );
\counter[11]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(10),
      I1 => \^counter\(10),
      O => \counter[11]_i_3_n_0\
    );
\counter[11]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(9),
      I1 => \^counter\(9),
      O => \counter[11]_i_4_n_0\
    );
\counter[11]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(8),
      I1 => \^counter\(8),
      O => \counter[11]_i_5_n_0\
    );
\counter[15]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF80000000"
    )
        port map (
      I0 => \counter[15]_i_3_n_0\,
      I1 => \^counter\(0),
      I2 => \^counter\(1),
      I3 => \^counter\(2),
      I4 => \counter[15]_i_4_n_0\,
      I5 => \^counter\(15),
      O => clear
    );
\counter[15]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^counter\(5),
      I1 => \^counter\(6),
      I2 => \^counter\(3),
      I3 => \^counter\(4),
      I4 => \^counter\(8),
      I5 => \^counter\(7),
      O => \counter[15]_i_3_n_0\
    );
\counter[15]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \^counter\(11),
      I1 => \^counter\(12),
      I2 => \^counter\(9),
      I3 => \^counter\(10),
      I4 => \^counter\(14),
      I5 => \^counter\(13),
      O => \counter[15]_i_4_n_0\
    );
\counter[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(3),
      I1 => \^counter\(3),
      O => \counter[3]_i_2_n_0\
    );
\counter[3]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(2),
      I1 => \^counter\(2),
      O => \counter[3]_i_3_n_0\
    );
\counter[3]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(1),
      I1 => \^counter\(1),
      O => \counter[3]_i_4_n_0\
    );
\counter[3]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(0),
      I1 => \^counter\(0),
      O => \counter[3]_i_5_n_0\
    );
\counter[7]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(7),
      I1 => \^counter\(7),
      O => \counter[7]_i_2_n_0\
    );
\counter[7]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(6),
      I1 => \^counter\(6),
      O => \counter[7]_i_3_n_0\
    );
\counter[7]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(5),
      I1 => \^counter\(5),
      O => \counter[7]_i_4_n_0\
    );
\counter[7]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => step_type(4),
      I1 => \^counter\(4),
      O => \counter[7]_i_5_n_0\
    );
\counter_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_7\,
      Q => \^counter\(0),
      R => clear
    );
\counter_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[11]_i_1_n_5\,
      Q => \^counter\(10),
      R => clear
    );
\counter_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[11]_i_1_n_4\,
      Q => \^counter\(11),
      R => clear
    );
\counter_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[7]_i_1_n_0\,
      CO(3) => \counter_reg[11]_i_1_n_0\,
      CO(2) => \counter_reg[11]_i_1_n_1\,
      CO(1) => \counter_reg[11]_i_1_n_2\,
      CO(0) => \counter_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => step_type(11 downto 8),
      O(3) => \counter_reg[11]_i_1_n_4\,
      O(2) => \counter_reg[11]_i_1_n_5\,
      O(1) => \counter_reg[11]_i_1_n_6\,
      O(0) => \counter_reg[11]_i_1_n_7\,
      S(3) => \counter[11]_i_2_n_0\,
      S(2) => \counter[11]_i_3_n_0\,
      S(1) => \counter[11]_i_4_n_0\,
      S(0) => \counter[11]_i_5_n_0\
    );
\counter_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[15]_i_2_n_7\,
      Q => \^counter\(12),
      R => clear
    );
\counter_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[15]_i_2_n_6\,
      Q => \^counter\(13),
      R => clear
    );
\counter_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[15]_i_2_n_5\,
      Q => \^counter\(14),
      R => clear
    );
\counter_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[15]_i_2_n_4\,
      Q => \^counter\(15),
      R => clear
    );
\counter_reg[15]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[11]_i_1_n_0\,
      CO(3) => \NLW_counter_reg[15]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \counter_reg[15]_i_2_n_1\,
      CO(1) => \counter_reg[15]_i_2_n_2\,
      CO(0) => \counter_reg[15]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \counter_reg[15]_i_2_n_4\,
      O(2) => \counter_reg[15]_i_2_n_5\,
      O(1) => \counter_reg[15]_i_2_n_6\,
      O(0) => \counter_reg[15]_i_2_n_7\,
      S(3 downto 0) => \^counter\(15 downto 12)
    );
\counter_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_6\,
      Q => \^counter\(1),
      R => clear
    );
\counter_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_5\,
      Q => \^counter\(2),
      R => clear
    );
\counter_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[3]_i_1_n_4\,
      Q => \^counter\(3),
      R => clear
    );
\counter_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \counter_reg[3]_i_1_n_0\,
      CO(2) => \counter_reg[3]_i_1_n_1\,
      CO(1) => \counter_reg[3]_i_1_n_2\,
      CO(0) => \counter_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => step_type(3 downto 0),
      O(3) => \counter_reg[3]_i_1_n_4\,
      O(2) => \counter_reg[3]_i_1_n_5\,
      O(1) => \counter_reg[3]_i_1_n_6\,
      O(0) => \counter_reg[3]_i_1_n_7\,
      S(3) => \counter[3]_i_2_n_0\,
      S(2) => \counter[3]_i_3_n_0\,
      S(1) => \counter[3]_i_4_n_0\,
      S(0) => \counter[3]_i_5_n_0\
    );
\counter_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_7\,
      Q => \^counter\(4),
      R => clear
    );
\counter_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_6\,
      Q => \^counter\(5),
      R => clear
    );
\counter_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_5\,
      Q => \^counter\(6),
      R => clear
    );
\counter_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[7]_i_1_n_4\,
      Q => \^counter\(7),
      R => clear
    );
\counter_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \counter_reg[3]_i_1_n_0\,
      CO(3) => \counter_reg[7]_i_1_n_0\,
      CO(2) => \counter_reg[7]_i_1_n_1\,
      CO(1) => \counter_reg[7]_i_1_n_2\,
      CO(0) => \counter_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => step_type(7 downto 4),
      O(3) => \counter_reg[7]_i_1_n_4\,
      O(2) => \counter_reg[7]_i_1_n_5\,
      O(1) => \counter_reg[7]_i_1_n_6\,
      O(0) => \counter_reg[7]_i_1_n_7\,
      S(3) => \counter[7]_i_2_n_0\,
      S(2) => \counter[7]_i_3_n_0\,
      S(1) => \counter[7]_i_4_n_0\,
      S(0) => \counter[7]_i_5_n_0\
    );
\counter_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[11]_i_1_n_7\,
      Q => \^counter\(8),
      R => clear
    );
\counter_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \counter_reg[11]_i_1_n_6\,
      Q => \^counter\(9),
      R => clear
    );
g0_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDE67D0CFA8E254A"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g0_b0_n_0
    );
\g0_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D94F83E4D886A9C1"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g0_b0__0_n_0\
    );
g0_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EA054F1567FC66C"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g0_b1_n_0
    );
g0_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C0F83F07C1F07C0"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g0_b10_n_0
    );
\g0_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0001FFFFFFFFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g0_b10__0_n_0\
    );
g0_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF003FF801FF800"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g0_b11_n_0
    );
\g0_b11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFFFFFF"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g0_b11__0_n_0\
    );
g0_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800003FFFFE00000"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g0_b12_n_0
    );
\g0_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03B76DDB565AF6E3"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g0_b1__0_n_0\
    );
g0_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6066AB31FFF870"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g0_b2_n_0
    );
\g0_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD7AF4178F4385F7"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g0_b2__0_n_0\
    );
g0_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99E078CDA555552A"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g0_b3_n_0
    );
\g0_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B0353E5406986AF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g0_b3__0_n_0\
    );
g0_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"781F80F1C666664C"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g0_b4_n_0
    );
\g0_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98FC65533F8D2D9F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g0_b4__0_n_0\
    );
g0_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFF01F8787870"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g0_b5_n_0
    );
\g0_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87FF8665AAA49C7F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g0_b5__0_n_0\
    );
g0_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAB552AD52A"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g0_b6_n_0
    );
\g0_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D55552D3666383FF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g0_b6__0_n_0\
    );
g0_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666666673319CCE6"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g0_b7_n_0
    );
\g0_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CCCCE30E1E07FFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g0_b7__0_n_0\
    );
g0_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B4B4B4A5A5296B4"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g0_b8_n_0
    );
\g0_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3E0FE01FFFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g0_b8__0_n_0\
    );
g0_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"738C738C639CE738"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g0_b9_n_0
    );
\g0_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC03FE001FFFFFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g0_b9__0_n_0\
    );
g10_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E6033D7E1E80B3F"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g10_b0_n_0
    );
\g10_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DC3B6E3810D8898"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g10_b0__0_n_0\
    );
g10_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6911E223DCA29EE"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g10_b1_n_0
    );
g10_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFE00FFC03FC07"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g10_b10_n_0
    );
\g10_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F83F03F03F03F80F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g10_b10__0_n_0\
    );
g10_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE00003FFFC00"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g10_b11_n_0
    );
\g10_b11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F81F81FC"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g10_b11__0_n_0\
    );
g10_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001FFFFFFFFC00"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g10_b12_n_0
    );
\g10_b12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001FFE00"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g10_b12__0_n_0\
    );
g10_b13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000001F"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g10_b13_n_0
    );
\g10_b13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001FFFFF"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g10_b13__0_n_0\
    );
g10_b14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => g10_b14_n_0
    );
\g10_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"437ECCEBA079A90F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g10_b1__0_n_0\
    );
g10_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCF5F4141623E21B"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g10_b2_n_0
    );
\g10_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F2B024C6A7B3750"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g10_b2__0_n_0\
    );
g10_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0259F2A7F2B3E6AC"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g10_b3_n_0
    );
\g10_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5B3FE254C78959F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g10_b3__0_n_0\
    );
g10_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB61F192A4C3E19A"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g10_b4_n_0
    );
\g10_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC96AB498F878CB5"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g10_b4__0_n_0\
    );
g10_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66D4A524C703E079"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g10_b5_n_0
    );
\g10_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C38E66DB5AAAD6D9"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g10_b5__0_n_0\
    );
g10_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B49939C707FC1FF8"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g10_b6_n_0
    );
\g10_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"952B4B6D933318E1"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g10_b6__0_n_0\
    );
g10_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"924B6B52AD555552"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g10_b7_n_0
    );
\g10_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B366D924B696B5AB"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g10_b7__0_n_0\
    );
g10_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E38E7319CCCCCC9"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g10_b8_n_0
    );
\g10_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25B4924924DB26CD"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g10_b8__0_n_0\
    );
g10_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E07E0F07C3C3C38"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g10_b9_n_0
    );
\g10_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C638E38E38E3C70E"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g10_b9__0_n_0\
    );
g11_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C6A9EE4D83E0D64"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g11_b0_n_0
    );
\g11_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD5B8EA0CF419842"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g11_b0__0_n_0\
    );
g11_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3890A5952449123F"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g11_b1_n_0
    );
g11_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007FFFC0"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g11_b10_n_0
    );
\g11_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC1F07C1F03E0FC1"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g11_b10__0_n_0\
    );
g11_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g11_b11_n_0
    );
\g11_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE007FE003FF001"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g11_b11__0_n_0\
    );
g11_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF800003FFFFE"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => g11_b12_n_0
    );
\g11_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C99C019570D5FA81"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g11_b1__0_n_0\
    );
g11_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"105E3D0E17D0A142"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g11_b2_n_0
    );
\g11_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1E000732A99F9AA"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g11_b2__0_n_0\
    );
g11_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A9E69FD58353F2B"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g11_b3_n_0
    );
\g11_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB55555A4CE1F866"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g11_b3__0_n_0\
    );
g11_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"064B4E033559C0E6"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g11_b4_n_0
    );
\g11_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD99999C70FE07E1"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g11_b4__0_n_0\
    );
g11_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C6DAAA599E001E"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g11_b5_n_0
    );
\g11_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1E1E1E07F00001F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g11_b5__0_n_0\
    );
g11_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003E399934B55554"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g11_b6_n_0
    );
\g11_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB54AB552AAAAAAA"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g11_b6__0_n_0\
    );
g11_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001F878F38CCCCD"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g11_b7_n_0
    );
\g11_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98CC673319999999"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g11_b7__0_n_0\
    );
g11_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F80F83C3C3"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g11_b8_n_0
    );
\g11_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D296B5A5AD2D2D2D"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g11_b8__0_n_0\
    );
g11_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000007FF803FC0"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g11_b9_n_0
    );
\g11_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E318C639CE31CE31"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g11_b9__0_n_0\
    );
g12_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"307CA73BEE4FAF8C"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g12_b0_n_0
    );
\g12_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BDE67D0CFA8E254A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g12_b0__0_n_0\
    );
g12_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DC7D61859524712"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g12_b1_n_0
    );
g12_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FFFE0000000000"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g12_b10_n_0
    );
\g12_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C0F83F07C1F07C0"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g12_b10__0_n_0\
    );
g12_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g12_b11_n_0
    );
\g12_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FF003FF801FF800"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g12_b11__0_n_0\
    );
g12_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800003FFFFE00000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => g12_b12_n_0
    );
\g12_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7EA054F1567FC66C"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g12_b1__0_n_0\
    );
g12_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C82F3F3D0E17DF4"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g12_b2_n_0
    );
\g12_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA6066AB31FFF870"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g12_b2__0_n_0\
    );
g12_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36FE5BF69FD58358"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g12_b3_n_0
    );
\g12_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"99E078CDA555552A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g12_b3__0_n_0\
    );
g12_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A701C95B1FCCAA60"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g12_b4_n_0
    );
\g12_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"781F80F1C666664C"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g12_b4__0_n_0\
    );
g12_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7FFC736B5693380"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g12_b5_n_0
    );
\g12_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFF01F8787870"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g12_b5__0_n_0\
    );
g12_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52AA95A4D98E3C00"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g12_b6_n_0
    );
\g12_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAB552AD52A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g12_b6__0_n_0\
    );
g12_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B3319C71E0FC000"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g12_b7_n_0
    );
\g12_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"666666673319CCE6"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g12_b7__0_n_0\
    );
g12_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3C3E1F81FF00000"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g12_b8_n_0
    );
\g12_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4B4B4B4A5A5296B4"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g12_b8__0_n_0\
    );
g12_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FC01FFE0000000"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g12_b9_n_0
    );
\g12_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"738C738C639CE738"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g12_b9__0_n_0\
    );
g13_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"301669E19980CFE5"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g13_b0_n_0
    );
\g13_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6EE4F7E38923C41"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g13_b0__0_n_0\
    );
g13_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BAC35C25A447894"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g13_b1_n_0
    );
g13_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E01FC01FF003FF80"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g13_b10_n_0
    );
\g13_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE03F03F03F03E0"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g13_b10__0_n_0\
    );
g13_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001FFFE00003FFFF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g13_b11_n_0
    );
\g13_b11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C07E07E0"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g13_b11__0_n_0\
    );
g13_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001FFFFFFFFC0000"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g13_b12_n_0
    );
\g13_b12__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8007FF"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g13_b12__0_n_0\
    );
g13_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0000000000000"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g13_b13_n_0
    );
\g13_b13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000007FF"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g13_b13__0_n_0\
    );
g13_b14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF800"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => g13_b14_n_0
    );
\g13_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F6A61FA28CC813D"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g13_b1__0_n_0\
    );
g13_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D397E9D433D7D05B"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g13_b2_n_0
    );
\g13_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F51321A9CDBF2B01"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g13_b2__0_n_0\
    );
g13_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C927E4980967CA9F"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g13_b3_n_0
    );
\g13_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0656E1CD5B803254"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g13_b3__0_n_0\
    );
g13_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6DC7E3B5527839B5"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g13_b4_n_0
    );
\g13_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52CE1E0E6D2A96CC"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g13_b4__0_n_0\
    );
g13_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E07E07336D552D9"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g13_b5_n_0
    );
\g13_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6494AAA524998E3C"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g13_b5__0_n_0\
    );
g13_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F007E00F0E33364B"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g13_b6_n_0
    );
\g13_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78E73336492D2B56"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g13_b6__0_n_0\
    );
g13_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5552B555AB5A5B6D"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g13_b7_n_0
    );
\g13_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A529692DB649932"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g13_b7__0_n_0\
    );
g13_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999B3999CC639C71"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g13_b8_n_0
    );
\g13_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C9B24DB6DB6D25B"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g13_b8__0_n_0\
    );
g13_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E1C3E1E0F83E07E"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g13_b9_n_0
    );
\g13_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F1C38E38E38E39C"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g13_b9__0_n_0\
    );
g14_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7DC3B6E3810D8898"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g14_b0_n_0
    );
\g14_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"580CFE66786997F3"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g14_b0__0_n_0\
    );
g14_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"437ECCEBA079A90F"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g14_b1_n_0
    );
g14_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F83F03F03F03F80F"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g14_b10_n_0
    );
\g14_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE003FF007FC07F8"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g14_b10__0_n_0\
    );
g14_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F81F81FC"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g14_b11_n_0
    );
\g14_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003FFFF80007FF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g14_b11__0_n_0\
    );
g14_b12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001FFE00"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g14_b12_n_0
    );
\g14_b12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC000000007FF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g14_b12__0_n_0\
    );
g14_b13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"001FFFFF"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g14_b13_n_0
    );
\g14_b13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF800"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g14_b13__0_n_0\
    );
g14_b14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE00000"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g14_b14_n_0
    );
\g14_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D6E1DDA5BC53CA2D"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g14_b1__0_n_0\
    );
g14_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F2B024C6A7B3750"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g14_b2_n_0
    );
\g14_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25F41433D4681634"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g14_b2__0_n_0\
    );
g14_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5B3FE254C78959F"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g14_b3_n_0
    );
\g14_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06AC196FE6D81B6C"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g14_b3__0_n_0\
    );
g14_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC96AB498F878CB5"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g14_b4_n_0
    );
\g14_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5263E1B552381C49"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g14_b4__0_n_0\
    );
g14_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C38E66DB5AAAD6D9"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g14_b5_n_0
    );
\g14_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"64B5549331F81F8E"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g14_b5__0_n_0\
    );
g14_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"952B4B6D933318E1"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g14_b6_n_0
    );
\g14_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D93338F0FF81FF0"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g14_b6__0_n_0\
    );
g14_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B366D924B696B5AB"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g14_b7_n_0
    );
\g14_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4925A52A5552B555"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g14_b7__0_n_0\
    );
g14_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25B4924924DB26CD"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g14_b8_n_0
    );
\g14_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71C639CC66632666"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g14_b8__0_n_0\
    );
g14_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C638E38E38E3C70E"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g14_b9_n_0
    );
\g14_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81F83E0F8783C787"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g14_b9__0_n_0\
    );
g15_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD5B8EA0CF419842"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g15_b0_n_0
    );
\g15_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE0A0D88231AC1F3"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g15_b0__0_n_0\
    );
g15_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C99C019570D5FA81"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g15_b1_n_0
    );
g15_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC1F07C1F03E0FC1"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g15_b10_n_0
    );
\g15_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF80003F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g15_b10__0_n_0\
    );
g15_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE007FE003FF001"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g15_b11_n_0
    );
\g15_b11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g15_b11__0_n_0\
    );
g15_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF800003FFFFE"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g15_b12_n_0
    );
\g15_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B71DB565E7941C47"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g15_b1__0_n_0\
    );
g15_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1E000732A99F9AA"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g15_b2_n_0
    );
\g15_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D04178F43030BEC5"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g15_b2__0_n_0\
    );
g15_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB55555A4CE1F866"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g15_b3_n_0
    );
\g15_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E53E540690258093"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g15_b3__0_n_0\
    );
g15_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CD99999C70FE07E1"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g15_b4_n_0
    );
\g15_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9AACC07256C7F1A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g15_b4__0_n_0\
    );
g15_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F1E1E1E07F00001F"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g15_b5_n_0
    );
\g15_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE336952931C001C"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g15_b5__0_n_0\
    );
g15_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB54AB552AAAAAAA"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g15_b6_n_0
    );
\g15_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC38E64DA56AAB5"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g15_b6__0_n_0\
    );
g15_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98CC673319999999"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g15_b7_n_0
    );
\g15_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0F871C673326"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g15_b7__0_n_0\
    );
g15_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D296B5A5AD2D2D2D"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g15_b8_n_0
    );
\g15_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF007E0783C38"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g15_b8__0_n_0\
    );
g15_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E318C639CE31CE31"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g15_b9_n_0
    );
\g15_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8007FC03F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g15_b9__0_n_0\
    );
g1_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E6EE4F7E38923C41"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g1_b0_n_0
    );
\g1_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"032FE8781433F98B"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g1_b0__0_n_0\
    );
g1_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F6A61FA28CC813D"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g1_b1_n_0
    );
g1_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE03F03F03F03E0"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g1_b10_n_0
    );
\g1_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FC03FC00FF8007F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g1_b10__0_n_0\
    );
g1_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C07E07E0"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g1_b11_n_0
    );
\g1_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0003FFFF80000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g1_b11__0_n_0\
    );
g1_b12: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF8007FF"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g1_b12_n_0
    );
\g1_b12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC000000007FFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g1_b12__0_n_0\
    );
g1_b13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000007FF"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g1_b13_n_0
    );
\g1_b13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07FFFFFF"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g1_b13__0_n_0\
    );
g1_b14: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF800"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g1_b14_n_0
    );
\g1_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"886BAC43BB87769A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g1_b1__0_n_0\
    );
g1_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F51321A9CDBF2B01"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g1_b2_n_0
    );
\g1_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27B83B97D7D050C4"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g1_b2__0_n_0\
    );
g1_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0656E1CD5B803254"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g1_b3_n_0
    );
\g1_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA9832B01AB065BF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g1_b3__0_n_0\
    );
g1_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52CE1E0E6D2A96CC"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g1_b4_n_0
    );
\g1_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6783CDAB670792A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g1_b4__0_n_0\
    );
g1_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6494AAA524998E3C"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g1_b5_n_0
    );
\g1_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"61F83F1CDB5AD499"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g1_b5__0_n_0\
    );
g1_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78E73336492D2B56"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g1_b6_n_0
    );
\g1_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E007C01F1C6366D2"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g1_b6__0_n_0\
    );
g1_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2A529692DB649932"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g1_b7_n_0
    );
\g1_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B555554AB5292DB6"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g1_b7__0_n_0\
    );
g1_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4C9B24DB6DB6D25B"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g1_b8_n_0
    );
\g1_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCC67318E38E"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g1_b8__0_n_0\
    );
g1_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F1C38E38E38E39C"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g1_b9_n_0
    );
\g1_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3C3C3C1F0F81F81"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g1_b9__0_n_0\
    );
g2_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"580CFE66786997F3"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g2_b0_n_0
    );
\g2_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43ABD600956C14D6"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g2_b0__0_n_0\
    );
g2_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D6E1DDA5BC53CA2D"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g2_b1_n_0
    );
g2_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE003FF007FC07F8"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g2_b10_n_0
    );
\g2_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC1F81F80FC07E0"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g2_b10__0_n_0\
    );
g2_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003FFFF80007FF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g2_b11_n_0
    );
\g2_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003FF8007FFC001F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g2_b11__0_n_0\
    );
g2_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFC000000007FF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g2_b12_n_0
    );
\g2_b12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8000003FFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g2_b12__0_n_0\
    );
g2_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFF800"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g2_b13_n_0
    );
\g2_b13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF80000000000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g2_b13__0_n_0\
    );
g2_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007FFFFFFFFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => g2_b14_n_0
    );
\g2_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3D6D25E8C90BB610"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g2_b1__0_n_0\
    );
g2_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"25F41433D4681634"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g2_b2_n_0
    );
\g2_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE44F958EB0D774F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g2_b2__0_n_0\
    );
g2_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06AC196FE6D81B6C"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g2_b3_n_0
    );
\g2_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5523FE6DA70E5D3F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g2_b3__0_n_0\
    );
g2_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5263E1B552381C49"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g2_b4_n_0
    );
\g2_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"664AAADB9F0F99AA"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g2_b4__0_n_0\
    );
g2_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"64B5549331F81F8E"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g2_b5_n_0
    );
\g2_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"878CCC92D5A54B66"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g2_b5__0_n_0\
    );
g2_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2D93338F0FF81FF0"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g2_b6_n_0
    );
\g2_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD5A5A49B36338E1"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g2_b6__0_n_0\
    );
g2_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4925A52A5552B555"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g2_b7_n_0
    );
\g2_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"366C936D25B5AD4A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g2_b7__0_n_0\
    );
g2_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71C639CC66632666"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g2_b8_n_0
    );
\g2_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"92DA4924936C9B26"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g2_b8__0_n_0\
    );
g2_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81F83E0F8783C787"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g2_b9_n_0
    );
\g2_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71C638E38F1C78E1"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g2_b9__0_n_0\
    );
g3_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CE0A0D88231AC1F3"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g3_b0_n_0
    );
\g3_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AACF360A1C2E87A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g3_b0__0_n_0\
    );
g3_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B71DB565E7941C47"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g3_b1_n_0
    );
g3_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFF80003F"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g3_b10_n_0
    );
\g3_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07C1F03E0F83F07E"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g3_b10__0_n_0\
    );
g3_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g3_b11_n_0
    );
\g3_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003FF001FF800FFE"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g3_b11__0_n_0\
    );
g3_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FFFFF800001"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => g3_b12_n_0
    );
g3_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007FFFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => g3_b13_n_0
    );
\g3_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2663FC4A61960D03"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g3_b1__0_n_0\
    );
g3_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D04178F43030BEC5"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g3_b2_n_0
    );
\g3_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E000734B4E0E56"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g3_b2__0_n_0\
    );
g3_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E53E540690258093"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g3_b3_n_0
    );
\g3_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4AB55529273E0F9B"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g3_b3__0_n_0\
    );
g3_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F9AACC07256C7F1A"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g3_b4_n_0
    );
\g3_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"266CCCE71F01F01C"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g3_b4__0_n_0\
    );
g3_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE336952931C001C"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g3_b5_n_0
    );
\g3_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E3C3E0FF00001F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g3_b5__0_n_0\
    );
g3_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC38E64DA56AAB5"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g3_b6_n_0
    );
\g3_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B54A954AAA55554A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g3_b6__0_n_0\
    );
g3_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFC0F871C673326"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g3_b7_n_0
    );
\g3_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"398CE67333999993"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g3_b7__0_n_0\
    );
g3_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF007E0783C38"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g3_b8_n_0
    );
\g3_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B5A52D696B4B4B6"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g3_b8__0_n_0\
    );
g3_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF8007FC03F"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g3_b9_n_0
    );
\g3_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18C631CE718C738E"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g3_b9__0_n_0\
    );
g4_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D94F83E4D886A9C1"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g4_b0_n_0
    );
\g4_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A1E8BC7AF930CAA9"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g4_b0__0_n_0\
    );
g4_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03B76DDB565AF6E3"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g4_b1_n_0
    );
g4_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC0001FFFFFFFFFF"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g4_b10_n_0
    );
\g4_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81F03E0F83F07C1F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g4_b10__0_n_0\
    );
g4_b11: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1FFFFFFF"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g4_b11_n_0
    );
\g4_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800FFE007FF003FF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g4_b11__0_n_0\
    );
g4_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFE00000FFFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => g4_b12_n_0
    );
g4_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001FFFFFFFFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => g4_b13_n_0
    );
\g4_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F4F9679ADC0399B"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g4_b1__0_n_0\
    );
g4_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BD7AF4178F4385F7"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g4_b2_n_0
    );
\g4_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"958F8D2D31FFF878"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g4_b2__0_n_0\
    );
g4_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2B0353E5406986AF"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g4_b3_n_0
    );
\g4_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"260F831B6B5552AD"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g4_b3__0_n_0\
    );
g4_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"98FC65533F8D2D9F"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g4_b4_n_0
    );
\g4_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7F07F0718CCC99B"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g4_b4__0_n_0\
    );
g4_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"87FF8665AAA49C7F"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g4_b5_n_0
    );
\g4_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFF00F83C3878"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g4_b5__0_n_0\
    );
g4_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D55552D3666383FF"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g4_b6_n_0
    );
\g4_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD5555AAAD56AD52"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g4_b6__0_n_0\
    );
g4_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4CCCCE30E1E07FFF"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g4_b7_n_0
    );
\g4_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"366666333198CE63"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g4_b7__0_n_0\
    );
g4_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3C3C3E0FE01FFFFF"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g4_b8_n_0
    );
\g4_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"92D2D29694B5A529"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g4_b8__0_n_0\
    );
g4_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FC03FE001FFFFFFF"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g4_b9_n_0
    );
\g4_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E31CE718C739CE7"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g4_b9__0_n_0\
    );
g5_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"032FE8781433F98B"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g5_b0_n_0
    );
\g5_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"94D7C956FF942A3D"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g5_b0__0_n_0\
    );
g5_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"886BAC43BB87769A"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g5_b1_n_0
    );
g5_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1FC03FC00FF8007F"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g5_b10_n_0
    );
\g5_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F81FC0FE07E07C0F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g5_b10__0_n_0\
    );
g5_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC0003FFFF80000"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g5_b11_n_0
    );
\g5_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFC001FFE003FF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g5_b11__0_n_0\
    );
g5_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFC000000007FFFF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g5_b12_n_0
    );
\g5_b12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003FFFFFE00000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g5_b12__0_n_0\
    );
g5_b13: unisim.vcomponents.LUT5
    generic map(
      INIT => X"07FFFFFF"
    )
        port map (
      I0 => \i_reg_rep[1]_rep_n_0\,
      I1 => \i_reg_rep[2]_rep_n_0\,
      I2 => \i_reg_rep[3]_rep_n_0\,
      I3 => \i_reg_rep[4]_rep_n_0\,
      I4 => \i_reg_rep[5]_rep_n_0\,
      O => g5_b13_n_0
    );
\g5_b13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE00000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g5_b13__0_n_0\
    );
g5_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001FFFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => g5_b14_n_0
    );
\g5_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7922F6CE85B4943"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g5_b1__0_n_0\
    );
g5_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"27B83B97D7D050C4"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g5_b2_n_0
    );
\g5_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D114F28E560DD80"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g5_b2__0_n_0\
    );
g5_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CA9832B01AB065BF"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g5_b3_n_0
    );
\g5_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03458F1A49803B55"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g5_b3__0_n_0\
    );
g5_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6783CDAB670792A"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g5_b4_n_0
    );
\g5_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA660F0624AAAD99"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g5_b4__0_n_0\
    );
g5_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"61F83F1CDB5AD499"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g5_b5_n_0
    );
\g5_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"992D5A54B6CCCE1E"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g5_b5__0_n_0\
    );
g5_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E007C01F1C6366D2"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g5_b6_n_0
    );
\g5_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78E339326DA5A54A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g5_b6__0_n_0\
    );
g5_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B555554AB5292DB6"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g5_b7_n_0
    );
\g5_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD4A525B4936C993"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g5_b7__0_n_0\
    );
g5_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6CCCCCC67318E38E"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g5_b8_n_0
    );
\g5_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B26C936DB6DA4B6"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g5_b8__0_n_0\
    );
g5_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3C3C3C1F0F81F81"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g5_b9_n_0
    );
\g5_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78E1C70E38E39C71"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g5_b9__0_n_0\
    );
g6_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43ABD600956C14D6"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g6_b0_n_0
    );
\g6_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2E6033D7E1E80B3F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g6_b0__0_n_0\
    );
g6_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3D6D25E8C90BB610"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g6_b1_n_0
    );
g6_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FC1F81F80FC07E0"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g6_b10_n_0
    );
\g6_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FFE00FFC03FC07"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g6_b10__0_n_0\
    );
g6_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003FF8007FFC001F"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g6_b11_n_0
    );
\g6_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFE00003FFFC00"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g6_b11__0_n_0\
    );
g6_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF8000003FFFF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g6_b12_n_0
    );
\g6_b12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00001FFFFFFFFC00"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g6_b12__0_n_0\
    );
g6_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF80000000000"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g6_b13_n_0
    );
\g6_b13__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000001F"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g6_b13__0_n_0\
    );
g6_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007FFFFFFFFFF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g6_b14_n_0
    );
\g6_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A6911E223DCA29EE"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g6_b1__0_n_0\
    );
g6_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FE44F958EB0D774F"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g6_b2_n_0
    );
\g6_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DCF5F4141623E21B"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g6_b2__0_n_0\
    );
g6_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5523FE6DA70E5D3F"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g6_b3_n_0
    );
\g6_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0259F2A7F2B3E6AC"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g6_b3__0_n_0\
    );
g6_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"664AAADB9F0F99AA"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g6_b4_n_0
    );
\g6_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AB61F192A4C3E19A"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g6_b4__0_n_0\
    );
g6_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"878CCC92D5A54B66"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g6_b5_n_0
    );
\g6_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"66D4A524C703E079"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g6_b5__0_n_0\
    );
g6_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD5A5A49B36338E1"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g6_b6_n_0
    );
\g6_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B49939C707FC1FF8"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g6_b6__0_n_0\
    );
g6_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"366C936D25B5AD4A"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g6_b7_n_0
    );
\g6_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"924B6B52AD555552"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g6_b7__0_n_0\
    );
g6_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"92DA4924936C9B26"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g6_b8_n_0
    );
\g6_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E38E7319CCCCCC9"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g6_b8__0_n_0\
    );
g6_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"71C638E38F1C78E1"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g6_b9_n_0
    );
\g6_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7E07E0F07C3C3C38"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g6_b9__0_n_0\
    );
g7_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AACF360A1C2E87A"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g7_b0_n_0
    );
\g7_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7C6A9EE4D83E0D64"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g7_b0__0_n_0\
    );
g7_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2663FC4A61960D03"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g7_b1_n_0
    );
g7_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07C1F03E0F83F07E"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g7_b10_n_0
    );
\g7_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007FFFC0"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g7_b10__0_n_0\
    );
g7_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003FF001FF800FFE"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g7_b11_n_0
    );
\g7_b11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000007"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g7_b11__0_n_0\
    );
g7_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000FFFFF800001"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g7_b12_n_0
    );
g7_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000007FFFFF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g7_b13_n_0
    );
\g7_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3890A5952449123F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g7_b1__0_n_0\
    );
g7_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E000734B4E0E56"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g7_b2_n_0
    );
\g7_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"105E3D0E17D0A142"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g7_b2__0_n_0\
    );
g7_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4AB55529273E0F9B"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g7_b3_n_0
    );
\g7_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0A9E69FD58353F2B"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g7_b3__0_n_0\
    );
g7_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"266CCCE71F01F01C"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g7_b4_n_0
    );
\g7_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"064B4E033559C0E6"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g7_b4__0_n_0\
    );
g7_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E1E3C3E0FF00001F"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g7_b5_n_0
    );
\g7_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01C6DAAA599E001E"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g7_b5__0_n_0\
    );
g7_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B54A954AAA55554A"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g7_b6_n_0
    );
\g7_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"003E399934B55554"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g7_b6__0_n_0\
    );
g7_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"398CE67333999993"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g7_b7_n_0
    );
\g7_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001F878F38CCCCD"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g7_b7__0_n_0\
    );
g7_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6B5A52D696B4B4B6"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g7_b8_n_0
    );
\g7_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000007F80F83C3C3"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g7_b8__0_n_0\
    );
g7_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"18C631CE718C738E"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g7_b9_n_0
    );
\g7_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000007FF803FC0"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g7_b9__0_n_0\
    );
g8_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A1E8BC7AF930CAA9"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g8_b0_n_0
    );
\g8_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"307CA73BEE4FAF8C"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g8_b0__0_n_0\
    );
g8_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F4F9679ADC0399B"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g8_b1_n_0
    );
g8_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"81F03E0F83F07C1F"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g8_b10_n_0
    );
\g8_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FFFE0000000000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g8_b10__0_n_0\
    );
g8_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"800FFE007FF003FF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g8_b11_n_0
    );
\g8_b11__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E0000000"
    )
        port map (
      I0 => \i_reg_rep[1]__0_n_0\,
      I1 => \i_reg_rep[2]__0_n_0\,
      I2 => \i_reg_rep[3]__0_n_0\,
      I3 => \i_reg_rep[4]__0_n_0\,
      I4 => \i_reg_rep[5]__0_n_0\,
      O => \g8_b11__0_n_0\
    );
g8_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFE00000FFFFF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g8_b12_n_0
    );
g8_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000001FFFFFFFFFF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g8_b13_n_0
    );
\g8_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DC7D61859524712"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g8_b1__0_n_0\
    );
g8_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"958F8D2D31FFF878"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g8_b2_n_0
    );
\g8_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5C82F3F3D0E17DF4"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g8_b2__0_n_0\
    );
g8_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"260F831B6B5552AD"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g8_b3_n_0
    );
\g8_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"36FE5BF69FD58358"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g8_b3__0_n_0\
    );
g8_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7F07F0718CCC99B"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g8_b4_n_0
    );
\g8_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A701C95B1FCCAA60"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g8_b4__0_n_0\
    );
g8_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFFF00F83C3878"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g8_b5_n_0
    );
\g8_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C7FFC736B5693380"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g8_b5__0_n_0\
    );
g8_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD5555AAAD56AD52"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g8_b6_n_0
    );
\g8_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"52AA95A4D98E3C00"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g8_b6__0_n_0\
    );
g8_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"366666333198CE63"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g8_b7_n_0
    );
\g8_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B3319C71E0FC000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g8_b7__0_n_0\
    );
g8_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"92D2D29694B5A529"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g8_b8_n_0
    );
\g8_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E3C3E1F81FF00000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g8_b8__0_n_0\
    );
g8_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E31CE718C739CE7"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g8_b9_n_0
    );
\g8_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03FC01FFE0000000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g8_b9__0_n_0\
    );
g9_b0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"94D7C956FF942A3D"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g9_b0_n_0
    );
\g9_b0__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"301669E19980CFE5"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g9_b0__0_n_0\
    );
g9_b1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7922F6CE85B4943"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g9_b1_n_0
    );
g9_b10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F81FC0FE07E07C0F"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g9_b10_n_0
    );
\g9_b10__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E01FC01FF003FF80"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g9_b10__0_n_0\
    );
g9_b11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07FFC001FFE003FF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g9_b11_n_0
    );
\g9_b11__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001FFFE00003FFFF"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g9_b11__0_n_0\
    );
g9_b12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00003FFFFFE00000"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g9_b12_n_0
    );
\g9_b12__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"001FFFFFFFFC0000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g9_b12__0_n_0\
    );
g9_b13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFE00000"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g9_b13_n_0
    );
\g9_b13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFE0000000000000"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g9_b13__0_n_0\
    );
g9_b14: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000001FFFFF"
    )
        port map (
      I0 => i(0),
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g9_b14_n_0
    );
\g9_b1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4BAC35C25A447894"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g9_b1__0_n_0\
    );
g9_b2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0D114F28E560DD80"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => \i_reg_rep[1]_rep_n_0\,
      I2 => \i_reg_rep[2]_rep_n_0\,
      I3 => \i_reg_rep[3]_rep_n_0\,
      I4 => \i_reg_rep[4]_rep_n_0\,
      I5 => \i_reg_rep[5]_rep_n_0\,
      O => g9_b2_n_0
    );
\g9_b2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D397E9D433D7D05B"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g9_b2__0_n_0\
    );
g9_b3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03458F1A49803B55"
    )
        port map (
      I0 => \i_reg_rep[0]_rep_n_0\,
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g9_b3_n_0
    );
\g9_b3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"C927E4980967CA9F"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g9_b3__0_n_0\
    );
g9_b4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AA660F0624AAAD99"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g9_b4_n_0
    );
\g9_b4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6DC7E3B5527839B5"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g9_b4__0_n_0\
    );
g9_b5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"992D5A54B6CCCE1E"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g9_b5_n_0
    );
\g9_b5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8E07E07336D552D9"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_n_0\,
      I2 => \i_reg_rep[2]__0_n_0\,
      I3 => \i_reg_rep[3]__0_n_0\,
      I4 => \i_reg_rep[4]__0_n_0\,
      I5 => \i_reg_rep[5]__0_n_0\,
      O => \g9_b5__0_n_0\
    );
g9_b6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78E339326DA5A54A"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g9_b6_n_0
    );
\g9_b6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F007E00F0E33364B"
    )
        port map (
      I0 => \i_reg_rep[0]__0_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g9_b6__0_n_0\
    );
g9_b7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AD4A525B4936C993"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g9_b7_n_0
    );
\g9_b7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5552B555AB5A5B6D"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g9_b7__0_n_0\
    );
g9_b8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9B26C936DB6DA4B6"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g9_b8_n_0
    );
\g9_b8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"999B3999CC639C71"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g9_b8__0_n_0\
    );
g9_b9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"78E1C70E38E39C71"
    )
        port map (
      I0 => i(0),
      I1 => i(1),
      I2 => i(2),
      I3 => i(3),
      I4 => i(4),
      I5 => i(5),
      O => g9_b9_n_0
    );
\g9_b9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1E1C3E1E0F83E07E"
    )
        port map (
      I0 => \i_reg_rep[0]__0_rep_n_0\,
      I1 => \i_reg_rep[1]__0_rep_n_0\,
      I2 => \i_reg_rep[2]__0_rep_n_0\,
      I3 => \i_reg_rep[3]__0_rep_n_0\,
      I4 => \i_reg_rep[4]__0_rep_n_0\,
      I5 => \i_reg_rep[5]__0_rep_n_0\,
      O => \g9_b9__0_n_0\
    );
\i0_inferred__0/i__carry\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i0_inferred__0/i__carry_n_0\,
      CO(2) => \i0_inferred__0/i__carry_n_1\,
      CO(1) => \i0_inferred__0/i__carry_n_2\,
      CO(0) => \i0_inferred__0/i__carry_n_3\,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i0_inferred__0/i__carry_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry_i_1_n_0\,
      S(2) => \i__carry_i_2_n_0\,
      S(1) => \i__carry_i_3_n_0\,
      S(0) => \i__carry_i_4_n_0\
    );
\i0_inferred__0/i__carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_inferred__0/i__carry_n_0\,
      CO(3) => \i0_inferred__0/i__carry__0_n_0\,
      CO(2) => \i0_inferred__0/i__carry__0_n_1\,
      CO(1) => \i0_inferred__0/i__carry__0_n_2\,
      CO(0) => \i0_inferred__0/i__carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i0_inferred__0/i__carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \i__carry__0_i_1_n_0\,
      S(2) => \i__carry__0_i_2_n_0\,
      S(1) => \i__carry__0_i_3_n_0\,
      S(0) => \i__carry__0_i_4_n_0\
    );
\i0_inferred__0/i__carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i0_inferred__0/i__carry__0_n_0\,
      CO(3) => \NLW_i0_inferred__0/i__carry__1_CO_UNCONNECTED\(3),
      CO(2) => \i0_inferred__0/i__carry__1_n_1\,
      CO(1) => \i0_inferred__0/i__carry__1_n_2\,
      CO(0) => \i0_inferred__0/i__carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_i0_inferred__0/i__carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \i__carry__1_i_1_n_0\,
      S(1) => \i__carry__1_i_2_n_0\,
      S(0) => \i__carry__1_i_3_n_0\
    );
\i[0]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      O => \i[0]_i_2_n_0\
    );
\i__carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(23),
      I1 => p_0_in(22),
      I2 => p_0_in(21),
      O => \i__carry__0_i_1_n_0\
    );
\i__carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(20),
      I1 => p_0_in(19),
      I2 => p_0_in(18),
      O => \i__carry__0_i_2_n_0\
    );
\i__carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(17),
      I1 => p_0_in(16),
      I2 => p_0_in(15),
      O => \i__carry__0_i_3_n_0\
    );
\i__carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(14),
      I1 => p_0_in(13),
      I2 => p_0_in(12),
      O => \i__carry__0_i_4_n_0\
    );
\i__carry__0_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__0_i_6_n_0\,
      CO(3) => \i__carry__0_i_5_n_0\,
      CO(2) => \i__carry__0_i_5_n_1\,
      CO(1) => \i__carry__0_i_5_n_2\,
      CO(0) => \i__carry__0_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(24 downto 21),
      S(3 downto 0) => i_reg(24 downto 21)
    );
\i__carry__0_i_6\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__0_i_7_n_0\,
      CO(3) => \i__carry__0_i_6_n_0\,
      CO(2) => \i__carry__0_i_6_n_1\,
      CO(1) => \i__carry__0_i_6_n_2\,
      CO(0) => \i__carry__0_i_6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(20 downto 17),
      S(3 downto 0) => i_reg(20 downto 17)
    );
\i__carry__0_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg_rep[9]_i_1_n_0\,
      CO(3) => \i__carry__0_i_7_n_0\,
      CO(2) => \i__carry__0_i_7_n_1\,
      CO(1) => \i__carry__0_i_7_n_2\,
      CO(0) => \i__carry__0_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(16 downto 13),
      S(3 downto 0) => i_reg(16 downto 13)
    );
\i__carry__1_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => p_0_in(30),
      I1 => p_0_in(31),
      O => \i__carry__1_i_1_n_0\
    );
\i__carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(29),
      I1 => p_0_in(28),
      I2 => p_0_in(27),
      O => \i__carry__1_i_2_n_0\
    );
\i__carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => p_0_in(26),
      I1 => p_0_in(25),
      I2 => p_0_in(24),
      O => \i__carry__1_i_3_n_0\
    );
\i__carry__1_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__1_i_5_n_0\,
      CO(3 downto 2) => \NLW_i__carry__1_i_4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \i__carry__1_i_4_n_2\,
      CO(0) => \i__carry__1_i_4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_i__carry__1_i_4_O_UNCONNECTED\(3),
      O(2 downto 0) => p_0_in(31 downto 29),
      S(3) => '0',
      S(2 downto 0) => i_reg(31 downto 29)
    );
\i__carry__1_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \i__carry__0_i_5_n_0\,
      CO(3) => \i__carry__1_i_5_n_0\,
      CO(2) => \i__carry__1_i_5_n_1\,
      CO(1) => \i__carry__1_i_5_n_2\,
      CO(0) => \i__carry__1_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => p_0_in(28 downto 25),
      S(3 downto 0) => i_reg(28 downto 25)
    );
\i__carry_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => p_0_in(11),
      I1 => p_0_in(10),
      I2 => \p_0_in__0\(9),
      O => \i__carry_i_1_n_0\
    );
\i__carry_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \p_0_in__0\(8),
      I1 => \p_0_in__0\(7),
      I2 => \p_0_in__0\(6),
      O => \i__carry_i_2_n_0\
    );
\i__carry_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \p_0_in__0\(5),
      I1 => \p_0_in__0\(4),
      I2 => \p_0_in__0\(3),
      O => \i__carry_i_3_n_0\
    );
\i__carry_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \p_0_in__0\(2),
      I1 => i_reg(0),
      I2 => \p_0_in__0\(1),
      O => \i__carry_i_4_n_0\
    );
\i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[0]_i_1_n_7\,
      Q => i_reg(0),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg[0]_i_1_n_0\,
      CO(2) => \i_reg[0]_i_1_n_1\,
      CO(1) => \i_reg[0]_i_1_n_2\,
      CO(0) => \i_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \i_reg[0]_i_1_n_4\,
      O(2) => \i_reg[0]_i_1_n_5\,
      O(1) => \i_reg[0]_i_1_n_6\,
      O(0) => \i_reg[0]_i_1_n_7\,
      S(3 downto 1) => i_reg(3 downto 1),
      S(0) => \i[0]_i_2_n_0\
    );
\i_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[8]_i_1_n_5\,
      Q => i_reg(10),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[8]_i_1_n_4\,
      Q => i_reg(11),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[12]_i_1_n_7\,
      Q => i_reg(12),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[8]_i_1_n_0\,
      CO(3) => \i_reg[12]_i_1_n_0\,
      CO(2) => \i_reg[12]_i_1_n_1\,
      CO(1) => \i_reg[12]_i_1_n_2\,
      CO(0) => \i_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[12]_i_1_n_4\,
      O(2) => \i_reg[12]_i_1_n_5\,
      O(1) => \i_reg[12]_i_1_n_6\,
      O(0) => \i_reg[12]_i_1_n_7\,
      S(3 downto 0) => i_reg(15 downto 12)
    );
\i_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[12]_i_1_n_6\,
      Q => i_reg(13),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[12]_i_1_n_5\,
      Q => i_reg(14),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[12]_i_1_n_4\,
      Q => i_reg(15),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[16]_i_1_n_7\,
      Q => i_reg(16),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[12]_i_1_n_0\,
      CO(3) => \i_reg[16]_i_1_n_0\,
      CO(2) => \i_reg[16]_i_1_n_1\,
      CO(1) => \i_reg[16]_i_1_n_2\,
      CO(0) => \i_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[16]_i_1_n_4\,
      O(2) => \i_reg[16]_i_1_n_5\,
      O(1) => \i_reg[16]_i_1_n_6\,
      O(0) => \i_reg[16]_i_1_n_7\,
      S(3 downto 0) => i_reg(19 downto 16)
    );
\i_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[16]_i_1_n_6\,
      Q => i_reg(17),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[16]_i_1_n_5\,
      Q => i_reg(18),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[16]_i_1_n_4\,
      Q => i_reg(19),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[0]_i_1_n_6\,
      Q => i_reg(1),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[20]_i_1_n_7\,
      Q => i_reg(20),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[16]_i_1_n_0\,
      CO(3) => \i_reg[20]_i_1_n_0\,
      CO(2) => \i_reg[20]_i_1_n_1\,
      CO(1) => \i_reg[20]_i_1_n_2\,
      CO(0) => \i_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[20]_i_1_n_4\,
      O(2) => \i_reg[20]_i_1_n_5\,
      O(1) => \i_reg[20]_i_1_n_6\,
      O(0) => \i_reg[20]_i_1_n_7\,
      S(3 downto 0) => i_reg(23 downto 20)
    );
\i_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[20]_i_1_n_6\,
      Q => i_reg(21),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[20]_i_1_n_5\,
      Q => i_reg(22),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[20]_i_1_n_4\,
      Q => i_reg(23),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[24]_i_1_n_7\,
      Q => i_reg(24),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[20]_i_1_n_0\,
      CO(3) => \i_reg[24]_i_1_n_0\,
      CO(2) => \i_reg[24]_i_1_n_1\,
      CO(1) => \i_reg[24]_i_1_n_2\,
      CO(0) => \i_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[24]_i_1_n_4\,
      O(2) => \i_reg[24]_i_1_n_5\,
      O(1) => \i_reg[24]_i_1_n_6\,
      O(0) => \i_reg[24]_i_1_n_7\,
      S(3 downto 0) => i_reg(27 downto 24)
    );
\i_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[24]_i_1_n_6\,
      Q => i_reg(25),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[24]_i_1_n_5\,
      Q => i_reg(26),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[24]_i_1_n_4\,
      Q => i_reg(27),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[28]_i_1_n_7\,
      Q => i_reg(28),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[24]_i_1_n_0\,
      CO(3) => \NLW_i_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \i_reg[28]_i_1_n_1\,
      CO(1) => \i_reg[28]_i_1_n_2\,
      CO(0) => \i_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[28]_i_1_n_4\,
      O(2) => \i_reg[28]_i_1_n_5\,
      O(1) => \i_reg[28]_i_1_n_6\,
      O(0) => \i_reg[28]_i_1_n_7\,
      S(3 downto 0) => i_reg(31 downto 28)
    );
\i_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[28]_i_1_n_6\,
      Q => i_reg(29),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[0]_i_1_n_5\,
      Q => i_reg(2),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[28]_i_1_n_5\,
      Q => i_reg(30),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[28]_i_1_n_4\,
      Q => i_reg(31),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[0]_i_1_n_4\,
      Q => i_reg(3),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[4]_i_1_n_7\,
      Q => i_reg(4),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[0]_i_1_n_0\,
      CO(3) => \i_reg[4]_i_1_n_0\,
      CO(2) => \i_reg[4]_i_1_n_1\,
      CO(1) => \i_reg[4]_i_1_n_2\,
      CO(0) => \i_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[4]_i_1_n_4\,
      O(2) => \i_reg[4]_i_1_n_5\,
      O(1) => \i_reg[4]_i_1_n_6\,
      O(0) => \i_reg[4]_i_1_n_7\,
      S(3 downto 0) => i_reg(7 downto 4)
    );
\i_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[4]_i_1_n_6\,
      Q => i_reg(5),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[4]_i_1_n_5\,
      Q => i_reg(6),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[4]_i_1_n_4\,
      Q => i_reg(7),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[8]_i_1_n_7\,
      Q => i_reg(8),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg[4]_i_1_n_0\,
      CO(3) => \i_reg[8]_i_1_n_0\,
      CO(2) => \i_reg[8]_i_1_n_1\,
      CO(1) => \i_reg[8]_i_1_n_2\,
      CO(0) => \i_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \i_reg[8]_i_1_n_4\,
      O(2) => \i_reg[8]_i_1_n_5\,
      O(1) => \i_reg[8]_i_1_n_6\,
      O(0) => \i_reg[8]_i_1_n_7\,
      S(3 downto 0) => i_reg(11 downto 8)
    );
\i_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \i_reg[8]_i_1_n_6\,
      Q => i_reg(9),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => i(0),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[0]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \i_reg_rep[0]__0_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[0]__0_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \i_reg_rep[0]__0_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[0]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(0),
      Q => \i_reg_rep[0]_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => i(1),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[1]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \i_reg_rep[1]__0_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[1]__0_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \i_reg_rep[1]__0_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[1]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(1),
      Q => \i_reg_rep[1]_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => i(2),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[2]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \i_reg_rep[2]__0_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[2]__0_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \i_reg_rep[2]__0_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[2]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(2),
      Q => \i_reg_rep[2]_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => i(3),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[3]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \i_reg_rep[3]__0_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[3]__0_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \i_reg_rep[3]__0_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[3]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(3),
      Q => \i_reg_rep[3]_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => i(4),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[4]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \i_reg_rep[4]__0_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[4]__0_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \i_reg_rep[4]__0_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \i_reg_rep[4]_i_1_n_0\,
      CO(2) => \i_reg_rep[4]_i_1_n_1\,
      CO(1) => \i_reg_rep[4]_i_1_n_2\,
      CO(0) => \i_reg_rep[4]_i_1_n_3\,
      CYINIT => i_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(4 downto 1),
      S(3 downto 0) => i_reg(4 downto 1)
    );
\i_reg_rep[4]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(4),
      Q => \i_reg_rep[4]_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => i(5),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[5]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \i_reg_rep[5]__0_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[5]__0_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \i_reg_rep[5]__0_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[5]_rep\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(5),
      Q => \i_reg_rep[5]_rep_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => i(6),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[6]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(6),
      Q => \i_reg_rep[6]__0_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => i(7),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[7]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(7),
      Q => \i_reg_rep[7]__0_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => i(8),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[8]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(8),
      Q => \i_reg_rep[8]__0_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg_rep[4]_i_1_n_0\,
      CO(3) => \i_reg_rep[8]_i_1_n_0\,
      CO(2) => \i_reg_rep[8]_i_1_n_1\,
      CO(1) => \i_reg_rep[8]_i_1_n_2\,
      CO(0) => \i_reg_rep[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \p_0_in__0\(8 downto 5),
      S(3 downto 0) => i_reg(8 downto 5)
    );
\i_reg_rep[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => i(9),
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[9]__0\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \p_0_in__0\(9),
      Q => \i_reg_rep[9]__0_n_0\,
      R => \i0_inferred__0/i__carry__1_n_1\
    );
\i_reg_rep[9]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \i_reg_rep[8]_i_1_n_0\,
      CO(3) => \i_reg_rep[9]_i_1_n_0\,
      CO(2) => \i_reg_rep[9]_i_1_n_1\,
      CO(1) => \i_reg_rep[9]_i_1_n_2\,
      CO(0) => \i_reg_rep[9]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 1) => p_0_in(12 downto 10),
      O(0) => \p_0_in__0\(9),
      S(3 downto 0) => i_reg(12 downto 9)
    );
\i_rep[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i_reg(0),
      O => \p_0_in__0\(0)
    );
pwm_a_n_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => i(9),
      I1 => \pwm_a_p0_carry__0_n_0\,
      O => pwm_a_n_i_1_n_0
    );
pwm_a_n_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pwm_a_n_i_1_n_0,
      Q => pwm_a_n,
      R => '0'
    );
pwm_a_p0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_a_p0_carry_n_0,
      CO(2) => pwm_a_p0_carry_n_1,
      CO(1) => pwm_a_p0_carry_n_2,
      CO(0) => pwm_a_p0_carry_n_3,
      CYINIT => '0',
      DI(3) => pwm_a_p0_carry_i_1_n_0,
      DI(2) => pwm_a_p0_carry_i_2_n_0,
      DI(1) => pwm_a_p0_carry_i_3_n_0,
      DI(0) => pwm_a_p0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_a_p0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => pwm_a_p0_carry_i_5_n_0,
      S(2) => pwm_a_p0_carry_i_6_n_0,
      S(1) => pwm_a_p0_carry_i_7_n_0,
      S(0) => pwm_a_p0_carry_i_8_n_0
    );
\pwm_a_p0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_a_p0_carry_n_0,
      CO(3) => \pwm_a_p0_carry__0_n_0\,
      CO(2) => \pwm_a_p0_carry__0_n_1\,
      CO(1) => \pwm_a_p0_carry__0_n_2\,
      CO(0) => \pwm_a_p0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => \pwm_a_p0_carry__0_i_1_n_0\,
      DI(2) => \pwm_a_p0_carry__0_i_2_n_0\,
      DI(1) => \pwm_a_p0_carry__0_i_3_n_0\,
      DI(0) => \pwm_a_p0_carry__0_i_4_n_0\,
      O(3 downto 0) => \NLW_pwm_a_p0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \pwm_a_p0_carry__0_i_5_n_0\,
      S(2) => \pwm_a_p0_carry__0_i_6_n_0\,
      S(1) => \pwm_a_p0_carry__0_i_7_n_0\,
      S(0) => \pwm_a_p0_carry__0_i_8_n_0\
    );
\pwm_a_p0_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^counter\(15),
      I1 => \^counter\(14),
      I2 => sine_abs(14),
      O => \pwm_a_p0_carry__0_i_1_n_0\
    );
\pwm_a_p0_carry__0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sine_abs(13),
      I1 => \^counter\(13),
      I2 => sine_abs(12),
      I3 => \^counter\(12),
      O => \pwm_a_p0_carry__0_i_2_n_0\
    );
\pwm_a_p0_carry__0_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sine_abs(11),
      I1 => \^counter\(11),
      I2 => sine_abs(10),
      I3 => \^counter\(10),
      O => \pwm_a_p0_carry__0_i_3_n_0\
    );
\pwm_a_p0_carry__0_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sine_abs(9),
      I1 => \^counter\(9),
      I2 => sine_abs(8),
      I3 => \^counter\(8),
      O => \pwm_a_p0_carry__0_i_4_n_0\
    );
\pwm_a_p0_carry__0_i_5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => sine_abs(14),
      I1 => \^counter\(14),
      I2 => \^counter\(15),
      O => \pwm_a_p0_carry__0_i_5_n_0\
    );
\pwm_a_p0_carry__0_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter\(13),
      I1 => sine_abs(13),
      I2 => \^counter\(12),
      I3 => sine_abs(12),
      O => \pwm_a_p0_carry__0_i_6_n_0\
    );
\pwm_a_p0_carry__0_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter\(11),
      I1 => sine_abs(11),
      I2 => \^counter\(10),
      I3 => sine_abs(10),
      O => \pwm_a_p0_carry__0_i_7_n_0\
    );
\pwm_a_p0_carry__0_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter\(9),
      I1 => sine_abs(9),
      I2 => \^counter\(8),
      I3 => sine_abs(8),
      O => \pwm_a_p0_carry__0_i_8_n_0\
    );
pwm_a_p0_carry_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sine_abs(7),
      I1 => \^counter\(7),
      I2 => sine_abs(6),
      I3 => \^counter\(6),
      O => pwm_a_p0_carry_i_1_n_0
    );
pwm_a_p0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sine_abs(5),
      I1 => \^counter\(5),
      I2 => sine_abs(4),
      I3 => \^counter\(4),
      O => pwm_a_p0_carry_i_2_n_0
    );
pwm_a_p0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sine_abs(3),
      I1 => \^counter\(3),
      I2 => sine_abs(2),
      I3 => \^counter\(2),
      O => pwm_a_p0_carry_i_3_n_0
    );
pwm_a_p0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => sine_abs(1),
      I1 => \^counter\(1),
      I2 => sine_abs(0),
      I3 => \^counter\(0),
      O => pwm_a_p0_carry_i_4_n_0
    );
pwm_a_p0_carry_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter\(7),
      I1 => sine_abs(7),
      I2 => \^counter\(6),
      I3 => sine_abs(6),
      O => pwm_a_p0_carry_i_5_n_0
    );
pwm_a_p0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter\(5),
      I1 => sine_abs(5),
      I2 => \^counter\(4),
      I3 => sine_abs(4),
      O => pwm_a_p0_carry_i_6_n_0
    );
pwm_a_p0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter\(3),
      I1 => sine_abs(3),
      I2 => \^counter\(2),
      I3 => sine_abs(2),
      O => pwm_a_p0_carry_i_7_n_0
    );
pwm_a_p0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => \^counter\(1),
      I1 => sine_abs(1),
      I2 => \^counter\(0),
      I3 => sine_abs(0),
      O => pwm_a_p0_carry_i_8_n_0
    );
pwm_a_p_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \pwm_a_p0_carry__0_n_0\,
      I1 => i(9),
      O => pwm_a_p_i_1_n_0
    );
pwm_a_p_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pwm_a_p_i_1_n_0,
      Q => pwm_a_p,
      R => '0'
    );
pwm_b_n_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"28"
    )
        port map (
      I0 => \pwm_b_p0_carry__0_n_0\,
      I1 => \i_reg_rep[8]__0_n_0\,
      I2 => \i_reg_rep[9]__0_n_0\,
      O => pwm_b_n_i_1_n_0
    );
pwm_b_n_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pwm_b_n_i_1_n_0,
      Q => pwm_b_n,
      R => '0'
    );
pwm_b_p0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => pwm_b_p0_carry_n_0,
      CO(2) => pwm_b_p0_carry_n_1,
      CO(1) => pwm_b_p0_carry_n_2,
      CO(0) => pwm_b_p0_carry_n_3,
      CYINIT => '0',
      DI(3) => \pwm_b_p0_carry_i_1__0_n_0\,
      DI(2) => pwm_b_p0_carry_i_2_n_0,
      DI(1) => pwm_b_p0_carry_i_3_n_0,
      DI(0) => pwm_b_p0_carry_i_4_n_0,
      O(3 downto 0) => NLW_pwm_b_p0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => \pwm_b_p0_carry_i_5__0_n_0\,
      S(2) => pwm_b_p0_carry_i_6_n_0,
      S(1) => pwm_b_p0_carry_i_7_n_0,
      S(0) => pwm_b_p0_carry_i_8_n_0
    );
\pwm_b_p0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => pwm_b_p0_carry_n_0,
      CO(3) => \pwm_b_p0_carry__0_n_0\,
      CO(2) => \pwm_b_p0_carry__0_n_1\,
      CO(1) => \pwm_b_p0_carry__0_n_2\,
      CO(0) => \pwm_b_p0_carry__0_n_3\,
      CYINIT => '0',
      DI(3) => pwm_b_p0_carry_i_1_n_0,
      DI(2) => \pwm_b_p0_carry_i_2__0_n_0\,
      DI(1) => \pwm_b_p0_carry_i_3__0_n_0\,
      DI(0) => \pwm_b_p0_carry_i_4__0_n_0\,
      O(3 downto 0) => \NLW_pwm_b_p0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => pwm_b_p0_carry_i_5_n_0,
      S(2) => \pwm_b_p0_carry_i_6__0_n_0\,
      S(1) => \pwm_b_p0_carry_i_7__0_n_0\,
      S(0) => \pwm_b_p0_carry_i_8__0_n_0\
    );
pwm_b_p0_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^counter\(15),
      I1 => \^counter\(14),
      I2 => cos_abs(14),
      O => pwm_b_p0_carry_i_1_n_0
    );
\pwm_b_p0_carry_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cos_abs(7),
      I1 => \^counter\(7),
      I2 => cos_abs(6),
      I3 => \^counter\(6),
      O => \pwm_b_p0_carry_i_1__0_n_0\
    );
pwm_b_p0_carry_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cos_abs(5),
      I1 => \^counter\(5),
      I2 => cos_abs(4),
      I3 => \^counter\(4),
      O => pwm_b_p0_carry_i_2_n_0
    );
\pwm_b_p0_carry_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cos_abs(13),
      I1 => \^counter\(13),
      I2 => cos_abs(12),
      I3 => \^counter\(12),
      O => \pwm_b_p0_carry_i_2__0_n_0\
    );
pwm_b_p0_carry_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cos_abs(3),
      I1 => \^counter\(3),
      I2 => cos_abs(2),
      I3 => \^counter\(2),
      O => pwm_b_p0_carry_i_3_n_0
    );
\pwm_b_p0_carry_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cos_abs(11),
      I1 => \^counter\(11),
      I2 => cos_abs(10),
      I3 => \^counter\(10),
      O => \pwm_b_p0_carry_i_3__0_n_0\
    );
pwm_b_p0_carry_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cos_abs(1),
      I1 => \^counter\(1),
      I2 => cos_abs(0),
      I3 => \^counter\(0),
      O => pwm_b_p0_carry_i_4_n_0
    );
\pwm_b_p0_carry_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => cos_abs(9),
      I1 => \^counter\(9),
      I2 => cos_abs(8),
      I3 => \^counter\(8),
      O => \pwm_b_p0_carry_i_4__0_n_0\
    );
pwm_b_p0_carry_i_5: unisim.vcomponents.LUT3
    generic map(
      INIT => X"09"
    )
        port map (
      I0 => cos_abs(14),
      I1 => \^counter\(14),
      I2 => \^counter\(15),
      O => pwm_b_p0_carry_i_5_n_0
    );
\pwm_b_p0_carry_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cos_abs(7),
      I1 => \^counter\(7),
      I2 => cos_abs(6),
      I3 => \^counter\(6),
      O => \pwm_b_p0_carry_i_5__0_n_0\
    );
pwm_b_p0_carry_i_6: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cos_abs(5),
      I1 => \^counter\(5),
      I2 => cos_abs(4),
      I3 => \^counter\(4),
      O => pwm_b_p0_carry_i_6_n_0
    );
\pwm_b_p0_carry_i_6__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cos_abs(13),
      I1 => \^counter\(13),
      I2 => cos_abs(12),
      I3 => \^counter\(12),
      O => \pwm_b_p0_carry_i_6__0_n_0\
    );
pwm_b_p0_carry_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cos_abs(3),
      I1 => \^counter\(3),
      I2 => cos_abs(2),
      I3 => \^counter\(2),
      O => pwm_b_p0_carry_i_7_n_0
    );
\pwm_b_p0_carry_i_7__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cos_abs(11),
      I1 => \^counter\(11),
      I2 => cos_abs(10),
      I3 => \^counter\(10),
      O => \pwm_b_p0_carry_i_7__0_n_0\
    );
pwm_b_p0_carry_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cos_abs(1),
      I1 => \^counter\(1),
      I2 => cos_abs(0),
      I3 => \^counter\(0),
      O => pwm_b_p0_carry_i_8_n_0
    );
\pwm_b_p0_carry_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => cos_abs(9),
      I1 => \^counter\(9),
      I2 => cos_abs(8),
      I3 => \^counter\(8),
      O => \pwm_b_p0_carry_i_8__0_n_0\
    );
pwm_b_p_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"90"
    )
        port map (
      I0 => \i_reg_rep[8]__0_n_0\,
      I1 => \i_reg_rep[9]__0_n_0\,
      I2 => \pwm_b_p0_carry__0_n_0\,
      O => pwm_b_p_i_1_n_0
    );
pwm_b_p_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => pwm_b_p_i_1_n_0,
      Q => pwm_b_p,
      R => '0'
    );
\sine[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[0]_i_2_n_0\,
      I1 => \sine_reg[0]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[0]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[0]_i_5_n_0\,
      O => p_0_out(0)
    );
\sine[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[10]_i_2_n_0\,
      I1 => \sine_reg[10]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[10]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[10]_i_5_n_0\,
      O => p_0_out(10)
    );
\sine[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[11]_i_2_n_0\,
      I1 => \sine_reg[11]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[11]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[11]_i_5_n_0\,
      O => p_0_out(11)
    );
\sine[12]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => g2_b12_n_0,
      I1 => i(7),
      I2 => g1_b12_n_0,
      I3 => i(6),
      I4 => g0_b12_n_0,
      O => \sine[12]_i_4_n_0\
    );
\sine[12]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => g7_b12_n_0,
      I1 => g6_b12_n_0,
      I2 => i(7),
      I3 => g5_b12_n_0,
      I4 => i(6),
      O => \sine[12]_i_5_n_0\
    );
\sine[12]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => g10_b12_n_0,
      I1 => i(7),
      I2 => g9_b12_n_0,
      I3 => i(6),
      I4 => g8_b12_n_0,
      O => \sine[12]_i_6_n_0\
    );
\sine[12]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g15_b12_n_0,
      I1 => g14_b12_n_0,
      I2 => i(7),
      I3 => i(6),
      I4 => g13_b12_n_0,
      O => \sine[12]_i_7_n_0\
    );
\sine[13]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCBBFC88"
    )
        port map (
      I0 => g2_b13_n_0,
      I1 => i(7),
      I2 => g1_b13_n_0,
      I3 => i(6),
      I4 => g14_b14_n_0,
      O => \sine[13]_i_4_n_0\
    );
\sine[13]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFA0CFCF"
    )
        port map (
      I0 => g7_b13_n_0,
      I1 => g6_b13_n_0,
      I2 => i(7),
      I3 => g5_b13_n_0,
      I4 => i(6),
      O => \sine[13]_i_5_n_0\
    );
\sine[13]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => g10_b13_n_0,
      I1 => i(7),
      I2 => g9_b13_n_0,
      I3 => i(6),
      I4 => g8_b13_n_0,
      O => \sine[13]_i_6_n_0\
    );
\sine[13]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AFC0A0C0"
    )
        port map (
      I0 => g1_b14_n_0,
      I1 => g14_b13_n_0,
      I2 => i(7),
      I3 => i(6),
      I4 => g13_b13_n_0,
      O => \sine[13]_i_7_n_0\
    );
\sine[14]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3F3CBCBC"
    )
        port map (
      I0 => g6_b14_n_0,
      I1 => i(8),
      I2 => i(7),
      I3 => g1_b14_n_0,
      I4 => i(6),
      O => \sine[14]_i_2_n_0\
    );
\sine[14]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C8C83303"
    )
        port map (
      I0 => g14_b14_n_0,
      I1 => i(8),
      I2 => i(6),
      I3 => g9_b14_n_0,
      I4 => i(7),
      O => \sine[14]_i_3_n_0\
    );
\sine[15]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => i(9),
      O => p_0_in_0
    );
\sine[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[1]_i_2_n_0\,
      I1 => \sine_reg[1]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[1]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[1]_i_5_n_0\,
      O => p_0_out(1)
    );
\sine[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[2]_i_2_n_0\,
      I1 => \sine_reg[2]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[2]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[2]_i_5_n_0\,
      O => p_0_out(2)
    );
\sine[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[3]_i_2_n_0\,
      I1 => \sine_reg[3]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[3]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[3]_i_5_n_0\,
      O => p_0_out(3)
    );
\sine[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[4]_i_2_n_0\,
      I1 => \sine_reg[4]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[4]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[4]_i_5_n_0\,
      O => p_0_out(4)
    );
\sine[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[5]_i_2_n_0\,
      I1 => \sine_reg[5]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[5]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[5]_i_5_n_0\,
      O => p_0_out(5)
    );
\sine[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[6]_i_2_n_0\,
      I1 => \sine_reg[6]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[6]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[6]_i_5_n_0\,
      O => p_0_out(6)
    );
\sine[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[7]_i_2_n_0\,
      I1 => \sine_reg[7]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[7]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[7]_i_5_n_0\,
      O => p_0_out(7)
    );
\sine[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[8]_i_2_n_0\,
      I1 => \sine_reg[8]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[8]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[8]_i_5_n_0\,
      O => p_0_out(8)
    );
\sine[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFA0CFCFAFA0C0C0"
    )
        port map (
      I0 => \sine_reg[9]_i_2_n_0\,
      I1 => \sine_reg[9]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[9]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[9]_i_5_n_0\,
      O => p_0_out(9)
    );
\sine_abs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[0]_i_2_n_0\,
      I1 => \sine_reg[0]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[0]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[0]_i_5_n_0\,
      O => p_1_in(0)
    );
\sine_abs[10]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[10]_i_2_n_0\,
      I1 => \sine_reg[10]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[10]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[10]_i_5_n_0\,
      O => p_1_in(10)
    );
\sine_abs[11]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[11]_i_2_n_0\,
      I1 => \sine_reg[11]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[11]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[11]_i_5_n_0\,
      O => p_1_in(11)
    );
\sine_abs[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_out(12),
      I1 => i(9),
      O => p_1_in(12)
    );
\sine_abs[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_out(13),
      I1 => i(9),
      O => p_1_in(13)
    );
\sine_abs[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => p_0_out(14),
      I1 => i(9),
      O => p_1_in(14)
    );
\sine_abs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[1]_i_2_n_0\,
      I1 => \sine_reg[1]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[1]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[1]_i_5_n_0\,
      O => p_1_in(1)
    );
\sine_abs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[2]_i_2_n_0\,
      I1 => \sine_reg[2]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[2]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[2]_i_5_n_0\,
      O => p_1_in(2)
    );
\sine_abs[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[3]_i_2_n_0\,
      I1 => \sine_reg[3]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[3]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[3]_i_5_n_0\,
      O => p_1_in(3)
    );
\sine_abs[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[4]_i_2_n_0\,
      I1 => \sine_reg[4]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[4]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[4]_i_5_n_0\,
      O => p_1_in(4)
    );
\sine_abs[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[5]_i_2_n_0\,
      I1 => \sine_reg[5]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[5]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[5]_i_5_n_0\,
      O => p_1_in(5)
    );
\sine_abs[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[6]_i_2_n_0\,
      I1 => \sine_reg[6]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[6]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[6]_i_5_n_0\,
      O => p_1_in(6)
    );
\sine_abs[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[7]_i_2_n_0\,
      I1 => \sine_reg[7]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[7]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[7]_i_5_n_0\,
      O => p_1_in(7)
    );
\sine_abs[8]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[8]_i_2_n_0\,
      I1 => \sine_reg[8]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[8]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[8]_i_5_n_0\,
      O => p_1_in(8)
    );
\sine_abs[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5F503F3F5F503030"
    )
        port map (
      I0 => \sine_reg[9]_i_2_n_0\,
      I1 => \sine_reg[9]_i_3_n_0\,
      I2 => i(9),
      I3 => \sine_reg[9]_i_4_n_0\,
      I4 => i(8),
      I5 => \sine_reg[9]_i_5_n_0\,
      O => p_1_in(9)
    );
\sine_abs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(0),
      Q => sine_abs(0),
      R => '0'
    );
\sine_abs_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(10),
      Q => sine_abs(10),
      R => '0'
    );
\sine_abs_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(11),
      Q => sine_abs(11),
      R => '0'
    );
\sine_abs_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(12),
      Q => sine_abs(12),
      R => '0'
    );
\sine_abs_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(13),
      Q => sine_abs(13),
      R => '0'
    );
\sine_abs_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(14),
      Q => sine_abs(14),
      R => '0'
    );
\sine_abs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(1),
      Q => sine_abs(1),
      R => '0'
    );
\sine_abs_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(2),
      Q => sine_abs(2),
      R => '0'
    );
\sine_abs_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(3),
      Q => sine_abs(3),
      R => '0'
    );
\sine_abs_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(4),
      Q => sine_abs(4),
      R => '0'
    );
\sine_abs_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(5),
      Q => sine_abs(5),
      R => '0'
    );
\sine_abs_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(6),
      Q => sine_abs(6),
      R => '0'
    );
\sine_abs_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(7),
      Q => sine_abs(7),
      R => '0'
    );
\sine_abs_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(8),
      Q => sine_abs(8),
      R => '0'
    );
\sine_abs_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_1_in(9),
      Q => sine_abs(9),
      R => '0'
    );
\sine_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(0),
      Q => sine(0),
      R => '0'
    );
\sine_reg[0]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b0_n_0,
      I1 => g5_b0_n_0,
      O => \sine_reg[0]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[0]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b0_n_0,
      I1 => g7_b0_n_0,
      O => \sine_reg[0]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[0]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b0_n_0,
      I1 => g1_b0_n_0,
      O => \sine_reg[0]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[0]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b0_n_0,
      I1 => g3_b0_n_0,
      O => \sine_reg[0]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[0]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[0]_i_6_n_0\,
      I1 => \sine_reg[0]_i_7_n_0\,
      O => \sine_reg[0]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[0]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[0]_i_8_n_0\,
      I1 => \sine_reg[0]_i_9_n_0\,
      O => \sine_reg[0]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[0]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[0]_i_10_n_0\,
      I1 => \sine_reg[0]_i_11_n_0\,
      O => \sine_reg[0]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[0]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[0]_i_12_n_0\,
      I1 => \sine_reg[0]_i_13_n_0\,
      O => \sine_reg[0]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b0_n_0,
      I1 => g13_b0_n_0,
      O => \sine_reg[0]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[0]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b0_n_0,
      I1 => g15_b0_n_0,
      O => \sine_reg[0]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b0_n_0,
      I1 => g9_b0_n_0,
      O => \sine_reg[0]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[0]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b0_n_0,
      I1 => g11_b0_n_0,
      O => \sine_reg[0]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(10),
      Q => sine(10),
      R => '0'
    );
\sine_reg[10]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b10_n_0,
      I1 => g5_b10_n_0,
      O => \sine_reg[10]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[10]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b10_n_0,
      I1 => g7_b10_n_0,
      O => \sine_reg[10]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[10]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b10_n_0,
      I1 => g1_b10_n_0,
      O => \sine_reg[10]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[10]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b10_n_0,
      I1 => g3_b10_n_0,
      O => \sine_reg[10]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[10]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[10]_i_6_n_0\,
      I1 => \sine_reg[10]_i_7_n_0\,
      O => \sine_reg[10]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[10]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[10]_i_8_n_0\,
      I1 => \sine_reg[10]_i_9_n_0\,
      O => \sine_reg[10]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[10]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[10]_i_10_n_0\,
      I1 => \sine_reg[10]_i_11_n_0\,
      O => \sine_reg[10]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[10]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[10]_i_12_n_0\,
      I1 => \sine_reg[10]_i_13_n_0\,
      O => \sine_reg[10]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[10]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b10_n_0,
      I1 => g13_b10_n_0,
      O => \sine_reg[10]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[10]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b10_n_0,
      I1 => g15_b10_n_0,
      O => \sine_reg[10]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[10]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b10_n_0,
      I1 => g9_b10_n_0,
      O => \sine_reg[10]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[10]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b10_n_0,
      I1 => g11_b10_n_0,
      O => \sine_reg[10]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(11),
      Q => sine(11),
      R => '0'
    );
\sine_reg[11]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b11_n_0,
      I1 => g5_b11_n_0,
      O => \sine_reg[11]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[11]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b11_n_0,
      I1 => g7_b11_n_0,
      O => \sine_reg[11]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[11]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b11_n_0,
      I1 => g1_b11_n_0,
      O => \sine_reg[11]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[11]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b11_n_0,
      I1 => g3_b11_n_0,
      O => \sine_reg[11]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[11]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[11]_i_6_n_0\,
      I1 => \sine_reg[11]_i_7_n_0\,
      O => \sine_reg[11]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[11]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[11]_i_8_n_0\,
      I1 => \sine_reg[11]_i_9_n_0\,
      O => \sine_reg[11]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[11]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[11]_i_10_n_0\,
      I1 => \sine_reg[11]_i_11_n_0\,
      O => \sine_reg[11]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[11]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[11]_i_12_n_0\,
      I1 => \sine_reg[11]_i_13_n_0\,
      O => \sine_reg[11]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[11]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b11_n_0,
      I1 => g13_b11_n_0,
      O => \sine_reg[11]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[11]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b11_n_0,
      I1 => g15_b11_n_0,
      O => \sine_reg[11]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[11]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b11_n_0,
      I1 => g9_b11_n_0,
      O => \sine_reg[11]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[11]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b11_n_0,
      I1 => g11_b11_n_0,
      O => \sine_reg[11]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(12),
      Q => sine(12),
      R => '0'
    );
\sine_reg[12]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[12]_i_2_n_0\,
      I1 => \sine_reg[12]_i_3_n_0\,
      O => p_0_out(12),
      S => i(9)
    );
\sine_reg[12]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine[12]_i_4_n_0\,
      I1 => \sine[12]_i_5_n_0\,
      O => \sine_reg[12]_i_2_n_0\,
      S => i(8)
    );
\sine_reg[12]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine[12]_i_6_n_0\,
      I1 => \sine[12]_i_7_n_0\,
      O => \sine_reg[12]_i_3_n_0\,
      S => i(8)
    );
\sine_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(13),
      Q => sine(13),
      R => '0'
    );
\sine_reg[13]_i_1\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[13]_i_2_n_0\,
      I1 => \sine_reg[13]_i_3_n_0\,
      O => p_0_out(13),
      S => i(9)
    );
\sine_reg[13]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine[13]_i_4_n_0\,
      I1 => \sine[13]_i_5_n_0\,
      O => \sine_reg[13]_i_2_n_0\,
      S => i(8)
    );
\sine_reg[13]_i_3\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine[13]_i_6_n_0\,
      I1 => \sine[13]_i_7_n_0\,
      O => \sine_reg[13]_i_3_n_0\,
      S => i(8)
    );
\sine_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(14),
      Q => sine(14),
      R => '0'
    );
\sine_reg[14]_i_1\: unisim.vcomponents.MUXF7
     port map (
      I0 => \sine[14]_i_2_n_0\,
      I1 => \sine[14]_i_3_n_0\,
      O => p_0_out(14),
      S => i(9)
    );
\sine_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_in_0,
      Q => sine(15),
      R => '0'
    );
\sine_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(1),
      Q => sine(1),
      R => '0'
    );
\sine_reg[1]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b1_n_0,
      I1 => g5_b1_n_0,
      O => \sine_reg[1]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[1]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b1_n_0,
      I1 => g7_b1_n_0,
      O => \sine_reg[1]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[1]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b1_n_0,
      I1 => g1_b1_n_0,
      O => \sine_reg[1]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[1]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b1_n_0,
      I1 => g3_b1_n_0,
      O => \sine_reg[1]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[1]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[1]_i_6_n_0\,
      I1 => \sine_reg[1]_i_7_n_0\,
      O => \sine_reg[1]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[1]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[1]_i_8_n_0\,
      I1 => \sine_reg[1]_i_9_n_0\,
      O => \sine_reg[1]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[1]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[1]_i_10_n_0\,
      I1 => \sine_reg[1]_i_11_n_0\,
      O => \sine_reg[1]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[1]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[1]_i_12_n_0\,
      I1 => \sine_reg[1]_i_13_n_0\,
      O => \sine_reg[1]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b1_n_0,
      I1 => g13_b1_n_0,
      O => \sine_reg[1]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[1]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b1_n_0,
      I1 => g15_b1_n_0,
      O => \sine_reg[1]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[1]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b1_n_0,
      I1 => g9_b1_n_0,
      O => \sine_reg[1]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[1]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b1_n_0,
      I1 => g11_b1_n_0,
      O => \sine_reg[1]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(2),
      Q => sine(2),
      R => '0'
    );
\sine_reg[2]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b2_n_0,
      I1 => g5_b2_n_0,
      O => \sine_reg[2]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[2]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b2_n_0,
      I1 => g7_b2_n_0,
      O => \sine_reg[2]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[2]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b2_n_0,
      I1 => g1_b2_n_0,
      O => \sine_reg[2]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[2]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b2_n_0,
      I1 => g3_b2_n_0,
      O => \sine_reg[2]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[2]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[2]_i_6_n_0\,
      I1 => \sine_reg[2]_i_7_n_0\,
      O => \sine_reg[2]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[2]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[2]_i_8_n_0\,
      I1 => \sine_reg[2]_i_9_n_0\,
      O => \sine_reg[2]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[2]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[2]_i_10_n_0\,
      I1 => \sine_reg[2]_i_11_n_0\,
      O => \sine_reg[2]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[2]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[2]_i_12_n_0\,
      I1 => \sine_reg[2]_i_13_n_0\,
      O => \sine_reg[2]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b2_n_0,
      I1 => g13_b2_n_0,
      O => \sine_reg[2]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[2]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b2_n_0,
      I1 => g15_b2_n_0,
      O => \sine_reg[2]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b2_n_0,
      I1 => g9_b2_n_0,
      O => \sine_reg[2]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[2]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b2_n_0,
      I1 => g11_b2_n_0,
      O => \sine_reg[2]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(3),
      Q => sine(3),
      R => '0'
    );
\sine_reg[3]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b3_n_0,
      I1 => g5_b3_n_0,
      O => \sine_reg[3]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[3]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b3_n_0,
      I1 => g7_b3_n_0,
      O => \sine_reg[3]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[3]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b3_n_0,
      I1 => g1_b3_n_0,
      O => \sine_reg[3]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[3]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b3_n_0,
      I1 => g3_b3_n_0,
      O => \sine_reg[3]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[3]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[3]_i_6_n_0\,
      I1 => \sine_reg[3]_i_7_n_0\,
      O => \sine_reg[3]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[3]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[3]_i_8_n_0\,
      I1 => \sine_reg[3]_i_9_n_0\,
      O => \sine_reg[3]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[3]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[3]_i_10_n_0\,
      I1 => \sine_reg[3]_i_11_n_0\,
      O => \sine_reg[3]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[3]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[3]_i_12_n_0\,
      I1 => \sine_reg[3]_i_13_n_0\,
      O => \sine_reg[3]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b3_n_0,
      I1 => g13_b3_n_0,
      O => \sine_reg[3]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[3]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b3_n_0,
      I1 => g15_b3_n_0,
      O => \sine_reg[3]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b3_n_0,
      I1 => g9_b3_n_0,
      O => \sine_reg[3]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[3]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b3_n_0,
      I1 => g11_b3_n_0,
      O => \sine_reg[3]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(4),
      Q => sine(4),
      R => '0'
    );
\sine_reg[4]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b4_n_0,
      I1 => g5_b4_n_0,
      O => \sine_reg[4]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[4]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b4_n_0,
      I1 => g7_b4_n_0,
      O => \sine_reg[4]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[4]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b4_n_0,
      I1 => g1_b4_n_0,
      O => \sine_reg[4]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[4]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b4_n_0,
      I1 => g3_b4_n_0,
      O => \sine_reg[4]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[4]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[4]_i_6_n_0\,
      I1 => \sine_reg[4]_i_7_n_0\,
      O => \sine_reg[4]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[4]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[4]_i_8_n_0\,
      I1 => \sine_reg[4]_i_9_n_0\,
      O => \sine_reg[4]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[4]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[4]_i_10_n_0\,
      I1 => \sine_reg[4]_i_11_n_0\,
      O => \sine_reg[4]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[4]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[4]_i_12_n_0\,
      I1 => \sine_reg[4]_i_13_n_0\,
      O => \sine_reg[4]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b4_n_0,
      I1 => g13_b4_n_0,
      O => \sine_reg[4]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[4]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b4_n_0,
      I1 => g15_b4_n_0,
      O => \sine_reg[4]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[4]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b4_n_0,
      I1 => g9_b4_n_0,
      O => \sine_reg[4]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[4]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b4_n_0,
      I1 => g11_b4_n_0,
      O => \sine_reg[4]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(5),
      Q => sine(5),
      R => '0'
    );
\sine_reg[5]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b5_n_0,
      I1 => g5_b5_n_0,
      O => \sine_reg[5]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[5]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b5_n_0,
      I1 => g7_b5_n_0,
      O => \sine_reg[5]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[5]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b5_n_0,
      I1 => g1_b5_n_0,
      O => \sine_reg[5]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[5]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b5_n_0,
      I1 => g3_b5_n_0,
      O => \sine_reg[5]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[5]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[5]_i_6_n_0\,
      I1 => \sine_reg[5]_i_7_n_0\,
      O => \sine_reg[5]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[5]_i_8_n_0\,
      I1 => \sine_reg[5]_i_9_n_0\,
      O => \sine_reg[5]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[5]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[5]_i_10_n_0\,
      I1 => \sine_reg[5]_i_11_n_0\,
      O => \sine_reg[5]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[5]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[5]_i_12_n_0\,
      I1 => \sine_reg[5]_i_13_n_0\,
      O => \sine_reg[5]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b5_n_0,
      I1 => g13_b5_n_0,
      O => \sine_reg[5]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b5_n_0,
      I1 => g15_b5_n_0,
      O => \sine_reg[5]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[5]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b5_n_0,
      I1 => g9_b5_n_0,
      O => \sine_reg[5]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[5]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b5_n_0,
      I1 => g11_b5_n_0,
      O => \sine_reg[5]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(6),
      Q => sine(6),
      R => '0'
    );
\sine_reg[6]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b6_n_0,
      I1 => g5_b6_n_0,
      O => \sine_reg[6]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[6]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b6_n_0,
      I1 => g7_b6_n_0,
      O => \sine_reg[6]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[6]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b6_n_0,
      I1 => g1_b6_n_0,
      O => \sine_reg[6]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[6]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b6_n_0,
      I1 => g3_b6_n_0,
      O => \sine_reg[6]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[6]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[6]_i_6_n_0\,
      I1 => \sine_reg[6]_i_7_n_0\,
      O => \sine_reg[6]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[6]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[6]_i_8_n_0\,
      I1 => \sine_reg[6]_i_9_n_0\,
      O => \sine_reg[6]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[6]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[6]_i_10_n_0\,
      I1 => \sine_reg[6]_i_11_n_0\,
      O => \sine_reg[6]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[6]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[6]_i_12_n_0\,
      I1 => \sine_reg[6]_i_13_n_0\,
      O => \sine_reg[6]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[6]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b6_n_0,
      I1 => g13_b6_n_0,
      O => \sine_reg[6]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[6]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b6_n_0,
      I1 => g15_b6_n_0,
      O => \sine_reg[6]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[6]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b6_n_0,
      I1 => g9_b6_n_0,
      O => \sine_reg[6]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[6]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b6_n_0,
      I1 => g11_b6_n_0,
      O => \sine_reg[6]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(7),
      Q => sine(7),
      R => '0'
    );
\sine_reg[7]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b7_n_0,
      I1 => g5_b7_n_0,
      O => \sine_reg[7]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[7]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b7_n_0,
      I1 => g7_b7_n_0,
      O => \sine_reg[7]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[7]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b7_n_0,
      I1 => g1_b7_n_0,
      O => \sine_reg[7]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[7]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b7_n_0,
      I1 => g3_b7_n_0,
      O => \sine_reg[7]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[7]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[7]_i_6_n_0\,
      I1 => \sine_reg[7]_i_7_n_0\,
      O => \sine_reg[7]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[7]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[7]_i_8_n_0\,
      I1 => \sine_reg[7]_i_9_n_0\,
      O => \sine_reg[7]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[7]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[7]_i_10_n_0\,
      I1 => \sine_reg[7]_i_11_n_0\,
      O => \sine_reg[7]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[7]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[7]_i_12_n_0\,
      I1 => \sine_reg[7]_i_13_n_0\,
      O => \sine_reg[7]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[7]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b7_n_0,
      I1 => g13_b7_n_0,
      O => \sine_reg[7]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[7]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b7_n_0,
      I1 => g15_b7_n_0,
      O => \sine_reg[7]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[7]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b7_n_0,
      I1 => g9_b7_n_0,
      O => \sine_reg[7]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[7]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b7_n_0,
      I1 => g11_b7_n_0,
      O => \sine_reg[7]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(8),
      Q => sine(8),
      R => '0'
    );
\sine_reg[8]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b8_n_0,
      I1 => g5_b8_n_0,
      O => \sine_reg[8]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[8]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b8_n_0,
      I1 => g7_b8_n_0,
      O => \sine_reg[8]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[8]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b8_n_0,
      I1 => g1_b8_n_0,
      O => \sine_reg[8]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[8]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b8_n_0,
      I1 => g3_b8_n_0,
      O => \sine_reg[8]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[8]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[8]_i_6_n_0\,
      I1 => \sine_reg[8]_i_7_n_0\,
      O => \sine_reg[8]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[8]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[8]_i_8_n_0\,
      I1 => \sine_reg[8]_i_9_n_0\,
      O => \sine_reg[8]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[8]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[8]_i_10_n_0\,
      I1 => \sine_reg[8]_i_11_n_0\,
      O => \sine_reg[8]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[8]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[8]_i_12_n_0\,
      I1 => \sine_reg[8]_i_13_n_0\,
      O => \sine_reg[8]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[8]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b8_n_0,
      I1 => g13_b8_n_0,
      O => \sine_reg[8]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[8]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b8_n_0,
      I1 => g15_b8_n_0,
      O => \sine_reg[8]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[8]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b8_n_0,
      I1 => g9_b8_n_0,
      O => \sine_reg[8]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[8]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b8_n_0,
      I1 => g11_b8_n_0,
      O => \sine_reg[8]_i_9_n_0\,
      S => i(6)
    );
\sine_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => p_0_out(9),
      Q => sine(9),
      R => '0'
    );
\sine_reg[9]_i_10\: unisim.vcomponents.MUXF7
     port map (
      I0 => g4_b9_n_0,
      I1 => g5_b9_n_0,
      O => \sine_reg[9]_i_10_n_0\,
      S => i(6)
    );
\sine_reg[9]_i_11\: unisim.vcomponents.MUXF7
     port map (
      I0 => g6_b9_n_0,
      I1 => g7_b9_n_0,
      O => \sine_reg[9]_i_11_n_0\,
      S => i(6)
    );
\sine_reg[9]_i_12\: unisim.vcomponents.MUXF7
     port map (
      I0 => g0_b9_n_0,
      I1 => g1_b9_n_0,
      O => \sine_reg[9]_i_12_n_0\,
      S => i(6)
    );
\sine_reg[9]_i_13\: unisim.vcomponents.MUXF7
     port map (
      I0 => g2_b9_n_0,
      I1 => g3_b9_n_0,
      O => \sine_reg[9]_i_13_n_0\,
      S => i(6)
    );
\sine_reg[9]_i_2\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[9]_i_6_n_0\,
      I1 => \sine_reg[9]_i_7_n_0\,
      O => \sine_reg[9]_i_2_n_0\,
      S => i(7)
    );
\sine_reg[9]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[9]_i_8_n_0\,
      I1 => \sine_reg[9]_i_9_n_0\,
      O => \sine_reg[9]_i_3_n_0\,
      S => i(7)
    );
\sine_reg[9]_i_4\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[9]_i_10_n_0\,
      I1 => \sine_reg[9]_i_11_n_0\,
      O => \sine_reg[9]_i_4_n_0\,
      S => i(7)
    );
\sine_reg[9]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \sine_reg[9]_i_12_n_0\,
      I1 => \sine_reg[9]_i_13_n_0\,
      O => \sine_reg[9]_i_5_n_0\,
      S => i(7)
    );
\sine_reg[9]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => g12_b9_n_0,
      I1 => g13_b9_n_0,
      O => \sine_reg[9]_i_6_n_0\,
      S => i(6)
    );
\sine_reg[9]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => g14_b9_n_0,
      I1 => g15_b9_n_0,
      O => \sine_reg[9]_i_7_n_0\,
      S => i(6)
    );
\sine_reg[9]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => g8_b9_n_0,
      I1 => g9_b9_n_0,
      O => \sine_reg[9]_i_8_n_0\,
      S => i(6)
    );
\sine_reg[9]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => g10_b9_n_0,
      I1 => g11_b9_n_0,
      O => \sine_reg[9]_i_9_n_0\,
      S => i(6)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_spwm_0_0 is
  port (
    clk : in STD_LOGIC;
    step_type : in STD_LOGIC_VECTOR ( 11 downto 0 );
    sine : out STD_LOGIC_VECTOR ( 15 downto 0 );
    cos : out STD_LOGIC_VECTOR ( 15 downto 0 );
    counter : out STD_LOGIC_VECTOR ( 15 downto 0 );
    pwm_a_p : out STD_LOGIC;
    pwm_a_n : out STD_LOGIC;
    pwm_b_p : out STD_LOGIC;
    pwm_b_n : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_spwm_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_spwm_0_0 : entity is "system_spwm_0_0,spwm,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_spwm_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_spwm_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_spwm_0_0 : entity is "spwm,Vivado 2018.2";
end system_spwm_0_0;

architecture STRUCTURE of system_spwm_0_0 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_speed_ctrl_0_0_new_clock";
begin
inst: entity work.system_spwm_0_0_spwm
     port map (
      clk => clk,
      cos(15 downto 0) => cos(15 downto 0),
      counter(15 downto 0) => counter(15 downto 0),
      pwm_a_n => pwm_a_n,
      pwm_a_p => pwm_a_p,
      pwm_b_n => pwm_b_n,
      pwm_b_p => pwm_b_p,
      sine(15 downto 0) => sine(15 downto 0),
      step_type(11 downto 0) => step_type(11 downto 0)
    );
end STRUCTURE;
