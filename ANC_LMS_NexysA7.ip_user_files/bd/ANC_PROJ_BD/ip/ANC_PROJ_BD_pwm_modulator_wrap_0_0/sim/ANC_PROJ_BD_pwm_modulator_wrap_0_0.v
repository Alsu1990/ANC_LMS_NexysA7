// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:pwm_modulator_wrap:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ANC_PROJ_BD_pwm_modulator_wrap_0_0 (
  m_axis_aud_aclk,
  m_axis_aud_tvalid,
  m_axis_aud_tid,
  m_axis_aud_tdata,
  m_axis_aud_aresetn,
  m_axis_aud_tready,
  pwm_out
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aud_aclk, ASSOCIATED_BUSIF m_axis_aud, ASSOCIATED_RESET m_axis_aud_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN 100MHZ_INPUT_CLK, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 m_axis_aud_aclk CLK" *)
input wire m_axis_aud_aclk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TVALID" *)
input wire m_axis_aud_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TID" *)
input wire [2 : 0] m_axis_aud_tid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TDATA" *)
input wire [31 : 0] m_axis_aud_tdata;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aud_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 m_axis_aud_aresetn RST" *)
input wire m_axis_aud_aresetn;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_aud, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 3, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 0, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN 100MHZ_INPUT_CLK, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_aud TREADY" *)
output wire m_axis_aud_tready;
output wire pwm_out;

  pwm_modulator_wrap inst (
    .m_axis_aud_aclk(m_axis_aud_aclk),
    .m_axis_aud_tvalid(m_axis_aud_tvalid),
    .m_axis_aud_tid(m_axis_aud_tid),
    .m_axis_aud_tdata(m_axis_aud_tdata),
    .m_axis_aud_aresetn(m_axis_aud_aresetn),
    .m_axis_aud_tready(m_axis_aud_tready),
    .pwm_out(pwm_out)
  );
endmodule
