-makelib ies_lib/xilinx_vip -sv \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "C:/Xilinx/Vivado/2021.1/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib ies_lib/xpm -sv \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2021.1/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/lib_cdc_v1_0_2 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib ies_lib/proc_sys_reset_v5_0_13 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_proc_sys_reset_0_0/sim/ANC_PROJ_BD_proc_sys_reset_0_0.vhd" \
-endlib
-makelib ies_lib/i2s_receiver_v1_0_5 -sv \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/9736/hdl/i2s_receiver_v1_0_rfs.sv" \
-endlib
-makelib ies_lib/xil_defaultlib -sv \
  "../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_i2s_receiver_0_0/sim/ANC_PROJ_BD_i2s_receiver_0_0.sv" \
-endlib
-makelib ies_lib/generic_baseblocks_v2_1_0 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_infrastructure_v1_1_0 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_register_slice_v2_1_24 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/8f68/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib ies_lib/fifo_generator_v13_2_5 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib ies_lib/axi_data_fifo_v2_1_23 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/94ec/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/axi_crossbar_v2_1_25 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/3917/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_xbar_1/sim/ANC_PROJ_BD_xbar_1.v" \
  "../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_i2s_reciever_config_0_0/sim/ANC_PROJ_BD_i2s_reciever_config_0_0.v" \
-endlib
-makelib ies_lib/xlconstant_v1_1_7 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_xlconstant_0_0/sim/ANC_PROJ_BD_xlconstant_0_0.v" \
-endlib
-makelib ies_lib/jtag_axi \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/a12c/hdl/jtag_axi_v1_2_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_jtag_axi_0_0/sim/ANC_PROJ_BD_jtag_axi_0_0.v" \
  "../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_pwm_modulator_wrap_0_0/sim/ANC_PROJ_BD_pwm_modulator_wrap_0_0.v" \
-endlib
-makelib ies_lib/axi_protocol_converter_v2_1_24 \
  "../../../../ANC_LMS_NexysA7.gen/sources_1/bd/ANC_PROJ_BD/ipshared/6e0d/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../bd/ANC_PROJ_BD/ip/ANC_PROJ_BD_auto_pc_0/sim/ANC_PROJ_BD_auto_pc_0.v" \
  "../../../bd/ANC_PROJ_BD/sim/ANC_PROJ_BD.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

