`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.02.2021 18:09:38
// Design Name: 
// Module Name: rotary_encoder
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


module rotary_encoder(
    input CLK, DT, SW,
    output reg [7:0] count, 
    output reg [3:0] overflow           
    );
    
    parameter count_max = 8'hFF;
    parameter count_min = 8'h1;
    
    parameter overflow_max = 4'hD;
    parameter overflow_min = 4'h1;
  
  initial begin
    count <= 8'hD0;
    overflow <= 4'h7;
  end
  
   /*
    always @ (posedge CLK)   //Reset to h7D0
    begin
        if(SW == 1) begin
            count <= 8'hD0;
            overflow <= 4'h7;
        end
    end
    */
    
    //Count
    always @ (posedge CLK)
    begin
    
        if (CLK && !DT) begin
            count <= count + 1'b1;
        end
        else if (CLK && DT)
            count <= count - 1'b1;

    end
    
    //Overflow
    always @ (posedge CLK)
    begin
        if((count-1) >= count_max) begin
            if(!DT) begin
                overflow <= overflow + 1'b1;
            end
            else if (DT) begin
                overflow <= overflow - 1'b1;
            end
        end
        
        if (overflow >= overflow_max) begin
            overflow <= overflow_max;
            count <= 8'b0;
        end
        else if (overflow <= overflow_min) begin
            overflow <= overflow_min;
            count <= 8'b0;
        end 
    end
    
endmodule
