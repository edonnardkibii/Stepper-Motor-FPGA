`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.03.2021 21:39:33
// Design Name: 
// Module Name: speed_ctrl_tb
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



module speed_ctrl_tb(

    );

    reg CLK_tb, DT_tb;
    wire [7:0] count_tb;
    
    reg clock_tb;
    reg [11:0] time_divider_tb;
    wire new_clock_tb;
    
    rotary_encoder uut
    (
        .CLK(CLK_tb),
        .DT(DT_tb),
        .count(count_tb)    
    );
    
    speed_ctrl dut
    (
        .clock(clock_tb),
        .new_clock(new_clock_tb),
        .time_divider(time_divider_tb)
    );
    
    initial begin
        clock_tb = 0;
        
        time_divider_tb = 12'h100;
        forever #10 clock_tb = ~clock_tb;
    end
    
    initial begin
        clock_tb = 0;
        
        
        CLK_tb = 0;
        DT_tb = 1;
    end
    
    always begin
        #10;
        CLK_tb = ~CLK_tb;
        #10;
        DT_tb = ~DT_tb;
        
    end
endmodule
