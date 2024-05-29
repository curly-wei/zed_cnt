//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Wed Dec 19 15:52:59 2018
//Host        : B1409dewei running 64-bit unknown
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (and_out,
    btn,
    clk_in,
    cnt_val_out,
    reset_n_in);
  output and_out;
  input [1:0]btn;
  input clk_in;
  output [3:0]cnt_val_out;
  input reset_n_in;

  wire and_out;
  wire [1:0]btn;
  wire clk_in;
  wire [3:0]cnt_val_out;
  wire reset_n_in;

  design_1 design_1_i
       (.and_out(and_out),
        .btn(btn),
        .clk_in(clk_in),
        .cnt_val_out(cnt_val_out),
        .reset_n_in(reset_n_in));
endmodule
