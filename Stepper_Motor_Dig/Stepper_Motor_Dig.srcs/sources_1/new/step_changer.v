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
    reg [bitlength-1:0] sel = 3'b000;
    
    always @ (posedge step_signal)
    begin
        sel <= sel + 1'b1;
    end
    
    always @ (sel)
    begin
        case (sel)
            0: step_type <= 12'h800;    //1/16 step
            1: step_type <= 12'h400;    //1/8 step
            2: step_type <= 12'h200;    //quarter step
            3: step_type <= 12'h100;    //half step
            4: step_type <= 12'h80;     //full step
        endcase
    end
endmodule
