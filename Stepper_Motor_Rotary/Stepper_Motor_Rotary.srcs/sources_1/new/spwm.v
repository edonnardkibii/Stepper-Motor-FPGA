`timescale 10us / 100ns
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
            input        clock, a_sig,
            input        [11:0] step_type,
            //  input reset,
            
            output reg   [15:0] sine,
            output reg   [15:0] cos,
            output reg   [15:0] counter_s,
            output reg   [15:0] counter_c,
            //output reg   [15:0] sine_abs,
            //output reg   [15:0] cos_abs, 

            output reg          pwm_a_p,    //In1
            output reg          pwm_a_n,    //In3
            output reg          pwm_b_p,    //In4
            output reg          pwm_b_n,    //In2
            
            output reg          c_up_sin,
            output reg          c_up_cos
        );

    //Variables
    parameter count_begin = 16'h0;
    parameter count_max = 16'h7FFF;
    parameter bitlength = 16;
    parameter ROMlength = 1024;
    
    integer sign;
    parameter a_wav_max = 16'hFFFF;
    parameter a_wav_mean = 16'h8000;
    //reg c_up_sin;
    //reg c_up_cos;
    
    reg [2:0] sel;
    
    reg [bitlength-1:0] sine_abs;
    reg [bitlength-1:0] cos_abs;
    
    reg [bitlength-1:0] ROM_s [ROMlength-1:0];
    reg [bitlength-1:0] ROM_c [ROMlength-1:0];
    
    integer i;
    integer a_inv;
    reg [bitlength-1:0] a_max, a_mean;
    
    initial begin
        $readmemh("sine_wave.mem", ROM_s);
        $readmemh("cos_wave.mem", ROM_c);
        i = 0; 
        
        //Amplitude
        a_inv= 1;
        
        counter_s = count_begin;
        counter_c = count_max;
        
        c_up_sin = 1'b1;
        c_up_cos = 1'b0;
    end
    
    
    //Amplitude Variation
    always @ (posedge a_sig) begin
        sel <= sel + 1'b1;    
    end
    
    always @ (sel) begin
        case (sel)
            0: a_inv <=   1;
            1: a_inv <=   2;
            2: a_inv <=   4;
            3: a_inv <=   5;
            4: a_inv <=  10;
            
      default: a_inv <= 1;
         endcase
    end
    
    always @ (clock) begin
    a_max <= a_wav_max / a_inv;
    a_mean <=  a_wav_mean / a_inv;  
    

    if (a_mean >= 16'h8000 && a_mean < 16'hFFFF) begin
        sign <= 15;
    end
    else if (a_mean >= 15'h4000 && a_mean < 15'h7FFF) begin
        sign <= 14;
    end
    else if (a_mean >= 14'h2000 && a_mean < 14'h3FFF) begin
        sign <= 13;
    end
    
    end
    
    
    //PWM Wave generation
    always @ (posedge clock) begin
        sine    = ROM_s[i] / a_inv;
        cos     = ROM_c[i] / a_inv;
        
        i = i + 1;
        if (i == 1024)
        begin
            i = 0;
        end
        
        if (sine[sign] == 0)
        begin
            sine_abs <= (a_max - sine) - a_mean ; 
        end
        else if (sine[sign] == 1)
        begin
            sine_abs <= sine - a_mean;
        end
        
 
        
        //Counter for Sine
        if(counter_s < count_max) begin
            counter_s <= counter_s + step_type;
        end    
        else        
            counter_s <= count_begin;      
       

         //Counter for Cos
       
             if(counter_c < count_max) begin
                 counter_c <= counter_c + step_type;
             end    
             else        
                 counter_c <= count_begin;      
       
  
  // PWM Signals for Stepper Motor
  // In 1 & In 3     
      
       if (sine[sign] == 1)
       begin
                if(counter_s <= sine_abs)
                begin
                    pwm_a_p <= 1;
                end
                else
                    pwm_a_p <= 0;
            end
        else
            pwm_a_p <= 0;
       
  
       if (sine[sign] == 0)
       begin
          if(counter_s < sine_abs)
          begin
             pwm_a_n <= 1;
          end
          else
             pwm_a_n <= 0;
        end
        else
          pwm_a_n <= 0;


// In 2 & In 4
        if (cos[sign] == 0)
        begin
            cos_abs <= (a_max - cos) - a_mean ; 
        end
        else if (cos[sign] == 1)
        begin
            cos_abs <= cos - a_mean;
        end
       
       if (cos[sign] == 1)
       begin
            if(counter_c < cos_abs)
            begin
                pwm_b_p <= 1;
            end
            else
                pwm_b_p <= 0;
        end
        else
            pwm_b_p <= 0;
         
       if (cos[sign] == 0)
       begin
          if(counter_c < cos_abs)
          begin
             pwm_b_n <= 1;
          end
          else
             pwm_b_n <= 0;
        end
        else
          pwm_b_n <= 0;

       end
endmodule
