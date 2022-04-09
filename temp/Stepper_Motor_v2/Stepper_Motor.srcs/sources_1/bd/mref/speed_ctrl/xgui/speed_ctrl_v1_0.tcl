# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "duty_inv" -parent ${Page_0}
  ipgui::add_param $IPINST -name "min_time_div" -parent ${Page_0}


}

proc update_PARAM_VALUE.duty_inv { PARAM_VALUE.duty_inv } {
	# Procedure called to update duty_inv when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.duty_inv { PARAM_VALUE.duty_inv } {
	# Procedure called to validate duty_inv
	return true
}

proc update_PARAM_VALUE.min_time_div { PARAM_VALUE.min_time_div } {
	# Procedure called to update min_time_div when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.min_time_div { PARAM_VALUE.min_time_div } {
	# Procedure called to validate min_time_div
	return true
}


proc update_MODELPARAM_VALUE.duty_inv { MODELPARAM_VALUE.duty_inv PARAM_VALUE.duty_inv } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.duty_inv}] ${MODELPARAM_VALUE.duty_inv}
}

proc update_MODELPARAM_VALUE.min_time_div { MODELPARAM_VALUE.min_time_div PARAM_VALUE.min_time_div } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.min_time_div}] ${MODELPARAM_VALUE.min_time_div}
}

