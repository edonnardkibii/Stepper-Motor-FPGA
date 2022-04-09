`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.03.2021 22:32:45
// Design Name: 
// Module Name: bipolar_stepper_motor_tb
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


module bipolar_stepper_motor_tb(

    );
    
    reg clock_tb;
    wire step_tb, enable_tb, dir_tb ;
    
    logic_ctrl uut
    (
        .clock(clock_tb),
        .Step(step_tb),
        .Enable(enable_tb),
        .Dir(dir_tb)
    );
    
    initial begin
    clock_tb = 0;
    
    forever begin
    #10
    clock_tb = ~clock_tb;
    end
    end
   
endmodule
