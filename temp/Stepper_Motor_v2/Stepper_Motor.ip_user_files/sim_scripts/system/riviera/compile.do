vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/smartconnect_v1_0
vlib riviera/axi_protocol_checker_v2_0_3
vlib riviera/axi_vip_v1_1_3
vlib riviera/processing_system7_vip_v1_0_5
vlib riviera/xlconstant_v1_1_5
vlib riviera/xlconcat_v2_1_1

vmap xilinx_vip riviera/xilinx_vip
vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 riviera/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 riviera/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 riviera/processing_system7_vip_v1_0_5
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_processing_system7_0_0/sim/system_processing_system7_0_0.v" \
"../../../bd/system/sim/system.v" \
"../../../bd/system/ip/system_xadc_wiz_0_0/system_xadc_wiz_0_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconstant_0_0/sim/system_xlconstant_0_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_Motor.srcs/sources_1/bd/system/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

