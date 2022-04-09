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
    input increase,
    input decrease,
    output reg new_clock
    );
    
    //Adjust frequency
    parameter duty_inv = 2;
    parameter min_time_div = 9'h1F4;
   // parameter time_divider = 11'h7D0;
    
    reg [11:0] time_divider;
    reg [10:0] counter = 11'b0;
    
    initial begin
        time_divider = 12'h7D0;
        //time_divider = 12'h174;
    end
    
    /*
    //Time Divider range FFF --> 1F4
    always @ (posedge increase)
    begin
        time_divider <= time_divider + 6'h32;
    end
    */
    /*
    always @ (posedge decrease)
    begin
        if (time_divider <= 12'h1F4)
        begin
            time_divider <= 12'h1F4;
        end
        else
        time_divider <= time_divider - 4'hA;
    end
    */
    always @ (posedge clock) begin
        if (increase == 1)
        begin
            time_divider <= time_divider + 4'hA;
        end
        else if (decrease == 1)
        begin
        if (time_divider <= min_time_div)
        begin
            time_divider <= 12'h1F5;
        end
        else
            time_divider <= time_divider - 4'hA;
        end
    end
    //Create Delay
    always @ (posedge clock)begin
    //Clock Divider code
        counter <= counter + 11'b1;
        if(counter >= (time_divider - 1))
           counter <= 11'b0;
        new_clock <= (counter < (time_divider / duty_inv)) ? 1'b1: 1'b0;
        
    end
    /*
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
    */
endmodule
