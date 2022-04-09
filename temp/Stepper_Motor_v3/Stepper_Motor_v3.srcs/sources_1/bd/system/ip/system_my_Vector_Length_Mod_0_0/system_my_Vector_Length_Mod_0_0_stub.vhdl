-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb  4 20:54:42 2021
-- Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top system_my_Vector_Length_Mod_0_0 -prefix
--               system_my_Vector_Length_Mod_0_0_ system_my_Vector_Length_Mod_0_0_stub.vhdl
-- Design      : system_my_Vector_Length_Mod_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_my_Vector_Length_Mod_0_0 is
  Port ( 
    input_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_vector : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );

end system_my_Vector_Length_Mod_0_0;

architecture stub of system_my_Vector_Length_Mod_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input_vector[15:0],output_vector[11:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "my_Vector_Length_Mod,Vivado 2018.2";
begin
end;
