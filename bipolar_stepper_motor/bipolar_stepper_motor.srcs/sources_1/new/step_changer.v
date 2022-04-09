`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.01.2021 01:22:46
// Design Name: 
// Module Name: step_changer
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


module step_changer(
       input             step_signal,
       
       output reg  [2:0] step_type
    );
    
    parameter bitlength     = 3;
    
    parameter fullstep      = 3'b000;
    parameter halfstep      = 3'b001;
    parameter quarterstep   = 3'b010;
    parameter eighthstep    = 3'b011;
    parameter sixteenthstep = 3'b111;
    
    reg [bitlength-1:0] sel = 3'b000;
    
    always @ (posedge step_signal)
    begin
        sel <= sel + 1'b1;
    end
    
    initial begin
        step_type <= eighthstep; // Initialize to 8 µ-Steps
    end
    
    
    always @ (sel)
    begin
        case (sel)
           0: step_type <= fullstep;
           1: step_type <= halfstep;
           2: step_type <= quarterstep;
           3: step_type <= eighthstep;
           4: step_type <= sixteenthstep;
       
     default: step_type <= eighthstep;
        endcase
    end
endmodule
