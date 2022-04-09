// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  4 20:54:53 2021
// Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/James
//               Kibii/OneDrive/Dokumente/Vivado/SoC_Projects/Stepper_Motor_v3/Stepper_Motor_v3.srcs/sources_1/bd/system/ip/system_step_changer_0_0/system_step_changer_0_0_stub.v}
// Design      : system_step_changer_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "step_changer,Vivado 2018.2" *)
module system_step_changer_0_0(step_signal, step_type)
/* synthesis syn_black_box black_box_pad_pin="step_signal,step_type[11:0]" */;
  input step_signal;
  output [11:0]step_type;
endmodule
