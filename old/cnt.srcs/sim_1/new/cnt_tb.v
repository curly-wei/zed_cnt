`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/26 18:43:27
// Design Name: 
// Module Name: cnt_tb
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


module cnt_tb();
    reg clk =1'b0;
    reg Rst =1'b0;
    wire [3:0]cnt_val;
    reg [1:0]btn =2'b00;
    wire and_val ;
    
    parameter OFFSET                = 50;  
    parameter SIM_RUN_TIME          = 7000;
    
    parameter POWER_TIME            = 100;
    parameter CLK_PERIOD            = 50;
    parameter GATE_SWITCH_PERIOD    = 100;
    
    cnt #
    (       
        .FREQ_OF_CLK_IN(100),
        .MAX_CNT_WIDTH_DIVIDER(32)
    ) 
    uut    
    (
        .reset(Rst),
        .btn(btn),
        .and_out(and_val),
        .cnt_val(cnt_val),
        .clk(clk)
    );
    
    
    initial #SIM_RUN_TIME $finish;
    
    initial begin:clock_gen
        #OFFSET;
        forever begin
            #(CLK_PERIOD/2) clk =~ clk;
        end
    end
        
    initial begin:reset_squence
        #OFFSET Rst = 1'b1;
        #(POWER_TIME/2) Rst  = 1'b0;
        #(POWER_TIME/2) Rst  = 1'b1;
    end
    
    initial begin:and_gate_sequence
        #OFFSET
            btn[0] = 1'b0;
            btn[1] = 1'b0;
        #(GATE_SWITCH_PERIOD) 
            btn[0] = 1'b0;
            btn[1] = 1'b1;
        #(GATE_SWITCH_PERIOD) 
            btn[0] = 1'b1;
            btn[1] = 1'b0;
        #(GATE_SWITCH_PERIOD) 
            btn[0] = 1'b1;
            btn[1] = 1'b1;
    end
    
    initial $monitor("time = %3g ,Reset = %1b , btn_1 = %1b , btn_0 = %1b , and_val = %1b , cnt_val = %1h"
                        ,$time,Rst,btn[1],btn[0],and_val,cnt_val);
endmodule
