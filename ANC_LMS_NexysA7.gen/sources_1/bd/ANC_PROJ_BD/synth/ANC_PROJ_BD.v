//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
//Date        : Sat Jan  8 14:23:34 2022
//Host        : AR-LAP-111 running 64-bit major release  (build 9200)
//Command     : generate_target ANC_PROJ_BD.bd
//Design      : ANC_PROJ_BD
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

/* MIC SEL = 0
Microphone active on '0' */
(* CORE_GENERATION_INFO = "ANC_PROJ_BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ANC_PROJ_BD,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=8,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=3,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,\"da_axi4_cnt\"=1,\"da_clkrst_cnt\"=2,synth_mode=Global}" *) (* HW_HANDOFF = "ANC_PROJ_BD.hwdef" *) 
module ANC_PROJ_BD
   (CLK100MHZ,
    CPU_RESETN,
    JD1,
    JD10,
    JD2,
    JD3,
    JD4,
    LED0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK100MHZ CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK100MHZ, CLK_DOMAIN 100MHZ_INPUT_CLK, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input CLK100MHZ;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.CPU_RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.CPU_RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input CPU_RESETN;
  output [0:0]JD1;
  output JD10;
  output JD2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.JD3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.JD3, LAYERED_METADATA undef" *) input JD3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.JD4 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.JD4, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) output JD4;
  output LED0;

  wire CLK100MHZ;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire JD3_1;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [31:0]i2s_receiver_0_m_axis_aud_TDATA;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire [2:0]i2s_receiver_0_m_axis_aud_TID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire i2s_receiver_0_m_axis_aud_TREADY;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire i2s_receiver_0_m_axis_aud_TVALID;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire i2s_reciever_JD2;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire i2s_reciever_JD4;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
  wire [0:0]proc_sys_reset_0_peripheral_reset;
  (* DEBUG = "true" *) (* MARK_DEBUG *) wire pwm_modulator_wrap_0_pwm_out;
  wire reset_1;
  wire [0:0]xlconstant_0_dout;

  assign JD1[0] = xlconstant_0_dout;
  assign JD10 = pwm_modulator_wrap_0_pwm_out;
  assign JD2 = i2s_reciever_JD2;
  assign JD3_1 = JD3;
  assign JD4 = i2s_reciever_JD4;
  assign LED0 = reset_1;
  assign reset_1 = CPU_RESETN;
  i2s_reciever_imp_1HBR798 i2s_reciever
       (.CLK100MHZ(CLK100MHZ),
        .JD2(i2s_reciever_JD2),
        .JD3(JD3_1),
        .JD4(i2s_reciever_JD4),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .aud_mrst(proc_sys_reset_0_peripheral_reset),
        .m_axis_aud_tdata(i2s_receiver_0_m_axis_aud_TDATA),
        .m_axis_aud_tid(i2s_receiver_0_m_axis_aud_TID),
        .m_axis_aud_tready(i2s_receiver_0_m_axis_aud_TREADY),
        .m_axis_aud_tvalid(i2s_receiver_0_m_axis_aud_TVALID));
  ANC_PROJ_BD_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(1'b1),
        .ext_reset_in(reset_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .peripheral_reset(proc_sys_reset_0_peripheral_reset),
        .slowest_sync_clk(CLK100MHZ));
  ANC_PROJ_BD_pwm_modulator_wrap_0_0 pwm_modulator_wrap_0
       (.m_axis_aud_aclk(CLK100MHZ),
        .m_axis_aud_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axis_aud_tdata(i2s_receiver_0_m_axis_aud_TDATA),
        .m_axis_aud_tid(i2s_receiver_0_m_axis_aud_TID),
        .m_axis_aud_tready(i2s_receiver_0_m_axis_aud_TREADY),
        .m_axis_aud_tvalid(i2s_receiver_0_m_axis_aud_TVALID),
        .pwm_out(pwm_modulator_wrap_0_pwm_out));
  ANC_PROJ_BD_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
endmodule

module ANC_PROJ_BD_i2s_reciever_config_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [7:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [7:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [7:0]S00_AXI_araddr;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [7:0]S00_AXI_awaddr;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire i2s_reciever_config_0_axi_periph_ACLK_net;
  wire i2s_reciever_config_0_axi_periph_ARESETN_net;
  wire [7:0]i2s_reciever_config_0_axi_periph_to_s00_couplers_ARADDR;
  wire i2s_reciever_config_0_axi_periph_to_s00_couplers_ARREADY;
  wire i2s_reciever_config_0_axi_periph_to_s00_couplers_ARVALID;
  wire [7:0]i2s_reciever_config_0_axi_periph_to_s00_couplers_AWADDR;
  wire i2s_reciever_config_0_axi_periph_to_s00_couplers_AWREADY;
  wire i2s_reciever_config_0_axi_periph_to_s00_couplers_AWVALID;
  wire i2s_reciever_config_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]i2s_reciever_config_0_axi_periph_to_s00_couplers_BRESP;
  wire i2s_reciever_config_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]i2s_reciever_config_0_axi_periph_to_s00_couplers_RDATA;
  wire i2s_reciever_config_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]i2s_reciever_config_0_axi_periph_to_s00_couplers_RRESP;
  wire i2s_reciever_config_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]i2s_reciever_config_0_axi_periph_to_s00_couplers_WDATA;
  wire i2s_reciever_config_0_axi_periph_to_s00_couplers_WREADY;
  wire i2s_reciever_config_0_axi_periph_to_s00_couplers_WVALID;
  wire [7:0]s00_couplers_to_i2s_reciever_config_0_axi_periph_ARADDR;
  wire s00_couplers_to_i2s_reciever_config_0_axi_periph_ARREADY;
  wire s00_couplers_to_i2s_reciever_config_0_axi_periph_ARVALID;
  wire [7:0]s00_couplers_to_i2s_reciever_config_0_axi_periph_AWADDR;
  wire s00_couplers_to_i2s_reciever_config_0_axi_periph_AWREADY;
  wire s00_couplers_to_i2s_reciever_config_0_axi_periph_AWVALID;
  wire s00_couplers_to_i2s_reciever_config_0_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_i2s_reciever_config_0_axi_periph_BRESP;
  wire s00_couplers_to_i2s_reciever_config_0_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_i2s_reciever_config_0_axi_periph_RDATA;
  wire s00_couplers_to_i2s_reciever_config_0_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_i2s_reciever_config_0_axi_periph_RRESP;
  wire s00_couplers_to_i2s_reciever_config_0_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_i2s_reciever_config_0_axi_periph_WDATA;
  wire s00_couplers_to_i2s_reciever_config_0_axi_periph_WREADY;
  wire s00_couplers_to_i2s_reciever_config_0_axi_periph_WVALID;

  assign M00_AXI_araddr[7:0] = s00_couplers_to_i2s_reciever_config_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_i2s_reciever_config_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[7:0] = s00_couplers_to_i2s_reciever_config_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_i2s_reciever_config_0_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_i2s_reciever_config_0_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_i2s_reciever_config_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_i2s_reciever_config_0_axi_periph_WDATA;
  assign M00_AXI_wvalid = s00_couplers_to_i2s_reciever_config_0_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = i2s_reciever_config_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = i2s_reciever_config_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = i2s_reciever_config_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = i2s_reciever_config_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = i2s_reciever_config_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = i2s_reciever_config_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = i2s_reciever_config_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = i2s_reciever_config_0_axi_periph_to_s00_couplers_WREADY;
  assign i2s_reciever_config_0_axi_periph_ACLK_net = M00_ACLK;
  assign i2s_reciever_config_0_axi_periph_ARESETN_net = M00_ARESETN;
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[7:0];
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[7:0];
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_i2s_reciever_config_0_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_i2s_reciever_config_0_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_i2s_reciever_config_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_i2s_reciever_config_0_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_i2s_reciever_config_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_i2s_reciever_config_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_i2s_reciever_config_0_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_i2s_reciever_config_0_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_BWNAK7 s00_couplers
       (.M_ACLK(i2s_reciever_config_0_axi_periph_ACLK_net),
        .M_ARESETN(i2s_reciever_config_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_i2s_reciever_config_0_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_i2s_reciever_config_0_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_i2s_reciever_config_0_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_i2s_reciever_config_0_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_i2s_reciever_config_0_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_i2s_reciever_config_0_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_i2s_reciever_config_0_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_i2s_reciever_config_0_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_i2s_reciever_config_0_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_i2s_reciever_config_0_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_i2s_reciever_config_0_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_i2s_reciever_config_0_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_i2s_reciever_config_0_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_i2s_reciever_config_0_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_i2s_reciever_config_0_axi_periph_WREADY),
        .M_AXI_wvalid(s00_couplers_to_i2s_reciever_config_0_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(i2s_reciever_config_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arready(i2s_reciever_config_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(i2s_reciever_config_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(i2s_reciever_config_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awready(i2s_reciever_config_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(i2s_reciever_config_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(i2s_reciever_config_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(i2s_reciever_config_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(i2s_reciever_config_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(i2s_reciever_config_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(i2s_reciever_config_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(i2s_reciever_config_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(i2s_reciever_config_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(i2s_reciever_config_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(i2s_reciever_config_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wvalid(i2s_reciever_config_0_axi_periph_to_s00_couplers_WVALID));
endmodule

module i2s_reciever_imp_1HBR798
   (CLK100MHZ,
    JD2,
    JD3,
    JD4,
    S00_ARESETN,
    aud_mrst,
    m_axis_aud_tdata,
    m_axis_aud_tid,
    m_axis_aud_tready,
    m_axis_aud_tvalid);
  input CLK100MHZ;
  output JD2;
  input JD3;
  output JD4;
  input S00_ARESETN;
  input aud_mrst;
  output [31:0]m_axis_aud_tdata;
  output [2:0]m_axis_aud_tid;
  input m_axis_aud_tready;
  output m_axis_aud_tvalid;

  (* DEBUG = "true" *) wire JD3_1;
  (* DEBUG = "true" *) wire i2s_receiver_0_lrclk_out;
  (* DEBUG = "true" *) wire [31:0]i2s_receiver_0_m_axis_aud_TDATA;
  (* DEBUG = "true" *) wire [2:0]i2s_receiver_0_m_axis_aud_TID;
  (* DEBUG = "true" *) wire i2s_receiver_0_m_axis_aud_TREADY;
  (* DEBUG = "true" *) wire i2s_receiver_0_m_axis_aud_TVALID;
  (* DEBUG = "true" *) wire i2s_receiver_0_sclk_out;
  wire [7:0]i2s_reciever_config_0_axi_periph_M00_AXI_ARADDR;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_ARREADY;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_ARVALID;
  wire [7:0]i2s_reciever_config_0_axi_periph_M00_AXI_AWADDR;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_AWREADY;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_AWVALID;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]i2s_reciever_config_0_axi_periph_M00_AXI_BRESP;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]i2s_reciever_config_0_axi_periph_M00_AXI_RDATA;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]i2s_reciever_config_0_axi_periph_M00_AXI_RRESP;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]i2s_reciever_config_0_axi_periph_M00_AXI_WDATA;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_WREADY;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_WVALID;
  wire [7:0]i2s_reciever_config_0_s_axi_ctrl_ARADDR;
  wire i2s_reciever_config_0_s_axi_ctrl_ARREADY;
  wire i2s_reciever_config_0_s_axi_ctrl_ARVALID;
  wire [7:0]i2s_reciever_config_0_s_axi_ctrl_AWADDR;
  wire i2s_reciever_config_0_s_axi_ctrl_AWREADY;
  wire i2s_reciever_config_0_s_axi_ctrl_AWVALID;
  wire i2s_reciever_config_0_s_axi_ctrl_BREADY;
  wire [1:0]i2s_reciever_config_0_s_axi_ctrl_BRESP;
  wire i2s_reciever_config_0_s_axi_ctrl_BVALID;
  wire [31:0]i2s_reciever_config_0_s_axi_ctrl_RDATA;
  wire i2s_reciever_config_0_s_axi_ctrl_RREADY;
  wire [1:0]i2s_reciever_config_0_s_axi_ctrl_RRESP;
  wire i2s_reciever_config_0_s_axi_ctrl_RVALID;
  wire [31:0]i2s_reciever_config_0_s_axi_ctrl_WDATA;
  wire i2s_reciever_config_0_s_axi_ctrl_WREADY;
  wire i2s_reciever_config_0_s_axi_ctrl_WVALID;
  wire proc_sys_reset_0_peripheral_aresetn;
  wire proc_sys_reset_0_peripheral_reset;
  wire sys_clock_1;

  assign JD2 = i2s_receiver_0_lrclk_out;
  assign JD3_1 = JD3;
  assign JD4 = i2s_receiver_0_sclk_out;
  assign i2s_receiver_0_m_axis_aud_TREADY = m_axis_aud_tready;
  assign m_axis_aud_tdata[31:0] = i2s_receiver_0_m_axis_aud_TDATA;
  assign m_axis_aud_tid[2:0] = i2s_receiver_0_m_axis_aud_TID;
  assign m_axis_aud_tvalid = i2s_receiver_0_m_axis_aud_TVALID;
  assign proc_sys_reset_0_peripheral_aresetn = S00_ARESETN;
  assign proc_sys_reset_0_peripheral_reset = aud_mrst;
  assign sys_clock_1 = CLK100MHZ;
  ANC_PROJ_BD_i2s_receiver_0_0 i2s_receiver_0
       (.aud_mclk(sys_clock_1),
        .aud_mrst(proc_sys_reset_0_peripheral_reset),
        .lrclk_out(i2s_receiver_0_lrclk_out),
        .m_axis_aud_aclk(sys_clock_1),
        .m_axis_aud_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axis_aud_tdata(i2s_receiver_0_m_axis_aud_TDATA),
        .m_axis_aud_tid(i2s_receiver_0_m_axis_aud_TID),
        .m_axis_aud_tready(i2s_receiver_0_m_axis_aud_TREADY),
        .m_axis_aud_tvalid(i2s_receiver_0_m_axis_aud_TVALID),
        .s_axi_ctrl_aclk(sys_clock_1),
        .s_axi_ctrl_araddr(i2s_reciever_config_0_axi_periph_M00_AXI_ARADDR),
        .s_axi_ctrl_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_ctrl_arready(i2s_reciever_config_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_ctrl_arvalid(i2s_reciever_config_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_ctrl_awaddr(i2s_reciever_config_0_axi_periph_M00_AXI_AWADDR),
        .s_axi_ctrl_awready(i2s_reciever_config_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_ctrl_awvalid(i2s_reciever_config_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_ctrl_bready(i2s_reciever_config_0_axi_periph_M00_AXI_BREADY),
        .s_axi_ctrl_bresp(i2s_reciever_config_0_axi_periph_M00_AXI_BRESP),
        .s_axi_ctrl_bvalid(i2s_reciever_config_0_axi_periph_M00_AXI_BVALID),
        .s_axi_ctrl_rdata(i2s_reciever_config_0_axi_periph_M00_AXI_RDATA),
        .s_axi_ctrl_rready(i2s_reciever_config_0_axi_periph_M00_AXI_RREADY),
        .s_axi_ctrl_rresp(i2s_reciever_config_0_axi_periph_M00_AXI_RRESP),
        .s_axi_ctrl_rvalid(i2s_reciever_config_0_axi_periph_M00_AXI_RVALID),
        .s_axi_ctrl_wdata(i2s_reciever_config_0_axi_periph_M00_AXI_WDATA),
        .s_axi_ctrl_wready(i2s_reciever_config_0_axi_periph_M00_AXI_WREADY),
        .s_axi_ctrl_wvalid(i2s_reciever_config_0_axi_periph_M00_AXI_WVALID),
        .sclk_out(i2s_receiver_0_sclk_out),
        .sdata_0_in(JD3_1));
  ANC_PROJ_BD_i2s_reciever_config_0_0 i2s_reciever_config_0
       (.s_axi_ctrl_aclk(sys_clock_1),
        .s_axi_ctrl_araddr(i2s_reciever_config_0_s_axi_ctrl_ARADDR),
        .s_axi_ctrl_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_ctrl_arready(i2s_reciever_config_0_s_axi_ctrl_ARREADY),
        .s_axi_ctrl_arvalid(i2s_reciever_config_0_s_axi_ctrl_ARVALID),
        .s_axi_ctrl_awaddr(i2s_reciever_config_0_s_axi_ctrl_AWADDR),
        .s_axi_ctrl_awready(i2s_reciever_config_0_s_axi_ctrl_AWREADY),
        .s_axi_ctrl_awvalid(i2s_reciever_config_0_s_axi_ctrl_AWVALID),
        .s_axi_ctrl_bready(i2s_reciever_config_0_s_axi_ctrl_BREADY),
        .s_axi_ctrl_bresp(i2s_reciever_config_0_s_axi_ctrl_BRESP),
        .s_axi_ctrl_bvalid(i2s_reciever_config_0_s_axi_ctrl_BVALID),
        .s_axi_ctrl_rdata(i2s_reciever_config_0_s_axi_ctrl_RDATA),
        .s_axi_ctrl_rready(i2s_reciever_config_0_s_axi_ctrl_RREADY),
        .s_axi_ctrl_rresp(i2s_reciever_config_0_s_axi_ctrl_RRESP),
        .s_axi_ctrl_rvalid(i2s_reciever_config_0_s_axi_ctrl_RVALID),
        .s_axi_ctrl_wdata(i2s_reciever_config_0_s_axi_ctrl_WDATA),
        .s_axi_ctrl_wready(i2s_reciever_config_0_s_axi_ctrl_WREADY),
        .s_axi_ctrl_wvalid(i2s_reciever_config_0_s_axi_ctrl_WVALID));
  ANC_PROJ_BD_i2s_reciever_config_0_axi_periph_0 i2s_reciever_config_0_axi_periph
       (.ACLK(sys_clock_1),
        .ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_ACLK(sys_clock_1),
        .M00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .M00_AXI_araddr(i2s_reciever_config_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(i2s_reciever_config_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(i2s_reciever_config_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(i2s_reciever_config_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(i2s_reciever_config_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(i2s_reciever_config_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(i2s_reciever_config_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(i2s_reciever_config_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(i2s_reciever_config_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(i2s_reciever_config_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(i2s_reciever_config_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(i2s_reciever_config_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(i2s_reciever_config_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(i2s_reciever_config_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(i2s_reciever_config_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wvalid(i2s_reciever_config_0_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(sys_clock_1),
        .S00_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S00_AXI_araddr(i2s_reciever_config_0_s_axi_ctrl_ARADDR),
        .S00_AXI_arready(i2s_reciever_config_0_s_axi_ctrl_ARREADY),
        .S00_AXI_arvalid(i2s_reciever_config_0_s_axi_ctrl_ARVALID),
        .S00_AXI_awaddr(i2s_reciever_config_0_s_axi_ctrl_AWADDR),
        .S00_AXI_awready(i2s_reciever_config_0_s_axi_ctrl_AWREADY),
        .S00_AXI_awvalid(i2s_reciever_config_0_s_axi_ctrl_AWVALID),
        .S00_AXI_bready(i2s_reciever_config_0_s_axi_ctrl_BREADY),
        .S00_AXI_bresp(i2s_reciever_config_0_s_axi_ctrl_BRESP),
        .S00_AXI_bvalid(i2s_reciever_config_0_s_axi_ctrl_BVALID),
        .S00_AXI_rdata(i2s_reciever_config_0_s_axi_ctrl_RDATA),
        .S00_AXI_rready(i2s_reciever_config_0_s_axi_ctrl_RREADY),
        .S00_AXI_rresp(i2s_reciever_config_0_s_axi_ctrl_RRESP),
        .S00_AXI_rvalid(i2s_reciever_config_0_s_axi_ctrl_RVALID),
        .S00_AXI_wdata(i2s_reciever_config_0_s_axi_ctrl_WDATA),
        .S00_AXI_wready(i2s_reciever_config_0_s_axi_ctrl_WREADY),
        .S00_AXI_wvalid(i2s_reciever_config_0_s_axi_ctrl_WVALID));
endmodule

module s00_couplers_imp_BWNAK7
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [7:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [7:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [7:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [7:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input S_AXI_wvalid;

  wire [7:0]s00_couplers_to_s00_couplers_ARADDR;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [7:0]s00_couplers_to_s00_couplers_AWADDR;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[7:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[7:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[7:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[7:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule
