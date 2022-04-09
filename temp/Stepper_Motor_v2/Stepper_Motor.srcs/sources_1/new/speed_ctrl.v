`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2021 01:13:49
// Design Name: 
// Module Name: speed_ctrl
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


module speed_ctrl(
    input clock,                //Frequency clock 50MHz
    input [11:0] time_divider,
    output reg new_clock
    );
    
    //Adjust frequency
    parameter duty_inv = 2;
    parameter min_time_div = 9'h1F4;
    //parameter time_divider = 11'h7D0;
    
    reg [10:0] counter = 11'b0;
    
    //Create Delay
    always @ (posedge clock)
    begin
        if(time_divider >= 12'h1F4)
        begin
            counter <= counter + 11'b1;
            if(counter >= (time_divider - 1))
                counter <= 11'b0;
            new_clock <= (counter < (time_divider / duty_inv)) ? 1'b1: 1'b0;
        end
        else
            counter <= counter + 11'b1;
            if(counter >= (min_time_div - 1))
                counter <= 11'b0;
            new_clock <= (counter < (min_time_div / duty_inv)) ? 1'b1: 1'b0;
    end
    
endmodule
