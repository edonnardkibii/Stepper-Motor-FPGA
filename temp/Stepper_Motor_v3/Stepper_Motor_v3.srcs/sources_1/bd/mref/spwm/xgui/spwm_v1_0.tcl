# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "count_begin" -parent ${Page_0}
  ipgui::add_param $IPINST -name "counter_max" -parent ${Page_0}


}

proc update_PARAM_VALUE.count_begin { PARAM_VALUE.count_begin } {
	# Procedure called to update count_begin when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.count_begin { PARAM_VALUE.count_begin } {
	# Procedure called to validate count_begin
	return true
}

proc update_PARAM_VALUE.counter_max { PARAM_VALUE.counter_max } {
	# Procedure called to update counter_max when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.counter_max { PARAM_VALUE.counter_max } {
	# Procedure called to validate counter_max
	return true
}


proc update_MODELPARAM_VALUE.count_begin { MODELPARAM_VALUE.count_begin PARAM_VALUE.count_begin } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.count_begin}] ${MODELPARAM_VALUE.count_begin}
}

proc update_MODELPARAM_VALUE.counter_max { MODELPARAM_VALUE.counter_max PARAM_VALUE.counter_max } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.counter_max}] ${MODELPARAM_VALUE.counter_max}
}

