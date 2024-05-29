`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2018/06/22 13:55:11
// Design Name: 
// Module Name: cnt
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


module cnt 
#(
    parameter FREQ_OF_CLK_IN        = 100, //(unit :MHz)
    parameter MAX_CNT_WIDTH_DIVIDER = 32
)
(
    input rst_n,
    input [1:0] btn,
    output and_out,
    output [3:0] cnt_val,
    output null_port,
    output high_port,
    input clk
);

    reg  clk_div_buf;
    wire clk_div;
    reg [3:0] cnt_buf;

    always @(posedge clk or negedge rst_n) 
    begin:clock_divider 
        reg [MAX_CNT_WIDTH_DIVIDER:0]  div_cnt_val;
        localparam freq_precise = FREQ_OF_CLK_IN*1_000_000;
        localparam div_counted_1s_val  = (freq_precise/2)-1;   
        if(!rst_n) begin
            div_cnt_val = 0;
            clk_div_buf <= 1'b0;
            end
        else
            if (div_cnt_val == div_counted_1s_val) begin
                div_cnt_val = 0;
                clk_div_buf <= 1'b1;
            end
            else begin            
                div_cnt_val = div_cnt_val +1; 
                clk_div_buf <= 1'b0;
            end   
    end
    assign clk_div = clk_div_buf;


    //always @(posedge clk or negedge rst_n) 
    always @(posedge clk or negedge rst_n)
    begin:LED_counter       
        if(!rst_n)
            cnt_buf <= 4'b0000;
        else
            if (cnt_buf == 4'b1010)
                cnt_buf <= 0;
            else
                cnt_buf <= cnt_buf +1;
    end
    
    assign cnt_val = cnt_buf;
    assign and_out = btn[1] & btn[0];
    assign null_port = 0;
    assign high_port = 1;

    
endmodule
