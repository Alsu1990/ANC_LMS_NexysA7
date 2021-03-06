// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
// Date        : Sat Jul  9 12:14:04 2022
// Host        : RYZEN running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/Projects/FPGA/ANC_LMS_NexysA7/ANC_LMS_NexysA7.runs/clk_gen_synth_1/clk_gen_stub.v
// Design      : clk_gen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module clk_gen(clk100, clk25, reset, locked, clk_ref)
/* synthesis syn_black_box black_box_pad_pin="clk100,clk25,reset,locked,clk_ref" */;
  output clk100;
  output clk25;
  input reset;
  output locked;
  input clk_ref;
endmodule
