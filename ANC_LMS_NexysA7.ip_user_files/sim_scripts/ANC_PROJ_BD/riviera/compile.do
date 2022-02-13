vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xil_defaultlib
vlib riviera/xlconstant_v1_1_7
vlib riviera/jtag_axi
vlib riviera/i2s_receiver_v1_0_5
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_24
vlib riviera/fifo_generator_v13_2_5
vlib riviera/axi_data_fifo_v2_1_23
vlib riviera/axi_crossbar_v2_1_25
vlib riviera/axi_protocol_converter_v2_1_24

vmap xilinx_vip riviera/xilinx_vip
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap jtag_axi riviera/jtag_axi
vmap i2s_receiver_v1_0_5 riviera/i2s_receiver_v1_0_5
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_24 riviera/axi_register_slice_v2_1_24
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap axi_data_fifo_v2_1_23 riviera/axi_data_fifo_v2_1_23
vmap axi_crossbar_v2_1_25 riviera/axi_crossbar_v2_1_25
vmap axi_protocol_converter_v2_1_24 riviera/axi_protocol_converter_v2_1_24

vlog -work xilinx_vip  -sv2k12 "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_proc_sys_reset_0_0/sim/ANC_PROJ_BD_proc_sys_reset_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_xlconstant_0_0/sim/ANC_PROJ_BD_xlconstant_0_0.v" \

vlog -work jtag_axi  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/a12c/hdl/jtag_axi_v1_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_jtag_axi_0_0/sim/ANC_PROJ_BD_jtag_axi_0_0.v" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_pwm_modulator_wrap_0_0/sim/ANC_PROJ_BD_pwm_modulator_wrap_0_0.v" \

vlog -work i2s_receiver_v1_0_5  -sv2k12 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/9736/hdl/i2s_receiver_v1_0_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_i2s_receiver_0_0/sim/ANC_PROJ_BD_i2s_receiver_0_0.sv" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_24  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_23  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_25  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_xbar_1/sim/ANC_PROJ_BD_xbar_1.v" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_i2s_reciever_config_0_0/sim/ANC_PROJ_BD_i2s_reciever_config_0_0.v" \

vlog -work axi_protocol_converter_v2_1_24  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/1b7e/hdl/verilog" "+incdir+../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/122e/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_auto_pc_0/sim/ANC_PROJ_BD_auto_pc_0.v" \
"../../../bd/ANC_PROJ_BD/sim/ANC_PROJ_BD.v" \

vlog -work xil_defaultlib \
"glbl.v"

