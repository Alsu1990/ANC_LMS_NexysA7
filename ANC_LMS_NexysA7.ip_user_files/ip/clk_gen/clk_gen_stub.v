// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Mar 20 20:05:33 2022
// Host        : AR-LAP-163 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Xilinx/Projects/ANC_LMS_NexysA7/ANC_LMS_NexysA7.runs/clk_gen_synth_1/clk_gen_stub.v
// Design      : clk_gen
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
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
