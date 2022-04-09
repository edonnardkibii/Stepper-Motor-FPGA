`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.02.2021 20:27:35
// Design Name: 
// Module Name: stepper_motor_top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module stepper_motor_top(
inout [14:0]    DDR_addr,
inout [2:0]     DDR_ba,
inout           DDR_cas_n,
inout           DDR_ck_n,
inout           DDR_ck_p,
inout           DDR_cke,
inout           DDR_cs_n,
inout [3:0]     DDR_dm,
inout [31:0]    DDR_dq,
inout [3:0]     DDR_dqs_n,
inout [3:0]     DDR_dqs_p,
inout           DDR_odt,
inout           DDR_ras_n,
inout           DDR_reset_n,
inout           DDR_we_n,
inout           FIXED_IO_ddr_vrn,
inout           FIXED_IO_ddr_vrp,
inout [53:0]    FIXED_IO_mio,
inout           FIXED_IO_ps_clk,
inout           FIXED_IO_ps_porb,
inout           FIXED_IO_ps_srstb,
//input           Vaux8_v_n,
//input           Vaux8_v_p,
//output          pwm_a_n,
//output          pwm_a_p,
//output          pwm_b_n,
//output          pwm_b_p,
//input           step_signal,

//Expansion Ports
inout [7:0]     exp_p_io,
inout [7:0]     exp_n_io,

//XADC
input [4:0] vinp_i,
input [4:0] vinn_i
    );
    
    wire FREQ_CLK, CLK;
    //wire RESET;
    wire [11:0] FREQ_DIV;
    wire vinp, vinn, en_in;
    
    wire step_sig;
    wire [11:0] step_typ;
    
    wire [7:0] exp_n_in;
    wire [7:0] exp_n_out;
    wire [7:0] exp_n_dir;
    
    wire [7:0] exp_p_in;
    wire [7:0] exp_p_out;
    wire [7:0] exp_p_dir;
    
    wire [3:0] SIG;
    wire In1, In2, In3, In4;
    
    system_wrapper system_wrapper_i
    ( .DDR_addr(DDR_addr),
      .DDR_ba(DDR_ba),
      .DDR_cas_n(DDR_cas_n),
      .DDR_ck_n(DDR_ck_n),
      .DDR_ck_p(DDR_ck_p),
      .DDR_cke(DDR_cke),
      .DDR_cs_n(DDR_cs_n),
      .DDR_dm(DDR_dm),
      .DDR_dq(DDR_dq),
      .DDR_dqs_n(DDR_dqs_n),
      .DDR_dqs_p(DDR_dqs_p),
      .DDR_odt(DDR_odt),
      .DDR_ras_n(DDR_ras_n),
      .DDR_reset_n(DDR_reset_n),
      .DDR_we_n(DDR_we_n),
      .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
      .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
      .FIXED_IO_mio(FIXED_IO_mio),
      .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
      .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
      .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
      .Vaux8_v_n(vinn_i[0]),
      .Vaux8_v_p(vinp_i[0]),
      .pwm_a_n(In3),
      .pwm_a_p(In1),
      .pwm_b_n(In2),
      .pwm_b_p(In4),
      .step_signal(step_sig));
      

      assign SIG = {In4, In3, In2, In1};
      assign exp_n_dir[4:0] = 5'b11110;
      
      assign exp_n_out[4:1] = {SIG};
      assign exp_n_in[0] = {step_sig};
      
      genvar i;
      
      generate
      for(i=0; i<5; i= i+1)
      begin: exp_iobuf
          IOBUF i_iobufn(.O(exp_n_in[i]), .I(exp_n_out[i]), .T(!exp_n_dir[i]), .IO(exp_n_io[i]));
          //IOBUF i_iobufp(.O(exp_p_in[i]), .I(exp_p_out[i]), .T(!exp_p_dir[i]), .IO(exp_p_io[i])); 
      end
      endgenerate
  
      

endmodule
