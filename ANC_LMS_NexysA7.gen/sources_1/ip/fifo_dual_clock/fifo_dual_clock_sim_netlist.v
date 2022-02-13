// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
// Date        : Wed Jan 26 21:17:49 2022
// Host        : AR-LAP-111 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Xilinx/Projects/ANC_LMS_NexysA7/ANC_LMS_NexysA7.gen/sources_1/ip/fifo_dual_clock/fifo_dual_clock_sim_netlist.v
// Design      : fifo_dual_clock
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "fifo_dual_clock,fifo_generator_v13_2_5,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1.1" *) 
(* NotValidForBitStream *)
module fifo_dual_clock
   (rst,
    wr_clk,
    rd_clk,
    din,
    wr_en,
    rd_en,
    dout,
    full,
    empty);
  input rst;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 write_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME write_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input wr_clk;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 read_clk CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME read_clk, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input rd_clk;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_DATA" *) input [31:0]din;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE WR_EN" *) input wr_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_EN" *) input rd_en;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ RD_DATA" *) output [31:0]dout;
  (* x_interface_info = "xilinx.com:interface:fifo_write:1.0 FIFO_WRITE FULL" *) output full;
  (* x_interface_info = "xilinx.com:interface:fifo_read:1.0 FIFO_READ EMPTY" *) output empty;

  wire [31:0]din;
  wire [31:0]dout;
  wire empty;
  wire full;
  wire rd_clk;
  wire rd_en;
  wire rst;
  wire wr_clk;
  wire wr_en;
  wire NLW_U0_almost_empty_UNCONNECTED;
  wire NLW_U0_almost_full_UNCONNECTED;
  wire NLW_U0_axi_ar_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_overflow_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_ar_prog_full_UNCONNECTED;
  wire NLW_U0_axi_ar_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_ar_underflow_UNCONNECTED;
  wire NLW_U0_axi_aw_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_overflow_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_aw_prog_full_UNCONNECTED;
  wire NLW_U0_axi_aw_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_aw_underflow_UNCONNECTED;
  wire NLW_U0_axi_b_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_overflow_UNCONNECTED;
  wire NLW_U0_axi_b_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_b_prog_full_UNCONNECTED;
  wire NLW_U0_axi_b_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_b_underflow_UNCONNECTED;
  wire NLW_U0_axi_r_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_overflow_UNCONNECTED;
  wire NLW_U0_axi_r_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_r_prog_full_UNCONNECTED;
  wire NLW_U0_axi_r_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_r_underflow_UNCONNECTED;
  wire NLW_U0_axi_w_dbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_overflow_UNCONNECTED;
  wire NLW_U0_axi_w_prog_empty_UNCONNECTED;
  wire NLW_U0_axi_w_prog_full_UNCONNECTED;
  wire NLW_U0_axi_w_sbiterr_UNCONNECTED;
  wire NLW_U0_axi_w_underflow_UNCONNECTED;
  wire NLW_U0_axis_dbiterr_UNCONNECTED;
  wire NLW_U0_axis_overflow_UNCONNECTED;
  wire NLW_U0_axis_prog_empty_UNCONNECTED;
  wire NLW_U0_axis_prog_full_UNCONNECTED;
  wire NLW_U0_axis_sbiterr_UNCONNECTED;
  wire NLW_U0_axis_underflow_UNCONNECTED;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_m_axi_arvalid_UNCONNECTED;
  wire NLW_U0_m_axi_awvalid_UNCONNECTED;
  wire NLW_U0_m_axi_bready_UNCONNECTED;
  wire NLW_U0_m_axi_rready_UNCONNECTED;
  wire NLW_U0_m_axi_wlast_UNCONNECTED;
  wire NLW_U0_m_axi_wvalid_UNCONNECTED;
  wire NLW_U0_m_axis_tlast_UNCONNECTED;
  wire NLW_U0_m_axis_tvalid_UNCONNECTED;
  wire NLW_U0_overflow_UNCONNECTED;
  wire NLW_U0_prog_empty_UNCONNECTED;
  wire NLW_U0_prog_full_UNCONNECTED;
  wire NLW_U0_rd_rst_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_s_axis_tready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire NLW_U0_underflow_UNCONNECTED;
  wire NLW_U0_valid_UNCONNECTED;
  wire NLW_U0_wr_ack_UNCONNECTED;
  wire NLW_U0_wr_rst_busy_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_ar_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_aw_wr_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_rd_data_count_UNCONNECTED;
  wire [4:0]NLW_U0_axi_b_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_r_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axi_w_wr_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_rd_data_count_UNCONNECTED;
  wire [10:0]NLW_U0_axis_wr_data_count_UNCONNECTED;
  wire [7:0]NLW_U0_data_count_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_araddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_arburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_arlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_arlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_arregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_arsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_aruser_UNCONNECTED;
  wire [31:0]NLW_U0_m_axi_awaddr_UNCONNECTED;
  wire [1:0]NLW_U0_m_axi_awburst_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awcache_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_awlen_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awlock_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awprot_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awqos_UNCONNECTED;
  wire [3:0]NLW_U0_m_axi_awregion_UNCONNECTED;
  wire [2:0]NLW_U0_m_axi_awsize_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_awuser_UNCONNECTED;
  wire [63:0]NLW_U0_m_axi_wdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wid_UNCONNECTED;
  wire [7:0]NLW_U0_m_axi_wstrb_UNCONNECTED;
  wire [0:0]NLW_U0_m_axi_wuser_UNCONNECTED;
  wire [7:0]NLW_U0_m_axis_tdata_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tdest_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tid_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tkeep_UNCONNECTED;
  wire [0:0]NLW_U0_m_axis_tstrb_UNCONNECTED;
  wire [3:0]NLW_U0_m_axis_tuser_UNCONNECTED;
  wire [7:0]NLW_U0_rd_data_count_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_buser_UNCONNECTED;
  wire [63:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;
  wire [0:0]NLW_U0_s_axi_ruser_UNCONNECTED;
  wire [7:0]NLW_U0_wr_data_count_UNCONNECTED;

  (* C_ADD_NGC_CONSTRAINT = "0" *) 
  (* C_APPLICATION_TYPE_AXIS = "0" *) 
  (* C_APPLICATION_TYPE_RACH = "0" *) 
  (* C_APPLICATION_TYPE_RDCH = "0" *) 
  (* C_APPLICATION_TYPE_WACH = "0" *) 
  (* C_APPLICATION_TYPE_WDCH = "0" *) 
  (* C_APPLICATION_TYPE_WRCH = "0" *) 
  (* C_AXIS_TDATA_WIDTH = "8" *) 
  (* C_AXIS_TDEST_WIDTH = "1" *) 
  (* C_AXIS_TID_WIDTH = "1" *) 
  (* C_AXIS_TKEEP_WIDTH = "1" *) 
  (* C_AXIS_TSTRB_WIDTH = "1" *) 
  (* C_AXIS_TUSER_WIDTH = "4" *) 
  (* C_AXIS_TYPE = "0" *) 
  (* C_AXI_ADDR_WIDTH = "32" *) 
  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "1" *) 
  (* C_AXI_LEN_WIDTH = "8" *) 
  (* C_AXI_LOCK_WIDTH = "1" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_COMMON_CLOCK = "0" *) 
  (* C_COUNT_TYPE = "0" *) 
  (* C_DATA_COUNT_WIDTH = "8" *) 
  (* C_DEFAULT_VALUE = "BlankString" *) 
  (* C_DIN_WIDTH = "32" *) 
  (* C_DIN_WIDTH_AXIS = "1" *) 
  (* C_DIN_WIDTH_RACH = "32" *) 
  (* C_DIN_WIDTH_RDCH = "64" *) 
  (* C_DIN_WIDTH_WACH = "1" *) 
  (* C_DIN_WIDTH_WDCH = "64" *) 
  (* C_DIN_WIDTH_WRCH = "2" *) 
  (* C_DOUT_RST_VAL = "0" *) 
  (* C_DOUT_WIDTH = "32" *) 
  (* C_ENABLE_RLOCS = "0" *) 
  (* C_ENABLE_RST_SYNC = "1" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_ERROR_INJECTION_TYPE = "0" *) 
  (* C_ERROR_INJECTION_TYPE_AXIS = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_RDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WACH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WDCH = "0" *) 
  (* C_ERROR_INJECTION_TYPE_WRCH = "0" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_FULL_FLAGS_RST_VAL = "1" *) 
  (* C_HAS_ALMOST_EMPTY = "0" *) 
  (* C_HAS_ALMOST_FULL = "0" *) 
  (* C_HAS_AXIS_TDATA = "1" *) 
  (* C_HAS_AXIS_TDEST = "0" *) 
  (* C_HAS_AXIS_TID = "0" *) 
  (* C_HAS_AXIS_TKEEP = "0" *) 
  (* C_HAS_AXIS_TLAST = "0" *) 
  (* C_HAS_AXIS_TREADY = "1" *) 
  (* C_HAS_AXIS_TSTRB = "0" *) 
  (* C_HAS_AXIS_TUSER = "1" *) 
  (* C_HAS_AXI_ARUSER = "0" *) 
  (* C_HAS_AXI_AWUSER = "0" *) 
  (* C_HAS_AXI_BUSER = "0" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_AXI_RD_CHANNEL = "1" *) 
  (* C_HAS_AXI_RUSER = "0" *) 
  (* C_HAS_AXI_WR_CHANNEL = "1" *) 
  (* C_HAS_AXI_WUSER = "0" *) 
  (* C_HAS_BACKUP = "0" *) 
  (* C_HAS_DATA_COUNT = "0" *) 
  (* C_HAS_DATA_COUNTS_AXIS = "0" *) 
  (* C_HAS_DATA_COUNTS_RACH = "0" *) 
  (* C_HAS_DATA_COUNTS_RDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WACH = "0" *) 
  (* C_HAS_DATA_COUNTS_WDCH = "0" *) 
  (* C_HAS_DATA_COUNTS_WRCH = "0" *) 
  (* C_HAS_INT_CLK = "0" *) 
  (* C_HAS_MASTER_CE = "0" *) 
  (* C_HAS_MEMINIT_FILE = "0" *) 
  (* C_HAS_OVERFLOW = "0" *) 
  (* C_HAS_PROG_FLAGS_AXIS = "0" *) 
  (* C_HAS_PROG_FLAGS_RACH = "0" *) 
  (* C_HAS_PROG_FLAGS_RDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WACH = "0" *) 
  (* C_HAS_PROG_FLAGS_WDCH = "0" *) 
  (* C_HAS_PROG_FLAGS_WRCH = "0" *) 
  (* C_HAS_RD_DATA_COUNT = "0" *) 
  (* C_HAS_RD_RST = "0" *) 
  (* C_HAS_RST = "1" *) 
  (* C_HAS_SLAVE_CE = "0" *) 
  (* C_HAS_SRST = "0" *) 
  (* C_HAS_UNDERFLOW = "0" *) 
  (* C_HAS_VALID = "0" *) 
  (* C_HAS_WR_ACK = "0" *) 
  (* C_HAS_WR_DATA_COUNT = "0" *) 
  (* C_HAS_WR_RST = "0" *) 
  (* C_IMPLEMENTATION_TYPE = "2" *) 
  (* C_IMPLEMENTATION_TYPE_AXIS = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_RDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WACH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WDCH = "1" *) 
  (* C_IMPLEMENTATION_TYPE_WRCH = "1" *) 
  (* C_INIT_WR_PNTR_VAL = "0" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_MEMORY_TYPE = "2" *) 
  (* C_MIF_FILE_NAME = "BlankString" *) 
  (* C_MSGON_VAL = "1" *) 
  (* C_OPTIMIZATION_MODE = "0" *) 
  (* C_OVERFLOW_LOW = "0" *) 
  (* C_POWER_SAVING_MODE = "0" *) 
  (* C_PRELOAD_LATENCY = "1" *) 
  (* C_PRELOAD_REGS = "0" *) 
  (* C_PRIM_FIFO_TYPE = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_AXIS = "1kx18" *) 
  (* C_PRIM_FIFO_TYPE_RACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_RDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WACH = "512x36" *) 
  (* C_PRIM_FIFO_TYPE_WDCH = "1kx36" *) 
  (* C_PRIM_FIFO_TYPE_WRCH = "512x36" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL = "2" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_AXIS = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_RDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WACH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WDCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_ASSERT_VAL_WRCH = "1022" *) 
  (* C_PROG_EMPTY_THRESH_NEGATE_VAL = "3" *) 
  (* C_PROG_EMPTY_TYPE = "0" *) 
  (* C_PROG_EMPTY_TYPE_AXIS = "0" *) 
  (* C_PROG_EMPTY_TYPE_RACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_RDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WACH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WDCH = "0" *) 
  (* C_PROG_EMPTY_TYPE_WRCH = "0" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL = "253" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_AXIS = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_RDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WACH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WDCH = "1023" *) 
  (* C_PROG_FULL_THRESH_ASSERT_VAL_WRCH = "1023" *) 
  (* C_PROG_FULL_THRESH_NEGATE_VAL = "252" *) 
  (* C_PROG_FULL_TYPE = "0" *) 
  (* C_PROG_FULL_TYPE_AXIS = "0" *) 
  (* C_PROG_FULL_TYPE_RACH = "0" *) 
  (* C_PROG_FULL_TYPE_RDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WACH = "0" *) 
  (* C_PROG_FULL_TYPE_WDCH = "0" *) 
  (* C_PROG_FULL_TYPE_WRCH = "0" *) 
  (* C_RACH_TYPE = "0" *) 
  (* C_RDCH_TYPE = "0" *) 
  (* C_RD_DATA_COUNT_WIDTH = "8" *) 
  (* C_RD_DEPTH = "256" *) 
  (* C_RD_FREQ = "1" *) 
  (* C_RD_PNTR_WIDTH = "8" *) 
  (* C_REG_SLICE_MODE_AXIS = "0" *) 
  (* C_REG_SLICE_MODE_RACH = "0" *) 
  (* C_REG_SLICE_MODE_RDCH = "0" *) 
  (* C_REG_SLICE_MODE_WACH = "0" *) 
  (* C_REG_SLICE_MODE_WDCH = "0" *) 
  (* C_REG_SLICE_MODE_WRCH = "0" *) 
  (* C_SELECT_XPM = "0" *) 
  (* C_SYNCHRONIZER_STAGE = "2" *) 
  (* C_UNDERFLOW_LOW = "0" *) 
  (* C_USE_COMMON_OVERFLOW = "0" *) 
  (* C_USE_COMMON_UNDERFLOW = "0" *) 
  (* C_USE_DEFAULT_SETTINGS = "0" *) 
  (* C_USE_DOUT_RST = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_ECC_AXIS = "0" *) 
  (* C_USE_ECC_RACH = "0" *) 
  (* C_USE_ECC_RDCH = "0" *) 
  (* C_USE_ECC_WACH = "0" *) 
  (* C_USE_ECC_WDCH = "0" *) 
  (* C_USE_ECC_WRCH = "0" *) 
  (* C_USE_EMBEDDED_REG = "0" *) 
  (* C_USE_FIFO16_FLAGS = "0" *) 
  (* C_USE_FWFT_DATA_COUNT = "0" *) 
  (* C_USE_PIPELINE_REG = "0" *) 
  (* C_VALID_LOW = "0" *) 
  (* C_WACH_TYPE = "0" *) 
  (* C_WDCH_TYPE = "0" *) 
  (* C_WRCH_TYPE = "0" *) 
  (* C_WR_ACK_LOW = "0" *) 
  (* C_WR_DATA_COUNT_WIDTH = "8" *) 
  (* C_WR_DEPTH = "256" *) 
  (* C_WR_DEPTH_AXIS = "1024" *) 
  (* C_WR_DEPTH_RACH = "16" *) 
  (* C_WR_DEPTH_RDCH = "1024" *) 
  (* C_WR_DEPTH_WACH = "16" *) 
  (* C_WR_DEPTH_WDCH = "1024" *) 
  (* C_WR_DEPTH_WRCH = "16" *) 
  (* C_WR_FREQ = "1" *) 
  (* C_WR_PNTR_WIDTH = "8" *) 
  (* C_WR_PNTR_WIDTH_AXIS = "10" *) 
  (* C_WR_PNTR_WIDTH_RACH = "4" *) 
  (* C_WR_PNTR_WIDTH_RDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WACH = "4" *) 
  (* C_WR_PNTR_WIDTH_WDCH = "10" *) 
  (* C_WR_PNTR_WIDTH_WRCH = "4" *) 
  (* C_WR_RESPONSE_LATENCY = "1" *) 
  (* is_du_within_envelope = "true" *) 
  fifo_dual_clock_fifo_generator_v13_2_5 U0
       (.almost_empty(NLW_U0_almost_empty_UNCONNECTED),
        .almost_full(NLW_U0_almost_full_UNCONNECTED),
        .axi_ar_data_count(NLW_U0_axi_ar_data_count_UNCONNECTED[4:0]),
        .axi_ar_dbiterr(NLW_U0_axi_ar_dbiterr_UNCONNECTED),
        .axi_ar_injectdbiterr(1'b0),
        .axi_ar_injectsbiterr(1'b0),
        .axi_ar_overflow(NLW_U0_axi_ar_overflow_UNCONNECTED),
        .axi_ar_prog_empty(NLW_U0_axi_ar_prog_empty_UNCONNECTED),
        .axi_ar_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_prog_full(NLW_U0_axi_ar_prog_full_UNCONNECTED),
        .axi_ar_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_ar_rd_data_count(NLW_U0_axi_ar_rd_data_count_UNCONNECTED[4:0]),
        .axi_ar_sbiterr(NLW_U0_axi_ar_sbiterr_UNCONNECTED),
        .axi_ar_underflow(NLW_U0_axi_ar_underflow_UNCONNECTED),
        .axi_ar_wr_data_count(NLW_U0_axi_ar_wr_data_count_UNCONNECTED[4:0]),
        .axi_aw_data_count(NLW_U0_axi_aw_data_count_UNCONNECTED[4:0]),
        .axi_aw_dbiterr(NLW_U0_axi_aw_dbiterr_UNCONNECTED),
        .axi_aw_injectdbiterr(1'b0),
        .axi_aw_injectsbiterr(1'b0),
        .axi_aw_overflow(NLW_U0_axi_aw_overflow_UNCONNECTED),
        .axi_aw_prog_empty(NLW_U0_axi_aw_prog_empty_UNCONNECTED),
        .axi_aw_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_prog_full(NLW_U0_axi_aw_prog_full_UNCONNECTED),
        .axi_aw_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_aw_rd_data_count(NLW_U0_axi_aw_rd_data_count_UNCONNECTED[4:0]),
        .axi_aw_sbiterr(NLW_U0_axi_aw_sbiterr_UNCONNECTED),
        .axi_aw_underflow(NLW_U0_axi_aw_underflow_UNCONNECTED),
        .axi_aw_wr_data_count(NLW_U0_axi_aw_wr_data_count_UNCONNECTED[4:0]),
        .axi_b_data_count(NLW_U0_axi_b_data_count_UNCONNECTED[4:0]),
        .axi_b_dbiterr(NLW_U0_axi_b_dbiterr_UNCONNECTED),
        .axi_b_injectdbiterr(1'b0),
        .axi_b_injectsbiterr(1'b0),
        .axi_b_overflow(NLW_U0_axi_b_overflow_UNCONNECTED),
        .axi_b_prog_empty(NLW_U0_axi_b_prog_empty_UNCONNECTED),
        .axi_b_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_prog_full(NLW_U0_axi_b_prog_full_UNCONNECTED),
        .axi_b_prog_full_thresh({1'b0,1'b0,1'b0,1'b0}),
        .axi_b_rd_data_count(NLW_U0_axi_b_rd_data_count_UNCONNECTED[4:0]),
        .axi_b_sbiterr(NLW_U0_axi_b_sbiterr_UNCONNECTED),
        .axi_b_underflow(NLW_U0_axi_b_underflow_UNCONNECTED),
        .axi_b_wr_data_count(NLW_U0_axi_b_wr_data_count_UNCONNECTED[4:0]),
        .axi_r_data_count(NLW_U0_axi_r_data_count_UNCONNECTED[10:0]),
        .axi_r_dbiterr(NLW_U0_axi_r_dbiterr_UNCONNECTED),
        .axi_r_injectdbiterr(1'b0),
        .axi_r_injectsbiterr(1'b0),
        .axi_r_overflow(NLW_U0_axi_r_overflow_UNCONNECTED),
        .axi_r_prog_empty(NLW_U0_axi_r_prog_empty_UNCONNECTED),
        .axi_r_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_prog_full(NLW_U0_axi_r_prog_full_UNCONNECTED),
        .axi_r_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_r_rd_data_count(NLW_U0_axi_r_rd_data_count_UNCONNECTED[10:0]),
        .axi_r_sbiterr(NLW_U0_axi_r_sbiterr_UNCONNECTED),
        .axi_r_underflow(NLW_U0_axi_r_underflow_UNCONNECTED),
        .axi_r_wr_data_count(NLW_U0_axi_r_wr_data_count_UNCONNECTED[10:0]),
        .axi_w_data_count(NLW_U0_axi_w_data_count_UNCONNECTED[10:0]),
        .axi_w_dbiterr(NLW_U0_axi_w_dbiterr_UNCONNECTED),
        .axi_w_injectdbiterr(1'b0),
        .axi_w_injectsbiterr(1'b0),
        .axi_w_overflow(NLW_U0_axi_w_overflow_UNCONNECTED),
        .axi_w_prog_empty(NLW_U0_axi_w_prog_empty_UNCONNECTED),
        .axi_w_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_prog_full(NLW_U0_axi_w_prog_full_UNCONNECTED),
        .axi_w_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_w_rd_data_count(NLW_U0_axi_w_rd_data_count_UNCONNECTED[10:0]),
        .axi_w_sbiterr(NLW_U0_axi_w_sbiterr_UNCONNECTED),
        .axi_w_underflow(NLW_U0_axi_w_underflow_UNCONNECTED),
        .axi_w_wr_data_count(NLW_U0_axi_w_wr_data_count_UNCONNECTED[10:0]),
        .axis_data_count(NLW_U0_axis_data_count_UNCONNECTED[10:0]),
        .axis_dbiterr(NLW_U0_axis_dbiterr_UNCONNECTED),
        .axis_injectdbiterr(1'b0),
        .axis_injectsbiterr(1'b0),
        .axis_overflow(NLW_U0_axis_overflow_UNCONNECTED),
        .axis_prog_empty(NLW_U0_axis_prog_empty_UNCONNECTED),
        .axis_prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_prog_full(NLW_U0_axis_prog_full_UNCONNECTED),
        .axis_prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axis_rd_data_count(NLW_U0_axis_rd_data_count_UNCONNECTED[10:0]),
        .axis_sbiterr(NLW_U0_axis_sbiterr_UNCONNECTED),
        .axis_underflow(NLW_U0_axis_underflow_UNCONNECTED),
        .axis_wr_data_count(NLW_U0_axis_wr_data_count_UNCONNECTED[10:0]),
        .backup(1'b0),
        .backup_marker(1'b0),
        .clk(1'b0),
        .data_count(NLW_U0_data_count_UNCONNECTED[7:0]),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .din(din),
        .dout(dout),
        .empty(empty),
        .full(full),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .int_clk(1'b0),
        .m_aclk(1'b0),
        .m_aclk_en(1'b0),
        .m_axi_araddr(NLW_U0_m_axi_araddr_UNCONNECTED[31:0]),
        .m_axi_arburst(NLW_U0_m_axi_arburst_UNCONNECTED[1:0]),
        .m_axi_arcache(NLW_U0_m_axi_arcache_UNCONNECTED[3:0]),
        .m_axi_arid(NLW_U0_m_axi_arid_UNCONNECTED[0]),
        .m_axi_arlen(NLW_U0_m_axi_arlen_UNCONNECTED[7:0]),
        .m_axi_arlock(NLW_U0_m_axi_arlock_UNCONNECTED[0]),
        .m_axi_arprot(NLW_U0_m_axi_arprot_UNCONNECTED[2:0]),
        .m_axi_arqos(NLW_U0_m_axi_arqos_UNCONNECTED[3:0]),
        .m_axi_arready(1'b0),
        .m_axi_arregion(NLW_U0_m_axi_arregion_UNCONNECTED[3:0]),
        .m_axi_arsize(NLW_U0_m_axi_arsize_UNCONNECTED[2:0]),
        .m_axi_aruser(NLW_U0_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(NLW_U0_m_axi_arvalid_UNCONNECTED),
        .m_axi_awaddr(NLW_U0_m_axi_awaddr_UNCONNECTED[31:0]),
        .m_axi_awburst(NLW_U0_m_axi_awburst_UNCONNECTED[1:0]),
        .m_axi_awcache(NLW_U0_m_axi_awcache_UNCONNECTED[3:0]),
        .m_axi_awid(NLW_U0_m_axi_awid_UNCONNECTED[0]),
        .m_axi_awlen(NLW_U0_m_axi_awlen_UNCONNECTED[7:0]),
        .m_axi_awlock(NLW_U0_m_axi_awlock_UNCONNECTED[0]),
        .m_axi_awprot(NLW_U0_m_axi_awprot_UNCONNECTED[2:0]),
        .m_axi_awqos(NLW_U0_m_axi_awqos_UNCONNECTED[3:0]),
        .m_axi_awready(1'b0),
        .m_axi_awregion(NLW_U0_m_axi_awregion_UNCONNECTED[3:0]),
        .m_axi_awsize(NLW_U0_m_axi_awsize_UNCONNECTED[2:0]),
        .m_axi_awuser(NLW_U0_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(NLW_U0_m_axi_awvalid_UNCONNECTED),
        .m_axi_bid(1'b0),
        .m_axi_bready(NLW_U0_m_axi_bready_UNCONNECTED),
        .m_axi_bresp({1'b0,1'b0}),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(1'b0),
        .m_axi_rdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .m_axi_rid(1'b0),
        .m_axi_rlast(1'b0),
        .m_axi_rready(NLW_U0_m_axi_rready_UNCONNECTED),
        .m_axi_rresp({1'b0,1'b0}),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(1'b0),
        .m_axi_wdata(NLW_U0_m_axi_wdata_UNCONNECTED[63:0]),
        .m_axi_wid(NLW_U0_m_axi_wid_UNCONNECTED[0]),
        .m_axi_wlast(NLW_U0_m_axi_wlast_UNCONNECTED),
        .m_axi_wready(1'b0),
        .m_axi_wstrb(NLW_U0_m_axi_wstrb_UNCONNECTED[7:0]),
        .m_axi_wuser(NLW_U0_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(NLW_U0_m_axi_wvalid_UNCONNECTED),
        .m_axis_tdata(NLW_U0_m_axis_tdata_UNCONNECTED[7:0]),
        .m_axis_tdest(NLW_U0_m_axis_tdest_UNCONNECTED[0]),
        .m_axis_tid(NLW_U0_m_axis_tid_UNCONNECTED[0]),
        .m_axis_tkeep(NLW_U0_m_axis_tkeep_UNCONNECTED[0]),
        .m_axis_tlast(NLW_U0_m_axis_tlast_UNCONNECTED),
        .m_axis_tready(1'b0),
        .m_axis_tstrb(NLW_U0_m_axis_tstrb_UNCONNECTED[0]),
        .m_axis_tuser(NLW_U0_m_axis_tuser_UNCONNECTED[3:0]),
        .m_axis_tvalid(NLW_U0_m_axis_tvalid_UNCONNECTED),
        .overflow(NLW_U0_overflow_UNCONNECTED),
        .prog_empty(NLW_U0_prog_empty_UNCONNECTED),
        .prog_empty_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_empty_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full(NLW_U0_prog_full_UNCONNECTED),
        .prog_full_thresh({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_assert({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .prog_full_thresh_negate({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rd_clk(rd_clk),
        .rd_data_count(NLW_U0_rd_data_count_UNCONNECTED[7:0]),
        .rd_en(rd_en),
        .rd_rst(1'b0),
        .rd_rst_busy(NLW_U0_rd_rst_busy_UNCONNECTED),
        .rst(rst),
        .s_aclk(1'b0),
        .s_aclk_en(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arid(1'b0),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlock(1'b0),
        .s_axi_arprot({1'b0,1'b0,1'b0}),
        .s_axi_arqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awcache({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awid(1'b0),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlock(1'b0),
        .s_axi_awprot({1'b0,1'b0,1'b0}),
        .s_axi_awqos({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_buser(NLW_U0_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[63:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_ruser(NLW_U0_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wid(1'b0),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(1'b0),
        .s_axis_tdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tdest(1'b0),
        .s_axis_tid(1'b0),
        .s_axis_tkeep(1'b0),
        .s_axis_tlast(1'b0),
        .s_axis_tready(NLW_U0_s_axis_tready_UNCONNECTED),
        .s_axis_tstrb(1'b0),
        .s_axis_tuser({1'b0,1'b0,1'b0,1'b0}),
        .s_axis_tvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .sleep(1'b0),
        .srst(1'b0),
        .underflow(NLW_U0_underflow_UNCONNECTED),
        .valid(NLW_U0_valid_UNCONNECTED),
        .wr_ack(NLW_U0_wr_ack_UNCONNECTED),
        .wr_clk(wr_clk),
        .wr_data_count(NLW_U0_wr_data_count_UNCONNECTED[7:0]),
        .wr_en(wr_en),
        .wr_rst(1'b0),
        .wr_rst_busy(NLW_U0_wr_rst_busy_UNCONNECTED));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_dual_clock_xpm_cdc_async_rst
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEF_VAL = "1'b0" *) (* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) 
(* INV_DEF_VAL = "1'b1" *) (* ORIG_REF_NAME = "xpm_cdc_async_rst" *) (* RST_ACTIVE_HIGH = "1" *) 
(* VERSION = "0" *) (* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) 
(* keep_hierarchy = "true" *) (* xpm_cdc = "ASYNC_RST" *) 
module fifo_dual_clock_xpm_cdc_async_rst__1
   (src_arst,
    dest_clk,
    dest_arst);
  input src_arst;
  input dest_clk;
  output dest_arst;

  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "ASYNC_RST" *) wire [1:0]arststages_ff;
  wire dest_clk;
  wire src_arst;

  assign dest_arst = arststages_ff[1];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(1'b0),
        .PRE(src_arst),
        .Q(arststages_ff[0]));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "ASYNC_RST" *) 
  FDPE #(
    .INIT(1'b0)) 
    \arststages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(arststages_ff[0]),
        .PRE(src_arst),
        .Q(arststages_ff[1]));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_dual_clock_xpm_cdc_gray
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "2" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_gray" *) 
(* REG_OUTPUT = "1" *) (* SIM_ASSERT_CHK = "0" *) (* SIM_LOSSLESS_GRAY_CHK = "0" *) 
(* VERSION = "0" *) (* WIDTH = "8" *) (* XPM_MODULE = "TRUE" *) 
(* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) (* xpm_cdc = "GRAY" *) 
module fifo_dual_clock_xpm_cdc_gray__2
   (src_clk,
    src_in_bin,
    dest_clk,
    dest_out_bin);
  input src_clk;
  input [7:0]src_in_bin;
  input dest_clk;
  output [7:0]dest_out_bin;

  wire [7:0]async_path;
  wire [6:0]binval;
  wire dest_clk;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[0] ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "GRAY" *) wire [7:0]\dest_graysync_ff[1] ;
  wire [7:0]dest_out_bin;
  wire [6:0]gray_enc;
  wire src_clk;
  wire [7:0]src_in_bin;

  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[0]),
        .Q(\dest_graysync_ff[0] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[1]),
        .Q(\dest_graysync_ff[0] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[2]),
        .Q(\dest_graysync_ff[0] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[3]),
        .Q(\dest_graysync_ff[0] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[4]),
        .Q(\dest_graysync_ff[0] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[5]),
        .Q(\dest_graysync_ff[0] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[6]),
        .Q(\dest_graysync_ff[0] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[0][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(async_path[7]),
        .Q(\dest_graysync_ff[0] [7]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [0]),
        .Q(\dest_graysync_ff[1] [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [1]),
        .Q(\dest_graysync_ff[1] [1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [2]),
        .Q(\dest_graysync_ff[1] [2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [3]),
        .Q(\dest_graysync_ff[1] [3]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [4]),
        .Q(\dest_graysync_ff[1] [4]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [5]),
        .Q(\dest_graysync_ff[1] [5]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [6]),
        .Q(\dest_graysync_ff[1] [6]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "GRAY" *) 
  FDRE \dest_graysync_ff_reg[1][7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[0] [7]),
        .Q(\dest_graysync_ff[1] [7]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[0]_i_1 
       (.I0(\dest_graysync_ff[1] [0]),
        .I1(binval[2]),
        .I2(\dest_graysync_ff[1] [1]),
        .O(binval[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[1]_i_1 
       (.I0(\dest_graysync_ff[1] [1]),
        .I1(binval[2]),
        .O(binval[1]));
  LUT6 #(
    .INIT(64'h6996966996696996)) 
    \dest_out_bin_ff[2]_i_1 
       (.I0(\dest_graysync_ff[1] [2]),
        .I1(\dest_graysync_ff[1] [4]),
        .I2(\dest_graysync_ff[1] [6]),
        .I3(\dest_graysync_ff[1] [7]),
        .I4(\dest_graysync_ff[1] [5]),
        .I5(\dest_graysync_ff[1] [3]),
        .O(binval[2]));
  LUT5 #(
    .INIT(32'h96696996)) 
    \dest_out_bin_ff[3]_i_1 
       (.I0(\dest_graysync_ff[1] [3]),
        .I1(\dest_graysync_ff[1] [5]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [6]),
        .I4(\dest_graysync_ff[1] [4]),
        .O(binval[3]));
  LUT4 #(
    .INIT(16'h6996)) 
    \dest_out_bin_ff[4]_i_1 
       (.I0(\dest_graysync_ff[1] [4]),
        .I1(\dest_graysync_ff[1] [6]),
        .I2(\dest_graysync_ff[1] [7]),
        .I3(\dest_graysync_ff[1] [5]),
        .O(binval[4]));
  LUT3 #(
    .INIT(8'h96)) 
    \dest_out_bin_ff[5]_i_1 
       (.I0(\dest_graysync_ff[1] [5]),
        .I1(\dest_graysync_ff[1] [7]),
        .I2(\dest_graysync_ff[1] [6]),
        .O(binval[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \dest_out_bin_ff[6]_i_1 
       (.I0(\dest_graysync_ff[1] [6]),
        .I1(\dest_graysync_ff[1] [7]),
        .O(binval[6]));
  FDRE \dest_out_bin_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[0]),
        .Q(dest_out_bin[0]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[1]),
        .Q(dest_out_bin[1]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[2]),
        .Q(dest_out_bin[2]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[3]),
        .Q(dest_out_bin[3]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[4] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[4]),
        .Q(dest_out_bin[4]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[5] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[5]),
        .Q(dest_out_bin[5]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[6] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(binval[6]),
        .Q(dest_out_bin[6]),
        .R(1'b0));
  FDRE \dest_out_bin_ff_reg[7] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(\dest_graysync_ff[1] [7]),
        .Q(dest_out_bin[7]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[0]_i_1 
       (.I0(src_in_bin[1]),
        .I1(src_in_bin[0]),
        .O(gray_enc[0]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[1]_i_1 
       (.I0(src_in_bin[2]),
        .I1(src_in_bin[1]),
        .O(gray_enc[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[2]_i_1 
       (.I0(src_in_bin[3]),
        .I1(src_in_bin[2]),
        .O(gray_enc[2]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[3]_i_1 
       (.I0(src_in_bin[4]),
        .I1(src_in_bin[3]),
        .O(gray_enc[3]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[4]_i_1 
       (.I0(src_in_bin[5]),
        .I1(src_in_bin[4]),
        .O(gray_enc[4]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[5]_i_1 
       (.I0(src_in_bin[6]),
        .I1(src_in_bin[5]),
        .O(gray_enc[5]));
  LUT2 #(
    .INIT(4'h6)) 
    \src_gray_ff[6]_i_1 
       (.I0(src_in_bin[7]),
        .I1(src_in_bin[6]),
        .O(gray_enc[6]));
  FDRE \src_gray_ff_reg[0] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[0]),
        .Q(async_path[0]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[1] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[1]),
        .Q(async_path[1]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[2] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[2]),
        .Q(async_path[2]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[3] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[3]),
        .Q(async_path[3]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[4] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[4]),
        .Q(async_path[4]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[5] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[5]),
        .Q(async_path[5]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[6] 
       (.C(src_clk),
        .CE(1'b1),
        .D(gray_enc[6]),
        .Q(async_path[6]),
        .R(1'b0));
  FDRE \src_gray_ff_reg[7] 
       (.C(src_clk),
        .CE(1'b1),
        .D(src_in_bin[7]),
        .Q(async_path[7]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_dual_clock_xpm_cdc_single
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule

(* DEST_SYNC_FF = "4" *) (* INIT_SYNC_FF = "0" *) (* ORIG_REF_NAME = "xpm_cdc_single" *) 
(* SIM_ASSERT_CHK = "0" *) (* SRC_INPUT_REG = "0" *) (* VERSION = "0" *) 
(* XPM_MODULE = "TRUE" *) (* is_du_within_envelope = "true" *) (* keep_hierarchy = "true" *) 
(* xpm_cdc = "SINGLE" *) 
module fifo_dual_clock_xpm_cdc_single__2
   (src_clk,
    src_in,
    dest_clk,
    dest_out);
  input src_clk;
  input src_in;
  input dest_clk;
  output dest_out;

  wire dest_clk;
  wire src_in;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* xpm_cdc = "SINGLE" *) wire [3:0]syncstages_ff;

  assign dest_out = syncstages_ff[3];
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[0] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(src_in),
        .Q(syncstages_ff[0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[1] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[0]),
        .Q(syncstages_ff[1]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[2] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[1]),
        .Q(syncstages_ff[2]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "true" *) 
  (* XPM_CDC = "SINGLE" *) 
  FDRE \syncstages_ff_reg[3] 
       (.C(dest_clk),
        .CE(1'b1),
        .D(syncstages_ff[2]),
        .Q(syncstages_ff[3]),
        .R(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2021.1.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nfzA8D1pPW/vaWC1NulMFY+IMuVRfZh5QklW62II7MVKnPR6Q4bMQHsQAYKwmsJ6/qZz4jqLN6HC
Ff2d4OcmCPfE4lo7FAY3YGFB/+h0eYxtjth95mNmPheBhGL8Gcxa4b06mqy4EY1/ZsWlwEHpYchf
NPEfK4CV1q/ceFQmGwQ=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CD6xnejfwnDkYVzavHKAJ9oi+ytRTB6Gf3TXr4yBqvfqG3/qB+yin9poOnjkr4dvIyQehCZpAVgV
ivcxCaL5s9DEP3jMVNPr3nn+Rt1BcJKvS/41LR7ROdmIw5SrqWEXo6p/ScZ+HFQZl2rpFUmjA8X7
kISCBlf8tYmGWO0keDRPCOo7Fc5Qb0y4dWwNKzncIVpJ4Rd95kY0crsoywnybdNnQ2ZpPVluXB5Z
qtmLFPu4f8BglUrcxVjOCcjtFVJRPidiZ5nh8hXyhUs9PWIILd+szMN8dLmRZTAztJqV1/VPlczC
i7+2PRqklkMSOdceLhPnnsshizGgH5lRk1+Uuw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
f971oKGBoRYr3kzNeGFIuVJJCoGheW2lbzSBFQJCOgdFhkj7QHmMmyoyy7W3N7pPkhuG0nivI0yV
5d10axjqaJY0EnXevPFGXm6byTA1DaRp4HlrbxdbarGgT5E6DArXL9Eai0s2h1A7hP33vdp5A7Su
S89hsRzear6Af54wl1A=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VsKvbwdOqEpQqLE9ycNVklefNZKusGUZ30m6oKAwBoTUXlmqcIjx/dz5rf8gXMMjFyDGw2UHBzUy
WPgDtuEmBBg58jlhwOaI3m8fvi1+RZIdZy95mXboPYaaIuL4s+V26YnSAPTbuNIkTfYoeChv/9aM
8Z+HFURofJoOPjuygyab8U/nUMcBfG3gsJ/4fUX0xp/JuXM7fntLvHs5vgMu+GBsqfQCe7Y93PvT
jjY7q7zc7ED7BhY9GLdF2BwDmeFuhGzNtmGa4gKiBqsTJKl3MZcJL515QIJ0SR1XNz3l/n1StgML
SWYp9n9YOiIRc0rLtNyPARjpC2F1rgM5i/jbWA==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
iCSvJdTYwmarv3PcE/Pq+FpsEyCdqsn/SXpzkOe7uivnbPGbkxnQzZ8TcAfHU73SwxQL7jtvBMyt
tjsTldZ59vdPFx2oK03Ps2GjeZr9OVFbjsiWnI7Dd6Q9JmVc4re/ZCMquL5tz0mM54XVERwn/ty1
HZGqpZIr+lwVFG6gXflbHdjy1XYJoGBTu/yBJD8dKGXvIx722TiSfItxakpsa4GyvgC5lqwT82gI
IDAe9VnPV45ICcUuNuImmmhdEh4BwcPDSSj+J3WNuWr6h8LoT/uhKiTLx/GDE6B9QSRTBPIk3vWu
HoXZ1gxkqq1+fNQqZ08cNEz9/lTlW1Sd9FlBMA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2021_01", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VYkeX9qAmH71+KaXGUKXkW+Jw08yxd50Rt7w68hbv9bdpNzDwW+HE3uyOZTXB4M2CVVvrlysVLdq
QfVbDdMTSMUmx1Yov3H2I07VoIm2MGPxqELJIbI0PYtxh36UKvn10KbTBDMAv4rp2W+iZFUH0t4a
mcgogSebHOIcGzh0632MPyPNGkFhNPbvm0AQSmB9b6wubec4XWLGAoVzuN05HnPxj3mapFFxeF4B
8S6k5hijDF/+6/fpZIcLKOcSTfkt8v6i7AcmL1R7P4+bN963NBEvHwkn//Ug03xFpGltsKUSmMOl
R1G/sZY5kRq6ag/F80FHiKMQVGzX0ja6gpwMDA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
VG0W7VfsUmUTJIrEZp4xJWStuVMnn9erY2Iki6Y/T59/7fRoZ7EdnCj2JXAK4Y/+9fEkRRj7tEje
3jd5Uziun+rxzo2ZH7MDv5iYtR7ug9RFdHRl0bbkYKr/QCVmdNrhFz6iMV5D5ex2SBGgiRviCNA7
dnE13GHWVEqRjdGGejNgZ8OnGxn8Ae9HCwehUK5+X7AOuwTjZC2RwVX6hys+BIZLvBtkFkwoDBkT
7nOEM5ilRl7GU8dLjuVTRtJgeav3Lm2/u1XSoZgcdkX5Y0hZupyV8jt251Fjdv5ULyLEvkNLAPoZ
NZklBLFua0if1iTj8ajyuhviDYmwHoQ86pQcUg==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
nRwtbV8MmAK1FnRSjkDnaYfty4iiFC+J1G9XhTKSP7kpeUgPbLe/9kbJbT8h8k2FTuVQD+RBU8/u
I7q8n5xlRR/rb6OVMP/uHwcdzkP89oZHM/AYhnrQDmb35ToVz4GE+kDDoEwrJ9ruuZhJECS31VRm
rxrvjvc+tj63vhnW3HVw9vkASv0HcaEBeD8cfriAbeoQ+0OqyhNWSJHsCIx+Oz//oRqpZXap/BUB
Yz4RixgZVLQ8S/UZltMbfbgSfNgvWYt1onCCFQ+fb2TNsYbxydRNVxawQBjpKHdqVdpetsu8hjgQ
bx8gVYeDhxUTLU7wOGPTVjRaKMQtyf7X348ob/mPdN7yPTU20gqX1Koa+lj73wqAMfUBPVTtu2y/
pzhRPfvgDq6qVRhsHiFwF7CTM8iunmeU/sIjOn+B3VyM6JaMM3HaMZq2RaSk/3n4kxvtsk6Jbiw8
g4hA5rGiOEOqBLqwvsj4j4JBM3awK8pSt8e9dTBVmI1iw2bzHpiHxQVY

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
CbLzmHcQaI5nZihSAFdXAT6DnYCfJNLgwNKZX5lk4YrdhV69AyQq+7akZ5yst7y4paMu5u3BuI18
AjhGZtI/BAyISgtpodlM7y63EkYg5Hc/nEGf09/UFiFFe7t9K01/blQBX0eC/N7MxquvOGHC87hO
pzPk+ZnwImaowWrOCb7EQ4JH3GFT9n4AVW6SGGQTvZ76r82KuXigALJG6grfcWiJ6LDHLUZVFxjj
b+dmCg01bMqkhfdCb6BGigyeppzfDVVXjBnLFB+CK2rXnJiemh2eZghCIMiaY69eSXichKF39VAG
zfa7hcc2b/SaiPvKNRUkvu9dJtPnyHSsH1HuCA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 137472)
`pragma protect data_block
PKnLYpJGXZRKF9gfhgx43evORrvYHxhEPaM7uK/vzk91N05zviR3qKJGEL3Ups5Nnbrns+ceXWKl
05+Cb4FOsnCGX9MJifiqDdyQrg2sTJ2T46ZeBM74/YS52tITL/W47but0LsjTy8ToYcLsikB7wry
ml7MpVqcZxMNMzn/JKC48yw8tcwiYmDYRjbTJs5ybdr70P47owSufBj+Szl+Zd1gwjWHXuI2fnKH
ywMVM13Cu93Zb9JWr2HgnKg2c5hlcFV3g3sq/M0I1YFL73gUACQNQPgCKRfZm3BbcmFXzqxURUU2
e2dwZBM2yjzERK0PGbMNSLTVy2kBNNZD0taIrVi3G5G1Sj6zR+3mim1206QvXShIKcn6RiC6N20t
kHULZ8K2Ug1II55vY74SlrMVNsZSxwunmWD6BTa4hyXTgn2eIa8vj99bkLDr86KurBS8jNaMA07z
OenSdc+lD9otMM4aGlEJ9OLcAFHoq9J+ZKyeAOMpE3Tnkuh4t3MoHjqjn0Xo/u/l7rMxulkTb1SN
xel5OAqZ+f/T6XSwBIgu6wIa95vResK6gEkLnbu5t4CdxdKKGkHma1J8hv4f6BE9E3iJiHlPiufO
mHlDGziyqpDHksGwZWm1HKduMCzrEIAozZFXDW7kR1wehOX9olP9O4nJgU1iI/HI08YIoaJZ/uPJ
ldnCP/5dlxZoDnWmXBe2i2fJt+DmOYCy61uSMGH7eJa8gmAsjjHjyAsFzPTrQBkOkAr4uVhp2Hyd
OL5F+gFbaN2MtPbzPmQXzOzY+azx0Nfjbl+kN2Nx7nkDi6x6jWCqlt9Xa6Im1xJkuocjm5INohzN
UzYbAOJdDF00reMztBEYCYOxSVlDOZ6PyfLEWkxmBxhMCs5jdIwnZTGq8yMTvIwdAcC49t+Opui4
Z827dHdSp1AElLHqkqPVxjFTWsSITWToiUPOwOlCmQPAmiKAUskydWwL84JprcXEgBbHCRxXjaZk
dIrEeH5hO7l1fkWPGauGcGTip4k0yJqnQzO5Py3zBNduEZXZNbSNySrDEcYmOW37IH9WtDjyOKmC
UCPX0lXDSmE3OXfjSlu6wTdtejOGpOfcyIQIXF09r4vdgV0tKLUm3xFhjj6J+43dvDQ04su+tyO+
Okk54IH7kS26rc5zoOQO4DgSoPFlrr+IwWrs91fabkbqTokvWY8HBv0m1tRIm11Ccs/flQj6NwgZ
E8F0VSrZQpfycr5qO6q/7DTFDBwJ5GKgnEGLr7jMyNwWI+PEx4P4jHuN0iRHpyzfEzp9+gm21Gji
FKJMUeWXldlu1oBr4m47AxQBKma38XLhjlENaUSEV3hHrTQqx+k6NH33vn4ytEdgoxDyUB/P1kYP
MzdAWsIUhmQEK7LZqUgQwIZKCzDhn+WSErMz5ob7j7UgNhbb0V+jsr/XOSl0t7+pN+dUQW0/trhB
Jax6H/CQTQ2G9SEp2u6gQUSQhdbNappOnGM3MAxinFOXnm3ldaz/FWIUrn8PBItoRdfCkPVu/42+
YUYAnCMcoeWcyYeTfP9Z86kvgkLpzLrA0IQbexYCOkPs3TQzdjRNgCFCjAqQE2/raS4RqfuYL7wD
/5yHZovvwPhU9tqNduqlOmgTygNW/SGGiFWVSVV+cIdsNbz7qqLY8IrHGG4VMym8lYLTWoNZECZi
yVYphlz7yxJfD0PKVRXScjBz0aUBH/eb5LLX/iBuOwF33Z/Tsb8jspGYQbKqdzMSW4UpFInqp+rI
hSBFSIHtmfMHWkI18tMRWTDzIRMhthElCQvJNXdXKc2MIO1yfy5SBjIfc21QxMDVjK1B9Ui9UVFR
k3SQ0kQNLhf/1f0+0rYWLtDF70BvLE8pkctE6vW7dqPyW7pbVAC0LtzwlOL00AMiHWXBks2oQOEX
gVOT7AyQa7K0l0eUAYZoUZJKhxpw1kMvD8MYPOFPvTBtI21otjnQWVugLixHL6eXTJwyw+fj8pEr
NujoCpRuxhPM/wJXJep+fzLMVIwWa+TG3d/g/LWO4K+msPguzICkBzXByvP+iQ9GpQI4UeWXZk+5
VFJC4qEc8AaJWVKnTUfoSzBtmSn5MmurAi5dnNsgHvGD6uaE/5pv81an3LfaRBPbCb1zFjwKn1da
YBJKhhPt8km53Dvv1B+25iysnouZ9+r4HEqpinF/5gfvar0aD8y3ns87p3AE4N82brOtSi3tASBs
PrhhG+Y8LkBjy0icirDf9pEt7yupuJpf9MBpe3C5Z/v2HFgoyoqrs8a0aOl1zuF5pO7bT+nJ3N3o
wCRGQoJY9v6Zavd86zLPktEuRHRowmXhT+AcYfXEETazhEnIsn0HgD8+2CLHoPAUl7AveY9/jnCS
/a1vAuQROBmLyRzq3h6jOXKMy2RndDanRHxCTPpvOi367JONGG43Vv9Q24Yul2X4WkMHNt6hX3i3
MqMz7DZ/WtHIsQbv3w0abwYKBqXGEES9IsxFcAJGfJWnIKF+Oa/N5bVNs2jgAehag/lncH2/mYT+
tMlP4pQLun8BeM2xN021OU/LbU+MpmUdddeT1e/wWLvoDeIGEws3KhvvW/SonN7tTm80lCoCOZL0
ja3NuHSJbeif21teT6NUHKpCrijoKoPYo5RgDhhAj4334LzpPzz12CIq852j2ILW5e3LGAclUC15
lxgY/Rto3L0LfMpYIGcHa9p4q6llZpID12bF87CGg2rFCmyRMYQ+ZGiBLa30h1O/WLHPM93vpnse
P4KSOmPlHMsWbO2GmN1dzL0b+t/26IZ+rvQxY5Lr4XcTfGm6N9o6P+dKoDi3rdQWuOl15qUtb1MQ
BG2w+cKN+1qlxUhffmo54/FB7RacJo6jT9Oyc/1rhqzPWFHqp9TXkSBaR1iPhxeuir7c9zATcSjO
l2yLzpPRT9zj/FfH/WTWcbZLJP7sLrlfPDPeSxlYBd9XeRHcW+nQn1fdljt6cLWi3yVMoiMqbUAb
fmDnjqkhv0YH5Bf3HW96NHV6gCI7KhT4hEChp7SlO8p81SfZMDm+/pz0XrYRu1Z/WyxvZQQpqOJK
9JdNQCXoK+sWSrPRZc44OMnCzdZPfr1KS7qcVMuTWiHk4rxGE9sOAaFLKVgwBWUEFMbgXmSU1Tji
toTjc707RD2kQ739xzfznDhtVDDM4IXP3ouQPnFssxnT/RAiEwMr+q3jrhn/2oR0jaYr2llSjoii
gKzw2ycETGms923PR4HLLh6snwPi9CmOn8C+X7A27uscD+86htuoYNKJZ5VyPWHtgwYCIzZAPE0P
Hs0oN1ce/ZJw+455QlSqUSnXKunV4Gw4ipRu2XvMa3P4e3f59/ImA0xrM4Zvqww640wubM6MpZu7
eBvkDyd8j8gILKfKxOgaHnG6mzvfJC/7F+d6B7i518ajxCGbnZDNuFR/pk/i0Q8yrqW8f05ku23z
astSvvMsQgRqoPgXvOEHaFRKSqvE4cad9lGckP+RyAQHszhNQpuaU4rnOCET8eOR8CDA6726VuBu
Q/TgWQPUEj5x87RRvJT4gRoLQLguFzqt/9/VxFKLrROkIwZlSRsejPBkpWZ1sC0XVdGaQs0/tuse
xbhTLv3xcQZdOgZKb3ppOqnSqwTIkj7cWOo/UJDh6WlywY7AAMlFe8uhvicOM7yZoyH9qNOVreZ7
0OaHWy1diWEjRHXcEIOtVH2i4Nh+Ndb775ySilGwokc/Jn4dFQD8Ghn1g7oGSQmw0nF+72hfKXCj
ciAYw6GmUKPCv17tEfQStdP6iJEKWi2Jm+Etj0xLLNVfZvBVjkbHBo82nGdCpKTYouMx8zYRHeC8
/QUNpyOBjrUh1EEpZmKm0tgBoy5PTxJL9mnUXWU2ruOPfPopYSEj2J2QEOtxIGsz8eOzj1RLf3fb
49aCH258WHfgnjt2OmaTRfsD6M/HX35CBiPb194ZPPm1Te9yHC8E0Q8YxBOAQBkKmBAhSj1I2ELi
p+4gBBwg4ftU24eA9Pd44vyjQ2yMcZFo4VbnEBWP63Ca5TU3An22JUQv4vOtRFb2ytDTJodzBhB8
wzGXJjTnvqgfrZ8LfdTeQwQ2AL8kS8LszlukTHrM0fYMqwVMYCbAbDnIwXtO/BJrp1mi0EZznob3
LfbcZUhbEfhN0qJs4j9CybqbJZMNRjvGD2e1G/GhcO9/tILwJTkJrLE8RPONG2d0BmR9H8M/P3V5
Awh54w8XKfiqwWT9wPpcQ5j3/JTBbMlWiwTMeUfmrtpmwuhi51jgjGQfjQr9/1TXlAlb52CznESC
RGgdvP+mbWxgtJmiIbsaFNCIN153vAhd0vD080NrLF0gCAF2V5amTKeRy5o/NLY0mmBo9o7k9HxL
DzKAh+mYhvLVc9g37uqA/7NMJZP1uPoLCOLGLIzJeaJFUGmVk5LaeBW8LWTV7lkluS5Sl2P/ATf5
t9J2uchd2S5gb0q6lWEYhDrFFRBhCj+WR7yViAq9oGJ0i0uBiRiMKjoIXtK0fn/uHYXIu95Idacf
z8uUqnBFWCxrYPt7bzQKdU2/UBoZiQ3LFzLEG3MxnWweuSqQW00Etjyd+SFU939cCrtQ5aqul6Bg
/x5dVGJxv+jrhG+gqwN08D6anYV0dvC3/SswbmauLmHOEhot0t38oTsB8ycSKZXV4eOFPghCRm+d
vb94Mq09uAlltXNQrWLH3mJ6Rai0wU62KkwUWKuORvOXLXC3JVI2Xgi0Ryk9fU91YwFML1J6/8Qk
GUUD+J+zIS/3RUhmChbyYG5G09IS5uCgmWSDwkxahV6co4kJSdLolD7BuS59Mwc/RLLmaL+3cABR
QFJnPtK2wHeL/cawV8n0WUTDtICEOk7ONe4QPELgki8+XNhbHCgW3dJjX7QijSG3JsU3g/HnNgRF
4chCq6g6HpcJ3HoTO/aS38tjd172JuJ31ka/OcrH9wjjNeU/74WtUCyH/9rmbsVELJyJYIU5+6s5
Ul4rb9mjh9kAEZqu9SI4IrIjvvX7J7FK7qk3YhGMCWEusz+dX1GZTP3iTN6+nIjjZ1tTmHZNQn+8
VkpGib2U1n0poPFFevtSCKFd48ZlWbnrY7gA1yIo43D7lctHjHJHUEOIk6POgySMcGYAX+hLsigm
gVmFqzPqHRNGP2gsWwX+icMzQ41LnAvICSQAwGEty+UDzRylBs7OqpgKKvqR1G21RL37QrWy6o94
wW689RtwhgFigSppV39OQJaJ6df7ZdFu/DIvIYV1GKyOo6x8U7PPEXPUO+sAPwH7ytI8u2oQB3Nb
4J9nCsGay0xTY+Qwhady+bNQJxT7Re0650DeVeFsqyKxGyy5vgalABQRN39vsiQYsnzrWOiShw4W
Kw+YC2JnNKiORxV6SUFBCuxEGFkJBAEdrwM6iP0VN5I2R+S9Db1gk6v6Gvpm6uRKZUzFGWAcJIPC
k2AId9JhVvJN92Zp20+MXS4MX34S9XfausTu7ZfRTJAvuYWWN4l73j6oHqOqbeDJmpvUQoqOAebn
12N4NL1+wTojiWM28kPoUrMEk6pAD9WlFYXBXY5tXmhxyWSCOmZlfIRL80/YvyKUQbJJC3+1gIby
ypcQz00OWOMv1MTX9yqdV3jeYU8bY16rmhnpj0OQ+7BqXNDptW29GwU8XDF3N5xGInVctDeo17Lh
PkWMuxpfDtoH6QZkq67f0fD20+aQvDsPR44h3FIi4hJ3k8mZCvhCPvChfOWQINEhZ2rGqRlbHXPa
8ONye7LLZcxOIBVuENAO6KhqFPBj76LjKx/GzNhYEGIXVbs65eIEUCdMoE2SjgE4moQO4XMBvgsx
nR4RtxMpHhtc4RJpVhy2DvbazFdhviA9g10yivktXiorkUHN81n8EzlxAEeRPw0AfN3xTM4ACroF
SXAFewLGHazBEOHMGUR70f/ACFADyPcpU4e8E/CfLLCTHGIFpCzk5kNtY7ta99Q9zdqDkFOruuOt
vLm/6wOjtI44MBCr1BTd6gwiAVFu3o0tWiu1LJG9Op/d7hEGo3hCTOvPpJqkS0bUxqulhlxlUIkl
wobjfX7YJpidc+2LrOTNQ9zD5wuJQ/chEUj34npyqUVfqdbIp1Sbnp+uEuCb3MqDDC2ykJN2G5LL
kFbdbvgdybk0m0HYAtu9XR9p4MQmGrtX3sf6saih9qPN5CPb8hyRpSziNAZVyy9ho8FRkHrqsH/u
ZNzqxGxlbvGPj3AKrPhV7IqNdZJdd/rZ1FT1ZNUEl32g/ZEYcrSqg4Jwt17YF7kHE7VGVhncCUSe
kQCwCGE5qMsVYO45cJbYGq7/uZw/1knNumt+feGpi8bgsY8vkj7N7iRpISmj87MK7CDWqlz+OxcB
GqFY518HXvBHd/d2Xe/bWmCCU+0B6x/QUHRvt8BObywQm/YZAtazXSu3JxpDUW0GvMeE6DZOatSl
kld3du/lGBZgHvCvqusJtWvf2wCh8aYBcOwlwSIDPBk6zEMigwH1EVdk037OGbVELqR+b6L3w5he
q0pAc5/hfuO+HtWL1jeD7gavWGMXhVRloNvwt30AjifqHVMZWCAcx2zoP99kDvwVsOhTNQpf2DBR
Uz6++Z2ggh10bg55pegTArRzZ+e+A+YtWD3KdmOk7yOghg3yHWQs0fYDm5Ysei5La1IddD+UPxj/
PuctDSwC1iNA5EAhf/N+igwNd1qR8RrH84fTf1tNJZ0JMHP/r69miuEXtr52ULfmoNuGgHdQSvFr
YQUTC5rwHucxU3nAReJnscBjVwK3C6PdqXsDX2u4iN1Ql8H5wu10Ca1OpjOxdGDpXSv1nK7YeR5k
c7sQAQS2uthbeegODnXv9FTLHJaNW4cX70cscdfZ6IocucKePpHxbaMAA19bOlEbvSBU94ciZOZh
D7eiDmXpUyVUJcvOGmQm+pKf8gF0SlcnxzvKJ6CPARLZuhQ/d68Jz2Br4o2mFi3hEUt+ZhGxFbkf
Yzw+AdTHFEz6Rj+87U/e8Ix0uFZ9h1fGSF+O07Nldwba16R4V/2R5ojPIFTPYGAYTnHJ0l0xr7Zk
PPmJuY1WkEi5F62IqT3WPfoUets8TyPaj49gTQgxrG71Lvk9mFwYCwX6F8YOc363FM6zArTHbbci
aRDchbgsGNTlpZJuvlMGc1WR3Uzl+RM/2dS/jFHLZ91pimx+xq5wjW1eTbkCQP6ZJ+GMJYZ6XSh/
mi10um/qatOiw2Fo0W3zRiLjvMC+rf9J5w09Il0rf5BUssbnSIPPL5+ggPi9c17bU5m3eYdw4hDh
O7/R+eqZbuAWzJsq4A9oRHvi24ZVRHZ+hNWtsFjxJ68jmoRkoOPVN6/lTN2KPPT2l277pYIKGunB
csi7kIMBKkxXL6GA9LIJIxAoAeiU1hbNLnbBYEQMuL82UpMIRZDP9XKl7IowVeIUQTJLhj0xxulo
/sqoJhT3CLA6Qvmdy3IG/+mX/IX0zu5TVSAyQlEKzbc9mU7r+cMzW/ER1y9Zs2/Mb3xkWYJ7i0Ih
+xFtm7CzMf10eUlC2dKEjYQYIfhx4VjzSZJUp5NHmlT/CTrykuyIdJE7oUt/Z5F27fps88VJBUu/
xtXXewrPAu6YvdVRYVQ0mIpC7RAgks2bkXAAkRmzKCWK3+gQ1hd8CBzDZn21tpb3wlTctGXRwYmZ
fmt3U5uwvGFpbmjWZ7wHBHfRS8pKOTcNQnIgZHoGs8+dM2zWdcqkyf/WZFDxplUcY5o3nYOWIt7h
9O+SetjH8T6CDD3kxgMHMfJrjoT9BipU1K742EAIZZtXXQreGZdcxDfKGP6GBHJptDiZjedQn2Mm
MuKnIOTtPqC2x9lNibftB+hXzOMRZkpyozm+UhVLNS6PNSSycR1ABnBxkaUvsLrGg/c6xyico0Zf
woM/XDlEO3hdle5paY7pKoZrSX9/Ssq3apK3X/aCq7or0xszNErv8TeguRiq9Qn6yALQSbiXhBMR
3c2AnFkWpDIsg7hPi10Gx5U5rB/5ijcgxqxdqALFedFooVA96NWgDXkkU8YPCco7mmcQk5yzz3Rv
b4xr/L4fpmKIB4BMWRJruGJi1V9AMjEubYANnXgKD+6PjAO7olpJukebXiioqH3i8d0BSsmk1Ehr
cF8XeDIh1+nV3lknqkaawxkE3W/8ZR6rF1vyMDVNe/o0WItIQKloJL2+erR7H51WcT8DG8nOgIa/
XD6bMnJWb+QSlOFTOQZG+8Z2n2bZX+mYgqlBsGI+3VOOh6JfdyJfZQllUBkQEzolKPrvPJ7epaZP
4cXyir5wNfoRnw9dT7noQtGREsMC/soaiENcXGKGP0BH5jyY9rzRo4WPoUex6uKShO6lm/Ks+xGq
iiRbuin6j/ZlJtFOLZNguZwRFkRh4Y6eSGE7GwqRbGTVmiO594JAjzLNYV7PJWm7zze/BE2zrCQn
4xUL+Fv+xsr0ZHSwAqL5ZKUMyWKRyWfZxXY4E/aW5tUFs9ZPr/Qi4rfnR8IxfWpoPWso4akWo+rP
UTJxDi4eRRusgEm0cHWQQ6awxRPDT6v922q1yyEMfLapG5tV2S62nZGVdhN/8LTi5hdsbDVW+JHU
jvEmQYX3xDmb0E1+FQQmQurhNmfGsDGV9M9R1Ow/hq1rJTOqtlRzXEVXGgcZzBlYaijIJjDzbRvn
hj66xQ/v5k4hbEy4vZQL173G1D5KDQ8Q3fE3Kdu5im3PSa9JloTakN8nZPXPUaSBcQnXeKjiQlCz
XueDQaUiu7ZnCEw7hmGQ7OWt7YjPlJNEGz7s6XKTqT5QD7VSuYoAC36R6o0YsGqy0wksrOw5KLg7
GphQelPqtkuI0E8BTeEMbST/T4xvSx2BqC1aI0PlgwmOLdinoXY3mDggYhZTnLe07mszTkLV15hm
dtLln72WmoM8/pVmHenh/O9ND9iGzyU8jQvLYv8cOUdA3jD1JR+7qLg+MAjH3RQtLZdakakpCb9V
mkNNvP+80bMLfcPv+WlEukS+Dja0SnKz3gFIUWjAvMrifSvCZxIAXwSoxe7fuRymSvCsakKjmHlE
90fX9CXoAVasTP68ZUnSbMLwy6BrxFtiajKbhQEuXJpzBGX6AQ6HzCMfLINGHZ0j2UOgbD1huoII
HbUxXCNKa2eTiwaWhEq6pneX/FSZo3i8aU4Dh2Pl8lOOfUZC6WanHofWYqlZrItAZmqYlq6jCxPU
ZlNgWD6Fbz/epRMg6/BjEqvcdGeLTWG9QXbyG8pwfC9UnETSCRFx+WW9EXwqa/wI3zE153J0mNXo
IYKpLJ3hmXsF4HA/J/Cg+bpcXwa/s0rxkKSfDXMjUbkFLGKTjacbFyj7tS7LbiVvnfG/WjZOwpnZ
PzqMvL7pVAimoFArHGcARJid2zACbWa0wI1kGj6NV7aNVmA6da2PWr+F8ZWwU4Otos6TLJyw6nPD
qPCAg5OYLV/uMsZTKOLLw3+WBOvik3nyBcvQLse0NfhqJlxPXDgYvEC6GJkhz8iLr5fUvhr8+m66
FAYylNEEuLauS8STIlama8htXnepy52KHQoT2jU9ie5hNUO6rH4j+mNcsJK20Nn/JI0cjIhEPzZp
UyjX2ML0dokrdF5eAyXCiacP3DVtDskSbbPmu6paczJw19ogxA6qA5+jXWPYs1dvciTlaLBSeiNO
wDYuL2UVB/6jSawpjpFMrdqMNc5do6t/Z7BqfJb6acNnZcI+Od73BA1StdmLvkBBQJuitXrkzNpl
842+D2/aajCqcSZZPOeJ2pcbetBvP75TELoyFqP4qLy/1/DbxNEqZLloaPgkcnzLGfCOolB95dSP
jglOJWOETl+5qAVLwBB8Ug++3wD+ch4UO5KQCwob31Qy9sL9kNmJFDlMwCxt+nNh68kA9A2I9qi+
XPOzj1W/0ep5h6SDurYczG29uGlFbts7o0FYPuPUqObKhiwpaWVx/QRDqrhOHnzvrOnP5KAGWZ6z
NRIO2wUMZOTVSq/ZGXjpWXatBbWuZeLxss1hyN9Md26bwoNxW4/kKN8ukNilV26/IlNx+bm7m6kx
FTLsoSpIr1qlTADBUPTHkO7pWkqWfj+T2B/acT0qNEXumAP6vC1b+zGRFU7guqYTO4IsLC95tqxM
ArrxrQCczeoEW34AgqJccg1mCxV8REfLDH9/Ug6MvCEJ5WlWiw41CiuuXN6IPxDq+W3ee72ZGHtz
68r7UEyJ6RJ0+Kuha1oXxLgsG/8HXg5SdkTO+Tr03FFDpU0Lt+qdDtUDpnK82nG3KyVh+Y+jydC7
EJHeYu7Kv3icdDT/hWK1o9Q1Z0W0jG5N9+ijyPHFP9e6+cpTfFNTQpHjB4FL7+2hhSrplKw3AFyv
VPoVaaBgfZO4JEb3x4mc2bkHVu/6WizI+C177ooSu8gSCUk3rfX0vDXAeQqeaJWy9glwo8uELzgv
MVVtaZHb+KYX3T+zxLB+6pWknb9LJiMEPmn6puq02NNiHfMwmpAe5knBTE26CM0Rev/07wJIb3vh
0DQjHfAS6xtXAgSUmYpY+D/i7lVzsWfNcc7inYHIR+saLQnXBiBK8EGXKaR7C3J1GCtcBAOMcvQY
u584PRSFSjWwSHfkPfUP/7gWx7q9A6BAkjKvoFD4no2ns504czTShkX1WYfI+QQzd5DuJXYzNAUg
i9I2qTtF4C6jlXzZS4eXL8NhPwXQKHnC6GWwiczSAe49RnP16fsJdBAXUrc4C/ZMfxFH32VcXd6T
uUpVhI8RbVacsHMNqnrhJnX3gB0oCa905TSXMr0r0JH58w/UqR8/TEqeuNGg92mep+Z74nYYaxOC
9gcqtp3n/NHvv6ExN9EKPsQq7JXasqRjdchg+sIrrO3aPoX2jIejkf3P2KtIu4pShoiKeI3Pysbr
AcCOkXqCLFr/q5twYqb7PiM7nxNHlHzwPOSiOIRql6nODrB9uW5ctwJAOMcnF8AntSodFQrPkrfw
8eAZ/+fn8cieo5VRhIRGJYF5ZtUQiXL43MYQMnmdww6+MoNeHWPHeEhiW1ff7haxHwLfiDMF0COe
Z+StkPdGzXaRCjfxKDBqmNuT0D/2u4ftTA/iK7PNqF9VCScIC18rlzLIKuyMYn/CZX0nPKIFVgo9
tg1rq+mnfiEAJiIh0JqRPoXXq0zjrWAaop7yvo0dYDUWC6x0vIfqn9Xgth7GeWTkZsXZc8n2/DHv
VvHeNVjUQmtYBQJ+L43Xw5ZjFFLrarO6EMfjjWsEx8qvoU4tVaqM/lcGQYEsN+yg0dMbwtH0T27s
LrPu1oClmFbBhRIQ/CL/uMOAqlBDYmBT/zw0j1OZYHvQdv9XVFwpNvCB1xK9H4gWjUkg4dLXAPpl
l5TLSCqEqlHdY8pyf2U/MwV40T6VFENKqK32Z/HvWoQQCL2hPzmj4HqIHZRqeZpBOyNLEt13uIZb
rpNcK9fBMHMxX+PgjpdzT6Khp2Bn9w5OHCht6JxAVS7XCAARagyJbkDf+ooc+MqgdmXeMUrw5IGj
yynTI3xH6DRWIKl8gauSzsezZPLLMssHZfgj08Us5bnu/Y38SvT1+7vyYxxzf+x3QseE7UjAZ/H/
ZPCN7BX/hUCfWq9NsBh3zm0vbi5wVxw4z8fO1aonQVtQ5OtKwuSh7wC+bxBetONBRjxqxUoPcxuU
OvREBZqqzQSoIX1A6Nj+48FfdBnbePQYQes2VCfSuWjlgn/Rj2F7bL5g3HJbKUJb/m7fTBY4NpxJ
bQZf96dpY2KKcokSuzhztH68OhAZrLAwd8BxVbtpoqH65z1GFm0REG0FeiSjFxUjBtmHUtBufOt6
w6g3PX7rmAc8SxVlWP4SLa/NY12PobE+rgSh2m0huhKTrVTZHc+wtOEA8CyZbPcJso25U2MCR25g
h1gj62sOM+u7+zXVJIB4CIVjuOoudR/bTjmYN54FdI1yVtjg3ykRoCalapUVAyrRMdpCRzS2kkkq
gHno1ebrLgot2h2aAsyWTOzuM2XKF7GBSmirMyaL7fscIaWRlKoXwwz4diWB1pKQ9dvtSyC+qFTi
GXBurHj9v5iUT3Loc/NBknhviLZriyuSVKw4YrUdg/FF26HOMJuyrpqK0Vl7IaAhaTpKedo1NtgT
aMALwI3gGnw9/rx6wja8Dwa/3K+TFd19tR3G2FvuOlclQphrdJGt0DQAEOs0IpS2oD5P1jrbi5Zy
dy2Z1D/84y0b/Ep19pCLl6e5JO9Vto81uMeH6rKYrbDDJFXCKT2S2g1RUX+9flC2gnFu59TraZUe
Hkb1lKg/za+6Esy1+1ZGDzNU0hXud+/nXC3jP567GZC1hq5tqeb59opq5nS6otBj2SiA3F6SBB2N
mXi2lREtXQf6uCX0obe5eqYVvRjedm4qV+baSfdDRJQJsFJLaOZ4lFyun8MLCvjRdiG2Z3yORJK8
IywJCn8bZf9UKloqMHGgffgSSrE3FNdHo90MCiVWrUSg/kNv1ntlrVwy4rp5exhSyzcbyqAlNEn4
Idx2RS6G+TKTc3ADGsKTk3VrsZuJCm9Q+UNRJwQxjBhDZBMZHzgXEZ6qzMPswUc/dUqFTw9HFh6M
JkBH/FP+0cLxW1f++8OneYcXmrzbCcGNNKL+dQiSCsQ+0u5YZ6R59+ifLQNBCxW+xm/4+vanZ2tG
x4fxPQ5+CP5CtyijQMfzJQuhvBdl26qhYFJ/iy+nqjyhfsGyyT/asErX71011Y7kEXy09oVIYd23
gDtKyg41ardXlTxzOMyTVulnnKqeXXXUm36Q7ZlRhC7AffWjxoL9he0Js1c3mSizQU31QppRPOaL
B6tS6U9iFSrkpXVCTewhi4lZk0ye2pnYrjOphTe4i+B0roVWnGMCRarE4PVWtSpI6K+KMVObMwvG
blaeRTyr9se+Aha7J/tSkF7GHl7GPM7mDp/VALBO4fhUJxeneqqReoT6yHJoNfyPY+uVyfNMZwXd
COnAxXfaYjFbAjS1bafeDo6QHdEMqni+/X3YXvfWOnxtEgDNr/G5zCNeSXGEgKKJy8/uwbtQI3DH
eR98paOPbTdsQbB+yZ8Q8qqX3qhGSnD/vS9zNkTTqgUPTvU/UwuXWy36CKeI01H4jFSVU3otLaDH
rWB5FeWIzUJ2qP2UXLmWjNhgS8iJYCY0R13eY8Q0dSfbNf46PIdUS3qz8NDyb8UBs6Tu/OMi04p0
vQgXnUPRsONqu7Jy7CkrmJeJPGj0izvpW2XKHwWay0/WlgE2sKlf9xV3dbv6odzncqXsYS9ViG+x
ODfrwc4c7FbU0kSLqDJv1CtBMepk9skd1kj3xVTc3hHInGamFJsG0cQRPH1FUjGfWNeXQUqdtZqm
svbIOgDwgZHhYlJ3pld4Ct+S+/5P7qvO/HAs5avzroiZxvp/szFhdd8qkIV+iQQFtZb7kmPmtIJE
SZhCq3PeshbdeUGUaEinJ1tnGhvvm+VBLpX1INUjDFcMUoxF3rja+P41Ydx8LNXk9PPpRYAxsKTU
rMMRaij8ES9XImYKdDwF/aSqhBe76e0cjYOPwWW+QcCJbPaVrIkWTZc0QVWcsTVsF1AkmFpEBz6A
89rCoCikMIcJ//5F6IV6nln3z1K5dnU3qXukalEFTOHUniwp546cInuixxZWHg6D45eoQuys1SNJ
cZM4vpeKkPBmZj2k5caMPgLLZKoHBvVsBTmO2aZrRoIBeSSp/mZTI3v+nhEOBAftHe2tWS6XulbZ
QSqmDXVBqAaLJ17re+ibDLIaJTIV47n/f79Yuvda3ouom0PAffr5jCAsdro7NGaAZt9aO82v2lm0
0IMG12BZCL+UIewXopi/9ZZF5UY/uAMFKCntudQE3btlYqlaViErBzSH9vwNtdJI7wsmzowcytn5
Lqcn3U31ch+yspfpSeF/Jv+8mGx7QQXK0TfCQ5FigyZRBsJurY4A8X0RK5nlpoUO6Rc14XYxUJ1O
Tj0Jh3d0ZiyB85/MUNMx0xRkIR0X05ZU8+xiHvaL+ffek1DJ3K0G2E3wbpHjohV1B1seW6p2LCKV
YMGtBcHOvgT3d8hICLfg2Aai1lPUKwKOAOGbXLExJGz9Cx+GNWccI48csLF80WpL9i1oSrmRsAL+
gSfZ/SJyFG1quF039qN0QVJiBvso3fZo0ZcPXyRcQDMEPyAmeca2xScqrKryQMYWUbn2pv6zcTfH
dZJ9UYVMRO1Po4cVCiF5VEpk1tbg+MJkIXLT6UXl3qtqGZnP5A0acT/KQ1bUFzrMTJNq4uAvri6b
7WNwyGHU/i3/DO1gjscwAbvVDb4bLd3WvFsXP9epVaK6x3khjApM+89yz1OAI2FO2pe2K/fvtnxQ
TiAoJLZk0oM0RZyTeY5mkrXEgJqH95sPN6qBnfyDgasncrNoQRY9k4ywU5Jq1hmo97tULT2GBzKe
NMjJIX/TKX/dtykhosaEdjXzHTDsRGv8FaOhtMwVcgXRLZ0p5DVt+2xCCXcgwqQWvP5nDarhF88R
S8c+l6KstBerxnJugRLlegagYVBGBk4oS1cN2hIxcSyLDeXlpYNvAbNpWv47TKUMY+91rIN6jhUU
Il2iHiXIB+khZ5LXV4AG0LGoiuz8Cvis1PHGsPTMQyaUf5nFbJGE7ZpIRzHEqnFOoQ0T4WpRXJF3
Ji4y9tsBktfluuZ4tDOtXTzRzKWekbdUb4qsn18AILJy3x+8O7C9ByROp1SOz3jAJ0yH+mRY0UL4
1QaRdLbiKpKrHpW1GnSf8w4UnDQFUDBgljhyYWv3tiREA02FblFyaSKs7avg14afWUFxULwe5svM
bVeHN3vsj8dug73g5sSMljl68Lkmy/fXgZ/26EyxXWDKf/7Bs6Or1tpMuzZgu7YoRQY+c4ZufYgf
0AGPTHI682nk2tNvwFSt9dZo7kX+iOcZ8HXspIRv0YtFoj5KHwnsXdtK9BYkg1X7hOp7WKuXnnYC
2ShX6weLGIciNsu/kDZzkJ7ETZ+Zod2zxnI+P7JgixylXoB9rm2V8APCunG8eGqjKgGHLoUm2N5u
oH7S4uIbGSyNO56r+0ARDUS6BOBHLRfbKbz7Ly1mRaDe9sK49hRdTrg2TN/WZTJxFpFS+6uY4lle
a3dY+nzPCIZR6oLxPis5aDEfyB7C2P5oUWqvJrZgXaI/+NwtPntwpJSyBiDyplCSYcDox8XrDFjR
vrWkKI9Bjn8qFUQ77wxepOlHXekVztsAA5e68I0Wr9pKXncuanxA6yRyeR/NAjDsplHkpOkr+07i
T+r5XewFOzPaltdHhzp3BIu+Qa3WLOWwIrouBVxjzUq4k7JLaigbgM0RCxPWXmSG1Ney687M4Xg1
nQlwm5aPGyK7JHjc2ODOD4JNnG4v2RxStV2j2dZVXjukpQClhV76CZx5kuHqTQJaojYjHyPaAtYV
F44w/4Rw9M2p8W0SBhbZAmWbkqQmPvhLG5QkydVM6tw1osZqACkXTKTYie4imIad5j06Afaw+iuF
23OuOn75vU2BN6OLcNGDR7mUu+S5Z3PzbqhmNkHUDozC3UNibBTO4ggWvYHPBlPZht+Xm+Wpbyjb
5KFDqjukihlSzYTQepD+A7sxceqCBMe3kn/7hxiFHHLQNgCGe7tuEQ3PG725ky/pMOmyqF0+GmHL
YNgHgLccHQ7oMCLhWqrHyIv9DM5ZV7KBMvAHHbc+zND0HPphd+pUAR5HlAU7jIFMeviJCYs+RM4f
E3spaYBgvMzL7IXjAhDOOjy8mcCJ1mpB6zjnH0dP+w3QP5CT7g+4tIJ4umLqjd7yS3Cbzo9GiySB
I2ApARWx2D0isGT4boNqQtyboERGGsTy4F8IEOFnZIgKlTUcmwSBqYUYGqfdzN92Qun7X0XS3hhS
pWSUzBTMy4/4yYF8zeuSPtXXzrmv8RL9dHKMCx9rUKEgciMF6YtRvm3R+PYEWglIDDroqsOx/6yl
8bfMsxUYAMlSliuGrotdWx1v6riNBJKPSgYUuE3pmAKr/kVUVNv/S/KQ7tjLvju+TsUFJI0pSwVp
RCQsU4c++0mNRCGW7BZdIjBN9tl/jsjNVf8e1E20kM9flix6YmpD+vm6YgHGm+zU6QxSymj6czNT
GbspKeOshWH0QiTq34rBy5+foU2rrAjGWhAU3HhvNXFFifvqFJrzHcC6rB2a8wp/sznts7qANXlA
1VWQ5iXErAskzIogbk9NOEh4mfTMB0jxdKFUaYg2Ho97TyMxoDZJQ/aVrctffI8Qb9Ezkb3Tne0G
pdNwHQyuAlgwMc9LFM+0vJaib/BFk48qVzApPGHIwUUHZKMPADsDg1K7vCNyZXMqf0JZXm7PTVqw
VGtvi4sP+GGrUDdH1ffIqfSxAtuWQyPDd5b21eQhFpxAqTqcRMo2FdBOakhh3C4zuQgLC1bSsIWu
dXSNsgZKgN6lqHneuAHbetDpZmT93kqP4JMEohoFOb9YBUWdVHsBF4tT1YRdOPdiInPYRnaRRglE
Xg4O/tG1mq1NqVGxEjkt29j0VFoqqPdfa20+AQMmfx2drWcux4lgCjRkn+29bx9SHWotvg/foaVm
vyswQMNwt6s9Ax9GHnsPHwva7pAh8ApZ85pBdR0hsN8fX5syvkBfr6kN5hCIZb3n9mgWv6FQb3Wn
5ZCme+D7hPYg2uuAKztu6j7EZ3HKcYXxsQ7U3fOlUKiwlOtEyHeO2Hp1Fczr2Tt0bICpNOkccdTn
ca7m8jIcg2s1ukRi0kcYoCx1VhMPkROnbvis4uTMfsygzUTu5buqWwdk4ha+1h8qA+UFZIiU8jdN
rutbJ27xehIGuddC+a89NkoMoBD0u4hJO4+8biBOqQwEdCgWTlwf5vdG4p+ySeHkEIBLIuYb0ksf
8BRm7ytJCfhVrjCuGjMWZtkQCJCtrYqQAVwkECiqcoPiMtgZaQZ8YbjUTZdHMj6PYaYTCbCC2EY0
K+BcF2Bibu+YKFooxq6aqhZ72Uru8BvC2EVr7dML00QQ9SP9W5RsBNGhDZXlcD2Wv/c90VUa/vg5
0oiMq0hncxfGYXT8NxVzblr/7izHZI8MjM48lJU4gd1+I59eSCv+DaAoZvQYJ19lfLTfaoSGuk3Y
auSoQZoUnwNIccoLfEQtzprf6qIQUHxTNjZCEC6F3VuCw1y0o6YxZde0ticZ3ix9ZagEbr64PGfi
hxo6Gm7TH54SdUtUj8n5LCrgXbObB1zKDP9yJNT8L9YFauhAnkqxXSRKZmd44/O3+TkQuMMgpWaG
1Tmzc6jm2wpyftq3coutLhNXQDq+3SYr+inYt66j6bnd+VGOiERWcsmWE+qKlmAQNVjr0vXmbwyH
yaELZXzIOYtHPx+8zeZFYqAwo6zyxMDvoi5IsJwBRLJuHxflRdi4Nb07sbLgiv8W59c4SY3VhBmk
0hfIsqUd31omCzTTL24Nx7jF1vGOUxTYVGwC2KRjA8C1he0RC0zjy1ayV0UEp2NwmoZ7jkGL5ylj
TQcm42w+aS8oLRzMOZzu/NYwFi7l2zKIQkEs9K9Nuw5cIY0K7NMoMonoMOTTnLNLSQI3oOm/S68A
/svBntNpiCNAHhoLqfPAZYNdhbpBJ5csWHUjeu0a2aIZAo9VusXVuD9RW3hkiu4+RerwYfgwqOd7
DxeuPv4Fkv2eTPNC/VhGa1bJV0NRupYKbhV6ePREMNdP3RyCPEZvlCmZqCkhJuSwshCWlEdD/sqR
XCE4E+Y8Tt7W1VfMsxtzFtZj+3hu/fLQ9sZv6ZrWoICrXnd+wWpGmgS+xqHV0qpDRMEDItXnxtQN
2+HtrKf/xhKRL6xRexdLq/mZWsxnYOVF3sQbaS9Y878rIk4kNPScY/x4XfMxmYv2/2CvyculoD8T
pQq9yhAAeKuEoCrn58nMazGWitBXNgM3We+dIM11zYGT9kyUlIj8eJ3WM2LFENmc1h/LA+ljA8Nc
+bjdYsRmaFv8n0Z4Fc2zdVxbNP3XhJIgXffLJquuRR9cxxhGroca0JZdnKpm/H4cCiJ+GYJ5WFX3
3v3e3T6BjekoTvcv3hYPAKU2SpoTrnp38knB1v7lN8EQUYbruVklVhg6Ok9y/Vdi0F1D8/rdx+Uq
mj7B/ITp81OhVYsZSXvJlWpPa9FbB2HLm+GNYNGnU8u1pH1JjqI9p6iZgc6AkBo3PmoI41Ywk9Pv
5k9WdspjYFNskG6Ik6fVgcwwobPAjGqH6Zu/7sn4sqA8+2bg51W+Zt4Pc+TNEePGahz66zlXOPZ2
rPFhvAwrYvU3zm9CUGMzuTljh9Y8F+ngwnT+oC4q5iXqo8SLQFcKv4rSZTHdM3mbpnzEjvjBg0Ov
8xDmUeEXCk9NwO9Kx4f/sR9p/rIyML4pk4kVPm/BuFdT20MvhXR6SL4ghW5KWTdPJdLGsfe3n6xw
GDtJoqbZ0SFv6wVf7CeEg16BE94UsaD7PPfZV2+SFWy3nCiz36+wCL/OvK/rTCBv3PPtBdvO/rMh
GwJqJGNeeAos8UBenZYgpBKFYqEEyRS+5kBmQi+2eT1fMpbhHJknc2ex2f+1qzH/WzWJ8aN1V49t
LXp+SZlruErrqAx0U37tRkvAbl13bCq3/hkgy/rtKJEvyunTCyVGyCnqf9r9QNE1OCN2KvoCTEiJ
d0hPpXPEEtHe3M37ikufeUmbjVJy5GB9Wo+iXTSyuhLvl9KrsFFlNSBBIolaHbRirQ8egSLWIWGt
0VQXDSvcmIs+yOgxQBvxdoly+XrVRorU9EU2+LvpSZC9Ei0w7TOJ9bfsmlh7jaSK5E2Oug5q98oV
1XZH2OG7heGoEL8zaoXdkVjmmLwIjABQs3QkZ5BE04lOSekHW42CBgmKXwYSwDVCo4eLkPUnc87U
jjF9xMFI8VKsIj28VZloNbtGvXcD0oVZmgWSdWU18X4sbNzvDrfPzDFxL+/3sfZ999J2P8hPx005
gBQnLJf6XsE8WLV4CJYJnLp426gVaQ8fpDutqFiColDMclR6Ao0/wG20XnSpgGMn+Yrfq7datkyw
Hkwia6Zt9Us802tCU1NOZacpg78PSPc5VVqlQ3PJgQ3jVHBGv0vWLasAcpUnb+rkM1cfLBvxBfLx
askpuXfqjC5+k9NgVzze7HwIn7cXGj00DeE+dnI/mAYcN/xE2KO2nomfFOwVGMEVImDfIzDukS3I
g4lzHlU+VOq+rB/C9Wt0XEzIhvdy8TLe55MnuflS5VpoJmk37hgMNJpd6VZQBaqhzjJ2gwuraAiB
hM2NxbEp7j6hwcMaACH3wNn5RlzXrorQvHgozhEv/vAz91ma/sRqdo/jRfgNWDM2JphSs3lIcEEY
qw1cBGpufWmdEFMYww5ldE4YmQwBYKWi9+JJS+zhe1/kSJ2rsdBivtILEhaRlqF3DenWPTnSV1cU
civV5UVECLvlq5TkeNfpP7OPvXxxuxGUGvOt17mowv42Na4carTNc5UAVStn6X5b0lcflFL+hy+H
9X+XoU1IuFeX+Wj/TfZmhSKppGp9JBRwYeisy2dG9P8rZsvryKVwRNk1df5HQbvuFC4tON1Fp7nT
eXKtpWxvhLRPiKjYfqRhd87Gt/ee/0b+lxiAvlrotQq0myyv8VxH0VJtEBnpefLpcZ6+fcxj1UDp
SBOoxTVomwFRs3KWTJ9esN1ZPOrLO65rOKs/5pHKYGkMsaWRYok2wtAVGtdlQEYPxVMDb0qrLtF6
iZB34mV8HXGdqwvuNcFrPg098USzMG7K9NqZr3ZHHEcnn6FlH5fti0IYVwvlr8Jld8nLgMdKRm3r
nr6ZfwwGoU+MGWGcxaQFDuPZDDcht14AebHHyS71g8xTqg5sL5UyE3pjBC4geT3ZL6ZSeIyZpSG4
UhTFmm8HaReoF1n6m+JvTJnWb9llJbM4F4wEebn8MtyYBZ2B6pXP1/JNkx10oQf1R8eb0Fcjb1wX
k0nYdZ8c9dMR4xXxG2tf5mu9vIvDrEifYRM8CaSZVsMtn325Dl+Cc/P3fJ20DwtT01oi+RZ4Ov0E
NYikj/7eKHDyI4G9aqQTmIvDn/VHB1zcWqP3kLbwYA/CeE1C/CYTz35QxDd0WQjrW5o9p3H1UZtT
nD7hD3G4o4CSWUWhsV22/jLPBHi/qODANCyPWehj/pUi7CQtagPdtNsam5XzsHfyfQ1RKKn8Degk
05nmCuu9szMLO7q5KnG+16rEmQ88JzTZ/CrqgIg6VwuOE+bibwwlZDtpD+29bmNgGrbeudo++BN1
Mv2GWKwFWdT6SCWg27BfUcbx6Mhkx31bFpxLG/9aiP1tWdRND3LjC0F7I+VEec9sm/vVWFqQLbh5
6tcfouZvB27fXPyB6JTxX7RCl8pMJBqOaROvVb/MFnUokrtggYIonNtarQOlL7SgDAkmq5YnniPg
a9XjjXUmh5//TO5ssyGl/SHWfGPH35Ca2Cj6tv32XO9szzuCWSNfdIyTuxHy4EcwVGUljo1RD219
b6gZup9ycPWxFsvn9W9gNu9JqUg7Cz4lB0s8WpRPExVTAdDUBfqUDQ0gig8fch24IV+YyuEx1Rk5
camh9R+R7WIlhSbObjiIezDJPxDbV4gdZjgL861bY3HjL1p+bSxrvrju2epfevTL3Wk5Jl6ktx1E
DKmZHjUhm10Z9dHq9X8L5AfUfXUn/bzPckMO/lqKoZagRmgh5q5pg9XGOKVqL68xRCMSKB6MWDTC
PaXMUN1voDoA9rOZuom2QC7ou0Wo0bTNP/j2hUvzXPyXyLiIvV2B7oMLb/Ri6YTPcr5cqEyzoQzH
fd+K18VyIvENexinquLwrRujr5K+v+ET4Q8bz1cS46Ngvfu/gRv/talDUy8Eyqx5YDLCDfWiKtMa
5UC6M91UxGesndaWTiehhqq7381RsufThS7IUbw/umPXpXPef8uU/8WJqdD7oeWbr2CM44MwJBP+
T2RvMGoEzp7/9xcHULKol+uOhDDZ0FeTU0amxaiZiPXfoUSd0xmJJYMiZVn5LHafEvvipbAQGMVo
q+eJKH9fdJFkALf922+fjzdRmofWaJ3q/9yO2p2gaGLpitIaS2qPEEd0INA+m3PaHNmSSV7NeFIU
2fync+RTnSYKLwWipR0Rg5QeTn570+2SyXVwmrPjZFwmGbxGeId4WPja0V/PLsotGknTDgZgKj3m
gwDbFNNoo6VpoZXJtw/NWvrLcerhAoo6ApDN3ismzg7n5l5S1+HqyUyvtS7FS/1L09YPN96O9aMq
i1fKXB2RVg7lFcOF+Ww4vZRopPdswWZxC2uIBznDVdCVm/ykIgN2Y0U/Z1RK+iCwkKpB2e+XDL3N
5ts08qIWvccN1zRHknKqtxmbIbzf9X5z+HrZWw9UPe6dXRmd8RZgfHtXk57PNLbX3yHKfHjRzd1w
wYhFRNKpqcGJIt+jvRFNBexnZ7gkFB+/+5213uUKKuK2i1H+G8iemZOXZ0j8/P14fl5WZc3mCcyE
7aCR7eiXPTtXueTZzssHWXlYJui4bt5mxuO1wvxIn/FC6lSd7F6kcFTrWqElscJRaRVLyypj/gA+
nTN7Vqz66VXorfPZw5riOGlFVQ1rgCy70/arccKFwuO6UzJkB//CzW+A0ryETf2MJRxDShz/jRZe
QsPB/+D7bQfnrPTVJ2oWR84gQEKCEoFeJtfViBMhop+2s0lBgabhUwNxeLwDLNm2KUG3i09mvR3s
kcdl6xOfTyDPk2ScUeEg0Zj+Tp6pFRUkNt7sTYgZfAV4UY/F9FSCQbNmjhXZiypI7dGvRdhBFd8X
VulVNlncXKQfSRQVZ9HoMPBPExJUeQS7bT6iId5mPNlIwApNsfqo0Nu4w3ExXKLS3NUsUAOjKj3q
P2CWVHDhXxPjdpVmDP2pxnbigWORBBziry+qPm0t66DM/COCeVEqh3eogAeyUKEkDmZMD+l0nm5d
PVCw3omNHS4LWP/Epr+jVdxwaB5k2B3/BD/NiNR6zRlBw5PDYeTJTRz+oMgwc/ZiH94oTLIQR+7x
9UPX9I8JzksYiPYTqyRrHUGdBoCHb+iovnwdzg5q7QifOPQRpTZCamDsQINb4EuvaQHyr7tMEK29
xyhrjLXdXt9pPbYmj/womBl2yfYT0KUsjuV+ceaK9OGN+qm6nOoRPL0Rt1UQsrB7ppAhwpacKRE/
HHufNkw8GeVGSGaeihx1wfJ+83rSvU1JdcUkC/M1JUT7zkQZBqFSnKgYAtu9SZQYsNADClkxv6Dd
eCrlc+rZuHorG33UoTaHizUS9NkENwrvFLDlXzXhQVPdSGSM8yoa4lw0KXCuYQULhTvbe2tZv2xX
asyaqo10ztWU67K+9PIwYMUOH6hV1OzreM7GwAFLD8XBwAsIwmMw8M3r6g04CSrJWcp1qDAO/zHD
iY8pWy+CO2kFHJDQmilRZwahMpXCny0pnPvweCjW5veOCIvEgkIdxMO60mleKLqZmhQibSf8dHfJ
YrjK+5TollBQZPOFcZr3bI0N4zFnyIPzgWh2kprBTh89870BeuHZa573j1XFsjexeyB4ybXzoSgm
+/57kTCZfceLu3MMSZj7ppWlHYKZx0ZAOcHriGsIBBylMCmwpKNp7lqE+BcNDVrMfo8x9r/4Kntj
rVuXHB8VRVKygdkcs+nJ+yNGmdxRaa+eAEWXoxSTwd6/frVcqFtEF3K4EfLY3R/y79/Mgt8bxuCU
sXIH59zymQVWXJXqkmtGStsqQ4nED4eN/X/qKgt/49uW851dNUncbjSeDqTCplzMTpRturuM4ZFW
WmOGba6br46iVa6Pliwcz4ET+LDIsSbd9uFA1j0oUaPXRDmAjLceEJ10f0PNSo4xp5ZqT6bCEMOC
Vo5cSquZtNgnW/Df9aSkOVsnxXmVvnhdJbLMZ9Aqu3f1Y7rnduyosVj2BtjPnQOUUJLjnTpUUG7T
LdmxWhpwKAksbZyjGt75yeeNDEqrCnwpnO4sxGmicQxMi4d+HZPzE0qu/XDXxH0OnrV7KMSe5IIB
Mq8yLyxy5MJl99mR7bmOXGD9MtAu39K2bGL/HbtVbMzaiEHLqxl61WT6yFR5JOKHKfN3fkHsauC1
XKUTj9tzq89mLxBUtxMHeIgEku8okoMk6Qa95eg+kFfmif+EzFmbD9tmKVXE9QoXKqD9AVssGIar
iYC8d6cCs9cAweKENKgSJHj4ilUr2d49CvXHIYtmAX2TEWBAiGDFMgQS/IhgovubW/VGdgx/lA0c
cwON/mzHQ3kq91IQCNvxNJt05LAO+YZMCmDAjNhDfhyIoUMIJEFwFLDUtcUQOtMRfScZTZ87lVy5
sBGhKl2i6rTMY4MCwgl/PcI9760IlUbKxtRwzqThqImgKgDOmSAp7nlFRVNvO3Pr3fi59I0nIugq
vUI46yrpkQSX8ttlHTy8ay11h8cSz7mtFZ6IS0CKBU25Pk8RipXsyj/qC/FwVwxCyV43k/OpQZfG
Z7mhkwAI0//psdpzFYy9EHRlYWLv78ZOCo4kltfjpUzcInwRqFjXwxpaTwMCOGnF85m1j3kzXPPl
3EOUJF/itIlC4/v00dmOgnJQoqYuF95uQHBMNf+hScGzgWw0Ke26V38kUmgUA/8u1TXkKvpssayf
9QB5d5RfexbXqpNr+9iNj27/Jrx9QZUkRnS7RU2BTqMX0Fu+UBRPDc3O8eHoeNERreCIvUELigM6
TAZVCcUCIHg8mwslqdDUpMKBheTQDsAzprqC8Vc+ILgZgQ01IctsvvB+/Kx49ypJuSu7Zhg+pzjA
kyHau0UOX8TjXf+ktI98Zo7BkrHt6zz+ui+2iHOI94w0S86obfnL/3NwHm/lCAWabKoRypsW0suU
V2pRKz18MR/b0LQ6ISGMCNJmXG9mVLwN5rtQjrVuTsvkXtT5boZiUMDwe8nI5UrhVjP/0fgBrHON
uL717Ni8jOMG/0V7klMbxizrrIQVOpEOCGW2hHl9ib0T1Km+K94KwSg1JKKDP/4UJYFwF2JefSMR
dcDdjJS7vn69TcFaAEHYC+EGdDhyYg88AlLYHpnU4dHLncxChfLOj+45lFOOLTGvbUrNrycQkTIg
0VO109oI0epHgKfo8RmO4LrkgFMYIopEtm32gmVwIULgNqkarDHyS3h5TH2ONr7eW14km+hcns3K
yAbSReGIAz/DqLtFcP7H9yAGsBYV891pbf7c3+Z++KZvgJQU3psYjYmAX2dhEkCITSN82OVeCEVr
MlSZyiNlvqJtPR4cLWYCCUf7NgYwnAqw/Kn4ckAGuCpIps4R3pTeNp4m5z5AQgyQDapueOLQYO39
66I//MA/+wDBHplDiSvBgha5j2D/tQam0pEO/8sYAIerHakSpTp+AO8qXeUyTmsUSLsLSBVPAJb2
aMIU2LhrEr/Ae58w/t/givGNbv+Lu1nM/qWjqA4hOiNp7SjskCz7EPTnPq5Qy1jUGqTYRMt/Z/nD
R9qc3BhQT2rfhYRccqnKm34ErfHLkknvo0NdhIyGGQPHOaYrS2127vQfbeoGRb2Te0hK1RKjHFoR
yjIDnBIn8Zb7kTz8xRyAUS03CQ/41Z4rXPD2B5ifhw85JA1QmLEMDxhQd8K/b3R1g5yjkn/zREOK
k9MRHT9sAa/JhWzdziG4n8OX2k1/rzk76LWwY7FVUcWCGN7p2qMn6E1CiB5XJwo8fOPLmaL4YjSw
dMXQY5pmBvc4wpTtcMjk9LHnW5dkOz084BXQcCo3efLJzxlNxsfmgxqaZ37dN/kidOw0TLbafJOu
soA/PFuDSyqot6TghmsWFF5qENJRtUjHN01Dokf1J4L8nDOSgFuiCwThEyNUu0XBwZE3+LkR+gVw
TTmRf/V2OtEKyPkIMKniQo6tQ3aFpJOYXgjfIws/QHrB3j58rnRf3gjZS/+UrFDaZqIuTgzJLcSY
yzajaa3/CbFyhkscoAlYX6sFDqcdMyOvmGNVoE0O/RzGU98mOFusClIWgZURztac8TuPQzPzKPuN
5Nl13WtUib97DwORGJgYdUVWlfxMV+n/U7pQp6kFprKXCXMk+gOVyvQ9XOgD4BDMWfrrnF339YAs
1E6PoNsPbJDOJQDH9BrP//oDTd6E5jqXyp/U1H+WS/4IMzDWLuZfbaq9PmjOplTFxTCPAhln6wi1
UnFRgZi5seEnNjFyfxzZ2F+bS5FZ+wu77LUnRhUyPKzYMknEKdidGB1TMwaQAGl/elox9WUj6pwp
l3Nb3xa0NNKNJTb2vn8zyCquw6rSUHalA6/NrLMRNklIwlPLPklljgpdWCyzyfHZeeC5sLUv5Dki
D9gBVzhTpZKZWGOzNOHCDeRrjAIo2siLN5L4QWAE0vcP+dRdqVSX/IBWb9H1QmH8ZtXt9fF1fomc
kH8PFsXOoYptOA7UlXxbRigVafFVk7mFBTfA0vocuyYQqB8kFpCCUf+BiFt7c5Q32LgRDY0SoCUP
7RvpRA85h8oJlTc2HPB2JHflQ8kywy2wXXMFK4tq3BTNSQojRmYvME01aJ0pvIgXUGrVryp4RjZ7
XegGLMFWgScJZxZYo/BXvDWM5FBai+jmLoNC94FsgIfCp34Y5ds/l1dapsnNv0GwXnuj8ijOfpAl
B4locvaHRpD/UvN8YV1dwFbzaJBboKPqfhU5M4skyYM38ZPegg3Sz9VafboLFx9QdVZsPdQ/xOkm
BG01It5P0wW2rk6xNF9G1wyWtMKhlnY8Qm7/iXyovb148nJVzJUo4d55Mk7t53nruBR36ibAFzsC
ePLJ6Kpd8Ibmq8On/yBD5YE2eOQexiAUF/5oHBQZ51Quzu78XpnPBvkii/C0jGBpTlmms3vRzhAC
SoRYDvPEGSFBB6HFPo1mSaa9ECyeXWnQHwh5f6Sg7kadRI7NtYDf4dGNQ9W/NVyPU94f9/pPQ6j5
tD5XzDyQJbrSKWivoS13UA9khpJIFVrz5RsbmVQYPD5UypMvk03iAuYsCXBrferK8d9yaCL1eMHh
yTmsYvBw5MPf9va+Z4gtb1EaGnNADYFGyML2jarQ5vLFS2PWk6H3G/qVP0fwRde2nYwm/upYFt/m
4jw2xEJ0U2WrGUfwGKOrc6pygi0Vi3NOdf8jtP5tukQm/g+wEDC/yfkfTSIyABhoGDknVgKoBpdg
L6udqnQZqHtE2dreMGOE5qYsaGp0moJpsnpav3XhtrqhTG7rFh+WfZXCsWWt8U80XthIVFDE2OMf
n6qoAFtFd7+fhNfw5B2qhGrMzDw1kNl/6Hvp4Vz1WHFbVrq0LbTDwqe3qsq/4DSPh1dJi7krxzQ8
NjfBq0vOVdPF2lm5xsD6mEbKf004ZSp/cuASQP00lw7G537i3seGE9Yz7ZEt206NqdURLyBkz7Dm
8MBQxaRLqV0lnB0ghlFhNh8gsMIt50BIJipzZZPpY2T5U3Z5p86EG82YHsJIPkQJBXcxAwbx5wBG
k4ugkY5ZQuQvciIFbhFNsZ0GQQcmCN7pyxVt3NLnL3xHV3r95sa14ITEeTjHl5GosL8x+rqXrY2x
tuMwExC/5dhzoDst3EuWXZLfOqMfhouMeT9yJ1Wk7Z3WrQCtwpY5GFzPD3yeUHLdM++nNXBOyrSE
1bL2E/qDMEXWQfzQXi8R+UyAyqbzx2EQTGwzTpkVBqy00TKxpQ8JqVDVlMsBNux3AY1u6g5hSu8P
x0sI8ngka7S2ow5Kl6GAFDDZPfBmcboHGR2chf9PsMSN11iIj6DL3exfL4W/LQGPFVFr/toQQ1WN
RLDY9tVj7fBUTt5SM56Vt8NrzxPFKz9v/Mc1+GPbL+J6zvoUMXs0pIsMsvGnvc8NNla7F12a70sY
JQbcboAvhYQ6hcEYNxLFu/sFttiw9wTuUjIfs12x8KBV9qqigvjttxIpzXWJpmlrYE0ZP5o1yUyE
vg2rRFnnLQGAImifAmPJ7NdevWldeh/1+dssogjJacJqPMsipJlKRvHSxiIgt0NXhFSBuFLeptIZ
pePaf8x9WZHbsGGDwcu6aZ00kKKIdzXwSWOBi4dLKn/FU1MSqpXcDG7Fi4KOVLI15d/XLnm6lVPz
EoREHpwa3h83/ZXHIoYcrrD6zcm1od/IZ+/UNTmu7x67WF2I3NYhGiGfZMfnmHqQfZQN+nUMbeAj
D1lPpgLhFnWRIoxFYqU2sApPAiDyowlFjU11PghCg43jk/XZnakf31VfmmMqxGHzbfV7Z0S2cQyG
+UQUe+Xh2GGQYWJm5EywCMvFrqlkh7RlZVMR1eAAlZMDy+EZERMDZjMZ/Gg4LuVUbpZmRrqYSEtR
iX8RaEBaMSnztaUIM7+PkFU7MLZY/HV3J+y+Fs0iT2Gjims9c6jKL3HOQ5rNKGfz7CMMw3jpFr3K
/aoy9bETiflRNIn7bkDbJCjjowsw4Q7iRtTdVkid2vssuq2rvHojno8my7i9sPPsVFN9mu3bymy9
KoADbzsrtEK0LaayamGTS0eyorC7yDFJTRLfyrQY36WStO1tsnq+JvvRglAURaXSMjKQWxkHCsw6
uEyOIZtqqeOmELTqh9EUM+SjzSZAAt2XrMq3JWHNc2jHP9JyWvCPEZO+mBfkIi9nlEvSoeEgrZbw
L/OuZckPvl4b9qSeGaAw0N6bKVT3EHOey6tq/aHc/+o7p1eWJvQB04lAFbo3zxgqD9IyB5XPz0Sn
SqXzDh7BLpNL9tMFUnYN634gH473c/qAOsAt1qcSCrL/yBH5thRlrborMzBfs00LGr9i0MeHF9hR
F6MmcFhvk5BkLdC2xVxfQs+CEADiSB30t730H9KW7nd+nHKv9hgNFKxXfJ5wy4Fc6Pqvc/6UH3yj
0QaGAtKY0Rk0eo2EEK+s4VkWXvmy13URpUbDR/S8fPRIGlf/EDPXGqGnRdZhUWtiA2obFodTesMX
pG6BGbebYu/Rx1i6bjySAxYLHNYtxwDhuVETm+a4MT5TMwqrus4oN7JwFK7YX6CCaPvBDWQyLc6C
NcEWj6LyZTmgbrnO6XSQhsAfS3MpaL07blFuYiJtLrgWhOHVmw1zELqPC+G/1ReNYCPpgVdj4KEa
1BhmsLDjd+/ddfnYsa1dxavPRM3Zy8WKzEKCyi6Rp1BgEoDz9WGnjzElUTczem6GbrqB8UqUyGtV
Oo9SC5c1+2qORWx+5x4Mbg9lKfcP36rj6MHlC54l0RcrXEgnmqjT5CwA2nVKUzZfor1MgRykCwuz
HBUtgZ47WRg62J2wIBNx6iXQPBFwahM4pr2Hv5tpAA2N6WmVpSWR1aPX87kwtYZyPs8bs0JNoGcQ
ZRoVyfbnxWXLpbWO7CjWnO/UiZAzieB3ApkcsRt/kFTNaMem256TQKlEz0PfpuRwK3aY1sAGVvu+
USovCRflbU/KDE3Rmwe1gvdiJHCNDS7io/Gye+GAmJ5skx/dZ4SBajlzlmpla5NO/SHyVizOIc/E
gyCz/UnTaqww7Q/a5F1GC2zxx5acfadPb52FAISsKm12E7CkIjLJzWja0xP3Zsn0Ekq8TRyt3Rat
WD38QP+wZqbiH43UUu2PPVUEHr7I1emtvXVl44wbVT72uxODoX2JUKidbzjS+Hv7d7FmUbAZu8vb
80mkf7fo1gyH0BW/KP9mQExtrqyvrkksFglKv64kAp3d4UlGU6BXk84t/Uzzl+w/xH4TqCjahymi
DEAq6CBr4Fifmag0iuJysXcWijbJi0j3SIr/QrySFhikvicF21I8Ek8EFP5hbXdJdamPW7ksupu2
ofdES5u/iK7pj7544gz+qTr3QHBuKcRGNJhEvgAzOep+WgKoOFV8mSQMcq8zU+/RlNMnCBIZTFSd
nFsmn622yaBXJpwsMczAdPzJkDYtanBghMQq6kwwy1dJ+W+YhxnwNyOqnBefIsgfNQou8Raw1xQI
kyrjLLM8Cy2WXOVo5MlcW6RYol048Cej0MPt+wY7jyoDOJkFIMRECll9w3AXJDRzQKO3YkoTbvfO
Ad4MRQrvROwm6Ur06qgEFNxhzJmICsyNJMNhYLitvdDVtI8WH/jjb1MmVITq5OL3GLwkBNPDg+QX
Qui5ktEHjLkyeA2fAR66uGu3ayIKS4T99nEudRb6sAIx3FZziAQBKAt8k05YQqiCNqZv18Q3DoW2
wDNBK48Wr7sUuZAs46KbbzXOkcV/Ao68yGLPS1CZ071LrWRSxzOjMIWnuT/X7npWbaWXNCBcRCqA
9jQOPCnC7Z2bQBfffrQJQR9c7mVmffUyjm9OYdHOuf74ZSw0ArwCaPIdglWHpFPWbHusTIyLa3xn
fjyy0kCYYcxiF2fsep+792ISAUxWPmBdPBFKd2jFJoZS+7fFZD5szK6SN9sXcBnyHA9FDSPI7vYy
rugvHHMUIw1oAVpFmLd2vRLTA6Tj+AynFOK3jkNxVIovTiNfbHy8u3Uw8bi7DtBq1K/wNQJDyUFg
2f+RSAFTnphTKaT555zublqsCNP42j1ToT6pFfXwh4285wV+CKsd217QYQ5rKFpJbm1aDQ5uilGh
hc10GBj70zcS0W9JJhBYc/5E/UOVUymSnBNp8mjNy4xVsJlItoi1cDrnpTurRKacE+yaq7JJj/Ht
YpJbNJ0yj3A4qcuQPgXgYJe97khFzhDJyyznr/dALaWQVy6dH625H7RHxYrN06M+MH7+SCc5FexJ
dsOdipGPJ3W21Pf2jFjQy0JTJfnWdONW4lfmS2LP6UomZ4yTA7UKsICPvqRAcL4NYbUDpiM/MCJD
QEfPmqJJimt5wSugJ/i6+8hHQ2uSn5pBtIkYj39myZIVO8PHguZU2qxMZKdFJDymaG/Kk/7mnr3+
o/TJTVNhalnne13oAxvqqsCtYQWL489IbmJLWl3CKE8NKdrOFeu/xmmmMED3TuaGqcoH2i34WxBV
r0IFUQZm9yiAiDt9QCrK1PC+h598AdbtOYN2RGyhPn0BfZGRDF213Pz+nmhU0URT2n3Pl846uclJ
GXVfiKGLl5RpVR1o8QCRg3Mj+HDbuRx6BYh6AK/iDVJM7jBDEuQbvF52Lx270xt2UwUnOTUpwhSz
nvVRrH5iCS/5lxAParsPh9mdMxRd/M6Sg7R3Xm6UH4KWb8ifgIrK6qFn/b32nIhJa4gbFhpBdHGb
4wg1+seLCvNTsz7ka5zodPL2LNuCAFWxGlVleKvmXMdzgjft7bJ8odRLUk4ruHweH1urWGv9BGjL
0jKS2O6o0OtsQhHykPxoMclAXoJXKHMQPQvUYiAhSh+WJxtE3Za4XhYyZCVpV3PdfVMsG1bYr3ZU
zuG+RNdLK6ByD4p0fBL0+/ckvDhBQ1AdTeqqzJorrB9D5Pulo1Z2ju8ik5XQeuYgZtKyuyzUMo1d
A4sxuN4AQ5xAyZS1BqRyN79Z1I5N1NnsFDXisg0rvcmbQIzpHSXs7w9EfRsPuoBQ99hjZGswtAsm
S1b5EWusH6slZQEzcJ5JnM305rCYmXfreLk8T9z6qWHPV0rfJRs5f1agW7DjjupmE9Xy5ntzGtiB
b3j/cw3bsHdjM0cNFOCF9hsQYw7RNarmIY8wL1XqqKdS8k9TxMwR02d2J138dBvpK3rAzipZoXSg
5QGWu3IOt/FL59wfIsNLfNWTUgJO3p4s/apTV6TZ4HmqLWY/zfPkDkjLNN6umO9MmZfP8Fg/HqvW
CwChBBEXRMGQzsjElewxW4vyPQmyLNUVZiFWFjQwnc/cQcRBTs7mYFuCTbxR2ijEFbC59cplT5BE
0jSuWfi7TdCIyKDwSHewykccMgeVafaKRfpqCUAhTg6OU1LT9aSHQAm5e0SeZp/ThoLdZSZb/yZD
7Uc0jXbuKOjTi38UfweoVUkY8quiRSt89shgwWcU8p3n1xvykcm1K0fCiVqDKYpfnrk3VM52fX9Q
h/JlgHULNkMQ8SHVjZghcWxkkl/WUw0G1KyrIrqnNvB0b7toYnN4WCUlWv53hquvka/JwjDlaU+k
aPe969w+a175ZOmvgZaOSJBmJRw/nKqLqgLh+jH/nZSAUsM6ZucpYdjiKy0Q2DWR2Km/CmxefpW7
zagGIBHO5Gq80Mca6f0bfhLtgH4tQA5U+SYDTEdNtOBXeHxqv9/GFb+qRE+H0puAktxJo6IenqWi
F8gRBZ2iawjSYEMhqe8yCQXDBzf65XgJj86nMCMgxJgmUV97ktw85xFlBtoJQzga2wSD3+WOxROX
peqKpXg5rEYUeB0eRhXZuT5A89tWbEIgHiA2hnvH1Ou2rKUIxhAQX1FNd9Sd9VeZiMbrxvEvv+n2
W9tXAK2k/xTGkioByqMEqvZwiAC5nWivfhtyYQGVsPKEcmYRrgdrjfz6RKd2pirSoTbbMAGP9dWr
xuD8LMh44zs2bd2KAJ/tO9QbowmypkhWxN8z9ndNHq1jO1tWc4xqJoFbZYnvQnnjRsNPNy/rF8dK
GYgP4uwUJ8Z5WtPEFYE3x3yc1HEpGktFyGfxcvLouSiaXxUpmS4lvMrd/Ro3lav+oKXFWDPmIys7
qV9sLM0vGvUUWNjGgERahHFJmica6C9XPUwaetbSVtpPbT2xHTVUxFvsWhPGXGrhEYriU5Z5KGHc
I7ABvJG8ikt0g+UB5arq15hOp+roVPgV2PRYDOJ/Qjf01Zx2aL140UTQlQqYoIMvEg1GeAp5r4cb
nRdFSiy9UTTXMl59NtATCkozpbyt2l7AKmTsy8wMIfQT+I5/qn6XGTEBxuqIm2az7QDpUXQcKzKN
GTRypu9GbyiY0iGCWNqVhHSNbsmp+8pURxFqR157qKaSsmP8FMIiQL7BPkt/OiEY78YgPlKEprnZ
ckQO2ia+hqZ7Z1p9tnRMRgrHze8r582Al/V/d5FCLt8W47vXkHpwrq4kzvZ2cKr1hYFu1zJVVexu
r5Hf08AIkeMkriFlIDOYehpioquGNapECZSbGs7id0fBbBObGCKju/7CTW3kWhh6UjcibjVkYbE8
07T3zqLlz9JAN3RgNNNHXSjD5jcZT9ok32a+H5UFzXTkN1KKsYebtmzymNtr7pOMYkM7aDhs+dmj
8OUnkWKjJoYBLX+cvY8zpCcMeb40mQfe9By7hFUNV00X6S6qWFgB8W/RJbEmZ8LAgN/Gm6GKHGVn
gjieCBNip2hvUxV6BojJXW9RgiCcRvZlANimm754Xo0THKjRrnQAOAys1XWBD8MBFXKDwb8fn8LQ
uvIyZHZw/6rfC60jBh1uVL0PaEiVCZRlVwqzJBXnsusO2/i69Fkg9NQloDj/ciVP5DXi4/mCV2Fg
tuEaOmJcy8ox6LjyXFrCHs9Fl4hqiygPDRm3XwfkHeEv1F/9bbVy/pOc9dZ11X2WIY3sUPjPjjQQ
mXLlYqHOvZpcEw8QRI+QkvpQ5jkp0/rDWcqijFadaApvEcAgMD81PlnYm/zY4JwrS5JxLRzaJKkT
k3/2V8KhqxeBNLOAgKj6Ji3fXY0RwVQXWXDVvwfCEU21JmInNH3gSHY6RyIGJNEsOz2CCqMe69h2
3lGkmSgRkH9+aBlWfpNW8Ri26Q4Z8rk0o5FoWz4v7Ot3h3kezapgEFaIS41uMXhW9su0nM+IzD8E
RYALlxE8ZplIXMW53ORPuG25ETRNtSa+jV3YprRdGTzqIMueM0Gwmuuagh+jkfWV6Vj/WrBB6Amc
tdcrOt1sFORZYNAoJ3UlToanRd5QZX+X0+IRFZKuBHUEVYYFpSRW1URtPnSlIdcdtZuMHv36dVbm
kTCg4aw3xsgXkImhtK3dB+1LRenaVnFki8l2ZVoeuI+IVF1ARnh9vCvMByD1oPQSh+b5fQMgPBug
s9AJIpqbTNwZfLKvkwTQHA2lNOVdd/S3xqVpgr9Iw2iypwXL2gHd+3XquTQpPOGbrPAgT2gC55gR
fSjNO6u3BRbQ/LmvyTTrXd/wLPbnLnVZpL2pNqShN8ThcLpdmjnEc1jMH+0OEOf2UOnGzdRdRKpC
S5iYltRlsfRz8TL/Giyorq2FEdUWDJphaWLWTX/FEgNSEqDz4NokBU3pacAZxnLIW3h7+NUOvRJb
zHW0WnwTtidX+IEYlrZZ7Jsg1QXNwqfpuxfQ9/HRK8Gy1iswPWFt5Evu/Ce/mH15lzwqzXRDfDRz
1Y8LxJBIBWRgZXoGvoiXPMwY1C7Ai1YS/NPu+NNHnbREv11pXmf3EnhLEwHDd2hQKM4At65+5zXp
4S1D12zCTT9Zsv/8DNKnTftnKIaVNBQx41nhdl4dXQk0o3BxX6Psi/CG4Ws2jESjhpMzMx0MAGCH
anwmxk75lKQSHNUSNmZNPdv0kE5fvkkVUAsUpPea7q7qB9exL2LS1KE7ncCNv5+vnUVqABjh7TO8
ZEaKbCCplsC2jg3iX3qU7ZKEYWdROP+sDgUpqP07ftzMCHfbm8HWT/PzMiaxZXGotf8Wt+riNRng
U4ADik8ZwAZ+ld0Txf3unB381Ry6cIlo10Qvs1tIruCd1Eaoj6+DQpDfLmWItpUhlczq4G7tX5eq
BlF0VeclT0QYOtmb/WV4mOaRtJ+C+MuhB5uKF6ul/hLRUz2ePFXyi+fRVRMvB7Xe/2/ZJUJcUXzy
QDmkr1sRqL+pl5TmuR3UOCT2Hjarb2CYYL5iq3b65GR5Y06/TiY9SN1Xf4M11OLD2Gf14j/Mlsn8
UA0I8E8BpBRg++iDkZWe7ZQhHA9A+xjpmZkb9BINou/ELgN+iUaXU/MTQV5obI76LyFKrUDQQPyv
miM3sxnMnZKJArFlrdDyJqRvOLWFSjPasarmwAjGwDa6uID7twaEhcQjA7YrIdQgNW8huvAX85HY
8HouJYlQWsst3lNlFp66aR1c2XIApfdNxHWExFJqXnUC/993V+NxTzQ3ASgHLKGfYhwpiQeeL+Qx
UiWKezzcvhBOFWgFWMN6mkJVTYjqrP5w6kD9s+gcECf1Bjx8P4H041JQIsheiGCZl1TRIhQC9wn8
I7LyeFPTwEo8RYAVYWU3eTZuy1wLXJe/No6XR58QBwpiJ+VDnfx/MhMBKeLbHYIdHtlEOWk2VMG+
M++WU3u+sMQ0Z9yVLydBBpVJynO5L3GAHXq5g9Of87qGIxxmAaXWVDF8rySTgH0vSCpxxh8RadNR
c3t1Z/42YRvL/hVGNDwzZmEbHfGnOwFijeECxWDI7aKFTTmV1CDkRZSYDhqip90UrGSWX6jbuKXd
Iz3NWh3jErnpmf4+v5vECk2TYffE6cD12hz6ybWuIu6SqjOUpPKZgBpP7pca1RJDk3F6h04Z8bts
Csy2pNzbaws9fyUp9j9J6wsi9O3Acezb3hxVn04XJAbmrPNE89n5lUDti5PMU/0Y96y2IVDNyNkY
OuLXf8gAFqcBGYnhhs9OfBCjOJrSly31E3qq/uKC1vJlGJjFa5BLDo5dUYjC6pb+Com7LI+XPVLB
Y2xNN5JyhPc9fxpFOLpyDtz3q9cJ95h+JUnfFmCstJQwQwZW4RTlVKu6CUjl2In6whSg3Vkjlupy
s79tGu6Crl44bQtPMbC8fwC+A+S3n1E0bx/+VCXs/nHwlMLLudeN/9CgeGzgzxfR26ZqliWTli3O
oMYnAu79kzGpn25f8TfproATZRVLpHp1eaSyefruVNvXi3iTFrYlT6fvy8OiopPUjjU7UapSSPym
h33RUNFntQdjOg9qE21CAZ+/5VnaZe8U287XwFjtSJpY9NdGI/8gL3mmPV6t8yCSZ7OhUUyaRB1x
Ed8UvX/mS4uJ24B23DoRzIUjA4uPEePO/vc12e0/ckyHhoOKtgItOwuWNB7Ynf+uUu5oY4u+DIts
GTnGEqV0M63VLaYx9kDBEyHgvZWJq+P6mIlr4xoLvLuZFKFIZVK2Qh3BwAwLo0YrhRJ02R66Wizd
E3Lv5wN6DYul+K1ORBx2Jb4j2sSyWUlGCsJm2vK5wEpd4KEY9RWXEC47skCP1enQdcts6PwLau23
556bGRNKo4RRxggAlYeoHsITNu58n/hJ9O1BGagzXG0tM8OxHP4ebG3SBDAWXrMGOs+X5SDiEC23
OKMOj8BGc7bZi/nQ9j1NyHF2vXHRgOexGmnY77mjD5DVW7Jtd9VypDRT9mi3/etBljDZY/vz/mFv
MVVSJT1eMBNIwKHNrC0l3+8wq6NcfjH2iQB1udUZ4r+rAa4IpiiUjrqlchWcvhrKeepBZldmdzA9
4GThLoExrlQxeWa/NRwgBG+QuUGlJYp7p8BgKOKiNpKLaZTWuo/e39e43J/AYh11rCOjRi9JQchV
cvkzWpb/3ql4Co9NCmSJ56IKtZVgISy7lHC2RiDOZQOTG7HHOdm6i0ZgQuCmyAeliBzHwlnV3Wwl
cslouKF4vVr9DRTzptWxuGBeexXuqTScGUSuRl/5trh4jGg2eHuS8AS/tPLSfJMIjSNFEjA7EHgz
ryn7EMiuasb61pDtG38B5wi7/u+/C24i+zvtDiRAqnjsqQa6PthMv4nJsxUtMWEFDcKdm17SQ1Rx
Fa4uapkn+yZFE3c2n/BfF5ux5BucFFu73p+r5eQZaddQKuOB18whvMAt+9kymzBde/lr6aC7Gp92
Ktg1Tu/HpKt6ToSqbvZhVdm0HoyUNcIMSDpQomlZLAn/YS30X8JFAlO2zuQ9eW8JpzAvFVaFqaGe
7jp9UT4xrD+iBnldTKBpl1U4Z6ux6tM+MMj0BkfJwK7Ay4IWURohb4xyIw49uY1qlm+IVwQ+Ctz8
w8UULHqqdNjXlR2udpgdHoeSSRg/jf5dPsUZVpsGFrs2KiSGuGdVhFNTnC27C+dwaG7BlpCG4lZ3
E2HOs8z+fr+Kjy1qLZe3k0fslJFcFyqwH4BHSRYGCaQhTzIao7BMRW3qWROu12pWjm3kUb5Hq5Jk
DoTUjO6MtpJAGH9uFJraboH8b1chmO/9CZKBqLWvllK1J0gGlsGxgUJE1Q9LvOQlxRc+UjY04LCl
tUirDEmvKByXYB5fvxkHKHv+nPNbH+jKpz0vwzmHBELQuc+M+gp270RCbHLiabD9IdETb6MIhllH
geLnh10Gk98SLgGEZ6h9c5G7c75PnUTLiSBkpwq2TWQhc5L30bhY1J5hyjfnPxVqblM46dadaMSA
S5NTIqwuD3NZldY/W06S8TgYrik7sawkhAB72etwGEWShxaW/k5PwPxaNgB+wx6isWFYlXUl3OWb
E/5BPgwyp4ufMOGnsQaEpXz7jZuxSIG02v9N6ONW320UFevG/ZuvM5QJwLbazzJvmfm67LFD4R8e
K0BDWGUgsMt2jjnq/lTV4sFRBd2ALYGtXzIgrrPhzMHzyALfsIsVrje5UQlevf9zoz+KVZCRLJmF
m5oNoE6brQE+Lb/cR0W9E+XbquvdYJPH5zzJ5QfIy0FmjR05gmMcfMUXD0IGtPa2q/ttvniBMf4d
ch9BjY7EDQj0aMCUqchXmKXRGXgeeHP9OkVNfzM4e6YLDyRvp2g/Bpr05GcabJVrFqwmqrIteH1f
fBbSjh6f8aDxi/yBISmkoNfinePDs2ekV4avDziyngK3Ia6QP5WUHJobBWlHg9j09rEUxXyOaL2z
ORfFMy4LCoFya3+FFcvrSY9hiuUu9kwdnLFuqoz/J20ZfW1avoTurHfIdVvEQWagFNVBIvW1CTnF
LoDV7cO6O5l3dCos27w+Tm1KLOSTW9R1LpL4LR+if6aP0d+e198DXRgaDwCNsIjB5dmtZbTZfy01
SQbnSn4GwW5xRMQx3bt8fFChrOf/R2AdrQonxFuIDPCJbk1Y1QbIzXOGATCnF5c5cthABnCBl1SL
jRPoZX1x43Swrnv7J/oCMl/9JTRLeuqX6orotDbR7lqPgLK7P9ThYIx/SYOr03gOG2b0AKI+rYT/
kxr7ghficENyaYBhEtC1okHvONjZmSozvHG7S7Nh4c2mutuxbORgx48tXxhv1vD/YUx3Ed25RYdq
jBjkYUS8D2igFjaMUu/Oi0LP7yjMgoLpIAK6P5doS29lgRrIWV5+c878eh+ax/dyA1vMcUwNN0vw
HOnZdVpuKh2qfgSBq47taeBzi9dCQSX4Pomt9OiNutm51fBV+ARahTPAKlZTXuYdpm3YGmoMOusL
cbbxQzGBIpOv2dJd1ma+rm6QTiaYSNNmmmx4+BP88vfaNn5gxy7EDvy17/XYdyFjHNopWw5ZTeJh
WIn791Skk4ZQZYD1x0wAlN2DkHgIONkCpDysO7Qn+PHZ0xkF3xkHjQLNJhTjXtWXIk41Oib4sISD
FsPsTrKL2Lb1vP+4DFipLhd0aRbYr3aoN5IKspuKibHFoc5DexONVO7hQjyHLMDv3Buxh4c/fCid
DDTC70SN3PhdM6dGBY0RojFlszkriKboAKP+Nr53kQnCGA3ckx/6B7E5COWf9UsEw3NZe+XDKyGW
d38A1kaK3y5TuP72oQcgIXbBWQzk7K+e10qo9JF1I2dDAGWN8l5ZyHEWLj2Cynst3viKNFhdmOtR
DzBcNfRl+/91naTYBvYY8mwstehwzH/aEpxFdLo/ogqkuCCZVwqGtQHMXP/4KnbiqmOxmz/fNEP2
6sHKNzDwDBcxEALMeFKyUN42GIOu3GCO/M3tfMnnMAKrxbg83YsYjvSjbgIdm1Zcr7CDdkfVDLJR
S2LZA/N/YoOa7ZkYHfz5Rkd84GYZ/bWbK4zbzMEvjCmXa1Oz7sYNo9sjWpvKiL/p4xZzyZMlhcG2
LdWgG/nTgPk4PWGpVSKeB5j/tIcxv/KXMjypfeujov0n1/zH1xiPVNtGQTveSSWfBYUn3US4Cwy/
SB87OVZROG2DiLnI1DZ9exHr8myQN9QsXS2+1SYdhDIjeSL6msloPBwTBVHQ71oYxQ5gB6qnXqoH
0XAdqLDe+PAGcGZAVPuHciyXQEq4WLuiY5DzORYMRUvfXLG7Id8Ux6hub1aQo97ufCUY9WhUzIxx
+O295Jl4UK7t78Ts+LlzSeU8rAAW3jAIKVzW6fggxxSBZWBuy6nDs4ICVl/uzc0WFoVRSrcLto0O
oLGsLDA9RbNg6Mvj0XOQdRWstfoEkz8cUzdUhkCSbqPBQ2+3PsxtuaSAKN/WrclrdIAm/x/Paczo
kzvpcC+hrnGtEjAnS/FrmcUDGZrWGL5vTqWK2I6GeW6auiA6U1iXyQOqjOn1qRXGN06V/habPS2A
a0fkJn8vLlgHx0fFe82onZRjoo1GA/xkUOovBZAc+sZq3nHsPbwIqKx/biLeuKeDD6EEvv359MEz
Slq32ykokv7msCoSkbs95PYWLyMlF+8W+JAxE2jvklU67od4t5aIWbx8EIkVwRWAfJ48OptRGqfy
/kZIMb13fGEsvQiX3WHkN96yasgSkfxNkfDYPOprvO4o5QhwT0Sfp+7jxL4iBrIJFj0VZ2V/b/kI
eK5jHG0FWdh2a1mq/BEP888ANN8mCWmVYUbI2mjuJvtKAR8oTUmeJVW6EAhpzPWViAZruHJgdRf8
VI7kwd8Cj109zkNZLwVe41/gmdfE7SV5c2sGxeWw9nXho6jNkLkmDAUaeLsd0mjtE0tbcqBFBGnt
mC/GNX24l0IIWujO5jGAe77HbJs2fzwROs5HfgGWuQrThibKls35DGVhTSxg1feeSJAsNy0aTYz0
QWDDjSW6IukcwVUZWpB2CWcJ9/UgUz/sO8NW21yIYKHXK9tXRtwICgkB18ptEoHnRFhfCCnsex7q
QfwjxONvXYItWHGjiniGJeSZmAZ+Cp7j5aN44vDaSXMw9eFHcM4ODaGebpm39dmsw7LbceKe6zE1
E+jrF5ykvxHq6Ihb+zovrv5Z+O5F78Il/ViGxrDe3Sl+XDJDEYgL2gaHtlw4qIhEnPmP3nDSMCxH
AvOBv20VfpvH+kyhSb2KPxkkxWSR6Fq3ZyQTrXNDudWMtYNKhLcWT6JogZaRf8KhxEWyY0ztPLZL
Qp4E6c7UZnLByh35cbIfZmVypY81t2fGQLXlzG7RnF/P8I+3UEKiy0swckxdABZAHFi4jlDGO+XQ
keGSgd9O464PPV4gQgFsKACjb8UsQle4PCngkmVMJA80fokc20Mrl+xdSG43FwmwosEkyZSLY7RZ
hIACN548Y25I+iphPOu4pmlA6sm+Gc+442CNiQvH12XnT1D/Rc+cbFRynOx4iKPdGVENKFD8CuLx
2pIZoljrCkfWpIaiuvmMSDVuoPe8lDkZfhLkSf6BUN2D9anRR3rQsSxN3gC6BkOoh7Z57drcxakr
YZON1F0nibhuGonIyCw+PoM3MYdRQA/jTd+sbNpZ52KwNUtEh7FGuBWuVQSy+XJh75y0iyHdikfz
74ovwhae5Dzefo3bGE1H4CaCSIqEJ19Pytv3OkpqqTsVRyLBVixOdRghf80lLd7761F96kFbMHcf
N1UwvOVxu+JOQOsnc7kSHry0FIt+/ZMP0kauxkhGUzwyJqowgL002U51MBcV1srDq2cfvp69iXzp
lgzwqZsN5VKs5w92QOX2HEe93wRlglbq+N6TE3oB5czOUQf632YF+foyg1QP4/DJ4TDMHyFFSbcT
v14C13Vg7MuR8vH58GySBBGKX0aehjhKozdgen3k6Cr1yhhDXZ7+6aIMFh/MLDv7sGe/Mnlb2a0n
qbwRx4nCkgGUxpBOKZ8a2SBVQW1O/TeyySXnJdlUKE1Jg+7uDcutXjORtI2tt5w+gG3j//WPMUVT
en+UZwT5+Bssv0FAyB7qy0nBM3z4e7zMT+zNs63eNnXWYy7IJtZ+IxcPQglPtbIiv25bnpMNQjl/
62cwrBJOmyGdfDKNogVy9fSefK13leLrG8IszwwxyXDuVnst06n6ukBwVvhmekuhQO+9whxDySuP
zaCcZ6iQrsU9NYCHKGtRaywPO94DXDbg9u7S/wMXWkwVsH8rH8ibsnbcG9y7xSD6WQNL6h7rrgJA
UYzhf36mpMCx191/O7wOUbE/QD8bUvcGfXmS22SuRfUq32JnJ5T3uqLU/3unzOzTOLJiPlHXpyI6
Ug8FNOYH1vIhQ4N6sMsmc5pO2o2eqTL25qrf2hado8QzAigDeKI743KMZGn464IerFaZL2zBH1a8
PPYW//bcJig9qFhKod475tp5Wppe1ZknqAYybwRBjZdCdLRFikT/6SLEwXt/o17wNlbKENoZzhzO
p3NG7wKMF2VspWzhgrOvQfwvJ43dXLnb0L8KVB3V/olhvzp47+WAgrMsbGiNwmxErRmfFRJ+zVMP
RC3V06xaPOhdDKWAAz+mEbuXxMEjqfO/AH9USiBjhwKVP6hcKcOun9/v4S2sOan/53RxkGj+z44w
mcOvj3fFwFwXR8JaqktkGdX+zoD4E7HDvCMko+O8hN8CDq8uEn9ZiTW2dE6/TTgG+f04GsdoWsVR
mQZF9mbLWiqQMRXjEgyXqtZSCKR1xVL9hXfPxW/hJuP/9u6tZyGP4Z5KMagajP40myEsj3+9mGe5
3qv8Dltx6YmMkAqp7HIHAWurrrdBZQshwBIxXNwLyBb7SrdgsWNpAV7g6deW0J8lpGMTbTHf8tk3
gGHgabgDB+BEeHbaE5m7l0zVxNMV0f1fOMzlYU+lW+vd5AEkPWCuUMTY8DsSsJQl165RVtFWA89e
bINWVQStsszi8fm0o0zN6H8EyNGnF3afg3lytbGQvFjhvQZzO6KI5WqSixI3zmfZzM60z5p9L+mg
7x6XpMVywvStt7YNKWGtvvjKknHLB66+wA8hTXOd3rWEMTzMB1DBVUshPyFcSX/jrZUj5dG3fdVa
jFNZRGsnOwlWstvYMr41C695W9L2hnVJXJB3IWV+397e1ASmGWsmUEbXJgdE7if7hmrdge1FTvex
EHAKuhCNHid239KQcRAQwflD5jM6rI5pVAIPx9FUnWrzYrtiuOm5+FnVYQRuq1fXQrkIrqb3MuM/
TqAulqrxaFkaAD1Wvvb8UzNy7YMrsI9DHtxN/MXIFBRl7YklYp8TylCKyou+YeBDh90/tQjDh5aN
uzFHSrgpvN6nkR+f/W9WQirIeHV0LyWet2N+X2sjZxADXvB20QyanaYU0K0yRbdkWiVbw7lCgykG
KueLuZQJ7mViojgJRSsFpiblFiKqIpnT5ArTs1fmVXUB1IYxbqmTduPdYrvdrPiUNfrBA5m2Ij8o
d7lkZ7R3fBF1XeEoQIvHeCC46bc6dPQpofTUl2UyWLholOz/1UAbMn3XqzCDOafifUuDRSwjX7fV
PHFNpXQ73UuIv562uY9Z/Mj9lhPDlQwHFBYj1LK2GFkiHYK8+d/tXhWWhJiUyVfIZbqr9fWmeEek
+Y1vbo1Ag1QoFsUYLF/Puobaw3aTlYlyT1/kVo3JuzUuM4SIWZrRJJ3fsXg59otXpZxoZv8NsMsg
/Sxh2CsIwywbFoH+WJEttYBYfV8V2VS31cQI/4ERpj5702DUSNXc2rMOviyyyZrl0gfWknCy7Jpc
AOgbn7oanhjQYCmHX14jyukVHpYYI8s5TWw64q1vFBnbQHrBxvGnOwJQ1hE5SzrzPx3zB2ZjHIKF
zXTQ4FHXewYchy1LQApIrLKH+CByFZnDRCaOPm81eK+sJQhHd6lEkP3WynQKCw5lHDlb2sTIu9zI
LFcayvYXPC8CV2bWeVNsTc5PX1OvCXCHOaQMWMi4Apa90Ufp0jxDkpw2sxxUHPzyjYi0YhFBjtaG
ZbVZVlL3NgSthKsVF2RvKee7FbrWZSHYGdAjxvP0kx48voxo8Q6pQfNFJcsdhAmjQZU9dAM2w7M+
YeCULr6h79o3gJsvGH59E217UmWF9WGISDKd0nK5eXcqhyNRB7+sxkLvUzKqKy19a7uJx+WpezZS
qoFm9IeoX8FS57d4JCJDzMHHErQpDuq18+vzmznXcD5SKN8mA/F/SphUKSlZQ9VxLV9ozR62pstU
tKWQlXEKhJS6dVTRtO0wGAKNsv3Vp7nxZ5Tx8HWgAtcReXKzKoEMUTSlHXeDCd7NQBAQAFhxxty1
AZtZylGThWRaKm7bPBc8SmMp+o6tOTZmfrjup9nZahx+iuX3o/WdhZUyhzeYL5/ns46D2ZRHmprA
ka4LWN0xsCWnT+vwBcvOKa8O0hiJjUMRBWMixzdY1YN2T4l3Jc3pEyO6VKY9eQO6AchACLAQjBn7
wxavAdIwV+ihkW9gZxE01vpQkljHTv73uZ+RwKO9w5181KfV8ak50nbKqdIvu3LXWUn4ps6llAab
EcLFBNlKIVVsrAWOZ0s2qsQFz6QTbTH6bIx59R9N7tR6jpm9z4bZiPVM0guL4Cp2007nlZz0cr1k
AqOf81OVSzTnOxKiHdJxCc5X6q16dNqgrMTLkk/7aCLj5ILvuWOWFvE/ZwCoA5KkGj/q6xNXBKAc
Nu7CvQyVV8TQriznVRA4iv52rqmgeLun/M6pqGYJqAcdRyTDwP22UGdCs3v712OGpuG/IHZPjqKW
+22hwm1mGBC/8R1XYz/g9xrFQ800XkhFAj/gUX2D3xOBYmcs9RE3ehxBj/zmTK8RMT0T891LuQZX
KMdopCDSJJPmpk0EWqH9H85FQHOLqB7tb7Iw9TsMmgfoi6ZAnAtXhxReUys03mJlTend7Kio7Q8C
YfN6z7IqLrgvTPBvDrSsxD7xYV7j9+eJMor69NrNTKMg3l+rSzMd3ylS1zHOfPigh+UZ7EGAP0yP
XecQe7Re4SQPxA4n7d0FJ84br5kiEGISOV4s6FbPS8Axb1DGj1uQoox60hVvGLUIYaFyGoEDCJjU
jdeHAXxtGLTW06zcpJUlHCsyQJHlKgCg105qiabpTPye8eiHQIvYo58gYqIsQUg2mb9HWF9TkAa2
bJrcMuGD3iiWHD1pmk0QiIuKvWeyIT6Lp3jsG4T9HZLFMM3tdgdxZasIc70/zUG+w/ruGqoLCmDc
xVOKgwn+3WfhDOi3LXccWBue+eZAnzdUHZ5wdLZUGWbtGmZXdiy4OcMGBSzxitAXufEyAkrubFoE
smJtHFWMxcZGmTTbGVqE9/wlKWYhg+vQAj/6Ho3lxHK+zWVmMextlWEQrs3HIsS2rp5qj4tzmb92
fDL5khbvBHbgsVJXMfJD9AJK19wfLHnRBZYYnraBLHTT2jb0VeIG5WqqPJSsZ6uUHtXXOPNNzKL1
LmTwKBIGrIqCmdko8yuRb3RqTkl4tV/fFwd6RX/NqEKGwNlxlsB8WRkUsoBLf8qIEqJNlM175T64
cWyuGQXUKUyzHlkHC+srfh+PphY3CVTxDkDaxda6jShPB2uA6UOOTglw8BfkQ4Hp/JEC0vWvbIP8
D8n/frP9R8ETKkA9sH2DDXHK8dGJxYI8OSstM4GX3HG73ngDQ7RWFqnevNpMqUyNfJwmugnMikhq
+5iBer/OM5e4qt7QtqTCpQ/85znRToKpsxTRw+hZif5aQff1Hy3To60OOdJSqpdLewyW0C+pjYIS
wpR5O6ajruiTNgtsumHNrlxJ6M5hQiHCtMiLjp+wTyhRdJxUmqySXz2W+SYD62k+3eNq4NJFFzmT
o9dFa/ZAtWcdENDrrgLQ+31hdAE5fs1U8yLoA2bgOdw1wFIORd1n+DDb0rc3IjoySJnxfaLNr/G7
UlgK7fY79haUD6k5BTzph0Ae56eShJZv598pJVPtTd2v5TaXgyLJSktA16tFdzLAHX55Hpm8ZmpL
0cyezUk8SByhgvuydqCHrNVdHEwwTnaNJROBdi7MHBB7CMCs5wh5BK+tXHr4DgK+LqAAqJDm4uk7
OU5obWseyTeuEzK62gH+7bDqlywIX8JIB4UH4pMTchm/6ukT+/qVD82QsGszFssv8YA9qqItNNNi
8kXxnJINorgjnf5yi9Qv2VSwCkfTJOYxgdRLdFd17ZThG4I5XwsiHqknJvIVN33ebm2IpU9A7GyQ
dS2WClrQEbS5ZZTTzDKdouw8mdQtC3mse8wBaeQpPTIj+e+ZDCieVMR+NQqwa5hdu6gX55scx5eZ
qYXONOmv2taF8e8He5sdGCppjq+dal5XNFFIlAPhyZBiJxV5xot9vvHTHttu2ExAs7El8RAkJbB9
vanBb4EBEFQn/AYQZE+6Zl2kQREQ7apSl4l56+YSoM2HZWMJ3uuhNEpTLyxEBofWeK+nwiqICR9L
kluplKzq8sEJqhlhZFtuGal7xRy2KHYVozSoywmWYv8yKclJtc1XVh86v1IXMvDu7ltQuOCrfkUW
UkWqnQ8VnL2C9RdWaYu2V2yemjBIRyAVNO+sfOZzgMAhCJMYn7yNx//lPaMqTWU1SuQrVaJBH3Wc
izUoG5GJoDaBWsydCOC6qwqHdVy+qytV6XOSSHWxBqp6WGdVucA0/rzTIgBtSh67qNosqYtjjlp0
z8BFaqAFKhZtpB5l/GbnTckGeKEkOkMscMYc0owayeFL66Xu6NoRfK5LrRqLqJnvpmezLk0OqFhj
EJm3a3VIkZnbhgw3Huqtqbf/rY+I18k7IGSe9Bxb3CDZgR/lZ87NOWQhzRLS52RAB/d8eTYRRHyI
p1JubqOFVeuLDIV912Sh8tp2Ji5tg2D/c/U0aSEhWGr6csqfEKNvSF+wfQifRbI4opbLxfpI6f3d
ApMWIkqOQalAMjIlYF3URz3cqt+guY+cAyRuh9sEoBSVtYItwY1zHd95Rd+EuuWIFCkHXBK7/wRk
vjoxEHk2jM7Iv+69oeRkHGmWyFDG9PK6YGvAgESDPUHGH4LbDdxWjIUIBHg+q9aPPPuNDJNveBku
j7ChxV37TIC18O77F1qUkjgf2A2RwaKvqGBR3mj2rtyyiFo5NFopSwzii56oG3mV/0OHNphLZuxw
6eyM60yzr3eKv+r3hzeAR6210KTsmRXEpdWUmC1UbeXQ0zPn4ODcH/PmBKweFI1J66wbdwUiF2ZX
tUpVDrUYFC27ZKeWM9lRAHBgvbNcsqex8/0ieD1htufbe2nCpIA5BHQUwmff+XU5t/5IitLTlOHj
AOwrEJH4YfpzWIGVm5X6VdHUYqlzJPock5pAys4zsTHISzkr68XX3KUCln6F/b04yKY7EYdgMqXE
lxJw5uADw9suio+Wo/XuxYH0OGPCcxQzPp194CPGqQS7Lz9tlhOU3AMQf3bJLq4SPE0ySlxZDtNZ
aBBdSMPmOAcdboS0ljjyoEz9buWal4bKTV0ueUM5e1HSM+IcaAOBXJNU48ZyD3NRB0+k4nPwkPt5
OlpjK6RhP4BM48H7THnCB2E41E9VsPoTVDyjoyFusCVs68awTb7xrAm1kzay9EVY9EA5A4ErkCRQ
hjF/xEDOviLlzbqQeg8scFR/TBXiIWQR5KbkGnc9bNKD7eDQ1X3ltsc0t7qYY7qUQbXgI3dKUrcE
CuIghFryl+XhP7xbAEIER57Zo+z8wWX2+yP4FfRdBYidX24U3WasyOVtvFgd19EAoKcIWNgqeNCp
uYIl0iOe0so7lT7FMzCVEoNb9aX+MUtZDrWwlIVf3xYpEXcRu5xA/BVtJYEZWzwzgHMLBPrQnzST
2vQu08EYxKaZ75GQhuU2j7NFKrzSD3QvafuVz5mISAOzOXH1XH40E2TpozJ4a1iMX4UZLmeGWZYw
aglYJsT0QPi05+9ewqk8GbFFG3vo6MGvKjbVrvfAV1jtNzmtq2DsDJzC3ATnYVtowVMP4yI2vHC/
3fVVKjaNT9uJDcuU6T/1eGW5slqv/GOBGuXF3n2ic40thwbdzmRZJYuwn6/BV1PxPNFf8LyTcHNK
P6sFDO2KiTBBB9Nn5VJGYzJ8ZxoUeJUxDBa0M5+jdwtVwgElUuP+7x94H4nFfV15KIaIhL3rVIpr
b8L6h9h9hnYGdlsgIxw47wiuViM9e5QW16v54tN1aC8ffE6C1j8zm3HXYfiEK5z3HroqDlO30OhP
gjvGPXfrIil0ILKQHG85oaUDLNnIfkjh+R7lNCEwQ3g3k+o7kl3HfMv1ETmCMFOFPTgqyg5wnIhc
BkitJlpMgRg+AXmrWgqRMQmMryO27Mad8Z0/htGS4cl9bZRiSGK+KMkyYqyCe+/2/4MT1wRIuuRQ
dZ2aR1OCI2vLO/8VazHn4fG/2lZxcIBxmGX+HWOPtsxATJrhhKY8k9U3fl8rwMkGAiWFsVkK3rVB
+nGhPgmhT+e47wvzy5L0UozIA8n6KuYMmpBJai/FuVIpQ5KqS+qAU1baKRAZau0Ot2zU6MUUd8i/
ev6cnlmVSZ73w9Yf13zhQQIk+XOdD0AGn8qbjXRXXC5A4jUu5H9otFPyllbhusDv2fobXWKRUSH7
ucPH9s7yiktIW6Ztv2GH9Mgiwp7MJyCfxFMHyeIGYiP+i/6NfBWyRVjOGHWd1ZJkhw1UWam4wft7
jIwdaw+IbYd02AktqbfHrNa3+8j5OfFYEeB7EKe6QMhv+qK69HuR4rCKDkeVeT1HdULNGRkPPdoc
WKJNH1FISEag/iY+tGIBCrpIChb+65q8paOJNwZNG7RmfS4N3nbKPtkou/MicENZeT1yDweel656
XXSRVHbepuKOAFkJDkMjk9wj1LrzaNkcVbVFsckcYIQMJCdUwxyLvymzAFm3n2eT/BlA7YKVR5rr
Z3cO2KK+ovQaA6oHQbeTU8tXA9mrCPRztTxugFgLCNqPB9NCW8fXDH2iEJ+GtCxMhRDkWcJR/9s1
+C+HRXPsv4lCXAiZ+xyGoxWL1vC1fT2MkOAiMfcOb0MePsM3MA5x6om/G5OOn5muaTZWjeVy1iMa
9fgeo5KaTF9ijx5omxCPWMs22ZAedWY7sd9u34r9rlgOLQEfBnegod9/4G+4grOr908gTcxrNUQJ
oamIeZIq53kLWKHQfUuf2Uk+ZNUZIgMlaO3on5KgG5hyqqnKMCLwfrMWKBoChRA9VEOUnZFCJndH
xFJSXYcjKBob93AcozJCf2chJlTV/v8VLINFFW9nowdUdhh2jQNaj3wbxJm6BkXp+vr5C+nVT6AX
j/rBUIngr4nUMI/einewnz/RSMDKH6ZWIRdRU/J6XLrutRwmlTbnNsqNXpTzLnQn8+QFR+nCcFp9
Qb44vuky8QB/DwwwaQS8TV1FMrHk72PLsvXSI5BZMDWNqY/PK9ni0sfwk2N7xoB1HZDOyWxPl6Q5
2NTib9NTmzrxFLOjA7z0l7zP0UY0YXC/vL/a4gpi7GQaZdZ+WomitYj0z2leeiESAjEHDDo1fCKv
HpPDS7A7efRsbhwAoTWn6ukrfMW7xgsRd1g7v/pWWtFpHbMaD4Sex4UlkGHwYMB5L+lB7VmhQmDh
n86Tujhm+muKmhLgURmJon8tscIeDPmaIw/1eSvE12gvxsspGrwKG3GkrnV45iLO8NgaVO0asQFN
oUIzFktrOBcaA5AtUA18KPI7fh1eKT4t957QACVJwFNpnIOrwb80ecMu1MaO5JZrhZa4cphXbsOd
0QQMWYMPBeZteXjH0kJb+dY20uDjSKBafc0zXk7jBzTB59Nme0jr8ZzSFUIAPfu1GNqu6ivCv6ET
22B4nzOHcVmwa2o1qPV/mBSS3zI+ogmUoS3W7UmkP5pkBpIZqSqGYHmak0u9L/IqJis0YC+tniYz
V9JI7EOyuA9Rp6uIkqUIxos/xI0DJHu6sf5T28U51vxpUGtn0P6zYxU1dQAN+Yjh20jFM8mCkFVr
dOJixBZLevLXb0cLk3C+2JVlHPWAZUZ89PDimPVvrcU/VyBnViXGUcdmwLEc57N+1WreDEh0Siff
ve7zrjKYxnYx7cqrMd/OAI27A6jWEigKcYp25Fo0Xz7tjgX/ntZEqkjTKN830GtuKPFMwHj58UjN
Jx9nGtWjO29bbuNhjUOx2R+X9hlI9wkJ15OHUjLK+rmGWDUg/jsnYAxF0QC4vyXX1RPBdhhhOsid
pXvGuoJyRU0tenDR9FkVoYjVJCyf6TpMYBAQzA45WQD7m3sKh1QiALItRe3Uce8mDU2ouvO7bZKo
icwptlDDbzrC44yDujbDOd+9bGutCg9gouUnP45Vhhz+NFEKA634zpht+DFzsTsfUspq1bEfiFon
9RjiJsvgZnkY8x+dpirABkCnuVC6LJKkFcj395q1LtycU/W9EbpeFu8rgo6c1M3PLV2j2wlwirpY
lxLri8cBe+CnFurRgcn73E0LwJ7OYzX2rhe2AzAmhVC3H6aUXvAHgP4GeoAEHCu3WyJGajOnoNLD
jbPzM1lmw8bNdOy2MWGcfkZwhAzQMk/JUTP+AwI9/9dMl/e+Rp5W8T/twFa8JrW87rdpmgRRKlay
Ksc4Msp9rExq3Us7lwcKsfUhyOgXuTbz0gt3Doi2jas9tvDVMeV63IbiYdEB+ZdH3UuUjqWSCggI
l3fycPfssz91NSgXiORvO7QOpWPTmnsZvacI0UyBvr7FKQN3QQq5LMVfgqlkJohSCZpshH2Nh09b
catCI4SibPaN89iV4Lr5SUVYxkTmvre8wMIUri8eRBt7xfolZ7l+JcxtjkfaqwNTmledlUWfSadd
RSJpu9CPy/afVW8McBTejpFH0lXjyzqYHK5gRvXhL1GdiOC3WdYgG2WxHlfEKsg0hsjRrnPHhYF8
0HUxv29oXHRu+4CEt1JM615dWOl/SNO1DzivJsukg5JhUU4TlyhVovYv/K96oCZM2d1aGA/F4nO3
KEZ88nW97uT1JNwjqUlYCc7hXTahiU9nJU+EqABBemVX1WAnhO5YXNkI4e9Pr/IRUyf9jLlUCSNr
2oGvB2l+goi/cP7y74Whc1xH91I3LwNda7O+dAHw8nw/Xkbzjg8iY4g6Ounih+xwplDn+t8wCBn1
f8bJYYVnWkr3Y1SSnB9dXPhm6iDnvFDy4Dsfe6upimDp+1VvnDDm7/yb7EbihwBp/BE+tssPfFlA
X41WWVGLWyHzbuiY4E27mmYPeZqisgrbM5pBTCEUyG5iEyFMz9J2MXX4G8LMHqwIAqaE6BeB5ZXd
+uanah70hGGOR2QnwM4Y+Bwvp5BCiB5/mn7N75J2+DUfvk5sDNIM4J84+UOOS0TOmUm9FQ9Ogqpl
itlHnh3v7z/zmkCrfuPwVdAVtvWNC57YM2Xlb02+BsnXc3k4lhDVkQabqXBxeu+tjjbbGuqpZ1Lx
tYJa7TLw/kvdml+uQdHFjF0LEqPIlVOGHtt7+Eyk0+qo8x3oZPTa74IWdzlT2iaP4SBx1LiR60aG
PTWMdFE/Pe0UMOlljAUSyYVlxOZwDZs08u2StCL5CDRRhy7ISZcevMRHHRSOzUZyuWx1EcuphET5
qAWLTRjUU69sXn9YwW4R1CnlMvMckNF8VMxRt1tpk75gLo+yl2QUHUgMO//IYrwFk9K/J68Bd5aU
hNBfVTg2nCZq69TC4bH+sKxe9DDDbGPDmji9g/XUzancl8JkuvEs4hOFuSvs0F/UO/1FGrAKFMnm
Eh6VZy/ce5TRoeIyts047CafodDtc5hZSpxnj2iVOZ1hMWObsBkFYvh2mXHjFV9l4ex4njfBZ44F
HGjdyhGIi57KfleQ0sjEe4SHa/NgMMAN3i6vXBn9Hia4ih6/ZdPZey4GgcZsxraTd/VhSh0B2Lnp
H3s1zeHvq5t4QKnIgSvfxGGIRB/i2QHO3ZX7r97Z5aw6HS1wQE8WUK0PQM9vtv+DKnhV1QlagE8r
FkC1OfT3Xa3HM8q/FnDV9+vqwyn3LWRiXAYQJZiFpE6AQXmVlovMTr8SWbCgESpnUU0MuFJRRpXy
XxD47Zuz70XT8Nd/YD2L1rw0O+LzPXig1B6Khg+DFhWiaYEGesHkO9MtG8GV6ona/ZgFjvVmVO39
qrTuQSoeyxDSMR5gb/3NqYd1vDLAnmsSq9AkglWm5TUQMdu0itK61EQUFZhRyT03fOtffLNk8Cwl
b84yDSS52sj0mcZgLsXifhZ0z7giX1rakbAxM0oo8MtPgDW6konIjCSd0bUvbFR2p9MuNvrTwRf2
/TaWmSx+NsB29f1K3iiBaulJrmYyOaWmpTeKHv6xRxEJA2opNlsq10ISVfCsaxTEg8AMxVxIrIYL
IkDTs9RWaJQcVNZQiHImwH4OoVyaSVgP/nAZgwGvSZ7fG985qvDFzO1BW0NGVBSB2bsTQj+RSbAT
T58NWGizM9sQYc2HkrGGonobVHtJqga9cUudmO7hihD1Ghlt/KyZ0egEcMJY37yftiU8/vL4z/XQ
6y9yq1OsHNSm5X2WMLMJ+wkV+ckzBEvZP/lHZQcCrUotINQQb7IYYn6Lo3QT61v4XDl6ajwV2soU
OE/yhQlm45tJQWGI6hGTXhEOi4D5dOIdt53LOaIYwS4xqVqQpuzqTiitX5MQ5ouP419UtyWwzg+j
VsFstlQx+IHXcK+6ox4QEEhwKJ8YpuqGQMvktw5OX4KxCEJnEQd6vWDg/KeFHfFUDe9LHo2J08Fk
g3rQRHrne8NB30HwGBZiCpJQBS5xUpmTVngYVh/tsciGT3XR/6TPd/1eqd8zQgZT30WlUJUWBXek
hRpJSdK48o+JsMBPL69Yi6IjXeeW/chvfjb1ZVsOluSv8lhs6nNgr4vdaZV0F+2zlfqqPy81FrJt
YaiXiPr+5U/7VAIGZWpSQD/mfWy3s8ixUtJjbJRT0hFy4cMPKUWPu09KUVMAcpEuT9TiTm0H04R2
i/QVp5SYmJCTk+Xu68ICJ0ypr99DXjUz0nUo0xTQ+E+0uQONXG7Tit6m9vYCzmrxxdk/csWDIBCM
iYwMhJXyiD8ZBiIBvA36nnDdf2dvJNF9t5OyAtbbHVuySALDqEpN0rgpM1CY6/vSpRlWyumspFky
/3QAW7tPCf5agjXFKjrrNuNt49+TLH43eAYwFVa7BEh60jj9K8cW+Syfqcs9KJtF602jnhkYCFWf
Xkp433VOi83VaKI1y6sh2R+sCzal5r7cMjSX1Vq0z8vZ4xDtDQ8EIyXRggeDLINTX+m8lz4DVzxz
RbmqwLavSwj2AoxNn2lqeQjYd4y57bVflpyiFprHH8UQ9JmXzVFHSckNYcPbM46A3Byu0weyHKK/
I2cV/LSsjSvTOO1y7XmSuB+6wTVx5Go6BcFRCyVIAVfTqwLQkGLYMapJ3Jiiul/kJnBX33hEYEdO
staXB7aerziluv0EQiEvSp0iYA3mBYxRoZSEdKDST7xFZ+YpIELH/U3u1lMG5fT1g8n+kjTi3I/I
X5b1murzY1/mE/TG9h9D/Jz4d9fMmfHv9EjYBliTT7npAjb3ueGt7yKvJsqOEztqMkcVMakM3O2I
+NeIx1JJSXIs06QX1duc5Mxy51dGVVkA2R8+5l4vzx3ZdFfdEFBDQNeJ9UYx0g5ctqtJqsCC4WrT
xFPgcENBDCxR34Zb/OUik9HEyVxR1QrnOqxv9ZJfRmudsECxt4V4xkOoEPO2nXz1GzLBwYBX0xrb
4vF3VG0x5qumbfRl440gK+L1JDcg3F5XWsD0R4mIZUlGuy7DlFZnYT7e2ahaedao6EBPsdjM3TFE
wXprNVfrxQPIHPi2fAMaLm8Dhidv7J7eudSfxzMKhbmGGmSFFl9pqqmEmKCmZ0MUZMwbmfaLjWom
bG2FUoyb1UEXsgTxK66Uqw8xkQ3GmJXwRfqyyZFfj1c8kzEqdSDJnooKzwcxqbqw02K3RtTP75/L
eWicbP7dcFMYhH8WaQbqTwOwQUDeivdzWkAxZGUdTyTq3byICjsioP4TpOI0dUfKcxcaMWaiGkBJ
tE5YhjyTh69N5BVAG3Nu+ijwdQQahj6GIoeCxud7suLUS0FFkHBQ2nmJFMfafMmGDAZawkmUNIUM
RmhF0JcJwLLp9VBwGB/EY6PEwEjKd3M98R9CyWnIWVrcA9PNVntdu8mdX6KANSBBroRixXqUHxuN
iH1dRbBXL3GLl/vbyn5AlhV7g1vPTCsocFpNv37mi1fUisMK1ZDqPW6V/gZcDqHfEkvRleico1tb
C21ADXdUuIgVKWkydgexKLysrLOjkhSAa/HpE4mA5l4SfycieJgn8XmXPlYZCpPImocBk6fwNfAX
B1oj7FQ82u///Yjy75+ZOIVq6jgoqLgEXQm7jFCQaBkPTIyVVICyh0gGQE093SAYT7ykCHY9aYCV
xUeLrh1afYIANgy0GjTLjpQoujQlBH1u9YAIZynVzJAiA62OHIUO1K2Ee6h9oCXJcQO96/RhjOr5
r09SNNf1eJK4tiL0oE/1fpGpeWlWlB+njWKa89N1BLkUoUXHPsKomVbxTkWdKiwx8vCoAE9URfFf
4XZmnQr1UcHicsHS1Djh0lQVrb/WP0Ne6YnqqhD6xZ09auULgPGZOWaK6i4YZUDmsGrA5pUFqSiA
i6afC8xBj4bqUb+nlfARV7J8fu4wgg2a3BCmrcHEZwnA1vyaLByA+hWh5A9WL39RAx5qs9HWwyB3
PzUVwSM+cKIGw5RhmZ9G1KZqrRBdeuW8VGaaazIklOtfet2Krv3pkSaeL/7sx0UBr2WM2FLtv0SE
gcW7W6Y9C5+VmIR71tE7easTUSOckLINyplt4HiTvoN8o1h5+lPpD7Un//J9wUbRKBdh6Ha1ob++
pAYrS/ZcAeUyWjWNCyDrq+ZlZylveueKShxkMK5cnkKlZUb2zqgSWU1NhGegHzg+1GJGnUbAMEG8
FVAPcEQqFB5A9C6awPnEna638M7/ZbxQkAQOylU/PJZv+13RzIMxWnut02zM1ZvdtB4QwNhOx+Pi
xNi6XTMebkfjtfdI/x7RernsIqCYkmsHdpY6kGHNpZqD8bM1jqsLtHddhw8urCoa/eTovnQ2NvcS
nFvq0ePjDAoAml48NXQOl/a3zOsWjnzgxmnd6DDUOxY59uMWc+vZrXfTIo8ZuncOTRUBHzhHXC5m
iOFw/w2qzma1erXSx8+JQ8cSbsP29SDviVV5WMjPtP+ThEaJsknY0J+vb/C9xuLFlvmjJoNO/Nm7
pLGF3VG/6wWp7/bZpU24ehqtw1Pa9yo1LNyrgRKuIwQVs//neh+hHSYGWhB/PKvqAEYmDPJRSy5C
F8e1Pf6qPuRujE1AXzf4MTir4qFYPM93jbTzTt+hEC2y94Y0eNbEcJza7vkS5u+AtfbDGJaGCcSO
Ib9vkHFZzidz73BNpOM+IZ7XPb8JZd0AI84njUPeBaucj3/q0JqBrxQ6F8Aa5dOpYP+ca8qyibHi
rCLpk63zzcUMEmtSDyAAV//heIJZVWGMKVIEBaZPiw1o7p/bw7dqpRcgKwt9DB1MtLLaaIc72xQc
VTNPq9pppAReHI/ujNkmQc3zMCv6MnFRcqZgInFsT6lBwlwNDaIYCio11W2bOyX1sseWL2w+YBQn
gJs9K/kE21HdNcDkRhF8B7BbXA+Pjl4Ms0XzBBthznCB6nlDgbMZvEOADHoEryZs2vrb7qHvLLp6
X7UnNVt0cfbsqdHs4e+uu+tRUhdvaq4bUuy4sQXBtZ7XlS1AgWPjh6IU34uRi1KLYdgBR+CeFWqT
A/hWd7vA6/V/wtJY8TgC3Co+z4QU6SrRPmGqi5qEJo+3zk0FJW3VTvdQhxKkx421uMqLkCYGKGWx
jw3O1hT5ByL5p/8aGSIpInvNal44oV5RhvfF0nM2SZAEraewJdDq+aBjz9PncSmOgrvV4eOm6sX9
7B4RtBBV2eB8PDUwmbnk/jmzOjLdBsgBOLnwXgSFSzf+pBzUOywor8rUIZZDohJlG54CVfSN/tFh
1agU97W0ZpLSUcKmM7QotYNW/vAKHcEU82QAzSyhR4OT/DfWuuMcIWfRv4SMlj3m5TnsLjg3WfLK
Go5/Lc/Zmc6+Bwxpb1/M3rLEvsCm1IfVNidzF1NTYhR5FCQciG0SchQ2fsT0fAs+Qo3CPBeUYG0V
DRG6WeJLSUSStlOrf8Ic7oIkBtPV3DNc5/VoFGD9l90Q7vlpLdBOM4vjlTqtYPHc/TAfy9ZejKW9
4cMnWuj44/P8HuuSGfnB5yPEf4wEreRVYlstnh5MwZTKDZq1SH5F3Z/8XEYNiU5/Gaq9d28ONaPi
vvGzPd4DembMknNAknd9HUHUOV0fP/FiD8+R43Oe7NeFDcpu7CbKtnh+jDnpd0T6uWwDrA68RTsk
ryqpP+/1uJGknVLKnp07zChCmo+8NiWEQxS8ymg4KbTptDFpdCHV9RRLCBe7aV+m6EFV2pM+YTqQ
AgQETCtjx1C13JktSZU9KVYcwGDfcMe4VJbxvWTxI4fVkRpXBHh+0DYQYsDQcyZjKKIr6wJ/bpFD
tdyCQ85yePceDKP6n1WJ35Nh6qS8ScUfzoIWiwrtORQlP4Rhjjiv/Zxj8HDfagxkco2F4YwYa3ar
FdOL93owD2PlPM3Z3ghdtxO0plwWm/+Yj0g8I2mFEcR+msjhPEN4bcziV2U5bzPssF6gbE77/DDE
12mLyNMir+POrQX9+ffhh1ltSEPgpYLdLCtyrWu36yBUwuXxtViV5GEue9UhaCabDwNJTtY7Gdun
1tm8MOGCKwR4/3dB7Vt7DmgbIh2q9OGEo1CsClnVsXY2yXOwGlNmZZ9blFlcYuVTfs7kj32fQCgy
+uEqkRTEQHZK0vIA5vTA/qwuZXOnOhcW0TJLdOdNOCoOKTM2p4DBER2RtMFcneVuBgSlcOOCeLwT
ykKb81c3Vv0iKVJ/RXP2bjooBqmuesfc8YNrkvmZd0t4fxvADtDrgU71/iToJzuZxqMpDa1+Uybl
y0rBJDf01s2eWPS81V6eKEuI8bh7+bSmoSipzIGIZ32c91d62dq7ecLeHbCTNimSUgjua4u01zGs
omUfetUdQG+grMa7wh8M61KEjOhvoteHy1yfSLYFgW9XXE3tqwQSAGivqzT+iQ7HseRqrPv7DQi0
tAtfMMA25RuOzwcMkORj+EjMDuJreVUnUbCycu1vkhQO2NZrXDRJxv+C/RPwVJZdfsOTnG3m3dW5
M6JHKR6RsEgQ9YsITl2ZMSrqGbdn/w+lzX5eAVWb5b2/0zAP0DQb3sSfmazDyQ4GYUrpy0HW4WVZ
za4W+7q6y4ervnVqhUI5kvZrQR9kK4m3OfsQfthUT1er41V/coHepmUt+EyNOne0RIzoC7M8zvxe
3gcm4YyBCdKURo9VkfW1GTeU87voKgtxZ1jwAIvoS3D5ElOLYYo41mkMJD4uXh5Q+Q/5Kj2FhLtQ
uH2Qzqzyilcqo0gyX1oePWYuyKRVrM7pQsTdRZw+Ql/NCZNN/ILRx1ImDpE2P2H36K3Mp/ViEex0
h7S2zeMPgmqdkzeODPk3t4aWLUqMbyFe8Y5p6XNbTeFPiYli++Nqm1hDCT/NlKTIuOkHoRx4UTi6
2YKvcmAzhv8D6pv1Mb59grGYwM9XXuFV23EBSz6mJpuy/GOVBHGDqHIZ1ytBkLKR++i1swlphjmh
FcqSRdIVdiLWwnWb2gaNIjDsgkRoL6sCinFZjNDQm7aqbqIjEvKFmZUDQzDkJvdGe5klqJigmcR2
t/aHhrIHTo54v+uzE4BGk3xtBqdEVKxCHc/3e6lcgOEHfIfzkEkNe+ra0dbv8WP7Pj7Zin43Zt3k
Zh9XRVPacgfbnDUHdWtx+9CevjRj/d/C9B5zndIDpdzEMwxGzZhcHdyqQIk5m2aQtXas1NNGArax
dU5VlANxAWLc4CEq25P7HDpJ++z3xZc1haUnilBrjPE0ZoP2HhPePKyYl0X2+LfOFn8FlsVZd3f3
sRmwDqv8+mVuG7TUAJcXRxN+I/TlDXJULhqnD0pEwLn3l0SXosudBHizMyQbgdj5/ppBjQdXDxz6
FxJUN5iG7K7KZjxcvt33F4VJYaNzRUyf5tcuKb5R72JDmKLA6HSE2bxKQVefqrQe7lsH2nTBHl0T
cfMQtGDSJCbOQ09YKURtwaOJNHXLKnusfcWVjEgd2OPmWIXPza8PjC9wPm5NXb00Quhcx/uKLtLW
bDNFyGOvHvB5FoV+C10Az8pX9RXYndEWf1tD+7n7oNzT+X9hCN6pu4qPSL5d3Sle2/RUU5JLESQa
CqQTvQVpKXBTNCRCB1EalO1djwtHRLVp/IxveMQG7MuNHy7Mgw9QTT4HbPFa0cugePHSTZztTFJB
nP+aQ64Rbufhn+dvd6i6oN74LxJvmAGpzncKJtazFXVdXPDiWqZWHsHsmniYSeZvjUX9YT5PiaAu
jynfhQOjUu4psv72QS+NKAI5OV99KbMHQEeZpX5ZH3C/caVux2EWrn0OYdPm5XZFnBU/oTCXpgDh
UMinzGV8Z2OiKw/F1zQOZel/Q/Bhw+fWQN2XValC79yxymXa/YgPfMNJOUGk+S1xOTAaqZYBtqWo
qcHT59vts+hbcMU3VSMn8/hm2gBvHsbJdAPMBFkkYg6jnqYYrVbOJDWz7QD8ojFncl/Xc6Vh8alc
INloxeGx/NB1i5zQdiKt35MX6tMXPkYjx/QU43qS+apuJj7giD7ZQoYRI0aFfUHdgcWSbIMN5o0M
uQcgJ5/QUxEGnzMx797m+q5a3KqpS39XRe0FI745dHwgwj+Je4TX3MRT/FlDDZM2xp+hNM+ZssNM
4DdxWh3lut+fQvbHpCQU7i3WZkpgLrBuGUbdB2f4yskcHgfTkUWY76L63EM8Jdvx/5pvzGYJ2UtB
xeSQk9x0Ma0fM8Sx7YXtddqDf8q+wonTHjV1ZOdzj6CxYECeRKtIP+4B6VwnGWmQ9ivYlhs/Mjzq
N43whyFHW+EIEtTvasZUwmaVRPdb7CM1az3bm3wdgIqIZIVF5wsesL1se69EkNQxKKyEG79rzpm7
sFzd5WItFmEKvIUxm7VztBs4UilgO/a0s8/L1joo058i+fs/SLxK//+Ziu6eIcDWa59FSlok52Yy
KCWh/4G+u3CqW/RH5YXOaNp300Z9MB7T8wFD08t8Edx1vbfL7Mpq4Spb0DRXaZmrP7tHepf8BrSP
F1VIKHDlIysLeVFWH0rtGRPZ/uqqA+r9HWLiIUL4f5+9qt6uKJiv0+ej7LZZfsFmtuhKRNSsvpbv
Hn4POkIbO+iZJd7sxwbX4ajKFt2g3ztseAlKA46EqJlIGUe8raCgHWesLdrSl/DycBqBMwRPdpzG
eAuHTvrMFrcfqrFeYvFfM0Wr7Az2kwj0sQj6zDIQuSHzyKWoQ/mvKuCFhQTZp9aYX0mW14pK5Yn0
80azDLV6UEEe9S5zpse3zbbiv4k7eO2qIUDuV2Ii9LgYdxSqBYAzuC3cttK5yJjv706Wx7fsILtA
tQu7UQJSI2FIUW9l5CHHdvwxIne2WUXPrwOZ0C68pbDJlny1vpji161PSxZ+TTE2qUtoreUWbHNQ
Bk9MsDEvbRqDMqabbBRUtcKOZNo67jinvT/osZ9VAHH+CPIYxZZNIpjwzaBgqC1Is0iQVSbQSdkk
JaOJ0FdNYOtnsaOZXGSxfb3vrx2fjIobf9SOGqu1NoJSYQLQ1ueLYEebRVUt6rsnUIvSHUXUotkt
W0AQykzBC0EVQR9nMUIfXmKXViHXpSK7MJcvlEmZc9K5iO5z4Bq7dUezS5HV6zKdwZwoObvIPFN9
drCI65fYbiefxPzJttszn26KFM3jqNkpIRA57d0pUd7T+Uy1P6jJ4sQ6VK1ic8qaN+jIc5qggvLK
z5dRY8txMZpO+i1EIticGGlkZgC7nBBqIcCGx5J+z53+okRRIQhgr5HNY1XPvukm20KksoqwgJnc
kSTCL/HJdky0CNM5rL0Jnz6wAMKcx1Q3yc6KYhFya0BHXLw180bLoprUeG+A/54ixDwwhClZp74I
UY/Nsmv24FWhj3qr24FLPMj8aAormZyQekueHH/5kwFFoHILXb3pU6k1ElHZjBY+F9JN+vnFdmS2
YBFfv0xcbZ5b9MBbFrnhP3iTlsvhfsGCi+/ZzxPcBje4GvfukNQF2QkM0XMM9y05jfD8dgEFdDKe
r1TOo6XklqrP0TmGqsubWXp8RuYQKo9w5v+Tt0wBxHjC++qj1kWi6A411ouevQEV+R+D4PGY8wYR
kS05eLpFsuhYTeU+R9mjnULR4N0YbEzkmzoPu8EAUAdW/RyLM5vnGlKa92NYJJgJFK7yqznLKX3L
utAPxZzX1OUllKMoDkB9GEjOH67QMDbkqw1btgDAyMoBXy5YcAsw6M1PfVIsouaTN0FRgfRu5AGV
iYgMuyiaUs0B+AwzE6xBZKvWqOZ3EuNVzcdzSaOBekw3xJglfW8LZ4zqvCpL1QUE6sLCLpl5aONE
gssIGIL1aZWNBlxK4aq/z1Wwod347uyTOwYL0MkIRNUPyI4Sida0vXNvNprQXp+cOFCErdMr2MRM
OMI0BYtt4l/Hkf1w5N4Vou8NFB37fWMMD2rX5DADvifJoOAzL2i2x5RBL+84BCy54+Ow+G9StyX0
NFgQc7C1Av7rAQ8+pbLo8i18Ga4vgj3449yyWUO79dY1twJcpEyo2MRpyFfbmeS+Vlsp7XW+ZJKi
QVyaBdnmYZrrfIjact2yZ6DfdYdu8GtTVlGZpGTNBcssXQxKPdX2hFuv5XotGrd12WKuy1gwPZab
rdX/xP2MPjnmwVKehXffJxTvooXhL4Y3BD+87Dx7lPnf4B+irIKrr7RgU7fk/NNPjykSh05JV/+R
J8Uvxf0BkxOUMzdXg+VynjMUdvDzAZy/S3aK/pD+qGltayglZfo78icJnCiXpJkT98qVQaId/GEm
cEzLDRJLO/qGJV8QloWfp7jM9UOzLpFFHf3LZuQTKTawEmVQeN1uKPMqedC6bfrncR/Oxz4oGZUd
CXYODs/1x46vTBSjvcoEaxjRRzH7yfeb4EfXVDc7bx9oOsfqSxYN6AlFE/cN2TpYSmS8BBnYeVEp
Y/dK2k7gdxuJbWoTumaoLhpzmztUcD80gMefWeDhb6+8snBQiDnotk9AECJQCoQ2Jq/3f99Wqtl+
q9u7Yj4VK/vrA4+nDo6yYGFfRsn3w37e6lqrSiNfOv+PLVcZNBmOpbHdoqQY2BSla0NBUtH1oDlV
owdcvsoVSzhQ62K/PBQriTvfRYKZs+4Ln8+aWMEnRxphmSNN39GOR7scIFc6CmjUKH4h75URyVpX
Xd8Qf50MODvdyeGEioKCyeog2WG9mP+0Pt+ygZEZLZAjEYUPkyWJSQCZpY5g3kHbNKFnRDsTu10F
/3lODI2f96gUXFgZrG5N1V/qfkhDwzspvUzdJ40ph4DkC4i6qoqQ//pPiY2YPlkNVEf0vS1iWDGv
fwtrZzlH+xOxtqVsE2saD6dfHqcnTfc8KKwMUwnNBY4lfSL/B6NrjAfOHgXBCXG4ABQejJCvymmN
8FViNjvlwLw0u2WDGajWiaWXnU35TrGBhAsdXPBFbYTv+7QiPUDaXkoGQ1T12kQhDvLvZyEETPh1
Lq5IKphTNv5cBH+tanJ+f74bK8jaoVfVBrqRmTrfH0IZqoYj3PWPZ/LrrTnyCTA8n6dj8grp9MaX
LX6jZqvkLC+D7S4fbXW60+buZ1Jxb1Nkrq5LjHAK0h/W/DmMGhiJWAPIN1r1I4vWGTcM4BW6mvPU
SugQOq3mZ2e9W+AFHG029WDxKJkIbwMtglr8aWDEUY2MgW6+JIXt5Lp/CF1BEvV2yj7mGKoDXlYA
IhYLByJKbtnddjVDboRS8NnngmiDbhiDOcmYOO/CgftZt9pw5i4nClBcId2y13wMxPniByr1QMDA
nKyu/cwCmHuaj6DmlLf94hDNBwPQE4uL54QFZZed5ne0QpJSJJ9PYxXBDjNIavslNJIo5668ymZQ
fW840147Bk7YLtATSuA25ShBKkDVe/6HAoFw4M/GXwbUWDy22i59CzofmslnEvRd5TOQZSQxGFVb
iPOnXf3K/C4UyVggAAQ8oa73xLIS9Arcar6bOoMRbhLiQ44W2zupBX+aq4ZegtffXlR7YuxHHESn
jrRVTYS7KL7Ifc0V/q7TeYvzAfo16E/ESAcRytYUiVXvNQS5E+3CKhyUpD/q6fs9fbdXKNVnQomU
L0dA9Kr2E/pUit2BLLsTiGAQvjUHCw+efHq0B7GD29cPBNksjXnXYl2M3OSueQt9fhk8wqgNU0LS
2RR5fuFmt9i9+bpSsFDGjviDi27mecMsxa85RWFYu3xkqNof6qvGOhqp8XEirxXgdSymgJWhSEoy
iIU4izkggdpgJDEO9UDfe/ct8BuestoAJIl5bsfT3HhqAHb08f9HAkDXNs1XwQJ3FBoB8OI6MNdZ
QBZqDDzd+QpwQnpSy/sTS7sadfQ8xBzpNgfh/RoU8+lM0CTlmPYMPzqbewyFttcXKZx/HNIkaBiv
MhWasQJyHye0ckMiINRPvEg6z0rkyglg23G0MyVYrj1RScgSlXus/OP4e39F2lPMecKOKP1Li9TZ
EF+6T5TzrTSqjl7hRSoovuXQuJdw9GJhjZwjx+Zcn3cvthtePAiIhoC1+5uoU8VfDFXb5+CL/5pV
n7OmI+XEbKhOA0qoCemDhQoMfRd2qEYs5rQqyoduoNu/uZI0gkqld99I/64KOYgt8BUGrUisWHkZ
lRv4ue1P9Z4EUjviS+kRMYZjzSNVGX3iSEAaWgsXYNgvy/ySRXmnh9R06z+ctwl3mYaq0X8kqhNO
nDxWXQ+PRPLJ6wRdduKPM8IEjno/TPf/01LgOb2WWqs6pFQd1axncZAvx0hK3611EgAhrFjuiTKl
2FzbRwF4+Vwl/NxORZDspmk09nINfoJa+g84NgyINybFeFR4hZ7XGQJuJ0YqkizHE3aGVOjtdArt
iOuV3mJF5NjUyuRV7udDoiBOri80RzoEVXJ4liF0eADTHXx6gyCW6LraW7crk4BRl6cHIAbsVv/o
C5H0ZsJ5zmrcGWI+eYApoN8otlAepeOIfHQ7mCGDzp87BrJy/ka3yI3YorkjFiz8k2JVz4NfbuyK
NK/hW/57OL/y4IsTgeHiMknmjmgcDaflVyxLNKOLBlFwVbhxQxUbd5/PZdz5UiIjol1KPdJfbVwB
AFrS6hYHjpsuYt9eop8v/8kM73YrppkmALRLPCR3MUywn/sBPHazoxG6+B4dlQkblhY4ld7iKJ/g
X3Q2dd4uSHgz8r2dtY/h0D6ImQE8pvQv7+vu6th9f2wcwOLdupTwC46OWGbPg/x+m1T8Zli2Wrxh
qYuhaMg29vas3na4Edy3xawzXjn61w5mX6Mk7MPwcaAzff3IGyYibbpC5QNHBsNUJeqfIBi0eqNL
H2sNrY63l8gzwi8Xl8UBUj7KFMUfhAj+TgXuTIyonsw+IWGvz2vmg+BSQbk0EyKkDIxe4XmSrpRT
cjEx7dmdDQnvaaTbh0C2YnQGHMoFZHfsNMUomi3qsZdWiL/yZecq5xjgfWYOA7KFFqdxBis68VzY
GjLeokmnXGtQxtauZixKUK1rKXeXJmQj/goBofQpwoz6G56kNNbXYizvd7bK6uhg6YgdrjNsgAV/
16+1c4rqj3NKGQMnRcvRQHPr+dsShqhVIVfNA6KGrZxpHNxS+evkm0VWPrUXhOQV6eDQa1ZGSd1r
CM5Tgvuptgo3tKnfEDnY9LtlKxV0P9Ct5/LlnXRu1RaP8KLxJvHAaDoS3TBXEBup2SKdqYdhDtDK
MBnF0syEWuaxuG6f4RsJTV+r/0a4nZSencDcE1AkNummbXq03fWDlb74X6esLOjE0HcoEaSeIfwp
pn1LzFfIZT9E/CrcxaoUH/YOPvRUTXNcqDmREirlM/AIdUYO+eqtxOTXOULYzzwvXeBebKY+QFaG
DO1eOri2JXK7SwAN+a+YX/XEn/0rZzQzLfHuHhZ1Cas02cGZNP/1Lsu8v5WtfpXP9oNJLGn3AxyZ
ZIIAFlRzZq8n4EUCO7RmFCzlpz7V7XBCZMCk7sAv+PNH7FnEcVqIg+A4ajxTQJFB9RPPvH4tBG8V
gN1C3AOjZzD1TQlybyLBUWCsg4PcX0wFc0HYl9th7vWewuanQ1T744LPDaqwxNGbRyBk1eu8XvYP
rxQ0kj2r4rO9DChYmW7M2Mq9zueEn9y20McLUX2s8NsyMgm/4jQLC8MNU366Uk/mH2wxdIki9GK6
5TpVF/btSEeWM9fyVOdk/KZvVOOgBZJtt3imC+44K6Nsp1b0JjRyFtWYjUX44VPP4naFuzjpg1KT
VMFN7E5/FBhB+SR5cYTUltGEmV7VW8/NDQZDmVVRgVPfhatOYW+FcFlSab+EJfQ2yJ8yTNrF9iSz
XfYi94wxAKm1U0RXU5N4RjOjd8Ok9LC2i07N3FUGyomiAWkasbc5eyXQFoXO26R4ULBtx99eCaie
5YECn5uq1TDBNA+fXcx3r9dauXqNulvVbwl6tP4Ycra5d2L5J4hjOx53zZaV72o4CX2x1EZ+csmg
sKDNldEgtfu0taRiY9pEng/wMtXM7X0m5ZSzByU/SJANwEhJw0Q6B/09KgaD1KadN+lyBAKTRpWy
5uryUk1y7ZrzaG3JHO1gr86ZIlw5tt0/zvnlOVudp7V/loO5sJlfyBznF4TCYiJPwCJyGcqD7+x7
4RLdcDKf3u3VGIBAbPCM93iM8/Oq+Oc6rdvfD8eRL84Uw5v6B2XArfFaPz6eaQDKmiatQ16sltbH
BPnD2bdXFKX7p+XaNviO+jE6zbgkbZI4xxfPOfQFEvtd82R09frB88Q+69jK7x10Fna8iwdLtM6q
sVpbKtfFcc+/JYaI6kPPFBdwqIZ96X1jCcKscXrXhkwMfmEJ8arYtEuTz5WtaQPMc/JrCO+D6Kwd
exfZoCjbVwpohzldMKhFS3rMCjRYPYsQfk0kC3zuQ6LgLMaPIn9WOFhqgru77qMzeaadD4/A/W9r
CJuBg3manVFv5uhAWbn6CaYsE9PImzvuE4k8KPYv22qscmq2EbBUiO6i0k3EoDNqhHPN7btxYdWB
F6Wxc34o4Y9ofQIHzRiBFnmlTk2tpZRCQDd4gUqO7zrA+Us0zzNmEIkzNfPKlPIXfuOR8G7SPh/6
J1Yp8mBoXBhCLqScCcwX15yP1XCwiZ0bPF9EJ8qZlHmH5+ByISh8QPZiCUCPRN0km9CZfyfvLC6B
Iqj7aHvQnKlmYaOMU7VQYmW+bAkZluFYaJVQFgmzEeBpriNPu/OCfu9XCLq2/nac0LgvzKpMLIuk
XnFlCBi19MXwV31HSfkIJWR5CAlzPl2ioUSW314taILpODh6dJM8peurp50gfRDL0vD0Qf9O+7u1
j5PUpmiTtV72vfR9buQn7E91VhOgkRdBdB2VHfExY7ku0DjHEd3Eg8z36MIvLS9CQI4J2ORRn4gD
qZ3CpMSYSbf8zpjU3vmkXDB5vPlf1AXmRBMyArrpdqc6ReUmTc7t+Nd7PgJWXBJCfJPPYDao+wze
iL7nY9DYOtxKfcTDNxn6vR1+qdF0kUPHaOMaCkYZXVKyymLF68RK3v3Ri2kOXm/WEWvq263a3t4o
qmIGx0WvtnlYODoEqgaxhMgBlSZj4DKBAeV351cDGEySr2oLX2L2xtFtigfSQRClAydZEkXvoMPp
2lU+/A69lJ/jqAaPqgeQZTsToniQy/BCos0NvCnq2CMZQ5YgVXCV9uTqbFAYeOC7WCPE4OaW6RBQ
KyI8ouNy8Qp1Cv0X4Zan04x4y3FAHWPIt+KKy6dyewivR2VpeL+sohwbI5n6nT7I1jHYe+h+80Rk
76YxyWnjpQ7nTijCAjz6fJfTCU2tOmvv5TbYae/gzGzhkOhiS6a5XuR8dxLfUuWnpWNCds3U/END
+TR0ioy+4lD9erw5qxHlwaOPIu9JQoeSB8LqN3tjGBWoBzJAppUqs+08jOHPfd3J6U9SzTub6lft
9bpyB/dHoZcwN3/YWa8if4w8jVBHLsAVtGxjfnL0VQlK7oBhka8LL0TlJYnbgIG776f7vaQDRYvk
IeePcZfAsaZlKcE3rj1BcyWW7dDxUP6OMZ8akVqiTNeU0WOFEMjOfPURhm3rSUy4zfRBlLEoX3ze
t5VZRcKP6//E0X6rFxAmOrD3pltoybXYzzdwjFHBv6T5Xi5FwOsQhpj0MGp+UUIsV+yq1h9cBNf1
X/BHNX/ehgjaukG0xDXKi90jwWp4NqGThkiy9fkV59F5955CUj8JJrb/tjgyHPrtYf/hX5h2eBNh
8LqmpZOKZOcSGlJqwHCdLz0Vu1a3GPgT3JHxBq73hp/FLW7cSdyGZ5lZepWLHtujRbBuKp5NB5O7
WeolF8/5DQj5quGspgCREA6FdMe4uRYWmX3FE3shvTn70SyyRbDz4EwmOdIGb8RseOefec4aoGbQ
dlfzr9mc05uZu6E0N9yimoQoheNXs9CgYkF9Ge0lwOeIquQQyEDMNYYGdJOlKW6C6Fsjni3bL3tv
q8YE2pZv7VYmkrxqaeOE6z7nzRaAQ8FYJkrdsB7lyDeVzDWCj7HGmJYa9ZqLA37t8PUfQq843uXO
Nv47q0/Jn7wKCO0BBv/yxcEEfi6SgOPS4nyT/0sxOkatTsWMrT4JcH8X3mVBlqToD5P6gazhEKr1
BPl5Qj+kF3MrJ0GDLg8k2xh1hakr8qdxUq5WVO+bzTkeNP5ze6olHPhi7qLg3ZuFswUPoREY1+E8
RgI9CLQoPaX+G1aTeFtOfg/AA8KhUb3aes5u7Y/CKA9rWo9wNMxKI7zAh8FDnisLQveppgDeUztt
cpMXGCASTCMSXxtzU3GCjmmuqRHyUSnit6FMnUB731L6mcnyUJtZjLC2PbG8D7ICR3tDEQS0GMmr
m6GesTqxXAoG+gJ6u/MDr99rVUBfTT5kstXv0XNwoLG10ku2PnbKQiCZQFw6d8Xgj8U8b1S27ii5
EritIgj5HtLNNOqtGoLosVXgRHYKGIRTUfbGwMTsWrTBMogDxxRoErRZKb1WGhdj4e4JeZTKIyiK
5d93iBYKQgrJZXouBb1ihJ1vjlbus83DLir8BxyRdZeSeoIm01PQw5SOQLCD7umCxAOE4H1a5ciq
3OQW+X3LKHC8BpS8Qj6nZU6eRrRcn8wx7DuLWHLdhb/ur++9co4RI+Qw7w0DNCBUzoleg4fQuCrt
Mk2pCs8DGNKjdE8MfyxvO3JqeMtbK/M5HD/EVMrpxZJghHCr1+N1GIA/5gpRRKhbqAt1HFKqLlTv
zlZ1bcFHdxnPVY6FAnflAMfIXetOzQ+a6em5pdnx/YBaaJWxjGI0SJBJapQcEc9SN7YUUM1jn99q
oL3poen0HSFrKw6QugbOZ7tsotQiydq9gLo5Kksaw1FuoR6IR0CwdzqAadgLGbyHkU1/KqOmoGwn
mgnIHIALLdEProVMw+ZDdwjbV3EJJvkUn2xNO7UX7yWhALJw1PzCx/5S6iFPuYSbUe00pM/0Flug
E+iTBZjozkDYa/25zFmfAnF7lmmKq+h98QWMgDBLceZ0wBXMq0Gtw2oribH52DOz1VIiZ6w0Tgg1
y2ccqanfXoyQQmzKAPaq0mF9zyc9C7snpUCXRwlc8S6Dpno/OtPLAhS2bPFDuC6XLF0RZ9Kp6QLS
QABTHvzOruC4QMnVPDibz85GPiBsPggLlpZiyO5x/jnRGCOEXtnT3xY5veLZJsgsJKL7LhCs0AtB
1FdE8DhcBhsIVN/smWEx4MeDvi5kNNTn/OUMjj5Uw3b+H/ReWHhYtiv6OBLvoYPJJGD9dtReB5Hk
wxj9WseyK+35bm13ri6vz85e5kGL7F/uOvgVXXO+rHlggCrwyJCucY/AQ0MdmwWigj5hEkH1Ql/x
f7NCoMU1Sgf3h5t4ygAAGARfRh0lOONWGMZieQRdThunCar8FDoqsl1bl9mVQlBUOcjaMGyukkg2
io4Tr2esgK+vJg66nyPJ1O88cCDlbSGropXn3d9r2ymwXHZ+RdrSiG32zFrZX3ft95TvOk/YXxUo
JQPYrZCGgw5XXBu/KiC5UxpjKlHr22OHzey4ezJ9C0Yk2jif1jVcAHRHqEFh6nQrnm5A2cw1Kgfq
gRbDGOCZUCNymCX3y/DUSdtiabX7kcr7HV3U9Ck5+wjGeRAyNcKk0V3MMS3b6gDjlzu6W3AVo30x
jfw9NXTyw8SAQ6LLXo3KX1ELeeJwA2d94RuIIXG45vY6vxpuopbFvnUbLcOXy+8NGOZBcJB0DNFM
zCysf07v5q8sDyI+P+QYPgj07uZaszehBYH6DTz+tllGeEuAamDeQ0KCAoXCO43jJWiZhHrpslyR
lNRP28cjTufDUUnl+KITzXTnvvu8P6W7FKzK3dsWXF/0OPfSv7hql5P0BSB58R0yX+iQx1/wyla0
igWczSD1saWtCCYIC9fQp6Q0B4ffGM3hOd+8TOWZ2VnCz3VobwVqDJQUQjRCNnFKzGlSRFwoo2b4
K1PQNdDEohQE79tRqaanXdxzmWnjYjzY/DC+bgU+wp6eR3Nxy5UgM/qgHHEjrESenmpH9UCo9s9A
MJAizdfjyD4Lq67rW9LkMOaCZ4dqFvVERk+0Pw9jzG5n3W27el8anaxB2kVfMGRN/LcaWSPAIFA0
XFx2tAcYJD/a6Kis1j7dBNPfyTPZPRC+6EB4HG5RynhbcrkTwP7JT99FmyWX0g5D49GSsZ/lnN/m
rlG7L1G/ZViJtpJYnFohlzlXK1kfBJ097/sN4tSV7w7IQqfL76OTmQvFXCs3pTbktJlv8ZV14sTc
h4PNPsEfs5aX12d51LkHnRfmE2OSwsr/RIobqO/2C3WvQp+6tqkQjL/D6+9PsGiEeYtrmx1+fZW0
Ma5IcsmZ79a8sNKgnhUDaHu/T44eh94unrXRObCis8mh6pWbWka9OcAycqzWF0IUSdCmpg7bLQDd
8/6dcKqc0kKuwIBI5FcSb+T1iowQ/LguDh7ZUZY1m4BSEQteuZcQWhrR5D6xcfXsEZG1VgiS/6gd
VVjQJjo4xKrksYogH6NZ2Zld9SIPdWXQl1tu0EdZ5TWM/3WsqaMgFEhBmsDEAdEXY6N46VVybu0N
e2oKzOGzNcEu6cewLOjt16ZZxaES0DZ+rdX3BXKMwmGNfDjuj6NF9IucUgCkeLphDKNtsEDtPqey
HuvmtmSio0Orcpf59aThLvEWizrktmyt1fATJLNiPeQL00CAwioARDn+j5CVAaECLdnkB0YH1Cra
z20j1ZVnnQlUQfZ5DzhhuKoYugTQBmweDG627fBLWc1EA/oxcEhjYBr2vUflZzI0wthTeNmzzL0e
rC1g6eA2ei/hs2/m0brZWCOTitRYY8iatJG1qW9NbFCFUZwjgpmOfe4n5CqG1KCtJFH2KGUeW+UA
CSTzR2yjsmJG2hRD/h891YYFnDfkUQg8Ar3XY+Eptd04xdme8vsnlFXBokri+WOiF+yObJNxk7Ex
AAXLfbe/RUBCOGWV4rAqQx4KsFbY1h1nebibeaJSMwURx77orFxHIyKWWKtdlU1P4uW0hIXkwWjq
Io7crC7mD+Us/i1Enl2nyxgK5SbTynFbNVSTIvUB9IKJmL3UA01BcOTMW4XJtIAQ4IP8brNAd/aS
F0uCfmzD3Ut+vSA7u0Tcitljru0FU2s5uknDEKX9csbK8i1fzW7OmK9TV4iRazz/sP41Ujimf87O
oJ2KwasfOt/cang2TMcrbvogwf6yDhueCFvt0L/FfwqrmKWn7gE1m6nCOdeefra1ToRIdqTI5tfR
wTnU7G+fpDpt7mG9Z0k9OGsewpovvxFtj85HaFv9ygbQfE6/t1m4EuNvJMjzKGe3ZYJnwo/mzca+
G89qehgBwbYKJSPI/IIxuHg1xq0ohyWmrpq0u1a+9z6SkWv5XztjM4r5Sojp4owlbf8pCGWjAQbZ
kHuqN2WHXy3UxHFR0dQSM6Zqahp50HSCNND6VPOQBHhg/Kym7TbOGQUkiiZKNbo3vUW/+RYAdkQn
Xvgl5tkv1NLHMlNMEZa1tsFldsCXVBF2b5DI/yqEq7grZVvChPef1aLcwaGBkrz8XtUtsdwVaBVh
BbEjR7sai2T5aDyu2wgDxOappbrGmqRNZ8vk2p92ZlaqMfC9v6iJmuOZwaF5Z+/VIB+3TXk6tSqi
XTc2sQ7DcwuuhV9iOHCo6R5UrQaljf8E+Xb50wVnNjX+O/0G7XD0q8TqTFw1kdZ9NRNJAMv4d7jk
sSI2r0W17zY69eulO8TY8tiFWryFSqhpR4D8TYxQblvb4DWNSdItH9kCNll/zWOxf4x64qlW4M82
wfZHGI32MWyb6KcVsU6R7F610IZ4q93gyt93he4WTFGxX6TUYAxKltnyHMBfUT7gDydXZ1mRh6q9
6mWj05aiKnZ3SsI6vkyFtEDa/6tT7pJQnMyvhN6ZRXsZybcgjkQlKt+7O/tS5oruJl/f7PsUjWKT
jhmM2ZpIel2+zWJrWW/dFsPOevBzZPViCuWlvWqlO0E5HuVL4RJft/NZZQiOknKd/fYVGBXK+i8w
CgJ0R1/SHx4d5gen0QKi8AwyZ+CWZjftyFsQeuJoSDNagtm9fJoET86iwrv/jTXHx9di4XkqtF48
tSKMpXnlUX9vNivJrrze+w6oJrzg7T3itdgDHpAF0UIVpqDy8Gm1TKLw7mA+k6txrZxsl7vNmpcF
T+9I0zydgCSXeuvfQqRSvsd2JvQAzTcRClcCD+FNiWfm3OgOUXUMXoNKhN9r+9cHFXF2HoippT5/
PNfnovy670mkdWiqMko8JoQop4k+tPgSQGhN/eqMaxAQiORkb4lqrMLCifYSejSc8dTOjfhS/FHE
3aHdwManhuLfPsPycYmNuWfYqRWzKE3AyM5ViSGE/kVCYMCmpmPXM8KYXNf+irHmVrfwj+qJY52J
TSG4AY8nOgKibe7KH8aT47iW0mF/e7VoILHeDzDnNwP41/qZWNaS123tWswK2QcOFuGc8TFNVnGS
2JbXb/oNCIvd9TBT7V7JOcMwR5MsJ03CUtAbhwYu24L3T6OG4L1RzqXLNzUI6dFX6EdMiWPBNaM2
7LFc1FnVsz+hDERFVDRr4oaWB5CiBb0aPwcxTx9hpk6wWW/iN2zA/eecjGqjwJf2Wnb4qXK6ew2Y
zzJU191vp5rbgjtBf512Qwptz0uOF9ZSxJrviU1P9k3QzcHAqN7eMsvwHo5M2buFJ1oZSTS07eBL
GSQiXCr30yJpMIldpW3bqA8xWz5JABvdCoFckT71tz4gkNBqBM6KinrzAuqInLx9bew5x4nchPhI
qU+iwBtUxHtLeJQZTY82KHODnZzWeTlrDrXryUrQcu2O0RjO5o7X73grZUs2E6V3SrVjr3DjXE1Y
m7HieqrNvM2AEGcsfUNo3asuUxuMVIUnmkXqAJ+AhnDAQzSGWaC981AEUnqygk52qziVYSK1IFhl
PbamMzgk5XE8yDDoka7qEkNcJMpsevgCH8l6S0MiTv3XgHdesawbcpQKLDkDHNZlpCQp6zno8uk2
EeBMnbphdmcw74UAQlxJjuV9/RhUuJH/0jL9JrgCVweJmu6UxrUA15wT88iQ37DvFoG+VLIE177h
Dx+0Vm92ScKfl/EIPyhNf+OTlJIn2g8AadMoNfIQaF3kIFbcCMVCOVTPL2IA+s7tNyAJSw1ftjGK
ckZeG2j/roLwnluN9NPmFA6IA8XZ8wHdmaSRhdfSbYEAKXeVdHIl6mvLGnfof9YrDgA+xx/UKrrk
23TDbA2WSr1YQyU7KnMVZQGx61AQ/RevoPsk8m6ytDbmtU4SCoxiRUYYTSG7nN8sRS2hHtWUFNDL
SgfiVz5of+R1N6+VnKvkJYXgfVutm2eZejPq+cGF5u0sM/dZESbvBQYxMqer1hHTiPd3VVxMpm3p
KWXdaFrKJlT5Z7isBbCZxkLxrmdCbT4DfC1RFPHm889y4vAnGbW+qKU6WEMOMkxmT76B3942pJqx
zheQ0DnwGxdCk9tc44R/yU/NKAGJtf1vT+ws9JLgxI9K+MmflkuURz8+hB4JJFiGWdHDvLWs7snB
o+KPxzkUTOZsXuYnJxnqk5wHkKfkFZjVhBWLqyhwNr0IQfreMGFAYUxJj/a16nViV6VY5At0j0Im
hzxGZuRQSJ9K5EbKRpg4J8cfgMGk95CFSwXx6M9glIxdd/LFCXqgLzZndV/JNT8BAP42mZWbwtuU
94ifK45KRzg8hT8mHWefraXUANvwuDWSzVFxnuiqhhy4f50yHunciSr0q5p6lMGGNxcrcON5JcOZ
t5KpWtGY/ur/SfBsysVHFEF7VQpSjW31sXP2TdSqe+sil1U0uHoM+aWl0q87MxC0qlyhmC2zaLyy
OF0oLvx1kn6ruuLywRV3vIZiiAZZa3txL6S/iAXY3DhmuRJqmioCOiu/YzWXVXRvEDte5s1ncDzw
bZ5gdu6AuG9drEDo1XxWFroXgbg9FxZzd+Gv3RMsqufaOggmOEGv4Du74jCyn5i0eczMQi+LlXaN
VmBqeTD2jeEJ1fa0iEohPvQoYFd1Nty7taNcQ2TFa+d1f4pl7eet9Sr0e1uyf8VujjkhJ+el2s7a
iyRC8ZIVMixHjPVyBpDeYwUJwA0DCXYuJm07slHi1mhToqvzzWFdJ29QNwmUAx8UsrBSmISacbyl
QNmDbTzOHn5Y8xzdp+BQyGaA4W51j6CB4157uKTS9CXFBRc8VRj1cSoesRroYkzbpAR0o6wWHbZn
XhgEg1NeiUYxLZcgJpVznWVtV6ZUVeszWqyd1e5xMOPQhVJvnfIUmxAFEZ2HYj55wY89VgMNcLn2
o6wQRIDC2SioR4LcDZb4D0Erhx75tfjvmxKH9+LoP74OnBrvGzeH/+qst69BS/cIf0Wb7M+T1WSj
fgObNooR25XF454njWAGn+kBpF5QXFgSifcbsE6xs3dPpfIL+A9qk0tvHzHxBHIYCD5zT6vOpAhu
u7mjBAcU+hwfhf4HoxMfb2ca24+FupyGk/NyClk5VL6S5DEHxNyXmvnPo8WRbFZxgUlN8+pm46Yp
eQN4taOl9jdqk/eA6sc2KxWTNSK7kYsnDpPZXAdJil8BYKWszLUUl2wan7b0E9EFpztzuGmYfOn7
Vziuagqt44/cMmdDH+QJFQsiT1EfATHq8CTwAOfcC8EpZHvfx0eS0dbLBVovNoMBTblWCUukKulv
Hdjr1XjdkD/Ag0iVGOQYFA3mVXfLCb6ujJlK5ZVh+PR3icvkqViy8k8W2oYW4uprnVW1LzsPAuuL
5ONOT29IYxR57rOd/Ppj5/PvmLc5kjjmcfb5UdRFC8ELSvc2ACXn+Ka9pCYGXJBE4aJQkyBq1MlX
s22ge/T9hEjFbnFVVqDkey28ZzCn+hofsCKL138CFofM8Um9zJT028YRcbHMpjPsL96jTrkAq3K9
/dSinBovKZBB7olCMovZrbZdrL7qK391wkTU8OS/sdVMgch3TkEkZ4E16yvUc8VHWmtM+PgzFR9/
xM0SaaBeSKUUo9Rnby0Js41BEjXHhed8FWBdcWDcIBpzsWFU33hZcuf4mxjecg8ZeyUiPYhl5d9x
nz4QTelhqAAOu90hjTdPeVJUlP7XZjP1JZlJ/kFoeVt61xSQPk3FJ/0FBp5kCC38Znc1XqmIF6nX
gFWg01nrMmTYPyzfN3EpEwcYaYcbUNuFsMjuzuLwT0xWO70HWxbxRXoO0oyc8RyAM6/MmanBZ1+L
exw0EBZCEGPwDxd5VfMeh1xOS1rhh0ss2iXy2khWFhRiWl0RkMCd3lfwwmHpHQfjDBqTgCf2SPol
VAllDfhZGbg/bUFyE7i/ujHsmu9hxGRh1P5s6a8wennFLawaTis9RIPc+4vBC5b5goV0daJ41DqE
bUfTVOXHO4yP6z+VU0PuoWE3RZB0oRWm4d8IAxtqk9L52024IcwRjkOv2RdzKa3t08HOd18JN4dm
hmOw8N3u6NbbttdYjeOjImXuW4/HOEx5L6T7jN7WXxX/e/MPLI/0gmic89qawFlsf139lcMdINkV
4UhClIILzRnPvB1q7LvC/gs7IBBK8aXaWR6JSCNt7qhVC/Jw1s9tvDmvwtx3SFrih9T2r+j4wbGT
r+CdeF/wgU20b3/PO0NPik4zq9WsmMjJq5x33LyqCOirP4CQGqqWNk6qAk0NCBrLa7m306Nsufu/
vGLEeEWvfpuHHhGXgwaFNqchbNP+VfcI1VCtSZH1qdNh5GQWIthXV+uZJ5OoyVpca86yb8+n1BSW
9rBBuqdYHJb9VswWpKCwRP0/FJDV9M84b8tXJfZyOFw6wCfyiCo03n2ZUpJPgJiMF9PNjHUEqh2u
cZmROwVDTGrn2+5l60ifIWNAaWHCzK0Ur2vMDVE7oafL0uQ3KDQvyFqizduEJp+3k+giK6nhlByY
I6eKuMSTypkcoi9VzZyS9UibHNRiRhYCIoe8UQoqKgLepZh+NeFto/Jr3oG+JOHoh24xbXvDW3Ii
cTux6acrs8B4kSJINMy8m2ehH3Vs0wXe43WfeCzjUr7xEu2OR5qGUEVaetSc5jkiPVn8yGWb7PrU
E4ODaBrSF7NXPxhVkzw4YXgiLCQffu3RXLH3a0bByEpqffHxOcdz9Gkltrt4YBgHuYYCTd+Pj6Ap
61r8h2kolPP28H0OIdIT/gcTM6q4KcBE6vEaI9rAA3DRoMQvakawvtPtxWykw3DGp6zJO3LAhx7K
q7ekuiKYXbHcHshrLuL3Qfa+A1xX1i6Ls6V6YLDTXZFM6jY/oq6HQ6CXI3y5CzxYYY0XqRvp5vYk
37i55/BicSPAVphXOSob6rBcBl7uLo6MwQ1/EBmzlzpsmuS7AqOUn39WhVAdqcswLN7wMC6p13F9
YjHznBBEPDwz94GnybXLoPcsJXvHL3qYyNo69DtOnhlzWIhOHlPBbWGcfTrqtLBvNDwYFZD3yd/G
0WLtfuCxVSlpeOFCt8Gz71fr7A+WfrWCAvHQuaPZdqGfttKh71+oarmYMP+sVjkcQs8qxiAJActa
bz4+q4icL4A+Q1siowHZL/RSXXRycUCvkMMoABzzY0Zdi9l3hZ3UwW5SQJuLqxDcq8HT7ZNeNCwX
ztVxgyCX9NLaI/ssaaPU3OGVjrloJeTMPvITXCFYiD8WSKvVqhpSr3FiMz6r3NTLyxzmd22e3FY+
aZyCoc5PREnrkuSky9axszjmd9xN23IdUdgaZza8afmV8ysaWjYnVDynLwLLxvn4iLa5u/TQGHSN
wonyOHjHHFQSDLtdajRVNSXCamxdelXZa0a2Yk4hr4HNIbLF5hqAXQhITsu15qtZy3J93wXF6v5m
9ZIi/s8bv9qsDb0VyoWMMxso7qZVTVQVpq4s/IZWX5LHpyuNLaeGRU+tWgOIknUaXO0UnmalQLNP
ZRdc2oWAGSjoZgjn/OgpGNjL3/Z0v3DnNuZglFtdDeWp2y/duZUh1MaEcnf57CT0vlrOOagdh3c3
LZdWssyUXRHYpE082+aLL62Qa/Xj0870BrD1iMgjCwfi9DQA8qSx0qyURVGbnK7zKYnhZ4c5S6Qf
CHZqq6nCZrUajmEK5qXdz68pfnfgKK9m0aJ31lDxGhIjJ9LChg5FzYChub/VGE9ma8yzg4UOQry8
XwnZtDZvd5aRdk0TsdA2q/8hwyJboYdmXmSAMxTGlaJ3R0c05UQpzNlQaTZC/26V16N1D0UJUlDW
XkXLJ0dsidiO3hc2HUSdD6IaRyx982pamcOm2wJB4mLHKULJL5gNsFyDSJn+KUYaKpxn4KFxdtlx
O3XQnBW8xNgQ7faLTcU5VHG0GPEA/1D6HiwqN7eAsleEfMOdsZCFyeDSqHo2Qmchnzzh6IC0QeKR
xzgUU5H3jsbS9pVmjPG6BrwFUwkRfBOFnJNgyuUziZ1GYqBka7mW9lvO8VvKAF1gihZ2n9qhQG9w
fYkbGN4JYDGRNznd+rmRwibTlTm/q70i+r7XL1Z36yk+EZvQrovb+qtt8+yx9DhrfSqo42NCLkAS
8m2RERHMt9IWu+TBTecmw2mbIhPnniDhCmZJ4wL1KdXLz1JccQMqIZ3dKKkk2gdJSl6UrYzV21Ts
YTlM3RNknMYEJXxZWTFaQijmaqDFFrHwpod7ctVBc4w5EJkJCDQWmAtxGmuWrd+JherXeAV7L50H
t3tyr/2oxOX/ZAc8ml4L8ZClY4yW3eI5MdEQCnbh+kKAl9joSnSk6YOcpHMP952EDYZovT2BJ2e2
QK30VNXhmQmbpt0ZE9qYpbe75rR1gB1gLmngdok2Q4RX3uELKQHMRfyAde7wDeZuZzAagVbHFX+w
slsXgsDAl2rDvxHj3WTwFY3QoLm8lvvh8h1g4DiG+lvzi+EC8WMLh+QX8VYKxOMu3RW8omo4vgMF
EulD/eG2YtZgPV4A3dwn8PNajhXaMyUHjILUMbF13v5MONfMWegwgqTZNuGGHUYSlBLOfOnxte15
iJ853mIoAbkTQXdFLA/7JR+iIUCZyF8xUwWQSio1QNg1xppsMZ5a0sck8Nufe3wfzvSRZUCU5GhI
f4c3C6lppf1GJ6cDExe6vH49LIo2FHb/0KldoODKkqgELH1EM+r4k/mZCYJI2KwWoFNMg5wub610
88ni17nDWL3whXlgW9ATtNxuIrU5Bdz0EzGCEudqW+Rmxnr9rvcELm1iNIOPQgohQRMkNNr7cPnx
7DBByy56MY1AFQN7AoKiTDpMRoiclnNZ0sWRIuFNX6x40giDutcv7cq3oYlVcAzPtNaB0e6ZxCLB
yqL9ou/mPzxxd+usY/AoToHcndVTWm4y8r2CnZ5LBtK1BJXpOioAMqvQnZok/ulegsz8k2KWURNf
/jL6JxCTYY+5aEBjrwwbuN4EZyhFF611IAM2cmX4t5OMCZGcvPARp/rBhus0jwG1KHw9TeOAwMg6
MIgxW0rF5pM7b0/KTzJIGnsPVna/grWciM+v47jYCuq8gMfDJ1m5lLYyL/BU3zK3Ug3E5vYut38l
LGJhqNeGm4V+OCuErccF2r2yah3xMXE+ZJ+aYsSecJb5coDIDg3JmH8zDbc4Egs3w3zzMPvDodg1
Dl+Vi9OMwhFmShCRaO2FhY7WXHHFP7zzAYcFwseIbTE0xZYQMxCcJcVwTKsFkVqUUh9+B39AhLBi
NqakdH3JkH5Q3sSO2871UMJw7iabfKZratmCRv7EJT68rsFFNoeNols0TQBP20ckKWX+MbWj+l+u
usIkY/N4ST0zKhxSU9nE6uEm9nwy93Lss6po89KymE7O9r3YbwGEgH99ioK7+6RKqkngGvYqysB9
1/c0/ckDgIVM3ZyYfg+zBtxjelLvT8TuSll3oKzR1z72xEPi9ShikD3KRWvdDgEEQjkccT1fiGOA
4A2/lawgEHbMnRVJlUIG0Ppo8ECS3B0US+Z6vGJNHPjvzH4x+t52V3s0kUVforEU0chRO7eZ4NA6
2yNf2qXsOn9DIy3ocSKgxTdRjnvPOVNeyopNWajpgOeytKZfFjsypIQzCKUw3f3b7tOfLXBsMj6C
J9QQDvEZ78BPQFMUVSvklu4Ib4NOqFWcyDLFLERnc5FpWiBdNLhbzeW2UMmHnpJNbI9nooRJpTR7
n2LtVYc5fv+CzzdS7fcD7VpEczIMGBSSs3UHMhmu/FIYebdeDY4hcS44dI22vGotvqJ3n+CNP1gI
nzYEmnR+lIHr0SHh+e13+mBTroAEj6DXgqrKuP+7ZDV9ViW7QTmHQMoHbrj79skUapDrxsvS8Ohz
hC8geQXT5BIhFhaZE3CEj4K/LY7BtWk+y+M3gQIr4Of4hNau+Vca4Nc2Mxc1k4wJdHJQjMX/5fIg
Ev6KktqUhW2vI+DXeEX/c/kXI7G5dyhDbhHR860oskdZSQ1dhojfo+NHFqINQzOQA/ppP9NP5bGJ
M+XIfFbPecTo9wF6LpgMMnz6Q1SO2LWZZgH+mZzq1JM5YXrZExt5ZudSXxaIMrwuWrOW4884uA6U
AqaiSkXDg61hGQVk2RCBir5mr6GHMrY1d95BupzqsQLPrLGdd3q07hL7sCVtEgliYJ7AnLl9EpwE
HPZiPvEPW4KFe1/cFVAiYLGfLNVsGpaPIoG4GjGRjiC1J1iFgeHKK8pvu0jN/CV8h9Aoxr9sjlNB
K/HNjwPR6Zp+Skur9Lgm/9HfkvL96AYTbcSDhKJyP8ADU0p6oD2k00b7PEmjtWjoaJt36xUXLMz0
wXBGefZiJ2WuTV1hRcN9onKpZM4Av1Jf0ql/eQg91D7D+/UCkcFkrAcmL1EmirzzMClzYV0Lo7BO
XcgjsFu8x33SK/H6YT+zpPW/jCpGXc0vuBiUIm4fCDNzi5eahVPI9pwGOL8udGiTb2v5qsVmwHSr
XFDemRpwHO+hiL5hB8cnjc6VNZTFI/vvzKuKrVnLKzY+UgIRHZPtkP1yMnbNSAVOCFtd8EaW0FiJ
HnGXtApNXOX03VMADNE1g5KGqvRuv7Q7T6ylmCllca4B9hquzAr/OgzH9wi8sFynV8paRG9t9nKG
JvExqwybwIUR2zRXAjzfkxS9L9o7w7d8sNgR41EQJfnD2413/fnN0PIubjbEHIlG9SiwNVl8CVgG
4Q0uWT11LZF452ilXegpjFoDB+L9NzUDLrWJdk+FYts4Cvxbwytk5U5tGfJFsLvYjhMd8K7zdz5R
Qlyt4k8Ktg+hRY9Xj5DSqaAcjONhLRRz7llxl11AvTWiyzl7ryMAnMdGvZET6V9pDvtb+MkfyAYP
piIOvU0xObjUjXlu6O/ehCTP2uQ8+qHpv9VvIWk+9Q/IQ1AdwbBpeZMSv8SJZvFqLnsRy9SrBGmg
om5LMi4gYRmAwcrNMOUaE81CW0kXUa/qURfN+ElJM2xPmU2fOykvwXXrMVJ3zqF7YsQnUIgzYZhc
oRpLbA1s2D6vFTNfJvG/oIHgfPc34NNIN714TGnT3IwoRVVU7qAuSsnigcV/jyiIKFmqw3JblTKe
ZYSB1NgZ33lo84vGJyv1G44YghUhpvJYjrINk+dvDKzH/FGBc6haujr/xD2j2QBUZ2lWu4lZyo74
rMGpYlMS7aKFLDMzWEpcrViRjYEwsxmtOU32AfmTagSbcHghO+KPClA2HxWZQGqgg9S7YY6SQa8f
vOJLMg7dT/GvOhCdsrbyhChtfeROMVJMkOAjhlJUVXF+do4pqv+MV4On9/YwnxecdhWIIDe7tg1g
mhsRs+CRpbDJR8+wrmeF0QKOmNoq/VZ0bjwgOxzMhq08OoLBGIHhYL/Ic77W+Ez1LIf2UwdT4mv+
9c6bWglSl1AH7qyBolsSCUQbum1aPyptRnqi2mKBy96KapOGWU+fyzqLEWXZhG6vcbooUFkz2hpi
ElmGgNeS9bxByOTPee8XF1AHxcVN+QnEfWF3RycwZaH1GIjo4bfns1oYpCDUnP3LqjuJnH2HSXqK
pNdwlGdc+xquEQcbixfwxuU0DXvRMTJN4ybIZSFNfqXoDC2zZ+D8A9E7IdTG+8FbvEe5i3gTAb9a
D4Eqt+Wq1obh3kbI157dfTWi49Y1R5U3zxwFZ/KR8XHIswLs3d0M5IzJB2qrd6KZLMtEF7DfJhdR
BycyA1veqLMUctx7UQAHxF9R5o2FRmJuIXuu0rbDw8hs5d+Q/YEhzvVYbLuf1vp59JOKyI8L8YjM
7NudpowgB6CQoaP5Wfz5RV/6WYF863buPnDXqmmlJSNGTSnFQuPjIrUtdBGsTGa1H82UtOdqOpQz
1nE1ccAhn3T+r5qwoQBGnS9HZYNOIVWrPVDwtiab/MFFB/wF/0+CZvYU16fupqM7LjZuQtgfcREi
g/uaCaE+AGVk/D+WLYtAz85javKDBs07kDFk8VqYD77vaVGuqvTHmCpQv7fXAqf374cSgYHKe5e8
uXCiwzsBo8kmMU4RSeqexYL+haEOKLLiUKoDiaVUWUj7vQ+7kNs5A3EkANhRsjx0jP0IQGKAMK5j
ObD8FZ6vgUrhqPUr5sefJ8rktexBvdlKpGjopb3f3iGOXD8FkS+jdd9ssr+4dUQ+mNKSRKFAPasp
60CbYAPyMpcorPzncC9G3YRHnUDqlkIfyclMsL1M5QRLY1mCUjM5hPof5UhhkYxEGXv16zT+KDcj
LmWZ2bR2T6j5TQvuQzP6vm8veUvipueglFMmwf/8/53rqlSGkbz9sbJRxwyMhn+qOQkW2Q6nrhmc
XHUoWJ8NzMArT3Wd2D0xnqQTV+cYWG4/2DAbZg9I7GW5WidTfyc8ZYVOYHrw+oFAv8qKeYAJcIwG
79PMh19ugr+aBsKLxgTowvaHA45XCUWShF+/Xls/E3UECXn2f3w9tTn3hjpkHwE//TjDWXWuu5Io
0ybStwX9JHakCZpz+gYqooH8ZXl5Y+Xmgg6BDEBlUelztVWZUJoFdLdMz8ThQ/doYefvKuLwezDT
QBjvJzn0cVUypwAG3pwcf9cVJaEliN0m1EdMLM2vTFhYvnq10vq62omFUpUJV+kvyL/wvEesZ8rK
wJRvyYJCWNGbp3QifAcB+DN6t3kwZzhjDsqJnyxoaEFyO3BpYN+koBB+Eq4myV0Pc0x8BhupDHMx
l8Y2x5F2zlUFk/1K3fDuGcV2w121BOHq0EAZfqQwTALB5fIIjd/AzlFAyEPMy7qrPofItXwD2rj3
F1F3Th++dr4DPA/vgcDC7K3ILIOTqUbgeKJDliBct2X1YvYVSbjqumXN8VyE4n0g7vzAqn217eaW
ztrFIfgbYA/sRCPjTNknaztIXUBECMJH7/Hxfrpc/E09w95GMoz0Y3ZBAf9AuRT9yA3Q2x6hQRhc
tWEzz6ehcyhAnyWLpSicQrKv7tnHnZo03aGk+s8XwjCUzTGC67YliMKITGQDY/r0p18VEdtVZohW
mPMvacNNqIGuwsjfflXQ7ABeABrNbyhuYcPjvDnBDG7eoiZ01OwFQYJ0RBjON2CRrCSUF4UeVCcU
lAq5hA19SQ3712jqp6MiOsW2LHyXguXU9l5n25jB0iws9spyl49ovOhoj19gxC8+Xesc6WSK50uV
E72/tBM+buJN8J4cQkHy1OVRSeNMwN2VhTACr/qM7JiohJ+9sEaFDN7DoLAzGI4ADYfVvIkRTIM3
MmnfacDWAlbypSQGwty08Jmx7vEpKRUNZecK2ZZoWqYFNoVA/XbO8Ub1PKJXXyaArhHaI2+sRgEw
c4BD3yyME50nLeujcfH8O4Po1d5Pi20fj4UiqhZ6VMUojBsx1yUGvFcr4X6tjjBI6tmO/XXdosaz
VBvMVuUhxk07jx/ZD8RNStxHUfMxfNG+Z3NlxLct48oacyHWwq8mdhGZs0sVlGIvm/V4OmBYwpJh
QycRbIG5mMWi+LcsVxC4V5plsE51zmrAV+I7Aj3J03mno7RhlJi8It21LWenHrn/G8aOO9j6pKCz
fOgKedyDfzXbFNcNlRjd5exHrTGbLA2eFuRM3y4DmbPgNTMwbK++Oe1DzAt7RR+6vQGqvOl8JbK9
vgjAUcza52YSLimJXvz9qJnHeiuy+5/aQlcPMSdc1DsutYaRPrzJ3pFSzM4jkFnRIDQ+7IeTD3Jz
gOLllv8nZZ4bNhdw90gp7fT6Ln9UhXFJe29SgcPYj8j+fmoD3OHIkIRqNiSftWwEXVSRDZeEXJeg
Py0mHnYhDdsiQTTMeOiSo3/FvDrvWy0FnxWceZup4oaOx1/pvtbIOxFyq8je8eNveA0Tiva9nJe0
uETGoHBhAlbcHisLGIzue494E+e+wEXQ6GBtERcUgDIAoUak/7AujvGKbNlTTKrlX34kyZ4h1F00
t4+T0Yehav/HBKtNSA4iO+Vs7DVQKcwqrv1/YwAd3DEwWOt6wCfmzVQDLw6nHn3GahAd1Wfo40NB
iRGE2pbzl5brio0sA9KMkCoWttNpKJvAQkKOLl+SS+XrC5akanMXeMjrtQMYBAmD1UUokZ0qgxLj
Pr1mIcCN3Lg7dShG4LVG9fZQ9IgPLOLIr0fagvu0k36zzLA7YjvuIpR9vt4BlE0MxX0SdVwx3/4t
GP0FP7TC5P8aBxzAHepvyQGrJnTXyA2SYzYu60HwEM/q+vKIeCMXb7iVtHJlwlIP1YUzCJRJeiWJ
AMI+JoZYjSQMM3UtchGdTokxltJ+01dEk0/gSOQqSGpaQKnLpFhyqDqP/TaDhqB8pj/SKM6EkEu4
kSLhCZlz+AqCg77YJD2OWkL4u1/JzLOW/UjTnMYfX91P3o6yYGQ/+jYiu/NkBEWrHf+hl6btH+30
orLFj3QQDcBR2/i88ZIvT2P6XxJNBHC/P0+BoDMZgdZjvS0Uow7jditwK1Y9AJEKBDLJSrxC9orY
BPXceAynPtvMCLd2evJ+DYnt9KLlv/QHM2RlkR1VR/e+HhzqSjcQixr3pqZYZ9IFSK/vz28FMufp
XPpvsWr9xNcYT86nOzilFpgfuAGUPlfWAYHwNkT8ilxKLPeUL12qaYdH1vzJQSI7rH9iz0ZHMqc3
WZqBbzjRqO9QxfY6WQjWmaiNWD0fBbR/wYQlU9590u/0lHFeHTo+JUJ0NabHmmH7DFh4djlv+fgc
WRIU/JGS4s3QWfBL0VIhd8IjpUUMuZFBdpALJOmllOer6gEjPAV2zVO7xs0WHbiXauYZLtxs1seH
/dQ4TOJlg8nAuW5ZKRinYP3PEYhnsjr+16kNGkZZ3quDajIqwlsIx+ZeIyRjm6rbaz2WQMCmjg2C
KopGzZNkZohCrm0/k1q3QiALvsdHRXKvbj1J6tdu+UnT9Mvd2WJ3G54lWKPdMNQtaL2oQIKc2PLg
QwUsq5EjBjQsdTLo1djU6undwZfwk5zPyOZsPeLjAr1Cma/oaMCgJ9h9fYi2G23dzc6qGHwq/REr
BWjcKiNoklVbiSQV+FBt8GZZkRKeJg14VYY3cnzjbZ3Wko2hjrAnrdfz2+wBwRP5xIqehqOX9bUy
MA8qimDFJWeCQqkX2BrqWwnEmKCnHjbY3ENAQWBzUg/YJh5IziCDHfwAhnnBGp+Ti+Z/KEkdWRL0
Iq0cnuQhnS7RC2JckQLFbk7LiAFFsw5I+pmFFyKaGibxOianq7ZU6u9JG4GI9GNTgpEGxWseK8Lc
EguYueU5ppYK8+vDii9J5egzjWD5i+byoJEgJDi07fdyl+1D674OS38pAb3Zoq0BWrkb1/fzCBmB
l4l5ljkHhF8y+9D+wbCv9uLQRqoKDfOQJscayHwDS0MxODpukk9AUJhW13s6StvlY1aeyeeuP5aX
7olRP9Q0bXxFfhA53+68j70AjJQVz5P/3g6ATiagriFJ3DJMJqHArzYGRiD5MN0l//2lcspMZtmr
mSOeRJGtjej/j9DLjvv9+TgYtAaPvaiFrC6xqco+8ukbK4sDNONIdJp2vjunbLfl4Ez1Og9AjQow
xHCRCi5w+IhY2CKRI0K51nwNwS5ScgibjmOWlFQSUpps4FP5f3nxlGoN5Ds7NNMXK89on+CxuRet
bc4G3D7V46ri0P7DGlepY86w5WRV1boIPsLzgs5UYGb4duNWBQkgioaDf11c4dtGDUq/zBhltFxW
uYYD4JUiV5gfAPQ1IlqEjhj+pYQ4JnTE31RbX0wgb6BWpoLI5SGE8n76hAp2cmMpRiYHGNg2/Kza
i3g8zEDbuzoTfktO7aHvY67AFIrhXZnNNB9/CiBIOvxE+ldCUhFYU5xPP8MOACA+JxxEU4ToYMuR
8AIhPT5gCGW6l89/SPmBgLrYaQxo+nHRIXBL/qIZSJeN9qPPCYyP62zBi9hDut/qnH8360G5HkL2
qKh/OPmbthLkgbRykysm+hAeW/Bjkh2uHtEXpP0LsfLZt/SyKfSq2ipWKpbyVeiujsIHMQlpS5Dm
NU+zU7TX9djaZxjWNxkRuBkqmxTU7QCSXKXfSqiqN+WAwU72MlgiPoeOuP5y7Whv8fHzdXGKKJb0
qhZ9WSQkHiA0oBO11AWWyZr/c3/flS9bSSmg0UsWKlodbES1Qyf5vZG9/k0BWLBs1v75ki31k6Dd
5LGF17N+d8ELIOdRD59D341W/E5zQsd0+zchn2zM/2PHMudSnMEK6XUIuH8gTMuDHP096dhDvuXL
0pqc5EPHWOA4IHrKZtPPK2mQAbtGkLuUn5aMwINS6gV2T1P/E5G81wvyuNkwsLr5Fisu6BxsAR5A
DLXSUxYHVkJS0PgNS15h7bezDLg5nhOnmAYl5LuEKkmTaRpE6/c2o2wr7qkATaBk6q2kS5SY3X0e
rfMPpMZ8EhINu5oZytH/oZUPh4gGke17xUs+TS/VjFTK3oeikvdVlv0y6aVNUIP6svGT0OJoQ/8j
XPLd39lj+4rk6M3pplJ53yV5fAHkcPBv2ZbP2fvTV0zUBvlyzITAlnxbK+DCmgonZgeRuu+GZ6Qz
ZR3xjjtG2uaiDjfOlj3dBL7KkN8qnURIyLlfTavfByxB/4/CLeqbiMwXFScQwgT6h70PPpaU4xTT
6VU3nyx9zvIXrOL8GjhaJ80HvB0BO4ScZeEl8QRDzN8BJvp86ENlOC6r9YnUgVCSa6YM4MnF4myC
81gmIrT72p57G2FFeEq1pz1S0LxtvAnQpoj83h3b8/EliZuTTJxZ6jBPz/5+2/bM3SRoobAE+Tm+
b+fbJvFEgW1esYo4CDgNw6j+h77tfP7q2GdFWOHJ94N/A1o2mDV+1RHlD5pRoWWqcVBGcJ4mYg7k
TLD1dZzbYhEjZ0JiLgTIVl134IRHJlJNUrv1wBtBuHTiMtO+cNK0fY1AVLmsST8/nRRftyOdPaW9
4q7aBPOojOQ771q/+QSLeuExGCJfUWhamvp4WdJMPI3+AiKRuQ6LQG0xOhq4EIr+kuzRvajarppQ
1NdzQQSUQCZlNxqmlyoK27yeg4BDKks8HRGoRb+LrHuoUzzHu5ptE3SMaWU7QlAt8ZIX7zu2FCC0
tJrbnKPr+AxvykDxKDfj3bxJlviyTiJlxDMvlwxjz2GoXuKBSkb7eZUXNcNZYfTs+rn0wQmg/24P
RQLx4hEq1yuQqRKcc+9p/N4sdCqwxW9U1TZJa4/6XvFLSteICOlyIdyupcuNxGOM0hsKWbAI+GJ6
+E6uVtb0/D9K96cueGSjL95BnQfUoxIeWOhpCjwC/Mjhi383zM7BxHzJ/tdYgxWwQOn8E9mpCGRe
DOQllRYlg6aQjUrlc62YpYNshEF4xIs6yCw2dybGMMBTSnVqEoe8J8WpghGMYLhTmB2TRyFF0Jzi
6bf59c0DMwLt9GwolUEBUy+AKueLDHEFHw0dm/soaSPIJ/b40F2fdxhM47+fFyw7wChrHbCuIIP4
deM25ugUtpvbAj6Na9l39GE6vju4rLkR/LRzIWGptsDywvMmM9iiC7NaVndy9rjYk1PTyR5gBleI
tsPifVxpyXUdrILH5Jtqu6BmNS6qTTW1DPQqp55M2WyT7XrLfZZhxUIF3lXtpga9RBPgAeMQ08KE
/Pndthd24BMH0qwmWf/ONluREjbFkl0KfUG3gsf6z8SccKFvS6B88rXJPjLb7dLcCU9JnzigakSy
y6b40Byf99tfpgvH5HwmrJ7zciCfIzcdOqx8xldFYeKuGpmBKx2jWenIFXHbZFRlhD9DoD+RKCNu
lgyYvbJZhaJdfhWJhNxIUwJtyyTUcW84BAF3+0HIF1YuhVHZc/cB1MYEoxokJveB4/NBxuIdNEQ3
W2rAp0cfn1UscvcC/EXM1JSYmYESk2CXDgB8F+CqfCyQIVTGAFNH0LcbExuKTGwxeyeITJ0rNiks
k2CNNra020ohcO4GnAJPPhhnfvF7ivZlZVA2WnsCI98L1IF+S4PaVy6evRyUpAEEcnZ9Cl2z0EXW
jr5737f8buCzwaCGqJp95iMy4IQ2JMpl1D9d0T1aXf7PNy9PDNI/SArABcfpXASkHlfYWl/ifDp5
1oeTWOxz2pl0Sf5vzNZcCqUC+7rDRrelsrOmi9etfFFt1cK5t90Xv+MQR9tEhaGcwdxyhzJBJ4f2
rA5FxqkO8glK21NYM47j0gK/bawar5D6VnoWGEg7kSXyTkdja1FG6rBa1LnmQbzMHdq4v/12dQHf
EcsLKr7xwKyaEEPF6V9AfOJpMAMxB6FFKxkzYrOnhAOOLGHiDbN+9eLrSwE8ZArcJllxHzoXPUFg
AeiX0Gd2YLjVGZqNV2pphUTt6HSSAekfozSJWXun5C2393UDcmY7cOpnWsBMTVO2068AyfdowAU4
Ufu8BNHEKl+w1/6GFL23lIvUdIfiIiGTAnGX2xkKfzk9tpbK4dmF0oiaHv9zkENky4TlMtwrw6eX
kDGP5CvtQMTCvGAPNF/gaL3BiXlwYdY/pQmeT/1bvEyzJINyfwcAecJjjiIrXOVVMdAKKHroTd7l
Dx5dJbkzkdmpuM83Brbk+JHEOItqtzE/CZBzD0uSBqXN16SzEZMvvpGE5LnrwsXPpTr+WE6aHzno
MsLXQD+4JpdMKtK9nKHAvLOqQKBOQ0WndXEho+9R+ByLPT09WDl9c5Mb5jUU1oKj8vYL6PGq1zYK
qSRkS2jT0MQ7OsNupGuvLHuhTECMORKriS/5fEUO4YH4VoTa+KFtEU8q7HPGZEoM0XmkJvT/tiB2
UeJdPPeS2NtBl7SF10KOYg3/ZW3tD8ErXwEtySqtP67niXmtPA7z3ba4+7GQqwKaYbYePWe754cM
Igz+2YdOxeQ152MhyuVjVSPt/+Q6DESselV8TYm7kqEdONtgsH7hrzzRaeICoCf5iuID82wQbhYl
oTHXK8upJ7uzIWDS29p31RDV7EZsHmUksU2n6BjZT60o0zHTzYcTHIHQYTP4N8ak10ttnNoKmZWk
al1Zo1/8CJb8fm4vTodIFGaVRvYA7z/986ZtRSCOz3v30rpCW0CQyteoa+MiHz1LeegAYGXwABk6
MzFFI5pbIM0AUd+q6EPB2nSQeZcy2VLuR01HH/YtnCnaWHwdYD6pP1LZpZhrH1vYA0xfoD9hfyCi
kNpF/00cG3U1uyG3u86ZKyrkGkAXPV59tNfzQW2nEPKItjlwZS088w1dzfudEfEgEd6Rwr891ned
7WhYw0m12M4eajusBTJtMIf9asKMDTenwZFybiZZAOG5d4Qg9SCZkzKWH051+NJJx9CBjT6PTVsr
FrwjSHHeOW6CdDsdXw9/1mSifIR6SZB3dgDQNPo45lX6/aCU6COLGR5gEfloQGkHfC28D8uOuPym
/AuLwfrptyJu5jEJow1cAwpL3/fBxasWDTKc+Gxx7II6tzm4LmGqVBOak2eE3BySCiUTeqbR5P/Q
dUNsg2EBlkiKxBe+vBwagdSXOp2nz3dsJIXORmnBEzprWwr25p700O1SLa2gnDNAz+iEkaT6NR3N
/pFVgyoLfA4oOi8CF/FjRNjC3UrtXd21zpf4AL/hD2AIC1ie4gilTX63njlZXJOnwCNqzyEjNLn0
TK6Hw2j/TXMxc/1b1y2PQjaWD6g78fYK87VINZzCo0vb+Tv9azXtVEVWwvFnPfeJznmQEDGFck2+
pnh+jcvgKFf7eNBunrEdDa60gp1yAaX3ll1PKzkPtIFQ5hSE9c+1hcZc6bdZouMXkdTYevgGVTE0
2BUPPBb3haCY/mChJjkRkbqQkORTX5b3k+c6PdpV190KQpVH+hAGXBULq/M9OmQ7fleAuqcxIDNV
eJcoYn1F3olMslkGitiUn1TSQ+PGFL1bqdM6dFtidijimFUIf8SWKl1d2B0/0qIzUOI25HVeakoL
hlM+EmZCeBElW64ta7f5RKEkiJ8Y0+beQMl3uZOOspbcyNZXImLNMa07WA+eXFid+OIHQErhUAGI
3aWcaSW1QEJBYzlS2eoA0Zp9g6/aAUHtEL7bnz60pzTOpQznBXvV23vT8BDi17WKCkJ6c2Z8Nt03
KrBTd28pE9OZT/tApWoiQvjD+ccpzfalpHb5yz4qKNRRDSGEpadzglwjYFcYO8mm+/7zA/cclAou
orFNds8AFmeJw+rp3iczD5OMWywhDavZqJBZyTIO1T74VJ1z6TCGLBV0jh0UD3Vb+SaAmproREyq
WZnRBGC5tceD7j4KIOM4Y8NWjsmTQFWrO2pSmTnH0h2XtyOFc0+9A6kVzp+lzgKZquTKakZtqTBz
MW9qdS+2vtV28A8iaigYkykTBv+xwUXBi844ELrSHijVMBtFJE90h7ancFf3K/aYYyOz5ByBO7Ji
mNLiNKo9VKrqNqjuB5OR4MxFkQgsNZGMXG3Y0xgMQGP/7J06jmwhMAGDrph8LrwDhqRhIx6sqmbt
lRTrLefMgPC1VNNiwOjZhxHY/uJcIwO3VXb0yViTK+GXygnDkm8TXJYwMh+sVqNL+BGXrUUyKqhc
ey0wc3ytJuO7Fcuz9ZIyqgmZDhl+KD8nEeYYjV64u1Tz0tOhwrVI8zhDODwyAd2QJQ7lyHSw/0Uo
9sUGzqRaefgS4ynSiEVb0EbEeQfRCuJV4VCB7/iW3FrKDeDsQrMU1qttjEfzxcwmwnQWiPjnJwB9
5yV/9wfBbB5/4D9TXXDf+rF+H5vGFbki+xJ/UzsivwsiAenHEUmcNy/L0+D+NaZHxblrviDjEIjj
mDHskHQKhYhUR2uhvNIwutCbcv3ocakyS3JfgOU80tg2NRhgQg/v5G/1WKlO8xrT4CsDoZKjqbEU
4nf/czGSieSlgLC1/hNlhAzR5+oByMzRqUIIvv3BnmU3Ick5OHz41TFeW4sZ6LrgyJUKw8pQz25v
hxhac1yX/agEYNd2+vt0jQXbbFQ+oiaAjAlJLUkGl4W2Zzvm02C9TIrFyLfm4d9wQVoUuthf5ncl
nDoVRHQc+CJQHWFO2Ry04/yVBR8p/pHl/yzKo83VfnCqN0AYDWytZ/paEmFfQKMnrPnmzWMA6dQd
TsAKgiZ2cTxXTuSjhMvMbSjXIbSg1u+abX86fqLeQGZfy2zXcbTvGnnU0ofNcVR8koHMClyNUJ4n
b/8n5Vbe7XMx2+tCRa6nV2tkDaVMnmjbsgyRmKnZvnpa1W7sv23HvApxi4ZLYG7hsch3xVnmg06f
8lxHh2Z0kbKtZp8JadUhyw4v50BOaI1TAUlpe4EdJOAExyxzgsYwxnwXpz0GX7z+AkVwHVxLZcJt
0PL7iyb1NST8LrAzTIJNMgwXOtLPYdtYTePzjRC+inVCfIjdhkGpm2HTNZx8FO5TQ1/ino+/M7np
JH7SyQ5zlrcr/EnsoBNZuqDIC1jfsZLmeiIFHvqkzcWVOTg13HVQuGN5wsdItOH7b81y6WDfkq7Q
hnP80fdRJvS9zgMAn+3S+ytAk7vUAguCc5wXYMprJeAZv7c3Ha8HHLMlrmE6+iSlkVTl8yurQ4Dt
kUZH+CfVloWVVDIOmuSI6nsT8M7L2dB1oGwFsTtOGU51iJ8A5xjq65JNsMk5gddmtFbkSb7u5sxF
F5FGw1SlkKwt8Cqng7Dx87BD9YLzcQ+2thL46NlFo8QQFB9K1cYgPD9FatRl8IQDMYfFjRO3PdwI
gPG/3ELouWowZas2m2idvrhcF1ae/gDE6la9p9rmty4lJpcsOQUQfQkZ5Uj4nDK0u9YDW4Kak1qP
4kY3aj4nwM/zdvlqMG3Igvd/Z5lQ26bbp+EKhek6NPsg/LPnpUxBQCVaSd9VAOGZKMbBgeQYyGGJ
vZtRSTJOypKNj2b7KrOkkuTIj4H5xKnhXPHU2TPEzv8bF4NvxoMLj3MmYoqLqEZQBGugtzGI7o0V
0UpsAPeA+zJHWk/ieo8+5hPxcIsNuwKOrlAtpHH4KUIoGux2AdfUgjgfRYDkd8uKWmQWeCcxDLPP
dZzdvLfbpNH9AxULWsS0q0QxH9M/kketQlx4gDtwIA4lWb8BTAobDet7JzKB4hCKAgeS9qkyQxMx
sBndV6C1vKQyoyDFUaeZepvmyVC9h14s8geKXIv7rxqwpxhXAS/y7yQQT6j7dza6VhAI5eQbLTCy
dHkaQfraaZ0Fk7VkG+hQkLL1a4igbYswVN1bKn/M+yjR3ePJ0wync4u1qHBMLryDTTeC+GPBCNvO
8XldTY7xw6AJuRYefzYnQnD0jQgzAArwhdHIWTrIaNI/Njri55IeQjTeCXpZry5aEkuzZ4Nf+B2b
szVGvhwiswL5hjGaRu+nPbFTLDU9opoylnvFqXaSF6SY0jSeyGhf7zByrEvx3jhaJAagbsvCExaI
KPrVX4pgCxINyk2iQYmGCRafyN1cMiila5VJeAi5oN45p3w791AOglb6NdOT3G2e8/fNhelDYP68
8dLPy3CPYsebhfKEqBAocS6JQQXm7ZyYhXGS5+Kd9Dl1XLNOmO+KCtNrk6St+ivASYyChsGsAGU5
HipWe6p0Co8ug1TMYb7zrb51mUWtVyTnm1Pz722u+y0xzZvL8jywhomj3FcmAArgalcTw86xag2u
0hKbXAsWaf/36WFCExZ75/Nv0hdhlLaUc7cU+hwk78LOdhPgc99tvgT5hWwHB4IgUmlwwvhlFIm8
n1rTOZl5MSMNJ0B6JiMGAcSvspyGXCuUMh15KtnPJLM0VbiqZuV+vRaQSwixFi0L6d5si53pXszb
Dn+FQ2pW9+CiAbd7UbiShkAOAHehY5yQBe0JUlkc1wNCP8aEMDjp+ky8SiVpg6l7a/Q82FCHLV9O
PVXyGD0NVFCScus/pKdlqogX8IrLRLV5H/iyE0eimrBwaLbsDN8OOVU/95LYD1SRwhzDJ/pFGC+O
whfQdythokIgx5sG/N7S8dXjWZLO6H4wmnlO4wajERv9Wknf5X3oGvPbZg6plDpO/BY0WoP7KP/E
0fHeM5suV7OnbsP7Xs5+4eTu393rHC3p6dqx5159jbFq8Sw1ENkqsojrAIvUzFX3N7DYPQj3KDWX
ObjFB0WVM8kZo0skfLvwqfCQ/s3nHBXzRDUbxIEnjGK8TR5kVXG1sBuexhYNmZCBz64/H10fO+Cb
V7TkXLHJWo4vTkND3+bVEIHJ1vuhw62MOZmOAjN6QLc3OlHhmQlAzKaK3zTWPFiTwB+ZBf9oOLhG
sZ1yWvqHjSuE29i+cOBI9fC/jVjxM2PcrJHRJ4UeTxUj1KjE4b1TGOMzEhlIQiB2gLbTvKRRWf/n
FZyV5nkCOMhmoY88g5luPtNfXG7whpdY6l+X9fzhfGdyeC1cWgaZWwhHqWbW+FNNUhnoPI4SEsvr
Qwm4+F5HddDoGytP/bA/0UQ10n93wcR02EKdJyq9wSp0vlkofv+YEv9+f9GQLTsY4xsR8xFDH8Dm
rGiRoXiZkQWho4J/1mUiRBo3ob1a8x2Y1y7hIEWWoLNClxZThPa7OhBpojd16bZePFviQ9CTRRkk
VIQyH7SVSpCImXZPYluVrffTs1+Vwbj56jTqxv9a0B2gC0KVQncd9xnU3BxFGEhLrqxjCQjOQ9Tx
NzDD271YAwILAK0Rz5Er+jzeBcVOUfl+8Y7c9W/LoVqHj+v4uRoddLaWJbVirS5hURFmWDqnzfSO
Quf9jpGhIUCZRdurPIphEkVpFQEgZVebcmaOwgxp2jats6SkUv/91xDe1gpHBAg/jjE8HIfXrxEv
CsvZrBTHlrVZK0cxeA/+Uaf9cPzjOu76Di1r9prO0H1yB/O1CA1WEFvR/BpnQbpZ3BdqEKTBNGfz
so1YYjj/zPJOR+3Zdu+JIEp1F1Wcr+AtOPEIBmS2IkMNO5CfJVnkciR6lfafTJzy/Mc3RTsWCFjc
NMZa07mTYNv0y4Gs6T8j5rTHE+NkbCiXQBCUFuL8kvr0JqB8h57JhZ5gzmr2WG0zhZcD3TpBbIRX
kh4JSe1rVp2b5tw8X7dqFjvlC8DibHy0H9m7+MjLC1oIVIB1O5gnYB/Css5oNtTM8BVJLn3Lu+4L
UtDH9JDs2ZzxW5y0DSqSN3DLoH6l1svscZEVCFIxFDAdc102YLk0Rc52bvBZsG3X2/pK9uhw2up9
CTVZsJHYRIjiq4Oo0+o5GI153V1LN++5TXoY8Uo+s2yAW5ZqP5ffB2jYvDOwLnqE8EQAquixuwbB
hiXcPfRRoA0g472WsfieQJY+J/FLOe5sPT445ZASThK+WVngnB6Bt9se5jOWV5PmSI7+qyhGzO+6
K4MNBIhAyvs8+ayAbgqJpafs+zxkQnp/VHSY5yGvWu0LmEd1oZj2Ui2kg8UZVtTbzBVG+LSFsfX/
4s0Ejh8s2g3NluvSyTUl2SaIHx2cN59AtmO9ji9XFOcvk5yvtK+VYE64m+vu5VrbJRTvgK+J9NBl
ef1OB+lOpA1sguxJ+fr8n8/Gf7vPNDTweDq/sLbvfBTORQijRkw8XWOdqUwtvFARAqb0zDr0CP1A
SNfUvjIjqTeHTFcakvXaqmAcFthUPbDtDTxL41doQ46F4qJQf3xJbWy4yCaCNeYq/6Y8HZIE/uDk
WMHViBBrghMFml/NeFVYkuTjcBGgAFYLhSVgZvcNSFfc0LNWL4kWPIQ9PnmDlIBfneuQGi6mAglL
ihZBlvThr97Z2f8t5wlfNW6bOAbJCjOlIo4JxBASctBFuYFDIa75PSLjqgK3m0Ec2b3Ye4YVMtGn
hzApSkhUH1oOY9NLFZ/g+mW5NSSI6rG99qrPReStDbTfp7iM3iqzAlyuYmhjIJd6FQ7obqvoqQC9
zDYpW24TQGCBWX8Y5gBMNqzivhU73x2J3AbBzDApVqpJALGQaCX+qys0C7qep6kQQtmCsuwKVs3b
uOxByaPD13pTV2EAiojjvqh4Iu1v1phKBdfstctPzKuh+cpuShs9HrcLxNCxX0VazUS6Ff23tTEB
66JEXEs339ol0ZmSBs0D9Dzz97whUTaWqFbmyPBI+TjpqOgYXjzIxkdOeaospIpCwaoD4gp/J9VA
AwX6rFHJ+mW+fgSADh1BUrlWbjK5YL5Xm1jxqcgENQlWgu2pbIXxJnCgqZrpfmy7U87xyQShQtp1
hXCS6fvKmcZ1E/51dEIxsrv4L2HA9udO83MMKPb5rX1jtEpReWsQtBceswvtl2zuJ3GAVEGNs2e/
pcFG5qttp28qqFoMfZlVYddj19Et3kPxl/3q8nLeJ7s03XWOmNe5Ui0AyDpIDssdmkQTp8GcjlTz
oc0TIYJJPACwhaRAO5yaGvX89T/8DwaoJ5DDlt4CNTShCnVt83ro4dy0hvKO7QQWgpMIxDMuoR5j
286Buc3Zqrbq1FZlSRNd6j4hx/lH1Dq609z+aWd3uRwy+AHYU+9L2sbI1PrL4Ie8z7KT7JEwsGRz
urwio7NTvm7yaroDNxE7n16tCBZFyUGJhpxNYKtcWKobOQilRutjFMJaVtpCE/6vb8MHokkZQiYS
hIoq5tvSGbEmWPOWySg7c2lN4Y+BsXsKobr5oLHnr3Vv/FnoQ5Unq91wTFgQ+NawA/kcYrLtlW0w
d0NIXN+DsIusSD8pQ++fe4kNoGmDv9ORUSaf5dbkFP9UZv8WzT3TkGtV9Z7gTbjRRZBsyRC/mojP
4LiKNCPh+6P23dRKqLw7H5YrGPf/iLziZm/DyQ/zGOqS8E7LVuj8nWOi5K7Jui2TU7QEKBtGd437
hCms/ma0JjvYavzXccZUXHftFUw0QH56hU62bOzmWDEcRgO2wyIx5U+TBNYSy1VUrr4QENSIs6KP
PoJ8cjPDQNzLOyxzw5vCrNSRJ0c1B4u/I93yLsE6gxjQwmwA4V0E0N8ueuNG+dYEOB5y4YQ8fgVn
EhmDWHIszK7I2kxqGMp1lvm0tjhy6JcTA6oLZmpqDDK0IL/QzXykSl1sHH2CiFTUuXtVFB106euY
tX50RaFliX3yG8xDxQCJXC1jtIVJHFbiu57sDY3r1jpIEc6eHg5Tu6bgWatbOmhH30cV2CzNBndi
5wJuHGRK3+ibsHHa2c8CTpH+JZJosDr16KMisBSmdckVdVqKBCeDLFcVC6rO0qB3pD7sSB/FDZ6B
smslctZuR7d2IPiF7Lsp6Vfm9ALMZvDuHxAevtJbW+XY+D6lRacIRUr2/NnqccPxp+pKiZaZ+Ktn
gOfdleAW3Fz3WJ8r9WLoK5JsMsdmiHSMYiNqOFrsSXgfg89elPy1r8XSYb0aoDPJxLb4WrTAobI8
eHO20bQevIjfakSBotuSBR/j0lr+sM56FSOROBQdCCVF/svwQ/Twok8ATnNyrYWH23Ym17Ivphru
t3Q624WGoM5QoJ8Qp+TGqxUNY9/vDDM1Gi6LE9KQdcaE5QdxuvE2M76C4awU+z6Ppqq+viWz4dFb
GxVvlT2+tshFQzUV02KYVcxmkw4049rLb+sMCmbgR7RfqeZbEKFB1LQeIfn58eZfP9y4EKO3AcvC
AU3UAPoUnl6kcAKHfWncWBNK7WrWhQhQ4T1PuHV0+9BGCDvDFQFpjFE93DQVYaPrH9iZj7MajPaL
a6NvNFbBiCFwLHtT+rz0vxje6tGtvujQZk/xPpq/cAPdU/YZr8evxKsRR7KYVmxNVGp6Oz0xMUkn
UF9qoyK0r0gtIlkJHKRGjoH09EtMkEyV3VExIAv8hauHNVgyG85IKwYiyKNYNKpsRilku8Ac5zUs
6cixGJZ4WWsNXStZ5zfCJf54B751JUR5AA1JlGIOGJji260SByrgUfg4YlipNOdKRDyrFbGf8mgH
JX2fJtVb9bZQP9ul4WXOhxDmppD2LBe1pkwmek23PLbEyT4iw3ECWODpjLQ4em0tQAvidNky0qCH
++jw16d2BbEZCncI1vzq425HQogQI3yz6jvy+FmNNLB5M8uZ37wwwd0bkfYBBjErOo2hvI74DSol
v1NjQgGAWDaeKjB1z1mzx8ag/nULeAu/FH2JVpU9TdAMkrS5Lnqtx3L0m9ARAJvAIaVOylKXvV+e
1LZfd+rXjTd4ZnpabqBqvSqofXmJCg6sQBC544oViBqtidbki1QGpGvnFWvnwFrFXzDK94b10Dw1
aOClkZkRXPpzRavhW1wRge3nM1vOQyOxc1U9TGWdlMvn1q0o/dNqv7ppvbd6iyEXmBZms4hAu3XK
regaMp0PvSAwptqib2ibh9+WhZtn/9PHen925m17+1V20OpTu19ZIpkKhAqWUp5QAADHMherUN3V
5Dj0h/+kB9xkKiWj0kfqcuCcSqrFsiqIppqJtjnEz9yvBBvw5h+Yo0aiGRvISrvTAwZRbE4GoY7w
IS+6w0hkoDOTs84GlZoBjWaGKE8Tdt+iObcJL7Y2MrgcJa5kFsvip7gE6iif3BLYQQxP8ZGW6ilI
fzEKLHYWs8uW7H1rxEa9wc2hmfkMGbDc5SZL8no8WBmGwSn4TYz7szdZTdM5S/o5FXBCdGg1/fUm
ILJs34t95dkxNi3S9N7MK/rHKeZUTOD5ggw5PwY5Tp0UNyl9+gM1cQ6U1lJa978kDutnJu/h1ndq
v+WwDrXE6eLe3BbNXL9aE7BO9dvrPzMRhLKqoJoS2LZsj5hqVH13HRnv6QQHMNyHoc9adigcxN1o
s3oWCpvTHIQEvU1qvzgeRsQOmU6cKQCl7Sb/0NhhvsCdaINTi9VO0yJWub4MphIMGbCYtrkzUo14
QnkDD7TO3tIHitUTpqNPTdlNdDu1xYYCUUHTmDMHmIMzl9C3SMxd1iw9MeQqHyIo2D573A58SPD5
E4U40+IHD31wbBfZMMANdpfjo8862BoQPf38SOeu+je77qOMhEoASUzN5396T7kfpttlQ2AIVHSw
6L/Kblz5Y6pCnRgUsaEXMepYE6iFFv7ZRJWd5sF/1y0xnihQzZdo0bUgNiz+HPGpskHTyVZ2x8EJ
uvK0jXQeh3W0oyLihVPkAnWU8w4GCRsO5PkJbY0SGRXn8wDzQejGgshHRmRUugmqc0113abTF0V/
uuC2O4LAre6GGeNBuAuZvSG8Cupa3V3tltNajPvKPM2Fw33RmfQZaxMQnLtu4fA/J/K3pgqjtd8t
SQUHdMtMXASOcg+dtq77+OoNORcSVj00PJFy31d/LefNC0MNhS5PVt2Hm9Sj89PimoqnlzrE9+1z
cFVQ1TsM6GGjEkUb+uPNPBRA/4NrGmAATtN83Lq1U5TTWqSEBvLsZ0nipQtjRyR4tKFOm72tNXlD
sWjNoQqHKGCdkU7tTB25OBISBlQbOaWuFCwGiufIUtNyekzzMNFL9ed7lK3Zl3Ty8siYFN4rz8Hf
LJazfzJYLKOmtSBvrKhIneGawBA3usT9YECKcrtGMFBoeckLb1Sevn8wqmOsfb36Gr680iQAz4su
CMkWj0qae8Mnf+SGWVjy95scQMMzuT9q2Nkt9KKtnI8b5kNoku7h+Nh66tUSVTK/AcooD2UJbBgL
QIGEC6rEoOLTGX7hMVc12yqE5+c9PBxrSsQLmLvghsiH/DYIhkyojlez3IKvhVIz3qi3l2laDd/7
GDZUX7TZ+hOpoLlbjBdS1rRWempcv60nbXxp9ou7QGKt+FHMXaPbfU0eDeubpSUkiOGfgnsMKvU5
96cfdBrhvanWg8aVT2kQDS1Sh7WsUmiBsKx1CLlcchy5Xf6MJJhtlg2XGvB/Hk95oVMTgP14kL2L
CI27wREh+H4PNTHt1N1rMbCIddhOcPukkP3i8YgYU5Y0Sd0pgNd0Yx0JR5bv/tAclrcRtGDv5lWC
3WyNTTRlOHkCdnnb7QFo1IrVAHZK46P7JtzpobhXXTW9rg9tcnY5S5H5bXHaoPjSpP4A4jyys1/K
LG8im6tIpaOhaTBaX1pZnsPa7FWGN8tQsQxUmRN+KyUrEhX39yrSz1xtmPDXfLtYa3O8CB7nKOZH
WIiWOusRw4/58n4xpWUozbGnbntIAabZql2/1aqMGO6QhNvj2NGm2+v6esdcbcqN1N0vVE18dx0e
2s4vHpsl2EzI4mEJOaRdK/2iXR3hIi6QRFBWnauWYyDzxCKba00exb84OSyyWNp2Dr1WCdnd52Bv
ZneteU3hZYNU5kI5tl30JMXK+aLqE9PrBzwOezHWKBIHyMimCoAaFRcoa/6ObQhlbw3ZOnF5GyRY
CTAq2RBWF3pxISoNurkxcfi9YcQF1ZZCkAS6RpfO0bPxT+b4q3ysfdXIujn07kIhSS8LkTofoyCX
G027tETzvivSZ8UuBDX/1yjonDmbsyDkoR1NVGc0Y7O/wd1v8JZ4iDuB6LjEz2sY5hRfXVU9c4zS
UMbrQvYRo+7QSHRlDgqAv8b2H2Ffl6KwB/Spze/EOVFEZzHWlvHqqZYgxWQHH62umtR+oss5Dgds
rDN52Ax9x/KXGk1ubz4e4O+YBbSegri0gGMLm7R+X2G1PgMAsCB6R6WpkYeJ/iJkvsJ3HW2MFNZX
zYQP/G7WLaa8UHbPahaRslHZUESzaLGnKpYIx8DhRxdUL2KNW+t1mgBdlAkt7re2ey1m/PDE+0aX
mFlw/LspFIUtfSB1PmVOJ+G7eF8RJhoLgjVDR2XAvVphnX3crxB+jZGACf+VJlLAg8jMnhbrvwGz
n1Ot+8RT7UAKUaMkotAWElVsToNAKMfXby6KQZyVdRHAkXT7Kl/f6q6REPmzTW1vwlVn+C8AaR0z
GIaY/xFOlYH/1pEdt7640sS8cXcmvC90IiyanxytqXc9ShB4n40pz66IJysmFxlwr+tsS9Bn1nSJ
mMrknK2lpRiKU3x7iL+LgU/z89GqHuudjB+/gSOmLfL0gce1qDhTWsB12QxmGgg2UUUQiObShz2M
Sm7LDodB4Of1+FI6BG51Nz+wzhUs24ZRH13keFsbZtbtGqGML3VAcovWJNtxc5h0besVf3YXUcZw
KMM79JBvY7KwoJ5g7A5tbbqrBFxhUMvmczHKl0fLyNeCzuNf9Ovdx3JGbq2H1Lzc5PBL2kEQstQd
wXGXtE/RzOwOpIoj9XQkjqeZQXEdzgOAl4CPPHrIWIqp+VGK9qRKPIb0F8uOswikUalKZLD+ZSFr
hhMKIZ+fBdMmIu/aYkPeMpI1XVRkSZZ+TaMyG6tH6lL6JfnGN7Giyp/yiRtdIaY/BTWeDRIH8o6e
h8wCS0mOsYyL+ZYoKFPJiZaT3QJcuRbNaGUHWZi+YNZt0ijDbFvqmWQAX9AaVW0Uni5vEMsoHDIc
kHeUhKJiR+CAOPPw6KEqwfw3GUNlj5b8pzjMyp42UiQwdEkRQnPGkmZdpKdB9fBEBxwLUAmr0ZsU
YvOpfcT2/R5bkLJgzinnGfNHocb0LmY18mZntvt7KmKkwBgA7T3ENpY+eBOtzkJ92zb+0p9rMt7I
6/MvnRgydWr5vYzPOBZzaKJIraPoMGRllAM6MHV+54macN2PL9WuCw6IcLXiKrSHzeCBG6CPp8GO
wIrMw0rJG/3st3tIDKBY9kEjOqe1jBFg5bbf0NIX2BuhCZ3gHBH6eDRzPUnXIiNrs4HKJnHqay/4
eRSr93fQWzPpWeUuzr6jW/mg/GLGccLG+2HAOLmOAD5TEirT9EJ7HDHqWIJSLccJxkMJWDq10MgL
jgfVQ2pLxAOIFqU7nEeL6SHsBTuL0pkiXZfeO2iDWlee/c6G1sH/fJuobNE+wvoYX4JTYR0fNbV3
5rqrUDkQ7qfQN2EPpT9yey4juE9YNrkjDoXTL0pbHoGi+NAQ+/XRmgRvYC9WOhx5LPrCe6qw/+wt
2MnbnIHB2vsKbeoThd6LFZ8KXbai1WuR2wA5y/8p/qOMaVbmQVskoaZRAbQLd2DXYKVoF4/k9yIc
mgzTy3GvSYdYNJafMJdZLY2CQnmwwxLq2sgTiv/tTqf4MeuwOgWHFFsxuV7crNnmemTceqM3XCqC
IMENAGbA1Y0Y4dBFMl0k+nusvbhwqgQXhP61bs5RekFFRX/GMQDbBHb2OZ95t1cbVXT3JPKDQMld
+fxkhtZ4oxXK8HtXA6nyZ883TXUQwrK11ZVwwhVZxbiKkZjcrPs3yYgC5/HMlXEb0h0a1Su1cy5n
Iw+TfogL49x4/aGlGebGTJ2TvIvF5AjlJSX0A3q4LOGATcawPMyor5b40ofpGajn5NbLZ29/M9cq
aL3eT0ODKLE7pNpyCNFkvcQ5GmXYEOReGO4kAoLfjvTZG5aOQfDre67rGnXwavEheg1pOKqdoPun
ykZjOfA6tBcvK5m7U06he1SvqdD125pbkDClVP5RU7500VYAPd1C7j9Ky8IYp0XiINBexuk7XEZP
Syx6RPl0K0hxsd53DXckFFmwdtDUx8D0ziruOR5Mx4mvleWXN/wBgtQdJlXZErG5+TjPTh8EmGi9
bE1suZAsNhA7gc4UW2InjL6AfM+TmFb4r7I/o5W3y0uNjhjwMmPKZMEaYRnVOntSKFLM2D7PqPaD
Djm9tqkPThkr0jdbZ/JS3NDV/fuOsuLOJFannTmMIuqOZrklBMXKqxpg+PDag9R46P3sQG02vQ7K
jl2XqPn3q9BWZEk6gkTOtP7dXE3ByxZk3ytsDnZDSIB6aSqPTc7NetLIHampVUouY//cJagUGTd2
GyXAYl9wUlVAVPJSh8Gj4VA0V1QFSqhrfaeWJcZX4bnIcBhmJdnO+PcqFcaqW4trUSEVMIa152AC
hODx6/FRFhZhbEnzVCUQoJnismkPrAYBPtlNnMJbi9hrKei+BNoSVDJhcXujmocoQEP/33+dP+tv
DX0VUl0PEppz6Mi82V2DrOGTuNXZ/qDxIcChERcuh1O4KRBhvMhgtrFWUyq5dOEZfCfqUgv4g/ZM
SxntmiIuwHFY3Fh6EgW2+ajQmGNoaJVtbZyjQRlgaPfSQfWqAD4jo31LLpMtaIjpmwTssrGXzjqH
KPYi5Pl0wY3Ot9OUx0coA0OLXCrxqJwC2/IQW0hGbnXKrlyLDjquAR5Y9aDAWtgottCfmIpLgtb/
NpchVdu5/BsABPG6f3qSXrAzLpavBoIJTZvP/a5wUwTvnEi2P3MR5DILT2JDtXxdEAo1xaZBKOqi
LQi1OMOxGJPOmCT2L++mgPCipJmN6iMiuRbgDBihEyR+fD9f6fAt2/+osvdUU5NmdNb+Zq1AtcMq
pKWs24g0STezRoM4G71XC2KPOSvWl7lh5VsIngRHzeWfZ67/0fTG24u74Q0yW3A68LMKXhCZqrJb
Jsuy3gmodrcFRzKp0pPiNY+D6/fLSF61jv58Vmox2d5h1N+jrcEElSzXbYi6l2Wf+K5G9uD9ijmc
ZXM2GxKkAvB48zDH8uDZ57byIOwtgcL+AheS2IH/w9504dv2DhS/Vv38Uu0I21Ef6B67/FdTfvQc
sjjqmLlb6S7HzKEPmzJ/IWy34ePZfKRiZiVr75bCJIKlG0Jo3/TDxcd34H65t0vNNioft8h0Yuus
NECgtlEmQDQAND8IMdz60uAGg4Hy+IbKnZlqfFo5UfVTEb7U+H0lvecmTBOizdADB2TEmLMNaCtZ
6BJf6G/kB52CJGbIyLzzVDtmy9etrKDr/q/yH1KE3hhirYo9gfXRYLyNuRp8sFm9abzSHiIPsKrs
/uzXsWqWH4RBLDWHVn2iDrxRHB5GWu2LOIgSw8ggYGUBmMKUyXEG4Ekl0dJ5+Xhz8dJLUitxHvXE
JsVpdLEVURELJi4zMv2xS1KgI2R4v6NtqT/QH9WWVEeVVJrmyuhm8kPbFCZ3pPKVlg3TcfXW9Xry
Zmh2U/xwbK7n6Hoik0l1zj8uofHqKjaBmTed77WVMgtAdDyF2kOOX++p1DtWsW3l+VPWWBZv6wrr
53FUx1+YbuJO9hEdMMTNrnDHEqk9aKCwOqxcex9gHetzKY1zmdsyZnS9qQCLi6r3lFfplQNYsyNu
OfLJwDFD6m+ucJZXkSu8InIGJTQw3aYTn88Ddl1uNOsQBh5L8ywNba9qgVIp3NMCGWvmDg6nO0H/
DBpeA8zonWuHagVN5tQCpB7biSKGz7XwOuEyVQGsdjQbBHeoFVmjnNNOFbtTdbBtSSR0V3Av35GR
wWSxnWzaK+zkx9JON/5EKSVsfRgDHaHe2lh8+YrsfkOmfBJ/bmMguFqbwdE/Hcg1/1WQGlheAq1l
jErx1g36QCNXToyQFbsd8H2LYgq8SIllECtsheIY2jAGw/ISsov0BNdanxcFe7K5nMrDAjKEp9jL
u/y5Sh2v9FoAFTfVCPBTCJJ8K0fhSKPD78TQJvlrkY6NNMhuTPljkWEUJcMR+jUwzCyWiFSjRZzA
GodaPs+s3wwW1aC+H4GmWtkMMmhOiGkwHqEy9ee+EnWmu3qg0/XOR2jeZ+20zKIpLpoLSNzSr+CP
xVXqRg+eVb8lFL29zyhdUkAye8iJj17Vw55VDeIqh4DRgToKoj6QRP4BTBN99zAOy11aoZEJGU3L
Umn/AO76rvr3dVtuCXktIBAwMi/bKAe4xxlsRZPGLnzEpLOevFbIJshbD8jGWCl3KKS2riLII5Oh
K29KHfwPjmXjshg6Gpte6n82yiQaiovqXeyfiRNkqpkhW/LM4hZKYMiRYXCW6o7xOQhI6TS9oN0F
ec/K7zmO3UAN0U7Rxc+eaNrMVhNU8fYlIFGB3IgVFJCQUJr54vTBREgYqhhXC4auqBgHmxWtdtLW
e/QgkU34yd9a7os477Py36LFcll/RBVrM5/3gVWkMgIOsOE3vPlnTHKhQF3bJCdrswgPwE36tbb/
3PU+VCVBmzb8ofcP5VcTqp2CmUde5hXgXEdakY3JlWoWn5OAYytu/sJDA6pmnLUjK0UYYDu8zdec
Nec32E/JEGi3/A9OrRgyMBWQgPEyVGZGEee5sfR3beQq/JrR8umxPTEDg13TQYdVYPrtqnnZ+glN
KUos5nLKazuUIQ9HgovMcnNpO61hW25EQ9DCKG67bv+JcZLkFs0xcrqchgO2v4q+MfztiWIvEA93
pf/F2JkH81k1Si60VzXWO3K/WXqYfAlSImazZd311Xk5/jnKjAF/lBvmfyB2yU5hGcplpKg8Ntzb
SnSERTnADHYWFPiX6pIzJwtGcV0VM7bcmQtP9Zl0Pk/UfnyTK0PS9KRu5KIfmGIVm1oXH6qO4fm/
eb5cxZhF+ppXz/GrlWDmZoL3VgkreZWkuSz2gJHp+znXiCEow/Kul7QraMkdYkuRKBr6Ygx/Py2f
VYkivIW+CyFTbZFQah/slnTXP8Zr/itaVXZhWhKBT3WlW5OptFl0h2uyIa1QqsR/rS3Gd9fMfi9v
60XzUmzP03xPlPQ4h6ERJ4cw2yZ/1Exdc4yBcXgpHqntLM3rws9U8WECLrVrr4zPmq1HD4c4get2
JsMGDrLPh6AXMvTvD5DIHI4fhKrqmNw5qGdI6BGjh4pg0QPAKgOdxihZljvYPt6ihnt284BOPXnB
86NMDLtoYmmWp232MrP85ufAEsBOSL3wqlheUpOczbKJF8IzAWwOCxIjPQD9SwIlKrb71mwesfpv
PaM5VlOjUkeHfBTsCWE1BiJBGDjCij/iVZfGvuY2O2Lwjqxa5CEo/yiTuLMS/pOH/wXZpaAkYo1Q
lTAIQYc7ABpkUL7+5WVPtniEHWewjvWeB77hMHMcJqnuu8mLYXpY+abo9OagKdfShPIrbt9crcdg
5JIgS8QdfRr0KKgNtPH44HeGDPHrv5ZTdvExcArQaRvc9yUR+Pi7VAxsfqk9hz5nrPtUmxhODQW8
XYL6+MN+P+NtrwCSfOGQonvJ3xTWDD2sVCwQMBt5UotFhclomXgGSkaWc2GRpms+hW49dxLkOpKA
kuJVY5sUCF9lERl8LMqBzNbtYkLGjc4Gmwfw+rvuVCvPcYRH34pOn1nEQ6dpqg2U3GoG7ECsOslL
gZ7skO+imYAA4fHtthi/9loYvxWInDdEAgFw6Y+Yi05llSHfGyEbibJ7/HfnNFaM+YdfjcSN/A/0
a5Z167gwDNL8C0MvaF6RGuf1kD77Fj/2WLlLdMWYod2qFzorjf5RBSyVWksh6WTy25bJbXqUNQq2
6QUKw1dHadRJN0E7jmzgZQj4Ek4Z0tNcnElKSeb7AdxC3n/LbiK+Gah4I/uLR8CijgSGuGwa1Hfm
mDzpnYMruGQjGeLEDr+bZhkBGNYvXe6kAq4+VHwi/wquag4aZEkzk5H467RyPtR+Pdq0v9g+C8ck
CZVcwUKobbyDxrQbLXmQIpNEicbA79ebhtONkBF25zhUG8U4CAsXSVrJBrapnJhMGTCr93e+yMKg
nm9rOiBaBq++/2s6fxttjayKb+nSoIetukU0dRGcHxmh1nsF+4wbPnWk06jMMXRduKJry7Nl1OOS
GyQqtBZ0UavP9kP5mYmw2OJngoh9e1F9b+0YdS/dwD9bKsEVna9a4t6rpvPESaX0bR7bKwLROWlh
hrL66b2RZLR1G9nuKnCf6HodsFNplIAS2QkGF3hxJ2edB6bo1jBsNhCyF41H4J58mJQHkikuEKFZ
wbZFvW7Hh8puxDwCd+v9AFiPg6/z5Pdw1YhsvTrACDu7SzFcUlnB2uBju2YF36Eqs4Sw+iyNrrnL
3mSN61xOr7QbIyraOWwWSf+PCmXaRoCzJe5o0WHaHwAQO144POuhqEloFu8NjknQ0WyDkaLtmZSs
FMQPH9pbR5Wnr/y8dfF1Rlt7tXvHp6a21kBBeeJLWyQKFaYcHSMAFxxyQEs298GTHprYjZgpQl7o
gCDiDgqs1SIl4rvagBMgmfXO/x2lU1Kdbhl24o7YDIXbLawThKVXQCZ7V0ayjFR4UjU6DoNWgp4i
nr8bl21jo+gdkIL6LOvqmHz70xfoBbtLgfaXU0YMs9xsQ54IFJSCZBKobXRVDvuQhR7PpCJ5wh+U
Nq+ijHLa1nVAHarcto90AtxHljfBD2INKUI7IZ9+e6mL9zpXVISYzX/T8dtewWR3WMRA1P3AAIPn
ftPwHH+z/m0wQSINhExH9yasAflPeQq79yO+9PPmE2T/hkwt98kaT8E8DshRRQ6Relf2ZOZScGZL
7mkwDK1ahwG6bh+ma+8sy3vnRIz3B70Db0YNUiR+Rd8DWFFSGE6SJTEksAp1RRDP1HdPfBo9878l
iJaedn4fqXghfQPdiHBNwoQMz0Kr2FOIc32Iypgff8t5HbhIHPgmKT67tBC5XzqwSgEiF5WSpIT6
TWQz03U5E6whT08CUHU2IKvMqwsbUrqjoYlCWpJVHKdmbnJ0kQn72KMciSyXOjU068E7lN4CdBH4
HKRzmkFBbqH/yAfCX8hwvQjOgNn5SZoF3LC2HMvuXEkyl95i1u0fPcKnGNHNF9DU0WzLPwxDWlcI
iLj1j9pS8783cM61F+DJ8fQ1n1kvuol3zsno7YIZ3MaKFi3R2bun7abldHesdo923nkw2B9a03Hj
ikrDJ15Zr9esgb1kVZHhaUtwUdY5087j65tPf35HgSZ0pPAqHTjuJgiAo6ad0FzRM9FtXoYX4Joj
PnscBLLwl2sU45HZFe0K5gI+nrCyVr8RIizpl/yWLNjA52q1aYH3+UxLTmEEzn5qDfwfxYFCzn1w
fOxPn4ncG2nJ0eyRZ18HZzGZrAd6vuO3jrUiO+81vmRoqDMbNpzM5GLj6NBP8yVVCG3Aag5lqqjT
g8db1NMInP48C0efazZr9PfuN6cUCrgfEK+xfcKnSIflc6xiV6YHcemZVs7d3DQNazQ5FPaUmGIA
NfQo6R4SYVzc0qZqKfwUUVqxr39pNa2Nr43U13YvFHcO5gsq/tS0VqtkKockWKownE8eGDzKTo9k
GxIu2BcRw6dbK0aDVg+/3zxvK2h+3UL6tiKkIB5BmdBJ+hgFPoFXptmVAhdq61rM72n3GRKzo0px
mSARdLim1H7sZ6sgkIxAwsZShaKx8z0rG0H+Ms9w1r83QS+bxYFegNatZB0BGJtCmuvwdnIRBhCV
OJ4X+6TYZEU1hksCDS8rKeLUkddNv/tRL2ypJp85QI9m3iYQb8wbmcuiey2q+7bvh4pyvrtmSmrE
n5MfVDbOAsLJZ5vAV2bovmv8SCEVzrGhOcdSIii27xfJwrQH696TqswuGhTdaO3seSOiGvqT8Hnu
4sSKV9FBqyt6BE+bkLoyrYKaLN8H+8/o8EEjPuIUuiICLi1iEQBffOVgthReEkeUjX/G0/s4a7yr
8MHcSprTcnaR02trF4wee6QWUm8FaUcXEl9qtHbc9RuYpuOqg5aVQTJs9bA+Rqjxbs6qrAzgF9LM
Z3ofgOyOUhIEmd/Q5kUmiI9Gl7f5N6v9s5GV1ZGZme3P0OKJwbM0goWCnzIjz7P7K6+tsxN8Tub+
pBDSskXCLvsFVGOs5CYAUIpjcQMVtVbkWM7gtl1APIT9oB3fcWUuSkbiIRCqFEg/khTE7qadGwvv
slzu23Cu7p1caSS1SS7i+l/4BBwYnUPKdKT8spjfe6JfYV06o4re/owiJnn/mBBzoS0NSvIm7tI3
eyraAl50SD1u06JytrUvXjpJPj+g2bwV0CBqNwyxaDX9Q7dveFg2B8JERRTBfqgAzhwig4X8NJnD
73SaO06zh9SzJd72euO36UXBYHGotTXzSyW669DJZlnpunfbUnXj1at+PmCoidVUyiCBjt7UZjLK
cwLUfqj+6qgeFQZfzXL60s7z77JXIQwOZgFtJQ4a6CpabPdjciq1Eq3V/Is5Cpoxo7izmr88joog
kx6Pc7cm+BVH3cAGShWkF3K5AXCVvrXYJJ6/0hzwFkh/IG5gllE65TkFDwvuGF9uuF46afHu8ky/
IyXAHuM2kI40nOf8CWrZG5d+G39DRQh9ZChvfGW9s2xLd3d0Oe4XOo9EXZDXW2hreTi0FO6HUTpy
zJv6yyC9FVOTx8LQRhlSg9oTWWeReFAbo+brpuXOWqOlNJR2qYhYwNrpNAYUabh05NecYG0ASc87
8pIEoIPrH6vfic77dqjSNzuGWjdCIK29gkEuNHa5PKiqgyREwEHwsZFCkp2ZS2Jp4Pzvr/iIQVRy
S+CghwVhI++cYYMSly6c8uVQIWHv6wn120O3uMYGpXQPG1tOjYcVN7V38LFcrg6hFzymq9JIxUPa
2QkDRJpejJxnV9wyBYrKNrJwAcUicIlFz8aKN5gRmjf2p+/LuMdrXWtV0IkZk93zZsc5eUJld2U2
CIg168bw8HsaP5hsX37+N8iL+hM0CF/VLzvLQKTWruBNfCElOMA4SurL9t5F9JA7SwnixfU1z87W
IEprTIh/hhDzbSfo7lpSQWYxVdylcZ9osOv0fZYTz5n/elrpuDI3F8KBuVAUd3Pl4l0JXZtJpbL8
sHgI1aiJLVpTHVhmckNxgxGnGicvEthZQVRxWGRr4N4/rH7kCd6Sfhb/FMzN5EtOdxp178nw+vXb
y/RbI2gTfhwmFTr/VgifrlrEj5N5y1fRZx7aGnfiEeCZ+LvxBd5kQfR7CWxasreHaEcPV6zVUuCv
QLUF+XOBJGqNWSNMCNiJVb3xFsbWokutkMVLcZsGXUFqVLXBZCdz2JIsC4Nfu54O+xqb3dVbnK4b
B5Iyre90aRe2ZKtPTFGmEg6pk7qicHTaikatXPgUTAEPH3T35mdprGLXmR4z0rca7T8az0Ypy1fb
FKmHd5/BDl56jT8hWFk/IH1Rf3cPuwPY3xkWaLhrN8Q/K5ZKooBUXbP81FU0oEu4CrnzxhVp+4Op
kO61/voAjIiD11x2cXAli9tVSPb20gJmKTUN43rVkDmQx5FWcBwHkPwsbU519aq8nj+iOlDC0ArE
yB3A+JzeOmIA7XDCkOS5xITQjOPbHaqQZZo5yVA3NPnxzwNKKLHTJPVTSMpmHzelP6kkv7wIDWad
16j0R5Kba6N0DN3UPtnlp1YJ65MqkIJEagIAF0CXuQclDd3UarQb5jvl7kM9zfZgWNFrV6E1SkrB
dQxAeOQWt5ql0+s/6jzHwz4oBno3cN4WjO39pGHne5nLfNThj1R73z8FcjZGfoXOUXimMvBy4nDS
uhtmB10H0aU/sgNgqg9jNS3DAvcrrm8g/jDKAHpwNl3M2JwlXb3PdAXRmYbtUmDNWjJDrnNtLDBn
1pVf6DfZaK1a2nrwFppfjBUifOTXQKEloEittyq6m9iZQGG7Gve7ACJOYu/lDnoow7tXMofdIU7W
YKfLB1NKwSYEs4eR8tI8Cz+Mxah+ibcyK32xmEaQrXUketvItfxGIPKmJ1eoQBDdINzv6aSf4e8E
DZoA8ihnkWMLCt+Rs1lsxzC8QYZEjI2CSvNNm3wALDEEYdDNP1DoyTw6B+DTZQy8svZ4YoiPa75Z
+UaRbHxIIxylBFKFKhdGM29C0XVga+tVVmr7rXBClLTxP2GV1AL++gmr7+bH50hi9JrEricySLL5
0e4xpUu1IIy8uIGZJIqHnwXj2KTFNJczWHfmuzxzsvzJktDcAMuulPqFTXe9vA6iMb8n/zEQQ47Q
yTdaCstZ7OqxqOQVELa5QWZQYs0BENh6v/WvgBJAZuLsZAg8GEfjU+FPFiuNR1hgE7SvTKUeXrGO
5mac3PnvKUtRQNEgXXy0PXy7jfe1TcsTI/Kfeg9D2ijzXU2nmeTT38g9Gn6vUsSWfmeJpT1EAo9C
Jttloxlk8GfMlqboC6uEkbrGhdXAMMfj4BTT0HL2O75M8mHBXwft9XWPRdzAIvhuKksdH2hw4LjA
/3nWtdAauGjyR+eaX/HShV+5VlWheaopwVji81EdwPfIsiSsPrDx6N+x2H0H1Cm4Cof+gvqfWlwe
tjnQbcKarug079lPtoEyRAA9gcZCRuJ9IHM15Eje1DW3oJkFQMCBdEZPeNXxR24obx6c2WXEDB/R
9DUORwTklOcEBJwfDXVsxSo8BY5YVqz/cIrvwbPe1D03e/xkG+t0GxvIzyqwnoZKGryzpRHK5/k9
9lfrHddRhmx4E8VBVaGcOwTF+IkigdTX9yLd5dH0p8axrRG/rHAup0OhB99lmjzoSrp5hNHFbaMN
DU7Ge0mwB6J8CtQPgjl9Z4jLuLbhEXNnndniZBIVBq4atESDSOg9KpXnXyc467f3FAb7sZTXc7lv
flsqBolyQlMn8w6jBG8Mq90evrTXqqAk+E/qNhrhtvJtKu0jqDOqE4Wvue33+m4V9nI604uVS6Yi
lYCXb1rbkEuW0y9B9D/i+HvPJF9NM3DIFYWz+t5UiqgIBnxIxP41pGv4R3XeSljetmhIGPzSf6oa
Awgv7dHH3OImUcqvP2TB15IK5mzAigYSgFrI4VmAo0hh0LX0N87yj/HtpKJhlLxKznFfLAKF8vLJ
5Kwal31BBXo134DsLGt9L0r6ya0UeaPggYT6uCh7pq/yF7wZNNkjTn5u+kWtUSeAVmAUTWOLmY9a
J7BFL8pqKItThoB7B2dtKuFYF1mLkGeOOBdTTQ9O2ABEb0jKdUg4dd9K0vHihlE0/b13C45eL7VV
AtgM4SOWAx4bMkVM9Nb2vpwpf2MhquXUENZLcgfqYWf3j4r0EGl7mf1sLPeYTz9uhT+0zE1700zz
mHmKb0WfMg4oeK/wXXVw5ImTRXrHrH3vj9KGuyBT12Om+uVTz12EOUi1uE3NgNJa4dyuV/Deqj5T
vEZn7LyLcXsLa08Ld6NwUXfk2/rcswY/kiM2HPkkW5Dpni/AOX4RbTAre2dM4F+RrrTcD7+Z0kIq
G9In2KayZRRGWhkVZBVN2Ll3/JoPgk2BaD4RR3gZkP1YUqtJCtMUN0xq+bTTv4U5ufcTu/DBrCJj
AT18zqyHzraXusVwJhBRxKUO5jwtaZTokZZAgkCYVZYao0k8hKDozJgvr6VlE146zwL0GeRo5+Lw
23aV0TpxPplnTGEi8gof+E+dAg3Fn9Ov1mLgHyWPhJNJB7WYcYVL7Zaw6ONur+l10iHInl+FHJuC
WR+256EP+7SbexZIOUbH4UZGhwiklJPFWhYfuxX03tB3Un7wNp/mGeP5xPsIfrfR3GjOGtdkaG4Q
UlbTHb4koGYKx8FOa+gUYVGrN5N41w/6V4zDx2Nk0NZHZAhXMw7WYPkRP0K+oQbjVB7tyM0TBEDo
aR4m6S/L93sOd7Txj5J0kszuvNXjQga1G5xbX46MgjIT2e8jndkgaxncPi03P/EAtoTMdrNEUdRo
J26aKqsj586SagppgWnzXFN0n+RF4q0xxNItoCAL7DCMvQXfzFEdqZuq4YLHiepVB7E2/nRreSDa
qXTRurj1HBHN3vlzmYdE1qRoDZGcizftkwA7ZtnaHh5F/FzTiLQ6RKUJehlq34CuoPHO9o9MxVKQ
BEf2Cg1m1Iw/+GWnjeLNfEwp8ndBkNynG07tGE/3tS/oeXZFOwz+kXQlQSdM8gV3EpD8VRf0hQUK
4Brc/AuwXPbqqq+kJo2O/DPm7fNhctg52AXLtZKde+JgxFAebEQhihM03Y23HlYUu7OY+knvJGB0
XbtmG3V4uwfLgbGQKIDCK1VlieDFHJFejCUKToy3/HyAONJHBqK4peHbMCjmDWglswFVLiAdWAdO
nDdYG32SRedegoxA41VDEh9pE27Gxqt7KmNIizvi3u9c7nS+ArPfmoIHar7HJbk5QBU+NBTe2WoZ
rMzumkCjasPvUDo5+xDw68CzbK29xGTBQ4o4lrzVufu8a8Yw6j3Dlo1ZBrODzF/LhKClAGsFaO7N
VVDlXIMvDZNt1O4DoMdkmTCoWABIMZ25dzDkwdUs/Rqtv95n4KJCj5XZbpmM9cjuArGnONS6gRYZ
QYHDUWT/J4jISoLdt78ldfyzc6InZpHEcbDvPNWh7yYVxQgHGUuKxWtWRGHLCwjwDT3ofBCSKJYR
9kqr218ufjbrYk1pmVuhrvBRBwMPG32KFqJpI1IRI6NpnWQMYW+QnKm80jumQ3dKN7wQccbRZKra
d8cKMBg8227GYLSv+LMg3HScsqB+FZjh6ON6bO6EzXF7XKadKd2vkMcloale6AGkmxutKSrqrcHy
efHp2xw1CRNG6hU3L8UtKH3mGhtYyuhVhK0o2OHEfGbvv3rD0N1abA1pQvVYOGwS2GKAqQMatLNq
OrklqyWvKoyDxg5pkdmBCqN8MkylKM9rsCw2tHp1Ss6FMnAkqdBg5DGgInz4R//GZeicFiriUqHw
cCSQNDGBjFA66NcaZL3hBsSkkI5u8uvRoZauA+IgNA4FL1oo2dzkP3mN/YrJiwvrMR6Y7lQuL79J
3vfcn3zONf2tUEtmi9KYuqLy0dWoufOcDAnF6G04DtQTyBF/heVNEISLCbsQynGWQupO+kq7f404
Cb0wCogsuM/uaeS+odH4+NDIltCGsZy21mYZA8XLyvK+7OATTKEEICWRAHaWryoa6ujYcN82+GKV
FImr9WmFI9ykZKgXvF1Q550fwkGR0BRYyoYOiKPVKOP0jvlw86cYcQplIGpeYy4ogc7eUEdNL59K
aWvh/awmAF6OJ/E6ifvph4q9b1Grf4Ke+LoeH87jsdSeIyxllw+PM0BnWKyMMpBpKCtVq2P7Ppjb
x5tCz22Qf5Q3WrMs0rZNM9p+0yyZgeQniyH1kbLjMoSQ8sczBL5aItt4mSwnxpV6t+2LyqTYzTIE
o9bZrChunTHGi6S80nfO/mSHKF2XeNJc/P/LLHYoS0i/UzZUvhVKhbXHr7PUkfxNps0ApPPGuqJV
sg+CGg8br79gqPrF5UZC4/ciBnkuGfzzIFiolaQBm7vT/YAUr9Ho1HTH1iAfY7WPHM/krN2t2W9q
6QFq7vRoDuc+9wIfyYZbfY8duo60B9pXuT9UBtJtyIQeGdf2Q6iZLwI31BeCp8B9PHENXQQki2v5
DmW+kMTExzBOB9ALpUVeekHjgUK+wD3sOQKhT3aqIdSTfSY34u2zU8RU2XG5W0bn+UB/lBehwD2v
HAe3P7yz6luz2+2aefLXYWUHvt/tEItKV1O3TpEsjsK4c/ados2CIGCuderUAlOkLex1CZMk/X0S
19iBRUqFYNXtAjKohmxIsAzsS/RytOtgIfsYndbj+9FgfzP5mdJh+xLsw8ieF5MI8hguzxKhAKX+
9frhITz2qCwjrP4/VZNB1tttv0q1X4jG5l9+RbK7oVGLDSC5DJ4CkfTr2aYxCgDJq7TI4uoA9jbw
fJPzqR6NpwVUkjPuF9HDbpBL6Vv5uuHrlwCopPNXx13KTNqFg/52rvWqlF0Ow3Cmb7UTJevjN12r
BPX78vTUOlQb4n3ed/MMCUbTjvgwjQRSCfrB1+mvdm7Fp1JI1/HoKQP1qdZYCUrB/6pWpHPQmQrY
A4Gh/qgB5S2/GKk4b2xHao5wb4P7Sv6FFPj5+wGqUAiJv5JDcr7V6lIUyQC8HQDR0pk2+qIpzaNd
I0yj0RinRzKABynhHuQuujVI0OuMnaoJsQymDpvcWPXv14Mteh7YrPekfYjsc76L93LCge4cbXyA
BBD6o9AMdajtKOyr2B5QKO3ZteudYadXB9A6/R5bI5R+yTbQLy+Ohyxe+1SMNu1+BGfVdb7mDRrI
bxU2fnLMBb9aG4vEumabgWoVboRZ1BPofyC7Jen4piuLJO6EftHU3RwFuSZoRHyAXkNd8URfR5L4
ADid3YjUcshbrWxqtWs5zcqjq/Xbsm0HlGvEUIRPjKSgOHNjgOai1jIKfpmxtsFf43k6ndgWR65v
acIY8vjhKFS6o0J7z0OwLVAik/dDRvSUGu6YwHCLQoqgWZxNFmn0Yg2T3gRkPxCYSoE0xMfH8HSK
0rR3bjknUlTBoCaOawJ52g3CkZl0liEa9Fg1eUt5+wx7MVloHF4f9chUJwfulGopVPCvuv38KYVf
f9mdlblLxVs60R2pHxkvK1aqVnh3LGIN3KRBYtY+QQQ+1ulChOZ57WxL8Its3rTDVsfNLpK5bKYg
3JjacpwjINdqYAkvYWcOZGjOCk2KgxqstWX5NrJTkmudP+tASLHHNPioO5BAMr9lB1jw5UCg2pME
eVj7b8BoVUDuIH5lrq2I5r3m/TmVvQzkx1FPFsRMfvXFwgxGnM8/ibx5oP782LM020pFhdgagrg0
O0gmOFo5oBBPPGPC7s2sfTjxHERylAVApB3rm8I2hVlQHa1t7zxFxQeEfvXAkVse8mHvSVAuaA5+
IBQ7vDr3I4pQVwnAO4o371wg0IfYIjAXxQFf/o7pNbnVBDwgohZeUgiTAO6063/l0mrXynRAIirI
qGX4G4G9VfutUJ5DzAnscJkqzHJSk9hzqbOWJOzoXwDaw/0ggiJHDLFTe75g8Ne9VGGweTC+vXkn
DxF3PzyW3g/xYW380piQJJLSc0Vsz/pWZx9PyhDJP+kNEAbcbCJGQsEneg57ZfxnUiPoH7BeVvBw
E55vat2SxJk/bKnqQeC4MMKOsgqW63H0PbpB8WEnFJR6ttUoBEaXdUxX1eiQkw97NfQ9jpbVHX/d
4tZFHA7M5elPvN/faXuZJ6aO/fQy0lvCAPzw3zwSLTq7u9Q/P4VIcwOElmUpG+FLy3rbplYIYESs
vvVrZxL7PwbNAtU8nzN5Wn3gbz7rgrCr8cQrUAxgP24/0OEFVnuhnwGcjjYszqD/YRgCRCs3iPHu
RsYYL68v6baf1DAh36fMJ3KrhYr/QZj0H1mqh1riq96+E/S5DMTcJrVeN7PbP2v7oFCnjRyrMnQL
5lxMv0+IrvBZY4fAB/2+42lKkcpK8NiW2bLgEjSHTaySHpCRYlQJkqPAJ7fMYoV1Fb962Ke0kY4r
2ovaThvBe0vIggQPrqSiRDjPB90hmvePRWB3ci+rHl4kzF7J3KarGZ//52equkmcxvD2AdThfckg
6BPV+QAa+F62Nvdzz3gazlmGqBEPWT1E6wL/YE0kQZ44r/erqaAha1SIuc3sMUKyEox0Yoh46Fs4
IHtdyRAINghE1+aEj5Wp59+E4Ys8zvWYkH5gRO9xYgvIz/Qf3hNATHw8Qui6T77R3muliUrhmzI0
vZuWNYa/H9nEvQG0ueH0Tz731Y3lhCJEuKoOCQunM2gBxEgwR7zTBc1kk5rcVU/BaIW836FiU8lF
DgfdxjvKbPQGSxxPe/BsgBjs/W0zmLNWmyFPWUzpFMULr7NURTiGjNKJjGh+EsOYwKmSqjfLPjCn
4jw4xz781/P/djgfOjSrNYXkawKHI/kXy11A2Yp8aLmzY6pS7dVTGFIBiDLpTTUhfX3fqKO8j7/h
SJiV/4AYv4zh+QtO6aDwv6g44+Ov9CGVuC2gwV1lKtkm8+WjcvXUw7wdxV6/qhxDN5VGSveUWdnA
b0K1v3mgQvpGFLZsOr33wElrvFZ4G7DMdf1ZrWQXFpw3ruQLPRnFrefFUqwR1WX1afp7VTxwYf7/
8aPf5ej6H0NQoUL9QJ83IBkbOX6CCUvszRFtQKvKEjHI8vgTC7lfrQxY+LBpWx06V4fduKMlWWl2
2ngJdUhKEeOHPzepDjwDgTG7WlagpVA6IrzYhqNDgLPAfJU7Ve1akXO6+8l7sFY6/wzonn+7kyUf
+DpBxzM3tdxd02OmkS+CEMbbQqOLXMb9hewib9gBvj4zy0zF03uRgoOW5ORdeLZXLF4fH4TpRqot
HA1VX2HGkDLnqZi8SIqS0woEfoKaomtRsuD4v4rO1/gH1DJoaZNWL/l0QCsRKcS4Zf0r409Qpvbm
3kxNUFCAu/7ljo5CG41/oBu5EYtvh0PTju/f8CVqKXRkFlXtKr5mrVJUhuyV0T2hztHFw/ttBimT
rT+tzKKWQtoXWJlYtFkeoxAxgcJQlsEvF2wxz3PLNp+ohtnm997OCYFh9Ak9rbrRsS5m32yfDEq5
UcOaiAYuMa1zuZJaecXUVdWsRpy4dVxW/da9LkvI7XB4xEbgo4duYDeyUmD241NRsyECSFBmMwDI
Z8ENICCZEzA4Vt/qRXbeju1ilDq/5W/WbTs+mb9VjqmAPf5f4c64L+UYhwX+g3cQv+04VzTEkm5g
V/zbbTg1EalODyZvBOjoPtRhVneFbvolaBHOxMGOspTO2sd34tQrB8yO5zq9NBjzDOiV1hKLJpvF
FST8A8bDY3rPKVx01m/1WIE3Bmza9fRuhlWPzAys8eNRA0ODncCBox5X92egveALHNHReJo6/6XN
JH8I2bNPRaHM+RUIRZ46Du4axT3rXL9+9qjxeQIxcD+44Kd/Gb2TwqMSaUOZKYmsM6xDXjQ+BaHw
RcYp+3vjcO03bi0+NBUpJKl3quiY3+CKcWt2NHML9/314CqDPc2X1c/BZzGbWHdabPrdkTElgKS8
fnvBa6wrWkKzfowphhE5JEOHeXbw0mNlLI+6nWMvcP6dkKX0c4JJJ9XqJaF9yDuRuV4NVgm7gWzT
oqEpEXqxgKcqpnyByRXnUo3cgtrhd54C4Bo5Bemv+vuVJWrZTLMvsWqgnmIHGL1kZ02/8WQX04+a
P3rhhvww+vciitJE1EzKGovm+RRxskm3QjBxwo5oj+BYMl2TAOSbQ0zgpeJT5WC6ItudtmgZIOwT
gJEr8/cIHtZg6D37RrnQxqjROQK67MyWEaRtwAU4sq7xrtLmLNtVrvbeTimIyaSOhVdUs0+2tD9t
wfsLYiFvMwq5+udld6+k84BBhC+Jn4CytskoJoSHg/VW4T8/y5NdyolobsdT6aIgdvMD4CwUIgfN
z4Bg/zPfpBB5d8GtlRGUzB9IIvv8ZrVCRmXDzw+ZLJ0m2SgDrlHOdQEYyCqngz8nXcUnkn++Bu13
dIvTqQA1qJUqe+SUS6+6kptfSzzX6Y0S8d59CSF58Shk+UXNOlwmxG7GN5UI4DY+lVXkMfIQnnyb
fYNcRlYiumRmMUT8adOwRj8BtHw5hOpOAaPNkbZ0k2T1T06jbPjx3r/jRheMNulE5DRXF+jqM1jA
QmSfte6zU+H73RptV81oFQ0wEDS5JGQaw/yH3dcj0MpfcMgzKFW1wkcB3HEGPmQyTZv/qguuzmID
sS9MO2Pk4aJSw3o/X4noymRW+vVvgNbFLlbkXSG3fiwyckcKEd4mB1Jc8tt+7ctCdfu18oNfeBCr
wb48vGor2Kqi/R0pTyl9pjis7Fj9VGyZVFCilrIC1/Xl1XCS3Qq+8ozhH/8Xm0jp+NW0wOMqE5Aa
64bEGEzJQUJDZRuVibWAOa80XGMN5OuFwM72El9GqoMHT4XGMXUQ3wrQSE2TB1l3s2ISUs+IF9i3
aTx2Dyf0iYa7bz5/BB59/u3SbtiAcbl00NEB0KI/utJW1jgl5WA04NPkTYuwkCRS6Oj3+ZKakwru
Wi2/+89y6kHRC9VymACrQVgWT2Jtshy8SWzY8SemMAJUWSgNoWuQEq1hlBS7c/WVLfPnmQLzMo9/
Pjff/aXCloBJPy/UEH5Cr6l8NR5fCKVRVaGxGekKDhBIiok33BaG1OMrJgPDb/GAIYm6xTQZwTCa
siwpVagXQTH/+Jrz1vYsKkHepA73HNw8E3ap6bM+vfmiVREV9j5g7R6PSsSjYq6U5RIy5xLqBQMD
77LsSvWRDatiVcF3csym0RaQ+YLSaQ/++R66mzXaCVhe7GeWzbD7j53Jx7e5uZywZKVcDKlsJQV1
GBSZinWEMMe+B49WGFZxZ/sYNIaEDDOF9Cx2ElSitey2W2Ygfh50YoSUla2Dj4jflQwI9FgTYAqJ
xXJuSGoY7RBTwEE/+3XozLP6jFde0BdDg2N93v3QfzikJuuR96RBQbV/1pPMREknN15uTYph3wRI
Oe0vurDrd9wzBCqlLOVyymCDMHXDgK4IKq5oovFYf+/nkxbSuoszjxapNY8wlNuSpp9sQyfYhtXe
VCcXVlL558q8duvdQg8/ae49M+QN32o/UOMqZaa5AijCz7DDFHsrWzG9XF/1krTWt/saCbV9zXsM
b57lOCK4D/zIXeRFcUUIPpR05r+h2PIhHjgm9tIxVF/k0y5XW//BvSjWR5t5siGOQVFCKm81ORf6
plSAPSaNcS+4c+TkJV9Wmo+/MnL3hUiwbnHmmEkGQGR3EkH5THFG499NtOWf8m0/EXal7qVPlhSS
prtzISO2R3eWVutqTbwE6uf/t1aBvY+A07gSyowE9LVlYIYjzn8sbpfCwdGSOtVRBdl18Rf/apla
UVXtcnzMeN4pMPGTy4N0q/m26A0mSv22MDGnlz4OkMyeuGqumhlZEn0s9Cqwbq028LS9lxllCoBS
1fRDEn0jkq+2AinQ5KAY+XQSyVCG2doH847vmMXgHrFm4ELaJrw4hmP87vy0TFkXMTHy6+0dWsyH
PqQpZSZVfxglpfXnVy7HtWCprjXPZquuXrDMxkxN2PEoKYhDnETIQxAxHjIOnZxbFUkYAMfU+c5E
t3opkXy7iUy0czaQWwTiNq9fTXtOJjifhwqnsX0ASbVk+x2KfQ077iSF1+z8tgUQdl5u6bI91U83
IvXmXR+Rw+6lKMPJ4zdRPHv2q+J8vIzjVVXaJTvAwyYE5NNeT6P2YMqRWHBPJ7agJxtEX1VGaa50
uvTJm/9UcREvapxkBjIBBYGxY5+GAHl2uGssPfaOOT/TUQ1sM1tVMUo1FdtUYXp2EVeOaxeg8tgA
jtnX8ZW6yNGE34LLSJl3NUBhFUIn8EXlJE/kX9dlVtGfjDnLmvPVBahhxHnr/nJT7P1ujtiLGoyZ
ipxPG1UpPXs98Uc2HZqnNs/u9eypbKvLeAPuv8X3b7G9xnsLSO6V0MYwlv/NbDZsnkenuCgpjPXK
cZnjGrDq0HA31jB5eQlG8354zODueVj/3ed3xdqit5q8vlwGISoY4Yw951a5SyGo+6GX3agZaCGi
ziIcqCCuGQ9Ab1tuP/+G6oXsD0Slzk6acxlApRP/uLCyqptc1fXTNYveXcG5DkGpQC3yCkJKfMCB
HDcrHmUuxFOk3gPX3rZZ0/mCx7Ujw/iVvvbuXDJIXovEarcnMnapcAOyiZIXyjepApi/a9U1Zt9K
GwsQVk/BS4NNeo3n9tlPpvbB6uMo8/r7ZvFI2A/S01aDif8lTxLC1KUTcPLa1iulQbh/145i359c
UXetyQOnbtS/Huqs1aBTYnsp9vlYbxcZVzAmRamr7Krei5JNubMq9jAMqILFjwQvKAvXnKobtwg9
rGJzVqx1t7DdfAkDG5GRPPh+R1joIok6t4IKU/VfZyMw4VpeY/NnjYYSNZWxMludRUQ2IxObOL4K
9uD+OcF56+y/kxA65ZLqEYPHpLiXn/Z1yENuY3Zf1OZKqswC6T5qWXkR64eqUWEO7BxXOH1WTLQa
dGbWvrAJa+c88PQEwmzCY4jH+urTD5FPxc0FByM2JallIEoIFRi+VulmhJhCndGQOso1ACKbz3a/
9c2wwsxNv1TL+1MHc4pk7qGqJVPVBchx8i9l4MHiudP4NKerEagNnzQHR70Ms5pu3B27HFaC141d
Nq3ZR2ORB1Kb4rJOO3Lfv3oNa9vzK6U/YDTe4HHLZ+oXVBuHJQ+9SFQEXkGPwz3ugdF24vho1Aix
32/7r+s/cz0zltuXcq9mB4qGlosF9ZfHpO2jPEBwt/ZYQg4O94M7LVmbxNVn+ZJNO7bj04CPNtoI
DkuexeCpHHdQCpgk+julxCzDslQtFsNajir9EPltxhkFY6/MWv4qpq5JjUbDn/9mhkfgLiKkEf0P
23nxMPDwggUyy1YvWkRTS2qHBeAjW7JVoDqIy4X/vSWg94wgVzsgDyVBw5sTfC5R98A6AhjHpCf0
8QlUaEEngsPL86cc8sPBjGVjjAOyRSLf6cNdb/FU198MV0ij41VDcG17wRN1hNAIAnV5hcoDI6b2
zrL3YUNv2iNyPfSaht4U+8ujV8BhjTiVHMKG+/UuDaayGAc+OJhRkiCvHpSysERZkPa4Kn181bv3
Tr94vXndaQjUUinsZtggnCg2dwy7bJCL+OPNrbpjarBREDNR6xT9zmF9Sxg1U+JEk9hEtRM2cxWi
5OLtBmjXL7AQqNGzl7Ttz6yXe6lg5DaF5zNIJAKPlZpu0v0j2YazeMLVGSLMUUfJqo8VgrhPOw1F
jl2/32ssErt/bx7q+j79O68j8UWcxUNvO4UfFhhehnY7K/fjY2ircpus9TBgy3KBqjMTC+RjbcHp
uGZRC4fyKcyHPSEH5F7eoq4iLUmdyTT+fplsIcquMW8B6ULuditgQM0CSH2HZYPb+BV4Td8VWaaI
IZ0evEjxpZGwFsCrZQknXzNUo2G6v1OjqeX2hLc/MII5eHJkgKWRKrYeytyQo9IfdH5B6tQL9Cap
arNFCDknXvFsCRuQnV1XuLyvSIzP3Pw/juloa/OpBjeZx4K4rNW2DNSiK5ybbTtQ7NKKDYVDmM/s
Ck9qmOcB8Qu/87G6cTGUfAunthVh16dGvMFK6F0XhjQ9Y0VupxpaSdhehLIHyichu56DEaelJt1M
4Gnjin9+WDIsFGa/G0rm/ERyCdXxxo0zXrx6Jn9XOG8Tb+Lh0HRshYf9n3kMOjMRbKUh8oFZBL/q
V3BhswLQO3gMqfH4j5K/zlMvdHk4tqC+aUSse+fW7ia03nlAvMl5LgvwmJhmYzZ9c+BoanAZeKAm
4Fv+IG6FnwCi8GvPintfM+Jj3ZAxuzgTwq5PuUrmzU/9xs9p2pDgRYcq1pcIDeqk5m9kQhMfhK5O
Z76FPsfn4khZrvmiwznzuBMLYQMKsWKNhbis1LNwoG076vYn5HZ2xxrzVPBxPLnFzgWPIXxRhDtq
976QPXNMCa33Jb1amUPdAA0NAuyPvBa6mqRCTWq4q4dbMYdcBU3Q2sqgnxE3EH5VUqF79LmMaGFe
4W5+StYcyd590r7TXDNrObnHDYItXR39qlHvg4Mbn1GJWhuH0o/s5tO9cWTSWB9mvXF76yoMbwjJ
TPhBGIvA32s4TuRlaITlPga9zVfmCWrJPxbqwOIm8QPJyCzdcmIEfSR2uWVdTlHuiBjwZfutmqqt
XjFu3GV6fGf0WWAxL/LvkhdboZWkgyb76K13XQe7WsOsCSy5/OVQfP5sczXkSF+byHjt2EM+fBLe
bquxDD/VSBa1nwbdttBj17LCtBfGIqLxQ09g2MG/LnSmilW/lAVP5lt7qi4s/ShBfqvJ4u6PvIsU
jQ10RJApvty647eTBvoIfMS5pTHtVbBcY7uAGCeEktxQ487g//C012x5dtVdyOYr35k+YCMGAD8X
5NGVsS6Ivfxg/6AkjJ89rU3VXyUIfo6M2DSS8aarrSckNMQbRRp3piSbZjrb9cuZb5kzsLVCAmYS
zdACCvIxlKnyHV7kS/9/pPLsL6JN0Uv1yUjYYd/9WW8YeVJdCNkIAudhqiOoSm7XpZQLSKuSjFun
Bd0wNHu6mJMF+AbcTQad66GKS8sLPWGB++NTNiHGZkK4GwxR7xiIsISPO++5WjEzGmtW9nwfHse8
Hgb/9DqwVHycTVYNfLPreEV2lVYOO11hbYwCB50+Tg/fqoZd9SnI4mdlDtzmcGlZHl9mem788N5n
B8sep5OEXRBfJ0d3h2fg/qZU0hirmzKCc52zmhHOvwR3cC6/UHWyzAvGd2i0gb802fRwAIFp2lg3
Y6fQ1lqJ5ZwafpHNLYkA371ccUamRaTX3lLpx1Dd2STbKPu7B5Rgg1ViQT/TyjVWkZszD3dTDTyi
IEmdX4plAhkU0cG2+C/kF81bfevqy2mr+M32oOJ6h0QXBn6i/ZzvuZD98jE1J76WLRcy2z2ijZ8I
Q+Kx8VvYH16AqOtr+uGT6Bh/4X0yw9BOE6RH3FzfDfPJBUAPPXi/EP3hofTI5QxoIsWIhUPMCCjh
Sn/JrOW6dNHFyd3Uuw9eCdzYyHAsqP+gFL/MB6Uzr0Xc8HxqrTWvsw+/lKVeIF8tlvd6IxO1YRbY
KW1S0n+TW/qmH7oPCiAUZLA4819/DeBk2qUZmn90QcSPcWbYk4k92C3Tr00feYa8nnSgn8E40bOM
yZQTsQArx14qmGmXdvkq7IxPwgXGKM4AVm1L2rvXwM7KG9ohqCzyDS/Asv45iCHfJ4g3/09jihiM
RjZ+rU8fQwkUA0yAfIBSJypkFNiU0F9JtRg5BpUDPm5bQKHMIuXLCKLNwRjPNqgUXsfOsPr7zogL
3r5IsLGx9tNIySTeQvbIn1VTR4NmZpcpa8uGTxV5tQN9i19GLSs9wPaUi/H4Y+//klG+DmqvAOBz
bEZTGLgJmUXj7Z7mMjCeyS3vczW3EK0UD1GvBOQEOf/t6EdVgiqqQp0vtaM6ZsKODoQvv67ueNpw
1tFDgIlPHjY9pyJpS8PlGc+dRuLBjeYwsi6lfdVUXRgqg2YuQf6b5P/G74IMsLX36f3oWcA6Q5jD
X3LfIjs4pJSQHW0BNMyXZRkhewUJRHXYIzyuuSotLjimndPSehs+f09ntki07tBrX9TFrgFJCBNN
H8p4Hkyw624wHeY8Xt6Cyush/beKwssQoS746M9XJ/xFYqUaXKjj6x+krWAk6X5TVxC2qXIzNr6l
nDiTyPMe8a8oK3IpS4CpvJVyS8U2d0HKsicWc6gUav3krSdH3jX7zYQ65aEIzFRIzfqNsjaZUdPO
cqQNppAFwAcrI50cqPY9b3qLfV09vm9LVaxw88/YcVb1OjpxyRskAIIcvur6aCAJi4dFs+7vlgzD
3EiyeVoQbyjaSvpLOJmFexhP3u1rBo68onJHjcEqwYeloW7kFzdU2PnAgZAcvMHor/UoIb6+yH+7
EkBN6S4n2MVW3gM4XyYYqWGnu6SljuM9GePt6sV7voH1u1W4YjmpRLvIv5j2IkM1TnOrm7a2KbJy
MLinPAB53Oq134+gtLgGEJEpFwtHi5mVIV/49drY4sgtnItxbfuSe5R7/FYu9YTCCYdRDisKNuDN
1f514tZyQmqu7CDpSyJvWrQRB3gaK6u+HsOYXdmwfqRdjW/9LId1OaWzZrCxqOT7YJxSVzRewGI2
ZftEsab2hTnCklC5yRqlWmOKy1aSWq5WW09thsLtq8J7ucGTSI8XziNR3YqDAmwNPdfd6PAWjlps
NYHWCsh0sijV3OgxnXkjn88KQL/n4p6BufZ8yKgcPVhFO+AQbxNrQe85TActxmZcYncIIboG87Yn
gqV94K7cwbEjplq32zQLZpI4/+RMMm5YEpN0q7evlm4KciZa+LcCY87jOpkBb5+Kg2CGpGtOIYo4
L1lmySBJ+hmkpCIm5rRiAAGLwTb2IbFekOL0ZfRMVkYF5wt9PTKZgDhtmt/fzVp7Q94zjzXNUrEh
jSeBkHQ0nFB4SqDSTU3RmYz2JE8lcMUXXVm4TnCvBUJs7P7Qkulc187xcsZ2Ee2f8FOdXvGuAgtb
ZVyy6h11UYUl5AZ9n1bTsDvY8jo6Ma5IZg1mC3iYn0i9JVySyXY4sqXLQWFwbSDOiVPQF6ZkVOjh
ZTsI6B7C03egxpwVu/ZjBm+Gs1l9OpZAsCZEUIMBsqE/qEnOLdCZ2h6ZDuJpgmREgOxwG7q8M63O
otkk/lyvT+vKCoQpWbWorXU/9DZ/Pem2+bMEYlovhuUMmGnS3oaJx+WFGo/hFnGPJrZU6KVZE773
+3ubhWJRAVYvLkjrRaDTMaiJ2PI/dEGTzcj6di1sWPq98mZKn7ckW5ZShsUX096BF35oNH+twYlw
cBGlJ9v/543wWpYypwx49fFhE4/tGRUpM+3la5WsnNW+XmfyLgMTrnQtu9lwcrImUNfGDIHVJdQl
BXWb/aBGL4hLyBN/wo01+mlVeLsqtJzPemoVrTxj5q9jjS2SWUgPfqiG/ZeG4rehzWdy/nh+uvkP
m4dy/leLSg6zNrjAMy1ecSfBmtGDBvAjJYuaBvpmSx8B6UsSUPJCDQHer9VZm3J6dE+InL+DhfHH
s6r9c6KfvVYjBCFeMom2avP+A6GK0tfNOseNOc+wDr/VuJC6KZbdHeGblOOJummXly/CGCazcUVU
gW22ks5f29NG581yOSix7pY7b8uLGOlP2qZg+lCwd4qhtr+frF7C0any5+bHep91+ycI+g24WsBl
QTkDPXTfsK8mgRpfQVuMwWXg7VwI63QE8ANx1G6GCTBYYeSzuIsTgT5RTuUMMWpy/hlLnO04tfOg
aSyiZkYNyKFe9IVkzuZp32zay9Oy3TytNGRidSmOdBAS5AFHGlkkukZRWkCIXDBwJ4A1TpabOdwG
waqmHzjnx/IBDjudo8P7yRVcidqr/4mzWbJCwj5XR0QgIGpfyXumhnYxbMKumGgSWXe21u0XizLJ
HtrIkdJQ+3PTv12j0ZuSbEc8/rw2q++F3C6rAB4/SKr1XF+YglYYdJlxsPhPgIj8bQIKmI11hCn/
rjLcKWWJgtgt6sxhZv6HMWUtEL7W2r9eqRGop1zkvxkcCXVryBvdT0aU0XHDSsRok8zTzWQoHCPH
DpGI0JmAG1Vl7thPADCiQh/RuAaxLmxUXXE02ssjFxWC/Audc4KQv9QP1BTLQvMe4lbJKhUs90Cv
JET+VjCtpMKxf4ryJJoBgtC3WxzQbM6xIMzqFDkx9mIfPgmGL2bDbu19cQbioVVyotLyAePO+dxb
yP2C81k6TralisZDZFYVAovvtN4JlA/vbQSI11lFGBmC8q+Ojv0wXL7uTb4C4XFQuvdjXl80y9zO
Zs3FV+n9to6uwdYPUM2b3kuzHsBwKGWj4tU1XGnYUYkmVyaKiNSujuZ3luI5iYDCL3zv8p8Qjy3m
jUHxgxTw4m65gZz4Sa0wDkJY+4muzHyclS7ywW3GXXpN4+MmI5uKXdlLhXXtqQpqjHk8GGXNQ4bo
VwPiFfMIazcwaIVYHC5KcTvgaIsmeSGT69FW2a39C6V5a1nDU4NSFtST06+L7hXfV996TvEtmlwq
UKdVu1nb+NV8ZX6iginX33guI7Zs+GN5w6+ynAyZj5ejF4uPhg9aXBgYBmr/WF259w+uGNl4uojt
psYE+awvI3PzchWv9Au3JGqYAwQjw+rtL9taRFT9+Wy24vexUKGIrnNvoOHxTe28bDpAJPqPCYG/
XHKu51XvyufOy9A8wUtuNMnIuR2GoIicIsZ5TDzlzBQi+KQnaZjkQp3d85Hi967KAWL/NZZAEOFL
NA+xykB//IDSzKI+Nzr9R1m6QUmEELyN5pHsXyuSFZDae9MzciWGG6tUN6FwYCygJGHq7GIpWhXv
eeHBQfCgou2aMmadMIi5zPg2sYEs6ruIBt3Rv0yghCIAGMOXWyTTGlAgKmcSot1dGdeYUc7JFZIK
amD/yQBWXiVt7HgAze8lrZOO4yR4tvR7494z2IcybzqR8TnNxRSsehgjzvcbIoXgWiizOxt/nule
SL3aitueOKgM7/+qDeR8XS0Y0rPC3s1TxN9EaYwxEVIAtS8anfw/t2w4XT6x9g8uwbzyXyfpnVSI
aSt7IaRlrsUI/MobILH2n6rXJpedBg1OAAAfPNtcWLLv0Fxl5TNPYbm7/eBzKrgcJlebEgyPjlr5
wlOSPXJNg3CJtcOSAWp+Kno/5wqmMVtr91nS1Gz+x9hvpvGV+PvV8Z6YmrrAnqmxPcvhm35758z6
u/u/ZBp33CxCZwoBIo/Bh5OmikUFb5XUuFqOewt8+6tyFV4s0OOomzuGi8J8rCcZrfMqhrMb9H34
MEOyIdqlbJlQc24P4mjAb050QBySDu9+3IYopzPc3g5ObhPJ4yL3OWg9FvCTC78kKVNI6o6ND0aq
63rPCQctgHm4DJO/uxafW2d/2FAJr7xfgG2XL2V+xMsJiq6BsvC28Pp8OrukdPxp/50A7k4HnkkR
I+AG8Vn0i1kY56oc094PKGhls36ElbNJUR7DmtNa1Ij/lXOgaJhwHLgZ4HWgOmy1lA321gAZ+zSf
fwSng4BHnnCcfN291ink3+6ccGEXAOpSejoTzvvHeLtxjtdUs32Zs2eowpRJcbcNiZ2n1npQS2pc
r+xOih1+NFwV1Ct9l3BYJ3caaRYWBeSZtxyY2XPbyIwRgQbc1PjsAvgBC7XlI47WbPJuGrmpWAXP
JNPbSzqGZ+VbRQXr0K5TzkoAhyLUY6v7vSjx3Ll7gIcNknTkyH2yHlDzhozUXv+RyKEliOte4fYQ
hwd5L8xMY7XLnE6ZucOLevhIYjK8oqXvq2jRe3vyarqo38G1Eltu2ODJxM7xz7/mFei2bBat9rjY
3maZFgvOEGab3WkGrqANJxXmaduim0uUnKqX8ZzNaOueStUK0lUc9kz/Zk0sJFRu/tRKDCx2Y81j
R40H2ubO+HincwyiP+sIiuxLW/+ZRvIMnHmO9okXsOxQCxaIawVJNuhQUzCAKJPfezWbY6ygjEaa
G+7EXGiHqcqCc7hyeFIVKMo9MCw0rNkgOwhofI/dcZbT1a3zbHZtZ2bfddKPJJVeGbMHHDGvAtVv
NAjEop8RrbVPf8fTI94ViisU228J2BV4I0slbJ1LNhOkjUbahiMClnAw7OEKWxnhKIlQlHqthXUX
qkbSB7n97UoKzQ2AGI272AwugAFaX4JV/Jn15CapfNlf8vQfPl8cOb+jYZa3QPewzA3CvTEhVNwO
OU1sD3bfaYFQjefb3U6Y0OVt6CcX0wSFaAdTj8Yi9jjnUnnraBSuK/Y99CdEjxPsuDcKTLaDPR29
AkKhs9H4yaJPittTcX/zJ+TZzTQjuFTNfnd4zlTQSqt8yUqmTJa+95sHJOpP9UVf6voQRd4VAYq6
1mR0PeqS5Rh6c3seto2U53Kn3zufbJEaMTf42QgN3JgDho+jsRAu3fX8Rq9KukC5rj2t8poahGP6
qSBFRbxGwkF3JUYEvQ3AzgAo5nYSTp/ahbV8lbdtUaDHpuJPP4EZGtPJI15Hl833Dzxb+ayGiStB
KqAwqOwj4GjKdiDzjmf+nGyQjCG2HK5zxdcMM74HdUmGYqF0Ch5cY402L4MEO10IPmwirj2MtB2B
qO6DiB/vYoolie+5EqhdQ/3g+MA9d+vRFoVTrAa5IFqmePOnte4yDJ0KfruMEI6Hv4QCwLstj6EP
JPpgqmOssxgHGElq22NgHKsaU3tuoN370LJWFZDj8U+ALy6CimFUKNzqBFVOIy+XIyhXG5mKQlqB
tBBclM8Tg0tIaUrQ0gwYhQxhmXFS5fkiwfpc3olO6ezJB/5Et1GsVybWcpy+V7GSgxIkMSL9q5gD
Z8KVbGE3PKqrtT+j3ZyZ9/pMQmXhhfyNyPtCRwLLwLbfEYn2il/CgJtrIjSk5G99cgDk6S604eVI
osUqL6qizXmCIjTb7968uIu/VmOH5+TxGGRgCbGHfjiSDfsi2GaPU6C8+O4sVTY/hn56b2qMsKJe
anddn+ZCT0BJO/JCKRP2ZrA/u3ivtrQPzwtb3B6zFIxXY/Xp87OKLo5b34J9HI3CieWo/SFys5k/
q6BMDb+MRK59bJ5At0jzYw092lA1/0xMzJE9IBDNMHflAjI91Q6XVw28jIaoQN3p3Z+1NLzgviyC
0C9+m190qIZj2CgNASL4Ipf1oJN91HT+FvXozGQsFAnMNXmhlqFTR6TPZ0raSlDsBwd4yFkwbN6m
R2hAxSktExJXxq3LWREovGGleAlAjTuq9/tudoyEsL+3YaORnE4u8dSZ3uq6f0tSRth+GVXj6HNR
XEaVOYqvjx/+xD+xQ6fb+5Exj3xzeBb7jrhADT3pLdH/AH70bIFJUa8J9/uoYUDLOoEpHkOFjkdk
jogckdZ6Yf7FiqmQencVjEvU/MjzRK3wbsQ8XV4OK9sbI7exsTnUI2OI2DcFXE+ddR31Ft+1vGMn
mX1xBBfSytGowuxBJatQ/kQPtpSUgrcLBF+mZssta3l148cSdRpUZEiZ/wb8toHBcxE4yM3tVYcy
/Rhg49yYsLZL6cEVWCvqzwBN0LMDoPdAONWDxiEgv9r+qi9BukUof0g8dOu/IG+xCZgG2JmZ6brJ
qVMSQMA53pVzickoWHZFerG0X9Jafne2kqKX8PEa+pEq2jI0l9mWUDOD60pdLBLRYx4WJXs03pmU
GrCbx6/uJLupyz1c+tK3jzkmimoawfRDZIyR/pDDToHspnIXGidG0H93NpxlEHZymRZCaD+8yvAo
MO2wJoK9Hfxwgaa+B+FirEWDAJI13xOrfdwhEeMrosMfo6ceBxit66tywpaSifGerYmOY7KLnoxe
SC8ccysUfT29gBiBM9DF7XwKI72++IM4JIi9TbjZwaDUPbfLX8nmwvr3N/+7wKpWck/1P0sKjYxJ
QtUndTMblO/H4yWZcalGd9m9vnXDcf6iQDQ6XzVjrZdpso/Wx1Zwz+DHeszhRY8RRnILj7+ZFdnS
7YCmA4fmc1GRbDj8X/N/ZZBx1pCN4qQsyYeG4DHIXSJlKyQxSP5jfRhiHFiER3TRMskgMz9fddb+
PfHAq+nfmk2rIexGc35s0QLagbAbzceNzWW6xeomt/xtTRaQDp0NWjJZ9wyt67F5rToRzhr+7Jd3
++TVmwgQE44TUwTo3d1YIO68bXe4ifi4XvoXgdpAlWfdfK/Vm4SMJsy+7GEzzHVu0rC6s3ML2v4z
P6mWGXmAjKuLGYUNCelZ/GQ54dW1XQ470vB1m1xHMQgUGSbJdHbnPaMnMOQcIYDHxH9gPCnusB4A
yej8G+zK7ZxcJWZhW5RH/3N4XWKm+BdBSlIKF0bW8Jqx3gC6IlS09/oeU1u2CMCGFqPuMeG0IBYk
kIKDjLVcL+wjWHsZ8/O1tVTsIqbbpZ0QG4Kt5dvP4TTPC1STj8SJo59rWMXxaQ4tYz3eubjJYE7j
S+o6pCLg3P6JQJlANT3Z7kEIzd+qHU8jwTfn845iTfzbfcYi2HmqxxnZ1s6udo8TetnjJoAy2siw
AJ/ArinkBNesc4/2N3Idr40RLdj46HUjSUV600NXPJ3jCeV3FjVWAxEQNt9yEnpotcYxt1KVU/Qq
uFVwdwgkLg0fEDYaVENSikc5EkbiohPr+jrre3Xsvk9oSuepHpBqEIvYwV7XgVCFjVBLDBU8jh7w
ydd8C7C+HFSR7SOwxAatRSb9O6ybFRhgjh9QoCBWWT7+AHBW15mgtGEQNCRXj0I9ayBfjftj2XPR
qlKijLTAn6DTD1140FlyVevHr5V9Wb6mKHjZMs3zZJA/CaroYmkVEBvyMFnZEUHhbsl9wcfvcW1h
KNaez93LzLGzW2jCs/8kVNMW3Q+bALtQHYOx6E0ZwKIWCpxQCobWc8eCFIaJN1MbRKqSWKRBWMa8
4bSSIXPctqZP4tvyC2WoxyndgJY0ofIdcLaTOpUY1gl0JPtbnrXwDkQ023PK1FTYGjLbomYwmPcH
9VTEql9pnf37bAYw3mgbUj8qFB8cLfgOaYS3eRLn/dNgHb70Pw4J3+OyBstwBxrFbzOZCvjTHC1o
60uj8eNLXdGtqmLJTotPHJCornZMfLFWF6qZNHm+xGHoP5hYu2DITa06+69QLxDCN6Sui8Q5T9q0
DP0f07Wiorwp286S5aGsJhK+YxftQ8o8pK0v84ylvv2KGIEYZN5KO/kC2vQJ6uXz9eXXpPggXs+5
M7wdFG+AnASBHZ7s8Ex7risHf/JfS0bd4BT7kLQYfMSY5KS3wgE5O6/x9vBZP5QzATJ9Hzrjkrds
nL+edVeTjVpodbQ0VA0O8LGtdurwUb5fQPENpdsAkEF4tp7akAhjgFSpYZ1t/4P0lQ/BmD+kM1Nx
PnAuVGiULLb8APiuX2x6JnovUrSIZ/CX648PdqqTnJHfCUKgqIrF4m5QfbYLyr0cXU2KcrPBcQMM
0GKdNhOLeKF+EVZ8tY2XS4bpV2so9/FpeoYMBhNR+B8TGNFLYup4GCHCAcRv5P2sg03g2dVpvVww
H3w7MjZUa3xm3dWXNgBnpdynT5sWAIxK+KqxNEjVZn+11UJrtbWsHCG3Dj5en0RkLMEDZHx1RvFL
+jfGvn7FKN9k5Tr43lsRo2e2ZBXWVXPs42uL8wbTuTinjBYL0BGpbYC4aCs6/oJFyIfKfaPrNEPr
dw6t46+ncz+3dn6JR6YzSKBVyJ08LO+hrT17oOgRio+9EQS12Abov8l8/mbpitjP3UblayH8jKJ5
m4QrlFOK/wDZGzTZm7ewvzMQUJwGGMIi/YX/5xso18eVTLPLuqnhs5n/YH+r6G5s80nuGnfJtpZf
6G3mGBYL6ttrdvg5pjEQFlZSv9xU4mgiTt5rZakmtT8StE+FR1+MwwTqdf6goKJv7OkqxVb8hrk0
6rDfZiMDngS99Fo2bQf2UtL08PrSootZqewFOSPFqS/MYhd79fv/sEpYMBVBgRUjJCfEXr8WCPS6
7igPW1yuLq7yveNv9M20VqPNvcgLSlAZoD8QOjaANkPnfdIR88YuRjuQsSISZ1MKXjRtsJ3/rBfN
Oi9MkL+7ERret/OW326McHMAtYF3ZpnVl+lK+o3ILBjvSBtkxzQKY6ugvVBGGffFjJ/uuDsaKVZz
GWO4pIQheiifM/Y+IXi0kbLyTJ/OZQ3P9eb/4nijEtKsnvenyEFnmkfm96Z9BPW0ZHbJcXyc+kTD
t1qKtXn3ITkauPEQeZCr70C2HJZ0sfvQy8oQHh7QI1JHvKFbUJ0Lx/h0dW3HOl83dQmitR/ezNd2
Te5cjYzkEtKuqiUURxnIcdqpU47sREvlojoWKeRZaWBn+TSdFUR5BtlFteCl9+arFd3le7ub+Z1v
tKlOWUqxKF5XPcz0RIPP+6t59radXR3GD/ijqo57ja0PfD6jJ7lRbR85MAlpO+KM0RTsRtFDqWzN
OWKEI58kCVY3PoUVp/h2JjG2Rlzq72gLBs2eQGF4UFn71D1Hv1aB25h6Yb3SlxDILWhc3ps8+ikF
6M2riFh51vL1BohSmXlBgxu1YVCewZ0isCbBXmI8PagEtEPIZunhA/BiEg1N7+GgPn33gEWll+Jn
+mVNGqzFRdqUXkVjKqz0nJT+9wYRqa62oSWQpMxyfes4nVu1fWlVWcd1o2yYN+ICPIAaMk+vcryi
h3lsPf0tG58+Bdl+XyLgclu/QpaMqCccqPUTAZ5k3BSkgdx51oGN5kD6w90vbFJPuqqr+9vW9RMR
ZL+0N2K4lt7qkuWl6+paOoHFxUWje1Q8u8IE8MmGaAVefPPtXzUDqq5ua7GeO//o09XlD+INQnbN
5O7ls7BGR7GDN98q8M+b5ooKBl64Wwjha5Gfk7caIBvHdg+pu8iEVRcrslIsi3+J59UKA3uOOoQN
Mp7Wzy1KbBl6HcyxcAaQHtBdDOD0FdmzhbktoIAOZKaQ4XKJiFNzdgrd06fl5k4hrE0bxAru78ny
7V+XiqYMwQqT/Iy9BHYe+QJKgAnsNi8lYrzckbsExpzUwm43zK8CFIN1ZpKYppNUvMj3Y+uGUaUM
+nDqN27JZKvEdZuwy3AtJN7ap4C+KH3m71P39SzwCRw79X6BHlQaNRL4QlSWxTgnyXMrY+F2tzB+
MV+pxZKTQ8RO94RFdfDozt//ng5UZOT/y3WXMDfy1JofcO8uw2Qp1p3Cfcf/wrk0sg5voG9k28EV
ZkAq0LUftZtWEHhWzbvWpQC++bBJqzG3BYg18QdTT8hapkfF5ZgIOVKC/U41LYm8J1eudh+ykts6
69BB6O00Srw3ch/XgWhcknIlf0htXAEm2+nWK91IzAHR+R6Ii2eV3lfE1SVrnDiMq9FZltKKjviQ
aX90gOXr1rDjVeEImAd5rxnDQPaQaw+Mz29MvTWe00gsMgqnoj6CZA9hQalZFWDc7zNP1mzx9oIj
S8lqwdqjjvkX8L8gq1ZXDruxQcyuPqsZObG/koUrncoOjxSFYzeTHvj0C6wtaygFz9pQXmGZTtSd
DOJPo2oJ4jE/HMFlug15ilR7CT4jkd4CmMn6q4DymAbX92Ru772wHNyWeAZxIxdg5TuF5fMXMGGa
z0lpmxnpU15LVXn0mWPdj1S8JzswRAiPuSti1ER1Lxq0ePLa6hUcOZby3eBLf7yIr25xlqtB+yhH
BVyNyk29s1ehS8e97dCAGTp061tgVs+QFcD4pmF38jCCmznQEQf3ZFruutTqx9Zuq7Wi8CgF91l2
Zn3hxtgAfdVK3fiKKZBZ8gDX3BmV/kI012rBGJIoFw8DIiSjHA4FiqRgLpRNEOCcy7iyXmy6/NfI
4iZfmN7SjP3P9RSn3g11LNTAxpnnrJzTM4OS047bUm+JnzmlrQICF+hp+cyd1z2x4rVAuWYrfnM/
+dmHv4aY1hzqvaXKEQuElza9DyGEl2OBrTY8ENd29YuJMaM2b8uXbibaGeRy5JOqxv9gxTCHwCxJ
ucGQonGL9r6EndvVs95kuE5bPfIqKH9B4HUeYkSz0Rk/Z+duIUpJxsc7Qc02s/YLz1k4E+ThAsjy
sRHETL0/dGPEGLsYIGE2ufmofyhUqU5OVFByEsAKODwGxge/1nvOtZImqB6OfXkB0U1QGgmooURW
zVqN54XuzDiJMpNVRFq0FImlFmAQ0MBB4Z5hC4ru3VmkTeHlnyRUnGfpZ+oLHt5JY8oRasvdBWRF
YyJpHYPBXdGeQiYq+tIJOtUXhwVcnshf4Yyl4NryZh+Dr+k/98N1sQEXPf0Yzv3Q88rQ+Lf3oNwm
ET40PW4CFUveMvw4VANGC9BdRlPwstI23eDMf/6TtbTBlbZG6glZqvx4k1PQLbpC/I60zTkO07i8
wMnj1XYFqENQmHjU+BJ11nA8znzB/fjoIOt2dTpbwVzWYElOvo+mu+ArnPXSy0vnMNhVVFizcGou
cG6pjTm3ICqLKwr56Bm4jCc8zer9/ufzeYqXDJYbNk49HqC68+4VI56RqC4QsX7i6YpF0xzkb00C
YHhnfc2brKb1EvjZ2Zwl46P0lmi12m1ppxmarmiySQX/lddC/84pbgtBtYN6NlBKFvcBH2Rz5i2r
X6cJqcZ2tHuMIWfuilZuDYjVHRcOQRkt+SneytydhJcrGzyq+uhdYcYet4sY/Y+jN3j1PEABzclv
BgErqHbKKCdK3UHi0FYbGS4MpaR4O85QKLzMpmEY2vyOIxWBePggvzXr8e+FP4eXbh08ume0417W
4knFEotL34Ir/WzfLIHFSprpfRncfSG+NhqdAOsCccHUqMMo9yLGHZgEPqSgU3HMhz7QOIVgr6/m
1xUQxHhRywdepkyIjrCgDh2+vVybGKNURUrDVhvHQxGXKaWRYdchBHWkf1WHiW7cvzNJS0R6C2ce
L8VP6fNQRYsojHKuemrTBAdEeofNEjLC5P0u7rhoyUiQadUVMYIOjPkPLKEBGpCqg1FE4gzBzW6N
QgU3CsXt1GfDLtOV9XAmghb2JNaEHqbTcaAYJsOA0D+Vfnc1hWyaL+6C3U5pWCeXDx4s7ItqoBWE
7QSJQSRzKHR6xtSAXQP5P6zzw99LMWlBWIe51dBt3OxXG+Bv8jlbYW2fvrwZcyzg9Fn74CL8stco
dyqLtijjbN11NQUSv07Tt45WZPjJ/j4IqhcsMut8ZDkJD/humCtzaK1Escd3QEQXsnFjDWuFe2tv
TU2eDvbqc57sldrmWgLLhmMzyBfAwhlBVnv5ZZFHAK9XXu4yvI/j3CTdmMRaW5iRXNK4yNskoZXS
0D2D2iCRR8dQW4ibGztk34sXq3SVM2EUSU/zczIl8/QRc2tEqjxmZkL3VAtgTjpeKywUApEnMBnD
eS4E0KhtMawLE5PJmjXI20MFdrIksdi9h5I0Sjxry8waw/1Pmu6XHOqD/xdrv2/WsWf5jO7DBa8r
ldh0ufh0WVsxHWvBsLVl1BSnr0ehRWqbuLw5lNqvCwJ9CNZHE98vWR4ULcnFriXIe3cGBlJqUVbp
MNiwBn0d7j4I1UYOCkBmhrGX+IFVGlYxLxoQnnVa7vKuMzdbRxW32hxu4/MWtUNrkDi/7nRT7hGc
Sfu0HozkEXiZ6sSiGTPtLhBl07AyOOEO1QuS6ceEdFXsH8j2RGEMs/U1fL+NqiUAzVuFTOvJUvvV
bFB6fGMpOEwvS60Ieg0Y9MpzawnBE3Y+nh3Cv73Em5XxzEGN6z4DVwBw+zlYcM+3CPjN3DuHqlLn
m9QihPWjInO9yLj8wGmJ/6EFBfq4q+v9pfr3WwnJgaAc1mWT17w6CQmMV5NV2Z2UfzakKoXh7Got
+ccZm8jsBlK7EZ30efEvoGfnNQY6jtF+RT+SjSgfqCQ/vpWr5pSIffPbBf4Gu5cRcRN73VFDPoNB
OvZFE8jrnup9yZWjJhhYeqq/7NDv4W3+FOPOnccMsZmYQQsWUdopgM+ami2RaLPsOWkUkNSx5yqN
i3TQEiJMxTDpEKK1Wnj/YpgI1OHJRNZXNxUeRUZMCcndlY/+cb+RfbVzzIUimQZiH0tmllxs3Yc6
D9LqOiQJ6e9beBB6I1+0LRvza/rGC5IE49T0inV5EZVDbRw07SfDG1/sE34+7ir3yYoKtyONzu+z
QyIe9tnetw1scn+LkG48iIl5shoQb2OqkdA1pMdU4/LYKYE68oxG5mkqt7Zn1UNXxfqMA7kYpPH3
SruwQAs9+6+ucS3ZsS+elYJ9kmDdP1CThoy9wV3of7+eGjXM8aYL0UEWWE/DWTtuv9zyG8K9JeYE
aWYe89nNoeU+9U5p/H+0JPQBJ33VHo0dRVEMwxXveRmp+MKz/f6PPXSCFguDWOpDwNkTBTxKP2wD
e+O+E2Kx3+hgBO2NGOPw0foP7inY3LuslShr7Duk09SRif0gbs2aVdgOe4KqOIAjTq3cZD+yEWku
o6VCNJBTHOlcoDteaDsFMNEsEBvjUWP8RFE1TR2821TiM6emBzrxoUSIdlP54EbciGFuCYGvnnWZ
fctzViPni74YalMwKjU+IjLQNsOFATcHip32uGQkg82/yuBY01kFyzVg0iUdI82l45TRbIywOpfJ
+glI1S/qCwasSIZ29Bqpa6SSnCxfwSWgKGcYEtwyHeuEIG1eeBP3SPpKxkJUMRWNGjx5fFLi35aT
U848TxOdHk3vMW0SCStRzWwslkT2Gr+aYlKEsRGa6/2oXQXcoM4Cs1mJ/8+IAZX9cVB+Vq68BH3L
DFo6E9yFSlEAsdjvMmbFkGqZS19PXZiJCee+x8ov5b534iTNjHcw0GNMAnklQDoF88Kwb1c5i3ve
144kJ+qJCCpiWMO8zVqPfzb/FFjkVYqGTmzjdQITrEyln4yR2zTzGPe1TH66ViSaaiEATZ4uMsZh
dDqiZWEERji6M1cx7d24k8NWzPZUha5KTzw/NHnKozxPFBs28hGeITMThr44sIOjmSmslEe+0JLF
eNHV6H6XHJPx9HBE/d/XmGpoYZRTJAY/pkxQhbJbj56jwyVyWeamv4oiQmk51qCjA59z91u/E26p
QN0I7PIlHsCk5h0iy43c81MrFxB466EwRjysUL8O1t1klEPahxjnpsfVMwN4VFilirJswj7VrAvd
bVO6M8NulEZ+L0FTYd2tBnlUJz9UcnZtlCdtb0MUgHRwLDdUgP5M+PBvkRv88XRfgAAG2R8joz4m
fdIgaaU8bMd+QyRsn8m/sAbQJQqE5zaDR2icA/MzogSArZyS//Kd3PY4W0pCEP0xrcfVDrBuAtk3
6HVoGRXGzfY8mptTi6XwoSRACCj9bVGlGYGCc997XHrJmwMC4YVuhJD0h8kam/JrPfkoInvVDLMP
w3wQAdQk68wzGpUKwgH8UkhpB7S1oXt3NZZLj69et+uytpXTo2+22Ns9Rr0i+HfElCX1QjVWmbQI
vxoAQjb5kbb4Kfdm96ZCL9l6yToVz/86U3UzOWdPSVFrZX/d4FaFYCDALTSlz9efWd1NhDqi7V23
WTJ8GE5q7M/PcktTFP41J5eZSuvZKiqQ4lCUPkcygo+trTFStGTZJa8Ru45K2+D4R/J7hXioOp4F
I7prErbBaw+Lv8G8Ona5yLc0LLEh6gpnQNmxz6k4MC7+BA79i8uIkIvz9WXQfiXjs2cksj4b5ALb
zhNK0v2weQn2g1mdf1lnuaqsbvZ1YpKngl397Xxbtzev7k47Ljzy+ofe9DA4+nodDwYV8EfT48zp
6ZJIppBYFA4o3BakTWEHNP+CLrU5SVhDPvZkB0dGbp6FNExXSOP8VuGzcwCNofH6cYl0zyHdB3Hb
uz/2B1kLiqZNwDsemxp+Xa8tUg6AK1lozP2iaPNy3sPPaTt47N15KqdV/ONKLl5AaXtLqKXiNmsF
Af9NN6JaXITQrCio0VfJsdqG1ODN4zstpdYwTzsb3ZGhgt8GWj7REaaK+96/Sbc6BXLMcDGQAMaE
JOt2QKQlHQe54YJpN9gmwk3+QbZF82kKJMWGE3y7kd3SeHIvDA1333yaognwo5+0+fEVG5oVqz1Z
rL7wGvV/YN4lTzGisz4S6DbqiS0BQ9D/7R2+ZL39PYOeJ/wFbQIXAQwfwK3/SAjzDR32ADF6IOe0
DoAWzFRkDxWh/JjrFRilDNRQpmQaXx+wY1W6S9jvvPbyKouOayTHzmisMagpTJaxO/xWDSEYKrsh
iSMa0mrvpJkDJV/rNiNqg2MTNYlROD5bgRJPunyDovJwmG7oHvHk9TW4iR4Ac8h6mCut7ksjMTwt
zQHZZQjLbl2B5pVsfaftgGNu966WuhyB3HwG2Nj1bp0RSvSGD1as7JMV7QWGMoB1pWAgpcHW60lZ
vHKq2rOME9Sa4rs4B/ovn8pAPZIGxU8gPWyGBWIILf2J7t/lmM0eZBlzzo+R7EAxEhog0/dYupzs
+26NnjNY6E7WkPvCGitZupD6G9PgLcqhFG2NDf+qPN3d3dmypIoMHcSwGZPavvmgzk5bTeFak3Eq
xpr0WpiyPf2Oi1xSHx1u67KVq1tD6CkhCfpE0ZD8PHsnVa0zuc4OPpa8GIl1bHhoyFETPA4BwLMc
B+mKUVSVzbCSAh3gcDUCsvNhRS8soR24BYMoMTanb/G98DzLwZ2io32Lf+68vgwISxZh+rN/AeX6
m7PshzXVbyDposz+R7V2S++G4P7lnBoBOOb5Lilm5eyJMQ8mjijbZ0RON40I7jgkN1JWTNY6aHYo
02JyMAuMWoVfg99NFIK/R/eLsTrSdS4ql10h9z8szzm+DO/rKn94bJ0HTP/aVf/3k8RYUd5AVrbN
gHaynmfc/bzUqJcvEo0MmKKMxW0zJKO41OmzQAasgOqb+EZCIKYGlQa3BxPfjzfe69hsOsUKNK8f
Vq/zBiSP7/z/VkD/14ZqUEr2E4jlKlEn0Ts58N2bPVmPw/MaDn2l6f8bycXKrdmOICSofJMaPNSQ
YXB4R4FaugjbZ5bxSla10SFkx5GoWsZuQsC+GZUUwGvJPI44gU2K67yaD2w3WjK76v4G9mxK/C+Z
/JDzyzeuZ8ae9RHmquxs6NrjxGzriu8c45sJzq0SEbETNeKzSuThelyvH2MFHPEXeu4bbCTbUKBg
JMDga9Wnh1vvaDUsILAIvPdG0BniZQJODNOP6sP4dM2LOxh3NFYLQOS2A1iLH4pKTuluqXLvX1JK
zlHq7FCnaxXlLZKARDNOibHa8Zhnjw7oVbE5ojDTi3bTVIVMVin9gHkcvCvmh+kZM4XBj/FaDzP5
+sKcOvwKL/zufGs2+BoP2/qnoehqcxrlA5EPTiC1H6dY3ijagR/c2JtreJlC8Cg3ml19t7MVToYH
7zNRbAves6/vVg7TNeyaWedgysJGHDl6Q1g4chttOxCQQOJdk3VqAxbVDAwkj1SOQKBMmNdoAVcy
XP/8J5q7p6UWwng4WmoTxBGAb1XCb2+YKgr9tRVPJEVfgD5SwjvodXYzLD9T9yUojOURdFH8hhLK
F4skJJHqotNs8YJ3VELgWiWaK9b1b6sIZFEZ0TjPIR59CYy7N/nb2+VPlXUG9NOLE+NIxaYu8hOt
ADE9Zp41vVfr2QJ1APs2yfzfv3YAEM9hZHmlGsz3eFe5mJvJV1/MGPsBLmA0vk4i0OVxWFNxPYcN
obG2MAnvEMiRa8IxfuJyY2JYo8GDOHGdreeEf+gIqUIZd0WuNcaN+/3IfEq+h3gvHGu0YdkAnn1U
1eYbqGGMn0E1nZgCQdEOM725ZfgkZXiT7ir3kKZ4O42+sNueCjJNf6ye17jMbwgN91d4JcJDMOAd
NELxJcx/9+P+IgFTyiFy7MI9/NRsERQqjirfuwmGn9nYvERJYS+anseewd5jd0MFw7Mi3cBxl+Fl
XbJMD9YciDz7IQJdZrof4uaubBwgIK8aAOVrFsTsmX16Fv2m1eAwYx5Uv6u3uNp0JmJCAN6E+kd1
7jvXJkGQVOKRxGM+fD+KUd0SAWqcDM4SYhB1mI3IozpeD0YhzqiiUkfr4D3P7J/aFgBUay4bEU35
Ubc4KyA3n+t3Hr6TV/iA/dj85oBRhACqCCaaZrOU/HlagCSBt+WZkENBi8gs5rnLNbLadGOcYAh9
AMBkcFudymj+plWHfOj8iEdzhGH41PDDbO9ab1uxT5qO8Gv/uoxExLSrLvRNi+wwSJBSG+0AUOhx
apwozi03YbVdx7edATVREyS5O/fP5iQda+417yRTuJWvatdwKeYXqalx1JEgbERgfUtbr1SGrxUV
FOj+6aai6p4TggoJqoO4GpHgriGLaEnf/OiulQjT8GXovAOFPiAauZgBbqPuWs/K7hHEGEa65+Od
Bur7510j9MwEvj2rlvixROplTbNf4k9aHIrDRuRqZ3NDmCw1GzMI9g2Iu9ifGqi/V8QsN20XNajX
3tbsi3NgMIqucc32vzSwi2SiNXV4nDVpqsnmFDiS9wMrkqhThXPngCiOapHAI9nW+zbdwmEK6/ez
LtHa4HTM1IoiHXOVks+28rJpLLhgHAG2QSsUHKrNC4dZ3tVUPmE4Kz2x8eX9evoNj5jRUwt27bmN
/9cyP6hID3pPcRqg3E+Dc1xnRCJ7EOr+u7pigleEbsCtZDuItE7g4EydbOYPpvFfmuRlE7DFMgEf
tYu3FtIrefkfHRFeCpG55QJ171zv3g7PkGSdvr1Yrd0RO9MXse2IuGEAR674Jn5YcF+eB0EAWgU7
P3od+xbub0Fp5WVb6lOqrltZDzMEP4nDtqhKe06xefkA/vR8/iclA8cNpRdplfs65J9xHwMllXaY
o8FN1G072FF2JGAJuHrhDpMTYe1JedNS6nRh6J+ZHzmVwlXo/TVe0/FynTymKNjOcyjrYMp/mBdE
aVa0HiYAN2w6ndAf+O+oXa9WnjD1bHLMOFrMLcgaWjUrbbc04uKeKVhJHWGRcnbFrMcJXAAqHZ1M
FKz0SAe93xWvf9+OYWtrvsasm+JbimRO7GqG/6ZGWaxhDESEwhWuxy9emoB/zU4hkXSxYab9Gfjk
GSBqIKvi3KzeSJcG/bMan/o8TL7jtCFGET38hcxs+OLAKT39pjqVetdkkh4Iontqub7W9uucfbWS
b5Mh6inTGU8p5dVAxq4f3zJnNC1HA1uCPx0g2sETyf1mySOS2xGOIbxbxPiHXAyGvuXV0GBAroM/
T4WP41IOYiF66SJA3sIeiWg3/JxaGaSglmy5rrM8CAjY69A0yrKfcJN9gnt8RXZaHAWHFm8mxo4A
2Jd76EpRsOo0Wlv+QeCDRRpxrhKmys/cwi6N2YRY8Ea03hK0ItzBrOITkyf0OTPsSDISeOWZa1oi
DQBwOjTQhoEtfmg0kcIlAuVcxt3xyO8XyToFdDqJTDfK6wTgmAsUxNyYncmoEUIpBm228+6aRPnc
REWc8UJZrX7pCJMJZuRFX8NSe9BQZsVew+bmS7CVZPphQaHXKZB+GuCN4pVYs8m4ZXv5kVfBUZ35
8orsDgfVkukLjfcoIYUjDG4VOD8zvG0gRfz2SGKdQQVbVqrs0UDH91SCyiU/+IwRsTvpGKUrOU1b
gjWvyLPrqXE0btAbt0nA1ccvmXmdVLrjerGkDyFrHanCPHJN7C3b90AYsMi4/VmjPPiTxO734x3Q
JTuXrLAoApldeYr5DyWw7a145i2XUhPLGyylBtBLWO7ySmdM5UZKBgWR0sCcGJywODS7B+Ns18Lo
Nix8y1P9sWxVJxpcxv06VRMcirZnUhuv11ghTOnUiuQ6H6YpGhLrFiMP90o8JU9Ze64L7u2wBd7X
QLW8BDponStP57GaO3cXWRvBEDZupcM6ZiEXUML+E6pqxta0sxWy6dpxYTRncytZC0OViRfrxj3H
QhALb2RUt/iOybtDw87YTKtwG9qmTRItOtMRT8eWdx+Dst3XWJEqd2TJ7B3XXkIEd0RttOJ/7K7h
i+xOgmvdAE8IeiFm1/wohRA/Rxiaub6mO2jZdR60P297lC8ETarIV5ErS4kKiuLTm5E5I+o0hy9C
YU7iHhqCNBzgZB7NkIO4ZBkm8caOjWz7SC1pkAtF5MgrbKS6Yxq1TkN7KWb+SGMws66MvrbM/4Ep
LZ13+lmXW6RTaCZclEPdudkq+el5moykkUUYpgqLZa57LqrdXPsA6oOwnUBS6MJ31LrLGq+ZsvCB
TJ9iSN3uQWRS+ibC/w+vX69MJ2ZuIhRTTnY/t3MbUILfDDe5gusg7GhtNupBCSLK/tk6e9b1bbYl
S/gncPbeGjepqeWeN7wIIl7zKxyvyEKUhGcgWrWatkXCiO0uCubhHGKtULleFaHVtuDI1a4qtpYY
+WZ+hR6areGTHuetWV6gBI3hGT852/Mwrfp2P+d2LQiJQX9ikfBPqkPZvDs/S6DcxYc7bu1KKo3S
P0mOKYIi/AtQf4e5OfvLFAODsCK8jtfr3iPsJAStSq/ibU2UReasv2dpOiYOPWE4DV5T6dIGc6bl
TqRC7fWDnAxYj4BMLh9wyk41KFhsmxjbR2v2+kpisWDRYKxc50ZYhy9ausGRlvrfbtMJYMVPMMQs
Iml13ktCmt7Ux2Z1838vceWhdJYlf1MkYIn5NRJjD5Fq1HUlkyT81oSnnxjbzEOyCBd0p4vF1BhD
v2UpnahJetqODdIIxWeo40bwN1h0i6sux95nnH/1VPr3E37Dz2b5h1dIlbuRtqbef3CrPOjwf3cQ
RnNn2TXFOwdscGePqfIy/Tvtsu6Qw1dzBfhvT7YLVXQI0M8hSqcUPsczEORlhQOdNZRP3lSMr8SE
6yPa96Y9w4VU6H9jtNztBxRH1jvhPs8m2/bMgrodUIxuEp8sAtA8ctbWZS4k48TR6XIqZ6LBvOYU
R1KeW+ZJkPjhHWFsm4atMICNMmEgE7oCjUJHL3dCOVB7or1XEd2s9DJuS9gCcxAXZvpAqrdOe7yS
rN2sujWqF5xGLA1+gqwVw/d2PfzSc3mynsF3ntWV9/W5FFVDf0EqEOGmAoTFh/yZ5MabC0zkzIFd
qIUTvDO4NUMmwmlP8p3ISb4SbsGEGSamm/jDPFqc89c0WmVBdeOf0T1RujhhQl+kny3bmE+pp+Bq
KhFBFXGvVbA35hxZx5IqOruZqXJUKHRjGrsHnU+I8fDaguQ1wDxAB2nlEUg12ECRm6YP4AqI1umn
XXLU7WMdDu+XLKaR5EAlJbvm4joW+RNbj/0LH4muGEgru0EudjlxJ3yA7/oGy3a5p/J0CyERmI61
whO4SakWNepwFizOKLf2wds21uftr0g4LVckOTNWVgIRJn0dJebM2m6mIqN17hioIfo5bW6qVftm
rxmr93OFrol0n6uOdjXzt+MKM3qbKb66JhEJoF7FISkJvEPm23vuF20SO7smQiUC49oXDDY0OBhp
6lBCpUzVKN15LdUjnFlCAjl5IdOl+PekVyUvfqe2QUvlkCm/YOCB30i4PpzlyF6TOVt9twf0GNvz
CGibm7nSIrJN8Ti1oTKeYxpFp8qGhHU8kHSU27UTVEtYlAgHvEOzJlYvat+bPFtcgprezh81naAa
rXOkLRr8ki5TjkyBmT3xTlERQF9gzPhDdWuY1KTuaIYDc12ITmM77mc2J/sLHW6psXTYjk7ue+H3
AiayKTG0wg1Ny3lBTrzWiVFWvHcWw2m1t3igb1by04WclcpDRc8u7LKHdInHtjdnZ9mF0EQ7T65F
0VsgCbG9mZT2oEpi1N5y/D3ukR4pM8FDTHVEWPjUKfsp+2ynSDiDNj/bkbI9eTP6UlVsGDabG5by
JESu+vxwlyn8/63+WFZmUxllGpbA6LalrilVnhwRTH3HbstOjvvPyIi/2S4YoZzg55CkErgdnRlY
H65M21Xr/uEzNbP9wXztCe0kgCeBxEewms9yUVs/r4JUpCzduGSrAuzuE7EU3HIxrT3VB5InmE88
1e0U85tphqw5ngHwb1YUA6dzMN52/dTrHij1DpdXtA4z+KqLPETE4GHv0u5kjlY7iKQ7/ioRFH5n
yJro4YczOrW0zvWTppjgLRYuinfVdRzSFQUHFoKdQcVBiQX1trf/BzwhvYCEbhhfn1sn4AYvNzCr
Cv3UgvBm3WhlpvvKePqmyPaetP0ctetJ46qmM52hFjN0UIKfRu4OuLQrfmF8tGy/1BMeXiZICj5x
svo16KvJsYpsUOUMidYMCG63Sg5wnHfm9z3A8QsH11q2yWgHyicdJmMcpidnMCyhX9ouM4VG4jal
qE3mU2vPUkOm520Yl/HN6Tpf1BLWPh5YkalMrlOmnugF+nOs1dSbPf41xzH6pJ4gV6IM2NJR4ojM
RRNjr6cq9QKlELMqZAU5yczYx3rSTtC/0+wyp9It1jgaXQ7YcYw2QIgy5UkQkXqK/MizHYiqQniG
NH6nvApPmqJxF1uVnHbk/qthKm+OjPIkyBFz4wesR9kG5Hi7Tk6VjDW8Li5O4loBZBMBd4n/pNu6
58bgSjFKOOgMSjshgMU157oVKGCv9oVWaT0odrS/9SWdYCaWP1jh2w6gcQG1n37033VFCNPX9fiB
8+cAXaRvl7ZFwkXubruUH+K8xC1Mm0rAW2mUnirxRYNGyvLNpd4vsHVEa4Nb8rXdhjFENVMfCjEc
pc+HVcLpYL20XTAu8aBRSKZHkaPMzdWoBJEkFn9AeiO+T3RaNhafXDB0foyR7iy6ZoNHTyzNfTmh
bEowle5gcY6n5zNTxA/mBEWIZWWetRIz6RZuYjTX5UNQEDXEVQ0dcI56AfmMNuxyf2uZX9IUv+Ae
qdNqJ1Vhh+WFkvZXFsNGS6UUtlOvMZ7LahNqp6r7quMnsDjrLpGI8yQp9V/tizbjgZPKedqiB/gE
9NMTXOIbsqdK+Lqj0WBO1oWSFeRScl6WjtERmp7br+dScVWmSC+tOtxq7Ib9+FxXIWtUx89juySp
1L9S36vVTT2+R1w06EuJLukmAbPfeN1JmH0P22ypb5NbkoAOwXUHFnG/3hO7XxTSwHkXAKRtI+2N
gO7aFVCgNSJgT2miAxyeKHwST+lz9ei9il3vG1mgmMPmEOUSHH4XgtVy6wNjhcEKhOQT9glJphR3
jb/28ETPMgsMfavhdC28h3AMKc3yPahKLVTzH99RpCd7bmbIZSMqFMMqidWXRSC2ZuVN3lcQZpMQ
d8/8asGW7vEUOA+hyAlFwQrvDqT8J6vWa6uFsXFK251KY/hQzGSWjXOfECaHCgKczwYSHDDki3za
JjdGjlyDEt67CXrjT7BXIm60nrQR9ATdM8cWv0GZsa8X+rjHqV4H2ZDgQWb5FerEhDyqkRNpCEiV
Evqi0MUag2cM4ItceY45XioAEy/onOK99j4ZgOlYdYvsU2zPybeLn9evncQOZ0zr8PD6no/PtG8D
Bhnrx78+zx5CtuzVFZo7RFNiJsxxwWG9u7WZiH4liWJ1RXeCqrOUiLYWd8nrtQaiw6afKw08f2X0
xHkwxfnRPXehFk6dLGRzDH9wAXzRetLQscghiSHoBqO7Q/VRRwEZTL6HPWRam6xiEUbW0wyLm7PH
qkuGk+Idt56+b9M8QC3PbpbuHkpzfW89Ty31chk0v9ShpwXvBKILVQPD3q8Lb1jcpwAfMFLCbvA/
AgVXYVDZq5ap0ZNZamT5EVWiiAO7sZumOavKPUTW5tJVPxrZW6Wj73fA42ljm1FbUjV7sKcX9pyB
nAsWLLiSbnZHpUThFDT/fe31HZOPqF7bBSkECszXV6NIPhSu57bdtbq4mP+6FCspEsUxQykbkE/A
KkvyytyJGR+xDy0BuDXFjVg06XtCOT2W9TpjRJVnJTkw6ymlFTlwQgCx4qE28626JNGwkunlUzJU
jYvAgQWkPf0B0dQYLqRTOI0Y2WpdXGdAefVw0o3djo4dSO2/svt8JfjeFtHB9l9g4LWe9L7y/nVk
es+oXBJVBfhGyXW5LgCztDPwi15ihwh35oZ8UdPJGflbcvZItlALPZBVGydzpTS4TUI1SbpapD3L
AWG552karCmG+SLmXzSngF8hAd2h5SXJfX4gA3EB0PFSC/5DnVKESqsjMIdbv9UOjzFik12Ts751
WIDzqUPFYmez8x6ZAJo+lUXwRUGme8h6eFWa7YJqR1cuws2vqSoHb0+lFudG8i8wlEhlLst8hu6J
KYMHF3ac6t9vf3DbIw7BHD7upZcRV+nZTkRbUP40YDUe2JpPObWV01dK7EWBqpZQT3OmMMOpUI6Z
nngFVzich9G6fIzSz5r8Rb9DMs6D2QXIy1mKsX+AcmqVRrYAXGIpkJBdgwwoISdg2J2JBCZI0TzV
vu7+O/n/y7RHsyLJN9SbFOyNlWMOeI5nOYH2AotZJh09f9LhPbw6OR6Js9zXNYlU8ultkIeZTF0d
I5oM7LijbxE6YVX0y9tg0Cu7y6eunI0LBdQynhd5neit/S2TpIywTuu3ROtpThb2M00iumQEJe5r
2MGnLm6qKsC6YOIM6BRKuykzo+bLKv80I02gbB65JsvaozKNjyCwrmw370PeE9Zyc65G3IGIgwgS
2AW95t3aEbdHK/Nm2Yk6BycVV/tXcFwczW4IycJ04bBK65Db98T7QBGMQzGFT1m2BRvIB/FxWwoD
rwJkdW7h5G0b2BcPlv8uCBWEJ/sI1pFEqSmXG1WtpVOcjc8pDIhgyJQFsMaAKoBmqsZ5I5mLd7qY
AZMawgU9dXUTEclfMkuVPRsB9KjVaqtF0xHHLjubsRCnk106jDqQ9lTgETv7GMb3QIZZdrrRlJC7
B3/maWqYN9rY72XZ+BEr/oTTSmGr0jA27Dc7WGXTJZpJiK5NWqBbF9cS8PvNBOocMtG+wfzEMI+c
ZssMXHc2n7t2kI3667kWO3dZcGIqvuIfyOxnvUJdbHZzybbP73hDp79uVmNimwI/wI40eTtZSsnB
I1ZcEuURnAj7oWlUPMKAlBYDLXF4mQwJXQyep96KH9VjcNBmh6BhWRIDhm7jgFFzlexkNqC4qkDX
kR2wwoPgcnmQSHnw44sLrQW182r5tL8xYqr1dAUcqnBzcZysdsUMy4bM/0HIUjWHRgcv2+WxOEY9
zshGZo1pPGWV9zmu7AHcgMYfGoM8O8429klgvkkBfO8vF5k6P8P6ND33slgbvH0/k2+bUyoXs/fF
bf85qczEZnAupiW/acXre1CT0R1gdh6qXvpOHIxb4a9N5FgGu/ZQGO8eQri5WAYRemJeevu7MslN
rhTpFGxkWBIfbu4pYwff9uVqUmIlooxjXqWndiKZFjqwuOV0XcEBTwkXdQ718TZuygdfa3R1A5BH
MFBaPp6fJ1b2umfkYquTlSqcLoJprm2H/4wuGIp+F08JJ3Cnmg77CskH/HSrgviGhWfxGZFqku+v
B6Y8JuhKVBwh44NepwX3+73remLGYNG6N3F1lwapiL1qCeHQBT/tu6O9SuYF+Om0JZlRUCa5KFUN
gym0QR0//Jg8ip3lpDCOhtRYzSQKS7dEZ1PDl7mHlon1FNxklhIndwxyDsgohIAyg2Lv2HoZUwbb
qNsGCom1mJcMePmw8dY5lMMfkDpIBoLYy411zarPNPTaJi5Z+7BN/m+/hK8Uj1gxhJZWkEw6zXts
XucfZ2OAYXtMntHS3AlU0Y7x6v6VsZXKN+KiHxJsCUUa0UsEg6mRwaydC3z1693Q2v3g7GeRPQPZ
cm0/Q2tl47KEWmcjRTYmm2H2wWtaGNQgL0VB7rDqGW4XICPaEhGvbVDKmytBO2RrbQjHsKSYFk32
QpEPMhBHoWWybbFBTLJiuAGe2yCLkFIm1jsxVMi+NBUJEjIllZ/JMFT1npRyhYdDoTtiikEbqrdz
RIIwzYHz7Vx+g8gMaCQ0YskJrAB3HvP0NVYCBIcxoBwimtJKJsukZ87dRif3ak5lV2PDnZNblGZf
fXYpMwWGC6uRnsg9FQfgFRsU99SDg6vywjjz74Gtc0PELxBVWMIjou3vtBt/h4G5q8fuIM/h74LU
xlEIVQ0H1XXRUwEXWKPfKTuZsxe67gkBD4NU5tXENMzluRJ2lcVFexK3MuTHcogNtL29COcdC5QJ
pn7ZJy35igSd/6c1n46tt5uz/mZP7wCGyALjV/vC9+KU09LWSvO62luPjJgOW9lzw979kaRFfQuM
dmbpML8yb3rDVE8hzuyxRBw0AESmBy4mZXAafHZKGHSJN4CgHOAFaiLEGUC/eSEqdQmqUz9kIU+o
KN1B79Sy5qJONb+8slKVjnQqLbodGce03C91ZlTs+tFa6U/OoUQaCF3WTlGAP4we0pkwhy3dHrWy
Wh2hhDxetEZrWMuWR2QQCUg2p2uvDSw6lfMJAlMGhhysHvo93oB/7n26txSyIWybNg1G2l2TpAin
ggPXsZZQe9JeD9zWJuBshStZNlOTPXHD1pXa3WuMzJ9cPXaBkhxnL/AQzvGTWi0KLnAZ0C9c/Oda
cweckv0p5qHEhAyLUNvgVRXO6MS9+sEJA5q/AvQjH15VNqzNTwrr/DQccboWotHMesNnRf4SeDJp
OJ1pSkvCahSokq5O3RfNMHg6MD1Y7rCN7DEOvPiv6EAy4tP4la0ZbftrRaZyi16li89VHHqsl5FN
E8B3PUFSopcBLQaJM1LyQKmgagMlJzgVVWCbvZrS0aMstsWm40rYHzdaL5K5Xd4DRqRJKGnqQz6V
Hn67UNJtV+GMdMm3sKemoGucqzfX+bEPASZWPwrwGQKQDOAvu7OPV5yArq37T6pFnFo/UiRlOanc
YvaQhHQDkIAyF+lOeGFusC8/2OcRzEXWKllYnEUeSOEcaZUGYpAFvlqXpMFEJBNMTKlGTF8zEL54
kU8iwNnkEUlRjjvIAy0e/FiZQS6y5ZQXiLTlPRVWPtMCmlpm7ytpa8huhV9VH5zVIoaoOdX50VPb
zDcuUzbWjsOibLxxDD7IzoglMtEsDetlXdD9tekq6F25pxqv4bBsHXQTlqf3JsMDxYMY9jBeJWeA
btBfCaRIuiBdUpCOPxpXEt9L2DHeZASoLy74gK8HVbMiRHNcZFTffia+kzC96WurEwTlu+M6eTK7
GLSMRiZa3/emuH8dndNL3wSKAW6YQvZimKFc+FUi/CHkfrRXwhk1yjBv/aRtcu/i875fAlXJBWm9
xPQgJ60myxC9jWNf2DASJ5mOMfIWYjkLwF9Q+LbSwAadqHPj0+RK6/qdAldFBphEk9wn0jTGCMRT
RryXQIWcuQZrLmdLBfn19z5PSXZsidsLvUIjJ0QMhwmd+p34zr4dm41YjRhnNCgl7LTNtf/ATRyK
JMHPzgcvg6JrYIu55a4m4jl3ViwZN0OWWAM+Cl8VeejgPBqztD1po1FAsWiZcUhr+CDexT7g/oUu
aW6CCK9ao3wQwLm8VECMoNzHVx6vtlu00gqzrdZdHhzuLjffFoWmlyn1yhphQSjqwDHZFGlvKf/P
iV6356XuPbaS2N1hZXm2K7YAX0CNRyJKLVyhss5LDNP+9sUrGpOmPuyWq1RWIySzzP4vsoxJaTFR
S2HlGpz1saquNW3n+ko7gFlICLODwJ404LbUBVBIDZDURnLMaTkBRNdo0jfFIcDyaKjOLq9qC1yB
TnEh1sX655QTlABMFzg9yWh+aioSPhRxA5yHFfVZWocpUy+JdwXkVp57f+DTXxRAwA1GvDws7IkJ
Qv8q1tMtWDtX5P94Nm7QEvGwzJg9+nVJEyYzyDOY5ublapaEt1N4TfszhD9f4DHwekrgVDTGyDuM
gpzPGxllk+bGVc4b+3a2LN8d5Wqh3bB1y4LlUTww4NKyuAkkhPIcvygOoH9rZcwpqYm3kFrMb48w
WWwThjKo7fljY0D8FZVWM0l4c0ArKAWE9xIH6hxctD92GvgOTtM6oJoJgjg1GYRmNyZWK1BVlx62
mRU5FtSbI75M3gz8/rRFozg9RChIsNF0bNuBZiSgQBaUpTxTaaD/opN91AjIpMWrdASb3kPcYTRX
EsBFw35tdVrlytmGs8LHOksNAaRDLiKas9HQx96Ecbya97OsVUClRkcGQ3iDDxrMSbbVHdwcoEeK
QcO7LlKTlKkU5cQvL5erfHBCaXgehTHMcPANBbnWsf71+VZDpUu9LApa2DB6IVCLIgO3u4EV6nIc
XDxtSQ13Q6en0ewPVlhhPsupQq4N1qnuFrjo7mY8ITJ11PW1A+hVdQfoG+JQtFvTGtr5Qy2EcVd9
E78ZvibRn+COwGSjK1SdqMFSImpWpREWuKGKg+5f6iI8dBz6CPVhKGN27V2+O/1Qt4joOx92S6NS
F9FQ7BrP47m69rs7QddWjeJGsh7nxK6ASVfyPt4ivxCvRL9EkNyXw3qpJFMmEdPRD9sHj4a4fBXM
ZEvQcipNrmNwVMjWZvtzGCRkgs8+RP27llfCN39T7uFVbATiZ6P0oP/hbO0Zj7LvSES4Xe1ctbzc
CIoq4dZDEEknx6o0nDDAf3uZ4M8rh4GyVmdG/yqzLUNhdYkhYlY2OuGrY4Nsrf8DeYJip/g5VQpO
Hkzj5RRQk/3jAxng1/PWbnj+h9HGGFpIRscvAS5OOJdqrNx9wG0wiLHYsQsg6iHVOs5jfc3qTyCP
xkvJf+i9HIYsu3NTsNj/RjqN/uCLxuWjKLx3GnlPFyMhGLqI8vIyTTwEP7vUgScefGp+yzqpOOBX
hgWLQLm3DqCa0BvNtIF2OZMg5Hfrfz/hzLA+OaUiaWlunPAc6EIiFC9BIXKXVd7SNBBgjTuwWmg+
xQUDihmgAmJiauxT5a+WlIsrYY3w9lZ+TpQAXszGpZIjgS7zvQd5Qrurl7WyYcxuAtltTniMUIuT
SynFobwfZwZl/xf5M5bR5UWP4V/B+g+F3aJIXagI/yaCZb4kJrirKVOG8+blDkpy/krI0hi3Eu1R
zrDrG6BlMxQdf3xVDsNIlfPzQlSJSfv/Y/zcjxqZRtsWz2+kl7KHlsEdGDzGTTtb2ucCtVqKIna8
nbueBWCe1tFUGWaFB8nWIdAYypkqpMZLWIrvlcMh+7FR3yvI5ZZH/pnZTbOKJz2WiHyYFaZqFz6T
hrJ3MMBp/MKGVV1AUWgt1BmgN0c3aihvbU4IcdheqGn5yOfN5xX18waF/rk9Nc3KSLjzcgY/rxrb
/4TJK2+kMxf3p7wjrzaEsiCAd/gANVyt6q3LdhDPecf02peoPnM8nNmnOe3TSMG/5erQZbd7Q5I/
kqF6PNss8CKynW//K49iCwznfKaBWGeXxjV+v/Kh6ktLUeA4FG1e2ynCXEhvIe1g0B28/oWuJ5Du
NhiENO0ohfYxwIb4Z23d5l+5mPfz3RD4RXER+Gefgsoq+ExKTq+Q2QHfhOvnVD/t0yrBiJlTY4kg
CvMZqDFa91uqQ1RdiunnE2MCFiu//iUFXaktMYCVT2XOoOLyfty3bZOxnGLaX45juN90ySVH4rey
62WrrEWFNNDjgMF2mF73bie6qT/zssYUJI1aiZDwkYtXAogtu06SbuOjy1C0bMyCMzZKsqt6SxbN
70UJeh7OTtKqkT+K0Zx62FgQQar3swI4eIqFoAoms/EfWdd0UGtPlvMzikNXOqUl/IB4cC+E3mlT
6LfC4duFQt5y1W5FZN43JHZ3G6PKdqu8WP7NqIFmArvNJL50VFD8Lj8hYaBJKdYby9jB2R/f04Yh
6H0BKMih1KwmH+sbhfkz+TRJBK0oXfqBwQUGPJynhU9HvPiDwjp53jl1Cd+vLtBU2CkaQWsK0+kK
FCnW0OTfu8d5qDmi1sk7yPoEGZP6SBV/DehztWTKpkm4kV2lZRdyGk1YK+I0FRof3foXE0bdYjqq
k3PqpDm+8/pGbwJbFH8XBxYgY1H/k9t/15RcGura7+IDzfo2brY58kU1ukiR/sfF9ze5dVaEaF2H
pX2Ln5EUT+WnCeQO9ytcE31oDeySoXfCq1tnuBajEFSDJ0Q8RKJSXwfbch8TTeBxlL7ls20KSgMb
Iw60wK52EVtwsF0XsCI6w4Zu7BHckrAgip294vnnZFhJ1gR2QM5WsfECEO0Qz2TEeAxWgQIoklku
Fb9maU1HqWlCYprXJQ7t+7JZIjXpdbM4Mo79j/ZTlYeCQ8DM4IkgIHkw6S5t+cB8/fbWI+ipdovA
1neR6BfH+Jt8yxgVhSyBI1jvQ0yDjLGdwDcPUT//wc1ZBF0rbBm9goUBN2xiw7OrCIYSWJbwfach
QIuKSdwWR0F6VnZOEWIxQ1EVR5AWIVxLcX6wAb63u2vcveqJK0bY0eKugI4PV6iysEwnPWxMDPyj
SsZ9mAiwht9e0mx+dcckDgiwyL6MXbY43cKynneDE4TcEgIJlPtFk4LQOArV1LkDTKzMtIgXcqx7
hBToJ2R1Xzf1OLtocIHTTlVbAWgI7KJAj2ijAKBg/HVaQQGb/YsWeSum2Va3FxoE1ujTeBMxUhpM
Nz7uj5o3Vk+1axmpsKtdZoXGFy0Tn+3AjDsvnG4T8ajTKlJgxs1VzU0vkUWU6hJC532VOrfeFQ9A
xxKj270s/7SMc21UXyLXKJknGlEs8UmSprGfVtFiVPse5ub3119KvCAWOYUaHzy2hsyCE2jZmax8
7rxn5TwoCZ/lwjG2+gHoa5AV6QwsgHulO3daIrNMt23H7ILfRPynpwVsnvbNi5KZncGY79XbP3zY
JEbuZt0fddzp8HUHJt0QhgRLGaiOHOmkbB0BvXCeID/LGkXBrw3Rkk+1XG1jiN2i6w+vDVJHmfjZ
rrDMVnj9IvIMiIM8g8o4OOYIDylxk0QzV9vFv5XY+uC+syjnYXOlSn0uDmV2xOrxk2RMauyxEVj3
iHBFa0qSvH19juesv/vObJlox0WIlGoYLHUL614IDxxqhHSuiPlHxItaKK/1cbK5ODvO5BWvl6nR
zfQBlM9+mH/94yseio83fSOoPfibejmCsqn5m9eUWQR/rL4xJG2cJ6YdGeN3/XOZlGQ5MpPOoOiQ
WzBlHVxJvP7WKqviB5WqdibcDqth8WUY1uElD4cGTEXUjv89vPEKmLPLJ77lez3Cy1IMe/l/ltBQ
xqZrbCVl5JdIC5e7ZX2scG5agX1hpUPzCtBAkf0ATaquU85do+SEspK5pSF0XnzYILZDvc5yuLs5
PitQth8IOVfTg8HRIJRoOXtylqsyS38MnsfICZjtHe56gAy6l+k9PJ+jV1iSE65E0jPOvU1sqb6v
TW/NztLph5Ii4M0aA1exSHjmzb8hxX9q0dvzcKGACU8k2sier8hcg0g1UUjxXo1v1Z4dFEu+gEML
rrdapdY+1mq+r83D3bne8d1ha8k3jWc/ZBUJiYfhgWy+TJv+hAUbEvkW2tvw3uPa2M7wGg87si3A
VJjosY4DOq8zF6jLDP4FQNIZb9CySDPgEgUcpiJYU9+wP8d095KqxmFR2Dcw6yYyeYHwvuoLvPu5
Qac9sAffBdEXz5O2/EkIWslXf+H8sQedpTFObi5QqhldvL2oNsZEi8/SIo5JT3nSIp+WyhR+ylET
lFEkGwAp350qTVNbV4W3g5t6JbKpWzihsAdQKwrhIZXzbqoNQ2QGpkMFmGAVyQ4Vi3fAvLY3oWED
3kkA8FyY8hKWQNL26XU3g3fdiNEvmFZue6pEjS+YA0nmADQaLOZsL0RyqJ7Yd7BksF05FbVHHx6C
22qY2UpzJJ5f9GP3e64XfAIfDl6MFgQ06CjdSlXfDk5GjZG4sslJ7+NZ5sGuc5/Aryp5g+fFQ7yJ
VE3O2glsggmvyC3LL9+qYZJIRDgUzjT3G7YwKDkrkmUd+w/pgGPP3lTnuhnLUl50Ni+48zNNygCG
ytbxSWV2vh2ZId7jYd3p+xjsiIWkHnL49tEcpoPrwsHps4jE6NT0uu6eFP3QuDk/zdIsG1VnaIvW
827eppQoxPH/G6qNmEvvF01pPzr3cdzdPfDFYfqliOPTXCu0NIOTj3GkoL5DBhs9EU5XMync/3X8
n5o+jUyuNNts2nmxcs6uDx8NbKZCgSQfKMBM5enmVaESqyoDXEXYQnYcq28CrPaQ6Ym5rCLJc2l+
cH0t4fdoYdbK52EyZ8LNxudN3iRKF3DF2EzStZ+U0lD9gVEuoNkd6MQUIf6likF4wUT2DXa23wdU
AzJrwBbB/hbsN4B77aXx6hp2wJ7yqOLOIpqIZmFNOHMRHyixt3kwlrvSXr1NON/sX9g5Ff3yTDli
2nIFhOBmr+hgjKOoK2omQyuFanpQjYvIwpc2hTDDTfb+C1r598fJmdsUqMFT1nM962ahyeaaIrzR
/8fkQl6BHiZ6hZ9lPaKtSOSSYJyloG8Xqj/LuWtb9csP06POJUb3G8f6ULefdC6QdzT0wX/eXkXz
ZREo5wN7Bm4YgBvdZkm9D0p5iGNzNe2mPov1sJkw24CCvlDhz4WacgXzGXODHihmHUvkF+Q3pMch
/kYKEEuxOoNnxhHrqyYPCZtr/2/4eR4+9Zn9EWIcD1Kd3yI2POUL/xPz8eqoHEEwvvsUCOxMFLDR
JuHoI9h5zIOSrfpnny5z9mWhdP6bluoSc3JEwvYRve0LDQWMgqLxeeiQNUNYTn4DfE8uTTXyW06w
/l/BydZaOPqMWwqEhrKtoKy/CNAs/+ndII1NJRpH6+yezmWUixkbrkCIFq51b9MB4IbdyKQ3dEOG
zuI1CNG7OOWLXllNDLM6LJmKmrIn6nsvKn/nlIG+hVWA9DcFRhqYIlOpckfJvkPyPXEj7zRvjcrO
SONHqtjUvtnKfTe5p5Vbd31Zru13Z09tGAvLhYBKbHuO06/x88FogQItro4AQC6xzcoqz9qK4aQA
X1lr/WT+oxOy7s33tHh3NyD6aj8hFB7ri/P0n+cTyqLdNze/G/Zsd2N0SD42DBivqZesrSreox4u
Yfbi2mmwqkwqvUZh7mTssjppDmctFsJiUMows6atcjBHPIjbwugULIsnwHDQ4TsVY7XuV64cMOaS
Cx/vKp8JUmwcF2288NwWL2SKDabEkj+2Wly78RfP3YyScIljNOo9gohbiVD0RuogBYoZdZlY9O6D
Oeolr+KSI9zrZInh/K/SMHG6ZNgqM20awlOFSr7OPSbBGK1CmA/kaCD0V8oZsGyNCz13cC3lsiub
9USNcYpHl7VAWLojzz2DJy48AL/3CSFT/K0Qnd6qsAb5A0ac+i2BFn3R5BzA7MPeoUMJWp40tVyB
Sxw3mWFsJgCbMwwELnE9wh5KnURsONwS5FZVulp2xNrds7Uo1BkUixAc6nq+BxUvUrRomYregyMU
9pwz2ylGkHIkavYHOdzOF9nXUobtAQjEPIEiI17UPvib7qcIhgfbht107ieDF0EioeV3WxlFkGPA
l83VLLSnAjzR7PqNbuSBQ1TERLvxMGQRRVoTFwQQgLd96n8MQFdr2fW38gBYzdDNQkMzCOow9tEn
wC64NerTBGI3ZLS80+UFB9/P/1HpQSEByEMpl2L/8OkCpHKPZjeengzlyRtIhlgn2RrjzLPXhBHz
JEhW2FYCyAu7yQuPoZelFSeWZ0fqSK+wxVUkPSW+IPdkE7fxclHarC8lXnlz0sQUHdtF7u8jlvLU
fLj0IU2aLhu69IaX8k4Ak2C0kY9Rn2BeGafjq7c60Ie2Ud7Bhs1jRuCe3qf3x9IIhoGRbNfVQS+g
I3pvRi6Z09EmmVYcTXvyQoMRd/hWp5frNgD6E6AqWLlpE6L/2SJXZBJqiFWo8z8nttM1CVweAwDm
0405ANwR6HLmh5GNlBl6Hh9HZg0LDy2S3ZA+NQ2SVc31FwNhRC3I4w3DTjpR3ezVkXION+LOS5NB
wDtUBLaLvOMQENI6SIQacB8YK6uCoyvjKvEedvV0/ES/pUg9GYjjWJJ2x8FU/59sma2tZnOkXe4G
TntA9/pNIGcLy2ekk7w6oCMbU25fE99pvJFRd02PvXUy7FOlghJaPQbNF68eJaKTMkuJN7qTEUwh
xlaeZzU2oYWzBgaTHUD58O7/CUba+6DOPgIssmGDqoGi0Sez5MZvK6MOt9fZ9u1FrBRuUvCLDFDy
52R7KCDQdPQBOHKrkaAYzccgaOqGZ+4fCNc2MaFDZqeaiK/17PYWARBx5ok6ZDfg7EeuqteUZJvh
sQB9smkX3xLHhsgEX9U+P3VuHla2np84Fmi+LLjNznZePnLUcmQsO5jNnCkAeglX194IVpz8TZYF
AWSzsml5FuDtoQd5QFehM6eoHyfg+Zen38wsU6kuhmDrRNuVD+SlUFtQWcw3AakMwOnAt6xAHdMF
5B2Pin8+DWIdLsBW6QRG8Dzgbw4Z53mBSU4nUiB54DjCnBiybQAlw1KWnQpObub/cRq3hJ4cCgjf
7hmbjRyLvw3ZI5Fo+AXBFPV/qoNjovBI6Ed5MEqin7eCQ/yTNgQNW62g9R+oEvrrBfBrcQlqZuKx
pgq7u8G9m4fEJBVijc4DRs2zA4zf0Nmyw6WwDU99fIyDExIymwf8wPmwAPJmqaSmBIMAhubc1dJZ
k8hiv+Wqnc/AibZ+VJ7bdsmMnZ2N1bU2Pvv2xxi7/NtObKmwoU+Z+vEsPdtlTr1V/pAkZuBu/f7m
X2hfiIx8xN2WuL7eAahTZv3zqJeONcf3/aPuUiQv4gMiVQIqi2ftiyzJW6ho/yLDm79NIFOnLECv
x4rqIUWpLGTHAfNP1ckWH8bj5N4sCySFgKxSysQy8uAULG3xH+wsmSbmOi72lnKnqkDveXnd7+OV
XIRvzJKpKPSnI4WiBN7o9fnVne2uMTtnc328tCtUdWz6fbeFk5tjoMYl84Egi/19EArxJPg8nBeu
TwA41sv6GHbBuOfWFWs3Q5KFYtjPhmg/PLI6QZjNbXEO05uHzMKrG3EFBvgC6x2iJ4+/DD7zRFrY
aJ61L55IIj3TOtuI+2Bnls7QJ4CgmlOYFMKq2qgUdlsWSeE1ep5CQIKwI5DdFLK+pooWEv227QfV
ImO81P+TY2MVB+t0GZkfEtA4ER4JFcKdbi1FrnHVHVqvjh3NmanqQ9iGSHb9LdDuvvoajn8Yi2sC
j7/vTqx69CyS7tzH3DwWyFZhxbDmesabmfLrMOm4A5Z/lr9qGOmORjRM6ATWYaIyG5Da/ybUaiKS
ehANxSVVR7EDojRqxD3nxFYU3HJ5aLX8bqE9ExjIdozmF216cYPvBP4O0DDQBt8Ax1V55cuVEsPZ
HJKTjZAyiHeCL+v7zyjnf2ZLMQSj/jtsvLl75xsGX6y4ErvexfVnx5jbDyroUxOccp4QDgkYKzf0
cm8ftQ4LLoDDNFD4kIcptWhEh7Uu2ctWMvQXcDgcjLGa27ZTDfhNUl2j9q+1Z7CSGlWQtzpjfuzW
7i36w1kxS9VkpBdyiOyWpfL4qLhB9mZ4PBNSDplrPpKLQCxJPYrMmLYDBGlilfxDtRMygJrCpFWV
zXRgdF0qRdMy01WV3IMwhLQ9I+jSlMZ3DzDx3fwWhXLa2CpFRXtT9MHA44HTi9YYTlkh/2epJAai
rnI7DkOiKS5xhxg92fy92909pRbntgOPwRmPXfk4GT120oMO5aDwAQqVjbDMzfo+mQn4lzDUkQCH
KcVNoNpotXhbkqlettN1wtsQmWqPr6m4TKI3Uh9wR7mB0sJISgVhhqvT3YuCU4k718t6mzyQDD2D
IQlzG7dZs9f2VAb1pz1ohCkNfdRABbpqgKGob02jEL3ib2FqCNLQ8QC1RyyLWk6XHXpGvls5ENLe
gDlnCwMHIPavSoE13kPzESFJjE0QGXpdEDGOvrfY/iTb+3m9wUgarYHJP1O7h3erDtnSlW/AzMaT
S4ZWInahrr/n5jJYhWL8NkXPxMjjIT1Y3oO15JgiSCZTKD6+Sth7sHx3AhHXqfE2+n49UTTweFh1
KOFbl/yHdF6nbsHWIgHXwh5BS9tP+iXv8DH9750vPAXsoYMpSgiJAI3FDRdJ7XiVdWYswkCaYoaJ
aHMgC0lF40yPFwiZA4kiRMhHU4fAMVb49ixjyIb9TVh+RfHOWLQAzts0ItaGSvtr0TmoAyIBROMd
YFcLw54Jhew8fHC+8hIJUzINPJW/xHvOO5RUwStJm4DgGHeWVZTkAPj5JnwacaqZQTCjK+pVUBPD
rf1PtSipX3uC6nNwazpu4EDRicDfNWL7ItE2jenT523GpEV4OS9GGWdM+5kwrLOmfliWEdIP5wmq
i7Y4FunUsNqpysWNES796dgYnRVwqtGc0jel+IlJxPe7wTAxnFWDl2bQ/HbbvknnVZP1bAdVDKag
/7oNjz7bB6TrRZ5gOzdtHsEc0/D3mOIOcGta3t3dRsi9WOcUM8uk2aNNeNYki0hEdn5EaWlaHQFy
soSvdy4AtC/TCcWqa4BRepKPrFskocdO74y3s2h++qDCo5iMEvfy7DI6OvpD1Bs5sdcenMTRO2y8
Wz9xEQ8N0pHNkMW7GrVqLz2KT1JOElMEjFHcWgvKbRG71Ay+wGUxvop/O3vl4X46FaHp4tFuyr2l
HclEBewabk1DF1GUKcwp2ATozTetiudfgc99+/Sd34KWRG9ZYLmkv3LP/Z7sCuw7GFRYn7r2/uuE
f8fE/0sRZIkR8ZFAX4m1DWTAq7qBuQIc2Ga/DcD1ako+VtQX4s3CvOHMJE5Iwi+bYimesDK1ubfm
qogXbmXRBWEFvehyGFlPHT6LRmQ+C9S5EICG4r7Cfz5armRa+Den6h+HY+hRVyTkc/gft9YjDWhn
9vbJxy8OI6IlB4dvSp98yl/jdLYzGG1g72RKulgtp32VUUHu3BPvrVLf/LGYjKuXpYbZkIvuA4oq
l99vnGZXfEy7v0amji8AY9znd4jV+007TRhkimS9DB0HoGk/MkOd1mQvMpj79rSwNgzugbDj4atC
Dh4Nd4UcaxPBNaf/ZiSsa8rE3tnxjkF5m9LtzfxsXqxYbtWz4fDnDsC8oMP4nq3KtIGC2yLhMn3b
+VEqz2wXsuK+rTy81Wsj1LVqIm0DtejImPVdN3/Hr4+73cStuZyXqoNin5lGfcKfceX7wSf6hjsn
P/nj8rlE69YHd8svORBk9ZaCoVj9OsisSXurTTPaBzawv0I6FNO+NxQ7QvcxT5mTFWdCgN+iuIrt
Gp4NoQFp0FQhrBY7qO8SR7WVJkfxzfkX9NJe0zKH+4opXU4WN9nMI1rjzNUpvjULHPfi0UUwKZVw
XgMX9HSU4p/qEZ6uNrinqpvtaRY7kAKcLlRcXjeNpHR6nDzVIhV0CT3noNMI3/P+tt0LzfRW1epa
ml9TO06pYCjeK6lgx5mI9nWhQLmRkbbFuJ35lzXunFHunk/JlY78/IF1tbKItbqu3JeYTuEzdxav
b5FDyYx9RY/rc/rH2+qRHa9sBn46eRhHlmcU7ctPjAeVD1ee9hviZ2pFoWrL2hsy2TUiZ0r19e8P
XC3gLzLQ4ArjXefnYie59xZqOrvOl81Y9oLAWkg0+spRPDpT07TNYm8jgGBQLj70i7DCg3ERiyPw
VQVuoiB18uvlm8RVsLFqHut7PxyO+IRABNyJD1jXIc5S3bTfNb3rc2kgxbak8pB+GPUldtP4Pw5V
WfMXMIY/w3CNOPGqbCEW7IByWYsMLJNc+wX7i88CJEtbTgN9r9fqQ2NzJxVe5JUGSsgWf+MWus18
Z8Fw+jA88neKFWhwMu52PgQ6MjdQYBhN5Cz66ABPVZoaov9YhujD9mndDbcrKdUEPvqI11TPb4KF
42TrqT7RufyAEyNc1n4FBzOHNiXG3ZULhgkYqQ6xGFnpUuZaBgh2GIXWXyFgE9YSck8//ESvQP/b
H2XQHxbCP3MK2TCh3P4xm9pNY47D+//iVOUBs2PBKDUtlhfSHAp4EKaFTHoVekCLtvwPTng8cxwI
RrUhpVm8JR8DoyOs0s2okA6QisNq2td7IwolWldnKU/bnv/TBokMTQEtjXVROXt8EDKOlEUdyVKt
gzDIpHtoPTN7ibosxCIue6OG2rH1PLzYMowBfsgbzu1Mox7phNnmCxRWc3UUGeAXqlKw0R1qxl0e
nDpfV3pGLbDGTsPCa2nPFNM/RxJcVKDca4bIqTiCzUudiGz8h9m1AecC16lPau9ayXvU0J8bIqHe
luAT04YHd+uJBxM/iXOyz0YOW/G9tpRhwkPhiH0Zeeja0vPwBSBcOUJgjnG/xySqZ977hVYg2Vzq
4C8JzfLjQLrPlu7uYP8m5732DV3o6KD0eVamrAfB+Vg/wgIOnRQWbAAw0c68N4TzmoE+OGdbsYZo
QgMHcqcFxE5/n6cWSt4WrXMaOnhmJmPBbJpjo2GecdchU2yrj/VhGKQKTfmE+qCv/b6+HesI/ADS
QGUQgic4bEnZEEzvJSdBCl9JHzIHE/5V7QWRcNT0AkyhCClNuHE1oSz3XRSLEwc9zdQBwsAAGGBd
iLImLufGub/o5q7CKW5VAg5HHIhMIp1ojtjzh6X3txE7PVwVjHenpVnaChe0QHO5u5qOYeN1SnEI
rr1nPlz21CBgkIqyapI72ZLPqFpAhyYhkXN36RV8hxA+bS/K0Yaw0J8pbVv/qUDsKYCCpb4QjviB
Tdoyg2RJF9vx0q+0Hskk74wTiVfn5/UVdkqak/BGbmq2sGNAM+ArBvJcHIHZaY19fD087gVShEXL
hajDfDe5APAyTaEDjyLZVISvmTfjr7RWDcIvQ5EaL2+CpQDQoNnGZN4Vhh39B71pxkio9fwyNyV7
sfuZaBYinU1eJwZuBg1o77uDHHTpnEJu2w03AT+ztMqKD56eGZjF4xdYtuBM2ADAgvc8PpmP9T3U
JHY1TYnwgB0x60dy6W1sF2kCMCLj/ODZUERSNyqSgW4Szgc8vXygZgWyz37qztUXeuHr0Vg3NyRo
I9iTVkMFmLxYLqYkzpuLffrdch3gXjybk7JDmo/GNOkfJPQr68HgPwo/MXBv9nmDF7nyIeES0kz9
usz1TClK0zm1x2AEd4kvhq+fMQlJhsYORCvOKDdCE8ppLZIU4YgRjfkIlF6n6mACniX1F6z6RV1A
XRBh2Yf4TYt3GXPCVvm8d0i6NJOjbTbbJntD03cxogYdMkDBtGIu6vqwXBJxjQaOVYT+Nhl415kT
nZ4Q3P3ZRZUhfqJFBWio35To6HNWbdq11oiWbFVobWROiahYKwBfesIb8la4Bsq5vUfO7sYPeVIN
AyRKkYA1PgE7P5cZ6dyvBbvai7ivtJ31Bsd7SJEZfqIof+IgalCSExKxF5WS5+YTF+Sf41NlYx2c
ofJAX6tZrzU3UHKU76x+EfXhCXjfl9tPKbWKod3uZ7U5U6L6RfXdBp7VzC0u4mSefgu1fXl/A9Ap
srfOAlif9cejZupk3FHvnsL+v0PT2G6DOBycC5KqywGlnPIcoPnYogvBZsbZcLu9H6BenqD3jlH2
iwqTEaOyAFMeLesXmPBnvdiqdyE9ZuyG+aI8lFZXMBrqynpOCUGvl6VwpcqhQUxju+l174aVo3oB
iySfm5YdZzhphFkwJCKwa6Sf3NJBcIN5DpGJ5+o20XjacHqII308mkDmuQahyhF5/gm3zHIJkAVx
izNRU4CgEgwFnjl1praeXUvHSHdJzmeSWlM5aQWhSpDcqJj1Jxt3KsEi1yesBDVKuEGbwtEUSnV2
1GaAf1Pwa9eWHelxNHxWFiihYusrAmqnFawGO+udnsMNBnZn4q1shSZJYEE4WWgUb32UtVOkWxLT
baUur4+9DP4EszZx8C91biTl6IkIehC/kc7FCmityiZkCagI+QDfeolksCSpl3/WVjt5xr7Ce3mH
JRYljzPYYR3cd1r/MFPHi9g9X3Wlp2/FGABQ+tlFCcSdIajpUgXKVIIJbFXlxK5B7sX/KmQajQNT
dFd00gL85CQplBhiu7H+gCaqm6pXFTw/Pxpg7fQs0F/ey+F/z4qMU7h04lQ8lNdNt2pD6cJjRBXB
Q/nkSh5NuBUh3IHxtjpHWlVEVpWl+lHAHNSxE8hya1YXtD3cwsgyX6Q1DJX96ykIZH2Uk/xejtnW
RzCwzUOkPyYgKzACiKWJyfOt4RG7de/HIFzW+djuOc0FQ798wkW5GZerEVO8Rwu9AdVNRFmyK5IW
eA4T1JK0w6zXGKDwTHw8slXm1kiXScCXVzhgUDohkXlozxzUdYoq6E3e9540pBs99cqDGvv8zaTh
D0FWC6BueeK8xdtd7xhnpKUmLCr5OF+HFp1kIN5plYzMz3waAGCdAlE3tM7kXiLVHO6+MpXi350P
44YVSOJbCM0rrEGrV34nxd17hJr+Tn1dEthIAfFGZAgini8s5eAXcIleEZjvTQ5XQtG2UG+tRFJw
gf/VKLj4ieeDbYIZBQZaxoCwWipfWfylo29LLGdnlipMc2z0kr8M8DwW6BqHp3ENKgUN7EA6XXet
RRPit3D35Cstm//Imwe6R5/rqtYroRF267xCWSePU0/DD2Yo7CrGdk+E8wkZP6zLvagncl7k1Idu
4nWPEVvu5gz6TWBRy7ulSLQ/qmI6tiO857qI1dgAu6hiz1MRpNzl6pSlN2U+8h4U64hooPK5tpxk
y3/vGmwB78ggOeDz/zE0/r8poQaHNieC8SxIzZ4/zl+89uX+KhO9jX5zSu0boQ8sQ0NLaotf68By
YQFEjmWj/z9An6aljXkMg+Fq9YZzURPkFo+b6h9Mbxs4KhfQuE6N+iXYOcHVT+P67j3fdFKtRXm5
kUKhlGrf7hf1KhEFThNyxrjZ4heakti5T95YSQHkEpQXAgVOfBmdv23xsW2Oekd6M+xyhLj1Zzhh
u3bnHRlJC5eNKw0KgbuvS9ZNodBmUzc65O/54fuu3/FrL3KIRfFPmOLML/Q525k7YqRSdtlCJQ/n
wTeeYze+LDVv3rl+HdDaKjHRafD7bmfOjtOhc7M3/F+f7+Jd3CJpvrv4k4Z1p/gqRcgOHijSEN2O
Z4enJcTvVB6kWfni+2HSuB4bjeYYtkEnLIEFYJcdva2W0NM2jdkGlAaTfI4UoQ/pYd+Nag6FfvQy
42SMifLwvDuqTfrhlnQ1+Lc/NBwReUC5ofNLLwxqZpGAbPc6OoPdRplhzEhvTXj74IiEKjVaGEBY
PLR3qAWOdYM6Wmbr+A6cY6oX2mMOHrFuK/vvzMQyp8sz80X/5VqB2BaOwxdIhoXsdUaVTmVjy6tX
aQLusTAmWThWMKwSIjjz7UIl+UOMdzBRXIsgUhDtEPniT0DH0sne6lIZzIA+N7TcCXQpArRE9ElE
dOD/2B0YPzoczsEzvXYH/U152ciQ50CDrtvRzBMmBebbsrqrRtDSe75hxR3EILIc9l2Z+krKrdCZ
3oML11kHGWYLF6hSyMtbXvMFXHYqbUJ5OzLHROPJkx4210ZiymKJf6QszEnSwLJ3nOy3Jq7IB0m4
wo7pm6DfDXQibsa3Q0bbO2X9yxVVBTrm8CjdhWCt8DwIhlZXGYpU48hbZozlyamZiFHD7WIMDCej
ins68/rwzgkcKNHDBMLOCZ5kYYFW6IIZLj164zYT5Uhx1+S+Lyn+vvZC7GmEIStCHNTfjvE2DO1o
1yPiRtkv651IHGlsLMg2VV6pzCu56M7vV5xJHV5VsShkAJYucPcwPtDebESXR134mYB8v3njQWip
dGhP+vFaWuX8EumBpsMiXJzlF5lnvsi5KTgXCz4Pq/2Wdc3vznGzJ4dFqzyB0Xlqa69kLfIZq7Mt
5S3vyz+9VD2u6lr1vp2kG1Jh+Kt16dncua6NEcCr5SXDBdx42aHMczzbqD7BTGufheHVPIt6r2Yx
InqoBRPSkts9mxjD5m/Zm1muvo04i22fm4fw+9X6J7IRJg2F+k/GpgMI1e13NT/boNh7imhyx/DL
lWm3zJdhKJavAeOVRdr9cwvaIXAiktz7nvLprpZhcTk4OgpnheFndZM7vnzB9uLqCqvVrfOmTEoM
HEwHloq7hBiSZg7M/LbZfrZ8Ew1gfyuTEu5iVPWuz1YzQVS/x4+hYJnmHJQuIXHu/DWZzCghY3q6
A6Zual5H6tDNQQObmdD7Ff6SweQbIKs4+zF3Gx38QBR2cK2gBe//gMPBryk3aLgCoW+JnRor9LZX
KPPUP27/ZrRAZQTy2QG7FGPmW1+OhvOQQqYPcRo5wab8IMX3p67gB3R6uplhqPyvV0NVHXdRTafi
8aLNvJAIFahaWfAwJfvKTnyHtOAElKEYan0yYUzRKpbfU2F/fG1lMvNuLa1XniTSz7BHzR5S4Kne
bT+bE3NBgOfGRlkV+Iry0dRejOz1f2yH5nlaSULQAotlRTtPoxb1zTuxq2mxz11i+IpEHOgQ26cf
vmD/a9c/ZiVZXbIoEgdzSwM7LI/4WIsLspdXU+LECmiaw5Kh+okov0eTIaYAipSlcVnbtlVOJzDg
0c3xphFQaX2WURqhdeAjefvTHmyjUQe1WJg3Tnna32qN5ErqIPafD3Ri0nsxjKZj0IL4AlAnwbKD
AQw8IqQ7IAejTTfIpAazvCp0Tgqpa7yy3enKAMfXLYXmCRSrwv57lmyiMg+9VGLCHkn1YdmtrMs8
/zKHB6SSORbX4/6+x07jRoMp56/VeRM5OsuZCGTayuhcpFKsnD+w7H1oyWejF/5uNGFgCay39RTg
wUMY1ujMbF0jFxNSD8r4cuXfeDdsNYUMelRTfEdfIqXDN8c/GzNeWkL34KRg/aaGMaREuy3wI+dK
twF5mCx0rHNm8gy7gRYEQImpicnOGA9mRW5TeagoxvC+P3+kdjX85/Yoa2dEjdAw7El17j00xB74
9X6gqasLGJeRv16nAj5qW1VRHENO7onmjytcD/7zy7BT0rAXfWDsb3gDp0Zbd/D0GP5VUmFhQZsh
VZe+dzPZ8yiuxupQHuRFsgwv5L+DNOC+D2nSeNae5GxTHQnh0iCQg7rD1s7OcDLzEjaqQpvIEnPt
4K0BkiQKe5/d5Xy4N6d+ZFKpVoDum9NOE3Ks5fvesSYTb/5B6I8E7zYy1Il7uNHdzGI+6S7c4DIi
V9iRmbKdmm9AKK46s/ZiqDH8HzBN2ngC6ZTHUBzNcqmJxKAk0F7Ej1lNH0/BapRf9AornYna0W5C
lSdvAP7PFkR7AW0RxHLqNbBvlhb+OPcSQRQv+/aAzXNn90VAO09mnathW4Rsrw26eN6ltBX5Kh8l
5IEcn9/i93WTFvWa/zpRnHyrh49rTrb+tx/WDhHpp2AtzOWu63yWCbW3QOH/NknmEWnj1wUFoxN2
+nlxJlBidhmltZsprndQDSQlZV+XxEx3MbuuRNucv4bjK8+6VnAiuOzPf2n1+ZNSCbOzjoBIr2/Y
7wlDghcvl8Uj0GaazrCD+E6m+t9/8vX3mvag+j2wQtKN3URwHRVrS9sMwOCd1V1iKD9L2l5nN+mg
oJbm+FS1sOMcvlUYmIuEAsMpKDGVjH3dXM3tJeKDHJljJmPnGtTZVKYJJ09EEM5Cle7XKmI2QWNj
JM85cNYABBL8rybs+EEJ1ch06gDeuGLesoYXrzkWAzNBdOf2BZHCNFe+m42w1KRHVdvs7uXjI/fO
/pm6x2oUjJHw25YitL2r8PWK3PZpQzeTNmN05bw9YU/EwyJB0wd38END4INy5ZU1L/qpZXLtYprv
CQuqFoYegKjwxXdgVh8+r0MLhM/Thx8FuWBvk8gsnClYRh2zny2OeBj0cMrWSP1xvGas6druufZq
8uFO/jdZQYnuKxzEClRicFIEGv/oLMOar1/ZsjsGFes53OSXktfYHAEdGPd9Oigv+vLGtA47m/2b
QRzhM9VXzcsgSmZnozpQa4KapeJTzFTpfGwjq0x6998l9Wi+zYDDLB5RZiqSm+YBrI5zs3V/jFOW
c6zk4mpsNLFU/wEAN04KU7vZzcqhCknploSoIeer3p8Rw/LXrdpnanYZzMf0TtAIIPsr5PdZ32ZZ
Dvn/dIxKZ3L4RuA5WvtV3vtNslL8nDUXNHtFydzliglNFBk+HCqiddhqprNlXduRFbTr2mlh68Ai
jUS7IBLcgcWvjRArTu5xU/C2ihvSMME1Rcg9kixPXegz2oiVcO/Mmn2K/pNhDJktZltWq/uqmXpd
c3+E5B7/UqBmnFsycXevCNmQ2ADqmv0vGvlVIvkNBs+T2g9aMEwAHK4qLEwg93awQe/ZzAfViyHH
vtnycOaHg8qJCtDmZUvnXNQ4gQTKCIHBLUXFq6ein0A/806rCbKV/mNEM+4cxzpODB4RyFR6Xsj1
qPT8HD0fBFOhLAJBbREnkn2nrtNTaHNAL+weX10ALF17Y1niWiYrZpWcDH1Ne/ttTN9L8r4bE8b3
mTDe8JZcFySgoxIkWlLQfyCLgwTug7VnWmU/05SxusuSthDgGgW82dKUU0UHHAZCjqBkDd8kS0RN
d0a3YomlCYec+/AQg/rQOUlkhyffrO9GV2Z8kEIPcmnp9KRUwNXoDR8dLzB9DeNNj+6aK/wcL0Ph
dYcsWPfD4uqJ2ZyLoGYiJ2Ro8SK/+4IkPNTUr5suKqySNm/5eLhrLhY3lud+KQlGELB2zxk0a0Pl
+SyZHzZZjrHpNSt4+Z7sUn2f3yoIvwNlRTeZs0j78WiQ0I2oy+hxKNEUy+Vvu1kHF03EgqmqKQBK
xTuxNdxhSJ5wuxLwU4fnqjqliXOk8KTiDxwsDz+xh5gzjyF28SKuCHxn1gmg83dEBR7m+rTrw0w/
jqeFXTZrxsAeTo9udzx+zx58lRtvblrhnq+MoRi/WtiPpaUaQvdEpJoFNCaXnslfhzOLhO6phjKi
RqVevVM6CZqpx6V5aUhC6Sy67n+u3W6LM77y6RokqCuT7wIbBCjvrQ9z7JMcZbzTproCQUZSCFra
CdFLacg+HuVkWCorHvqV4F1O168MujpfOAREsZWO7B9pB37EUAiXqgLpC0aPvqKSEqKrxlzmqOvX
phbvlKMbEgz1puBXqh6Z4KT+Vkok8WN60QQUa0+OJENbE25PO4qlHPph/xYvRs7UiJgdqgKr258C
/thQzLEIyPaTI+CBeR3CAdutWSwImHgxF0Y68fXbfXWG/kqmQ/ApHvFYc8FGchztjV3hg561C9/W
c93c6RUhpw2iTI2mQuFpNvTGX4rPtb8tjdlfj+hIeNXq05+LETrwslXdNXUUNhsZWcObEP9YTsWY
7KqkNJHLd93mzy4VSDPnrWRaBd+9TT+40r6RHIGKYCUE/T5kW3WC/54XUkyiu8Sznqnms1gAJFhn
UfXja99qAvHN6ofCyD9+nG3RmqqqfdEuLkY7LOs5Xw5oTkCqCToSzr3l5OzP2MGYyL8KYbiLwiWB
v3hK2rUZX4p/+hyd2/5cwnyJOJTYGENpFih6Yttfpjfswr8bXeFtjQcBs1uHmz4dotjqigH/5JpG
xy52NHs1yWVIoC3zaa5C8SmJR8LBNA+CcSBcgOYfrwa+eIodgAPAsSgrfYYXad/yvLwDIY/dosJM
PjYcylwRjXidnOClveYHJgGZx9TjKlaSa521OVtyj8ekUIZZk5Xqbwp+W54bENUr7jZAWL//dLF2
MUU4WvoqcS8/kW/ogHE0TS6qeZ2X1zo4rieWvlCh3TvMXRWvxGkfKsguhHg2m4iQgSuSkTV5AKJJ
J9JUkezZh5GilJ4C6jMCe7u3Mh7pwyqG3t8OpaKLQnQT24aUKFMUWkdnIF4Sf9pToJXT7UMoIYUh
mF6TsmTRtCfgR7LIPXgVvo2035IMSpeF7FgLpLzJsiisi98QM4swIpXvxfvI5rFTFg0Mh2fFwILY
C8mA4xZLj/PpH2w0jUaZVPH5/dtUN2kYc2bJ1Qx8Ef9QMgypNBR2lQI/SegcWPpmDBOkQ7ULHxZX
v+xaGNnSe2wt81j5bIj63YNDmBVoDTJaEVvkmUurhJg667AAg59CT3IJPexM5bObpxX+u1wvFm6U
5WcuO7Ykby81sZt+vzAykRyMVIcERFqe4KxJrEeIMqOEapyGWdB4U0NeW99o7EFL6p5fn3NfjIzD
kW53TX2A25fn7Si+Kj6Z7S4mN/pp5YPS+roPIdQfMCuClAgooQqyceICn2+G3gURFYPDWKHZhsxA
0CKnYFlnJCeCrgbXEC9pu7/dDhNfoIs8GMQe67OeaWlP5DrWRluUJtQTI25xQkGd0feChU077jaU
icEcNBdxRkvaS8hWLXIfHBx9ilY/lfOSnywAJo6qqQ0tOUL92CIFIqkIeneDDCX3YDhJaQzwSmTS
h+0Rn8t5l8rAaugH+eAtx0EMUWuAlgeDRqEsrNCFesKVUQheyQlMW//lNB4AcIo7J1k4UuaY4MRV
APJEXa5qVW9RIe28Jyh7Z+lmAWKgdZ/yR7DjTbk6xRd9LpJTkU9GzFdheyWxj1Zo2WkbTVr815mM
wejJgZbggKyLmkflhghKYeRVY+O5hrxJUp2GAoPWaprIbCfQjm8D8s156DBqIfCzNZ/LX6DrWztQ
HBgKVa8F/WpT0aPLqQwCbMqdy9QvSpDlzqoJa9WV0NpF5pqnE6G5MYbXR8YWWgr3qzn6RsSJxZbh
svPAGuaYjSWtWShgQ8f7VXs+flJ4dIte2mtyp9ldDDSYEKukIlOyqjH62BGek2H3jItzBjbQ56ck
DuRK5k6ZAPYzzFirqDNG8jogVMwgqNqEAMwfcmQAu7iTW+670LRz8kAa/4lWcwgIhbJAx9lRAT6G
j/IC7Wctgm4umAe5MiXfnIv3jS6j3OZuuzeR0nlOTzr+loS2p3Ui3id4UVM7LDcbpCmk/C56hjoL
K0DGWNNKtLDs4RcLXIwq9gOgFtukTsfZtQQ9/7unMVvJ1xNigbMxJtuNuuCZGBHYRgmoxTxSek5L
BQcKEnjtXleeWl4dJYcZwTzjT+WXrG5cTOjBUJbd1RsQBugKzv/u0bLbuk+ltLZX5lA4a3wYTsa8
jS6a4s4pUIXbjU03c/FURqmNtmHxe7xoxZC+fzFc0yJKEUAypVwuILcPla5O857GKg92GoOlw/EB
j6SNHL2R5wwoVBaLtTSK7EZtQfBnVuCOIIZdgS+B9KLxwyiNhNWzSy2qn3y4GlXX8UkmCwmuLJIV
FMUXf1nqNdmKG27DuOryYZd83m35p0H+RQynznqQTpxywto1eL8JjdhMkesL1twb4YC0oEvJ4NIc
vgls32CBGD7aNO6pQES3Q2qwFq3McM5390ecCutO4xsEu6kABjnH3b6K3gNE2qDxBpBJQaGYfpgw
91oPhTFOZkE6YGJV0ViXndCfXR0mDiB4q69iY0tUIlii1k0JOFTOFJNAAxaZT0/BVyiV1fRtrD6/
jQ3n9kfaclXOs7b77bjdsTquJNR2W0zik2wdbJZ9ptUItPy2fUwQbjF6Ik+ojbsiZLWtTlZu3y3q
F87kRsS0RVKZSinxbyNPXgml+cG8zf9pEzRTYsaeqCdXwwaKIONonS2mT+YrBtqZRsKAYA7J80ug
fNc6GbatFAmk+CFiODEf9HNvnMtgAksule/cO8tNXAx/0OPARvmsZ6+GxVFuoiPWrcYqSPB/X5iV
OrdYxABcbhxOAbxThcMylCpCa/NK1463a1CH+s5sBZyJd576PTsYyjETYpm/2btifzRcgwIJuZh6
U437k1cQqLR1UW13gVSkb0hcubi/2O/hV+xTg2M4Uj9KFqjRlourMaP0hXqJ3j0iCmR66IYK+8qp
HQqD30Jdry0cjnNMKQMZHHaNavQh31fpC9MBUhSD5uD0StYEWK2dvwOscj8pdMTpZo9oBDMtx1mn
rU1zdkiA8LSH35kmglFMc7FJKQS8nyuvFA2ZFLNlCS/sVKjMmpqxj8qspywpG+FGoqENZfFWgFIW
v7DphAeEQ5kqeW+1dKMw3ccME6tAH0R+jhjs1mr4J8Sab2yLJ7xlklGJ1EyKQS5BbrNsfZDD72kg
eP+rKvhkSiCJwvH6xhqmYi0uV3tpI2/My7J0JxAvQNMHUB6wSDN8uPZ691lQZFILsdF31C4E/WXX
uYgdBbsH5pUE9P5uZ3ry+K6tygAPDjo9DP6Xq1rb5Tn++ZZBDeJmYzVOsWjsYRn0+6cTq5l+AN95
Xt31DzMWGWHhTW9dIEnogX3rE48Bw4BOH5/kuXML/OgwGWIV2L9AnAGKD6fa7REmMJ8Jx5j3ZZCR
pn91KLwP9ReVTGroeIKaGYxwbUHJBKb3J5I+fLXbdbghsulsGh7V6lrE1tETxqoT84x/+pD/KZuv
5LELa6t1CL+VytU9oKkbA5JPVoACSsJ7I9E33BX//bs1eraGB3pgtK7IbMYNaxtqbeRFGcwsfjL0
yCt/30syvtnPpiEP68kSEHm+R4ngGaobDM1/7fsYqW/MrLsnTeJv5y4lx2YkD0StdAG6kJijXpx2
S8/IVWDcfPsaRst0sX4qNBsVHjr85fRafGmJQK0yhKslN3qhUOez+eZHh1q6mftmeLpyzBRywJQ3
6yugV9xGn4d9f6vhCwFyFjjzn5N4reCiiZh/acdw6WSWu7E1lwaHIVg8exW5PLCRd1XQuTtObUBe
g32mrnf9LZJqViWD4lZrvsdWim34VRDdXR+yWjvQFkhooPhbA2i1Z8wHuuFY23UyF8hQcX+ftIJQ
ix30BFVAQxt1WycT+rRGED7jTVQ3mLsI77B/fchEm07Y/X72gSpQoFk47mXVtOLLjuM/NSO0+J7j
z23mpitnl1RXax/J/LASWknlxQb0T8TO/0WLeXICYAWsB39HogVBEQzXS8qtINlRnJZteErJ5L+H
stKJIjBdFEsLf3sHuSJSdToJbGGIyieE0yBTR4nied9qH8PImrYldlw94GahtcVCd/gzcXocOdVk
PGR08kp0FjPQjG1gqzKshQqLWZ/dMJcOwmP79MhmyrNxZhI6Lg+FjZ4ybzMCaLJwRDW9i5XMOvCb
ry0rwxXYSjzDbV8Uz4/E9wJCgrrs5CNi2gyXjqVgG8HCkA61GMqYTShVlfEWV5IvNg8YYAXKTPS8
Vrv5nbli6pcAYRCmAxQoSbOKWsHODxEfz4ADeGyYy64u0sixe8oHa4ZqfjtTeju8YR0usCTnktF7
hmL1KbCaoEJxoWEkgA+z1ajc7ESiS95oPmIwoBj446EWUm7CH04c4FCuTb6GsKpqIMsT7OdWPqVf
LOotSIfIOiECOkoMelhgz/ZZwgYBf7cmUlrW1JEuJJcuocQwo2a3dum9dkv5KnUNTBnuU1zd3X3t
XVKDQdW63KqlLJCU50zi0GVWzqjQIVoBdPusNKwtQ/IE02QtqXstgXphFtkrdvUa3pNuygzjI7Cc
oS9EA69rZHjMCIFLGqgUqgR3aarJ6jEwhoGXgntzOH+hqcr496cl5hj7oMvK8o3k5yh6Rjeag0P4
IIQ1JL/uxflg6Cb7snLCLjBnZ5TNM+YhUN43zGgBVB8mkke5GYwwOssNzBeQGI8SPTn2XFaiDvCa
UcJqV7pzYclqAaheGTVA74nQGF1kZAypZLoSFUC3sRxw2yEdWL+NIUHzAR0vRctxeNYCZqjmPURa
3yFgQKgzqAADpQxN7ig6y3Fx2fiqYCXdig7OJFpVc5jIJQIneefd1/xmI8AKiHP+khRsQX1e9mYf
2vKxWd9137WkhIwpD6VTY5/RmQAT5D++Mn9Q61DbZ+bY8csiavzxk04Xf4SDsXsFqSxylAf5tZ8k
qEeHqTXyiZLF7961N15fJL2yTXj+Bt3+AJUArrcB1PtQfRO9QgEBZMtJYym77gFZcF7Awlh77Mh7
f+WmXCuMxywcKlT0f7KPqnFYV85vnW2sb4+1Gmq0Iuk+eEbA4Hspz6/HXrXcA3RYyxCTpkD6rn6A
u84adJj9adMeY/4oXdAAth/o8kVQQtNdBeO/l8Z1cpgj3g43JiV5zQrKMrdUxo3JgNBTbzlALo5/
7w7JweTOhhNC2rQ1/q0REqVZK0WFJexDzn2y+AKolufJUzUIOSumKHfvHxyhq+X63WzgpRUKxJZy
1Hsje4eXfnWZVkXsOZIcg7OluVTkAhs1Zjkf2RCq/I2Dp6hb7CI1123iwaAJ7QLOnJzbBceiVq5m
Po6se8SHEZC22bjq/BXkyJAOWrT1DGl4TIHFWQHgKDrO2Wzj8a1lbEPbA9XY8qTdNCcqyeuarPTV
J0d/bv1WHNFOkugnmcK1Vp4r7DdTTtlSkd2OIW+dHLHtbc/IaGwGLp6w1CXiFH4CPcNb8Yb4T2XK
D1oADJUoI5qXH7HkJVnFJguZ9FxACatCcIeUsO71wY21Wk4eG9YUW3xHEhQuAo4tk5eaZdEUh7gx
BU6YQ/LSQ6rx2wGMsraFnhka/QeB6haZnCivk7B9CkqrW764TsNQ3mOchVhNfEAgBuu1NNf6b1hI
4GgdZc8XfFr/9qr3+fGZRbFlv9nj1mjwGFfCZS7MfyOgMTZzoDwDdUWULLhPPBKAvWO5zSObob9a
OH45SmUs6Bnd7I0T/NH14ta/3wXxx0ULRSNC5sOxUG6BRDn8N0NoF1VBKR6FGXw2rn+UR06UTzEi
vN/U+gXI525fRCbnEDgJCEraAuEiSpE1ub9DjoXWBGEe2+EerNLJtdSJD13L6ocBUEyavPafkUiO
BvH/D4zh0Retx4W6sc7eZK26dZWWkA2CdLoYtQ0DuUFS65KCbJ9Qyr6sp+paYWCti1jbJDNhxyRY
9tIGVvvTpWIcUvNjbeK0BkqyQogNsetptsO4GNqhdh/heQcSessbxspgcXTeqsom+alieUhUD6K0
+QFYVlnSDK1XRCGfQEquQC5pnfJg6QhSDYnEhm7RGYoJ4WLrYDNVHYYVZyC4pD5xi3cZOtBi2woS
yVMNGuirxQ9q6YXlTIKS8v1a8CyX6qZLJKicduCkk2hla2rcOGEFb+ZcO1FzwYiTAJD/w0fct7Bp
uryXvL7bDfmTzzT8EgbFUnEQo/juXAjF1cpt7+rzPF/1njdP0E6Gr2g0+KJJPFNa8O/VJK4QY7Hr
fFWQzsHE0VOG8+2EqX0CEy2pYNrNwvxlUOXCdXhE/nB/3I664i7YG+GXteYzN1uPUsFOpaltnrxJ
KcPdD0RwmRARELu/YfV/sG6SxbppOBJPOnjLXTaQ2QStssx+bIzSoO/yPeoOeok/9MxoByA2mm9o
qIGPn83pZmyKvm2WKGZQUaD3aTWGWh7iWqQ5rDc2OWIPBmcUMF/fWws7y7zEr6EJYXaT9dGM/z+H
TjZ0hWOk8edytf4teU9v7DJ9Qmzk1Q8vz6FBFimZsQu52xhmmWBOSkWZ7wbR625ZKyivOr5WnUQ1
F2RKaTDUtZt5I1PWWR9gGaC3dhpa2hVzXm5bUrcC65+8uh0n2ctKb67oVPQrMuNAttV7XDqSGSGu
SxOA/jfKuw/Kl1byLsa3jS6K2J8q6RZJ6HTpLMo7fMXIjbfR0LP3RofiqHO36TT5eV1B8hL17opu
CvAHhbSQxAPup4bOpSPEyvRYFQoIVcbLfwXDdFFn3jyslCFzLgnovUaA0IQoXWq++UE27M6GyK5N
1ZiNGBoxi2SoqO828lHuCCfP5LCVoCwr0gma5nnxJ2MqG7L2+fBG0uRZUC7izgdW1TX5MIdF4Weo
9sDbjURaOuYaHhsBHDTh4MDqJK8jMaA32qCla679EfqbIR40t0BG7nwAf6DTFnp6bbe/iYptTU6M
NmQwzX4WdbpzPexSvJiIJTwyrb2yBvu0FnvX9aKqnbbln7KugpLE7bjIQk5Z6Xa+2oRR4MO2NGPD
0F49IJC0mZ2NSC2W8BpJahE206hz+D2oVVcSRYAtEP7C+s9MIp6MBlFtYgWwEpBmwKx6W6lDNqrZ
AGC18Q5eELig6tE7duHmfZQjxnx49TwsJXSzNcln4hZxmKseI0HC0tmqRk/EWOO6IxFnKg1+fw6i
94DOhcn3n7J27P3+wG1u0d2bEFORrywj0Q0olAGn3GsBP7QA06j9kMYuJBcCfqjb7KB7FtF6cBMc
947301iZBUSzzmUWj8Q3mhnKMRyNo6cdqK4WU3KEICeOxAooR/a+4NtRBLKa53lTPqbP6KcqW6FX
5tD1WxZBWoo7bucJkhNEMMcV5xqCvYvoIGaD78B5gFzPHJe27fqdyy0w+KUKtn1+Z/b+XQGIHdks
UHEuiQ6RZQ2YdmS1Zq6aUE56px5/FQmaIy4AT5XoMGuL+HdEZU/6+k7aYsjZzGtRNu4RD+WGUeng
fN40sNSRr2N0uaS0AroQv9IJEnKBMGnF+gqmLwNXUa1Xb79e+1gbMHF5/JkKwQ3IofaROvbNncbk
xduLEkbvuEmjIP2CFEUYSAKxHQTEe+d/kuQKSv+Ow4bxR5sZ3MJzjLJ/xoEA+Uc0G1hrrmMJk8dm
rgqvMu1k0Rk2Q0VvDn94jvdN3VFiQHzvw10USNkzDr0bq+f3pOCOo4oAMy8hYyD5gsDLShO5GHJD
e5peb6XNSiF4fed7P+7R2JURl5i+FYM2CqhjFIr5AvfFsg4E3yhHL6MawkT5nf0l4TV4JzQBquhh
m1yls1jWrqIfy39Q7tKuShkUPMHKJav1E0QlT5fJNq2VAddk45t/lV2ZXraRyOHZRGilrJiQZEvi
1cD0uG2e0zljcVqJ9FFrPVoSzGS+69W6rwdoBAfkl9sTSDTgXVEFfgqmTKKZOEOycT+EDKdJzcND
p65NyQl+I4vPvWxC5EjZ5QneNrZsMqo4UumWblzJaEeUQsgJ7656I6SMfIbafUAZ6gw01KGTcc5u
khfjPmWj8G0Lv2yGJXMRWp+ktPyDFJP6R8nOgZb1aZF9Wu0aZGY5tRtkd/JAnPNK8K7onkkVoznU
q7W543QU2oByuXwHhKPskgo2/evDrBY0M8hWvdsEc11XZMTj4HQQtdonLR87RASBN/juG0McAZRP
VbDeHxnP8tjQulUG/ePSVE40Ql0bIxTLNGH9/N3y6ZdyOXYCL5ONGhHwww/qr+7ZF2yK7p2ydltj
9XdCzsT0L8CbwoP09ufwnDoP1TbdSFVyU0I4+ym99SU6blVXZJpSUGTflB4W07TH7EAxQ7+74jIP
OVh9CJNF5eyTI/iygKEOPQYbHPAOXDFJbOBYbxEkglIOayughqhlf/fxe9vjyHywr3Eaj77LYr3K
HGpnv/ObGU2pp6/seqgKzbhAZSJgqUpacwV1fgEITF9IoZLXg1VUE2DbfJwH9x5d0Tf02WWfOqGi
u4EmTpLv1TDECuzIoewbgoHtUhBxGIZRp6rD262toX+xBe4ArulorQtc9cVzKYqeZc36Zj9sfzr7
KH9Y2M+7uKn0oZoN7QdxxYJRjNEIbEgpGPKw+bouhKnoMKqHLya01vB2N0/RIFo5Qr/zNR39r8tP
+WqK8AhvLAyeYLjJ0RRWpUGDVz845ci87Vpwyzb1+orZkfIBcHYWRjmNnw1P0RHNmpVKT/BvNk7T
Rkaa+IUwIVd2+7l479KzfIpKKZm22RYTeXvdq6W15SVOKG6CIQ/aNbXhz9UsjyLcFvpbE/Mm71bJ
mv2Smrt1SuGrgy70BH0ycHwEIFvuF07WAd4XtJWnMxcVRc+Xgh4ROyvpieI6Lb/hLUhcBJnrwez6
VtSeeDVG/Xrw1Fuf3btyx85cS0z0jD/xEvOwkOxjNHPU8h9Q+T/9Q3++zSdJpqBSGxp7guvfpYoD
fKzYyYWU4AjBfJvmcIVgcTTepJi+fpAZZOQmcKR0qqXR2kKepYedjTy7mWLgj1BnTgo/54tM9c1o
AW8xPkMCN17ktZz+zs1Zdo60Tyam3leHOG88nZXdRebTOzE9xPkpHjm6HQpIKQrvav8zu0lfGo8X
ANHRwNNU0JYQn8ElVPoMPxA2Gmc+CTRI6HkGmsCxLU4pF7dZVESQTJAAFsqymCwblfpa2HzBXTAu
/GTu/qhh+fNGkadO+eaIDWZrVMx5s4/GKCmEI4HpsdokHf+mpTwcoBOsM8aPr1U66QJvxmO4iBQj
KfzSA/PjlRz8QhgM2Jel44jYJI8bLMHaj+VR2Uo2T/gsY0GOFk3CK4/sxYyWSPgCHvS2QFuqK6gA
/TNqUtK6NFaH2GMHkiH1A7tloVku20oMmLawIZT7NqmbT98d4Jt+2cKAZV4gyPkQwvXfUlEJYi7a
8IbhDMLT83fWwGCxnHYzh+dcDSwsNKltWh0w802Sb+u4jJXXN1Y2X4TjIs2Dfzq7aBFFF0FyvJjw
muiyOqWKgo3DGtcm+RlNhlDJlXIf6pLQuEhzZ+kGKcNV7HJJlZ1ar6dwWkCu/omG9ZISmD8R1+HF
xkH2P+HNxJhLKlsoNFzLAyEYBbH7JbLDFZOIp+G/sxHF95BgxOKOmO7/FINpggqDvH7Fjg4WeqGN
iqs/X26AXWUtX7pd7JybWdEPvxG3XocOoTXGE75uf/kgLLDsfN15oEyDylrrHX0KtukkLWQLVg/n
8vM0788JW7nKM90XG7N6NuEvFLXZ7zB4Zk23mEq7FfsoHP4dkUsX36n3VCDodNfyvttoUiX4Vz9q
t3aruoXVNI68lWgAvdn1/RkvXlvALWsS8FIZKZfSwejaJVRkdmmaBxITm3dnBDfZG5yJsTyaSvGN
mSNL2uSdbKME1zoVzEoe5wqRbAblFHjT+hMcBWURRLYw5e/lSGxolx1805kVzRr/RFAeFduvdl4e
VmBO8oLcd6ny/VNDBzQY6UIChtU8em1SxWpv/7fAg0bUMG5OG5HA9pvPauh2c2N8kJwXdrVTD3/W
92ejAcm5oD+Z+xaOpuwZzvMr/kqBfBT/QXVpPnJrbzSmSQ/rAPhNlhpbcBlJQUyrJKO0BjTq/iPG
X2pkwT4/W6uiCSq4XbhECHHiC0afprf45eLPVMZRR6R27hcPzajR6PUIiq5M4GzOVPCTpVwtVYzL
+8kKNLgg8yKITcfDcej2q0BhVFvYn/9+mwg1IKKqPzdeUePHJCAjIY8K3Mh3nN5tyLCqUmm2D+aF
3tWyUODLE8E4VLjT4S6sHDdxZUAiyUPNVxgvh84VSGUHTibMBIzf9PmGakvr6AmfVzeA8OB4YEzk
G45qibd/i6hU7eH2GdEIEY8vywzGlpvpKpJ5NSwBR8C//Nk9Kp+pDmzUZqZq04vb3FGDcvgFMeIG
MGFF7pRYDdsxu+LBp8cRLelIdHRxil1Tel5jH4XZ45SwjyAF7oO0jtuUagnTCfR352GY5eoWsrbz
9k/p3fZ9Q6mxa3theSlAy3sHFVGOXElw5TYTZB4AThYEF6jekbfvVK8pdmfcpTupTAFnGhRvOIq1
ChoyeExJTxuOOLXcjnF2S7WdgsEIWy5xEraBLvqDTPKfQ3zGtHUPzsUIIgvJ7dNoOJyShL+f0V7B
Pnw0BAfvebWAzSbGuu+q5dvJl9zVgXQPBtfjCJMg6Zzql0a/33KvERwiAX6452ibjx6odSGhie2j
2oyYu88M6E50q/9ElMLKrpWhaxmpOq2foBOXUByxbZP6/VikMeHJ2D3YLac05MUnV+nJqL2v3lfa
aYhPBJi4EF8Vb1OQp6Ah7v+Y718olBdVmqI+SMh8SD/l1zm1DHolGkwWu2y235aeZKNod7f/08jD
gU8F4XOXTwg2m853wxhV9OqWkxmThrDvWxcJNp/i3fEe8JvGvjbvd4KkkTFofQSD5nDiJTpz8sMF
o9jhY95f3ypxlXjAi9jgAkZtNXq59a0kJ7hlhB5kD8r0qGmmnIr169rdUAvPJyOtFoCMM2BZRwxz
K0llmrYfUyr69/FGm8Sr9LjuD9TO9U1MwcOyD5ZEo9yniPuBPCoDK1JhEi/BCuurAEvdMxJTgA3H
457Vru75qxpCurK7AS5+hPlKIkrS61fQLa101ukAUJVrsx/LctmwAR02zUtA3bwC4eBJxZtfX7Er
2lQgxQBjOLuFZ95HG1CcigLbuysiPGJSgK4fDSimkP97Qi2YBck9nIO5kmUoqyW8tdHPpOuZjJuJ
2Ylr3k+da0jujNMxayuC9ks+NajbIT0lk6l3Lbne4/uBmA9E6PKBnkHLumZ8Wtx1BcICgAR0inFJ
YPboYs9BaW/wyhPyIVtI8iPToA6AbTImclehl+TX46z+7IzDVm5P4Cav4tmqGwPxZrmEV0aXtNDE
e4IYG4ZU6WJUbUV5UbFbXnYNjKch8KYeWD9plaSBwgG8EiL+19xvLyS8r8YFUKOq7MaVcj5RvC2h
8eIk7dslIktazaOqNZrwKHQIcZQISS1c3gzI2JckeZKkKk08nwz8RTqoU7TZWenI5L/5wxFkz87o
qR53dX5IjXiRROfC+9KBvW2hmh3BvZq8QCUS5k+2RHX03PodPINGgR94ja1zG3soQriPLWJbgehT
eyDh26MA754kYXAMMNS5EJymB18F9wyN9J/plUCJPLX8xFzzXlWMcV2W0GvpcfOQK62VyDvL/bYu
MrObCXY2xPlTQNOG2k+m/dyMUAcHGGORlWoGAUNoiI1gYx3n0iioSeD4LWR/gYyDYhecn8YlpA2+
Dtrpup64W8JCkyrvj0Kj4CKVaJa/pbhvzUymp+m7/ckq4QLiCVLzoehfjO7sxl6NQ80vZCfXcxPb
bqcfaM0L++6c0FLVL4b5eSY5/fHzpJ9Mk9NmYrf7q76j9SzTtq/hGpOjgffy7S3lBDZms2wmAeMb
KP6P3RXsvw2zh5Ayamzpp1usLkCfC5m1IH5wv6US5bMeEGM/iGv28MWqLoLF7uoBARuRiQiVauTX
AWMI0ClweQVFzBvMDg7Vk2MwH1sKSWNq952QW/tdTcQsbCQ8rmmm7imH3sQfEfBqFqTwq1h7ZnBn
UOuc4Ky5NA9V1UV3F660CBGB1tGP6mYIF00ja1/ry1+hYMx6YBVOnt+cJmGOMvXi+TIDUzbPoQY/
moVFuDtOlU1pC8WzGvXvHdBznojDYXuwSqp39TydF3dtsGLPPVP9xIPLwgBp8k3Dc9+3BYaj23ep
B0H78HIxp3fsNSHvwU4a/2eAvTyBEovjtuzQVh6Bw1aomoSItI/rL/BNL9OJgxWzwPMQIyODvKww
ufHWEQvvPGVmCfPUKmrMXYrMxtuqb25Fi1rCWuuvMHaphPkeJGYKfXDUoxBx64Bso3SjJPk4YGQq
GBWVR+UbraVluSkHlHjan1Rat1sUzwPO/ml55a2fH90a1FZKHWlc1FeCPg6G96kYmeoVLZS5gXdY
rg3XcErUy+lBfMqYXVS64F2vl+l/LxDa3ld+yLzRDD5+Vc5GJApb8TeaMcfrk3qGIqGNc3E1Ap/7
PyMXmO+K0p+8MMqHCoh6eBujOff6lvrN8z9HlhEREs8mv4q9MioOGyVWeaHooGv6J47k15i4lNpu
jTz8IfFqH6N3cQvT2kTpOvE8hEBkXjgrQ6eqT65mP9gWtndaZLdGe3p/mIcm2orypSutWtWwENtF
KHHdCBkdKDv2dknFob6R7u96gZKKNtEPlrx2xLR4hi7yuLzh6ebQO15OwRp5811Cw863IaQGYulo
35zsayL4WejKr+jLqCT8lpidma7t/ZHXxiPksIYsGG2oGg8u8NhBM1tW9MjfEjA8hiKZdWhuLJ6c
fayEeE4lJCiZPK6PbnWe3pHbpnTtPuhaLCe0DYlIFJbE0WaEhk9g1cedmUqsw+QB83hbJs9zs06g
METKKzH0nZJJiAd6YM1j9vqIsbPLCho6+YGxUESI3NbffbFDZuOyFf8DH88bnM6ZT9Ll/Q6BDnLl
yxttt6IIzp4zu/JVJWR7b4+EKURNEvTsGgk3hutED9iTiOi8YnG0p3kdmjpAOfqJr1fQN0DbMWlP
j4QabfABeC4DC9nOc6XYucWZc/KA3wwS55s2An0cNXFgb4e3RRAb0a/7w3UCcp/teYTjUD37RfUj
lyZZyUhL4jsENq+qaDCFALaDnMST8cBm2QUQiC7cy3ap0hizjgURNJvw2cgIWFRK9q99NKO5iVsq
h6alTwIOZqmdgxMLi6czXSdVckrgnghyte87mTzJoDEtuGWZB4dEMM1kXSmNy/8UdDjLVGmj5T4j
XkWUS1RmiADOoxroFdg1IErdUpUhfRnRlBvbH5wAHfFDtzGIIJLf4VrBOgWU3pa/T8WiyzsVmtBF
zDYRj3mM64owB3QebEheSGNl8PBPbdV/6B/Pj8vAo1MZwQzRoG+USNVV8skykrP7Y3Q1lHt+ysSc
CmRJSCZ6L2jUV2zI4i1Al1QuECCnax0O1hFrJsXWHzNdGpu/ZEL7vTcIuRL7/mD6r4dmO6dZT/Vn
pwO5IdRhC0DRkLRKa7Yy3KhdupVR+l/9IEuMzPgded643X40Ej2s3yrhUK98vcFiTrlTUtsigt70
UOrUzcSQUG5IDCgPSN6Eo/5aeZbHuLB8O1XdEeDhIKWG9zeWC5DFv0/JMZMiW1/a522pjkGXDZqH
fcyQRCeRho3ekMwuyK8XEP1rEBsD0SVVtAQlaB7FaWLkS8F25RrpHaVxPkKGKquQcVL6bkeA3ybo
wDfjNC1ly+rO37I4jU5BOCpXLnjA+ttRjUWwZ9vvp7AtgquX+7jqJubkpXuNdqqwfQNQgZtU43pU
mFqXfRzKjWD41x97L2Jf47YWSmGuybmRkYoYHhubftGqocnwRQKrjhUkN4vA9/0DVU92ciPkLj8m
NwSYuVa5tm9jjuohhwX177B1qWRxPDuz2uzyxB5Llsay1pAtoeq1igSKCYN7wfty4bIyqZ/vtx+r
cAnHk45+QqyLIsRnCh3X0ssiPFZkmih73wfaSTndFJoOTld+BhSickrYIZTtmRh1tfNTbvqD9tem
U42Nde5UsD+ceZe375taVK18APzru2xEFnIoAVO47/LhwmRkJ89H/LlVgdjIZ1ODLOBDXsQAXCQg
c5lUwu/nNtDDVLtX6dmJqNhW6i3Fyp3uBPJVEgTiyB6eaHh09EvFvwoqy0/jiMrLWQEx44T9L8R4
xyYhNt6kbyAAv94E71OXvwdqOLIjzGyToTKziAulq4BgbLfllSXc/QMUXD/63x9CDbgwwrNmhTRb
I7SdfT+C8UKDvdF8DnMHyQO2F5lH/I6lOi5J6xpkTFQpCVJZYUspx3eqLTP3rxzf58mP3xPJOJA0
ONhKFjXd60CBL/nbj/T+GaYqb5CSq3UgQ6Ft0N7kGESZxHSAQzQj+b6hHE8jpAJiVLggjCZTno/B
7+Ui7WrADfkYznWcH1a/jtPStUjAQLfc53shrbg0zJORCTav9u1qMlj8e4Yg0QYpOizm/P0rlokP
g7mnveIFl7f9XlWog7iLXeHHrbhFMHMO54bdwEO0EDvN7pf1exurztC81szx1hNmIjLATr1Fis1p
GZIpl3C/fKuQ3IIhjMv9brvv6XeclkAHaf7+lT1hlfmr38W9f8e34na3Za+JQEglxC/aeeMK5LXu
bAPWa7gox24vpKYD+TppXwVrgBVADfEei+62W3rN0AkOw/kxxEkBZNz6dus/d6vMX7fOavmNojAo
Yh+YiZEnuqzFOrck3N6+0S/mRbimAdUsZGJEzoEslHDrMnZuO1bNPVPCjdDZV5R/8yBxqWUNmHcd
nq85iK/Zj6qSgAqYV6SEbQAI/ei85UdR7rT2YIJQCqlSa5eYl95gE/6j2lx2X0QvoPXh8TkF375J
xiJ2ouz3PO+3poBIwnkUq8zfgBrjvtEOizM1CvP0ExQEjHLUPOJfzI8Zf9CqXn76WocAuCSlfsHu
BbvQx1V2ERKReXJUegmyDPeq5wNIRR52EwQMdh47iZLO2DjBxJdpTKBYmnToln0aJSh237cCIuEb
nD37rM1ws5k+RxeOqiKhbZ7aMEmWbhvOA3Zfd7BaXwH2L14Z1l/+/ehmAuG4r+KQM95dtqgVv+eX
x+4vGsFVgFs1BD2y7pKfZ0TuAQbumGOQnz9xcH+BdG0M9Nz+SaLCWgaNGM/8BD3W9YgyljuKLB/F
NmXESwPVzpZDG7m1/K+MNS339wlaanmdTjJgmW+b7F0iVRfITC2Kl2QB0DN4rA/TYvOu9CvC2o1h
3EGtvR0+rL/q5F3hM8ej1ltKpHbw9V8rIkodSVW0b2Y/3+pSPNrW+WhcAYIb4WkMhp6eyscMgMAa
jLtSJnUNerHDOZVLi81LUXR4vCd2x/xGTodm5Ol5cncQeCdZDf/PZODy3Nzfiak8X7OZGcNDjuuo
H7eEJ6sDSHkBX2MaUj/+IRguGcGjiiEcnu+XUpjc9DfnMgtjZ7iS6YGMFqn8mmCYy0wfctnmkHvU
iKrWQbFilvVykZz0ROuGIhoGe7xySfOqcu/2CTSPcpzhIZ8Le9vQ2bdUrVYygsKKdhmAQUxt7deZ
CoqPunj7N+mgtRRt7FpJfV2yX7NF1h0pkU8jLfgNuOlp42SHkHswpSMHkxuRNyHWrhexQuJWj7gG
4sk83XK9YDyGPP3LXXdxvlDrCo0n1Xa205xCqy7jl5BGdybcORUyjOVXAQ/2m+7MKn//V8fUwnpU
PUTauCIQ0RNd6tyHrzYAZbhSOKHpA+rEF2xnmO6IiCGaU3fcll3Q9tbJZsuNQBzqb36r39XNagoS
LEtgUzuyfc6317gBYI56EGRpFQTRPwoxXVFlI6dBAavfC7l/eCZNAgtFLII1PKgb31qsHTGkTsmL
Y+HDYiq45ioqYC7ySjndIiWIGbBo3Mf3Wj0Xl3bvEHwQAIB4DCcKLdRXBrcwqtG9Bgo3ENDF6hV7
US5DUMO6cNy/ptzIjRgHckSVhrVOtxLcPI/uuS3pf0cS0oHW30/2+md7Irp+vaLN/K1TCm533fKX
21k0avusHBcxWjAdy5uJT1/zXzn+NAH9agNJCOI0EdlApr5q5/7Bscl2/0ZJB5+gd7CA9Aa1hvds
xdBayna75UWwD4J3hnzhhGfBzHZrlbbu1vBSBX+ap41CLtsBQzHdeaxeFJIQJ8xt5DwnkJGp0Ghx
h9hQYoZGTk100/M4o8KlI8fereM6cXItlw/hdA27vugRznYtilhyNIT721xFqa1LWH3lpLAV9mI6
pjye/vzgUAEyBolz4xJrJKvcdi8U9ZhlDIl27XvcukkbUhTs8EXWL9pP2kUwHpzF8cNgjgPeQLvb
f91FlV9TjG6NNpAKZnVQprlmiIwWYPNTTTITPADOE1MeFhFctBkSpbxBuUUeNZhpRD3pfuump4eS
AStnPw4gXbV9SFEMU01NUJ1MxhWEdkbJJ0Z/o7rR+B1VcwKFxm9X46GY9SipoHcyh8x39fqbdCwz
6NzxoAL8LP22wJLhfhIJ4AoSxsUBNKJKBQtbWEI7foJETzTVUHYFKyCIqB1MWFB2T1tZ+vnpMNjx
I7XS0Mwuea3AWSXBnoVJ7ofayZp6sxh0o12Tb8tnuYx2TPg4xttMmExRkhf6spCEyiivWzGkja6R
zwWgwvkj1woHk4YeB5SMihlBKK7F1MTyQSLmC8bw6ASg+ls4GKXfKmhzpPsaiW7+12oTqd+VQ5j+
Lpc8EXOzvq1CNaf8QFSMBBE+FxNpgTYABJQozfStqiBPJgLEtukITpekTnd/yzKfVTKkVeyVgjya
zhQNSzVWrsF1f8KOZeeFGq13S4v+kC0A6t3Iz4wqUXKl8YXWE4AXHAsVpHr+GaT09oB+eq7o6xp6
zcjMX3Vy0l0hJOAFJNgZWSlASdDHQclKJkXePweGQTnHLjcwEdYr0oDtk5i/hnx9MX/Fz+LyOhrk
afVnfpbN5HYmi5oExW/Px82U5ewqw8/E1ls8OtG8+sxaiBaxNeldn4/VljWycHMOBnbcZFHzsQLE
hbqgq1jT24pHNSFs0DJLUfEa+p5JEoZyMbLdIaHeZGZ9N4Yqlat3UCLLhiwevWrUC+877f+I4qE5
qQMCuyvK9UJtFgnfmM7qgiC2me7vu8tWQRwrPU/NFgB9ABMUq9DH3AzGdQBuH3xw63NPRzOOMj/T
pN4k1CTzeqMS48/0ZfXhe/W2luvAsQF4XlMQxntdKoeeGsUa7KHFERNE01CM3jAftiVwgUqFitip
AV+tH4Gp4MkhMeKV2NcA7HjlYL2CYiVBX1/fMu3IeJH+JcNHh1Mrg90URsvE8uVJTvKdDOu86ao8
gPB9lE1nXCdvLCvmtA+O7H3tE1eOZtNcQCUimtVMvmhBO/Fkw06+ewTNOM0HZyp9ArY42qR3txot
tiTZPXrPfY0QvMdR0reY5bxKiwqzI8v3WUOK0Kx+s6gc5EM8vnaSZztA+0lyRME3xotW/R5KshO4
0wZ+FDyTjtmLHucWo6fn5CpWKI3x/W+7sQ0mzhlp9gWuQHHagOYDFLa2e7I88I/PuB9MB0528/jU
H871iLG9yh/U4h5WZWl0IQHi9zhnF50WZtQBjPO+U4Im83KIXBB+MYKDa0gQLb6kTKwHq3611l2d
pfYsmdiCfdbah+XsXerGf02d+5K4csBTwpnN/+TLD2tcLucZylXaM81XqtLtcMDtHzGcFk7IqKGO
GXaFFadOWnGbaZZ6AG5W8qMoQC4Jg5mSbWhMjwPeiwBPdlEF/Rjool5SY37EZ8XosrhjUEIBhyx2
FI6+j781e8kC0rb7eXsrp0cpswbIvM9TECeJth5HkbtSvkXbT4DnBZ9vMRHZFm2tmpbZ6itp3zbu
SAAjoI4N3BB86xyZO4efUiWak0+BOPrd8f6dodpZxTRwQUpgDNoRaCIXc1gYzxG7EBal/wkmEc//
tdWJ41zDubzBJ9vWEzjZjPPACSDxBQFlOUftQondYOJWCT1hdy7sWfxI/6BxzKopNCnbGngeZneF
ipyzMpxM8YosmYUtPLRf0/kpJb5L4hm33t0KrM6teSbvoH5yFSZ+udxPm3Ea0B17uTxVpKsaU2HJ
J++eT8XmykROXSeDZUMKwysI/tQPHUxNc6dQWSSJhXZCSQh0xponNutdBU5b35Avxs2qCJ5w+VYa
bHL+fvjc1uiMjcKKnBP9KTMhN8rIU209e8NpbtiMoevnhPBErLY3+tdE068f3CXW4CfNzCQae2gG
ZMxBzLJnv7WyfKNmpcCUb7DUE/GJN9p6oWPb/8Va8S3lmh5ugzWzDJvHv24U8blUvpGTpl21tVkA
5zSw4KKtfGtDwBy2suOFyb/vfugolflIh03N2E4OVR0vt59vuOzl5WTwYQ8KhD1Cj8cLed07bCqp
h/KgylsjQ30/LQYlGY1JyYYN6BAnoONrGYg3gkH2ts+Der4pW8I18HaqbhbdWOBtZ54yb8n6N53B
MXFVsuKGPLR6EEYSQoxA0eKQWNuFNjg2YW1qae7aKS+EA8382fIvdFCePrSvFwL93lJRL0RRwJt1
JZLk19tlKk1XgRjld3tdmwU1jl4gy1ao5KZ3B7O3grWgg7huaAsTgHMj0qk/l5e5BHz+jeaBzqH6
m/4yodTS2p52n3eRrf56cLofoCddd38gvpTKzaP+sT1fyggdSYo5s9DHNztqMjSOIlAkPKk2X1yR
khTghLoMLdUGkv0auLcBqwdew+PLfQTNG3i2Lnk/NAdMQsRuDkahjYRHratZn0Tyu2Dl33uNK3Jn
GSJ1poS9XqzmFfUuRPdvhq7xe+mIOy5b3dty+W3zL9DJmFBLD98IyxOyjES/Nh5haO08VW8fE3F2
xGXbirJoVch4CQ/Rqx4+QiETa93Erym5IQ/8hIGbryz4Yxq/CF5KBcCDIgAQzunY4wCI8gWVcq8v
+iJ2A0j/DrBjrxy3PerqRs46ioYJ2toXKpAdsW3GgrZKkX1emWlsck6y1eKy+bhAOHfLHBt0PwhX
SBwtKQ7YuR+UJ/DljzoSDiWcnszD8JT22evZGaNQ97lKv3P6nScfaMEjQNOApCry01yF6W0nNbZB
zHY6FZ/nJ5ykjL2TuiDEcp4SkFFi3eukR/b3vSchFw7BNM9n9KdiZ9pptFguEzeVk4kisIUF75I4
ffqJIRcBUtUpEsSn7F7RJW2px0mwlKa+Hw5Y3vdDKPfiWriNV16SDABlJy0FXIp7qFZlG2rnDU0+
t/YV5kTITF2uSAbYu6h9+XpASptqRkD6wmSzfmb/vMb6XlDzlg12bJJB4zNaalRwdNjgeTB3hVnc
6SxiuD+P5ObwQcPk6i6ouCcsKF0nzeA1Ad0uDtmVj+BbyITMue+qDhIxE3qwC7ipQizI2+/fsi7c
BAkFIy1PIozXie/2V28Htysj8AEahS19pNzd6dyuR5GmQPVtubae9WUqzfAZq/x/GZ0KgGhZvtqX
LYcrxeAUSxH3lGniuGdBXgcnC+3zDJFuWVtzP1MREM0qZc3T/f1jW/erqp5M6QiASdh1wGYy/yum
viMlx5RXW2+c39Bo4yRitsgzLf2eepKbfs5m9mYNAP25zCC1zn01U7B0vzDJiR/WBMGUgZSRRGhr
Zyk8XHxb8ETkDG9LBrpBMAs6BvkUPQSdGMlFHxswcDxSpzOXe3FnpYCLhgfBzugF1AFRUFpEAOmi
5QTPb6DYZlSvf2dfFvVGKPic4DeqJODzXHaOqh5EagEvp6hfgoCppU21bmQxfiWHl5CcqZ9Vsl1G
jVqBICIqtQiAUiOQvgkPh231p7ZXNH0xWQ6Wh9lB94rwKb4jTr/ITv2aDnx+A6v4CMA19ys5RXeT
W5V+YAOdClKgopQ5u66qCngR7h7YP71xhAfZoeY8sJtQn43Ze6S5mIg37ZSZ6iLEOv5iyDEIB9lh
nkjlBrnqYNll4RA+9h1XYkmQHjN1XA5pqqM/YlaGMiH/4CcYwTWyOCoWN7Eqtc5IMu3rTvB5uFtq
CEigMHu53/ibZh/E+8Jv7+m9lY4KmP5BzX1Xy2+4MawmLr9HZfaQiFn/3fPjaioLje+47oTuHWMu
fKBlPlunozrpjPekBqbWr8AcG1WKje1nJn4c6GqVSCf/F9E/NcvO5duOpgglzjqUY4fnebgXdamS
cDnWTVv1xIN+NKRcnoAqfunQ9zbizOyIKnLCKyNwFOP/9c2pCGpZ38OreMWpEef6YJ8qpY07ZFk4
2JPTfsApd7iHTMfWIeoxLcgxHZ9PARMEBdY3QUfwhsnhXVy4/DHCpWfT8A+HjKpmviN+SW3mOCLX
VpktzojaLgOwd0n1b8GAlaeCzezmrvYPk6hcIuMxAuCDH0lVw6CeCHO41PlliPoJ8XbkwtPjpAQ5
A3WhkKoalzbkPJf1as2ioUhtvVn7LuAF4IaahJlXKcq3ChalmcwVVeUnYtxk/HTEwwhzFcuhcpNo
UVsGd5GoE/TPMqjFL/M5sOa9ORZckFGF913OudYEF1mqZ5Hdvlyoh6vlRDXJgOqzZ3s2U13LnPVB
j8UnrIJmm8vyBWUwn4F5yCqxUYEYxgwq2blPtyaC4JCQSJv6dh/s1scRfpj9Fbte3AdivcnSfxG+
PlnJxV6m8+fceRKkDFMWbHwNMETbmQQy32MUpzKeBSYJXfNVLgiKhodBCpmAKr/UoMf0IzpofyHl
hlsPWZzWjo/6qc/hmhu9xZQ/PDBhGmYkQR3KTtb2EHcphNV5y9UYIzcBuM87IHfsIOF2JsTWt6V9
iNjwD3tWXw81srL1knn6jGXQJxW1G2cjEWAo49RrW2fJzfKLfm1pWsC86pDba9MJZDXLFehvYq1J
54oSooxyU22tu/5uT/C+gkGsv9ITuuT9OnpXVrFZ8N6r1apMe8qayGFgSmtUDvh6C7FAG9O1RVlr
ZxMARP4LcHfRWCUvecrqehxPzuqMKQWF4eRh/GTo4snquX7S/k8XXvzAx7X+KzgK0bv4IT3qbMqt
HG64OcYqI1IqgIOrdajPcKA0Wr24k5cJrAXil9u2rlcIMF0jxHAJRslE3YIAyzpDYKfcLuqF6Jah
btkcF2K5DV1LpjJRkVKqwbcvbvIdu3hdDtIv0adUxpjIRv9r0cl+RZl9u5Hkn0I5MnQVJI/OvwRz
3UFSp1Y29jH2bOpK+TCxgi8cw+sOJFeYKChQ8FEa7uNOwUCENW7Sssz/8thKlFoWuwbK/5U8TMJr
KB7CH3A6myvxgKB1K98ggb7eqYHRzJTs4tD5pacJI/9v4WrV4fSRdyNQrxeGATsX1KeAMMRGmNj1
6wN5oGsP3q5Yy+68pev3aL0SR2PDsge3Kq+i+ffUcoy3Qt5WDhqIQmDVuhgR1y9Vgk803Zz2+zlR
p7Vn9Nm8eClQGrTA8wYkP99LrUg3K+X04kDtZuLgWQW2dIOxdDrK4Urj+luMqwhv8wG7070vPpdE
idqogyib5J7B7nymeIAIr31G/STcBf/Yhyz05lWYiiSji6hmuJoQOq2XyXY5fHDRCVKaE0HPWr3z
KnUGW0tZ01ium1dvEoINqK5jwI174Cq6nT2qfJOA8OBLneuH2jjaChDmDNZscJVsMzt+uNkyaDxn
bQeoyXasnNRiq8srleERHvMF/hq6mUSQkt8n4NdXY1D4Y8PpeslgDE94dNZvg+sT/q6GNAGRktDg
ccGKdfA7lmI7vYY5g0rQ99dWRMYXcacaX0ccJJxEhgJKtEACtaAc6nhdLfTTQ+QjPkZOY11JaT2h
WszJeslgwFZb6elO7FrmSh7nfxDJpJ+2+c1l6ZigquqCxZTeI0mPcArr8Qkk7o3SbN11XjEfRztm
yeSIrWvOkDOs6mT18DIV4SbMZv4oX1XTRajzJVPXMJDzvdr6WjTEiYDeypKbYspmkpNt8mSFVcwl
uTTGMfJatOr2r/HYVIvEjK2PkQPsCtGePNerW93993z3pVejEyrqoFwA0s68WJ3+LpkdYWBNa0tb
Ci9/erHulEm0FE4eq2hL5sjFjjnNaz+nOVsBd+fFZkhZOOCsQDPYgYx+FXXLqIsaKeiYrdTKwyks
nMm9waMpDEkws3D4m1BX8LFj7yhyPDXi+RuXNmUBTn6PXRVrKWqB6oVcf9rylarPjsyLUUoq0QGn
65zsArYP4zh/uA+K+QzdyuuqZfc2qL6paH37T5RFPWAQWIEGvDMGUpGPK+JflfCgCfbUptNpzseh
5eZn86DPp32vaXYSfIQX4X2gc6M2dI69hanDLPDLrPpcHdSgkBHtuTaP5pmjzZD9n11n7letBECR
dUHNF/v/PT1LBEOZOw065+WfvAlnz/zg4vok3oJcfH7AC3Cbtt66dTGb+fokHj0pXSyNf3IyEfYl
k+CSgaev9+ITs9TDg5iBFx4KvgDEgqd8/QLACXT/JXiOjR4H0Nt8r+8qyH6EQDxuY2x5qjj1orHY
BKlgPrZFSGlja3iToecO0ww9UPbYZHKB74dAQej6shFJMk3SZuDdRZY/31Lw9WOm39Zfnd+LRxUQ
GvLLh4gS8VHIP4k5OIext3hzd7L6AANAl8Dt77EJOnOooEHM6r9XKxzKE4hFKC2CrEmCdMNWlEPB
Ybide1rGaqvxK6z+m/2Uy8I+U+HtIxhuv5joItS6kZ17m0Cj75ZOZ7UQDKUuF8rcVID9nNIB12U/
NYAylA3w7lH7IraiQP9INumChNDw5lcSMDAYSrm4ibVriffc4bF5vavvVXbwbpce29P0erNmqYHL
97aCYIf+ZOBNLkWVa+prfQ6Gy/vqyHb968YJ3kMg0nWFFMB8hkdegT2DpPPMf7D4IFx5Pb1Ur6ic
JKDf9lJv+7oeaOizS9GZ5jPEOYlTeXyBdHJb8u8Wp00PahKONk6vHDtIcTwyCjr8DI31XjeRcugz
ZWrX6UBpb2TeLRRCj4HDkP9hYT6xbgD1VbAoLsm1DA8gJnpAsRkkuFU8aCyIQLdF4xsEQy7lLWpT
95hvV0XJOS7jcum6NlcUWUoGA/FWoNfxnY5hTEteuQmzLBRv+KU3gF8p7ldcw9TWP0Wq5MR5LfAu
+W6upHY/6EcF2LDtqqMe1kELBvKzZHFUTuYfA6hi5CifZVClPLMysUHLfTrJh5/2cDc8LuC7ZrOB
ghYyteL0k8P3UD3XStpusf74c9c0GiT9zePPXTLuHAH42T1uqI0SCTFrdbAMKtEy922yodMw1RmW
bJU4fXv6huGKhRKXD0cmxuyiivRxm/r4ZEU4ciYQkcAg214/t+FZJHsOBCNLTnD4mnzMCjN5UOkP
rkshuOOqvRsycIVLIi2gXBsq5KnKjtmUdeo/zg5+F8Qc3MWQc+kUiLiBWvCMovoTnAUw9IMgbV7p
RAJOq+vsJV2CiTCdc3H0dZVDsHkR+abnwK/uElPWMNzE4JYcJ/A3R1oQYGJhyCbvqhV69CrVz/3u
JE7NQC/PXoMakeC3sjXN8ACgGjEE2NJ1GVTf74qPtxP0eKoZgXiT78fyYzyc73fglQLuVx3rtpx6
km3kx6osIVvcS1wMEqTOtWQ03RWDPMhlxmz0X1aqWrz6AdUrdycoLmveHfTrVEh311wLTwa2DGGt
VhkDfOAUSgwcPHakyaTMwUecCeQSmkeM+EVtbj1ziK05QfO57X3dF5e8SPmu9AayiprtKYOn7h8k
I6vabqqp2dw5gKKELd9Q+cDnuhzqbcSru5QcTQZkNOvQVe3gOOP/oePESo7QVsylC8NzG4iIuDz9
+pdgcw5x79dOK9cQNC6mm8twEUsDoPp6O60YA8NGh0aOelay+mIbzCS/7s0E
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
