// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (lin64) Build 2258646 Thu Jun 14 20:02:38 MDT 2018
// Date        : Wed Jun 27 13:22:18 2018
// Host        : DeWeiB1409 running 64-bit Linux Mint 18.3 Sylvia
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               /media/dewei_b1409/WorkDisk/WorkSpace/zedBoard/cnt/cnt.sim/sim_1/synth/timing/xsim/cnt_tb_time_synth.v
// Design      : cnt
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* FREQ_OF_CLK_IN = "100" *) (* MAX_CNT_WIDTH_DIVIDER = "32" *) 
(* NotValidForBitStream *)
module cnt
   (reset,
    btn,
    and_out,
    cnt,
    clk);
  input reset;
  input [1:0]btn;
  output and_out;
  output [3:0]cnt;
  input clk;

  wire and_out;
  wire and_out_OBUF;
  wire [1:0]btn;
  wire [1:0]btn_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [3:0]cnt;
  wire [3:0]cnt_OBUF;
  wire \cnt_buf[0]_i_1_n_0 ;
  wire \cnt_buf[1]_i_1_n_0 ;
  wire \cnt_buf[2]_i_1_n_0 ;
  wire \cnt_buf[3]_i_1_n_0 ;
  wire \cnt_buf[3]_i_2_n_0 ;
  wire reset;
  wire reset_IBUF;

initial begin
 $sdf_annotate("cnt_tb_time_synth.sdf",,,,"tool_control");
end
  OBUF and_out_OBUF_inst
       (.I(and_out_OBUF),
        .O(and_out));
  LUT2 #(
    .INIT(4'h8)) 
    and_out_OBUF_inst_i_1
       (.I0(btn_IBUF[1]),
        .I1(btn_IBUF[0]),
        .O(and_out_OBUF));
  IBUF \btn_IBUF[0]_inst 
       (.I(btn[0]),
        .O(btn_IBUF[0]));
  IBUF \btn_IBUF[1]_inst 
       (.I(btn[1]),
        .O(btn_IBUF[1]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF \cnt_OBUF[0]_inst 
       (.I(cnt_OBUF[0]),
        .O(cnt[0]));
  OBUF \cnt_OBUF[1]_inst 
       (.I(cnt_OBUF[1]),
        .O(cnt[1]));
  OBUF \cnt_OBUF[2]_inst 
       (.I(cnt_OBUF[2]),
        .O(cnt[2]));
  OBUF \cnt_OBUF[3]_inst 
       (.I(cnt_OBUF[3]),
        .O(cnt[3]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h00BF)) 
    \cnt_buf[0]_i_1 
       (.I0(cnt_OBUF[2]),
        .I1(cnt_OBUF[3]),
        .I2(cnt_OBUF[1]),
        .I3(cnt_OBUF[0]),
        .O(\cnt_buf[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0FB0)) 
    \cnt_buf[1]_i_1 
       (.I0(cnt_OBUF[2]),
        .I1(cnt_OBUF[3]),
        .I2(cnt_OBUF[1]),
        .I3(cnt_OBUF[0]),
        .O(\cnt_buf[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \cnt_buf[2]_i_1 
       (.I0(cnt_OBUF[2]),
        .I1(cnt_OBUF[1]),
        .I2(cnt_OBUF[0]),
        .O(\cnt_buf[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h6C8C)) 
    \cnt_buf[3]_i_1 
       (.I0(cnt_OBUF[2]),
        .I1(cnt_OBUF[3]),
        .I2(cnt_OBUF[1]),
        .I3(cnt_OBUF[0]),
        .O(\cnt_buf[3]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_buf[3]_i_2 
       (.I0(reset_IBUF),
        .O(\cnt_buf[3]_i_2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_buf_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_buf[3]_i_2_n_0 ),
        .D(\cnt_buf[0]_i_1_n_0 ),
        .Q(cnt_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_buf_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_buf[3]_i_2_n_0 ),
        .D(\cnt_buf[1]_i_1_n_0 ),
        .Q(cnt_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_buf_reg[2] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_buf[3]_i_2_n_0 ),
        .D(\cnt_buf[2]_i_1_n_0 ),
        .Q(cnt_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \cnt_buf_reg[3] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .CLR(\cnt_buf[3]_i_2_n_0 ),
        .D(\cnt_buf[3]_i_1_n_0 ),
        .Q(cnt_OBUF[3]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
