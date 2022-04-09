`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2021 16:19:05
// Design Name: 
// Module Name: SPWM_tb
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


module SPWM_tb(

    );
    reg clk_tb;
    wire [15:0] sine_tb;
    wire [15:0] counter_tb;
    wire pwm_tb;
    
    SPWM dut(
        .clk(clk_tb),
        .sine(sine_tb),
        .counter(counter_tb),
        .pwm(pwm_tb)
    );
    
    initial begin
        clk_tb = 0;
    end
    
    always begin
    #10
        clk_tb = ~clk_tb;
    end
    
endmodule
