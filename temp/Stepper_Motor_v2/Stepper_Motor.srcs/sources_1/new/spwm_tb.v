`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2021 11:45:52
// Design Name: 
// Module Name: spwm_tb
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


module spwm_tb(

    );
    reg clk_tb;
//    wire clk_1ms_tb;
    
    wire [15:0] sine_tb;
    wire [15:0] cos_tb;
    wire [15:0] counter_tb;
    
    wire pwma_p_tb;
    wire pwma_n_tb;
    
    wire pwmb_p_tb;
    wire pwmb_n_tb;
    
    spwm uut(
        .clk(clk_tb),
        .sine(sine_tb),
        .cos(cos_tb),
        .counter(counter_tb),
        .pwm_a_p(pwma_p_tb),
        .pwm_a_n(pwma_n_tb),
        .pwm_b_p(pwmb_p_tb),
        .pwm_b_n(pwmb_n_tb)
    );
    
    initial begin
        clk_tb = 0;
            
        forever #10 clk_tb = ~clk_tb;
    end
endmodule
