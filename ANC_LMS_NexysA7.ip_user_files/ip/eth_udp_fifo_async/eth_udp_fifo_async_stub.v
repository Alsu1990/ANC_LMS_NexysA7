// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
// Date        : Thu Feb 24 18:17:33 2022
// Host        : AR-LAP-111 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Xilinx/Projects/fpga-ethernet-udp/proj/fpga_ethernet_udp.runs/eth_udp_fifo_async_synth_1/eth_udp_fifo_async_stub.v
// Design      : eth_udp_fifo_async
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "fifo_generator_v13_2_5,Vivado 2021.1.1" *)
module eth_udp_fifo_async(rst, wr_clk, rd_clk, din, wr_en, rd_en, dout, full, 
  empty, rd_data_count, wr_rst_busy, rd_rst_busy)
/* synthesis syn_black_box black_box_pad_pin="rst,wr_clk,rd_clk,din[3:0],wr_en,rd_en,dout[3:0],full,empty,rd_data_count[11:0],wr_rst_busy,rd_rst_busy" */;
  input rst;
  input wr_clk;
  input rd_clk;
  input [3:0]din;
  input wr_en;
  input rd_en;
  output [3:0]dout;
  output full;
  output empty;
  output [11:0]rd_data_count;
  output wr_rst_busy;
  output rd_rst_busy;
endmodule
