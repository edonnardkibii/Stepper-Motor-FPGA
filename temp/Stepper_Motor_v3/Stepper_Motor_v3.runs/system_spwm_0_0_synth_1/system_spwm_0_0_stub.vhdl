-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb  4 20:54:54 2021
-- Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_spwm_0_0_stub.vhdl
-- Design      : system_spwm_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,step_type[11:0],sine[15:0],cos[15:0],counter[15:0],pwm_a_p,pwm_a_n,pwm_b_p,pwm_b_n";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "spwm,Vivado 2018.2";
begin
end;
