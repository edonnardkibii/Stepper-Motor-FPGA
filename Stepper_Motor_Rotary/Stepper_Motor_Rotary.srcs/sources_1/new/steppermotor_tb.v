`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.02.2021 01:06:45
// Design Name: 
// Module Name: steppermotor_tb
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


module steppermotor_tb(
    );
    
    reg clock_tb;
    reg [11:0] step_type_tb;
   
    wire c_up_sin_tb, c_up_cos_tb; 
    wire [15:0] sine_tb, cos_tb, counter_s_tb, counter_c_tb;
    //wire [15:0] sine_abs_tb, cos_abs_tb;
    wire In1_tb, In2_tb, In3_tb, In4_tb;
    
    spwm uut
    (
        .clock(clock_tb),
        .step_type(step_type_tb),
        .sine(sine_tb),
        .cos(cos_tb),
        //.sine_abs(sine_abs_tb),
        //.cos_abs(cos_abs_tb),
        .counter_s(counter_s_tb),
        .counter_c(counter_c_tb),
        .pwm_a_p(In1_tb),
        .pwm_a_n(In3_tb),
        .pwm_b_p(In4_tb),
        .pwm_b_n(In2_tb),
        .c_up_sin(c_up_sin_tb),
        .c_up_cos(c_up_cos_tb)
    );
    
    
    reg CLK_tb;
    //reg DT_tb_f; 
    reg DT_tb_r;
    
    wire [7:0] count_tb;
    wire [3:0] overflow_tb;
    
    rotary_encoder dut
    (
        .CLK(CLK_tb),
        //.DT(DT_tb_f),
        .DT(DT_tb_r),
        .count(count_tb),
        .overflow(overflow_tb)   
    );
    
    initial begin
        CLK_tb = 0;
        
        //#5;
        //DT_tb_f = 0;
        
        DT_tb_r = 1;
    end
    
    always begin
      #10;
      CLK_tb = ~CLK_tb;
      #10;
      //DT_tb_f = ~DT_tb_f;
      
      DT_tb_r = ~DT_tb_r;
    end
    
    initial begin
    //step_type_tb = 8'h80 * 16 ;   //1/16 step
    //step_type_tb = 8'h80 * 8;     //1/8 step    
    //step_type_tb = 8'h80 * 4;   //quarter step
    step_type_tb = 8'h80 * 2;   //half step
     //step_type_tb = 8'h80 * 1;    //full step
    
    clock_tb = 0;          
    forever #10 clock_tb = ~clock_tb;
    
    end

endmodule
