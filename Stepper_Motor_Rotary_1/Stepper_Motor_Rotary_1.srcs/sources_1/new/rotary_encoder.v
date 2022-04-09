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
    input OutA, OutB,
    output reg [7:0] count 
    );
    
    parameter count_max = 8'hFF;
    parameter count_min = 8'h0;
  
  initial begin
    count <= 8'b0;
  end
  
    always @ (posedge OutA)
    begin
        if(!OutB)
        begin
        count <= count + 1'b1;
        end
        /*
            if(count<=count_max)
            begin
                count <= count + 1'b1;
            end
            else
                count <= count_max;
        end
        else
        if(count >= count_min)
        begin
            count <= count - 1'b1;
        end
        else
            count <= count_min;
            */

    end
endmodule
