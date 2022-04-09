`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 18.02.2021 20:08:50
// Design Name: 
// Module Name: unipolar_stepper_motor_top
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


module unipolar_stepper_motor_top(
  // PS
  inout [14:0]  DDR_addr,
  inout [2:0]   DDR_ba,
  inout         DDR_cas_n,
  inout         DDR_ck_n,
  inout         DDR_ck_p,
  inout         DDR_cke,
  inout         DDR_cs_n,
  inout [3:0]   DDR_dm,
  inout [31:0]  DDR_dq,
  inout [3:0]   DDR_dqs_n,
  inout [3:0]   DDR_dqs_p,
  inout         DDR_odt,
  inout         DDR_ras_n,
  inout         DDR_reset_n,
  inout         DDR_we_n,
  //output        FCLK_CLK0,
  //output        FCLK_RESET0_N,
  inout         FIXED_IO_ddr_vrn,
  inout         FIXED_IO_ddr_vrp,
  inout [53:0]  FIXED_IO_mio,
  inout         FIXED_IO_ps_clk,
  inout         FIXED_IO_ps_porb,
  inout         FIXED_IO_ps_srstb,
  
  //Expansion Connections
  inout [7:0]   exp_p_io,
  inout [7:0]   exp_n_io 
  );
    
   wire FREQ_CLK, CLOCK;
   wire RESET;

   
   //Change Step Type
   wire        step_sig;
   wire [11:0] step_type;
   
   //Rotary Encoder
   wire CLK, DT, SW;
   wire [7:0] time_divide;
   //wire [3:0] overflow;
   
   //SPWM
   wire [3:0] SIG;
   wire a_sig;
   wire In1, In2, In3, In4;
   
   
    system_wrapper system_wrapper_i
    (
        .DDR_addr(DDR_addr),
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
        .FCLK_CLK0(FREQ_CLK),
        //.FCLK_RESET0_N(FCLK_RESET0_N),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb)
     );
    

    wire [7:0] exp_n_in;
    wire [7:0] exp_n_out;
    wire [7:0] exp_n_dir;
    
    wire [7:0] exp_p_in;
    wire [7:0] exp_p_out;
    wire [7:0] exp_p_dir;
    
      
    assign SIG ={In4, In3, In2, In1}; 
    
    assign exp_n_dir[4:1]   = 4'b1111;
    assign exp_p_dir[4:0]   = 5'b0000;
    
    assign exp_n_out[4:1]   = {SIG};
    //assign exp_n_in [6:5]     = {step_sig, a_sig};
    assign exp_p_in [4:0]   = {CLK, DT, SW, step_sig, a_sig}; 
    
    genvar GV;
    
    generate
    for(GV = 1; GV < 5; GV = GV + 1)
    begin: exp_iobuf_n
        IOBUF i_iobufn(.O(exp_n_in[GV]), .I(exp_n_out[GV]), .T(!exp_n_dir[GV]), .IO(exp_n_io[GV]));
    end
    for(GV = 0; GV < 5; GV = GV + 1)
    begin: exp_iobuf_p
      IOBUF i_iobufp(.O(exp_p_in[GV]), .I(exp_p_out[GV]), .T(!exp_p_dir[GV]), .IO(exp_p_io[GV])); 
    end
    endgenerate

    
    spwm spwm_i
    (
        .clock(CLOCK),
        .a_sig(a_sig),
     //   .reset(FCLK_RESET0_N),
        .step_type(step_type),
        .pwm_a_p(In1),
        .pwm_a_n(In3),
        .pwm_b_p(In4),
        .pwm_b_n(In2)
    );
    
    speed_ctrl speed_ctrl_i
    (
        .clock(FREQ_CLK),
        .new_clock(CLOCK),
      //  .overflow(overflow),
        .time_divide(time_divide)
    );
    
    step_changer step_changer_i
    (
        .step_signal(step_sig),
        .step_type(step_type)
    );
    
    rotary_encoder rotary_encoder_i
    (
        .CLK(CLK),
        .DT(DT),
        .SW(SW),
        .count(time_divide)
        //.overflow(overflow)
    );
endmodule
