`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.02.2021 15:37:15
// Design Name: 
// Module Name: logic_ctrl
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


module logic_ctrl(
    input clock,
    input Dir_In,
    
    output reg Enable, Step, Dir
    );
    
    
    reg counter;
   
    initial begin
        Enable <= 1'b0;
        Dir <= 1'b1;
        
    end 
    
    always @ (posedge Dir_In) begin
        counter <= counter + 1'b1;
        
        if(counter == 1'b1) begin
                Dir <= 1'b1; 
        end
        else
                Dir <= 1'b0;
    end
    
    reg [15:0] step_timer;
    
    always @ (posedge clock) begin
        step_timer <= step_timer + 1;
        Step <= step_timer[13];
    end
  
endmodule
