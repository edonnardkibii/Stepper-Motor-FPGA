`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 19.02.2021 17:31:22
// Design Name: 
// Module Name: stepper_motor_taster_top
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


module stepper_motor_taster_top(
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
    
    wire FREQ_CLK, CLK;
    wire RESET;
    //wire [11:0] FREQ_DIV;
    
    //Control Speed
    wire increase, decrease;
    
    //Change Step Type
    wire        step_sig;
    wire [11:0] step_type;
    
    
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
             .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb));
     
 
      
     
     wire [7:0] exp_n_in;
     wire [7:0] exp_n_out;
     wire [7:0] exp_n_dir;
     
     wire [7:0] exp_p_in;
     wire [7:0] exp_p_out;
     wire [7:0] exp_p_dir;
     
     
     wire [3:0] SIG;
     wire In1, In2, In3, In4;
     
     assign SIG ={In4, In3, In2, In1}; 
     
     assign exp_n_dir[4:0] = 5'b11110;
     assign exp_p_dir[1:0] = 2'b00;
     
     assign exp_n_out[4:1] = {SIG};
     
     assign exp_n_in[0] = {step_sig}; 
     assign exp_p_in[1:0] = {increase, decrease};
     
     genvar GV;
     
     generate
     for(GV = 0; GV < 5; GV = GV + 1)
     begin: exp_iobuf
         IOBUF i_iobufn(.O(exp_n_in[GV]), .I(exp_n_out[GV]), .T(!exp_n_dir[GV]), .IO(exp_n_io[GV]));
        // IOBUF i_iobufp(.O(exp_p_in[GV]), .I(exp_p_out[GV]), .T(!exp_p_dir[GV]), .IO(exp_p_io[GV])); 
     end
     for(GV = 0; GV < 2; GV = GV + 1)
     begin: exp_io_buf
       IOBUF i_iobufp(.O(exp_p_in[GV]), .I(exp_p_out[GV]), .T(!exp_p_dir[GV]), .IO(exp_p_io[GV])); 
     end
     endgenerate
     
     
     spwm i_spwm
     (
         .clk(CLK),
      //   .reset(FCLK_RESET0_N),
         .step_type(step_type),
         .pwm_a_p(In1),
         .pwm_a_n(In3),
         .pwm_b_p(In4),
         .pwm_b_n(In2)
     );
     
     speed_ctrl i_speed_ctrl
     (
         .increase(increase),
         .decrease(decrease),
         .clock(FREQ_CLK),
         .new_clock(CLK)
     );
     
     step_changer i_step_changer
     (
         .step_signal(step_sig),
         .step_type(step_type)
     );
    
 endmodule
