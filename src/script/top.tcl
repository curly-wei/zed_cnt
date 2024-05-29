package require cmdline

set parameters {
	{B.arg "" "Build Dir"}
	{O.arg "" "Out Dir"}
	{v.arg "" "Verilog Files"}
	{f.arg "xc7z010clg400-1" "FPGA Part"}
	{t.arg "cnt" "Module name of top"}
}
array set arg [cmdline::getoptions argv ${parameters}]

set_param general.maxThreads 8
set_part $arg(f)
read_verilog $arg(v)

reorder_file -auto
synth_design -top $arg(t)
