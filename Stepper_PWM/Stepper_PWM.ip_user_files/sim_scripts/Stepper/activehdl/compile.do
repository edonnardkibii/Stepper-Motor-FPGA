vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/smartconnect_v1_0
vlib activehdl/axi_protocol_checker_v2_0_3
vlib activehdl/axi_vip_v1_1_3
vlib activehdl/processing_system7_vip_v1_0_5
vlib activehdl/xil_defaultlib

vmap xilinx_vip activehdl/xilinx_vip
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 activehdl/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 activehdl/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 activehdl/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 activehdl/processing_system7_vip_v1_0_5
vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xilinx_vip  -sv2k12 "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3  -sv2k12 "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3  -sv2k12 "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5  -sv2k12 "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/ec67/hdl" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/5bb9/hdl/verilog" "+incdir+../../../../Stepper_PWM.srcs/sources_1/bd/Stepper/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/Stepper/ip/Stepper_processing_system7_0_0/sim/Stepper_processing_system7_0_0.v" \
"../../../bd/Stepper/sim/Stepper.v" \

vlog -work xil_defaultlib \
"glbl.v"

