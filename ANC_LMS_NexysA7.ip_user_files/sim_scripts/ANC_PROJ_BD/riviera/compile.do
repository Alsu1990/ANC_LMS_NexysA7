vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/xil_defaultlib
vlib riviera/i2s_receiver_v1_0_5
vlib riviera/xlconstant_v1_1_7

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap xil_defaultlib riviera/xil_defaultlib
vmap i2s_receiver_v1_0_5 riviera/i2s_receiver_v1_0_5
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7

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

vlog -work xpm  -sv2k12 "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_proc_sys_reset_0_0/sim/ANC_PROJ_BD_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_i2s_reciever_config_0_0/sim/ANC_PROJ_BD_i2s_reciever_config_0_0.v" \

vlog -work i2s_receiver_v1_0_5  -sv2k12 "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/9736/hdl/i2s_receiver_v1_0_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_i2s_receiver_0_0/sim/ANC_PROJ_BD_i2s_receiver_0_0.sv" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+C:/Xilinx/Vivado/2021.1/data/xilinx_vip/include" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_xlconstant_0_0/sim/ANC_PROJ_BD_xlconstant_0_0.v" \
"../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_pwm_modulator_wrap_0_0/sim/ANC_PROJ_BD_pwm_modulator_wrap_0_0.v" \
"../../../bd/ANC_PROJ_BD/sim/ANC_PROJ_BD.v" \

vlog -work xil_defaultlib \
"glbl.v"

