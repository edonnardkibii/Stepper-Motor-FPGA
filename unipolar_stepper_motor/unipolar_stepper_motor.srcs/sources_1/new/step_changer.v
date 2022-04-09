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
       output reg [11:0] step_type
    );
    
    parameter bitlength = 3;
    parameter stepcount = 12'h80;
    
    parameter fullstep      = 1;
    parameter halfstep      = 2;
    parameter quarterstep   = 4;
    parameter eighthstep    = 8;
    parameter sixteenthstep = 16;
    
    reg [bitlength-1:0] sel = 3'b000;
    
    always @ (posedge step_signal)
    begin
        sel <= sel + 1'b1;
    end
    
    initial begin
        step_type <= stepcount * eighthstep; // Initialize to 8 µ-Steps
    end
    
    
    always @ (sel)
    begin
        case (sel)
       
            0: step_type <= stepcount * sixteenthstep;
            1: step_type <= stepcount * eighthstep;    
            2: step_type <= stepcount * quarterstep;   
            3: step_type <= stepcount * halfstep;    
            4: step_type <= stepcount * fullstep;     
      
      default: step_type <= stepcount * eighthstep;
        endcase
    end
endmodule
