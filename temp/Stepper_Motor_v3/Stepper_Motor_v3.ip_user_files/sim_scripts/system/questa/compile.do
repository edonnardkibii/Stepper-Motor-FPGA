vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_3
vlib questa_lib/msim/axi_vip_v1_1_3
vlib questa_lib/msim/processing_system7_vip_v1_0_5
vlib questa_lib/msim/xlconstant_v1_1_5
vlib questa_lib/msim/xlconcat_v2_1_1

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 questa_lib/msim/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 questa_lib/msim/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 questa_lib/msim/processing_system7_vip_v1_0_5
vmap xlconstant_v1_1_5 questa_lib/msim/xlconstant_v1_1_5
vmap xlconcat_v2_1_1 questa_lib/msim/xlconcat_v2_1_1

vlog -work xilinx_vip -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.v" \

vlog -work xlconstant_v1_1_5 -64 "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconstant_0_0/sim/system_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_1 -64 "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor_v3.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \
"../../../../../../../Users/James Kibii/OneDrive/Dokumente/Vivado/Vector_Length_Mod_1/Vector_Length_Mod.srcs/sources_1/new/my_Vector_Length_Mod.v" \
"../../../bd/system/ip/system_my_Vector_Length_Mod_0_0/sim/system_my_Vector_Length_Mod_0_0.v" \
"../../../bd/system/ip/system_spwm_0_0/sim/system_spwm_0_0.v" \
"../../../bd/system/ip/system_speed_ctrl_0_0/sim/system_speed_ctrl_0_0.v" \
"../../../bd/system/ip/system_step_changer_0_0/sim/system_step_changer_0_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work xil_defaultlib \
"glbl.v"

