// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  4 20:54:54 2021
// Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_spwm_0_0_stub.v
// Design      : system_spwm_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "spwm,Vivado 2018.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, step_type, sine, cos, counter, pwm_a_p, pwm_a_n, 
  pwm_b_p, pwm_b_n)
/* synthesis syn_black_box black_box_pad_pin="clk,step_type[11:0],sine[15:0],cos[15:0],counter[15:0],pwm_a_p,pwm_a_n,pwm_b_p,pwm_b_n" */;
  input clk;
  input [11:0]step_type;
  output [15:0]sine;
  output [15:0]cos;
  output [15:0]counter;
  output pwm_a_p;
  output pwm_a_n;
  output pwm_b_p;
  output pwm_b_n;
endmodule
