# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "FREQ_OF_CLK_IN" -parent ${Page_0}
  ipgui::add_param $IPINST -name "MAX_CNT_WIDTH_DIVIDER" -parent ${Page_0}


}

proc update_PARAM_VALUE.FREQ_OF_CLK_IN { PARAM_VALUE.FREQ_OF_CLK_IN } {
	# Procedure called to update FREQ_OF_CLK_IN when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.FREQ_OF_CLK_IN { PARAM_VALUE.FREQ_OF_CLK_IN } {
	# Procedure called to validate FREQ_OF_CLK_IN
	return true
}

proc update_PARAM_VALUE.MAX_CNT_WIDTH_DIVIDER { PARAM_VALUE.MAX_CNT_WIDTH_DIVIDER } {
	# Procedure called to update MAX_CNT_WIDTH_DIVIDER when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.MAX_CNT_WIDTH_DIVIDER { PARAM_VALUE.MAX_CNT_WIDTH_DIVIDER } {
	# Procedure called to validate MAX_CNT_WIDTH_DIVIDER
	return true
}


proc update_MODELPARAM_VALUE.FREQ_OF_CLK_IN { MODELPARAM_VALUE.FREQ_OF_CLK_IN PARAM_VALUE.FREQ_OF_CLK_IN } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.FREQ_OF_CLK_IN}] ${MODELPARAM_VALUE.FREQ_OF_CLK_IN}
}

proc update_MODELPARAM_VALUE.MAX_CNT_WIDTH_DIVIDER { MODELPARAM_VALUE.MAX_CNT_WIDTH_DIVIDER PARAM_VALUE.MAX_CNT_WIDTH_DIVIDER } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.MAX_CNT_WIDTH_DIVIDER}] ${MODELPARAM_VALUE.MAX_CNT_WIDTH_DIVIDER}
}

