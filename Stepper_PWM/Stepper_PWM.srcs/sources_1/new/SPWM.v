`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.01.2021 16:12:48
// Design Name: 
// Module Name: SPWM
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


module SPWM(
        input clk,
        output reg [15:0] sine,
        output reg [15:0] counter,
        output reg pwm
    );
    
    //wire convert;
    parameter counter_max = 16'hFFFF;
    
    reg [15:0] ROM [1023:0];
    integer i;
    
    initial begin
        $readmemh("sine_wave.mem", ROM);
        i = 0;
    end
    
    always @ (posedge clk)
    begin
        sine = ROM[i];
        i = i + 1;
        if (i == 1024)
        begin
            i = 0;
        end
        
        if(counter < counter_max)
        begin
            counter <= counter + 12'h800;
        end    
        else
            counter <= 16'b0;
     
        if(counter < sine)
        begin
            pwm <= 1;
        end
        else
            pwm <= 0;
     end
endmodule
