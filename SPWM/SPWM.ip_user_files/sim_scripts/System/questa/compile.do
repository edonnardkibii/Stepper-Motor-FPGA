vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/smartconnect_v1_0
vlib questa_lib/msim/axi_protocol_checker_v2_0_3
vlib questa_lib/msim/axi_vip_v1_1_3
vlib questa_lib/msim/processing_system7_vip_v1_0_5
vlib questa_lib/msim/xil_defaultlib

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap smartconnect_v1_0 questa_lib/msim/smartconnect_v1_0
vmap axi_protocol_checker_v2_0_3 questa_lib/msim/axi_protocol_checker_v2_0_3
vmap axi_vip_v1_1_3 questa_lib/msim/axi_vip_v1_1_3
vmap processing_system7_vip_v1_0_5 questa_lib/msim/processing_system7_vip_v1_0_5
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xilinx_vip -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2018.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work axi_infrastructure_v1_1_0 -64 "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work smartconnect_v1_0 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/sc_util_v1_0_vl_rfs.sv" \

vlog -work axi_protocol_checker_v2_0_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SPWM.srcs/sources_1/bd/System/ipshared/03a9/hdl/axi_protocol_checker_v2_0_vl_rfs.sv" \

vlog -work axi_vip_v1_1_3 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SPWM.srcs/sources_1/bd/System/ipshared/b9a8/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_5 -64 -sv -L smartconnect_v1_0 -L axi_protocol_checker_v2_0_3 -L axi_vip_v1_1_3 -L processing_system7_vip_v1_0_5 -L xilinx_vip "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/ec67/hdl" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/5bb9/hdl/verilog" "+incdir+../../../../SPWM.srcs/sources_1/bd/System/ipshared/70fd/hdl" "+incdir+C:/Xilinx/Vivado/2018.2/data/xilinx_vip/include" \
"../../../bd/System/ip/System_processing_system7_0_0/sim/System_processing_system7_0_0.v" \
"../../../bd/System/sim/System.v" \

vlog -work xil_defaultlib \
"glbl.v"

