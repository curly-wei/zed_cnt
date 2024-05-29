// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Mon Aug 27 16:24:44 2018
// Host        : b1409dewei running 64-bit Linux Mint 19 Tara
// Command     : write_verilog -force -mode synth_stub
//               /media/b1409_dewei/WorkDisk/WorkSpace/zedBoard/cnt/cnt.srcs/sources_1/bd/design_1/ip/design_1_cnt_0_0/design_1_cnt_0_0_stub.v
// Design      : design_1_cnt_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "cnt,Vivado 2018.2" *)
module design_1_cnt_0_0(reset, btn, and_out, cnt_val, null_port, high_port, 
  clk)
/* synthesis syn_black_box black_box_pad_pin="reset,btn[1:0],and_out,cnt_val[3:0],null_port,high_port,clk" */;
  input reset;
  input [1:0]btn;
  output and_out;
  output [3:0]cnt_val;
  output null_port;
  output high_port;
  input clk;
endmodule
