vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../cnt.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../cnt.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../cnt.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../cnt.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"/tools/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../cnt.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../cnt.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../cnt.srcs/sources_1/bd/design_1/ipshared/7d3c/hdl/verilog" "+incdir+../../../../cnt.srcs/sources_1/bd/design_1/ipshared/c45e/hdl/verilog" \
"../../../bd/design_1/ip/design_1_cnt_0_0/sim/design_1_cnt_0_0.v" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

