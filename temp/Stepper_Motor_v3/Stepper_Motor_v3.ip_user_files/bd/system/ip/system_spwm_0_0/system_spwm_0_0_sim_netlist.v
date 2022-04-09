// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  4 20:54:55 2021
// Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim {c:/Users/James
//               Kibii/OneDrive/Dokumente/Vivado/SoC_Projects/Stepper_Motor_v3/Stepper_Motor_v3.srcs/sources_1/bd/system/ip/system_spwm_0_0/system_spwm_0_0_sim_netlist.v}
// Design      : system_spwm_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_spwm_0_0,spwm,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "spwm,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module system_spwm_0_0
   (clk,
    step_type,
    sine,
    cos,
    counter,
    pwm_a_p,
    pwm_a_n,
    pwm_b_p,
    pwm_b_n);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_speed_ctrl_0_0_new_clock" *) input clk;
  input [11:0]step_type;
  output [15:0]sine;
  output [15:0]cos;
  output [15:0]counter;
  output pwm_a_p;
  output pwm_a_n;
  output pwm_b_p;
  output pwm_b_n;

  wire clk;
  wire [15:0]cos;
  wire [15:0]counter;
  wire pwm_a_n;
  wire pwm_a_p;
  wire pwm_b_n;
  wire pwm_b_p;
  wire [15:0]sine;
  wire [11:0]step_type;

  system_spwm_0_0_spwm inst
       (.clk(clk),
        .cos(cos),
        .counter(counter),
        .pwm_a_n(pwm_a_n),
        .pwm_a_p(pwm_a_p),
        .pwm_b_n(pwm_b_n),
        .pwm_b_p(pwm_b_p),
        .sine(sine),
        .step_type(step_type));
endmodule

