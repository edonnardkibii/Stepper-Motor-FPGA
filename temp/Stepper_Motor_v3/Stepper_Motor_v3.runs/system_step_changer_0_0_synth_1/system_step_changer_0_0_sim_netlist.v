// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  4 20:54:53 2021
// Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_step_changer_0_0_sim_netlist.v
// Design      : system_step_changer_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_step_changer
   (step_type,
    step_signal);
  output [4:0]step_type;
  input step_signal;

  wire [2:0]p_0_in;
  wire [2:0]sel;
  wire step_signal;
  wire [4:0]step_type;
  wire \step_type_inferred__0/i__n_0 ;
  wire \step_type_reg[10]_i_1_n_0 ;
  wire \step_type_reg[11]_i_1_n_0 ;
  wire \step_type_reg[8]_i_1_n_0 ;
  wire \step_type_reg[9]_i_1_n_0 ;

  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \sel[0]_i_1 
       (.I0(sel[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sel[1]_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sel[2]_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .I2(sel[2]),
        .O(p_0_in[2]));
  FDRE #(
    .INIT(1'b0)) 
    \sel_reg[0] 
       (.C(step_signal),
        .CE(1'b1),
        .D(p_0_in[0]),
        .Q(sel[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sel_reg[1] 
       (.C(step_signal),
        .CE(1'b1),
        .D(p_0_in[1]),
        .Q(sel[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \sel_reg[2] 
       (.C(step_signal),
        .CE(1'b1),
        .D(p_0_in[2]),
        .Q(sel[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h57)) 
    \step_type_inferred__0/i_ 
       (.I0(sel[2]),
        .I1(sel[1]),
        .I2(sel[0]),
        .O(\step_type_inferred__0/i__n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \step_type_reg[10] 
       (.CLR(1'b0),
        .D(\step_type_reg[10]_i_1_n_0 ),
        .G(\step_type_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(step_type[3]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \step_type_reg[10]_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(\step_type_reg[10]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \step_type_reg[11] 
       (.CLR(1'b0),
        .D(\step_type_reg[11]_i_1_n_0 ),
        .G(\step_type_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(step_type[4]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \step_type_reg[11]_i_1 
       (.I0(sel[2]),
        .I1(sel[0]),
        .I2(sel[1]),
        .O(\step_type_reg[11]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \step_type_reg[7] 
       (.CLR(1'b0),
        .D(sel[2]),
        .G(\step_type_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(step_type[0]));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \step_type_reg[8] 
       (.CLR(1'b0),
        .D(\step_type_reg[8]_i_1_n_0 ),
        .G(\step_type_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(step_type[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \step_type_reg[8]_i_1 
       (.I0(sel[0]),
        .I1(sel[1]),
        .O(\step_type_reg[8]_i_1_n_0 ));
  (* XILINX_LEGACY_PRIM = "LD" *) 
  LDCE #(
    .INIT(1'b0)) 
    \step_type_reg[9] 
       (.CLR(1'b0),
        .D(\step_type_reg[9]_i_1_n_0 ),
        .G(\step_type_inferred__0/i__n_0 ),
        .GE(1'b1),
        .Q(step_type[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \step_type_reg[9]_i_1 
       (.I0(sel[1]),
        .I1(sel[0]),
        .O(\step_type_reg[9]_i_1_n_0 ));
endmodule

(* CHECK_LICENSE_TYPE = "system_step_changer_0_0,step_changer,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "step_changer,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (step_signal,
    step_type);
  input step_signal;
  output [11:0]step_type;

  wire \<const0> ;
  wire step_signal;
  wire [11:7]\^step_type ;

  assign step_type[11:7] = \^step_type [11:7];
  assign step_type[6] = \<const0> ;
  assign step_type[5] = \<const0> ;
  assign step_type[4] = \<const0> ;
  assign step_type[3] = \<const0> ;
  assign step_type[2] = \<const0> ;
  assign step_type[1] = \<const0> ;
  assign step_type[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_step_changer inst
       (.step_signal(step_signal),
        .step_type(\^step_type ));
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
