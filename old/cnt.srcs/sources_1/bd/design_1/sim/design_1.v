//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
//Date        : Wed Dec 19 15:52:59 2018
//Host        : B1409dewei running 64-bit unknown
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (and_out,
    btn,
    clk_in,
    cnt_val_out,
    reset_n_in);
  output and_out;
  input [1:0]btn;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN, ASSOCIATED_RESET reset_n_in, CLK_DOMAIN design_1_clk_in, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000" *) input clk_in;
  output [3:0]cnt_val_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_N_IN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_N_IN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input reset_n_in;

  wire Net;
  wire [1:0]btn_1;
  wire cnt_0_and_out;
  wire [3:0]cnt_0_cnt_val;
  wire reset_n_in_1;

  assign Net = clk_in;
  assign and_out = cnt_0_and_out;
  assign btn_1 = btn[1:0];
  assign cnt_val_out[3:0] = cnt_0_cnt_val;
  assign reset_n_in_1 = reset_n_in;
  design_1_cnt_0_0 cnt_0
       (.and_out(cnt_0_and_out),
        .btn(btn_1),
        .clk(Net),
        .cnt_val(cnt_0_cnt_val),
        .reset(reset_n_in_1));
  design_1_ila_0_0 ila_0
       (.clk(Net),
        .probe0(cnt_0_cnt_val));
endmodule
