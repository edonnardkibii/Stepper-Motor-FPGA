`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.01.2021 10:56:50
// Design Name: 
// Module Name: spwm
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


module spwm(
        input clk,
      //  input reset,
//        output reg   [15:0] sine,
//        output reg   [15:0] cos,
//        output reg   [15:0] counter,
//        output reg          clk_1ms,
        
        output reg          pwm_a_p,
        output reg          pwm_a_n,
        
        output reg          pwm_b_p,
        output reg          pwm_b_n
    );
    
    
    reg [15:0] sine;
    reg [15:0] cos;
    reg [15:0] counter;
    reg        clk_1ms;
    
    //parameter time_div = 16'hC350;      //50000 --> 1ms
    parameter time_div = 11'h7D0;
   // reg [15:0] time_counter = 16'b0;
    reg [10:0] time_counter = 11'b0;
    
    parameter count_begin = 16'h0;
    parameter counter_max = 16'h7FFF;
    
    reg [15:0] sine_abs;
    reg [15:0] cos_abs;
    
    reg [15:0] ROM_s [1024:0];
    reg [15:0] ROM_c [1024:0];
    integer i, a_s, a_c, x;
    
    initial begin
        $readmemh("sine_wave.mem", ROM_s);
        $readmemh("cos_wave.mem", ROM_c);
        i = 0;
        x = 0; 
        //Amplitude
        a_s= 1;
        a_c= 1;
        
        counter = count_begin;
    end
    
    //create 1ms delay
    always @ (posedge clk)
    begin
        time_counter <= time_counter + 11'b1;
        if(time_counter >= (time_div-1))
         time_counter <= 11'b0;
        clk_1ms <= (time_counter < time_div/2) ? 1'b1: 1'b0;
    end
    
    always @ (posedge clk_1ms)
    begin
   // if (clk_1ms[0] == 1'b1)
   // begin
        sine    = a_s * ROM_s[i];
        cos     = a_c * ROM_c[i];
        
        i = i + 1;
        if (i == 1024)
        begin
            i = 0;
        end
        
        
        if (sine[15] == 0)
        begin
            sine_abs <= (16'hFFFF - sine) - 16'h8000 ; 
        end
        else if (sine[15] == 1)
        begin
            sine_abs <= sine - 16'h8000;
        end
        
        if(counter < counter_max)
        begin
            counter <= counter + 11'h400;
        end    
        else        
            counter <= count_begin;
       
  
  // PWM Signals for Stepper Motor
  // In 1 & In 3     
       
       if (sine[15] == 1)
       begin
            if(counter < sine_abs)
            begin
                pwm_a_p <= 1;
            end
            else
                pwm_a_p <= 0;
        end
        else
            pwm_a_p <= 0;
        
        
        
       if (sine[15] == 0)
       begin
          if(counter < sine_abs)
          begin
             pwm_a_n <= 1;
          end
          else
             pwm_a_n <= 0;
        end
        else
          pwm_a_n <= 0;


// In 2 & In 4
        if (cos[15] == 0)
        begin
            cos_abs <= (16'hFFFF - cos) - 16'h8000 ; 
        end
        else if (cos[15] == 1)
        begin
            cos_abs <= cos - 16'h8000;
        end
       
       if (cos[15] == 1)
       begin
            if(counter < cos_abs)
            begin
                pwm_b_p <= 1;
            end
            else
                pwm_b_p <= 0;
        end
        else
            pwm_b_p <= 0;
         
       if (cos[15] == 0)
       begin
          if(counter < cos_abs)
          begin
             pwm_b_n <= 1;
          end
          else
             pwm_b_n <= 0;
        end
        else
          pwm_b_n <= 0;

       end
      // end
endmodule