(* ORIG_REF_NAME = "spwm" *) 
module system_spwm_0_0_spwm
   (sine,
    cos,
    counter,
    pwm_a_p,
    pwm_a_n,
    pwm_b_p,
    pwm_b_n,
    clk,
    step_type);
  output [15:0]sine;
  output [15:0]cos;
  output [15:0]counter;
  output pwm_a_p;
  output pwm_a_n;
  output pwm_b_p;
  output pwm_b_n;
  input clk;
  input [11:0]step_type;

  wire clear;
  wire clk;
  wire [15:0]cos;
  wire \cos[12]_i_4_n_0 ;
  wire \cos[12]_i_5_n_0 ;
  wire \cos[12]_i_6_n_0 ;
  wire \cos[12]_i_7_n_0 ;
  wire \cos[13]_i_4_n_0 ;
  wire \cos[13]_i_5_n_0 ;
  wire \cos[13]_i_6_n_0 ;
  wire \cos[13]_i_7_n_0 ;
  wire \cos[14]_i_2_n_0 ;
  wire \cos[14]_i_3_n_0 ;
  wire \cos[15]_i_1_n_0 ;
  wire [14:0]cos_abs;
  wire \cos_abs[0]_i_1_n_0 ;
  wire \cos_abs[10]_i_1_n_0 ;
  wire \cos_abs[11]_i_1_n_0 ;
  wire \cos_abs[12]_i_1_n_0 ;
  wire \cos_abs[13]_i_1_n_0 ;
  wire \cos_abs[14]_i_1_n_0 ;
  wire \cos_abs[1]_i_1_n_0 ;
  wire \cos_abs[2]_i_1_n_0 ;
  wire \cos_abs[3]_i_1_n_0 ;
  wire \cos_abs[4]_i_1_n_0 ;
  wire \cos_abs[5]_i_1_n_0 ;
  wire \cos_abs[6]_i_1_n_0 ;
  wire \cos_abs[7]_i_1_n_0 ;
  wire \cos_abs[8]_i_1_n_0 ;
  wire \cos_abs[9]_i_1_n_0 ;
  wire \cos_reg[0]_i_10_n_0 ;
  wire \cos_reg[0]_i_11_n_0 ;
  wire \cos_reg[0]_i_12_n_0 ;
  wire \cos_reg[0]_i_13_n_0 ;
  wire \cos_reg[0]_i_2_n_0 ;
  wire \cos_reg[0]_i_3_n_0 ;
  wire \cos_reg[0]_i_4_n_0 ;
  wire \cos_reg[0]_i_5_n_0 ;
  wire \cos_reg[0]_i_6_n_0 ;
  wire \cos_reg[0]_i_7_n_0 ;
  wire \cos_reg[0]_i_8_n_0 ;
  wire \cos_reg[0]_i_9_n_0 ;
  wire \cos_reg[10]_i_10_n_0 ;
  wire \cos_reg[10]_i_11_n_0 ;
  wire \cos_reg[10]_i_12_n_0 ;
  wire \cos_reg[10]_i_13_n_0 ;
  wire \cos_reg[10]_i_2_n_0 ;
  wire \cos_reg[10]_i_3_n_0 ;
  wire \cos_reg[10]_i_4_n_0 ;
  wire \cos_reg[10]_i_5_n_0 ;
  wire \cos_reg[10]_i_6_n_0 ;
  wire \cos_reg[10]_i_7_n_0 ;
  wire \cos_reg[10]_i_8_n_0 ;
  wire \cos_reg[10]_i_9_n_0 ;
  wire \cos_reg[11]_i_10_n_0 ;
  wire \cos_reg[11]_i_11_n_0 ;
  wire \cos_reg[11]_i_12_n_0 ;
  wire \cos_reg[11]_i_13_n_0 ;
  wire \cos_reg[11]_i_2_n_0 ;
  wire \cos_reg[11]_i_3_n_0 ;
  wire \cos_reg[11]_i_4_n_0 ;
  wire \cos_reg[11]_i_5_n_0 ;
  wire \cos_reg[11]_i_6_n_0 ;
  wire \cos_reg[11]_i_7_n_0 ;
  wire \cos_reg[11]_i_8_n_0 ;
  wire \cos_reg[11]_i_9_n_0 ;
  wire \cos_reg[12]_i_2_n_0 ;
  wire \cos_reg[12]_i_3_n_0 ;
  wire \cos_reg[13]_i_2_n_0 ;
  wire \cos_reg[13]_i_3_n_0 ;
  wire \cos_reg[1]_i_10_n_0 ;
  wire \cos_reg[1]_i_11_n_0 ;
  wire \cos_reg[1]_i_12_n_0 ;
  wire \cos_reg[1]_i_13_n_0 ;
  wire \cos_reg[1]_i_2_n_0 ;
  wire \cos_reg[1]_i_3_n_0 ;
  wire \cos_reg[1]_i_4_n_0 ;
  wire \cos_reg[1]_i_5_n_0 ;
  wire \cos_reg[1]_i_6_n_0 ;
  wire \cos_reg[1]_i_7_n_0 ;
  wire \cos_reg[1]_i_8_n_0 ;
  wire \cos_reg[1]_i_9_n_0 ;
  wire \cos_reg[2]_i_10_n_0 ;
  wire \cos_reg[2]_i_11_n_0 ;
  wire \cos_reg[2]_i_12_n_0 ;
  wire \cos_reg[2]_i_13_n_0 ;
  wire \cos_reg[2]_i_2_n_0 ;
  wire \cos_reg[2]_i_3_n_0 ;
  wire \cos_reg[2]_i_4_n_0 ;
  wire \cos_reg[2]_i_5_n_0 ;
  wire \cos_reg[2]_i_6_n_0 ;
  wire \cos_reg[2]_i_7_n_0 ;
  wire \cos_reg[2]_i_8_n_0 ;
  wire \cos_reg[2]_i_9_n_0 ;
  wire \cos_reg[3]_i_10_n_0 ;
  wire \cos_reg[3]_i_11_n_0 ;
  wire \cos_reg[3]_i_12_n_0 ;
  wire \cos_reg[3]_i_13_n_0 ;
  wire \cos_reg[3]_i_2_n_0 ;
  wire \cos_reg[3]_i_3_n_0 ;
  wire \cos_reg[3]_i_4_n_0 ;
  wire \cos_reg[3]_i_5_n_0 ;
  wire \cos_reg[3]_i_6_n_0 ;
  wire \cos_reg[3]_i_7_n_0 ;
  wire \cos_reg[3]_i_8_n_0 ;
  wire \cos_reg[3]_i_9_n_0 ;
  wire \cos_reg[4]_i_10_n_0 ;
  wire \cos_reg[4]_i_11_n_0 ;
  wire \cos_reg[4]_i_12_n_0 ;
  wire \cos_reg[4]_i_13_n_0 ;
  wire \cos_reg[4]_i_2_n_0 ;
  wire \cos_reg[4]_i_3_n_0 ;
  wire \cos_reg[4]_i_4_n_0 ;
  wire \cos_reg[4]_i_5_n_0 ;
  wire \cos_reg[4]_i_6_n_0 ;
  wire \cos_reg[4]_i_7_n_0 ;
  wire \cos_reg[4]_i_8_n_0 ;
  wire \cos_reg[4]_i_9_n_0 ;
  wire \cos_reg[5]_i_10_n_0 ;
  wire \cos_reg[5]_i_11_n_0 ;
  wire \cos_reg[5]_i_12_n_0 ;
  wire \cos_reg[5]_i_13_n_0 ;
  wire \cos_reg[5]_i_2_n_0 ;
  wire \cos_reg[5]_i_3_n_0 ;
  wire \cos_reg[5]_i_4_n_0 ;
  wire \cos_reg[5]_i_5_n_0 ;
  wire \cos_reg[5]_i_6_n_0 ;
  wire \cos_reg[5]_i_7_n_0 ;
  wire \cos_reg[5]_i_8_n_0 ;
  wire \cos_reg[5]_i_9_n_0 ;
  wire \cos_reg[6]_i_10_n_0 ;
  wire \cos_reg[6]_i_11_n_0 ;
  wire \cos_reg[6]_i_12_n_0 ;
  wire \cos_reg[6]_i_13_n_0 ;
  wire \cos_reg[6]_i_2_n_0 ;
  wire \cos_reg[6]_i_3_n_0 ;
  wire \cos_reg[6]_i_4_n_0 ;
  wire \cos_reg[6]_i_5_n_0 ;
  wire \cos_reg[6]_i_6_n_0 ;
  wire \cos_reg[6]_i_7_n_0 ;
  wire \cos_reg[6]_i_8_n_0 ;
  wire \cos_reg[6]_i_9_n_0 ;
  wire \cos_reg[7]_i_10_n_0 ;
  wire \cos_reg[7]_i_11_n_0 ;
  wire \cos_reg[7]_i_12_n_0 ;
  wire \cos_reg[7]_i_13_n_0 ;
  wire \cos_reg[7]_i_2_n_0 ;
  wire \cos_reg[7]_i_3_n_0 ;
  wire \cos_reg[7]_i_4_n_0 ;
  wire \cos_reg[7]_i_5_n_0 ;
  wire \cos_reg[7]_i_6_n_0 ;
  wire \cos_reg[7]_i_7_n_0 ;
  wire \cos_reg[7]_i_8_n_0 ;
  wire \cos_reg[7]_i_9_n_0 ;
  wire \cos_reg[8]_i_10_n_0 ;
  wire \cos_reg[8]_i_11_n_0 ;
  wire \cos_reg[8]_i_12_n_0 ;
  wire \cos_reg[8]_i_13_n_0 ;
  wire \cos_reg[8]_i_2_n_0 ;
  wire \cos_reg[8]_i_3_n_0 ;
  wire \cos_reg[8]_i_4_n_0 ;
  wire \cos_reg[8]_i_5_n_0 ;
  wire \cos_reg[8]_i_6_n_0 ;
  wire \cos_reg[8]_i_7_n_0 ;
  wire \cos_reg[8]_i_8_n_0 ;
  wire \cos_reg[8]_i_9_n_0 ;
  wire \cos_reg[9]_i_10_n_0 ;
  wire \cos_reg[9]_i_11_n_0 ;
  wire \cos_reg[9]_i_12_n_0 ;
  wire \cos_reg[9]_i_13_n_0 ;
  wire \cos_reg[9]_i_2_n_0 ;
  wire \cos_reg[9]_i_3_n_0 ;
  wire \cos_reg[9]_i_4_n_0 ;
  wire \cos_reg[9]_i_5_n_0 ;
  wire \cos_reg[9]_i_6_n_0 ;
  wire \cos_reg[9]_i_7_n_0 ;
  wire \cos_reg[9]_i_8_n_0 ;
  wire \cos_reg[9]_i_9_n_0 ;
  wire [15:0]counter;
  wire \counter[11]_i_2_n_0 ;
  wire \counter[11]_i_3_n_0 ;
  wire \counter[11]_i_4_n_0 ;
  wire \counter[11]_i_5_n_0 ;
  wire \counter[15]_i_3_n_0 ;
  wire \counter[15]_i_4_n_0 ;
  wire \counter[3]_i_2_n_0 ;
  wire \counter[3]_i_3_n_0 ;
  wire \counter[3]_i_4_n_0 ;
  wire \counter[3]_i_5_n_0 ;
  wire \counter[7]_i_2_n_0 ;
  wire \counter[7]_i_3_n_0 ;
  wire \counter[7]_i_4_n_0 ;
  wire \counter[7]_i_5_n_0 ;
  wire \counter_reg[11]_i_1_n_0 ;
  wire \counter_reg[11]_i_1_n_1 ;
  wire \counter_reg[11]_i_1_n_2 ;
  wire \counter_reg[11]_i_1_n_3 ;
  wire \counter_reg[11]_i_1_n_4 ;
  wire \counter_reg[11]_i_1_n_5 ;
  wire \counter_reg[11]_i_1_n_6 ;
  wire \counter_reg[11]_i_1_n_7 ;
  wire \counter_reg[15]_i_2_n_1 ;
  wire \counter_reg[15]_i_2_n_2 ;
  wire \counter_reg[15]_i_2_n_3 ;
  wire \counter_reg[15]_i_2_n_4 ;
  wire \counter_reg[15]_i_2_n_5 ;
  wire \counter_reg[15]_i_2_n_6 ;
  wire \counter_reg[15]_i_2_n_7 ;
  wire \counter_reg[3]_i_1_n_0 ;
  wire \counter_reg[3]_i_1_n_1 ;
  wire \counter_reg[3]_i_1_n_2 ;
  wire \counter_reg[3]_i_1_n_3 ;
  wire \counter_reg[3]_i_1_n_4 ;
  wire \counter_reg[3]_i_1_n_5 ;
  wire \counter_reg[3]_i_1_n_6 ;
  wire \counter_reg[3]_i_1_n_7 ;
  wire \counter_reg[7]_i_1_n_0 ;
  wire \counter_reg[7]_i_1_n_1 ;
  wire \counter_reg[7]_i_1_n_2 ;
  wire \counter_reg[7]_i_1_n_3 ;
  wire \counter_reg[7]_i_1_n_4 ;
  wire \counter_reg[7]_i_1_n_5 ;
  wire \counter_reg[7]_i_1_n_6 ;
  wire \counter_reg[7]_i_1_n_7 ;
  wire g0_b0__0_n_0;
  wire g0_b0_n_0;
  wire g0_b10__0_n_0;
  wire g0_b10_n_0;
  wire g0_b11__0_n_0;
  wire g0_b11_n_0;
  wire g0_b12_n_0;
  wire g0_b1__0_n_0;
  wire g0_b1_n_0;
  wire g0_b2__0_n_0;
  wire g0_b2_n_0;
  wire g0_b3__0_n_0;
  wire g0_b3_n_0;
  wire g0_b4__0_n_0;
  wire g0_b4_n_0;
  wire g0_b5__0_n_0;
  wire g0_b5_n_0;
  wire g0_b6__0_n_0;
  wire g0_b6_n_0;
  wire g0_b7__0_n_0;
  wire g0_b7_n_0;
  wire g0_b8__0_n_0;
  wire g0_b8_n_0;
  wire g0_b9__0_n_0;
  wire g0_b9_n_0;
  wire g10_b0__0_n_0;
  wire g10_b0_n_0;
  wire g10_b10__0_n_0;
  wire g10_b10_n_0;
  wire g10_b11__0_n_0;
  wire g10_b11_n_0;
  wire g10_b12__0_n_0;
  wire g10_b12_n_0;
  wire g10_b13__0_n_0;
  wire g10_b13_n_0;
  wire g10_b14_n_0;
  wire g10_b1__0_n_0;
  wire g10_b1_n_0;
  wire g10_b2__0_n_0;
  wire g10_b2_n_0;
  wire g10_b3__0_n_0;
  wire g10_b3_n_0;
  wire g10_b4__0_n_0;
  wire g10_b4_n_0;
  wire g10_b5__0_n_0;
  wire g10_b5_n_0;
  wire g10_b6__0_n_0;
  wire g10_b6_n_0;
  wire g10_b7__0_n_0;
  wire g10_b7_n_0;
  wire g10_b8__0_n_0;
  wire g10_b8_n_0;
  wire g10_b9__0_n_0;
  wire g10_b9_n_0;
  wire g11_b0__0_n_0;
  wire g11_b0_n_0;
  wire g11_b10__0_n_0;
  wire g11_b10_n_0;
  wire g11_b11__0_n_0;
  wire g11_b11_n_0;
  wire g11_b12_n_0;
  wire g11_b1__0_n_0;
  wire g11_b1_n_0;
  wire g11_b2__0_n_0;
  wire g11_b2_n_0;
  wire g11_b3__0_n_0;
  wire g11_b3_n_0;
  wire g11_b4__0_n_0;
  wire g11_b4_n_0;
  wire g11_b5__0_n_0;
  wire g11_b5_n_0;
  wire g11_b6__0_n_0;
  wire g11_b6_n_0;
  wire g11_b7__0_n_0;
  wire g11_b7_n_0;
  wire g11_b8__0_n_0;
  wire g11_b8_n_0;
  wire g11_b9__0_n_0;
  wire g11_b9_n_0;
  wire g12_b0__0_n_0;
  wire g12_b0_n_0;
  wire g12_b10__0_n_0;
  wire g12_b10_n_0;
  wire g12_b11__0_n_0;
  wire g12_b11_n_0;
  wire g12_b12_n_0;
  wire g12_b1__0_n_0;
  wire g12_b1_n_0;
  wire g12_b2__0_n_0;
  wire g12_b2_n_0;
  wire g12_b3__0_n_0;
  wire g12_b3_n_0;
  wire g12_b4__0_n_0;
  wire g12_b4_n_0;
  wire g12_b5__0_n_0;
  wire g12_b5_n_0;
  wire g12_b6__0_n_0;
  wire g12_b6_n_0;
  wire g12_b7__0_n_0;
  wire g12_b7_n_0;
  wire g12_b8__0_n_0;
  wire g12_b8_n_0;
  wire g12_b9__0_n_0;
  wire g12_b9_n_0;
  wire g13_b0__0_n_0;
  wire g13_b0_n_0;
  wire g13_b10__0_n_0;
  wire g13_b10_n_0;
  wire g13_b11__0_n_0;
  wire g13_b11_n_0;
  wire g13_b12__0_n_0;
  wire g13_b12_n_0;
  wire g13_b13__0_n_0;
  wire g13_b13_n_0;
  wire g13_b14_n_0;
  wire g13_b1__0_n_0;
  wire g13_b1_n_0;
  wire g13_b2__0_n_0;
  wire g13_b2_n_0;
  wire g13_b3__0_n_0;
  wire g13_b3_n_0;
  wire g13_b4__0_n_0;
  wire g13_b4_n_0;
  wire g13_b5__0_n_0;
  wire g13_b5_n_0;
  wire g13_b6__0_n_0;
  wire g13_b6_n_0;
  wire g13_b7__0_n_0;
  wire g13_b7_n_0;
  wire g13_b8__0_n_0;
  wire g13_b8_n_0;
  wire g13_b9__0_n_0;
  wire g13_b9_n_0;
  wire g14_b0__0_n_0;
  wire g14_b0_n_0;
  wire g14_b10__0_n_0;
  wire g14_b10_n_0;
  wire g14_b11__0_n_0;
  wire g14_b11_n_0;
  wire g14_b12__0_n_0;
  wire g14_b12_n_0;
  wire g14_b13__0_n_0;
  wire g14_b13_n_0;
  wire g14_b14_n_0;
  wire g14_b1__0_n_0;
  wire g14_b1_n_0;
  wire g14_b2__0_n_0;
  wire g14_b2_n_0;
  wire g14_b3__0_n_0;
  wire g14_b3_n_0;
  wire g14_b4__0_n_0;
  wire g14_b4_n_0;
  wire g14_b5__0_n_0;
  wire g14_b5_n_0;
  wire g14_b6__0_n_0;
  wire g14_b6_n_0;
  wire g14_b7__0_n_0;
  wire g14_b7_n_0;
  wire g14_b8__0_n_0;
  wire g14_b8_n_0;
  wire g14_b9__0_n_0;
  wire g14_b9_n_0;
  wire g15_b0__0_n_0;
  wire g15_b0_n_0;
  wire g15_b10__0_n_0;
  wire g15_b10_n_0;
  wire g15_b11__0_n_0;
  wire g15_b11_n_0;
  wire g15_b12_n_0;
  wire g15_b1__0_n_0;
  wire g15_b1_n_0;
  wire g15_b2__0_n_0;
  wire g15_b2_n_0;
  wire g15_b3__0_n_0;
  wire g15_b3_n_0;
  wire g15_b4__0_n_0;
  wire g15_b4_n_0;
  wire g15_b5__0_n_0;
  wire g15_b5_n_0;
  wire g15_b6__0_n_0;
  wire g15_b6_n_0;
  wire g15_b7__0_n_0;
  wire g15_b7_n_0;
  wire g15_b8__0_n_0;
  wire g15_b8_n_0;
  wire g15_b9__0_n_0;
  wire g15_b9_n_0;
  wire g1_b0__0_n_0;
  wire g1_b0_n_0;
  wire g1_b10__0_n_0;
  wire g1_b10_n_0;
  wire g1_b11__0_n_0;
  wire g1_b11_n_0;
  wire g1_b12__0_n_0;
  wire g1_b12_n_0;
  wire g1_b13__0_n_0;
  wire g1_b13_n_0;
  wire g1_b14_n_0;
  wire g1_b1__0_n_0;
  wire g1_b1_n_0;
  wire g1_b2__0_n_0;
  wire g1_b2_n_0;
  wire g1_b3__0_n_0;
  wire g1_b3_n_0;
  wire g1_b4__0_n_0;
  wire g1_b4_n_0;
  wire g1_b5__0_n_0;
  wire g1_b5_n_0;
  wire g1_b6__0_n_0;
  wire g1_b6_n_0;
  wire g1_b7__0_n_0;
  wire g1_b7_n_0;
  wire g1_b8__0_n_0;
  wire g1_b8_n_0;
  wire g1_b9__0_n_0;
  wire g1_b9_n_0;
  wire g2_b0__0_n_0;
  wire g2_b0_n_0;
  wire g2_b10__0_n_0;
  wire g2_b10_n_0;
  wire g2_b11__0_n_0;
  wire g2_b11_n_0;
  wire g2_b12__0_n_0;
  wire g2_b12_n_0;
  wire g2_b13__0_n_0;
  wire g2_b13_n_0;
  wire g2_b14_n_0;
  wire g2_b1__0_n_0;
  wire g2_b1_n_0;
  wire g2_b2__0_n_0;
  wire g2_b2_n_0;
  wire g2_b3__0_n_0;
  wire g2_b3_n_0;
  wire g2_b4__0_n_0;
  wire g2_b4_n_0;
  wire g2_b5__0_n_0;
  wire g2_b5_n_0;
  wire g2_b6__0_n_0;
  wire g2_b6_n_0;
  wire g2_b7__0_n_0;
  wire g2_b7_n_0;
  wire g2_b8__0_n_0;
  wire g2_b8_n_0;
  wire g2_b9__0_n_0;
  wire g2_b9_n_0;
  wire g3_b0__0_n_0;
  wire g3_b0_n_0;
  wire g3_b10__0_n_0;
  wire g3_b10_n_0;
  wire g3_b11__0_n_0;
  wire g3_b11_n_0;
  wire g3_b12_n_0;
  wire g3_b13_n_0;
  wire g3_b1__0_n_0;
  wire g3_b1_n_0;
  wire g3_b2__0_n_0;
  wire g3_b2_n_0;
  wire g3_b3__0_n_0;
  wire g3_b3_n_0;
  wire g3_b4__0_n_0;
  wire g3_b4_n_0;
  wire g3_b5__0_n_0;
  wire g3_b5_n_0;
  wire g3_b6__0_n_0;
  wire g3_b6_n_0;
  wire g3_b7__0_n_0;
  wire g3_b7_n_0;
  wire g3_b8__0_n_0;
  wire g3_b8_n_0;
  wire g3_b9__0_n_0;
  wire g3_b9_n_0;
  wire g4_b0__0_n_0;
  wire g4_b0_n_0;
  wire g4_b10__0_n_0;
  wire g4_b10_n_0;
  wire g4_b11__0_n_0;
  wire g4_b11_n_0;
  wire g4_b12_n_0;
  wire g4_b13_n_0;
  wire g4_b1__0_n_0;
  wire g4_b1_n_0;
  wire g4_b2__0_n_0;
  wire g4_b2_n_0;
  wire g4_b3__0_n_0;
  wire g4_b3_n_0;
  wire g4_b4__0_n_0;
  wire g4_b4_n_0;
  wire g4_b5__0_n_0;
  wire g4_b5_n_0;
  wire g4_b6__0_n_0;
  wire g4_b6_n_0;
  wire g4_b7__0_n_0;
  wire g4_b7_n_0;
  wire g4_b8__0_n_0;
  wire g4_b8_n_0;
  wire g4_b9__0_n_0;
  wire g4_b9_n_0;
  wire g5_b0__0_n_0;
  wire g5_b0_n_0;
  wire g5_b10__0_n_0;
  wire g5_b10_n_0;
  wire g5_b11__0_n_0;
  wire g5_b11_n_0;
  wire g5_b12__0_n_0;
  wire g5_b12_n_0;
  wire g5_b13__0_n_0;
  wire g5_b13_n_0;
  wire g5_b14_n_0;
  wire g5_b1__0_n_0;
  wire g5_b1_n_0;
  wire g5_b2__0_n_0;
  wire g5_b2_n_0;
  wire g5_b3__0_n_0;
  wire g5_b3_n_0;
  wire g5_b4__0_n_0;
  wire g5_b4_n_0;
  wire g5_b5__0_n_0;
  wire g5_b5_n_0;
  wire g5_b6__0_n_0;
  wire g5_b6_n_0;
  wire g5_b7__0_n_0;
  wire g5_b7_n_0;
  wire g5_b8__0_n_0;
  wire g5_b8_n_0;
  wire g5_b9__0_n_0;
  wire g5_b9_n_0;
  wire g6_b0__0_n_0;
  wire g6_b0_n_0;
  wire g6_b10__0_n_0;
  wire g6_b10_n_0;
  wire g6_b11__0_n_0;
  wire g6_b11_n_0;
  wire g6_b12__0_n_0;
  wire g6_b12_n_0;
  wire g6_b13__0_n_0;
  wire g6_b13_n_0;
  wire g6_b14_n_0;
  wire g6_b1__0_n_0;
  wire g6_b1_n_0;
  wire g6_b2__0_n_0;
  wire g6_b2_n_0;
  wire g6_b3__0_n_0;
  wire g6_b3_n_0;
  wire g6_b4__0_n_0;
  wire g6_b4_n_0;
  wire g6_b5__0_n_0;
  wire g6_b5_n_0;
  wire g6_b6__0_n_0;
  wire g6_b6_n_0;
  wire g6_b7__0_n_0;
  wire g6_b7_n_0;
  wire g6_b8__0_n_0;
  wire g6_b8_n_0;
  wire g6_b9__0_n_0;
  wire g6_b9_n_0;
  wire g7_b0__0_n_0;
  wire g7_b0_n_0;
  wire g7_b10__0_n_0;
  wire g7_b10_n_0;
  wire g7_b11__0_n_0;
  wire g7_b11_n_0;
  wire g7_b12_n_0;
  wire g7_b13_n_0;
  wire g7_b1__0_n_0;
  wire g7_b1_n_0;
  wire g7_b2__0_n_0;
  wire g7_b2_n_0;
  wire g7_b3__0_n_0;
  wire g7_b3_n_0;
  wire g7_b4__0_n_0;
  wire g7_b4_n_0;
  wire g7_b5__0_n_0;
  wire g7_b5_n_0;
  wire g7_b6__0_n_0;
  wire g7_b6_n_0;
  wire g7_b7__0_n_0;
  wire g7_b7_n_0;
  wire g7_b8__0_n_0;
  wire g7_b8_n_0;
  wire g7_b9__0_n_0;
  wire g7_b9_n_0;
  wire g8_b0__0_n_0;
  wire g8_b0_n_0;
  wire g8_b10__0_n_0;
  wire g8_b10_n_0;
  wire g8_b11__0_n_0;
  wire g8_b11_n_0;
  wire g8_b12_n_0;
  wire g8_b13_n_0;
  wire g8_b1__0_n_0;
  wire g8_b1_n_0;
  wire g8_b2__0_n_0;
  wire g8_b2_n_0;
  wire g8_b3__0_n_0;
  wire g8_b3_n_0;
  wire g8_b4__0_n_0;
  wire g8_b4_n_0;
  wire g8_b5__0_n_0;
  wire g8_b5_n_0;
  wire g8_b6__0_n_0;
  wire g8_b6_n_0;
  wire g8_b7__0_n_0;
  wire g8_b7_n_0;
  wire g8_b8__0_n_0;
  wire g8_b8_n_0;
  wire g8_b9__0_n_0;
  wire g8_b9_n_0;
  wire g9_b0__0_n_0;
  wire g9_b0_n_0;
  wire g9_b10__0_n_0;
  wire g9_b10_n_0;
  wire g9_b11__0_n_0;
  wire g9_b11_n_0;
  wire g9_b12__0_n_0;
  wire g9_b12_n_0;
  wire g9_b13__0_n_0;
  wire g9_b13_n_0;
  wire g9_b14_n_0;
  wire g9_b1__0_n_0;
  wire g9_b1_n_0;
  wire g9_b2__0_n_0;
  wire g9_b2_n_0;
  wire g9_b3__0_n_0;
  wire g9_b3_n_0;
  wire g9_b4__0_n_0;
  wire g9_b4_n_0;
  wire g9_b5__0_n_0;
  wire g9_b5_n_0;
  wire g9_b6__0_n_0;
  wire g9_b6_n_0;
  wire g9_b7__0_n_0;
  wire g9_b7_n_0;
  wire g9_b8__0_n_0;
  wire g9_b8_n_0;
  wire g9_b9__0_n_0;
  wire g9_b9_n_0;
  wire [9:0]i;
  wire \i0_inferred__0/i__carry__0_n_0 ;
  wire \i0_inferred__0/i__carry__0_n_1 ;
  wire \i0_inferred__0/i__carry__0_n_2 ;
  wire \i0_inferred__0/i__carry__0_n_3 ;
  wire \i0_inferred__0/i__carry__1_n_1 ;
  wire \i0_inferred__0/i__carry__1_n_2 ;
  wire \i0_inferred__0/i__carry__1_n_3 ;
  wire \i0_inferred__0/i__carry_n_0 ;
  wire \i0_inferred__0/i__carry_n_1 ;
  wire \i0_inferred__0/i__carry_n_2 ;
  wire \i0_inferred__0/i__carry_n_3 ;
  wire \i[0]_i_2_n_0 ;
  wire i__carry__0_i_1_n_0;
  wire i__carry__0_i_2_n_0;
  wire i__carry__0_i_3_n_0;
  wire i__carry__0_i_4_n_0;
  wire i__carry__0_i_5_n_0;
  wire i__carry__0_i_5_n_1;
  wire i__carry__0_i_5_n_2;
  wire i__carry__0_i_5_n_3;
  wire i__carry__0_i_6_n_0;
  wire i__carry__0_i_6_n_1;
  wire i__carry__0_i_6_n_2;
  wire i__carry__0_i_6_n_3;
  wire i__carry__0_i_7_n_0;
  wire i__carry__0_i_7_n_1;
  wire i__carry__0_i_7_n_2;
  wire i__carry__0_i_7_n_3;
  wire i__carry__1_i_1_n_0;
  wire i__carry__1_i_2_n_0;
  wire i__carry__1_i_3_n_0;
  wire i__carry__1_i_4_n_2;
  wire i__carry__1_i_4_n_3;
  wire i__carry__1_i_5_n_0;
  wire i__carry__1_i_5_n_1;
  wire i__carry__1_i_5_n_2;
  wire i__carry__1_i_5_n_3;
  wire i__carry_i_1_n_0;
  wire i__carry_i_2_n_0;
  wire i__carry_i_3_n_0;
  wire i__carry_i_4_n_0;
  wire [31:0]i_reg;
  wire \i_reg[0]_i_1_n_0 ;
  wire \i_reg[0]_i_1_n_1 ;
  wire \i_reg[0]_i_1_n_2 ;
  wire \i_reg[0]_i_1_n_3 ;
  wire \i_reg[0]_i_1_n_4 ;
  wire \i_reg[0]_i_1_n_5 ;
  wire \i_reg[0]_i_1_n_6 ;
  wire \i_reg[0]_i_1_n_7 ;
  wire \i_reg[12]_i_1_n_0 ;
  wire \i_reg[12]_i_1_n_1 ;
  wire \i_reg[12]_i_1_n_2 ;
  wire \i_reg[12]_i_1_n_3 ;
  wire \i_reg[12]_i_1_n_4 ;
  wire \i_reg[12]_i_1_n_5 ;
  wire \i_reg[12]_i_1_n_6 ;
  wire \i_reg[12]_i_1_n_7 ;
  wire \i_reg[16]_i_1_n_0 ;
  wire \i_reg[16]_i_1_n_1 ;
  wire \i_reg[16]_i_1_n_2 ;
  wire \i_reg[16]_i_1_n_3 ;
  wire \i_reg[16]_i_1_n_4 ;
  wire \i_reg[16]_i_1_n_5 ;
  wire \i_reg[16]_i_1_n_6 ;
  wire \i_reg[16]_i_1_n_7 ;
  wire \i_reg[20]_i_1_n_0 ;
  wire \i_reg[20]_i_1_n_1 ;
  wire \i_reg[20]_i_1_n_2 ;
  wire \i_reg[20]_i_1_n_3 ;
  wire \i_reg[20]_i_1_n_4 ;
  wire \i_reg[20]_i_1_n_5 ;
  wire \i_reg[20]_i_1_n_6 ;
  wire \i_reg[20]_i_1_n_7 ;
  wire \i_reg[24]_i_1_n_0 ;
  wire \i_reg[24]_i_1_n_1 ;
  wire \i_reg[24]_i_1_n_2 ;
  wire \i_reg[24]_i_1_n_3 ;
  wire \i_reg[24]_i_1_n_4 ;
  wire \i_reg[24]_i_1_n_5 ;
  wire \i_reg[24]_i_1_n_6 ;
  wire \i_reg[24]_i_1_n_7 ;
  wire \i_reg[28]_i_1_n_1 ;
  wire \i_reg[28]_i_1_n_2 ;
  wire \i_reg[28]_i_1_n_3 ;
  wire \i_reg[28]_i_1_n_4 ;
  wire \i_reg[28]_i_1_n_5 ;
  wire \i_reg[28]_i_1_n_6 ;
  wire \i_reg[28]_i_1_n_7 ;
  wire \i_reg[4]_i_1_n_0 ;
  wire \i_reg[4]_i_1_n_1 ;
  wire \i_reg[4]_i_1_n_2 ;
  wire \i_reg[4]_i_1_n_3 ;
  wire \i_reg[4]_i_1_n_4 ;
  wire \i_reg[4]_i_1_n_5 ;
  wire \i_reg[4]_i_1_n_6 ;
  wire \i_reg[4]_i_1_n_7 ;
  wire \i_reg[8]_i_1_n_0 ;
  wire \i_reg[8]_i_1_n_1 ;
  wire \i_reg[8]_i_1_n_2 ;
  wire \i_reg[8]_i_1_n_3 ;
  wire \i_reg[8]_i_1_n_4 ;
  wire \i_reg[8]_i_1_n_5 ;
  wire \i_reg[8]_i_1_n_6 ;
  wire \i_reg[8]_i_1_n_7 ;
  wire \i_reg_rep[0]__0_n_0 ;
  wire \i_reg_rep[0]__0_rep_n_0 ;
  wire \i_reg_rep[0]_rep_n_0 ;
  wire \i_reg_rep[1]__0_n_0 ;
  wire \i_reg_rep[1]__0_rep_n_0 ;
  wire \i_reg_rep[1]_rep_n_0 ;
  wire \i_reg_rep[2]__0_n_0 ;
  wire \i_reg_rep[2]__0_rep_n_0 ;
  wire \i_reg_rep[2]_rep_n_0 ;
  wire \i_reg_rep[3]__0_n_0 ;
  wire \i_reg_rep[3]__0_rep_n_0 ;
  wire \i_reg_rep[3]_rep_n_0 ;
  wire \i_reg_rep[4]__0_n_0 ;
  wire \i_reg_rep[4]__0_rep_n_0 ;
  wire \i_reg_rep[4]_i_1_n_0 ;
  wire \i_reg_rep[4]_i_1_n_1 ;
  wire \i_reg_rep[4]_i_1_n_2 ;
  wire \i_reg_rep[4]_i_1_n_3 ;
  wire \i_reg_rep[4]_rep_n_0 ;
  wire \i_reg_rep[5]__0_n_0 ;
  wire \i_reg_rep[5]__0_rep_n_0 ;
  wire \i_reg_rep[5]_rep_n_0 ;
  wire \i_reg_rep[6]__0_n_0 ;
  wire \i_reg_rep[7]__0_n_0 ;
  wire \i_reg_rep[8]__0_n_0 ;
  wire \i_reg_rep[8]_i_1_n_0 ;
  wire \i_reg_rep[8]_i_1_n_1 ;
  wire \i_reg_rep[8]_i_1_n_2 ;
  wire \i_reg_rep[8]_i_1_n_3 ;
  wire \i_reg_rep[9]__0_n_0 ;
  wire \i_reg_rep[9]_i_1_n_0 ;
  wire \i_reg_rep[9]_i_1_n_1 ;
  wire \i_reg_rep[9]_i_1_n_2 ;
  wire \i_reg_rep[9]_i_1_n_3 ;
  wire [31:10]p_0_in;
  wire p_0_in_0;
  wire [9:0]p_0_in__0;
  wire [14:0]p_0_out;
  wire [14:0]p_0_out__0;
  wire [14:0]p_1_in;
  wire pwm_a_n;
  wire pwm_a_n_i_1_n_0;
  wire pwm_a_p;
  wire pwm_a_p0_carry__0_i_1_n_0;
  wire pwm_a_p0_carry__0_i_2_n_0;
  wire pwm_a_p0_carry__0_i_3_n_0;
  wire pwm_a_p0_carry__0_i_4_n_0;
  wire pwm_a_p0_carry__0_i_5_n_0;
  wire pwm_a_p0_carry__0_i_6_n_0;
  wire pwm_a_p0_carry__0_i_7_n_0;
  wire pwm_a_p0_carry__0_i_8_n_0;
  wire pwm_a_p0_carry__0_n_0;
  wire pwm_a_p0_carry__0_n_1;
  wire pwm_a_p0_carry__0_n_2;
  wire pwm_a_p0_carry__0_n_3;
  wire pwm_a_p0_carry_i_1_n_0;
  wire pwm_a_p0_carry_i_2_n_0;
  wire pwm_a_p0_carry_i_3_n_0;
  wire pwm_a_p0_carry_i_4_n_0;
  wire pwm_a_p0_carry_i_5_n_0;
  wire pwm_a_p0_carry_i_6_n_0;
  wire pwm_a_p0_carry_i_7_n_0;
  wire pwm_a_p0_carry_i_8_n_0;
  wire pwm_a_p0_carry_n_0;
  wire pwm_a_p0_carry_n_1;
  wire pwm_a_p0_carry_n_2;
  wire pwm_a_p0_carry_n_3;
  wire pwm_a_p_i_1_n_0;
  wire pwm_b_n;
  wire pwm_b_n_i_1_n_0;
  wire pwm_b_p;
  wire pwm_b_p0_carry__0_n_0;
  wire pwm_b_p0_carry__0_n_1;
  wire pwm_b_p0_carry__0_n_2;
  wire pwm_b_p0_carry__0_n_3;
  wire pwm_b_p0_carry_i_1__0_n_0;
  wire pwm_b_p0_carry_i_1_n_0;
  wire pwm_b_p0_carry_i_2__0_n_0;
  wire pwm_b_p0_carry_i_2_n_0;
  wire pwm_b_p0_carry_i_3__0_n_0;
  wire pwm_b_p0_carry_i_3_n_0;
  wire pwm_b_p0_carry_i_4__0_n_0;
  wire pwm_b_p0_carry_i_4_n_0;
  wire pwm_b_p0_carry_i_5__0_n_0;
  wire pwm_b_p0_carry_i_5_n_0;
  wire pwm_b_p0_carry_i_6__0_n_0;
  wire pwm_b_p0_carry_i_6_n_0;
  wire pwm_b_p0_carry_i_7__0_n_0;
  wire pwm_b_p0_carry_i_7_n_0;
  wire pwm_b_p0_carry_i_8__0_n_0;
  wire pwm_b_p0_carry_i_8_n_0;
  wire pwm_b_p0_carry_n_0;
  wire pwm_b_p0_carry_n_1;
  wire pwm_b_p0_carry_n_2;
  wire pwm_b_p0_carry_n_3;
  wire pwm_b_p_i_1_n_0;
  wire [15:0]sine;
  wire \sine[12]_i_4_n_0 ;
  wire \sine[12]_i_5_n_0 ;
  wire \sine[12]_i_6_n_0 ;
  wire \sine[12]_i_7_n_0 ;
  wire \sine[13]_i_4_n_0 ;
  wire \sine[13]_i_5_n_0 ;
  wire \sine[13]_i_6_n_0 ;
  wire \sine[13]_i_7_n_0 ;
  wire \sine[14]_i_2_n_0 ;
  wire \sine[14]_i_3_n_0 ;
  wire [14:0]sine_abs;
  wire \sine_reg[0]_i_10_n_0 ;
  wire \sine_reg[0]_i_11_n_0 ;
  wire \sine_reg[0]_i_12_n_0 ;
  wire \sine_reg[0]_i_13_n_0 ;
  wire \sine_reg[0]_i_2_n_0 ;
  wire \sine_reg[0]_i_3_n_0 ;
  wire \sine_reg[0]_i_4_n_0 ;
  wire \sine_reg[0]_i_5_n_0 ;
  wire \sine_reg[0]_i_6_n_0 ;
  wire \sine_reg[0]_i_7_n_0 ;
  wire \sine_reg[0]_i_8_n_0 ;
  wire \sine_reg[0]_i_9_n_0 ;
  wire \sine_reg[10]_i_10_n_0 ;
  wire \sine_reg[10]_i_11_n_0 ;
  wire \sine_reg[10]_i_12_n_0 ;
  wire \sine_reg[10]_i_13_n_0 ;
  wire \sine_reg[10]_i_2_n_0 ;
  wire \sine_reg[10]_i_3_n_0 ;
  wire \sine_reg[10]_i_4_n_0 ;
  wire \sine_reg[10]_i_5_n_0 ;
  wire \sine_reg[10]_i_6_n_0 ;
  wire \sine_reg[10]_i_7_n_0 ;
  wire \sine_reg[10]_i_8_n_0 ;
  wire \sine_reg[10]_i_9_n_0 ;
  wire \sine_reg[11]_i_10_n_0 ;
  wire \sine_reg[11]_i_11_n_0 ;
  wire \sine_reg[11]_i_12_n_0 ;
  wire \sine_reg[11]_i_13_n_0 ;
  wire \sine_reg[11]_i_2_n_0 ;
  wire \sine_reg[11]_i_3_n_0 ;
  wire \sine_reg[11]_i_4_n_0 ;
  wire \sine_reg[11]_i_5_n_0 ;
  wire \sine_reg[11]_i_6_n_0 ;
  wire \sine_reg[11]_i_7_n_0 ;
  wire \sine_reg[11]_i_8_n_0 ;
  wire \sine_reg[11]_i_9_n_0 ;
  wire \sine_reg[12]_i_2_n_0 ;
  wire \sine_reg[12]_i_3_n_0 ;
  wire \sine_reg[13]_i_2_n_0 ;
  wire \sine_reg[13]_i_3_n_0 ;
  wire \sine_reg[1]_i_10_n_0 ;
  wire \sine_reg[1]_i_11_n_0 ;
  wire \sine_reg[1]_i_12_n_0 ;
  wire \sine_reg[1]_i_13_n_0 ;
  wire \sine_reg[1]_i_2_n_0 ;
  wire \sine_reg[1]_i_3_n_0 ;
  wire \sine_reg[1]_i_4_n_0 ;
  wire \sine_reg[1]_i_5_n_0 ;
  wire \sine_reg[1]_i_6_n_0 ;
  wire \sine_reg[1]_i_7_n_0 ;
  wire \sine_reg[1]_i_8_n_0 ;
  wire \sine_reg[1]_i_9_n_0 ;
  wire \sine_reg[2]_i_10_n_0 ;
  wire \sine_reg[2]_i_11_n_0 ;
  wire \sine_reg[2]_i_12_n_0 ;
  wire \sine_reg[2]_i_13_n_0 ;
  wire \sine_reg[2]_i_2_n_0 ;
  wire \sine_reg[2]_i_3_n_0 ;
  wire \sine_reg[2]_i_4_n_0 ;
  wire \sine_reg[2]_i_5_n_0 ;
  wire \sine_reg[2]_i_6_n_0 ;
  wire \sine_reg[2]_i_7_n_0 ;
  wire \sine_reg[2]_i_8_n_0 ;
  wire \sine_reg[2]_i_9_n_0 ;
  wire \sine_reg[3]_i_10_n_0 ;
  wire \sine_reg[3]_i_11_n_0 ;
  wire \sine_reg[3]_i_12_n_0 ;
  wire \sine_reg[3]_i_13_n_0 ;
  wire \sine_reg[3]_i_2_n_0 ;
  wire \sine_reg[3]_i_3_n_0 ;
  wire \sine_reg[3]_i_4_n_0 ;
  wire \sine_reg[3]_i_5_n_0 ;
  wire \sine_reg[3]_i_6_n_0 ;
  wire \sine_reg[3]_i_7_n_0 ;
  wire \sine_reg[3]_i_8_n_0 ;
  wire \sine_reg[3]_i_9_n_0 ;
  wire \sine_reg[4]_i_10_n_0 ;
  wire \sine_reg[4]_i_11_n_0 ;
  wire \sine_reg[4]_i_12_n_0 ;
  wire \sine_reg[4]_i_13_n_0 ;
  wire \sine_reg[4]_i_2_n_0 ;
  wire \sine_reg[4]_i_3_n_0 ;
  wire \sine_reg[4]_i_4_n_0 ;
  wire \sine_reg[4]_i_5_n_0 ;
  wire \sine_reg[4]_i_6_n_0 ;
  wire \sine_reg[4]_i_7_n_0 ;
  wire \sine_reg[4]_i_8_n_0 ;
  wire \sine_reg[4]_i_9_n_0 ;
  wire \sine_reg[5]_i_10_n_0 ;
  wire \sine_reg[5]_i_11_n_0 ;
  wire \sine_reg[5]_i_12_n_0 ;
  wire \sine_reg[5]_i_13_n_0 ;
  wire \sine_reg[5]_i_2_n_0 ;
  wire \sine_reg[5]_i_3_n_0 ;
  wire \sine_reg[5]_i_4_n_0 ;
  wire \sine_reg[5]_i_5_n_0 ;
  wire \sine_reg[5]_i_6_n_0 ;
  wire \sine_reg[5]_i_7_n_0 ;
  wire \sine_reg[5]_i_8_n_0 ;
  wire \sine_reg[5]_i_9_n_0 ;
  wire \sine_reg[6]_i_10_n_0 ;
  wire \sine_reg[6]_i_11_n_0 ;
  wire \sine_reg[6]_i_12_n_0 ;
  wire \sine_reg[6]_i_13_n_0 ;
  wire \sine_reg[6]_i_2_n_0 ;
  wire \sine_reg[6]_i_3_n_0 ;
  wire \sine_reg[6]_i_4_n_0 ;
  wire \sine_reg[6]_i_5_n_0 ;
  wire \sine_reg[6]_i_6_n_0 ;
  wire \sine_reg[6]_i_7_n_0 ;
  wire \sine_reg[6]_i_8_n_0 ;
  wire \sine_reg[6]_i_9_n_0 ;
  wire \sine_reg[7]_i_10_n_0 ;
  wire \sine_reg[7]_i_11_n_0 ;
  wire \sine_reg[7]_i_12_n_0 ;
  wire \sine_reg[7]_i_13_n_0 ;
  wire \sine_reg[7]_i_2_n_0 ;
  wire \sine_reg[7]_i_3_n_0 ;
  wire \sine_reg[7]_i_4_n_0 ;
  wire \sine_reg[7]_i_5_n_0 ;
  wire \sine_reg[7]_i_6_n_0 ;
  wire \sine_reg[7]_i_7_n_0 ;
  wire \sine_reg[7]_i_8_n_0 ;
  wire \sine_reg[7]_i_9_n_0 ;
  wire \sine_reg[8]_i_10_n_0 ;
  wire \sine_reg[8]_i_11_n_0 ;
  wire \sine_reg[8]_i_12_n_0 ;
  wire \sine_reg[8]_i_13_n_0 ;
  wire \sine_reg[8]_i_2_n_0 ;
  wire \sine_reg[8]_i_3_n_0 ;
  wire \sine_reg[8]_i_4_n_0 ;
  wire \sine_reg[8]_i_5_n_0 ;
  wire \sine_reg[8]_i_6_n_0 ;
  wire \sine_reg[8]_i_7_n_0 ;
  wire \sine_reg[8]_i_8_n_0 ;
  wire \sine_reg[8]_i_9_n_0 ;
  wire \sine_reg[9]_i_10_n_0 ;
  wire \sine_reg[9]_i_11_n_0 ;
  wire \sine_reg[9]_i_12_n_0 ;
  wire \sine_reg[9]_i_13_n_0 ;
  wire \sine_reg[9]_i_2_n_0 ;
  wire \sine_reg[9]_i_3_n_0 ;
  wire \sine_reg[9]_i_4_n_0 ;
  wire \sine_reg[9]_i_5_n_0 ;
  wire \sine_reg[9]_i_6_n_0 ;
  wire \sine_reg[9]_i_7_n_0 ;
  wire \sine_reg[9]_i_8_n_0 ;
  wire \sine_reg[9]_i_9_n_0 ;
  wire [11:0]step_type;
  wire [3:3]\NLW_counter_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:0]\NLW_i0_inferred__0/i__carry_O_UNCONNECTED ;
  wire [3:0]\NLW_i0_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [3:3]\NLW_i0_inferred__0/i__carry__1_CO_UNCONNECTED ;
  wire [3:0]\NLW_i0_inferred__0/i__carry__1_O_UNCONNECTED ;
  wire [3:2]NLW_i__carry__1_i_4_CO_UNCONNECTED;
  wire [3:3]NLW_i__carry__1_i_4_O_UNCONNECTED;
  wire [3:3]\NLW_i_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]NLW_pwm_a_p0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pwm_a_p0_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_pwm_b_p0_carry_O_UNCONNECTED;
  wire [3:0]NLW_pwm_b_p0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[0]_i_1 
       (.I0(\cos_reg[0]_i_2_n_0 ),
        .I1(\cos_reg[0]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[0]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[0]_i_5_n_0 ),
        .O(p_0_out__0[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[10]_i_1 
       (.I0(\cos_reg[10]_i_2_n_0 ),
        .I1(\cos_reg[10]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[10]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[10]_i_5_n_0 ),
        .O(p_0_out__0[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[11]_i_1 
       (.I0(\cos_reg[11]_i_2_n_0 ),
        .I1(\cos_reg[11]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[11]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[11]_i_5_n_0 ),
        .O(p_0_out__0[11]));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \cos[12]_i_4 
       (.I0(g3_b12_n_0),
        .I1(g2_b12__0_n_0),
        .I2(\i_reg_rep[7]__0_n_0 ),
        .I3(g1_b12__0_n_0),
        .I4(\i_reg_rep[6]__0_n_0 ),
        .O(\cos[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \cos[12]_i_5 
       (.I0(g6_b12__0_n_0),
        .I1(\i_reg_rep[7]__0_n_0 ),
        .I2(g5_b12__0_n_0),
        .I3(\i_reg_rep[6]__0_n_0 ),
        .I4(g4_b12_n_0),
        .O(\cos[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \cos[12]_i_6 
       (.I0(g11_b12_n_0),
        .I1(g10_b12__0_n_0),
        .I2(\i_reg_rep[7]__0_n_0 ),
        .I3(\i_reg_rep[6]__0_n_0 ),
        .I4(g9_b12__0_n_0),
        .O(\cos[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \cos[12]_i_7 
       (.I0(g14_b12__0_n_0),
        .I1(\i_reg_rep[7]__0_n_0 ),
        .I2(g13_b12__0_n_0),
        .I3(\i_reg_rep[6]__0_n_0 ),
        .I4(g12_b12_n_0),
        .O(\cos[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \cos[13]_i_4 
       (.I0(g3_b13_n_0),
        .I1(g2_b13__0_n_0),
        .I2(\i_reg_rep[7]__0_n_0 ),
        .I3(g1_b13__0_n_0),
        .I4(\i_reg_rep[6]__0_n_0 ),
        .O(\cos[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \cos[13]_i_5 
       (.I0(g6_b13__0_n_0),
        .I1(\i_reg_rep[7]__0_n_0 ),
        .I2(g5_b13__0_n_0),
        .I3(\i_reg_rep[6]__0_n_0 ),
        .I4(g4_b13_n_0),
        .O(\cos[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \cos[13]_i_6 
       (.I0(g13_b14_n_0),
        .I1(g10_b13__0_n_0),
        .I2(\i_reg_rep[7]__0_n_0 ),
        .I3(\i_reg_rep[6]__0_n_0 ),
        .I4(g9_b13__0_n_0),
        .O(\cos[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \cos[13]_i_7 
       (.I0(g14_b13__0_n_0),
        .I1(\i_reg_rep[7]__0_n_0 ),
        .I2(g13_b13__0_n_0),
        .I3(\i_reg_rep[6]__0_n_0 ),
        .I4(g10_b14_n_0),
        .O(\cos[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h0300BFBF)) 
    \cos[14]_i_2 
       (.I0(g5_b14_n_0),
        .I1(\i_reg_rep[8]__0_n_0 ),
        .I2(\i_reg_rep[6]__0_n_0 ),
        .I3(g2_b14_n_0),
        .I4(\i_reg_rep[7]__0_n_0 ),
        .O(\cos[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hF8F8F0C0)) 
    \cos[14]_i_3 
       (.I0(g13_b14_n_0),
        .I1(\i_reg_rep[8]__0_n_0 ),
        .I2(\i_reg_rep[7]__0_n_0 ),
        .I3(g10_b14_n_0),
        .I4(\i_reg_rep[6]__0_n_0 ),
        .O(\cos[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h9)) 
    \cos[15]_i_1 
       (.I0(\i_reg_rep[9]__0_n_0 ),
        .I1(\i_reg_rep[8]__0_n_0 ),
        .O(\cos[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[1]_i_1 
       (.I0(\cos_reg[1]_i_2_n_0 ),
        .I1(\cos_reg[1]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[1]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[1]_i_5_n_0 ),
        .O(p_0_out__0[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[2]_i_1 
       (.I0(\cos_reg[2]_i_2_n_0 ),
        .I1(\cos_reg[2]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[2]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[2]_i_5_n_0 ),
        .O(p_0_out__0[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[3]_i_1 
       (.I0(\cos_reg[3]_i_2_n_0 ),
        .I1(\cos_reg[3]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[3]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[3]_i_5_n_0 ),
        .O(p_0_out__0[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[4]_i_1 
       (.I0(\cos_reg[4]_i_2_n_0 ),
        .I1(\cos_reg[4]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[4]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[4]_i_5_n_0 ),
        .O(p_0_out__0[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[5]_i_1 
       (.I0(\cos_reg[5]_i_2_n_0 ),
        .I1(\cos_reg[5]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[5]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[5]_i_5_n_0 ),
        .O(p_0_out__0[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[6]_i_1 
       (.I0(\cos_reg[6]_i_2_n_0 ),
        .I1(\cos_reg[6]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[6]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[6]_i_5_n_0 ),
        .O(p_0_out__0[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[7]_i_1 
       (.I0(\cos_reg[7]_i_2_n_0 ),
        .I1(\cos_reg[7]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[7]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[7]_i_5_n_0 ),
        .O(p_0_out__0[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[8]_i_1 
       (.I0(\cos_reg[8]_i_2_n_0 ),
        .I1(\cos_reg[8]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[8]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[8]_i_5_n_0 ),
        .O(p_0_out__0[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \cos[9]_i_1 
       (.I0(\cos_reg[9]_i_2_n_0 ),
        .I1(\cos_reg[9]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[9]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[9]_i_5_n_0 ),
        .O(p_0_out__0[9]));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[0]_i_1 
       (.I0(\cos_reg[0]_i_2_n_0 ),
        .I1(\cos_reg[0]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[0]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[0]_i_5_n_0 ),
        .O(\cos_abs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[10]_i_1 
       (.I0(\cos_reg[10]_i_2_n_0 ),
        .I1(\cos_reg[10]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[10]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[10]_i_5_n_0 ),
        .O(\cos_abs[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[11]_i_1 
       (.I0(\cos_reg[11]_i_2_n_0 ),
        .I1(\cos_reg[11]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[11]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[11]_i_5_n_0 ),
        .O(\cos_abs[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cos_abs[12]_i_1 
       (.I0(p_0_out__0[12]),
        .I1(\i_reg_rep[9]__0_n_0 ),
        .I2(\i_reg_rep[8]__0_n_0 ),
        .O(\cos_abs[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cos_abs[13]_i_1 
       (.I0(p_0_out__0[13]),
        .I1(\i_reg_rep[9]__0_n_0 ),
        .I2(\i_reg_rep[8]__0_n_0 ),
        .O(\cos_abs[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \cos_abs[14]_i_1 
       (.I0(p_0_out__0[14]),
        .I1(\i_reg_rep[9]__0_n_0 ),
        .I2(\i_reg_rep[8]__0_n_0 ),
        .O(\cos_abs[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[1]_i_1 
       (.I0(\cos_reg[1]_i_2_n_0 ),
        .I1(\cos_reg[1]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[1]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[1]_i_5_n_0 ),
        .O(\cos_abs[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[2]_i_1 
       (.I0(\cos_reg[2]_i_2_n_0 ),
        .I1(\cos_reg[2]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[2]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[2]_i_5_n_0 ),
        .O(\cos_abs[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[3]_i_1 
       (.I0(\cos_reg[3]_i_2_n_0 ),
        .I1(\cos_reg[3]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[3]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[3]_i_5_n_0 ),
        .O(\cos_abs[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[4]_i_1 
       (.I0(\cos_reg[4]_i_2_n_0 ),
        .I1(\cos_reg[4]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[4]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[4]_i_5_n_0 ),
        .O(\cos_abs[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[5]_i_1 
       (.I0(\cos_reg[5]_i_2_n_0 ),
        .I1(\cos_reg[5]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[5]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[5]_i_5_n_0 ),
        .O(\cos_abs[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[6]_i_1 
       (.I0(\cos_reg[6]_i_2_n_0 ),
        .I1(\cos_reg[6]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[6]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[6]_i_5_n_0 ),
        .O(\cos_abs[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[7]_i_1 
       (.I0(\cos_reg[7]_i_2_n_0 ),
        .I1(\cos_reg[7]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[7]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[7]_i_5_n_0 ),
        .O(\cos_abs[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[8]_i_1 
       (.I0(\cos_reg[8]_i_2_n_0 ),
        .I1(\cos_reg[8]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[8]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[8]_i_5_n_0 ),
        .O(\cos_abs[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hA0AF3F3FA0AF3030)) 
    \cos_abs[9]_i_1 
       (.I0(\cos_reg[9]_i_2_n_0 ),
        .I1(\cos_reg[9]_i_3_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .I3(\cos_reg[9]_i_4_n_0 ),
        .I4(\i_reg_rep[8]__0_n_0 ),
        .I5(\cos_reg[9]_i_5_n_0 ),
        .O(\cos_abs[9]_i_1_n_0 ));
  FDRE \cos_abs_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[0]_i_1_n_0 ),
        .Q(cos_abs[0]),
        .R(1'b0));
  FDRE \cos_abs_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[10]_i_1_n_0 ),
        .Q(cos_abs[10]),
        .R(1'b0));
  FDRE \cos_abs_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[11]_i_1_n_0 ),
        .Q(cos_abs[11]),
        .R(1'b0));
  FDRE \cos_abs_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[12]_i_1_n_0 ),
        .Q(cos_abs[12]),
        .R(1'b0));
  FDRE \cos_abs_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[13]_i_1_n_0 ),
        .Q(cos_abs[13]),
        .R(1'b0));
  FDRE \cos_abs_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[14]_i_1_n_0 ),
        .Q(cos_abs[14]),
        .R(1'b0));
  FDRE \cos_abs_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[1]_i_1_n_0 ),
        .Q(cos_abs[1]),
        .R(1'b0));
  FDRE \cos_abs_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[2]_i_1_n_0 ),
        .Q(cos_abs[2]),
        .R(1'b0));
  FDRE \cos_abs_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[3]_i_1_n_0 ),
        .Q(cos_abs[3]),
        .R(1'b0));
  FDRE \cos_abs_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[4]_i_1_n_0 ),
        .Q(cos_abs[4]),
        .R(1'b0));
  FDRE \cos_abs_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[5]_i_1_n_0 ),
        .Q(cos_abs[5]),
        .R(1'b0));
  FDRE \cos_abs_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[6]_i_1_n_0 ),
        .Q(cos_abs[6]),
        .R(1'b0));
  FDRE \cos_abs_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[7]_i_1_n_0 ),
        .Q(cos_abs[7]),
        .R(1'b0));
  FDRE \cos_abs_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[8]_i_1_n_0 ),
        .Q(cos_abs[8]),
        .R(1'b0));
  FDRE \cos_abs_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos_abs[9]_i_1_n_0 ),
        .Q(cos_abs[9]),
        .R(1'b0));
  FDRE \cos_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[0]),
        .Q(cos[0]),
        .R(1'b0));
  MUXF7 \cos_reg[0]_i_10 
       (.I0(g4_b0__0_n_0),
        .I1(g5_b0__0_n_0),
        .O(\cos_reg[0]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[0]_i_11 
       (.I0(g6_b0__0_n_0),
        .I1(g7_b0__0_n_0),
        .O(\cos_reg[0]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[0]_i_12 
       (.I0(g0_b0__0_n_0),
        .I1(g1_b0__0_n_0),
        .O(\cos_reg[0]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[0]_i_13 
       (.I0(g2_b0__0_n_0),
        .I1(g3_b0__0_n_0),
        .O(\cos_reg[0]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[0]_i_2 
       (.I0(\cos_reg[0]_i_6_n_0 ),
        .I1(\cos_reg[0]_i_7_n_0 ),
        .O(\cos_reg[0]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[0]_i_3 
       (.I0(\cos_reg[0]_i_8_n_0 ),
        .I1(\cos_reg[0]_i_9_n_0 ),
        .O(\cos_reg[0]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[0]_i_4 
       (.I0(\cos_reg[0]_i_10_n_0 ),
        .I1(\cos_reg[0]_i_11_n_0 ),
        .O(\cos_reg[0]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[0]_i_5 
       (.I0(\cos_reg[0]_i_12_n_0 ),
        .I1(\cos_reg[0]_i_13_n_0 ),
        .O(\cos_reg[0]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[0]_i_6 
       (.I0(g12_b0__0_n_0),
        .I1(g13_b0__0_n_0),
        .O(\cos_reg[0]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[0]_i_7 
       (.I0(g14_b0__0_n_0),
        .I1(g15_b0__0_n_0),
        .O(\cos_reg[0]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[0]_i_8 
       (.I0(g8_b0__0_n_0),
        .I1(g9_b0__0_n_0),
        .O(\cos_reg[0]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[0]_i_9 
       (.I0(g10_b0__0_n_0),
        .I1(g11_b0__0_n_0),
        .O(\cos_reg[0]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[10]),
        .Q(cos[10]),
        .R(1'b0));
  MUXF7 \cos_reg[10]_i_10 
       (.I0(g4_b10__0_n_0),
        .I1(g5_b10__0_n_0),
        .O(\cos_reg[10]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[10]_i_11 
       (.I0(g6_b10__0_n_0),
        .I1(g7_b10__0_n_0),
        .O(\cos_reg[10]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[10]_i_12 
       (.I0(g0_b10__0_n_0),
        .I1(g1_b10__0_n_0),
        .O(\cos_reg[10]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[10]_i_13 
       (.I0(g2_b10__0_n_0),
        .I1(g3_b10__0_n_0),
        .O(\cos_reg[10]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[10]_i_2 
       (.I0(\cos_reg[10]_i_6_n_0 ),
        .I1(\cos_reg[10]_i_7_n_0 ),
        .O(\cos_reg[10]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[10]_i_3 
       (.I0(\cos_reg[10]_i_8_n_0 ),
        .I1(\cos_reg[10]_i_9_n_0 ),
        .O(\cos_reg[10]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[10]_i_4 
       (.I0(\cos_reg[10]_i_10_n_0 ),
        .I1(\cos_reg[10]_i_11_n_0 ),
        .O(\cos_reg[10]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[10]_i_5 
       (.I0(\cos_reg[10]_i_12_n_0 ),
        .I1(\cos_reg[10]_i_13_n_0 ),
        .O(\cos_reg[10]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[10]_i_6 
       (.I0(g12_b10__0_n_0),
        .I1(g13_b10__0_n_0),
        .O(\cos_reg[10]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[10]_i_7 
       (.I0(g14_b10__0_n_0),
        .I1(g15_b10__0_n_0),
        .O(\cos_reg[10]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[10]_i_8 
       (.I0(g8_b10__0_n_0),
        .I1(g9_b10__0_n_0),
        .O(\cos_reg[10]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[10]_i_9 
       (.I0(g10_b10__0_n_0),
        .I1(g11_b10__0_n_0),
        .O(\cos_reg[10]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[11]),
        .Q(cos[11]),
        .R(1'b0));
  MUXF7 \cos_reg[11]_i_10 
       (.I0(g4_b11__0_n_0),
        .I1(g5_b11__0_n_0),
        .O(\cos_reg[11]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[11]_i_11 
       (.I0(g6_b11__0_n_0),
        .I1(g7_b11__0_n_0),
        .O(\cos_reg[11]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[11]_i_12 
       (.I0(g0_b11__0_n_0),
        .I1(g1_b11__0_n_0),
        .O(\cos_reg[11]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[11]_i_13 
       (.I0(g2_b11__0_n_0),
        .I1(g3_b11__0_n_0),
        .O(\cos_reg[11]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[11]_i_2 
       (.I0(\cos_reg[11]_i_6_n_0 ),
        .I1(\cos_reg[11]_i_7_n_0 ),
        .O(\cos_reg[11]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[11]_i_3 
       (.I0(\cos_reg[11]_i_8_n_0 ),
        .I1(\cos_reg[11]_i_9_n_0 ),
        .O(\cos_reg[11]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[11]_i_4 
       (.I0(\cos_reg[11]_i_10_n_0 ),
        .I1(\cos_reg[11]_i_11_n_0 ),
        .O(\cos_reg[11]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[11]_i_5 
       (.I0(\cos_reg[11]_i_12_n_0 ),
        .I1(\cos_reg[11]_i_13_n_0 ),
        .O(\cos_reg[11]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[11]_i_6 
       (.I0(g12_b11__0_n_0),
        .I1(g13_b11__0_n_0),
        .O(\cos_reg[11]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[11]_i_7 
       (.I0(g14_b11__0_n_0),
        .I1(g15_b11__0_n_0),
        .O(\cos_reg[11]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[11]_i_8 
       (.I0(g8_b11__0_n_0),
        .I1(g9_b11__0_n_0),
        .O(\cos_reg[11]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[11]_i_9 
       (.I0(g10_b11__0_n_0),
        .I1(g11_b11__0_n_0),
        .O(\cos_reg[11]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[12]),
        .Q(cos[12]),
        .R(1'b0));
  MUXF8 \cos_reg[12]_i_1 
       (.I0(\cos_reg[12]_i_2_n_0 ),
        .I1(\cos_reg[12]_i_3_n_0 ),
        .O(p_0_out__0[12]),
        .S(\i_reg_rep[9]__0_n_0 ));
  MUXF7 \cos_reg[12]_i_2 
       (.I0(\cos[12]_i_4_n_0 ),
        .I1(\cos[12]_i_5_n_0 ),
        .O(\cos_reg[12]_i_2_n_0 ),
        .S(\i_reg_rep[8]__0_n_0 ));
  MUXF7 \cos_reg[12]_i_3 
       (.I0(\cos[12]_i_6_n_0 ),
        .I1(\cos[12]_i_7_n_0 ),
        .O(\cos_reg[12]_i_3_n_0 ),
        .S(\i_reg_rep[8]__0_n_0 ));
  FDRE \cos_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[13]),
        .Q(cos[13]),
        .R(1'b0));
  MUXF8 \cos_reg[13]_i_1 
       (.I0(\cos_reg[13]_i_2_n_0 ),
        .I1(\cos_reg[13]_i_3_n_0 ),
        .O(p_0_out__0[13]),
        .S(\i_reg_rep[9]__0_n_0 ));
  MUXF7 \cos_reg[13]_i_2 
       (.I0(\cos[13]_i_4_n_0 ),
        .I1(\cos[13]_i_5_n_0 ),
        .O(\cos_reg[13]_i_2_n_0 ),
        .S(\i_reg_rep[8]__0_n_0 ));
  MUXF7 \cos_reg[13]_i_3 
       (.I0(\cos[13]_i_6_n_0 ),
        .I1(\cos[13]_i_7_n_0 ),
        .O(\cos_reg[13]_i_3_n_0 ),
        .S(\i_reg_rep[8]__0_n_0 ));
  FDRE \cos_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[14]),
        .Q(cos[14]),
        .R(1'b0));
  MUXF7 \cos_reg[14]_i_1 
       (.I0(\cos[14]_i_2_n_0 ),
        .I1(\cos[14]_i_3_n_0 ),
        .O(p_0_out__0[14]),
        .S(\i_reg_rep[9]__0_n_0 ));
  FDRE \cos_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\cos[15]_i_1_n_0 ),
        .Q(cos[15]),
        .R(1'b0));
  FDRE \cos_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[1]),
        .Q(cos[1]),
        .R(1'b0));
  MUXF7 \cos_reg[1]_i_10 
       (.I0(g4_b1__0_n_0),
        .I1(g5_b1__0_n_0),
        .O(\cos_reg[1]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[1]_i_11 
       (.I0(g6_b1__0_n_0),
        .I1(g7_b1__0_n_0),
        .O(\cos_reg[1]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[1]_i_12 
       (.I0(g0_b1__0_n_0),
        .I1(g1_b1__0_n_0),
        .O(\cos_reg[1]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[1]_i_13 
       (.I0(g2_b1__0_n_0),
        .I1(g3_b1__0_n_0),
        .O(\cos_reg[1]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[1]_i_2 
       (.I0(\cos_reg[1]_i_6_n_0 ),
        .I1(\cos_reg[1]_i_7_n_0 ),
        .O(\cos_reg[1]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[1]_i_3 
       (.I0(\cos_reg[1]_i_8_n_0 ),
        .I1(\cos_reg[1]_i_9_n_0 ),
        .O(\cos_reg[1]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[1]_i_4 
       (.I0(\cos_reg[1]_i_10_n_0 ),
        .I1(\cos_reg[1]_i_11_n_0 ),
        .O(\cos_reg[1]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[1]_i_5 
       (.I0(\cos_reg[1]_i_12_n_0 ),
        .I1(\cos_reg[1]_i_13_n_0 ),
        .O(\cos_reg[1]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[1]_i_6 
       (.I0(g12_b1__0_n_0),
        .I1(g13_b1__0_n_0),
        .O(\cos_reg[1]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[1]_i_7 
       (.I0(g14_b1__0_n_0),
        .I1(g15_b1__0_n_0),
        .O(\cos_reg[1]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[1]_i_8 
       (.I0(g8_b1__0_n_0),
        .I1(g9_b1__0_n_0),
        .O(\cos_reg[1]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[1]_i_9 
       (.I0(g10_b1__0_n_0),
        .I1(g11_b1__0_n_0),
        .O(\cos_reg[1]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[2]),
        .Q(cos[2]),
        .R(1'b0));
  MUXF7 \cos_reg[2]_i_10 
       (.I0(g4_b2__0_n_0),
        .I1(g5_b2__0_n_0),
        .O(\cos_reg[2]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[2]_i_11 
       (.I0(g6_b2__0_n_0),
        .I1(g7_b2__0_n_0),
        .O(\cos_reg[2]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[2]_i_12 
       (.I0(g0_b2__0_n_0),
        .I1(g1_b2__0_n_0),
        .O(\cos_reg[2]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[2]_i_13 
       (.I0(g2_b2__0_n_0),
        .I1(g3_b2__0_n_0),
        .O(\cos_reg[2]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[2]_i_2 
       (.I0(\cos_reg[2]_i_6_n_0 ),
        .I1(\cos_reg[2]_i_7_n_0 ),
        .O(\cos_reg[2]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[2]_i_3 
       (.I0(\cos_reg[2]_i_8_n_0 ),
        .I1(\cos_reg[2]_i_9_n_0 ),
        .O(\cos_reg[2]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[2]_i_4 
       (.I0(\cos_reg[2]_i_10_n_0 ),
        .I1(\cos_reg[2]_i_11_n_0 ),
        .O(\cos_reg[2]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[2]_i_5 
       (.I0(\cos_reg[2]_i_12_n_0 ),
        .I1(\cos_reg[2]_i_13_n_0 ),
        .O(\cos_reg[2]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[2]_i_6 
       (.I0(g12_b2__0_n_0),
        .I1(g13_b2__0_n_0),
        .O(\cos_reg[2]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[2]_i_7 
       (.I0(g14_b2__0_n_0),
        .I1(g15_b2__0_n_0),
        .O(\cos_reg[2]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[2]_i_8 
       (.I0(g8_b2__0_n_0),
        .I1(g9_b2__0_n_0),
        .O(\cos_reg[2]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[2]_i_9 
       (.I0(g10_b2__0_n_0),
        .I1(g11_b2__0_n_0),
        .O(\cos_reg[2]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[3]),
        .Q(cos[3]),
        .R(1'b0));
  MUXF7 \cos_reg[3]_i_10 
       (.I0(g4_b3__0_n_0),
        .I1(g5_b3__0_n_0),
        .O(\cos_reg[3]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[3]_i_11 
       (.I0(g6_b3__0_n_0),
        .I1(g7_b3__0_n_0),
        .O(\cos_reg[3]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[3]_i_12 
       (.I0(g0_b3__0_n_0),
        .I1(g1_b3__0_n_0),
        .O(\cos_reg[3]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[3]_i_13 
       (.I0(g2_b3__0_n_0),
        .I1(g3_b3__0_n_0),
        .O(\cos_reg[3]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[3]_i_2 
       (.I0(\cos_reg[3]_i_6_n_0 ),
        .I1(\cos_reg[3]_i_7_n_0 ),
        .O(\cos_reg[3]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[3]_i_3 
       (.I0(\cos_reg[3]_i_8_n_0 ),
        .I1(\cos_reg[3]_i_9_n_0 ),
        .O(\cos_reg[3]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[3]_i_4 
       (.I0(\cos_reg[3]_i_10_n_0 ),
        .I1(\cos_reg[3]_i_11_n_0 ),
        .O(\cos_reg[3]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[3]_i_5 
       (.I0(\cos_reg[3]_i_12_n_0 ),
        .I1(\cos_reg[3]_i_13_n_0 ),
        .O(\cos_reg[3]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[3]_i_6 
       (.I0(g12_b3__0_n_0),
        .I1(g13_b3__0_n_0),
        .O(\cos_reg[3]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[3]_i_7 
       (.I0(g14_b3__0_n_0),
        .I1(g15_b3__0_n_0),
        .O(\cos_reg[3]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[3]_i_8 
       (.I0(g8_b3__0_n_0),
        .I1(g9_b3__0_n_0),
        .O(\cos_reg[3]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[3]_i_9 
       (.I0(g10_b3__0_n_0),
        .I1(g11_b3__0_n_0),
        .O(\cos_reg[3]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[4]),
        .Q(cos[4]),
        .R(1'b0));
  MUXF7 \cos_reg[4]_i_10 
       (.I0(g4_b4__0_n_0),
        .I1(g5_b4__0_n_0),
        .O(\cos_reg[4]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[4]_i_11 
       (.I0(g6_b4__0_n_0),
        .I1(g7_b4__0_n_0),
        .O(\cos_reg[4]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[4]_i_12 
       (.I0(g0_b4__0_n_0),
        .I1(g1_b4__0_n_0),
        .O(\cos_reg[4]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[4]_i_13 
       (.I0(g2_b4__0_n_0),
        .I1(g3_b4__0_n_0),
        .O(\cos_reg[4]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[4]_i_2 
       (.I0(\cos_reg[4]_i_6_n_0 ),
        .I1(\cos_reg[4]_i_7_n_0 ),
        .O(\cos_reg[4]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[4]_i_3 
       (.I0(\cos_reg[4]_i_8_n_0 ),
        .I1(\cos_reg[4]_i_9_n_0 ),
        .O(\cos_reg[4]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[4]_i_4 
       (.I0(\cos_reg[4]_i_10_n_0 ),
        .I1(\cos_reg[4]_i_11_n_0 ),
        .O(\cos_reg[4]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[4]_i_5 
       (.I0(\cos_reg[4]_i_12_n_0 ),
        .I1(\cos_reg[4]_i_13_n_0 ),
        .O(\cos_reg[4]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[4]_i_6 
       (.I0(g12_b4__0_n_0),
        .I1(g13_b4__0_n_0),
        .O(\cos_reg[4]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[4]_i_7 
       (.I0(g14_b4__0_n_0),
        .I1(g15_b4__0_n_0),
        .O(\cos_reg[4]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[4]_i_8 
       (.I0(g8_b4__0_n_0),
        .I1(g9_b4__0_n_0),
        .O(\cos_reg[4]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[4]_i_9 
       (.I0(g10_b4__0_n_0),
        .I1(g11_b4__0_n_0),
        .O(\cos_reg[4]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[5]),
        .Q(cos[5]),
        .R(1'b0));
  MUXF7 \cos_reg[5]_i_10 
       (.I0(g4_b5__0_n_0),
        .I1(g5_b5__0_n_0),
        .O(\cos_reg[5]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[5]_i_11 
       (.I0(g6_b5__0_n_0),
        .I1(g7_b5__0_n_0),
        .O(\cos_reg[5]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[5]_i_12 
       (.I0(g0_b5__0_n_0),
        .I1(g1_b5__0_n_0),
        .O(\cos_reg[5]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[5]_i_13 
       (.I0(g2_b5__0_n_0),
        .I1(g3_b5__0_n_0),
        .O(\cos_reg[5]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[5]_i_2 
       (.I0(\cos_reg[5]_i_6_n_0 ),
        .I1(\cos_reg[5]_i_7_n_0 ),
        .O(\cos_reg[5]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[5]_i_3 
       (.I0(\cos_reg[5]_i_8_n_0 ),
        .I1(\cos_reg[5]_i_9_n_0 ),
        .O(\cos_reg[5]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[5]_i_4 
       (.I0(\cos_reg[5]_i_10_n_0 ),
        .I1(\cos_reg[5]_i_11_n_0 ),
        .O(\cos_reg[5]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[5]_i_5 
       (.I0(\cos_reg[5]_i_12_n_0 ),
        .I1(\cos_reg[5]_i_13_n_0 ),
        .O(\cos_reg[5]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[5]_i_6 
       (.I0(g12_b5__0_n_0),
        .I1(g13_b5__0_n_0),
        .O(\cos_reg[5]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[5]_i_7 
       (.I0(g14_b5__0_n_0),
        .I1(g15_b5__0_n_0),
        .O(\cos_reg[5]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[5]_i_8 
       (.I0(g8_b5__0_n_0),
        .I1(g9_b5__0_n_0),
        .O(\cos_reg[5]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[5]_i_9 
       (.I0(g10_b5__0_n_0),
        .I1(g11_b5__0_n_0),
        .O(\cos_reg[5]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[6]),
        .Q(cos[6]),
        .R(1'b0));
  MUXF7 \cos_reg[6]_i_10 
       (.I0(g4_b6__0_n_0),
        .I1(g5_b6__0_n_0),
        .O(\cos_reg[6]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[6]_i_11 
       (.I0(g6_b6__0_n_0),
        .I1(g7_b6__0_n_0),
        .O(\cos_reg[6]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[6]_i_12 
       (.I0(g0_b6__0_n_0),
        .I1(g1_b6__0_n_0),
        .O(\cos_reg[6]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[6]_i_13 
       (.I0(g2_b6__0_n_0),
        .I1(g3_b6__0_n_0),
        .O(\cos_reg[6]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[6]_i_2 
       (.I0(\cos_reg[6]_i_6_n_0 ),
        .I1(\cos_reg[6]_i_7_n_0 ),
        .O(\cos_reg[6]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[6]_i_3 
       (.I0(\cos_reg[6]_i_8_n_0 ),
        .I1(\cos_reg[6]_i_9_n_0 ),
        .O(\cos_reg[6]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[6]_i_4 
       (.I0(\cos_reg[6]_i_10_n_0 ),
        .I1(\cos_reg[6]_i_11_n_0 ),
        .O(\cos_reg[6]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[6]_i_5 
       (.I0(\cos_reg[6]_i_12_n_0 ),
        .I1(\cos_reg[6]_i_13_n_0 ),
        .O(\cos_reg[6]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[6]_i_6 
       (.I0(g12_b6__0_n_0),
        .I1(g13_b6__0_n_0),
        .O(\cos_reg[6]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[6]_i_7 
       (.I0(g14_b6__0_n_0),
        .I1(g15_b6__0_n_0),
        .O(\cos_reg[6]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[6]_i_8 
       (.I0(g8_b6__0_n_0),
        .I1(g9_b6__0_n_0),
        .O(\cos_reg[6]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[6]_i_9 
       (.I0(g10_b6__0_n_0),
        .I1(g11_b6__0_n_0),
        .O(\cos_reg[6]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[7]),
        .Q(cos[7]),
        .R(1'b0));
  MUXF7 \cos_reg[7]_i_10 
       (.I0(g4_b7__0_n_0),
        .I1(g5_b7__0_n_0),
        .O(\cos_reg[7]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[7]_i_11 
       (.I0(g6_b7__0_n_0),
        .I1(g7_b7__0_n_0),
        .O(\cos_reg[7]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[7]_i_12 
       (.I0(g0_b7__0_n_0),
        .I1(g1_b7__0_n_0),
        .O(\cos_reg[7]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[7]_i_13 
       (.I0(g2_b7__0_n_0),
        .I1(g3_b7__0_n_0),
        .O(\cos_reg[7]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[7]_i_2 
       (.I0(\cos_reg[7]_i_6_n_0 ),
        .I1(\cos_reg[7]_i_7_n_0 ),
        .O(\cos_reg[7]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[7]_i_3 
       (.I0(\cos_reg[7]_i_8_n_0 ),
        .I1(\cos_reg[7]_i_9_n_0 ),
        .O(\cos_reg[7]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[7]_i_4 
       (.I0(\cos_reg[7]_i_10_n_0 ),
        .I1(\cos_reg[7]_i_11_n_0 ),
        .O(\cos_reg[7]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[7]_i_5 
       (.I0(\cos_reg[7]_i_12_n_0 ),
        .I1(\cos_reg[7]_i_13_n_0 ),
        .O(\cos_reg[7]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[7]_i_6 
       (.I0(g12_b7__0_n_0),
        .I1(g13_b7__0_n_0),
        .O(\cos_reg[7]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[7]_i_7 
       (.I0(g14_b7__0_n_0),
        .I1(g15_b7__0_n_0),
        .O(\cos_reg[7]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[7]_i_8 
       (.I0(g8_b7__0_n_0),
        .I1(g9_b7__0_n_0),
        .O(\cos_reg[7]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[7]_i_9 
       (.I0(g10_b7__0_n_0),
        .I1(g11_b7__0_n_0),
        .O(\cos_reg[7]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[8]),
        .Q(cos[8]),
        .R(1'b0));
  MUXF7 \cos_reg[8]_i_10 
       (.I0(g4_b8__0_n_0),
        .I1(g5_b8__0_n_0),
        .O(\cos_reg[8]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[8]_i_11 
       (.I0(g6_b8__0_n_0),
        .I1(g7_b8__0_n_0),
        .O(\cos_reg[8]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[8]_i_12 
       (.I0(g0_b8__0_n_0),
        .I1(g1_b8__0_n_0),
        .O(\cos_reg[8]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[8]_i_13 
       (.I0(g2_b8__0_n_0),
        .I1(g3_b8__0_n_0),
        .O(\cos_reg[8]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[8]_i_2 
       (.I0(\cos_reg[8]_i_6_n_0 ),
        .I1(\cos_reg[8]_i_7_n_0 ),
        .O(\cos_reg[8]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[8]_i_3 
       (.I0(\cos_reg[8]_i_8_n_0 ),
        .I1(\cos_reg[8]_i_9_n_0 ),
        .O(\cos_reg[8]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[8]_i_4 
       (.I0(\cos_reg[8]_i_10_n_0 ),
        .I1(\cos_reg[8]_i_11_n_0 ),
        .O(\cos_reg[8]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[8]_i_5 
       (.I0(\cos_reg[8]_i_12_n_0 ),
        .I1(\cos_reg[8]_i_13_n_0 ),
        .O(\cos_reg[8]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[8]_i_6 
       (.I0(g12_b8__0_n_0),
        .I1(g13_b8__0_n_0),
        .O(\cos_reg[8]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[8]_i_7 
       (.I0(g14_b8__0_n_0),
        .I1(g15_b8__0_n_0),
        .O(\cos_reg[8]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[8]_i_8 
       (.I0(g8_b8__0_n_0),
        .I1(g9_b8__0_n_0),
        .O(\cos_reg[8]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[8]_i_9 
       (.I0(g10_b8__0_n_0),
        .I1(g11_b8__0_n_0),
        .O(\cos_reg[8]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  FDRE \cos_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out__0[9]),
        .Q(cos[9]),
        .R(1'b0));
  MUXF7 \cos_reg[9]_i_10 
       (.I0(g4_b9__0_n_0),
        .I1(g5_b9__0_n_0),
        .O(\cos_reg[9]_i_10_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[9]_i_11 
       (.I0(g6_b9__0_n_0),
        .I1(g7_b9__0_n_0),
        .O(\cos_reg[9]_i_11_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[9]_i_12 
       (.I0(g0_b9__0_n_0),
        .I1(g1_b9__0_n_0),
        .O(\cos_reg[9]_i_12_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[9]_i_13 
       (.I0(g2_b9__0_n_0),
        .I1(g3_b9__0_n_0),
        .O(\cos_reg[9]_i_13_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF8 \cos_reg[9]_i_2 
       (.I0(\cos_reg[9]_i_6_n_0 ),
        .I1(\cos_reg[9]_i_7_n_0 ),
        .O(\cos_reg[9]_i_2_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[9]_i_3 
       (.I0(\cos_reg[9]_i_8_n_0 ),
        .I1(\cos_reg[9]_i_9_n_0 ),
        .O(\cos_reg[9]_i_3_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[9]_i_4 
       (.I0(\cos_reg[9]_i_10_n_0 ),
        .I1(\cos_reg[9]_i_11_n_0 ),
        .O(\cos_reg[9]_i_4_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF8 \cos_reg[9]_i_5 
       (.I0(\cos_reg[9]_i_12_n_0 ),
        .I1(\cos_reg[9]_i_13_n_0 ),
        .O(\cos_reg[9]_i_5_n_0 ),
        .S(\i_reg_rep[7]__0_n_0 ));
  MUXF7 \cos_reg[9]_i_6 
       (.I0(g12_b9__0_n_0),
        .I1(g13_b9__0_n_0),
        .O(\cos_reg[9]_i_6_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[9]_i_7 
       (.I0(g14_b9__0_n_0),
        .I1(g15_b9__0_n_0),
        .O(\cos_reg[9]_i_7_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[9]_i_8 
       (.I0(g8_b9__0_n_0),
        .I1(g9_b9__0_n_0),
        .O(\cos_reg[9]_i_8_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  MUXF7 \cos_reg[9]_i_9 
       (.I0(g10_b9__0_n_0),
        .I1(g11_b9__0_n_0),
        .O(\cos_reg[9]_i_9_n_0 ),
        .S(\i_reg_rep[6]__0_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[11]_i_2 
       (.I0(step_type[11]),
        .I1(counter[11]),
        .O(\counter[11]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[11]_i_3 
       (.I0(step_type[10]),
        .I1(counter[10]),
        .O(\counter[11]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[11]_i_4 
       (.I0(step_type[9]),
        .I1(counter[9]),
        .O(\counter[11]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[11]_i_5 
       (.I0(step_type[8]),
        .I1(counter[8]),
        .O(\counter[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \counter[15]_i_1 
       (.I0(\counter[15]_i_3_n_0 ),
        .I1(counter[0]),
        .I2(counter[1]),
        .I3(counter[2]),
        .I4(\counter[15]_i_4_n_0 ),
        .I5(counter[15]),
        .O(clear));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[15]_i_3 
       (.I0(counter[5]),
        .I1(counter[6]),
        .I2(counter[3]),
        .I3(counter[4]),
        .I4(counter[8]),
        .I5(counter[7]),
        .O(\counter[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \counter[15]_i_4 
       (.I0(counter[11]),
        .I1(counter[12]),
        .I2(counter[9]),
        .I3(counter[10]),
        .I4(counter[14]),
        .I5(counter[13]),
        .O(\counter[15]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[3]_i_2 
       (.I0(step_type[3]),
        .I1(counter[3]),
        .O(\counter[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[3]_i_3 
       (.I0(step_type[2]),
        .I1(counter[2]),
        .O(\counter[3]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[3]_i_4 
       (.I0(step_type[1]),
        .I1(counter[1]),
        .O(\counter[3]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[3]_i_5 
       (.I0(step_type[0]),
        .I1(counter[0]),
        .O(\counter[3]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[7]_i_2 
       (.I0(step_type[7]),
        .I1(counter[7]),
        .O(\counter[7]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[7]_i_3 
       (.I0(step_type[6]),
        .I1(counter[6]),
        .O(\counter[7]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[7]_i_4 
       (.I0(step_type[5]),
        .I1(counter[5]),
        .O(\counter[7]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \counter[7]_i_5 
       (.I0(step_type[4]),
        .I1(counter[4]),
        .O(\counter[7]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[3]_i_1_n_7 ),
        .Q(counter[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[11]_i_1_n_5 ),
        .Q(counter[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[11]_i_1_n_4 ),
        .Q(counter[11]),
        .R(clear));
  CARRY4 \counter_reg[11]_i_1 
       (.CI(\counter_reg[7]_i_1_n_0 ),
        .CO({\counter_reg[11]_i_1_n_0 ,\counter_reg[11]_i_1_n_1 ,\counter_reg[11]_i_1_n_2 ,\counter_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(step_type[11:8]),
        .O({\counter_reg[11]_i_1_n_4 ,\counter_reg[11]_i_1_n_5 ,\counter_reg[11]_i_1_n_6 ,\counter_reg[11]_i_1_n_7 }),
        .S({\counter[11]_i_2_n_0 ,\counter[11]_i_3_n_0 ,\counter[11]_i_4_n_0 ,\counter[11]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_2_n_7 ),
        .Q(counter[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_2_n_6 ),
        .Q(counter[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_2_n_5 ),
        .Q(counter[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[15]_i_2_n_4 ),
        .Q(counter[15]),
        .R(clear));
  CARRY4 \counter_reg[15]_i_2 
       (.CI(\counter_reg[11]_i_1_n_0 ),
        .CO({\NLW_counter_reg[15]_i_2_CO_UNCONNECTED [3],\counter_reg[15]_i_2_n_1 ,\counter_reg[15]_i_2_n_2 ,\counter_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\counter_reg[15]_i_2_n_4 ,\counter_reg[15]_i_2_n_5 ,\counter_reg[15]_i_2_n_6 ,\counter_reg[15]_i_2_n_7 }),
        .S(counter[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[3]_i_1_n_6 ),
        .Q(counter[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[3]_i_1_n_5 ),
        .Q(counter[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[3]_i_1_n_4 ),
        .Q(counter[3]),
        .R(clear));
  CARRY4 \counter_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\counter_reg[3]_i_1_n_0 ,\counter_reg[3]_i_1_n_1 ,\counter_reg[3]_i_1_n_2 ,\counter_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(step_type[3:0]),
        .O({\counter_reg[3]_i_1_n_4 ,\counter_reg[3]_i_1_n_5 ,\counter_reg[3]_i_1_n_6 ,\counter_reg[3]_i_1_n_7 }),
        .S({\counter[3]_i_2_n_0 ,\counter[3]_i_3_n_0 ,\counter[3]_i_4_n_0 ,\counter[3]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_7 ),
        .Q(counter[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_6 ),
        .Q(counter[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_5 ),
        .Q(counter[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[7]_i_1_n_4 ),
        .Q(counter[7]),
        .R(clear));
  CARRY4 \counter_reg[7]_i_1 
       (.CI(\counter_reg[3]_i_1_n_0 ),
        .CO({\counter_reg[7]_i_1_n_0 ,\counter_reg[7]_i_1_n_1 ,\counter_reg[7]_i_1_n_2 ,\counter_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI(step_type[7:4]),
        .O({\counter_reg[7]_i_1_n_4 ,\counter_reg[7]_i_1_n_5 ,\counter_reg[7]_i_1_n_6 ,\counter_reg[7]_i_1_n_7 }),
        .S({\counter[7]_i_2_n_0 ,\counter[7]_i_3_n_0 ,\counter[7]_i_4_n_0 ,\counter[7]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[11]_i_1_n_7 ),
        .Q(counter[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\counter_reg[11]_i_1_n_6 ),
        .Q(counter[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'hBDE67D0CFA8E254A)) 
    g0_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g0_b0_n_0));
  LUT6 #(
    .INIT(64'hD94F83E4D886A9C1)) 
    g0_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g0_b0__0_n_0));
  LUT6 #(
    .INIT(64'h7EA054F1567FC66C)) 
    g0_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g0_b1_n_0));
  LUT6 #(
    .INIT(64'h7C0F83F07C1F07C0)) 
    g0_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g0_b10_n_0));
  LUT6 #(
    .INIT(64'hFC0001FFFFFFFFFF)) 
    g0_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g0_b10__0_n_0));
  LUT6 #(
    .INIT(64'h7FF003FF801FF800)) 
    g0_b11
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g0_b11_n_0));
  LUT5 #(
    .INIT(32'h1FFFFFFF)) 
    g0_b11__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g0_b11__0_n_0));
  LUT6 #(
    .INIT(64'h800003FFFFE00000)) 
    g0_b12
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g0_b12_n_0));
  LUT6 #(
    .INIT(64'h03B76DDB565AF6E3)) 
    g0_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g0_b1__0_n_0));
  LUT6 #(
    .INIT(64'hAA6066AB31FFF870)) 
    g0_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g0_b2_n_0));
  LUT6 #(
    .INIT(64'hBD7AF4178F4385F7)) 
    g0_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g0_b2__0_n_0));
  LUT6 #(
    .INIT(64'h99E078CDA555552A)) 
    g0_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g0_b3_n_0));
  LUT6 #(
    .INIT(64'h2B0353E5406986AF)) 
    g0_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g0_b3__0_n_0));
  LUT6 #(
    .INIT(64'h781F80F1C666664C)) 
    g0_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g0_b4_n_0));
  LUT6 #(
    .INIT(64'h98FC65533F8D2D9F)) 
    g0_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g0_b4__0_n_0));
  LUT6 #(
    .INIT(64'h07FFFF01F8787870)) 
    g0_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g0_b5_n_0));
  LUT6 #(
    .INIT(64'h87FF8665AAA49C7F)) 
    g0_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g0_b5__0_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAB552AD52A)) 
    g0_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g0_b6_n_0));
  LUT6 #(
    .INIT(64'hD55552D3666383FF)) 
    g0_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g0_b6__0_n_0));
  LUT6 #(
    .INIT(64'h666666673319CCE6)) 
    g0_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g0_b7_n_0));
  LUT6 #(
    .INIT(64'h4CCCCE30E1E07FFF)) 
    g0_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g0_b7__0_n_0));
  LUT6 #(
    .INIT(64'h4B4B4B4A5A5296B4)) 
    g0_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g0_b8_n_0));
  LUT6 #(
    .INIT(64'h3C3C3E0FE01FFFFF)) 
    g0_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g0_b8__0_n_0));
  LUT6 #(
    .INIT(64'h738C738C639CE738)) 
    g0_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g0_b9_n_0));
  LUT6 #(
    .INIT(64'hFC03FE001FFFFFFF)) 
    g0_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g0_b9__0_n_0));
  LUT6 #(
    .INIT(64'h2E6033D7E1E80B3F)) 
    g10_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g10_b0_n_0));
  LUT6 #(
    .INIT(64'h7DC3B6E3810D8898)) 
    g10_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g10_b0__0_n_0));
  LUT6 #(
    .INIT(64'hA6911E223DCA29EE)) 
    g10_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g10_b1_n_0));
  LUT6 #(
    .INIT(64'h01FFE00FFC03FC07)) 
    g10_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g10_b10_n_0));
  LUT6 #(
    .INIT(64'hF83F03F03F03F80F)) 
    g10_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g10_b10__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFE00003FFFC00)) 
    g10_b11
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g10_b11_n_0));
  LUT5 #(
    .INIT(32'hF81F81FC)) 
    g10_b11__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g10_b11__0_n_0));
  LUT6 #(
    .INIT(64'h00001FFFFFFFFC00)) 
    g10_b12
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g10_b12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h001FFE00)) 
    g10_b12__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g10_b12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h0000001F)) 
    g10_b13
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g10_b13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h001FFFFF)) 
    g10_b13__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g10_b13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFE00000)) 
    g10_b14
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g10_b14_n_0));
  LUT6 #(
    .INIT(64'h437ECCEBA079A90F)) 
    g10_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g10_b1__0_n_0));
  LUT6 #(
    .INIT(64'hDCF5F4141623E21B)) 
    g10_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g10_b2_n_0));
  LUT6 #(
    .INIT(64'h7F2B024C6A7B3750)) 
    g10_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g10_b2__0_n_0));
  LUT6 #(
    .INIT(64'h0259F2A7F2B3E6AC)) 
    g10_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g10_b3_n_0));
  LUT6 #(
    .INIT(64'hD5B3FE254C78959F)) 
    g10_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g10_b3__0_n_0));
  LUT6 #(
    .INIT(64'hAB61F192A4C3E19A)) 
    g10_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g10_b4_n_0));
  LUT6 #(
    .INIT(64'hCC96AB498F878CB5)) 
    g10_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g10_b4__0_n_0));
  LUT6 #(
    .INIT(64'h66D4A524C703E079)) 
    g10_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g10_b5_n_0));
  LUT6 #(
    .INIT(64'hC38E66DB5AAAD6D9)) 
    g10_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g10_b5__0_n_0));
  LUT6 #(
    .INIT(64'hB49939C707FC1FF8)) 
    g10_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g10_b6_n_0));
  LUT6 #(
    .INIT(64'h952B4B6D933318E1)) 
    g10_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g10_b6__0_n_0));
  LUT6 #(
    .INIT(64'h924B6B52AD555552)) 
    g10_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g10_b7_n_0));
  LUT6 #(
    .INIT(64'hB366D924B696B5AB)) 
    g10_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g10_b7__0_n_0));
  LUT6 #(
    .INIT(64'h8E38E7319CCCCCC9)) 
    g10_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g10_b8_n_0));
  LUT6 #(
    .INIT(64'h25B4924924DB26CD)) 
    g10_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g10_b8__0_n_0));
  LUT6 #(
    .INIT(64'h7E07E0F07C3C3C38)) 
    g10_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g10_b9_n_0));
  LUT6 #(
    .INIT(64'hC638E38E38E3C70E)) 
    g10_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g10_b9__0_n_0));
  LUT6 #(
    .INIT(64'h7C6A9EE4D83E0D64)) 
    g11_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g11_b0_n_0));
  LUT6 #(
    .INIT(64'hAD5B8EA0CF419842)) 
    g11_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g11_b0__0_n_0));
  LUT6 #(
    .INIT(64'h3890A5952449123F)) 
    g11_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g11_b1_n_0));
  LUT6 #(
    .INIT(64'h00000000007FFFC0)) 
    g11_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g11_b10_n_0));
  LUT6 #(
    .INIT(64'hFC1F07C1F03E0FC1)) 
    g11_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g11_b10__0_n_0));
  LUT5 #(
    .INIT(32'h00000007)) 
    g11_b11
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g11_b11_n_0));
  LUT6 #(
    .INIT(64'hFFE007FE003FF001)) 
    g11_b11__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g11_b11__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFF800003FFFFE)) 
    g11_b12
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g11_b12_n_0));
  LUT6 #(
    .INIT(64'hC99C019570D5FA81)) 
    g11_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g11_b1__0_n_0));
  LUT6 #(
    .INIT(64'h105E3D0E17D0A142)) 
    g11_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g11_b2_n_0));
  LUT6 #(
    .INIT(64'hF1E000732A99F9AA)) 
    g11_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g11_b2__0_n_0));
  LUT6 #(
    .INIT(64'h0A9E69FD58353F2B)) 
    g11_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g11_b3_n_0));
  LUT6 #(
    .INIT(64'hAB55555A4CE1F866)) 
    g11_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g11_b3__0_n_0));
  LUT6 #(
    .INIT(64'h064B4E033559C0E6)) 
    g11_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g11_b4_n_0));
  LUT6 #(
    .INIT(64'hCD99999C70FE07E1)) 
    g11_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g11_b4__0_n_0));
  LUT6 #(
    .INIT(64'h01C6DAAA599E001E)) 
    g11_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g11_b5_n_0));
  LUT6 #(
    .INIT(64'hF1E1E1E07F00001F)) 
    g11_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g11_b5__0_n_0));
  LUT6 #(
    .INIT(64'h003E399934B55554)) 
    g11_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g11_b6_n_0));
  LUT6 #(
    .INIT(64'hAB54AB552AAAAAAA)) 
    g11_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g11_b6__0_n_0));
  LUT6 #(
    .INIT(64'h0001F878F38CCCCD)) 
    g11_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g11_b7_n_0));
  LUT6 #(
    .INIT(64'h98CC673319999999)) 
    g11_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g11_b7__0_n_0));
  LUT6 #(
    .INIT(64'h000007F80F83C3C3)) 
    g11_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g11_b8_n_0));
  LUT6 #(
    .INIT(64'hD296B5A5AD2D2D2D)) 
    g11_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g11_b8__0_n_0));
  LUT6 #(
    .INIT(64'h00000007FF803FC0)) 
    g11_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g11_b9_n_0));
  LUT6 #(
    .INIT(64'hE318C639CE31CE31)) 
    g11_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g11_b9__0_n_0));
  LUT6 #(
    .INIT(64'h307CA73BEE4FAF8C)) 
    g12_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g12_b0_n_0));
  LUT6 #(
    .INIT(64'hBDE67D0CFA8E254A)) 
    g12_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g12_b0__0_n_0));
  LUT6 #(
    .INIT(64'h1DC7D61859524712)) 
    g12_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g12_b1_n_0));
  LUT6 #(
    .INIT(64'h03FFFE0000000000)) 
    g12_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g12_b10_n_0));
  LUT6 #(
    .INIT(64'h7C0F83F07C1F07C0)) 
    g12_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g12_b10__0_n_0));
  LUT5 #(
    .INIT(32'hE0000000)) 
    g12_b11
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g12_b11_n_0));
  LUT6 #(
    .INIT(64'h7FF003FF801FF800)) 
    g12_b11__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g12_b11__0_n_0));
  LUT6 #(
    .INIT(64'h800003FFFFE00000)) 
    g12_b12
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g12_b12_n_0));
  LUT6 #(
    .INIT(64'h7EA054F1567FC66C)) 
    g12_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g12_b1__0_n_0));
  LUT6 #(
    .INIT(64'h5C82F3F3D0E17DF4)) 
    g12_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g12_b2_n_0));
  LUT6 #(
    .INIT(64'hAA6066AB31FFF870)) 
    g12_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g12_b2__0_n_0));
  LUT6 #(
    .INIT(64'h36FE5BF69FD58358)) 
    g12_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g12_b3_n_0));
  LUT6 #(
    .INIT(64'h99E078CDA555552A)) 
    g12_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g12_b3__0_n_0));
  LUT6 #(
    .INIT(64'hA701C95B1FCCAA60)) 
    g12_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g12_b4_n_0));
  LUT6 #(
    .INIT(64'h781F80F1C666664C)) 
    g12_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g12_b4__0_n_0));
  LUT6 #(
    .INIT(64'hC7FFC736B5693380)) 
    g12_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g12_b5_n_0));
  LUT6 #(
    .INIT(64'h07FFFF01F8787870)) 
    g12_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g12_b5__0_n_0));
  LUT6 #(
    .INIT(64'h52AA95A4D98E3C00)) 
    g12_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g12_b6_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAB552AD52A)) 
    g12_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g12_b6__0_n_0));
  LUT6 #(
    .INIT(64'h9B3319C71E0FC000)) 
    g12_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g12_b7_n_0));
  LUT6 #(
    .INIT(64'h666666673319CCE6)) 
    g12_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g12_b7__0_n_0));
  LUT6 #(
    .INIT(64'hE3C3E1F81FF00000)) 
    g12_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g12_b8_n_0));
  LUT6 #(
    .INIT(64'h4B4B4B4A5A5296B4)) 
    g12_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g12_b8__0_n_0));
  LUT6 #(
    .INIT(64'h03FC01FFE0000000)) 
    g12_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g12_b9_n_0));
  LUT6 #(
    .INIT(64'h738C738C639CE738)) 
    g12_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g12_b9__0_n_0));
  LUT6 #(
    .INIT(64'h301669E19980CFE5)) 
    g13_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g13_b0_n_0));
  LUT6 #(
    .INIT(64'hE6EE4F7E38923C41)) 
    g13_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g13_b0__0_n_0));
  LUT6 #(
    .INIT(64'h4BAC35C25A447894)) 
    g13_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g13_b1_n_0));
  LUT6 #(
    .INIT(64'hE01FC01FF003FF80)) 
    g13_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g13_b10_n_0));
  LUT6 #(
    .INIT(64'h0FE03F03F03F03E0)) 
    g13_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g13_b10__0_n_0));
  LUT6 #(
    .INIT(64'h001FFFE00003FFFF)) 
    g13_b11
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g13_b11_n_0));
  LUT5 #(
    .INIT(32'hC07E07E0)) 
    g13_b11__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g13_b11__0_n_0));
  LUT6 #(
    .INIT(64'h001FFFFFFFFC0000)) 
    g13_b12
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g13_b12_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFF8007FF)) 
    g13_b12__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g13_b12__0_n_0));
  LUT6 #(
    .INIT(64'hFFE0000000000000)) 
    g13_b13
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g13_b13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h000007FF)) 
    g13_b13__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g13_b13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    g13_b14
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g13_b14_n_0));
  LUT6 #(
    .INIT(64'h0F6A61FA28CC813D)) 
    g13_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g13_b1__0_n_0));
  LUT6 #(
    .INIT(64'hD397E9D433D7D05B)) 
    g13_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g13_b2_n_0));
  LUT6 #(
    .INIT(64'hF51321A9CDBF2B01)) 
    g13_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g13_b2__0_n_0));
  LUT6 #(
    .INIT(64'hC927E4980967CA9F)) 
    g13_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g13_b3_n_0));
  LUT6 #(
    .INIT(64'h0656E1CD5B803254)) 
    g13_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g13_b3__0_n_0));
  LUT6 #(
    .INIT(64'h6DC7E3B5527839B5)) 
    g13_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g13_b4_n_0));
  LUT6 #(
    .INIT(64'h52CE1E0E6D2A96CC)) 
    g13_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g13_b4__0_n_0));
  LUT6 #(
    .INIT(64'h8E07E07336D552D9)) 
    g13_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g13_b5_n_0));
  LUT6 #(
    .INIT(64'h6494AAA524998E3C)) 
    g13_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g13_b5__0_n_0));
  LUT6 #(
    .INIT(64'hF007E00F0E33364B)) 
    g13_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g13_b6_n_0));
  LUT6 #(
    .INIT(64'h78E73336492D2B56)) 
    g13_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g13_b6__0_n_0));
  LUT6 #(
    .INIT(64'h5552B555AB5A5B6D)) 
    g13_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g13_b7_n_0));
  LUT6 #(
    .INIT(64'h2A529692DB649932)) 
    g13_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g13_b7__0_n_0));
  LUT6 #(
    .INIT(64'h999B3999CC639C71)) 
    g13_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g13_b8_n_0));
  LUT6 #(
    .INIT(64'h4C9B24DB6DB6D25B)) 
    g13_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g13_b8__0_n_0));
  LUT6 #(
    .INIT(64'h1E1C3E1E0F83E07E)) 
    g13_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g13_b9_n_0));
  LUT6 #(
    .INIT(64'h8F1C38E38E38E39C)) 
    g13_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g13_b9__0_n_0));
  LUT6 #(
    .INIT(64'h7DC3B6E3810D8898)) 
    g14_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g14_b0_n_0));
  LUT6 #(
    .INIT(64'h580CFE66786997F3)) 
    g14_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g14_b0__0_n_0));
  LUT6 #(
    .INIT(64'h437ECCEBA079A90F)) 
    g14_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g14_b1_n_0));
  LUT6 #(
    .INIT(64'hF83F03F03F03F80F)) 
    g14_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g14_b10_n_0));
  LUT6 #(
    .INIT(64'hFE003FF007FC07F8)) 
    g14_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g14_b10__0_n_0));
  LUT5 #(
    .INIT(32'hF81F81FC)) 
    g14_b11
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g14_b11_n_0));
  LUT6 #(
    .INIT(64'h00003FFFF80007FF)) 
    g14_b11__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g14_b11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'h001FFE00)) 
    g14_b12
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g14_b12_n_0));
  LUT6 #(
    .INIT(64'hFFFFC000000007FF)) 
    g14_b12__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g14_b12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h001FFFFF)) 
    g14_b13
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g14_b13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF800)) 
    g14_b13__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g14_b13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFE00000)) 
    g14_b14
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g14_b14_n_0));
  LUT6 #(
    .INIT(64'hD6E1DDA5BC53CA2D)) 
    g14_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g14_b1__0_n_0));
  LUT6 #(
    .INIT(64'h7F2B024C6A7B3750)) 
    g14_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g14_b2_n_0));
  LUT6 #(
    .INIT(64'h25F41433D4681634)) 
    g14_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g14_b2__0_n_0));
  LUT6 #(
    .INIT(64'hD5B3FE254C78959F)) 
    g14_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g14_b3_n_0));
  LUT6 #(
    .INIT(64'h06AC196FE6D81B6C)) 
    g14_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g14_b3__0_n_0));
  LUT6 #(
    .INIT(64'hCC96AB498F878CB5)) 
    g14_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g14_b4_n_0));
  LUT6 #(
    .INIT(64'h5263E1B552381C49)) 
    g14_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g14_b4__0_n_0));
  LUT6 #(
    .INIT(64'hC38E66DB5AAAD6D9)) 
    g14_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g14_b5_n_0));
  LUT6 #(
    .INIT(64'h64B5549331F81F8E)) 
    g14_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g14_b5__0_n_0));
  LUT6 #(
    .INIT(64'h952B4B6D933318E1)) 
    g14_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g14_b6_n_0));
  LUT6 #(
    .INIT(64'h2D93338F0FF81FF0)) 
    g14_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g14_b6__0_n_0));
  LUT6 #(
    .INIT(64'hB366D924B696B5AB)) 
    g14_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g14_b7_n_0));
  LUT6 #(
    .INIT(64'h4925A52A5552B555)) 
    g14_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g14_b7__0_n_0));
  LUT6 #(
    .INIT(64'h25B4924924DB26CD)) 
    g14_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g14_b8_n_0));
  LUT6 #(
    .INIT(64'h71C639CC66632666)) 
    g14_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g14_b8__0_n_0));
  LUT6 #(
    .INIT(64'hC638E38E38E3C70E)) 
    g14_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g14_b9_n_0));
  LUT6 #(
    .INIT(64'h81F83E0F8783C787)) 
    g14_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g14_b9__0_n_0));
  LUT6 #(
    .INIT(64'hAD5B8EA0CF419842)) 
    g15_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g15_b0_n_0));
  LUT6 #(
    .INIT(64'hCE0A0D88231AC1F3)) 
    g15_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g15_b0__0_n_0));
  LUT6 #(
    .INIT(64'hC99C019570D5FA81)) 
    g15_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g15_b1_n_0));
  LUT6 #(
    .INIT(64'hFC1F07C1F03E0FC1)) 
    g15_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g15_b10_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF80003F)) 
    g15_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g15_b10__0_n_0));
  LUT6 #(
    .INIT(64'hFFE007FE003FF001)) 
    g15_b11
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g15_b11_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    g15_b11__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g15_b11__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFF800003FFFFE)) 
    g15_b12
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g15_b12_n_0));
  LUT6 #(
    .INIT(64'hB71DB565E7941C47)) 
    g15_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g15_b1__0_n_0));
  LUT6 #(
    .INIT(64'hF1E000732A99F9AA)) 
    g15_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g15_b2_n_0));
  LUT6 #(
    .INIT(64'hD04178F43030BEC5)) 
    g15_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g15_b2__0_n_0));
  LUT6 #(
    .INIT(64'hAB55555A4CE1F866)) 
    g15_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g15_b3_n_0));
  LUT6 #(
    .INIT(64'hE53E540690258093)) 
    g15_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g15_b3__0_n_0));
  LUT6 #(
    .INIT(64'hCD99999C70FE07E1)) 
    g15_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g15_b4_n_0));
  LUT6 #(
    .INIT(64'hF9AACC07256C7F1A)) 
    g15_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g15_b4__0_n_0));
  LUT6 #(
    .INIT(64'hF1E1E1E07F00001F)) 
    g15_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g15_b5_n_0));
  LUT6 #(
    .INIT(64'hFE336952931C001C)) 
    g15_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g15_b5__0_n_0));
  LUT6 #(
    .INIT(64'hAB54AB552AAAAAAA)) 
    g15_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g15_b6_n_0));
  LUT6 #(
    .INIT(64'hFFC38E64DA56AAB5)) 
    g15_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g15_b6__0_n_0));
  LUT6 #(
    .INIT(64'h98CC673319999999)) 
    g15_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g15_b7_n_0));
  LUT6 #(
    .INIT(64'hFFFC0F871C673326)) 
    g15_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g15_b7__0_n_0));
  LUT6 #(
    .INIT(64'hD296B5A5AD2D2D2D)) 
    g15_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g15_b8_n_0));
  LUT6 #(
    .INIT(64'hFFFFF007E0783C38)) 
    g15_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g15_b8__0_n_0));
  LUT6 #(
    .INIT(64'hE318C639CE31CE31)) 
    g15_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g15_b9_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF8007FC03F)) 
    g15_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g15_b9__0_n_0));
  LUT6 #(
    .INIT(64'hE6EE4F7E38923C41)) 
    g1_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g1_b0_n_0));
  LUT6 #(
    .INIT(64'h032FE8781433F98B)) 
    g1_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g1_b0__0_n_0));
  LUT6 #(
    .INIT(64'h0F6A61FA28CC813D)) 
    g1_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g1_b1_n_0));
  LUT6 #(
    .INIT(64'h0FE03F03F03F03E0)) 
    g1_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g1_b10_n_0));
  LUT6 #(
    .INIT(64'h1FC03FC00FF8007F)) 
    g1_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g1_b10__0_n_0));
  LUT5 #(
    .INIT(32'hC07E07E0)) 
    g1_b11
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g1_b11_n_0));
  LUT6 #(
    .INIT(64'hFFC0003FFFF80000)) 
    g1_b11__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g1_b11__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFF8007FF)) 
    g1_b12
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g1_b12_n_0));
  LUT6 #(
    .INIT(64'hFFC000000007FFFF)) 
    g1_b12__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g1_b12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h000007FF)) 
    g1_b13
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g1_b13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h07FFFFFF)) 
    g1_b13__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g1_b13__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFFFF800)) 
    g1_b14
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g1_b14_n_0));
  LUT6 #(
    .INIT(64'h886BAC43BB87769A)) 
    g1_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g1_b1__0_n_0));
  LUT6 #(
    .INIT(64'hF51321A9CDBF2B01)) 
    g1_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g1_b2_n_0));
  LUT6 #(
    .INIT(64'h27B83B97D7D050C4)) 
    g1_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g1_b2__0_n_0));
  LUT6 #(
    .INIT(64'h0656E1CD5B803254)) 
    g1_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g1_b3_n_0));
  LUT6 #(
    .INIT(64'hCA9832B01AB065BF)) 
    g1_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g1_b3__0_n_0));
  LUT6 #(
    .INIT(64'h52CE1E0E6D2A96CC)) 
    g1_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g1_b4_n_0));
  LUT6 #(
    .INIT(64'hA6783CDAB670792A)) 
    g1_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g1_b4__0_n_0));
  LUT6 #(
    .INIT(64'h6494AAA524998E3C)) 
    g1_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g1_b5_n_0));
  LUT6 #(
    .INIT(64'h61F83F1CDB5AD499)) 
    g1_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g1_b5__0_n_0));
  LUT6 #(
    .INIT(64'h78E73336492D2B56)) 
    g1_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g1_b6_n_0));
  LUT6 #(
    .INIT(64'hE007C01F1C6366D2)) 
    g1_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g1_b6__0_n_0));
  LUT6 #(
    .INIT(64'h2A529692DB649932)) 
    g1_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g1_b7_n_0));
  LUT6 #(
    .INIT(64'hB555554AB5292DB6)) 
    g1_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g1_b7__0_n_0));
  LUT6 #(
    .INIT(64'h4C9B24DB6DB6D25B)) 
    g1_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g1_b8_n_0));
  LUT6 #(
    .INIT(64'h6CCCCCC67318E38E)) 
    g1_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g1_b8__0_n_0));
  LUT6 #(
    .INIT(64'h8F1C38E38E38E39C)) 
    g1_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g1_b9_n_0));
  LUT6 #(
    .INIT(64'hE3C3C3C1F0F81F81)) 
    g1_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g1_b9__0_n_0));
  LUT6 #(
    .INIT(64'h580CFE66786997F3)) 
    g2_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g2_b0_n_0));
  LUT6 #(
    .INIT(64'h43ABD600956C14D6)) 
    g2_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g2_b0__0_n_0));
  LUT6 #(
    .INIT(64'hD6E1DDA5BC53CA2D)) 
    g2_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g2_b1_n_0));
  LUT6 #(
    .INIT(64'hFE003FF007FC07F8)) 
    g2_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g2_b10_n_0));
  LUT6 #(
    .INIT(64'h0FC1F81F80FC07E0)) 
    g2_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g2_b10__0_n_0));
  LUT6 #(
    .INIT(64'h00003FFFF80007FF)) 
    g2_b11
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g2_b11_n_0));
  LUT6 #(
    .INIT(64'h003FF8007FFC001F)) 
    g2_b11__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g2_b11__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFC000000007FF)) 
    g2_b12
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g2_b12_n_0));
  LUT6 #(
    .INIT(64'hFFFFF8000003FFFF)) 
    g2_b12__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g2_b12__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFF800)) 
    g2_b13
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g2_b13_n_0));
  LUT6 #(
    .INIT(64'hFFFFF80000000000)) 
    g2_b13__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g2_b13__0_n_0));
  LUT6 #(
    .INIT(64'h000007FFFFFFFFFF)) 
    g2_b14
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g2_b14_n_0));
  LUT6 #(
    .INIT(64'h3D6D25E8C90BB610)) 
    g2_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g2_b1__0_n_0));
  LUT6 #(
    .INIT(64'h25F41433D4681634)) 
    g2_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g2_b2_n_0));
  LUT6 #(
    .INIT(64'hFE44F958EB0D774F)) 
    g2_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g2_b2__0_n_0));
  LUT6 #(
    .INIT(64'h06AC196FE6D81B6C)) 
    g2_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g2_b3_n_0));
  LUT6 #(
    .INIT(64'h5523FE6DA70E5D3F)) 
    g2_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g2_b3__0_n_0));
  LUT6 #(
    .INIT(64'h5263E1B552381C49)) 
    g2_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g2_b4_n_0));
  LUT6 #(
    .INIT(64'h664AAADB9F0F99AA)) 
    g2_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g2_b4__0_n_0));
  LUT6 #(
    .INIT(64'h64B5549331F81F8E)) 
    g2_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g2_b5_n_0));
  LUT6 #(
    .INIT(64'h878CCC92D5A54B66)) 
    g2_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g2_b5__0_n_0));
  LUT6 #(
    .INIT(64'h2D93338F0FF81FF0)) 
    g2_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g2_b6_n_0));
  LUT6 #(
    .INIT(64'hAD5A5A49B36338E1)) 
    g2_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g2_b6__0_n_0));
  LUT6 #(
    .INIT(64'h4925A52A5552B555)) 
    g2_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g2_b7_n_0));
  LUT6 #(
    .INIT(64'h366C936D25B5AD4A)) 
    g2_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g2_b7__0_n_0));
  LUT6 #(
    .INIT(64'h71C639CC66632666)) 
    g2_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g2_b8_n_0));
  LUT6 #(
    .INIT(64'h92DA4924936C9B26)) 
    g2_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g2_b8__0_n_0));
  LUT6 #(
    .INIT(64'h81F83E0F8783C787)) 
    g2_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g2_b9_n_0));
  LUT6 #(
    .INIT(64'h71C638E38F1C78E1)) 
    g2_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g2_b9__0_n_0));
  LUT6 #(
    .INIT(64'hCE0A0D88231AC1F3)) 
    g3_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g3_b0_n_0));
  LUT6 #(
    .INIT(64'h6AACF360A1C2E87A)) 
    g3_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g3_b0__0_n_0));
  LUT6 #(
    .INIT(64'hB71DB565E7941C47)) 
    g3_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g3_b1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF80003F)) 
    g3_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g3_b10_n_0));
  LUT6 #(
    .INIT(64'h07C1F03E0F83F07E)) 
    g3_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g3_b10__0_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFF8)) 
    g3_b11
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g3_b11_n_0));
  LUT6 #(
    .INIT(64'h003FF001FF800FFE)) 
    g3_b11__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g3_b11__0_n_0));
  LUT6 #(
    .INIT(64'h00000FFFFF800001)) 
    g3_b12
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g3_b12_n_0));
  LUT6 #(
    .INIT(64'h00000000007FFFFF)) 
    g3_b13
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g3_b13_n_0));
  LUT6 #(
    .INIT(64'h2663FC4A61960D03)) 
    g3_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g3_b1__0_n_0));
  LUT6 #(
    .INIT(64'hD04178F43030BEC5)) 
    g3_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g3_b2_n_0));
  LUT6 #(
    .INIT(64'hE1E000734B4E0E56)) 
    g3_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g3_b2__0_n_0));
  LUT6 #(
    .INIT(64'hE53E540690258093)) 
    g3_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g3_b3_n_0));
  LUT6 #(
    .INIT(64'h4AB55529273E0F9B)) 
    g3_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g3_b3__0_n_0));
  LUT6 #(
    .INIT(64'hF9AACC07256C7F1A)) 
    g3_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g3_b4_n_0));
  LUT6 #(
    .INIT(64'h266CCCE71F01F01C)) 
    g3_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g3_b4__0_n_0));
  LUT6 #(
    .INIT(64'hFE336952931C001C)) 
    g3_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g3_b5_n_0));
  LUT6 #(
    .INIT(64'hE1E3C3E0FF00001F)) 
    g3_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g3_b5__0_n_0));
  LUT6 #(
    .INIT(64'hFFC38E64DA56AAB5)) 
    g3_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g3_b6_n_0));
  LUT6 #(
    .INIT(64'hB54A954AAA55554A)) 
    g3_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g3_b6__0_n_0));
  LUT6 #(
    .INIT(64'hFFFC0F871C673326)) 
    g3_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g3_b7_n_0));
  LUT6 #(
    .INIT(64'h398CE67333999993)) 
    g3_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g3_b7__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFF007E0783C38)) 
    g3_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g3_b8_n_0));
  LUT6 #(
    .INIT(64'h6B5A52D696B4B4B6)) 
    g3_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g3_b8__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFF8007FC03F)) 
    g3_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g3_b9_n_0));
  LUT6 #(
    .INIT(64'h18C631CE718C738E)) 
    g3_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g3_b9__0_n_0));
  LUT6 #(
    .INIT(64'hD94F83E4D886A9C1)) 
    g4_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g4_b0_n_0));
  LUT6 #(
    .INIT(64'hA1E8BC7AF930CAA9)) 
    g4_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g4_b0__0_n_0));
  LUT6 #(
    .INIT(64'h03B76DDB565AF6E3)) 
    g4_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g4_b1_n_0));
  LUT6 #(
    .INIT(64'hFC0001FFFFFFFFFF)) 
    g4_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g4_b10_n_0));
  LUT6 #(
    .INIT(64'h81F03E0F83F07C1F)) 
    g4_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g4_b10__0_n_0));
  LUT5 #(
    .INIT(32'h1FFFFFFF)) 
    g4_b11
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g4_b11_n_0));
  LUT6 #(
    .INIT(64'h800FFE007FF003FF)) 
    g4_b11__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g4_b11__0_n_0));
  LUT6 #(
    .INIT(64'h7FFFFE00000FFFFF)) 
    g4_b12
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g4_b12_n_0));
  LUT6 #(
    .INIT(64'h000001FFFFFFFFFF)) 
    g4_b13
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g4_b13_n_0));
  LUT6 #(
    .INIT(64'h3F4F9679ADC0399B)) 
    g4_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g4_b1__0_n_0));
  LUT6 #(
    .INIT(64'hBD7AF4178F4385F7)) 
    g4_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g4_b2_n_0));
  LUT6 #(
    .INIT(64'h958F8D2D31FFF878)) 
    g4_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g4_b2__0_n_0));
  LUT6 #(
    .INIT(64'h2B0353E5406986AF)) 
    g4_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g4_b3_n_0));
  LUT6 #(
    .INIT(64'h260F831B6B5552AD)) 
    g4_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g4_b3__0_n_0));
  LUT6 #(
    .INIT(64'h98FC65533F8D2D9F)) 
    g4_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g4_b4_n_0));
  LUT6 #(
    .INIT(64'hC7F07F0718CCC99B)) 
    g4_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g4_b4__0_n_0));
  LUT6 #(
    .INIT(64'h87FF8665AAA49C7F)) 
    g4_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g4_b5_n_0));
  LUT6 #(
    .INIT(64'h07FFFF00F83C3878)) 
    g4_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g4_b5__0_n_0));
  LUT6 #(
    .INIT(64'hD55552D3666383FF)) 
    g4_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g4_b6_n_0));
  LUT6 #(
    .INIT(64'hAD5555AAAD56AD52)) 
    g4_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g4_b6__0_n_0));
  LUT6 #(
    .INIT(64'h4CCCCE30E1E07FFF)) 
    g4_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g4_b7_n_0));
  LUT6 #(
    .INIT(64'h366666333198CE63)) 
    g4_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g4_b7__0_n_0));
  LUT6 #(
    .INIT(64'h3C3C3E0FE01FFFFF)) 
    g4_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g4_b8_n_0));
  LUT6 #(
    .INIT(64'h92D2D29694B5A529)) 
    g4_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g4_b8__0_n_0));
  LUT6 #(
    .INIT(64'hFC03FE001FFFFFFF)) 
    g4_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g4_b9_n_0));
  LUT6 #(
    .INIT(64'h8E31CE718C739CE7)) 
    g4_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g4_b9__0_n_0));
  LUT6 #(
    .INIT(64'h032FE8781433F98B)) 
    g5_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g5_b0_n_0));
  LUT6 #(
    .INIT(64'h94D7C956FF942A3D)) 
    g5_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g5_b0__0_n_0));
  LUT6 #(
    .INIT(64'h886BAC43BB87769A)) 
    g5_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g5_b1_n_0));
  LUT6 #(
    .INIT(64'h1FC03FC00FF8007F)) 
    g5_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g5_b10_n_0));
  LUT6 #(
    .INIT(64'hF81FC0FE07E07C0F)) 
    g5_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g5_b10__0_n_0));
  LUT6 #(
    .INIT(64'hFFC0003FFFF80000)) 
    g5_b11
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g5_b11_n_0));
  LUT6 #(
    .INIT(64'h07FFC001FFE003FF)) 
    g5_b11__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g5_b11__0_n_0));
  LUT6 #(
    .INIT(64'hFFC000000007FFFF)) 
    g5_b12
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g5_b12_n_0));
  LUT6 #(
    .INIT(64'h00003FFFFFE00000)) 
    g5_b12__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g5_b12__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h07FFFFFF)) 
    g5_b13
       (.I0(\i_reg_rep[1]_rep_n_0 ),
        .I1(\i_reg_rep[2]_rep_n_0 ),
        .I2(\i_reg_rep[3]_rep_n_0 ),
        .I3(\i_reg_rep[4]_rep_n_0 ),
        .I4(\i_reg_rep[5]_rep_n_0 ),
        .O(g5_b13_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE00000)) 
    g5_b13__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g5_b13__0_n_0));
  LUT6 #(
    .INIT(64'h00000000001FFFFF)) 
    g5_b14
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g5_b14_n_0));
  LUT6 #(
    .INIT(64'hF7922F6CE85B4943)) 
    g5_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g5_b1__0_n_0));
  LUT6 #(
    .INIT(64'h27B83B97D7D050C4)) 
    g5_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g5_b2_n_0));
  LUT6 #(
    .INIT(64'h0D114F28E560DD80)) 
    g5_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g5_b2__0_n_0));
  LUT6 #(
    .INIT(64'hCA9832B01AB065BF)) 
    g5_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g5_b3_n_0));
  LUT6 #(
    .INIT(64'h03458F1A49803B55)) 
    g5_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g5_b3__0_n_0));
  LUT6 #(
    .INIT(64'hA6783CDAB670792A)) 
    g5_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g5_b4_n_0));
  LUT6 #(
    .INIT(64'hAA660F0624AAAD99)) 
    g5_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g5_b4__0_n_0));
  LUT6 #(
    .INIT(64'h61F83F1CDB5AD499)) 
    g5_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g5_b5_n_0));
  LUT6 #(
    .INIT(64'h992D5A54B6CCCE1E)) 
    g5_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g5_b5__0_n_0));
  LUT6 #(
    .INIT(64'hE007C01F1C6366D2)) 
    g5_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g5_b6_n_0));
  LUT6 #(
    .INIT(64'h78E339326DA5A54A)) 
    g5_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g5_b6__0_n_0));
  LUT6 #(
    .INIT(64'hB555554AB5292DB6)) 
    g5_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g5_b7_n_0));
  LUT6 #(
    .INIT(64'hAD4A525B4936C993)) 
    g5_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g5_b7__0_n_0));
  LUT6 #(
    .INIT(64'h6CCCCCC67318E38E)) 
    g5_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g5_b8_n_0));
  LUT6 #(
    .INIT(64'h9B26C936DB6DA4B6)) 
    g5_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g5_b8__0_n_0));
  LUT6 #(
    .INIT(64'hE3C3C3C1F0F81F81)) 
    g5_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g5_b9_n_0));
  LUT6 #(
    .INIT(64'h78E1C70E38E39C71)) 
    g5_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g5_b9__0_n_0));
  LUT6 #(
    .INIT(64'h43ABD600956C14D6)) 
    g6_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g6_b0_n_0));
  LUT6 #(
    .INIT(64'h2E6033D7E1E80B3F)) 
    g6_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g6_b0__0_n_0));
  LUT6 #(
    .INIT(64'h3D6D25E8C90BB610)) 
    g6_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g6_b1_n_0));
  LUT6 #(
    .INIT(64'h0FC1F81F80FC07E0)) 
    g6_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g6_b10_n_0));
  LUT6 #(
    .INIT(64'h01FFE00FFC03FC07)) 
    g6_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g6_b10__0_n_0));
  LUT6 #(
    .INIT(64'h003FF8007FFC001F)) 
    g6_b11
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g6_b11_n_0));
  LUT6 #(
    .INIT(64'hFFFFE00003FFFC00)) 
    g6_b11__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g6_b11__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFF8000003FFFF)) 
    g6_b12
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g6_b12_n_0));
  LUT6 #(
    .INIT(64'h00001FFFFFFFFC00)) 
    g6_b12__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g6_b12__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFF80000000000)) 
    g6_b13
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g6_b13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h0000001F)) 
    g6_b13__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g6_b13__0_n_0));
  LUT6 #(
    .INIT(64'h000007FFFFFFFFFF)) 
    g6_b14
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g6_b14_n_0));
  LUT6 #(
    .INIT(64'hA6911E223DCA29EE)) 
    g6_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g6_b1__0_n_0));
  LUT6 #(
    .INIT(64'hFE44F958EB0D774F)) 
    g6_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g6_b2_n_0));
  LUT6 #(
    .INIT(64'hDCF5F4141623E21B)) 
    g6_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g6_b2__0_n_0));
  LUT6 #(
    .INIT(64'h5523FE6DA70E5D3F)) 
    g6_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g6_b3_n_0));
  LUT6 #(
    .INIT(64'h0259F2A7F2B3E6AC)) 
    g6_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g6_b3__0_n_0));
  LUT6 #(
    .INIT(64'h664AAADB9F0F99AA)) 
    g6_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g6_b4_n_0));
  LUT6 #(
    .INIT(64'hAB61F192A4C3E19A)) 
    g6_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g6_b4__0_n_0));
  LUT6 #(
    .INIT(64'h878CCC92D5A54B66)) 
    g6_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g6_b5_n_0));
  LUT6 #(
    .INIT(64'h66D4A524C703E079)) 
    g6_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g6_b5__0_n_0));
  LUT6 #(
    .INIT(64'hAD5A5A49B36338E1)) 
    g6_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g6_b6_n_0));
  LUT6 #(
    .INIT(64'hB49939C707FC1FF8)) 
    g6_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g6_b6__0_n_0));
  LUT6 #(
    .INIT(64'h366C936D25B5AD4A)) 
    g6_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g6_b7_n_0));
  LUT6 #(
    .INIT(64'h924B6B52AD555552)) 
    g6_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g6_b7__0_n_0));
  LUT6 #(
    .INIT(64'h92DA4924936C9B26)) 
    g6_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g6_b8_n_0));
  LUT6 #(
    .INIT(64'h8E38E7319CCCCCC9)) 
    g6_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g6_b8__0_n_0));
  LUT6 #(
    .INIT(64'h71C638E38F1C78E1)) 
    g6_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g6_b9_n_0));
  LUT6 #(
    .INIT(64'h7E07E0F07C3C3C38)) 
    g6_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g6_b9__0_n_0));
  LUT6 #(
    .INIT(64'h6AACF360A1C2E87A)) 
    g7_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g7_b0_n_0));
  LUT6 #(
    .INIT(64'h7C6A9EE4D83E0D64)) 
    g7_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g7_b0__0_n_0));
  LUT6 #(
    .INIT(64'h2663FC4A61960D03)) 
    g7_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g7_b1_n_0));
  LUT6 #(
    .INIT(64'h07C1F03E0F83F07E)) 
    g7_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g7_b10_n_0));
  LUT6 #(
    .INIT(64'h00000000007FFFC0)) 
    g7_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g7_b10__0_n_0));
  LUT6 #(
    .INIT(64'h003FF001FF800FFE)) 
    g7_b11
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g7_b11_n_0));
  LUT5 #(
    .INIT(32'h00000007)) 
    g7_b11__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g7_b11__0_n_0));
  LUT6 #(
    .INIT(64'h00000FFFFF800001)) 
    g7_b12
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g7_b12_n_0));
  LUT6 #(
    .INIT(64'h00000000007FFFFF)) 
    g7_b13
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g7_b13_n_0));
  LUT6 #(
    .INIT(64'h3890A5952449123F)) 
    g7_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g7_b1__0_n_0));
  LUT6 #(
    .INIT(64'hE1E000734B4E0E56)) 
    g7_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g7_b2_n_0));
  LUT6 #(
    .INIT(64'h105E3D0E17D0A142)) 
    g7_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g7_b2__0_n_0));
  LUT6 #(
    .INIT(64'h4AB55529273E0F9B)) 
    g7_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g7_b3_n_0));
  LUT6 #(
    .INIT(64'h0A9E69FD58353F2B)) 
    g7_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g7_b3__0_n_0));
  LUT6 #(
    .INIT(64'h266CCCE71F01F01C)) 
    g7_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g7_b4_n_0));
  LUT6 #(
    .INIT(64'h064B4E033559C0E6)) 
    g7_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g7_b4__0_n_0));
  LUT6 #(
    .INIT(64'hE1E3C3E0FF00001F)) 
    g7_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g7_b5_n_0));
  LUT6 #(
    .INIT(64'h01C6DAAA599E001E)) 
    g7_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g7_b5__0_n_0));
  LUT6 #(
    .INIT(64'hB54A954AAA55554A)) 
    g7_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g7_b6_n_0));
  LUT6 #(
    .INIT(64'h003E399934B55554)) 
    g7_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g7_b6__0_n_0));
  LUT6 #(
    .INIT(64'h398CE67333999993)) 
    g7_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g7_b7_n_0));
  LUT6 #(
    .INIT(64'h0001F878F38CCCCD)) 
    g7_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g7_b7__0_n_0));
  LUT6 #(
    .INIT(64'h6B5A52D696B4B4B6)) 
    g7_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g7_b8_n_0));
  LUT6 #(
    .INIT(64'h000007F80F83C3C3)) 
    g7_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g7_b8__0_n_0));
  LUT6 #(
    .INIT(64'h18C631CE718C738E)) 
    g7_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g7_b9_n_0));
  LUT6 #(
    .INIT(64'h00000007FF803FC0)) 
    g7_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g7_b9__0_n_0));
  LUT6 #(
    .INIT(64'hA1E8BC7AF930CAA9)) 
    g8_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g8_b0_n_0));
  LUT6 #(
    .INIT(64'h307CA73BEE4FAF8C)) 
    g8_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g8_b0__0_n_0));
  LUT6 #(
    .INIT(64'h3F4F9679ADC0399B)) 
    g8_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g8_b1_n_0));
  LUT6 #(
    .INIT(64'h81F03E0F83F07C1F)) 
    g8_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g8_b10_n_0));
  LUT6 #(
    .INIT(64'h03FFFE0000000000)) 
    g8_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g8_b10__0_n_0));
  LUT6 #(
    .INIT(64'h800FFE007FF003FF)) 
    g8_b11
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g8_b11_n_0));
  LUT5 #(
    .INIT(32'hE0000000)) 
    g8_b11__0
       (.I0(\i_reg_rep[1]__0_n_0 ),
        .I1(\i_reg_rep[2]__0_n_0 ),
        .I2(\i_reg_rep[3]__0_n_0 ),
        .I3(\i_reg_rep[4]__0_n_0 ),
        .I4(\i_reg_rep[5]__0_n_0 ),
        .O(g8_b11__0_n_0));
  LUT6 #(
    .INIT(64'h7FFFFE00000FFFFF)) 
    g8_b12
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g8_b12_n_0));
  LUT6 #(
    .INIT(64'h000001FFFFFFFFFF)) 
    g8_b13
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g8_b13_n_0));
  LUT6 #(
    .INIT(64'h1DC7D61859524712)) 
    g8_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g8_b1__0_n_0));
  LUT6 #(
    .INIT(64'h958F8D2D31FFF878)) 
    g8_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g8_b2_n_0));
  LUT6 #(
    .INIT(64'h5C82F3F3D0E17DF4)) 
    g8_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g8_b2__0_n_0));
  LUT6 #(
    .INIT(64'h260F831B6B5552AD)) 
    g8_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g8_b3_n_0));
  LUT6 #(
    .INIT(64'h36FE5BF69FD58358)) 
    g8_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g8_b3__0_n_0));
  LUT6 #(
    .INIT(64'hC7F07F0718CCC99B)) 
    g8_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g8_b4_n_0));
  LUT6 #(
    .INIT(64'hA701C95B1FCCAA60)) 
    g8_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g8_b4__0_n_0));
  LUT6 #(
    .INIT(64'h07FFFF00F83C3878)) 
    g8_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g8_b5_n_0));
  LUT6 #(
    .INIT(64'hC7FFC736B5693380)) 
    g8_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g8_b5__0_n_0));
  LUT6 #(
    .INIT(64'hAD5555AAAD56AD52)) 
    g8_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g8_b6_n_0));
  LUT6 #(
    .INIT(64'h52AA95A4D98E3C00)) 
    g8_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g8_b6__0_n_0));
  LUT6 #(
    .INIT(64'h366666333198CE63)) 
    g8_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g8_b7_n_0));
  LUT6 #(
    .INIT(64'h9B3319C71E0FC000)) 
    g8_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g8_b7__0_n_0));
  LUT6 #(
    .INIT(64'h92D2D29694B5A529)) 
    g8_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g8_b8_n_0));
  LUT6 #(
    .INIT(64'hE3C3E1F81FF00000)) 
    g8_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g8_b8__0_n_0));
  LUT6 #(
    .INIT(64'h8E31CE718C739CE7)) 
    g8_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g8_b9_n_0));
  LUT6 #(
    .INIT(64'h03FC01FFE0000000)) 
    g8_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g8_b9__0_n_0));
  LUT6 #(
    .INIT(64'h94D7C956FF942A3D)) 
    g9_b0
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g9_b0_n_0));
  LUT6 #(
    .INIT(64'h301669E19980CFE5)) 
    g9_b0__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g9_b0__0_n_0));
  LUT6 #(
    .INIT(64'hF7922F6CE85B4943)) 
    g9_b1
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g9_b1_n_0));
  LUT6 #(
    .INIT(64'hF81FC0FE07E07C0F)) 
    g9_b10
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g9_b10_n_0));
  LUT6 #(
    .INIT(64'hE01FC01FF003FF80)) 
    g9_b10__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g9_b10__0_n_0));
  LUT6 #(
    .INIT(64'h07FFC001FFE003FF)) 
    g9_b11
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g9_b11_n_0));
  LUT6 #(
    .INIT(64'h001FFFE00003FFFF)) 
    g9_b11__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g9_b11__0_n_0));
  LUT6 #(
    .INIT(64'h00003FFFFFE00000)) 
    g9_b12
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g9_b12_n_0));
  LUT6 #(
    .INIT(64'h001FFFFFFFFC0000)) 
    g9_b12__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g9_b12__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE00000)) 
    g9_b13
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g9_b13_n_0));
  LUT6 #(
    .INIT(64'hFFE0000000000000)) 
    g9_b13__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g9_b13__0_n_0));
  LUT6 #(
    .INIT(64'h00000000001FFFFF)) 
    g9_b14
       (.I0(i[0]),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g9_b14_n_0));
  LUT6 #(
    .INIT(64'h4BAC35C25A447894)) 
    g9_b1__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g9_b1__0_n_0));
  LUT6 #(
    .INIT(64'h0D114F28E560DD80)) 
    g9_b2
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(\i_reg_rep[1]_rep_n_0 ),
        .I2(\i_reg_rep[2]_rep_n_0 ),
        .I3(\i_reg_rep[3]_rep_n_0 ),
        .I4(\i_reg_rep[4]_rep_n_0 ),
        .I5(\i_reg_rep[5]_rep_n_0 ),
        .O(g9_b2_n_0));
  LUT6 #(
    .INIT(64'hD397E9D433D7D05B)) 
    g9_b2__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g9_b2__0_n_0));
  LUT6 #(
    .INIT(64'h03458F1A49803B55)) 
    g9_b3
       (.I0(\i_reg_rep[0]_rep_n_0 ),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g9_b3_n_0));
  LUT6 #(
    .INIT(64'hC927E4980967CA9F)) 
    g9_b3__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g9_b3__0_n_0));
  LUT6 #(
    .INIT(64'hAA660F0624AAAD99)) 
    g9_b4
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g9_b4_n_0));
  LUT6 #(
    .INIT(64'h6DC7E3B5527839B5)) 
    g9_b4__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g9_b4__0_n_0));
  LUT6 #(
    .INIT(64'h992D5A54B6CCCE1E)) 
    g9_b5
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g9_b5_n_0));
  LUT6 #(
    .INIT(64'h8E07E07336D552D9)) 
    g9_b5__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_n_0 ),
        .I2(\i_reg_rep[2]__0_n_0 ),
        .I3(\i_reg_rep[3]__0_n_0 ),
        .I4(\i_reg_rep[4]__0_n_0 ),
        .I5(\i_reg_rep[5]__0_n_0 ),
        .O(g9_b5__0_n_0));
  LUT6 #(
    .INIT(64'h78E339326DA5A54A)) 
    g9_b6
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g9_b6_n_0));
  LUT6 #(
    .INIT(64'hF007E00F0E33364B)) 
    g9_b6__0
       (.I0(\i_reg_rep[0]__0_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g9_b6__0_n_0));
  LUT6 #(
    .INIT(64'hAD4A525B4936C993)) 
    g9_b7
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g9_b7_n_0));
  LUT6 #(
    .INIT(64'h5552B555AB5A5B6D)) 
    g9_b7__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g9_b7__0_n_0));
  LUT6 #(
    .INIT(64'h9B26C936DB6DA4B6)) 
    g9_b8
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g9_b8_n_0));
  LUT6 #(
    .INIT(64'h999B3999CC639C71)) 
    g9_b8__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g9_b8__0_n_0));
  LUT6 #(
    .INIT(64'h78E1C70E38E39C71)) 
    g9_b9
       (.I0(i[0]),
        .I1(i[1]),
        .I2(i[2]),
        .I3(i[3]),
        .I4(i[4]),
        .I5(i[5]),
        .O(g9_b9_n_0));
  LUT6 #(
    .INIT(64'h1E1C3E1E0F83E07E)) 
    g9_b9__0
       (.I0(\i_reg_rep[0]__0_rep_n_0 ),
        .I1(\i_reg_rep[1]__0_rep_n_0 ),
        .I2(\i_reg_rep[2]__0_rep_n_0 ),
        .I3(\i_reg_rep[3]__0_rep_n_0 ),
        .I4(\i_reg_rep[4]__0_rep_n_0 ),
        .I5(\i_reg_rep[5]__0_rep_n_0 ),
        .O(g9_b9__0_n_0));
  CARRY4 \i0_inferred__0/i__carry 
       (.CI(1'b0),
        .CO({\i0_inferred__0/i__carry_n_0 ,\i0_inferred__0/i__carry_n_1 ,\i0_inferred__0/i__carry_n_2 ,\i0_inferred__0/i__carry_n_3 }),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_i0_inferred__0/i__carry_O_UNCONNECTED [3:0]),
        .S({i__carry_i_1_n_0,i__carry_i_2_n_0,i__carry_i_3_n_0,i__carry_i_4_n_0}));
  CARRY4 \i0_inferred__0/i__carry__0 
       (.CI(\i0_inferred__0/i__carry_n_0 ),
        .CO({\i0_inferred__0/i__carry__0_n_0 ,\i0_inferred__0/i__carry__0_n_1 ,\i0_inferred__0/i__carry__0_n_2 ,\i0_inferred__0/i__carry__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_i0_inferred__0/i__carry__0_O_UNCONNECTED [3:0]),
        .S({i__carry__0_i_1_n_0,i__carry__0_i_2_n_0,i__carry__0_i_3_n_0,i__carry__0_i_4_n_0}));
  CARRY4 \i0_inferred__0/i__carry__1 
       (.CI(\i0_inferred__0/i__carry__0_n_0 ),
        .CO({\NLW_i0_inferred__0/i__carry__1_CO_UNCONNECTED [3],\i0_inferred__0/i__carry__1_n_1 ,\i0_inferred__0/i__carry__1_n_2 ,\i0_inferred__0/i__carry__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_i0_inferred__0/i__carry__1_O_UNCONNECTED [3:0]),
        .S({1'b0,i__carry__1_i_1_n_0,i__carry__1_i_2_n_0,i__carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    \i[0]_i_2 
       (.I0(i_reg[0]),
        .O(\i[0]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_1
       (.I0(p_0_in[23]),
        .I1(p_0_in[22]),
        .I2(p_0_in[21]),
        .O(i__carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_2
       (.I0(p_0_in[20]),
        .I1(p_0_in[19]),
        .I2(p_0_in[18]),
        .O(i__carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_3
       (.I0(p_0_in[17]),
        .I1(p_0_in[16]),
        .I2(p_0_in[15]),
        .O(i__carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__0_i_4
       (.I0(p_0_in[14]),
        .I1(p_0_in[13]),
        .I2(p_0_in[12]),
        .O(i__carry__0_i_4_n_0));
  CARRY4 i__carry__0_i_5
       (.CI(i__carry__0_i_6_n_0),
        .CO({i__carry__0_i_5_n_0,i__carry__0_i_5_n_1,i__carry__0_i_5_n_2,i__carry__0_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[24:21]),
        .S(i_reg[24:21]));
  CARRY4 i__carry__0_i_6
       (.CI(i__carry__0_i_7_n_0),
        .CO({i__carry__0_i_6_n_0,i__carry__0_i_6_n_1,i__carry__0_i_6_n_2,i__carry__0_i_6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[20:17]),
        .S(i_reg[20:17]));
  CARRY4 i__carry__0_i_7
       (.CI(\i_reg_rep[9]_i_1_n_0 ),
        .CO({i__carry__0_i_7_n_0,i__carry__0_i_7_n_1,i__carry__0_i_7_n_2,i__carry__0_i_7_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[16:13]),
        .S(i_reg[16:13]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__1_i_1
       (.I0(p_0_in[30]),
        .I1(p_0_in[31]),
        .O(i__carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_2
       (.I0(p_0_in[29]),
        .I1(p_0_in[28]),
        .I2(p_0_in[27]),
        .O(i__carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry__1_i_3
       (.I0(p_0_in[26]),
        .I1(p_0_in[25]),
        .I2(p_0_in[24]),
        .O(i__carry__1_i_3_n_0));
  CARRY4 i__carry__1_i_4
       (.CI(i__carry__1_i_5_n_0),
        .CO({NLW_i__carry__1_i_4_CO_UNCONNECTED[3:2],i__carry__1_i_4_n_2,i__carry__1_i_4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_i__carry__1_i_4_O_UNCONNECTED[3],p_0_in[31:29]}),
        .S({1'b0,i_reg[31:29]}));
  CARRY4 i__carry__1_i_5
       (.CI(i__carry__0_i_5_n_0),
        .CO({i__carry__1_i_5_n_0,i__carry__1_i_5_n_1,i__carry__1_i_5_n_2,i__carry__1_i_5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in[28:25]),
        .S(i_reg[28:25]));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_1
       (.I0(p_0_in[11]),
        .I1(p_0_in[10]),
        .I2(p_0_in__0[9]),
        .O(i__carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_2
       (.I0(p_0_in__0[8]),
        .I1(p_0_in__0[7]),
        .I2(p_0_in__0[6]),
        .O(i__carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    i__carry_i_3
       (.I0(p_0_in__0[5]),
        .I1(p_0_in__0[4]),
        .I2(p_0_in__0[3]),
        .O(i__carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    i__carry_i_4
       (.I0(p_0_in__0[2]),
        .I1(i_reg[0]),
        .I2(p_0_in__0[1]),
        .O(i__carry_i_4_n_0));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[0]_i_1_n_7 ),
        .Q(i_reg[0]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\i_reg[0]_i_1_n_0 ,\i_reg[0]_i_1_n_1 ,\i_reg[0]_i_1_n_2 ,\i_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\i_reg[0]_i_1_n_4 ,\i_reg[0]_i_1_n_5 ,\i_reg[0]_i_1_n_6 ,\i_reg[0]_i_1_n_7 }),
        .S({i_reg[3:1],\i[0]_i_2_n_0 }));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_5 ),
        .Q(i_reg[10]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_4 ),
        .Q(i_reg[11]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_7 ),
        .Q(i_reg[12]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg[12]_i_1 
       (.CI(\i_reg[8]_i_1_n_0 ),
        .CO({\i_reg[12]_i_1_n_0 ,\i_reg[12]_i_1_n_1 ,\i_reg[12]_i_1_n_2 ,\i_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[12]_i_1_n_4 ,\i_reg[12]_i_1_n_5 ,\i_reg[12]_i_1_n_6 ,\i_reg[12]_i_1_n_7 }),
        .S(i_reg[15:12]));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_6 ),
        .Q(i_reg[13]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_5 ),
        .Q(i_reg[14]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[12]_i_1_n_4 ),
        .Q(i_reg[15]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[16] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_7 ),
        .Q(i_reg[16]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg[16]_i_1 
       (.CI(\i_reg[12]_i_1_n_0 ),
        .CO({\i_reg[16]_i_1_n_0 ,\i_reg[16]_i_1_n_1 ,\i_reg[16]_i_1_n_2 ,\i_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[16]_i_1_n_4 ,\i_reg[16]_i_1_n_5 ,\i_reg[16]_i_1_n_6 ,\i_reg[16]_i_1_n_7 }),
        .S(i_reg[19:16]));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[17] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_6 ),
        .Q(i_reg[17]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[18] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_5 ),
        .Q(i_reg[18]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[19] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[16]_i_1_n_4 ),
        .Q(i_reg[19]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[0]_i_1_n_6 ),
        .Q(i_reg[1]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[20] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_7 ),
        .Q(i_reg[20]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg[20]_i_1 
       (.CI(\i_reg[16]_i_1_n_0 ),
        .CO({\i_reg[20]_i_1_n_0 ,\i_reg[20]_i_1_n_1 ,\i_reg[20]_i_1_n_2 ,\i_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[20]_i_1_n_4 ,\i_reg[20]_i_1_n_5 ,\i_reg[20]_i_1_n_6 ,\i_reg[20]_i_1_n_7 }),
        .S(i_reg[23:20]));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[21] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_6 ),
        .Q(i_reg[21]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[22] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_5 ),
        .Q(i_reg[22]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[23] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[20]_i_1_n_4 ),
        .Q(i_reg[23]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[24] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[24]_i_1_n_7 ),
        .Q(i_reg[24]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg[24]_i_1 
       (.CI(\i_reg[20]_i_1_n_0 ),
        .CO({\i_reg[24]_i_1_n_0 ,\i_reg[24]_i_1_n_1 ,\i_reg[24]_i_1_n_2 ,\i_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[24]_i_1_n_4 ,\i_reg[24]_i_1_n_5 ,\i_reg[24]_i_1_n_6 ,\i_reg[24]_i_1_n_7 }),
        .S(i_reg[27:24]));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[25] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[24]_i_1_n_6 ),
        .Q(i_reg[25]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[26] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[24]_i_1_n_5 ),
        .Q(i_reg[26]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[27] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[24]_i_1_n_4 ),
        .Q(i_reg[27]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[28] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[28]_i_1_n_7 ),
        .Q(i_reg[28]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg[28]_i_1 
       (.CI(\i_reg[24]_i_1_n_0 ),
        .CO({\NLW_i_reg[28]_i_1_CO_UNCONNECTED [3],\i_reg[28]_i_1_n_1 ,\i_reg[28]_i_1_n_2 ,\i_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[28]_i_1_n_4 ,\i_reg[28]_i_1_n_5 ,\i_reg[28]_i_1_n_6 ,\i_reg[28]_i_1_n_7 }),
        .S(i_reg[31:28]));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[29] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[28]_i_1_n_6 ),
        .Q(i_reg[29]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[0]_i_1_n_5 ),
        .Q(i_reg[2]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[30] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[28]_i_1_n_5 ),
        .Q(i_reg[30]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[31] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[28]_i_1_n_4 ),
        .Q(i_reg[31]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[0]_i_1_n_4 ),
        .Q(i_reg[3]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_7 ),
        .Q(i_reg[4]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg[4]_i_1 
       (.CI(\i_reg[0]_i_1_n_0 ),
        .CO({\i_reg[4]_i_1_n_0 ,\i_reg[4]_i_1_n_1 ,\i_reg[4]_i_1_n_2 ,\i_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[4]_i_1_n_4 ,\i_reg[4]_i_1_n_5 ,\i_reg[4]_i_1_n_6 ,\i_reg[4]_i_1_n_7 }),
        .S(i_reg[7:4]));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_6 ),
        .Q(i_reg[5]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_5 ),
        .Q(i_reg[6]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[4]_i_1_n_4 ),
        .Q(i_reg[7]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_7 ),
        .Q(i_reg[8]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg[8]_i_1 
       (.CI(\i_reg[4]_i_1_n_0 ),
        .CO({\i_reg[8]_i_1_n_0 ,\i_reg[8]_i_1_n_1 ,\i_reg[8]_i_1_n_2 ,\i_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\i_reg[8]_i_1_n_4 ,\i_reg[8]_i_1_n_5 ,\i_reg[8]_i_1_n_6 ,\i_reg[8]_i_1_n_7 }),
        .S(i_reg[11:8]));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(\i_reg[8]_i_1_n_6 ),
        .Q(i_reg[9]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[0]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(i[0]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[0]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[0]__0 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\i_reg_rep[0]__0_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[0]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[0]__0_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\i_reg_rep[0]__0_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[0]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[0]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(\i_reg_rep[0]_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[1]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(i[1]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[1]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[1]__0 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\i_reg_rep[1]__0_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[1]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[1]__0_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\i_reg_rep[1]__0_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[1]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[1]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(\i_reg_rep[1]_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[2]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(i[2]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[2]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[2]__0 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\i_reg_rep[2]__0_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[2]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[2]__0_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\i_reg_rep[2]__0_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[2]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[2]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(\i_reg_rep[2]_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[3]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(i[3]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[3]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[3]__0 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(\i_reg_rep[3]__0_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[3]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[3]__0_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(\i_reg_rep[3]__0_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[3]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[3]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(\i_reg_rep[3]_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[4]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(i[4]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[4]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[4]__0 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(\i_reg_rep[4]__0_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[4]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[4]__0_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(\i_reg_rep[4]__0_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg_rep[4]_i_1 
       (.CI(1'b0),
        .CO({\i_reg_rep[4]_i_1_n_0 ,\i_reg_rep[4]_i_1_n_1 ,\i_reg_rep[4]_i_1_n_2 ,\i_reg_rep[4]_i_1_n_3 }),
        .CYINIT(i_reg[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[4:1]),
        .S(i_reg[4:1]));
  (* ORIG_CELL_NAME = "i_reg_rep[4]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[4]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(\i_reg_rep[4]_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[5]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(i[5]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[5]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[5]__0 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(\i_reg_rep[5]__0_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[5]__0" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[5]__0_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(\i_reg_rep[5]__0_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* ORIG_CELL_NAME = "i_reg_rep[5]" *) 
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[5]_rep 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(\i_reg_rep[5]_rep_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(i[6]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[6]__0 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(\i_reg_rep[6]__0_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(i[7]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[7]__0 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(\i_reg_rep[7]__0_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(i[8]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[8]__0 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(\i_reg_rep[8]__0_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg_rep[8]_i_1 
       (.CI(\i_reg_rep[4]_i_1_n_0 ),
        .CO({\i_reg_rep[8]_i_1_n_0 ,\i_reg_rep[8]_i_1_n_1 ,\i_reg_rep[8]_i_1_n_2 ,\i_reg_rep[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__0[8:5]),
        .S(i_reg[8:5]));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(i[9]),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \i_reg_rep[9]__0 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(\i_reg_rep[9]__0_n_0 ),
        .R(\i0_inferred__0/i__carry__1_n_1 ));
  CARRY4 \i_reg_rep[9]_i_1 
       (.CI(\i_reg_rep[8]_i_1_n_0 ),
        .CO({\i_reg_rep[9]_i_1_n_0 ,\i_reg_rep[9]_i_1_n_1 ,\i_reg_rep[9]_i_1_n_2 ,\i_reg_rep[9]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({p_0_in[12:10],p_0_in__0[9]}),
        .S(i_reg[12:9]));
  LUT1 #(
    .INIT(2'h1)) 
    \i_rep[0]_i_1 
       (.I0(i_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    pwm_a_n_i_1
       (.I0(i[9]),
        .I1(pwm_a_p0_carry__0_n_0),
        .O(pwm_a_n_i_1_n_0));
  FDRE pwm_a_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(pwm_a_n_i_1_n_0),
        .Q(pwm_a_n),
        .R(1'b0));
  CARRY4 pwm_a_p0_carry
       (.CI(1'b0),
        .CO({pwm_a_p0_carry_n_0,pwm_a_p0_carry_n_1,pwm_a_p0_carry_n_2,pwm_a_p0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_a_p0_carry_i_1_n_0,pwm_a_p0_carry_i_2_n_0,pwm_a_p0_carry_i_3_n_0,pwm_a_p0_carry_i_4_n_0}),
        .O(NLW_pwm_a_p0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_a_p0_carry_i_5_n_0,pwm_a_p0_carry_i_6_n_0,pwm_a_p0_carry_i_7_n_0,pwm_a_p0_carry_i_8_n_0}));
  CARRY4 pwm_a_p0_carry__0
       (.CI(pwm_a_p0_carry_n_0),
        .CO({pwm_a_p0_carry__0_n_0,pwm_a_p0_carry__0_n_1,pwm_a_p0_carry__0_n_2,pwm_a_p0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_a_p0_carry__0_i_1_n_0,pwm_a_p0_carry__0_i_2_n_0,pwm_a_p0_carry__0_i_3_n_0,pwm_a_p0_carry__0_i_4_n_0}),
        .O(NLW_pwm_a_p0_carry__0_O_UNCONNECTED[3:0]),
        .S({pwm_a_p0_carry__0_i_5_n_0,pwm_a_p0_carry__0_i_6_n_0,pwm_a_p0_carry__0_i_7_n_0,pwm_a_p0_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h10)) 
    pwm_a_p0_carry__0_i_1
       (.I0(counter[15]),
        .I1(counter[14]),
        .I2(sine_abs[14]),
        .O(pwm_a_p0_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_a_p0_carry__0_i_2
       (.I0(sine_abs[13]),
        .I1(counter[13]),
        .I2(sine_abs[12]),
        .I3(counter[12]),
        .O(pwm_a_p0_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_a_p0_carry__0_i_3
       (.I0(sine_abs[11]),
        .I1(counter[11]),
        .I2(sine_abs[10]),
        .I3(counter[10]),
        .O(pwm_a_p0_carry__0_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_a_p0_carry__0_i_4
       (.I0(sine_abs[9]),
        .I1(counter[9]),
        .I2(sine_abs[8]),
        .I3(counter[8]),
        .O(pwm_a_p0_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    pwm_a_p0_carry__0_i_5
       (.I0(sine_abs[14]),
        .I1(counter[14]),
        .I2(counter[15]),
        .O(pwm_a_p0_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_a_p0_carry__0_i_6
       (.I0(counter[13]),
        .I1(sine_abs[13]),
        .I2(counter[12]),
        .I3(sine_abs[12]),
        .O(pwm_a_p0_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_a_p0_carry__0_i_7
       (.I0(counter[11]),
        .I1(sine_abs[11]),
        .I2(counter[10]),
        .I3(sine_abs[10]),
        .O(pwm_a_p0_carry__0_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_a_p0_carry__0_i_8
       (.I0(counter[9]),
        .I1(sine_abs[9]),
        .I2(counter[8]),
        .I3(sine_abs[8]),
        .O(pwm_a_p0_carry__0_i_8_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_a_p0_carry_i_1
       (.I0(sine_abs[7]),
        .I1(counter[7]),
        .I2(sine_abs[6]),
        .I3(counter[6]),
        .O(pwm_a_p0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_a_p0_carry_i_2
       (.I0(sine_abs[5]),
        .I1(counter[5]),
        .I2(sine_abs[4]),
        .I3(counter[4]),
        .O(pwm_a_p0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_a_p0_carry_i_3
       (.I0(sine_abs[3]),
        .I1(counter[3]),
        .I2(sine_abs[2]),
        .I3(counter[2]),
        .O(pwm_a_p0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_a_p0_carry_i_4
       (.I0(sine_abs[1]),
        .I1(counter[1]),
        .I2(sine_abs[0]),
        .I3(counter[0]),
        .O(pwm_a_p0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_a_p0_carry_i_5
       (.I0(counter[7]),
        .I1(sine_abs[7]),
        .I2(counter[6]),
        .I3(sine_abs[6]),
        .O(pwm_a_p0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_a_p0_carry_i_6
       (.I0(counter[5]),
        .I1(sine_abs[5]),
        .I2(counter[4]),
        .I3(sine_abs[4]),
        .O(pwm_a_p0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_a_p0_carry_i_7
       (.I0(counter[3]),
        .I1(sine_abs[3]),
        .I2(counter[2]),
        .I3(sine_abs[2]),
        .O(pwm_a_p0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_a_p0_carry_i_8
       (.I0(counter[1]),
        .I1(sine_abs[1]),
        .I2(counter[0]),
        .I3(sine_abs[0]),
        .O(pwm_a_p0_carry_i_8_n_0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h2)) 
    pwm_a_p_i_1
       (.I0(pwm_a_p0_carry__0_n_0),
        .I1(i[9]),
        .O(pwm_a_p_i_1_n_0));
  FDRE pwm_a_p_reg
       (.C(clk),
        .CE(1'b1),
        .D(pwm_a_p_i_1_n_0),
        .Q(pwm_a_p),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h28)) 
    pwm_b_n_i_1
       (.I0(pwm_b_p0_carry__0_n_0),
        .I1(\i_reg_rep[8]__0_n_0 ),
        .I2(\i_reg_rep[9]__0_n_0 ),
        .O(pwm_b_n_i_1_n_0));
  FDRE pwm_b_n_reg
       (.C(clk),
        .CE(1'b1),
        .D(pwm_b_n_i_1_n_0),
        .Q(pwm_b_n),
        .R(1'b0));
  CARRY4 pwm_b_p0_carry
       (.CI(1'b0),
        .CO({pwm_b_p0_carry_n_0,pwm_b_p0_carry_n_1,pwm_b_p0_carry_n_2,pwm_b_p0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_b_p0_carry_i_1__0_n_0,pwm_b_p0_carry_i_2_n_0,pwm_b_p0_carry_i_3_n_0,pwm_b_p0_carry_i_4_n_0}),
        .O(NLW_pwm_b_p0_carry_O_UNCONNECTED[3:0]),
        .S({pwm_b_p0_carry_i_5__0_n_0,pwm_b_p0_carry_i_6_n_0,pwm_b_p0_carry_i_7_n_0,pwm_b_p0_carry_i_8_n_0}));
  CARRY4 pwm_b_p0_carry__0
       (.CI(pwm_b_p0_carry_n_0),
        .CO({pwm_b_p0_carry__0_n_0,pwm_b_p0_carry__0_n_1,pwm_b_p0_carry__0_n_2,pwm_b_p0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({pwm_b_p0_carry_i_1_n_0,pwm_b_p0_carry_i_2__0_n_0,pwm_b_p0_carry_i_3__0_n_0,pwm_b_p0_carry_i_4__0_n_0}),
        .O(NLW_pwm_b_p0_carry__0_O_UNCONNECTED[3:0]),
        .S({pwm_b_p0_carry_i_5_n_0,pwm_b_p0_carry_i_6__0_n_0,pwm_b_p0_carry_i_7__0_n_0,pwm_b_p0_carry_i_8__0_n_0}));
  LUT3 #(
    .INIT(8'h10)) 
    pwm_b_p0_carry_i_1
       (.I0(counter[15]),
        .I1(counter[14]),
        .I2(cos_abs[14]),
        .O(pwm_b_p0_carry_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_b_p0_carry_i_1__0
       (.I0(cos_abs[7]),
        .I1(counter[7]),
        .I2(cos_abs[6]),
        .I3(counter[6]),
        .O(pwm_b_p0_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_b_p0_carry_i_2
       (.I0(cos_abs[5]),
        .I1(counter[5]),
        .I2(cos_abs[4]),
        .I3(counter[4]),
        .O(pwm_b_p0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_b_p0_carry_i_2__0
       (.I0(cos_abs[13]),
        .I1(counter[13]),
        .I2(cos_abs[12]),
        .I3(counter[12]),
        .O(pwm_b_p0_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_b_p0_carry_i_3
       (.I0(cos_abs[3]),
        .I1(counter[3]),
        .I2(cos_abs[2]),
        .I3(counter[2]),
        .O(pwm_b_p0_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_b_p0_carry_i_3__0
       (.I0(cos_abs[11]),
        .I1(counter[11]),
        .I2(cos_abs[10]),
        .I3(counter[10]),
        .O(pwm_b_p0_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_b_p0_carry_i_4
       (.I0(cos_abs[1]),
        .I1(counter[1]),
        .I2(cos_abs[0]),
        .I3(counter[0]),
        .O(pwm_b_p0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    pwm_b_p0_carry_i_4__0
       (.I0(cos_abs[9]),
        .I1(counter[9]),
        .I2(cos_abs[8]),
        .I3(counter[8]),
        .O(pwm_b_p0_carry_i_4__0_n_0));
  LUT3 #(
    .INIT(8'h09)) 
    pwm_b_p0_carry_i_5
       (.I0(cos_abs[14]),
        .I1(counter[14]),
        .I2(counter[15]),
        .O(pwm_b_p0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_b_p0_carry_i_5__0
       (.I0(cos_abs[7]),
        .I1(counter[7]),
        .I2(cos_abs[6]),
        .I3(counter[6]),
        .O(pwm_b_p0_carry_i_5__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_b_p0_carry_i_6
       (.I0(cos_abs[5]),
        .I1(counter[5]),
        .I2(cos_abs[4]),
        .I3(counter[4]),
        .O(pwm_b_p0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_b_p0_carry_i_6__0
       (.I0(cos_abs[13]),
        .I1(counter[13]),
        .I2(cos_abs[12]),
        .I3(counter[12]),
        .O(pwm_b_p0_carry_i_6__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_b_p0_carry_i_7
       (.I0(cos_abs[3]),
        .I1(counter[3]),
        .I2(cos_abs[2]),
        .I3(counter[2]),
        .O(pwm_b_p0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_b_p0_carry_i_7__0
       (.I0(cos_abs[11]),
        .I1(counter[11]),
        .I2(cos_abs[10]),
        .I3(counter[10]),
        .O(pwm_b_p0_carry_i_7__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_b_p0_carry_i_8
       (.I0(cos_abs[1]),
        .I1(counter[1]),
        .I2(cos_abs[0]),
        .I3(counter[0]),
        .O(pwm_b_p0_carry_i_8_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    pwm_b_p0_carry_i_8__0
       (.I0(cos_abs[9]),
        .I1(counter[9]),
        .I2(cos_abs[8]),
        .I3(counter[8]),
        .O(pwm_b_p0_carry_i_8__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h90)) 
    pwm_b_p_i_1
       (.I0(\i_reg_rep[8]__0_n_0 ),
        .I1(\i_reg_rep[9]__0_n_0 ),
        .I2(pwm_b_p0_carry__0_n_0),
        .O(pwm_b_p_i_1_n_0));
  FDRE pwm_b_p_reg
       (.C(clk),
        .CE(1'b1),
        .D(pwm_b_p_i_1_n_0),
        .Q(pwm_b_p),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[0]_i_1 
       (.I0(\sine_reg[0]_i_2_n_0 ),
        .I1(\sine_reg[0]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[0]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[0]_i_5_n_0 ),
        .O(p_0_out[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[10]_i_1 
       (.I0(\sine_reg[10]_i_2_n_0 ),
        .I1(\sine_reg[10]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[10]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[10]_i_5_n_0 ),
        .O(p_0_out[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[11]_i_1 
       (.I0(\sine_reg[11]_i_2_n_0 ),
        .I1(\sine_reg[11]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[11]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[11]_i_5_n_0 ),
        .O(p_0_out[11]));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \sine[12]_i_4 
       (.I0(g2_b12_n_0),
        .I1(i[7]),
        .I2(g1_b12_n_0),
        .I3(i[6]),
        .I4(g0_b12_n_0),
        .O(\sine[12]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \sine[12]_i_5 
       (.I0(g7_b12_n_0),
        .I1(g6_b12_n_0),
        .I2(i[7]),
        .I3(g5_b12_n_0),
        .I4(i[6]),
        .O(\sine[12]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \sine[12]_i_6 
       (.I0(g10_b12_n_0),
        .I1(i[7]),
        .I2(g9_b12_n_0),
        .I3(i[6]),
        .I4(g8_b12_n_0),
        .O(\sine[12]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \sine[12]_i_7 
       (.I0(g15_b12_n_0),
        .I1(g14_b12_n_0),
        .I2(i[7]),
        .I3(i[6]),
        .I4(g13_b12_n_0),
        .O(\sine[12]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFCBBFC88)) 
    \sine[13]_i_4 
       (.I0(g2_b13_n_0),
        .I1(i[7]),
        .I2(g1_b13_n_0),
        .I3(i[6]),
        .I4(g14_b14_n_0),
        .O(\sine[13]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFA0CFCF)) 
    \sine[13]_i_5 
       (.I0(g7_b13_n_0),
        .I1(g6_b13_n_0),
        .I2(i[7]),
        .I3(g5_b13_n_0),
        .I4(i[6]),
        .O(\sine[13]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \sine[13]_i_6 
       (.I0(g10_b13_n_0),
        .I1(i[7]),
        .I2(g9_b13_n_0),
        .I3(i[6]),
        .I4(g8_b13_n_0),
        .O(\sine[13]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \sine[13]_i_7 
       (.I0(g1_b14_n_0),
        .I1(g14_b13_n_0),
        .I2(i[7]),
        .I3(i[6]),
        .I4(g13_b13_n_0),
        .O(\sine[13]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h3F3CBCBC)) 
    \sine[14]_i_2 
       (.I0(g6_b14_n_0),
        .I1(i[8]),
        .I2(i[7]),
        .I3(g1_b14_n_0),
        .I4(i[6]),
        .O(\sine[14]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hC8C83303)) 
    \sine[14]_i_3 
       (.I0(g14_b14_n_0),
        .I1(i[8]),
        .I2(i[6]),
        .I3(g9_b14_n_0),
        .I4(i[7]),
        .O(\sine[14]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sine[15]_i_1 
       (.I0(i[9]),
        .O(p_0_in_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[1]_i_1 
       (.I0(\sine_reg[1]_i_2_n_0 ),
        .I1(\sine_reg[1]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[1]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[1]_i_5_n_0 ),
        .O(p_0_out[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[2]_i_1 
       (.I0(\sine_reg[2]_i_2_n_0 ),
        .I1(\sine_reg[2]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[2]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[2]_i_5_n_0 ),
        .O(p_0_out[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[3]_i_1 
       (.I0(\sine_reg[3]_i_2_n_0 ),
        .I1(\sine_reg[3]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[3]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[3]_i_5_n_0 ),
        .O(p_0_out[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[4]_i_1 
       (.I0(\sine_reg[4]_i_2_n_0 ),
        .I1(\sine_reg[4]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[4]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[4]_i_5_n_0 ),
        .O(p_0_out[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[5]_i_1 
       (.I0(\sine_reg[5]_i_2_n_0 ),
        .I1(\sine_reg[5]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[5]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[5]_i_5_n_0 ),
        .O(p_0_out[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[6]_i_1 
       (.I0(\sine_reg[6]_i_2_n_0 ),
        .I1(\sine_reg[6]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[6]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[6]_i_5_n_0 ),
        .O(p_0_out[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[7]_i_1 
       (.I0(\sine_reg[7]_i_2_n_0 ),
        .I1(\sine_reg[7]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[7]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[7]_i_5_n_0 ),
        .O(p_0_out[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[8]_i_1 
       (.I0(\sine_reg[8]_i_2_n_0 ),
        .I1(\sine_reg[8]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[8]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[8]_i_5_n_0 ),
        .O(p_0_out[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \sine[9]_i_1 
       (.I0(\sine_reg[9]_i_2_n_0 ),
        .I1(\sine_reg[9]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[9]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[9]_i_5_n_0 ),
        .O(p_0_out[9]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[0]_i_1 
       (.I0(\sine_reg[0]_i_2_n_0 ),
        .I1(\sine_reg[0]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[0]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[0]_i_5_n_0 ),
        .O(p_1_in[0]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[10]_i_1 
       (.I0(\sine_reg[10]_i_2_n_0 ),
        .I1(\sine_reg[10]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[10]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[10]_i_5_n_0 ),
        .O(p_1_in[10]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[11]_i_1 
       (.I0(\sine_reg[11]_i_2_n_0 ),
        .I1(\sine_reg[11]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[11]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[11]_i_5_n_0 ),
        .O(p_1_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sine_abs[12]_i_1 
       (.I0(p_0_out[12]),
        .I1(i[9]),
        .O(p_1_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sine_abs[13]_i_1 
       (.I0(p_0_out[13]),
        .I1(i[9]),
        .O(p_1_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sine_abs[14]_i_1 
       (.I0(p_0_out[14]),
        .I1(i[9]),
        .O(p_1_in[14]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[1]_i_1 
       (.I0(\sine_reg[1]_i_2_n_0 ),
        .I1(\sine_reg[1]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[1]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[1]_i_5_n_0 ),
        .O(p_1_in[1]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[2]_i_1 
       (.I0(\sine_reg[2]_i_2_n_0 ),
        .I1(\sine_reg[2]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[2]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[2]_i_5_n_0 ),
        .O(p_1_in[2]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[3]_i_1 
       (.I0(\sine_reg[3]_i_2_n_0 ),
        .I1(\sine_reg[3]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[3]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[3]_i_5_n_0 ),
        .O(p_1_in[3]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[4]_i_1 
       (.I0(\sine_reg[4]_i_2_n_0 ),
        .I1(\sine_reg[4]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[4]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[4]_i_5_n_0 ),
        .O(p_1_in[4]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[5]_i_1 
       (.I0(\sine_reg[5]_i_2_n_0 ),
        .I1(\sine_reg[5]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[5]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[5]_i_5_n_0 ),
        .O(p_1_in[5]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[6]_i_1 
       (.I0(\sine_reg[6]_i_2_n_0 ),
        .I1(\sine_reg[6]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[6]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[6]_i_5_n_0 ),
        .O(p_1_in[6]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[7]_i_1 
       (.I0(\sine_reg[7]_i_2_n_0 ),
        .I1(\sine_reg[7]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[7]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[7]_i_5_n_0 ),
        .O(p_1_in[7]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[8]_i_1 
       (.I0(\sine_reg[8]_i_2_n_0 ),
        .I1(\sine_reg[8]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[8]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[8]_i_5_n_0 ),
        .O(p_1_in[8]));
  LUT6 #(
    .INIT(64'h5F503F3F5F503030)) 
    \sine_abs[9]_i_1 
       (.I0(\sine_reg[9]_i_2_n_0 ),
        .I1(\sine_reg[9]_i_3_n_0 ),
        .I2(i[9]),
        .I3(\sine_reg[9]_i_4_n_0 ),
        .I4(i[8]),
        .I5(\sine_reg[9]_i_5_n_0 ),
        .O(p_1_in[9]));
  FDRE \sine_abs_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(sine_abs[0]),
        .R(1'b0));
  FDRE \sine_abs_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[10]),
        .Q(sine_abs[10]),
        .R(1'b0));
  FDRE \sine_abs_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[11]),
        .Q(sine_abs[11]),
        .R(1'b0));
  FDRE \sine_abs_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[12]),
        .Q(sine_abs[12]),
        .R(1'b0));
  FDRE \sine_abs_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[13]),
        .Q(sine_abs[13]),
        .R(1'b0));
  FDRE \sine_abs_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[14]),
        .Q(sine_abs[14]),
        .R(1'b0));
  FDRE \sine_abs_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(sine_abs[1]),
        .R(1'b0));
  FDRE \sine_abs_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(sine_abs[2]),
        .R(1'b0));
  FDRE \sine_abs_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(sine_abs[3]),
        .R(1'b0));
  FDRE \sine_abs_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(sine_abs[4]),
        .R(1'b0));
  FDRE \sine_abs_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[5]),
        .Q(sine_abs[5]),
        .R(1'b0));
  FDRE \sine_abs_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[6]),
        .Q(sine_abs[6]),
        .R(1'b0));
  FDRE \sine_abs_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[7]),
        .Q(sine_abs[7]),
        .R(1'b0));
  FDRE \sine_abs_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[8]),
        .Q(sine_abs[8]),
        .R(1'b0));
  FDRE \sine_abs_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_1_in[9]),
        .Q(sine_abs[9]),
        .R(1'b0));
  FDRE \sine_reg[0] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[0]),
        .Q(sine[0]),
        .R(1'b0));
  MUXF7 \sine_reg[0]_i_10 
       (.I0(g4_b0_n_0),
        .I1(g5_b0_n_0),
        .O(\sine_reg[0]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[0]_i_11 
       (.I0(g6_b0_n_0),
        .I1(g7_b0_n_0),
        .O(\sine_reg[0]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[0]_i_12 
       (.I0(g0_b0_n_0),
        .I1(g1_b0_n_0),
        .O(\sine_reg[0]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[0]_i_13 
       (.I0(g2_b0_n_0),
        .I1(g3_b0_n_0),
        .O(\sine_reg[0]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[0]_i_2 
       (.I0(\sine_reg[0]_i_6_n_0 ),
        .I1(\sine_reg[0]_i_7_n_0 ),
        .O(\sine_reg[0]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[0]_i_3 
       (.I0(\sine_reg[0]_i_8_n_0 ),
        .I1(\sine_reg[0]_i_9_n_0 ),
        .O(\sine_reg[0]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[0]_i_4 
       (.I0(\sine_reg[0]_i_10_n_0 ),
        .I1(\sine_reg[0]_i_11_n_0 ),
        .O(\sine_reg[0]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[0]_i_5 
       (.I0(\sine_reg[0]_i_12_n_0 ),
        .I1(\sine_reg[0]_i_13_n_0 ),
        .O(\sine_reg[0]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[0]_i_6 
       (.I0(g12_b0_n_0),
        .I1(g13_b0_n_0),
        .O(\sine_reg[0]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[0]_i_7 
       (.I0(g14_b0_n_0),
        .I1(g15_b0_n_0),
        .O(\sine_reg[0]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[0]_i_8 
       (.I0(g8_b0_n_0),
        .I1(g9_b0_n_0),
        .O(\sine_reg[0]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[0]_i_9 
       (.I0(g10_b0_n_0),
        .I1(g11_b0_n_0),
        .O(\sine_reg[0]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[10] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[10]),
        .Q(sine[10]),
        .R(1'b0));
  MUXF7 \sine_reg[10]_i_10 
       (.I0(g4_b10_n_0),
        .I1(g5_b10_n_0),
        .O(\sine_reg[10]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[10]_i_11 
       (.I0(g6_b10_n_0),
        .I1(g7_b10_n_0),
        .O(\sine_reg[10]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[10]_i_12 
       (.I0(g0_b10_n_0),
        .I1(g1_b10_n_0),
        .O(\sine_reg[10]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[10]_i_13 
       (.I0(g2_b10_n_0),
        .I1(g3_b10_n_0),
        .O(\sine_reg[10]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[10]_i_2 
       (.I0(\sine_reg[10]_i_6_n_0 ),
        .I1(\sine_reg[10]_i_7_n_0 ),
        .O(\sine_reg[10]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[10]_i_3 
       (.I0(\sine_reg[10]_i_8_n_0 ),
        .I1(\sine_reg[10]_i_9_n_0 ),
        .O(\sine_reg[10]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[10]_i_4 
       (.I0(\sine_reg[10]_i_10_n_0 ),
        .I1(\sine_reg[10]_i_11_n_0 ),
        .O(\sine_reg[10]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[10]_i_5 
       (.I0(\sine_reg[10]_i_12_n_0 ),
        .I1(\sine_reg[10]_i_13_n_0 ),
        .O(\sine_reg[10]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[10]_i_6 
       (.I0(g12_b10_n_0),
        .I1(g13_b10_n_0),
        .O(\sine_reg[10]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[10]_i_7 
       (.I0(g14_b10_n_0),
        .I1(g15_b10_n_0),
        .O(\sine_reg[10]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[10]_i_8 
       (.I0(g8_b10_n_0),
        .I1(g9_b10_n_0),
        .O(\sine_reg[10]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[10]_i_9 
       (.I0(g10_b10_n_0),
        .I1(g11_b10_n_0),
        .O(\sine_reg[10]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[11] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[11]),
        .Q(sine[11]),
        .R(1'b0));
  MUXF7 \sine_reg[11]_i_10 
       (.I0(g4_b11_n_0),
        .I1(g5_b11_n_0),
        .O(\sine_reg[11]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[11]_i_11 
       (.I0(g6_b11_n_0),
        .I1(g7_b11_n_0),
        .O(\sine_reg[11]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[11]_i_12 
       (.I0(g0_b11_n_0),
        .I1(g1_b11_n_0),
        .O(\sine_reg[11]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[11]_i_13 
       (.I0(g2_b11_n_0),
        .I1(g3_b11_n_0),
        .O(\sine_reg[11]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[11]_i_2 
       (.I0(\sine_reg[11]_i_6_n_0 ),
        .I1(\sine_reg[11]_i_7_n_0 ),
        .O(\sine_reg[11]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[11]_i_3 
       (.I0(\sine_reg[11]_i_8_n_0 ),
        .I1(\sine_reg[11]_i_9_n_0 ),
        .O(\sine_reg[11]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[11]_i_4 
       (.I0(\sine_reg[11]_i_10_n_0 ),
        .I1(\sine_reg[11]_i_11_n_0 ),
        .O(\sine_reg[11]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[11]_i_5 
       (.I0(\sine_reg[11]_i_12_n_0 ),
        .I1(\sine_reg[11]_i_13_n_0 ),
        .O(\sine_reg[11]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[11]_i_6 
       (.I0(g12_b11_n_0),
        .I1(g13_b11_n_0),
        .O(\sine_reg[11]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[11]_i_7 
       (.I0(g14_b11_n_0),
        .I1(g15_b11_n_0),
        .O(\sine_reg[11]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[11]_i_8 
       (.I0(g8_b11_n_0),
        .I1(g9_b11_n_0),
        .O(\sine_reg[11]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[11]_i_9 
       (.I0(g10_b11_n_0),
        .I1(g11_b11_n_0),
        .O(\sine_reg[11]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[12] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[12]),
        .Q(sine[12]),
        .R(1'b0));
  MUXF8 \sine_reg[12]_i_1 
       (.I0(\sine_reg[12]_i_2_n_0 ),
        .I1(\sine_reg[12]_i_3_n_0 ),
        .O(p_0_out[12]),
        .S(i[9]));
  MUXF7 \sine_reg[12]_i_2 
       (.I0(\sine[12]_i_4_n_0 ),
        .I1(\sine[12]_i_5_n_0 ),
        .O(\sine_reg[12]_i_2_n_0 ),
        .S(i[8]));
  MUXF7 \sine_reg[12]_i_3 
       (.I0(\sine[12]_i_6_n_0 ),
        .I1(\sine[12]_i_7_n_0 ),
        .O(\sine_reg[12]_i_3_n_0 ),
        .S(i[8]));
  FDRE \sine_reg[13] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[13]),
        .Q(sine[13]),
        .R(1'b0));
  MUXF8 \sine_reg[13]_i_1 
       (.I0(\sine_reg[13]_i_2_n_0 ),
        .I1(\sine_reg[13]_i_3_n_0 ),
        .O(p_0_out[13]),
        .S(i[9]));
  MUXF7 \sine_reg[13]_i_2 
       (.I0(\sine[13]_i_4_n_0 ),
        .I1(\sine[13]_i_5_n_0 ),
        .O(\sine_reg[13]_i_2_n_0 ),
        .S(i[8]));
  MUXF7 \sine_reg[13]_i_3 
       (.I0(\sine[13]_i_6_n_0 ),
        .I1(\sine[13]_i_7_n_0 ),
        .O(\sine_reg[13]_i_3_n_0 ),
        .S(i[8]));
  FDRE \sine_reg[14] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[14]),
        .Q(sine[14]),
        .R(1'b0));
  MUXF7 \sine_reg[14]_i_1 
       (.I0(\sine[14]_i_2_n_0 ),
        .I1(\sine[14]_i_3_n_0 ),
        .O(p_0_out[14]),
        .S(i[9]));
  FDRE \sine_reg[15] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_in_0),
        .Q(sine[15]),
        .R(1'b0));
  FDRE \sine_reg[1] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[1]),
        .Q(sine[1]),
        .R(1'b0));
  MUXF7 \sine_reg[1]_i_10 
       (.I0(g4_b1_n_0),
        .I1(g5_b1_n_0),
        .O(\sine_reg[1]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[1]_i_11 
       (.I0(g6_b1_n_0),
        .I1(g7_b1_n_0),
        .O(\sine_reg[1]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[1]_i_12 
       (.I0(g0_b1_n_0),
        .I1(g1_b1_n_0),
        .O(\sine_reg[1]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[1]_i_13 
       (.I0(g2_b1_n_0),
        .I1(g3_b1_n_0),
        .O(\sine_reg[1]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[1]_i_2 
       (.I0(\sine_reg[1]_i_6_n_0 ),
        .I1(\sine_reg[1]_i_7_n_0 ),
        .O(\sine_reg[1]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[1]_i_3 
       (.I0(\sine_reg[1]_i_8_n_0 ),
        .I1(\sine_reg[1]_i_9_n_0 ),
        .O(\sine_reg[1]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[1]_i_4 
       (.I0(\sine_reg[1]_i_10_n_0 ),
        .I1(\sine_reg[1]_i_11_n_0 ),
        .O(\sine_reg[1]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[1]_i_5 
       (.I0(\sine_reg[1]_i_12_n_0 ),
        .I1(\sine_reg[1]_i_13_n_0 ),
        .O(\sine_reg[1]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[1]_i_6 
       (.I0(g12_b1_n_0),
        .I1(g13_b1_n_0),
        .O(\sine_reg[1]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[1]_i_7 
       (.I0(g14_b1_n_0),
        .I1(g15_b1_n_0),
        .O(\sine_reg[1]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[1]_i_8 
       (.I0(g8_b1_n_0),
        .I1(g9_b1_n_0),
        .O(\sine_reg[1]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[1]_i_9 
       (.I0(g10_b1_n_0),
        .I1(g11_b1_n_0),
        .O(\sine_reg[1]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[2] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[2]),
        .Q(sine[2]),
        .R(1'b0));
  MUXF7 \sine_reg[2]_i_10 
       (.I0(g4_b2_n_0),
        .I1(g5_b2_n_0),
        .O(\sine_reg[2]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[2]_i_11 
       (.I0(g6_b2_n_0),
        .I1(g7_b2_n_0),
        .O(\sine_reg[2]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[2]_i_12 
       (.I0(g0_b2_n_0),
        .I1(g1_b2_n_0),
        .O(\sine_reg[2]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[2]_i_13 
       (.I0(g2_b2_n_0),
        .I1(g3_b2_n_0),
        .O(\sine_reg[2]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[2]_i_2 
       (.I0(\sine_reg[2]_i_6_n_0 ),
        .I1(\sine_reg[2]_i_7_n_0 ),
        .O(\sine_reg[2]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[2]_i_3 
       (.I0(\sine_reg[2]_i_8_n_0 ),
        .I1(\sine_reg[2]_i_9_n_0 ),
        .O(\sine_reg[2]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[2]_i_4 
       (.I0(\sine_reg[2]_i_10_n_0 ),
        .I1(\sine_reg[2]_i_11_n_0 ),
        .O(\sine_reg[2]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[2]_i_5 
       (.I0(\sine_reg[2]_i_12_n_0 ),
        .I1(\sine_reg[2]_i_13_n_0 ),
        .O(\sine_reg[2]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[2]_i_6 
       (.I0(g12_b2_n_0),
        .I1(g13_b2_n_0),
        .O(\sine_reg[2]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[2]_i_7 
       (.I0(g14_b2_n_0),
        .I1(g15_b2_n_0),
        .O(\sine_reg[2]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[2]_i_8 
       (.I0(g8_b2_n_0),
        .I1(g9_b2_n_0),
        .O(\sine_reg[2]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[2]_i_9 
       (.I0(g10_b2_n_0),
        .I1(g11_b2_n_0),
        .O(\sine_reg[2]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[3] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[3]),
        .Q(sine[3]),
        .R(1'b0));
  MUXF7 \sine_reg[3]_i_10 
       (.I0(g4_b3_n_0),
        .I1(g5_b3_n_0),
        .O(\sine_reg[3]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[3]_i_11 
       (.I0(g6_b3_n_0),
        .I1(g7_b3_n_0),
        .O(\sine_reg[3]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[3]_i_12 
       (.I0(g0_b3_n_0),
        .I1(g1_b3_n_0),
        .O(\sine_reg[3]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[3]_i_13 
       (.I0(g2_b3_n_0),
        .I1(g3_b3_n_0),
        .O(\sine_reg[3]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[3]_i_2 
       (.I0(\sine_reg[3]_i_6_n_0 ),
        .I1(\sine_reg[3]_i_7_n_0 ),
        .O(\sine_reg[3]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[3]_i_3 
       (.I0(\sine_reg[3]_i_8_n_0 ),
        .I1(\sine_reg[3]_i_9_n_0 ),
        .O(\sine_reg[3]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[3]_i_4 
       (.I0(\sine_reg[3]_i_10_n_0 ),
        .I1(\sine_reg[3]_i_11_n_0 ),
        .O(\sine_reg[3]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[3]_i_5 
       (.I0(\sine_reg[3]_i_12_n_0 ),
        .I1(\sine_reg[3]_i_13_n_0 ),
        .O(\sine_reg[3]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[3]_i_6 
       (.I0(g12_b3_n_0),
        .I1(g13_b3_n_0),
        .O(\sine_reg[3]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[3]_i_7 
       (.I0(g14_b3_n_0),
        .I1(g15_b3_n_0),
        .O(\sine_reg[3]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[3]_i_8 
       (.I0(g8_b3_n_0),
        .I1(g9_b3_n_0),
        .O(\sine_reg[3]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[3]_i_9 
       (.I0(g10_b3_n_0),
        .I1(g11_b3_n_0),
        .O(\sine_reg[3]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[4] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[4]),
        .Q(sine[4]),
        .R(1'b0));
  MUXF7 \sine_reg[4]_i_10 
       (.I0(g4_b4_n_0),
        .I1(g5_b4_n_0),
        .O(\sine_reg[4]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[4]_i_11 
       (.I0(g6_b4_n_0),
        .I1(g7_b4_n_0),
        .O(\sine_reg[4]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[4]_i_12 
       (.I0(g0_b4_n_0),
        .I1(g1_b4_n_0),
        .O(\sine_reg[4]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[4]_i_13 
       (.I0(g2_b4_n_0),
        .I1(g3_b4_n_0),
        .O(\sine_reg[4]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[4]_i_2 
       (.I0(\sine_reg[4]_i_6_n_0 ),
        .I1(\sine_reg[4]_i_7_n_0 ),
        .O(\sine_reg[4]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[4]_i_3 
       (.I0(\sine_reg[4]_i_8_n_0 ),
        .I1(\sine_reg[4]_i_9_n_0 ),
        .O(\sine_reg[4]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[4]_i_4 
       (.I0(\sine_reg[4]_i_10_n_0 ),
        .I1(\sine_reg[4]_i_11_n_0 ),
        .O(\sine_reg[4]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[4]_i_5 
       (.I0(\sine_reg[4]_i_12_n_0 ),
        .I1(\sine_reg[4]_i_13_n_0 ),
        .O(\sine_reg[4]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[4]_i_6 
       (.I0(g12_b4_n_0),
        .I1(g13_b4_n_0),
        .O(\sine_reg[4]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[4]_i_7 
       (.I0(g14_b4_n_0),
        .I1(g15_b4_n_0),
        .O(\sine_reg[4]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[4]_i_8 
       (.I0(g8_b4_n_0),
        .I1(g9_b4_n_0),
        .O(\sine_reg[4]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[4]_i_9 
       (.I0(g10_b4_n_0),
        .I1(g11_b4_n_0),
        .O(\sine_reg[4]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[5] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[5]),
        .Q(sine[5]),
        .R(1'b0));
  MUXF7 \sine_reg[5]_i_10 
       (.I0(g4_b5_n_0),
        .I1(g5_b5_n_0),
        .O(\sine_reg[5]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[5]_i_11 
       (.I0(g6_b5_n_0),
        .I1(g7_b5_n_0),
        .O(\sine_reg[5]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[5]_i_12 
       (.I0(g0_b5_n_0),
        .I1(g1_b5_n_0),
        .O(\sine_reg[5]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[5]_i_13 
       (.I0(g2_b5_n_0),
        .I1(g3_b5_n_0),
        .O(\sine_reg[5]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[5]_i_2 
       (.I0(\sine_reg[5]_i_6_n_0 ),
        .I1(\sine_reg[5]_i_7_n_0 ),
        .O(\sine_reg[5]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[5]_i_3 
       (.I0(\sine_reg[5]_i_8_n_0 ),
        .I1(\sine_reg[5]_i_9_n_0 ),
        .O(\sine_reg[5]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[5]_i_4 
       (.I0(\sine_reg[5]_i_10_n_0 ),
        .I1(\sine_reg[5]_i_11_n_0 ),
        .O(\sine_reg[5]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[5]_i_5 
       (.I0(\sine_reg[5]_i_12_n_0 ),
        .I1(\sine_reg[5]_i_13_n_0 ),
        .O(\sine_reg[5]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[5]_i_6 
       (.I0(g12_b5_n_0),
        .I1(g13_b5_n_0),
        .O(\sine_reg[5]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[5]_i_7 
       (.I0(g14_b5_n_0),
        .I1(g15_b5_n_0),
        .O(\sine_reg[5]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[5]_i_8 
       (.I0(g8_b5_n_0),
        .I1(g9_b5_n_0),
        .O(\sine_reg[5]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[5]_i_9 
       (.I0(g10_b5_n_0),
        .I1(g11_b5_n_0),
        .O(\sine_reg[5]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[6] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[6]),
        .Q(sine[6]),
        .R(1'b0));
  MUXF7 \sine_reg[6]_i_10 
       (.I0(g4_b6_n_0),
        .I1(g5_b6_n_0),
        .O(\sine_reg[6]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[6]_i_11 
       (.I0(g6_b6_n_0),
        .I1(g7_b6_n_0),
        .O(\sine_reg[6]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[6]_i_12 
       (.I0(g0_b6_n_0),
        .I1(g1_b6_n_0),
        .O(\sine_reg[6]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[6]_i_13 
       (.I0(g2_b6_n_0),
        .I1(g3_b6_n_0),
        .O(\sine_reg[6]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[6]_i_2 
       (.I0(\sine_reg[6]_i_6_n_0 ),
        .I1(\sine_reg[6]_i_7_n_0 ),
        .O(\sine_reg[6]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[6]_i_3 
       (.I0(\sine_reg[6]_i_8_n_0 ),
        .I1(\sine_reg[6]_i_9_n_0 ),
        .O(\sine_reg[6]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[6]_i_4 
       (.I0(\sine_reg[6]_i_10_n_0 ),
        .I1(\sine_reg[6]_i_11_n_0 ),
        .O(\sine_reg[6]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[6]_i_5 
       (.I0(\sine_reg[6]_i_12_n_0 ),
        .I1(\sine_reg[6]_i_13_n_0 ),
        .O(\sine_reg[6]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[6]_i_6 
       (.I0(g12_b6_n_0),
        .I1(g13_b6_n_0),
        .O(\sine_reg[6]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[6]_i_7 
       (.I0(g14_b6_n_0),
        .I1(g15_b6_n_0),
        .O(\sine_reg[6]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[6]_i_8 
       (.I0(g8_b6_n_0),
        .I1(g9_b6_n_0),
        .O(\sine_reg[6]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[6]_i_9 
       (.I0(g10_b6_n_0),
        .I1(g11_b6_n_0),
        .O(\sine_reg[6]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[7] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[7]),
        .Q(sine[7]),
        .R(1'b0));
  MUXF7 \sine_reg[7]_i_10 
       (.I0(g4_b7_n_0),
        .I1(g5_b7_n_0),
        .O(\sine_reg[7]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[7]_i_11 
       (.I0(g6_b7_n_0),
        .I1(g7_b7_n_0),
        .O(\sine_reg[7]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[7]_i_12 
       (.I0(g0_b7_n_0),
        .I1(g1_b7_n_0),
        .O(\sine_reg[7]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[7]_i_13 
       (.I0(g2_b7_n_0),
        .I1(g3_b7_n_0),
        .O(\sine_reg[7]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[7]_i_2 
       (.I0(\sine_reg[7]_i_6_n_0 ),
        .I1(\sine_reg[7]_i_7_n_0 ),
        .O(\sine_reg[7]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[7]_i_3 
       (.I0(\sine_reg[7]_i_8_n_0 ),
        .I1(\sine_reg[7]_i_9_n_0 ),
        .O(\sine_reg[7]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[7]_i_4 
       (.I0(\sine_reg[7]_i_10_n_0 ),
        .I1(\sine_reg[7]_i_11_n_0 ),
        .O(\sine_reg[7]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[7]_i_5 
       (.I0(\sine_reg[7]_i_12_n_0 ),
        .I1(\sine_reg[7]_i_13_n_0 ),
        .O(\sine_reg[7]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[7]_i_6 
       (.I0(g12_b7_n_0),
        .I1(g13_b7_n_0),
        .O(\sine_reg[7]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[7]_i_7 
       (.I0(g14_b7_n_0),
        .I1(g15_b7_n_0),
        .O(\sine_reg[7]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[7]_i_8 
       (.I0(g8_b7_n_0),
        .I1(g9_b7_n_0),
        .O(\sine_reg[7]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[7]_i_9 
       (.I0(g10_b7_n_0),
        .I1(g11_b7_n_0),
        .O(\sine_reg[7]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[8] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[8]),
        .Q(sine[8]),
        .R(1'b0));
  MUXF7 \sine_reg[8]_i_10 
       (.I0(g4_b8_n_0),
        .I1(g5_b8_n_0),
        .O(\sine_reg[8]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[8]_i_11 
       (.I0(g6_b8_n_0),
        .I1(g7_b8_n_0),
        .O(\sine_reg[8]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[8]_i_12 
       (.I0(g0_b8_n_0),
        .I1(g1_b8_n_0),
        .O(\sine_reg[8]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[8]_i_13 
       (.I0(g2_b8_n_0),
        .I1(g3_b8_n_0),
        .O(\sine_reg[8]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[8]_i_2 
       (.I0(\sine_reg[8]_i_6_n_0 ),
        .I1(\sine_reg[8]_i_7_n_0 ),
        .O(\sine_reg[8]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[8]_i_3 
       (.I0(\sine_reg[8]_i_8_n_0 ),
        .I1(\sine_reg[8]_i_9_n_0 ),
        .O(\sine_reg[8]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[8]_i_4 
       (.I0(\sine_reg[8]_i_10_n_0 ),
        .I1(\sine_reg[8]_i_11_n_0 ),
        .O(\sine_reg[8]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[8]_i_5 
       (.I0(\sine_reg[8]_i_12_n_0 ),
        .I1(\sine_reg[8]_i_13_n_0 ),
        .O(\sine_reg[8]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[8]_i_6 
       (.I0(g12_b8_n_0),
        .I1(g13_b8_n_0),
        .O(\sine_reg[8]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[8]_i_7 
       (.I0(g14_b8_n_0),
        .I1(g15_b8_n_0),
        .O(\sine_reg[8]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[8]_i_8 
       (.I0(g8_b8_n_0),
        .I1(g9_b8_n_0),
        .O(\sine_reg[8]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[8]_i_9 
       (.I0(g10_b8_n_0),
        .I1(g11_b8_n_0),
        .O(\sine_reg[8]_i_9_n_0 ),
        .S(i[6]));
  FDRE \sine_reg[9] 
       (.C(clk),
        .CE(1'b1),
        .D(p_0_out[9]),
        .Q(sine[9]),
        .R(1'b0));
  MUXF7 \sine_reg[9]_i_10 
       (.I0(g4_b9_n_0),
        .I1(g5_b9_n_0),
        .O(\sine_reg[9]_i_10_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[9]_i_11 
       (.I0(g6_b9_n_0),
        .I1(g7_b9_n_0),
        .O(\sine_reg[9]_i_11_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[9]_i_12 
       (.I0(g0_b9_n_0),
        .I1(g1_b9_n_0),
        .O(\sine_reg[9]_i_12_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[9]_i_13 
       (.I0(g2_b9_n_0),
        .I1(g3_b9_n_0),
        .O(\sine_reg[9]_i_13_n_0 ),
        .S(i[6]));
  MUXF8 \sine_reg[9]_i_2 
       (.I0(\sine_reg[9]_i_6_n_0 ),
        .I1(\sine_reg[9]_i_7_n_0 ),
        .O(\sine_reg[9]_i_2_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[9]_i_3 
       (.I0(\sine_reg[9]_i_8_n_0 ),
        .I1(\sine_reg[9]_i_9_n_0 ),
        .O(\sine_reg[9]_i_3_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[9]_i_4 
       (.I0(\sine_reg[9]_i_10_n_0 ),
        .I1(\sine_reg[9]_i_11_n_0 ),
        .O(\sine_reg[9]_i_4_n_0 ),
        .S(i[7]));
  MUXF8 \sine_reg[9]_i_5 
       (.I0(\sine_reg[9]_i_12_n_0 ),
        .I1(\sine_reg[9]_i_13_n_0 ),
        .O(\sine_reg[9]_i_5_n_0 ),
        .S(i[7]));
  MUXF7 \sine_reg[9]_i_6 
       (.I0(g12_b9_n_0),
        .I1(g13_b9_n_0),
        .O(\sine_reg[9]_i_6_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[9]_i_7 
       (.I0(g14_b9_n_0),
        .I1(g15_b9_n_0),
        .O(\sine_reg[9]_i_7_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[9]_i_8 
       (.I0(g8_b9_n_0),
        .I1(g9_b9_n_0),
        .O(\sine_reg[9]_i_8_n_0 ),
        .S(i[6]));
  MUXF7 \sine_reg[9]_i_9 
       (.I0(g10_b9_n_0),
        .I1(g11_b9_n_0),
        .O(\sine_reg[9]_i_9_n_0 ),
        .S(i[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
