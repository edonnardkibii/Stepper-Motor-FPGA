// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Thu Feb  4 20:54:43 2021
// Host        : DESKTOP-6VD7SQA running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_speed_ctrl_0_0_sim_netlist.v
// Design      : system_speed_ctrl_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_speed_ctrl
   (new_clock,
    clock,
    time_divider);
  output new_clock;
  input clock;
  input [11:0]time_divider;

  wire clock;
  wire counter0_carry__0_n_2;
  wire counter0_carry__0_n_3;
  wire counter0_carry_i_1__0_n_0;
  wire counter0_carry_i_1_n_0;
  wire counter0_carry_i_2__0_n_0;
  wire counter0_carry_i_2_n_0;
  wire counter0_carry_i_3__0_n_0;
  wire counter0_carry_i_3_n_0;
  wire counter0_carry_i_4__0_n_0;
  wire counter0_carry_i_4_n_0;
  wire counter0_carry_i_5_n_0;
  wire counter0_carry_i_6_n_0;
  wire counter0_carry_i_7_n_0;
  wire counter0_carry_i_8_n_0;
  wire counter0_carry_n_0;
  wire counter0_carry_n_1;
  wire counter0_carry_n_2;
  wire counter0_carry_n_3;
  wire [11:1]counter1;
  wire counter1_carry__0_i_1_n_0;
  wire counter1_carry__0_i_2_n_0;
  wire counter1_carry__0_i_3_n_0;
  wire counter1_carry__0_i_4_n_0;
  wire counter1_carry__0_n_0;
  wire counter1_carry__0_n_1;
  wire counter1_carry__0_n_2;
  wire counter1_carry__0_n_3;
  wire counter1_carry__1_i_1_n_0;
  wire counter1_carry__1_i_2_n_0;
  wire counter1_carry__1_i_3_n_0;
  wire counter1_carry__1_n_2;
  wire counter1_carry__1_n_3;
  wire counter1_carry_i_1_n_0;
  wire counter1_carry_i_2_n_0;
  wire counter1_carry_i_3_n_0;
  wire counter1_carry_i_4_n_0;
  wire counter1_carry_n_0;
  wire counter1_carry_n_1;
  wire counter1_carry_n_2;
  wire counter1_carry_n_3;
  wire \counter[10]_i_1_n_0 ;
  wire \counter[10]_i_3_n_0 ;
  wire \counter[10]_i_4_n_0 ;
  wire \counter[10]_i_5_n_0 ;
  wire \counter[10]_i_6_n_0 ;
  wire \counter[10]_i_7_n_0 ;
  wire \counter[9]_i_2_n_0 ;
  wire [10:0]counter_reg__0;
  wire new_clock;
  wire new_clock_i_2_n_0;
  wire new_clock_i_3_n_0;
  wire p_0_in;
  wire [10:0]p_0_in__0;
  wire [11:0]time_divider;
  wire [3:0]NLW_counter0_carry_O_UNCONNECTED;
  wire [3:2]NLW_counter0_carry__0_CO_UNCONNECTED;
  wire [3:0]NLW_counter0_carry__0_O_UNCONNECTED;
  wire [3:2]NLW_counter1_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_counter1_carry__1_O_UNCONNECTED;

  CARRY4 counter0_carry
       (.CI(1'b0),
        .CO({counter0_carry_n_0,counter0_carry_n_1,counter0_carry_n_2,counter0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({counter0_carry_i_1_n_0,counter0_carry_i_2_n_0,counter0_carry_i_3_n_0,counter0_carry_i_4_n_0}),
        .O(NLW_counter0_carry_O_UNCONNECTED[3:0]),
        .S({counter0_carry_i_5_n_0,counter0_carry_i_6_n_0,counter0_carry_i_7_n_0,counter0_carry_i_8_n_0}));
  CARRY4 counter0_carry__0
       (.CI(counter0_carry_n_0),
        .CO({NLW_counter0_carry__0_CO_UNCONNECTED[3:2],counter0_carry__0_n_2,counter0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,counter0_carry_i_1__0_n_0,counter0_carry_i_2__0_n_0}),
        .O(NLW_counter0_carry__0_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,counter0_carry_i_3__0_n_0,counter0_carry_i_4__0_n_0}));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter0_carry_i_1
       (.I0(counter_reg__0[7]),
        .I1(counter1[7]),
        .I2(counter_reg__0[6]),
        .I3(counter1[6]),
        .O(counter0_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    counter0_carry_i_1__0
       (.I0(counter1[11]),
        .I1(counter_reg__0[10]),
        .I2(counter1[10]),
        .O(counter0_carry_i_1__0_n_0));
  LUT4 #(
    .INIT(16'h7510)) 
    counter0_carry_i_2
       (.I0(counter1[5]),
        .I1(counter1[4]),
        .I2(counter_reg__0[4]),
        .I3(counter_reg__0[5]),
        .O(counter0_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter0_carry_i_2__0
       (.I0(counter_reg__0[9]),
        .I1(counter1[9]),
        .I2(counter_reg__0[8]),
        .I3(counter1[8]),
        .O(counter0_carry_i_2__0_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    counter0_carry_i_3
       (.I0(counter_reg__0[3]),
        .I1(counter1[3]),
        .I2(counter_reg__0[2]),
        .I3(counter1[2]),
        .O(counter0_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h21)) 
    counter0_carry_i_3__0
       (.I0(counter1[10]),
        .I1(counter1[11]),
        .I2(counter_reg__0[10]),
        .O(counter0_carry_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hD444)) 
    counter0_carry_i_4
       (.I0(counter1[1]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(time_divider[0]),
        .O(counter0_carry_i_4_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter0_carry_i_4__0
       (.I0(counter1[8]),
        .I1(counter_reg__0[8]),
        .I2(counter1[9]),
        .I3(counter_reg__0[9]),
        .O(counter0_carry_i_4__0_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter0_carry_i_5
       (.I0(counter1[6]),
        .I1(counter_reg__0[6]),
        .I2(counter1[7]),
        .I3(counter_reg__0[7]),
        .O(counter0_carry_i_5_n_0));
  LUT4 #(
    .INIT(16'h8421)) 
    counter0_carry_i_6
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[5]),
        .I2(counter1[4]),
        .I3(counter1[5]),
        .O(counter0_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    counter0_carry_i_7
       (.I0(counter1[3]),
        .I1(counter_reg__0[3]),
        .I2(counter1[2]),
        .I3(counter_reg__0[2]),
        .O(counter0_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h2184)) 
    counter0_carry_i_8
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .I2(counter1[1]),
        .I3(time_divider[0]),
        .O(counter0_carry_i_8_n_0));
  CARRY4 counter1_carry
       (.CI(1'b0),
        .CO({counter1_carry_n_0,counter1_carry_n_1,counter1_carry_n_2,counter1_carry_n_3}),
        .CYINIT(time_divider[0]),
        .DI(time_divider[4:1]),
        .O(counter1[4:1]),
        .S({counter1_carry_i_1_n_0,counter1_carry_i_2_n_0,counter1_carry_i_3_n_0,counter1_carry_i_4_n_0}));
  CARRY4 counter1_carry__0
       (.CI(counter1_carry_n_0),
        .CO({counter1_carry__0_n_0,counter1_carry__0_n_1,counter1_carry__0_n_2,counter1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(time_divider[8:5]),
        .O(counter1[8:5]),
        .S({counter1_carry__0_i_1_n_0,counter1_carry__0_i_2_n_0,counter1_carry__0_i_3_n_0,counter1_carry__0_i_4_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__0_i_1
       (.I0(time_divider[8]),
        .O(counter1_carry__0_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__0_i_2
       (.I0(time_divider[7]),
        .O(counter1_carry__0_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__0_i_3
       (.I0(time_divider[6]),
        .O(counter1_carry__0_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__0_i_4
       (.I0(time_divider[5]),
        .O(counter1_carry__0_i_4_n_0));
  CARRY4 counter1_carry__1
       (.CI(counter1_carry__0_n_0),
        .CO({NLW_counter1_carry__1_CO_UNCONNECTED[3:2],counter1_carry__1_n_2,counter1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,time_divider[10:9]}),
        .O({NLW_counter1_carry__1_O_UNCONNECTED[3],counter1[11:9]}),
        .S({1'b0,counter1_carry__1_i_1_n_0,counter1_carry__1_i_2_n_0,counter1_carry__1_i_3_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__1_i_1
       (.I0(time_divider[11]),
        .O(counter1_carry__1_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__1_i_2
       (.I0(time_divider[10]),
        .O(counter1_carry__1_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry__1_i_3
       (.I0(time_divider[9]),
        .O(counter1_carry__1_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry_i_1
       (.I0(time_divider[4]),
        .O(counter1_carry_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry_i_2
       (.I0(time_divider[3]),
        .O(counter1_carry_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry_i_3
       (.I0(time_divider[2]),
        .O(counter1_carry_i_3_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    counter1_carry_i_4
       (.I0(time_divider[1]),
        .O(counter1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \counter[0]_i_1 
       (.I0(counter_reg__0[0]),
        .O(p_0_in__0[0]));
  LUT6 #(
    .INIT(64'hFEFEFEFAAAAAAAAA)) 
    \counter[10]_i_1 
       (.I0(\counter[10]_i_3_n_0 ),
        .I1(\counter[10]_i_4_n_0 ),
        .I2(\counter[10]_i_5_n_0 ),
        .I3(time_divider[2]),
        .I4(time_divider[3]),
        .I5(counter0_carry__0_n_2),
        .O(\counter[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hDFFF2000)) 
    \counter[10]_i_2 
       (.I0(counter_reg__0[9]),
        .I1(new_clock_i_3_n_0),
        .I2(\counter[10]_i_6_n_0 ),
        .I3(counter_reg__0[8]),
        .I4(counter_reg__0[10]),
        .O(p_0_in__0[10]));
  LUT6 #(
    .INIT(64'hAAAAFEFFAAAAAAAA)) 
    \counter[10]_i_3 
       (.I0(new_clock_i_2_n_0),
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[2]),
        .I3(\counter[10]_i_7_n_0 ),
        .I4(new_clock_i_3_n_0),
        .I5(counter_reg__0[8]),
        .O(\counter[10]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \counter[10]_i_4 
       (.I0(time_divider[4]),
        .I1(time_divider[5]),
        .I2(time_divider[6]),
        .I3(time_divider[8]),
        .I4(time_divider[7]),
        .O(\counter[10]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \counter[10]_i_5 
       (.I0(time_divider[9]),
        .I1(time_divider[11]),
        .I2(time_divider[10]),
        .O(\counter[10]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \counter[10]_i_6 
       (.I0(counter_reg__0[3]),
        .I1(counter_reg__0[2]),
        .I2(counter_reg__0[1]),
        .I3(counter_reg__0[0]),
        .O(\counter[10]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[10]_i_7 
       (.I0(counter_reg__0[1]),
        .I1(counter_reg__0[0]),
        .O(\counter[10]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \counter[1]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[3]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[0]),
        .I3(counter_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[4]_i_1 
       (.I0(counter_reg__0[0]),
        .I1(counter_reg__0[1]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[3]),
        .I4(counter_reg__0[4]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[5]_i_1 
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[0]),
        .I5(counter_reg__0[5]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \counter[6]_i_1 
       (.I0(\counter[10]_i_6_n_0 ),
        .I1(counter_reg__0[4]),
        .I2(counter_reg__0[5]),
        .I3(counter_reg__0[6]),
        .O(p_0_in__0[6]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \counter[7]_i_1 
       (.I0(\counter[10]_i_6_n_0 ),
        .I1(counter_reg__0[5]),
        .I2(counter_reg__0[4]),
        .I3(counter_reg__0[6]),
        .I4(counter_reg__0[7]),
        .O(p_0_in__0[7]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \counter[8]_i_1 
       (.I0(counter_reg__0[6]),
        .I1(counter_reg__0[4]),
        .I2(counter_reg__0[5]),
        .I3(counter_reg__0[7]),
        .I4(\counter[10]_i_6_n_0 ),
        .I5(counter_reg__0[8]),
        .O(p_0_in__0[8]));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \counter[9]_i_1 
       (.I0(counter_reg__0[8]),
        .I1(\counter[10]_i_6_n_0 ),
        .I2(counter_reg__0[7]),
        .I3(\counter[9]_i_2_n_0 ),
        .I4(counter_reg__0[6]),
        .I5(counter_reg__0[9]),
        .O(p_0_in__0[9]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \counter[9]_i_2 
       (.I0(counter_reg__0[4]),
        .I1(counter_reg__0[5]),
        .O(\counter[9]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[0] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(counter_reg__0[0]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[10] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[10]),
        .Q(counter_reg__0[10]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[1] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(counter_reg__0[1]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[2] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[2]),
        .Q(counter_reg__0[2]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[3] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(counter_reg__0[3]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[4] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(counter_reg__0[4]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[5] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(counter_reg__0[5]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[6] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[6]),
        .Q(counter_reg__0[6]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[7] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[7]),
        .Q(counter_reg__0[7]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[8] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[8]),
        .Q(counter_reg__0[8]),
        .R(\counter[10]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \counter_reg[9] 
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in__0[9]),
        .Q(counter_reg__0[9]),
        .R(\counter[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h1010101111111111)) 
    new_clock_i_1
       (.I0(counter_reg__0[8]),
        .I1(new_clock_i_2_n_0),
        .I2(new_clock_i_3_n_0),
        .I3(counter_reg__0[1]),
        .I4(counter_reg__0[2]),
        .I5(counter_reg__0[3]),
        .O(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'hE)) 
    new_clock_i_2
       (.I0(counter_reg__0[10]),
        .I1(counter_reg__0[9]),
        .O(new_clock_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    new_clock_i_3
       (.I0(counter_reg__0[6]),
        .I1(counter_reg__0[4]),
        .I2(counter_reg__0[5]),
        .I3(counter_reg__0[7]),
        .O(new_clock_i_3_n_0));
  FDRE new_clock_reg
       (.C(clock),
        .CE(1'b1),
        .D(p_0_in),
        .Q(new_clock),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "system_speed_ctrl_0_0,speed_ctrl,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "speed_ctrl,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clock,
    time_divider,
    new_clock);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN system_processing_system7_0_0_FCLK_CLK0" *) input clock;
  input [11:0]time_divider;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 new_clock CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME new_clock, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN system_speed_ctrl_0_0_new_clock" *) output new_clock;

  wire clock;
  wire new_clock;
  wire [11:0]time_divider;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_speed_ctrl inst
       (.clock(clock),
        .new_clock(new_clock),
        .time_divider(time_divider));
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
