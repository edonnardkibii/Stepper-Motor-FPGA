-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Thu Feb  4 20:54:42 2021
-- Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top system_my_Vector_Length_Mod_0_0 -prefix
--               system_my_Vector_Length_Mod_0_0_ system_my_Vector_Length_Mod_0_0_sim_netlist.vhdl
-- Design      : system_my_Vector_Length_Mod_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_my_Vector_Length_Mod_0_0 is
  port (
    input_vector : in STD_LOGIC_VECTOR ( 15 downto 0 );
    output_vector : out STD_LOGIC_VECTOR ( 11 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_my_Vector_Length_Mod_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_my_Vector_Length_Mod_0_0 : entity is "system_my_Vector_Length_Mod_0_0,my_Vector_Length_Mod,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_my_Vector_Length_Mod_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of system_my_Vector_Length_Mod_0_0 : entity is "package_project";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_my_Vector_Length_Mod_0_0 : entity is "my_Vector_Length_Mod,Vivado 2018.2";
end system_my_Vector_Length_Mod_0_0;

architecture STRUCTURE of system_my_Vector_Length_Mod_0_0 is
  signal \^input_vector\ : STD_LOGIC_VECTOR ( 15 downto 0 );
begin
  \^input_vector\(15 downto 4) <= input_vector(15 downto 4);
  output_vector(11 downto 0) <= \^input_vector\(15 downto 4);
end STRUCTURE;
