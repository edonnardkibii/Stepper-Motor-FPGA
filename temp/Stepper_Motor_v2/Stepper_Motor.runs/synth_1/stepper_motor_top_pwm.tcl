# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7z010clg400-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir {C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.cache/wt} [current_project]
set_property parent.project_path {C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.xpr} [current_project]
set_property XPM_LIBRARIES {XPM_FIFO XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths {{c:/Users/James Kibii/OneDrive/Dokumente/Vivado/Vector_Length_Mod/Vector_Length_Mod.srcs}} [current_project]
set_property ip_output_repo {c:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_mem {
  {C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/new/sine_wave.mem}
  {C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/new/cos_wave.mem}
}
read_verilog -library xil_defaultlib {
  {C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/new/spwm.v}
  {C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/bd/system/hdl/system_wrapper.v}
  {C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/new/stepper_motor_top_pwm.v}
  {C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/new/spwm_tb.v}
  {C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/new/speed_ctrl.v}
  {C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/new/step_changer.v}
}
add_files {{C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/bd/system/system.bd}}
set_property used_in_implementation false [get_files -all {{c:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/bd/system/ip/system_processing_system7_0_0/system_processing_system7_0_0.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0_ooc.xdc}}]
set_property used_in_implementation false [get_files -all {{c:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.xdc}}]
set_property used_in_implementation false [get_files -all {{C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/sources_1/bd/system/system_ooc.xdc}}]

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/constrs_1/new/Red_Pitaya.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/James Kibii/OneDrive/Dokumente/Vivado/Stepper_Motor/Stepper_Motor.srcs/constrs_1/new/Red_Pitaya.xdc}}]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top stepper_motor_top_pwm -part xc7z010clg400-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef stepper_motor_top_pwm.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file stepper_motor_top_pwm_utilization_synth.rpt -pb stepper_motor_top_pwm_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
