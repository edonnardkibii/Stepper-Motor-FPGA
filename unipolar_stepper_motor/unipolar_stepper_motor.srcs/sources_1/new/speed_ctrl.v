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
    input clock,                        //Frequency clock 50MHz
    input [7:0] time_divide,
    //input [3:0] overflow,                
    input [11:0] time_divider,
    output reg new_clock
    );
    
    wire[11:0] time_div;
   // reg [11:0] time_divider;
    
    assign time_div = {time_divide, 3'b0};  

    /*
    always @ (posedge clock) begin
        time_divider <= {time_divide, 3'b0};
    end
    */
    //Adjust frequency
    parameter duty_inv = 2;

    
    reg [10:0] counter = 11'b0;
    
    always @ (posedge clock) begin
    
        counter <= counter + 11'b1;
        if(counter >= (time_divider - 1))
            counter <= 11'b0;
        new_clock <= (counter < (time_divider / duty_inv)) ? 1'b1: 1'b0;

    end
    /*
    initial begin
        time_divider <= 12'h7D0;
    end
    */
    /*
    always @ (posedge clock)
    begin
        if((time_divide - 1) == 8'hFF)
        begin
            overflow <= overflow + 1'b1; 
        end
        else
        begin 
            overflow <= overflow - 1'b1;
        end
        
        time_divider <= {overflow, time_divide};     
    end
    */
    
    /*
    //Create Delay
    always @ (posedge clock)
    begin
       if (time_divider <= max_time_div || time_divider >= min_time_div)
       begin
            counter <= counter + 11'b1;
            if(counter >= (time_divider - 1))
                counter <= 11'b0;
            new_clock <= (counter < (time_divider / duty_inv)) ? 1'b1: 1'b0;
        end
        
        else if(time_divider >= max_time_div)
        begin
            counter <= counter + 11'b1;
            if(counter >= (max_time_div - 1))
                counter <= 11'b0;
            new_clock <= (counter < (max_time_div / duty_inv)) ? 1'b1: 1'b0;
        end
        
        else if (time_divider <= min_time_div)
        begin
             counter <= counter + 11'b1;
             if(counter >= (min_time_div - 1))
                  counter <= 11'b0;
             new_clock <= (counter < (min_time_div / duty_inv)) ? 1'b1: 1'b0;     
        end
     end  
     */    
endmodule
