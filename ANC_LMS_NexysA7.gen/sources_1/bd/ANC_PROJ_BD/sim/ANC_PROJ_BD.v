//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
//Date        : Fri Jan 14 13:42:00 2022
//Host        : AR-LAP-111 running 64-bit major release  (build 9200)
//Command     : generate_target ANC_PROJ_BD.bd
//Design      : ANC_PROJ_BD
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

/* MIC SEL = 0
Microphone active on '0' */
(* CORE_GENERATION_INFO = "ANC_PROJ_BD,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ANC_PROJ_BD,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=5,maxHierDepth=1,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_clkrst_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=2,\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"da_axi4_cnt\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"\"=1,\"\"da_axi4_cnt\"\"=2,synth_mode=Global}" *) (* HW_HANDOFF = "ANC_PROJ_BD.hwdef" *) 
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
  wire [31:0]jtag_axi_0_M_AXI_ARADDR;
  wire [1:0]jtag_axi_0_M_AXI_ARBURST;
  wire [3:0]jtag_axi_0_M_AXI_ARCACHE;
  wire [0:0]jtag_axi_0_M_AXI_ARID;
  wire [7:0]jtag_axi_0_M_AXI_ARLEN;
  wire jtag_axi_0_M_AXI_ARLOCK;
  wire [2:0]jtag_axi_0_M_AXI_ARPROT;
  wire [3:0]jtag_axi_0_M_AXI_ARQOS;
  wire jtag_axi_0_M_AXI_ARREADY;
  wire [2:0]jtag_axi_0_M_AXI_ARSIZE;
  wire jtag_axi_0_M_AXI_ARVALID;
  wire [31:0]jtag_axi_0_M_AXI_AWADDR;
  wire [1:0]jtag_axi_0_M_AXI_AWBURST;
  wire [3:0]jtag_axi_0_M_AXI_AWCACHE;
  wire [0:0]jtag_axi_0_M_AXI_AWID;
  wire [7:0]jtag_axi_0_M_AXI_AWLEN;
  wire jtag_axi_0_M_AXI_AWLOCK;
  wire [2:0]jtag_axi_0_M_AXI_AWPROT;
  wire [3:0]jtag_axi_0_M_AXI_AWQOS;
  wire jtag_axi_0_M_AXI_AWREADY;
  wire [2:0]jtag_axi_0_M_AXI_AWSIZE;
  wire jtag_axi_0_M_AXI_AWVALID;
  wire [0:0]jtag_axi_0_M_AXI_BID;
  wire jtag_axi_0_M_AXI_BREADY;
  wire [1:0]jtag_axi_0_M_AXI_BRESP;
  wire jtag_axi_0_M_AXI_BVALID;
  wire [31:0]jtag_axi_0_M_AXI_RDATA;
  wire [0:0]jtag_axi_0_M_AXI_RID;
  wire jtag_axi_0_M_AXI_RLAST;
  wire jtag_axi_0_M_AXI_RREADY;
  wire [1:0]jtag_axi_0_M_AXI_RRESP;
  wire jtag_axi_0_M_AXI_RVALID;
  wire [31:0]jtag_axi_0_M_AXI_WDATA;
  wire jtag_axi_0_M_AXI_WLAST;
  wire jtag_axi_0_M_AXI_WREADY;
  wire [3:0]jtag_axi_0_M_AXI_WSTRB;
  wire jtag_axi_0_M_AXI_WVALID;
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
        .S01_AXI1_araddr(jtag_axi_0_M_AXI_ARADDR),
        .S01_AXI1_arburst(jtag_axi_0_M_AXI_ARBURST),
        .S01_AXI1_arcache(jtag_axi_0_M_AXI_ARCACHE),
        .S01_AXI1_arid(jtag_axi_0_M_AXI_ARID),
        .S01_AXI1_arlen(jtag_axi_0_M_AXI_ARLEN),
        .S01_AXI1_arlock(jtag_axi_0_M_AXI_ARLOCK),
        .S01_AXI1_arprot(jtag_axi_0_M_AXI_ARPROT),
        .S01_AXI1_arqos(jtag_axi_0_M_AXI_ARQOS),
        .S01_AXI1_arready(jtag_axi_0_M_AXI_ARREADY),
        .S01_AXI1_arsize(jtag_axi_0_M_AXI_ARSIZE),
        .S01_AXI1_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .S01_AXI1_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .S01_AXI1_awburst(jtag_axi_0_M_AXI_AWBURST),
        .S01_AXI1_awcache(jtag_axi_0_M_AXI_AWCACHE),
        .S01_AXI1_awid(jtag_axi_0_M_AXI_AWID),
        .S01_AXI1_awlen(jtag_axi_0_M_AXI_AWLEN),
        .S01_AXI1_awlock(jtag_axi_0_M_AXI_AWLOCK),
        .S01_AXI1_awprot(jtag_axi_0_M_AXI_AWPROT),
        .S01_AXI1_awqos(jtag_axi_0_M_AXI_AWQOS),
        .S01_AXI1_awready(jtag_axi_0_M_AXI_AWREADY),
        .S01_AXI1_awsize(jtag_axi_0_M_AXI_AWSIZE),
        .S01_AXI1_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .S01_AXI1_bid(jtag_axi_0_M_AXI_BID),
        .S01_AXI1_bready(jtag_axi_0_M_AXI_BREADY),
        .S01_AXI1_bresp(jtag_axi_0_M_AXI_BRESP),
        .S01_AXI1_bvalid(jtag_axi_0_M_AXI_BVALID),
        .S01_AXI1_rdata(jtag_axi_0_M_AXI_RDATA),
        .S01_AXI1_rid(jtag_axi_0_M_AXI_RID),
        .S01_AXI1_rlast(jtag_axi_0_M_AXI_RLAST),
        .S01_AXI1_rready(jtag_axi_0_M_AXI_RREADY),
        .S01_AXI1_rresp(jtag_axi_0_M_AXI_RRESP),
        .S01_AXI1_rvalid(jtag_axi_0_M_AXI_RVALID),
        .S01_AXI1_wdata(jtag_axi_0_M_AXI_WDATA),
        .S01_AXI1_wlast(jtag_axi_0_M_AXI_WLAST),
        .S01_AXI1_wready(jtag_axi_0_M_AXI_WREADY),
        .S01_AXI1_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .S01_AXI1_wvalid(jtag_axi_0_M_AXI_WVALID),
        .aud_mrst(proc_sys_reset_0_peripheral_reset),
        .m_axis_aud_tdata(i2s_receiver_0_m_axis_aud_TDATA),
        .m_axis_aud_tid(i2s_receiver_0_m_axis_aud_TID),
        .m_axis_aud_tready(i2s_receiver_0_m_axis_aud_TREADY),
        .m_axis_aud_tvalid(i2s_receiver_0_m_axis_aud_TVALID));
  ANC_PROJ_BD_jtag_axi_0_0 jtag_axi_0
       (.aclk(CLK100MHZ),
        .aresetn(proc_sys_reset_0_peripheral_aresetn),
        .m_axi_araddr(jtag_axi_0_M_AXI_ARADDR),
        .m_axi_arburst(jtag_axi_0_M_AXI_ARBURST),
        .m_axi_arcache(jtag_axi_0_M_AXI_ARCACHE),
        .m_axi_arid(jtag_axi_0_M_AXI_ARID),
        .m_axi_arlen(jtag_axi_0_M_AXI_ARLEN),
        .m_axi_arlock(jtag_axi_0_M_AXI_ARLOCK),
        .m_axi_arprot(jtag_axi_0_M_AXI_ARPROT),
        .m_axi_arqos(jtag_axi_0_M_AXI_ARQOS),
        .m_axi_arready(jtag_axi_0_M_AXI_ARREADY),
        .m_axi_arsize(jtag_axi_0_M_AXI_ARSIZE),
        .m_axi_arvalid(jtag_axi_0_M_AXI_ARVALID),
        .m_axi_awaddr(jtag_axi_0_M_AXI_AWADDR),
        .m_axi_awburst(jtag_axi_0_M_AXI_AWBURST),
        .m_axi_awcache(jtag_axi_0_M_AXI_AWCACHE),
        .m_axi_awid(jtag_axi_0_M_AXI_AWID),
        .m_axi_awlen(jtag_axi_0_M_AXI_AWLEN),
        .m_axi_awlock(jtag_axi_0_M_AXI_AWLOCK),
        .m_axi_awprot(jtag_axi_0_M_AXI_AWPROT),
        .m_axi_awqos(jtag_axi_0_M_AXI_AWQOS),
        .m_axi_awready(jtag_axi_0_M_AXI_AWREADY),
        .m_axi_awsize(jtag_axi_0_M_AXI_AWSIZE),
        .m_axi_awvalid(jtag_axi_0_M_AXI_AWVALID),
        .m_axi_bid(jtag_axi_0_M_AXI_BID),
        .m_axi_bready(jtag_axi_0_M_AXI_BREADY),
        .m_axi_bresp(jtag_axi_0_M_AXI_BRESP),
        .m_axi_bvalid(jtag_axi_0_M_AXI_BVALID),
        .m_axi_rdata(jtag_axi_0_M_AXI_RDATA),
        .m_axi_rid(jtag_axi_0_M_AXI_RID),
        .m_axi_rlast(jtag_axi_0_M_AXI_RLAST),
        .m_axi_rready(jtag_axi_0_M_AXI_RREADY),
        .m_axi_rresp(jtag_axi_0_M_AXI_RRESP),
        .m_axi_rvalid(jtag_axi_0_M_AXI_RVALID),
        .m_axi_wdata(jtag_axi_0_M_AXI_WDATA),
        .m_axi_wlast(jtag_axi_0_M_AXI_WLAST),
        .m_axi_wready(jtag_axi_0_M_AXI_WREADY),
        .m_axi_wstrb(jtag_axi_0_M_AXI_WSTRB),
        .m_axi_wvalid(jtag_axi_0_M_AXI_WVALID));
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

module ANC_PROJ_BD_i2s_reciever_config_0_axi_periph_1
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
    S00_AXI_wvalid,
    S01_ACLK,
    S01_ARESETN,
    S01_AXI_araddr,
    S01_AXI_arburst,
    S01_AXI_arcache,
    S01_AXI_arid,
    S01_AXI_arlen,
    S01_AXI_arlock,
    S01_AXI_arprot,
    S01_AXI_arqos,
    S01_AXI_arready,
    S01_AXI_arsize,
    S01_AXI_arvalid,
    S01_AXI_awaddr,
    S01_AXI_awburst,
    S01_AXI_awcache,
    S01_AXI_awid,
    S01_AXI_awlen,
    S01_AXI_awlock,
    S01_AXI_awprot,
    S01_AXI_awqos,
    S01_AXI_awready,
    S01_AXI_awsize,
    S01_AXI_awvalid,
    S01_AXI_bid,
    S01_AXI_bready,
    S01_AXI_bresp,
    S01_AXI_bvalid,
    S01_AXI_rdata,
    S01_AXI_rid,
    S01_AXI_rlast,
    S01_AXI_rready,
    S01_AXI_rresp,
    S01_AXI_rvalid,
    S01_AXI_wdata,
    S01_AXI_wlast,
    S01_AXI_wready,
    S01_AXI_wstrb,
    S01_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [0:0]M00_AXI_wvalid;
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
  input S01_ACLK;
  input S01_ARESETN;
  input [31:0]S01_AXI_araddr;
  input [1:0]S01_AXI_arburst;
  input [3:0]S01_AXI_arcache;
  input [0:0]S01_AXI_arid;
  input [7:0]S01_AXI_arlen;
  input S01_AXI_arlock;
  input [2:0]S01_AXI_arprot;
  input [3:0]S01_AXI_arqos;
  output S01_AXI_arready;
  input [2:0]S01_AXI_arsize;
  input S01_AXI_arvalid;
  input [31:0]S01_AXI_awaddr;
  input [1:0]S01_AXI_awburst;
  input [3:0]S01_AXI_awcache;
  input [0:0]S01_AXI_awid;
  input [7:0]S01_AXI_awlen;
  input S01_AXI_awlock;
  input [2:0]S01_AXI_awprot;
  input [3:0]S01_AXI_awqos;
  output S01_AXI_awready;
  input [2:0]S01_AXI_awsize;
  input S01_AXI_awvalid;
  output [0:0]S01_AXI_bid;
  input S01_AXI_bready;
  output [1:0]S01_AXI_bresp;
  output S01_AXI_bvalid;
  output [31:0]S01_AXI_rdata;
  output [0:0]S01_AXI_rid;
  output S01_AXI_rlast;
  input S01_AXI_rready;
  output [1:0]S01_AXI_rresp;
  output S01_AXI_rvalid;
  input [31:0]S01_AXI_wdata;
  input S01_AXI_wlast;
  output S01_AXI_wready;
  input [3:0]S01_AXI_wstrb;
  input S01_AXI_wvalid;

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
  wire [31:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_ARADDR;
  wire [1:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_ARBURST;
  wire [3:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_ARCACHE;
  wire [0:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_ARID;
  wire [7:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_ARLEN;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_ARLOCK;
  wire [2:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_ARPROT;
  wire [3:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_ARQOS;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_ARREADY;
  wire [2:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_ARSIZE;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_ARVALID;
  wire [31:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_AWADDR;
  wire [1:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_AWBURST;
  wire [3:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_AWCACHE;
  wire [0:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_AWID;
  wire [7:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_AWLEN;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_AWLOCK;
  wire [2:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_AWPROT;
  wire [3:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_AWQOS;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_AWREADY;
  wire [2:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_AWSIZE;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_AWVALID;
  wire [0:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_BID;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_BREADY;
  wire [1:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_BRESP;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_BVALID;
  wire [31:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_RDATA;
  wire [0:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_RID;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_RLAST;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_RREADY;
  wire [1:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_RRESP;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_RVALID;
  wire [31:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_WDATA;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_WLAST;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_WREADY;
  wire [3:0]i2s_reciever_config_0_axi_periph_to_s01_couplers_WSTRB;
  wire i2s_reciever_config_0_axi_periph_to_s01_couplers_WVALID;
  wire [31:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_WREADY;
  wire [0:0]m00_couplers_to_i2s_reciever_config_0_axi_periph_WVALID;
  wire [7:0]s00_couplers_to_xbar_ARADDR;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire s00_couplers_to_xbar_ARVALID;
  wire [7:0]s00_couplers_to_xbar_AWADDR;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire s00_couplers_to_xbar_AWVALID;
  wire s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire s00_couplers_to_xbar_WVALID;
  wire [31:0]s01_couplers_to_xbar_ARADDR;
  wire [2:0]s01_couplers_to_xbar_ARPROT;
  wire [1:1]s01_couplers_to_xbar_ARREADY;
  wire s01_couplers_to_xbar_ARVALID;
  wire [31:0]s01_couplers_to_xbar_AWADDR;
  wire [2:0]s01_couplers_to_xbar_AWPROT;
  wire [1:1]s01_couplers_to_xbar_AWREADY;
  wire s01_couplers_to_xbar_AWVALID;
  wire s01_couplers_to_xbar_BREADY;
  wire [3:2]s01_couplers_to_xbar_BRESP;
  wire [1:1]s01_couplers_to_xbar_BVALID;
  wire [63:32]s01_couplers_to_xbar_RDATA;
  wire s01_couplers_to_xbar_RREADY;
  wire [3:2]s01_couplers_to_xbar_RRESP;
  wire [1:1]s01_couplers_to_xbar_RVALID;
  wire [31:0]s01_couplers_to_xbar_WDATA;
  wire [1:1]s01_couplers_to_xbar_WREADY;
  wire [3:0]s01_couplers_to_xbar_WSTRB;
  wire s01_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [0:0]xbar_to_m00_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_i2s_reciever_config_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_i2s_reciever_config_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_i2s_reciever_config_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_i2s_reciever_config_0_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_i2s_reciever_config_0_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_i2s_reciever_config_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_i2s_reciever_config_0_axi_periph_WDATA;
  assign M00_AXI_wvalid[0] = m00_couplers_to_i2s_reciever_config_0_axi_periph_WVALID;
  assign S00_AXI_arready = i2s_reciever_config_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = i2s_reciever_config_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = i2s_reciever_config_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = i2s_reciever_config_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = i2s_reciever_config_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = i2s_reciever_config_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = i2s_reciever_config_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = i2s_reciever_config_0_axi_periph_to_s00_couplers_WREADY;
  assign S01_AXI_arready = i2s_reciever_config_0_axi_periph_to_s01_couplers_ARREADY;
  assign S01_AXI_awready = i2s_reciever_config_0_axi_periph_to_s01_couplers_AWREADY;
  assign S01_AXI_bid[0] = i2s_reciever_config_0_axi_periph_to_s01_couplers_BID;
  assign S01_AXI_bresp[1:0] = i2s_reciever_config_0_axi_periph_to_s01_couplers_BRESP;
  assign S01_AXI_bvalid = i2s_reciever_config_0_axi_periph_to_s01_couplers_BVALID;
  assign S01_AXI_rdata[31:0] = i2s_reciever_config_0_axi_periph_to_s01_couplers_RDATA;
  assign S01_AXI_rid[0] = i2s_reciever_config_0_axi_periph_to_s01_couplers_RID;
  assign S01_AXI_rlast = i2s_reciever_config_0_axi_periph_to_s01_couplers_RLAST;
  assign S01_AXI_rresp[1:0] = i2s_reciever_config_0_axi_periph_to_s01_couplers_RRESP;
  assign S01_AXI_rvalid = i2s_reciever_config_0_axi_periph_to_s01_couplers_RVALID;
  assign S01_AXI_wready = i2s_reciever_config_0_axi_periph_to_s01_couplers_WREADY;
  assign i2s_reciever_config_0_axi_periph_ACLK_net = ACLK;
  assign i2s_reciever_config_0_axi_periph_ARESETN_net = ARESETN;
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[7:0];
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[7:0];
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign i2s_reciever_config_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_ARADDR = S01_AXI_araddr[31:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_ARBURST = S01_AXI_arburst[1:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_ARCACHE = S01_AXI_arcache[3:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_ARID = S01_AXI_arid[0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_ARLEN = S01_AXI_arlen[7:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_ARLOCK = S01_AXI_arlock;
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_ARPROT = S01_AXI_arprot[2:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_ARQOS = S01_AXI_arqos[3:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_ARSIZE = S01_AXI_arsize[2:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_ARVALID = S01_AXI_arvalid;
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_AWADDR = S01_AXI_awaddr[31:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_AWBURST = S01_AXI_awburst[1:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_AWCACHE = S01_AXI_awcache[3:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_AWID = S01_AXI_awid[0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_AWLEN = S01_AXI_awlen[7:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_AWLOCK = S01_AXI_awlock;
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_AWPROT = S01_AXI_awprot[2:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_AWQOS = S01_AXI_awqos[3:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_AWSIZE = S01_AXI_awsize[2:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_AWVALID = S01_AXI_awvalid;
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_BREADY = S01_AXI_bready;
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_RREADY = S01_AXI_rready;
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_WDATA = S01_AXI_wdata[31:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_WLAST = S01_AXI_wlast;
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_WSTRB = S01_AXI_wstrb[3:0];
  assign i2s_reciever_config_0_axi_periph_to_s01_couplers_WVALID = S01_AXI_wvalid;
  assign m00_couplers_to_i2s_reciever_config_0_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_i2s_reciever_config_0_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_i2s_reciever_config_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_i2s_reciever_config_0_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_i2s_reciever_config_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_i2s_reciever_config_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_i2s_reciever_config_0_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_i2s_reciever_config_0_axi_periph_WREADY = M00_AXI_wready[0];
  m00_couplers_imp_1J6U4VB m00_couplers
       (.M_ACLK(i2s_reciever_config_0_axi_periph_ACLK_net),
        .M_ARESETN(i2s_reciever_config_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_i2s_reciever_config_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_i2s_reciever_config_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_i2s_reciever_config_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_i2s_reciever_config_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_i2s_reciever_config_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_i2s_reciever_config_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_i2s_reciever_config_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_i2s_reciever_config_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_i2s_reciever_config_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_i2s_reciever_config_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_i2s_reciever_config_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_i2s_reciever_config_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_i2s_reciever_config_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_i2s_reciever_config_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_i2s_reciever_config_0_axi_periph_WREADY),
        .M_AXI_wvalid(m00_couplers_to_i2s_reciever_config_0_axi_periph_WVALID),
        .S_ACLK(i2s_reciever_config_0_axi_periph_ACLK_net),
        .S_ARESETN(i2s_reciever_config_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  s00_couplers_imp_BWNAK7 s00_couplers
       (.M_ACLK(i2s_reciever_config_0_axi_periph_ACLK_net),
        .M_ARESETN(i2s_reciever_config_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(i2s_reciever_config_0_axi_periph_ACLK_net),
        .S_ARESETN(i2s_reciever_config_0_axi_periph_ARESETN_net),
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
  s01_couplers_imp_1E9YIEH s01_couplers
       (.M_ACLK(i2s_reciever_config_0_axi_periph_ACLK_net),
        .M_ARESETN(i2s_reciever_config_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s01_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s01_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s01_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s01_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s01_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s01_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s01_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s01_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s01_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s01_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s01_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s01_couplers_to_xbar_RDATA),
        .M_AXI_rready(s01_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s01_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s01_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s01_couplers_to_xbar_WDATA),
        .M_AXI_wready(s01_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s01_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s01_couplers_to_xbar_WVALID),
        .S_ACLK(i2s_reciever_config_0_axi_periph_ACLK_net),
        .S_ARESETN(i2s_reciever_config_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARADDR),
        .S_AXI_arburst(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARBURST),
        .S_AXI_arcache(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARCACHE),
        .S_AXI_arid(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARID),
        .S_AXI_arlen(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARLEN),
        .S_AXI_arlock(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARLOCK),
        .S_AXI_arprot(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARPROT),
        .S_AXI_arqos(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARQOS),
        .S_AXI_arready(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARREADY),
        .S_AXI_arsize(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARSIZE),
        .S_AXI_arvalid(i2s_reciever_config_0_axi_periph_to_s01_couplers_ARVALID),
        .S_AXI_awaddr(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWADDR),
        .S_AXI_awburst(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWBURST),
        .S_AXI_awcache(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWCACHE),
        .S_AXI_awid(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWID),
        .S_AXI_awlen(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWLEN),
        .S_AXI_awlock(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWLOCK),
        .S_AXI_awprot(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWPROT),
        .S_AXI_awqos(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWQOS),
        .S_AXI_awready(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWREADY),
        .S_AXI_awsize(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWSIZE),
        .S_AXI_awvalid(i2s_reciever_config_0_axi_periph_to_s01_couplers_AWVALID),
        .S_AXI_bid(i2s_reciever_config_0_axi_periph_to_s01_couplers_BID),
        .S_AXI_bready(i2s_reciever_config_0_axi_periph_to_s01_couplers_BREADY),
        .S_AXI_bresp(i2s_reciever_config_0_axi_periph_to_s01_couplers_BRESP),
        .S_AXI_bvalid(i2s_reciever_config_0_axi_periph_to_s01_couplers_BVALID),
        .S_AXI_rdata(i2s_reciever_config_0_axi_periph_to_s01_couplers_RDATA),
        .S_AXI_rid(i2s_reciever_config_0_axi_periph_to_s01_couplers_RID),
        .S_AXI_rlast(i2s_reciever_config_0_axi_periph_to_s01_couplers_RLAST),
        .S_AXI_rready(i2s_reciever_config_0_axi_periph_to_s01_couplers_RREADY),
        .S_AXI_rresp(i2s_reciever_config_0_axi_periph_to_s01_couplers_RRESP),
        .S_AXI_rvalid(i2s_reciever_config_0_axi_periph_to_s01_couplers_RVALID),
        .S_AXI_wdata(i2s_reciever_config_0_axi_periph_to_s01_couplers_WDATA),
        .S_AXI_wlast(i2s_reciever_config_0_axi_periph_to_s01_couplers_WLAST),
        .S_AXI_wready(i2s_reciever_config_0_axi_periph_to_s01_couplers_WREADY),
        .S_AXI_wstrb(i2s_reciever_config_0_axi_periph_to_s01_couplers_WSTRB),
        .S_AXI_wvalid(i2s_reciever_config_0_axi_periph_to_s01_couplers_WVALID));
  ANC_PROJ_BD_xbar_1 xbar
       (.aclk(i2s_reciever_config_0_axi_periph_ACLK_net),
        .aresetn(i2s_reciever_config_0_axi_periph_ARESETN_net),
        .m_axi_araddr(xbar_to_m00_couplers_ARADDR),
        .m_axi_arready(xbar_to_m00_couplers_ARREADY),
        .m_axi_arvalid(xbar_to_m00_couplers_ARVALID),
        .m_axi_awaddr(xbar_to_m00_couplers_AWADDR),
        .m_axi_awready(xbar_to_m00_couplers_AWREADY),
        .m_axi_awvalid(xbar_to_m00_couplers_AWVALID),
        .m_axi_bready(xbar_to_m00_couplers_BREADY),
        .m_axi_bresp(xbar_to_m00_couplers_BRESP),
        .m_axi_bvalid(xbar_to_m00_couplers_BVALID),
        .m_axi_rdata(xbar_to_m00_couplers_RDATA),
        .m_axi_rready(xbar_to_m00_couplers_RREADY),
        .m_axi_rresp(xbar_to_m00_couplers_RRESP),
        .m_axi_rvalid(xbar_to_m00_couplers_RVALID),
        .m_axi_wdata(xbar_to_m00_couplers_WDATA),
        .m_axi_wready(xbar_to_m00_couplers_WREADY),
        .m_axi_wvalid(xbar_to_m00_couplers_WVALID),
        .s_axi_araddr({s01_couplers_to_xbar_ARADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_ARADDR}),
        .s_axi_arprot({s01_couplers_to_xbar_ARPROT,1'b0,1'b0,1'b0}),
        .s_axi_arready({s01_couplers_to_xbar_ARREADY,s00_couplers_to_xbar_ARREADY}),
        .s_axi_arvalid({s01_couplers_to_xbar_ARVALID,s00_couplers_to_xbar_ARVALID}),
        .s_axi_awaddr({s01_couplers_to_xbar_AWADDR,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s00_couplers_to_xbar_AWADDR}),
        .s_axi_awprot({s01_couplers_to_xbar_AWPROT,1'b0,1'b0,1'b0}),
        .s_axi_awready({s01_couplers_to_xbar_AWREADY,s00_couplers_to_xbar_AWREADY}),
        .s_axi_awvalid({s01_couplers_to_xbar_AWVALID,s00_couplers_to_xbar_AWVALID}),
        .s_axi_bready({s01_couplers_to_xbar_BREADY,s00_couplers_to_xbar_BREADY}),
        .s_axi_bresp({s01_couplers_to_xbar_BRESP,s00_couplers_to_xbar_BRESP}),
        .s_axi_bvalid({s01_couplers_to_xbar_BVALID,s00_couplers_to_xbar_BVALID}),
        .s_axi_rdata({s01_couplers_to_xbar_RDATA,s00_couplers_to_xbar_RDATA}),
        .s_axi_rready({s01_couplers_to_xbar_RREADY,s00_couplers_to_xbar_RREADY}),
        .s_axi_rresp({s01_couplers_to_xbar_RRESP,s00_couplers_to_xbar_RRESP}),
        .s_axi_rvalid({s01_couplers_to_xbar_RVALID,s00_couplers_to_xbar_RVALID}),
        .s_axi_wdata({s01_couplers_to_xbar_WDATA,s00_couplers_to_xbar_WDATA}),
        .s_axi_wready({s01_couplers_to_xbar_WREADY,s00_couplers_to_xbar_WREADY}),
        .s_axi_wstrb({s01_couplers_to_xbar_WSTRB,1'b1,1'b1,1'b1,1'b1}),
        .s_axi_wvalid({s01_couplers_to_xbar_WVALID,s00_couplers_to_xbar_WVALID}));
endmodule

module i2s_reciever_imp_1HBR798
   (CLK100MHZ,
    JD2,
    JD3,
    JD4,
    S00_ARESETN,
    S01_AXI1_araddr,
    S01_AXI1_arburst,
    S01_AXI1_arcache,
    S01_AXI1_arid,
    S01_AXI1_arlen,
    S01_AXI1_arlock,
    S01_AXI1_arprot,
    S01_AXI1_arqos,
    S01_AXI1_arready,
    S01_AXI1_arsize,
    S01_AXI1_arvalid,
    S01_AXI1_awaddr,
    S01_AXI1_awburst,
    S01_AXI1_awcache,
    S01_AXI1_awid,
    S01_AXI1_awlen,
    S01_AXI1_awlock,
    S01_AXI1_awprot,
    S01_AXI1_awqos,
    S01_AXI1_awready,
    S01_AXI1_awsize,
    S01_AXI1_awvalid,
    S01_AXI1_bid,
    S01_AXI1_bready,
    S01_AXI1_bresp,
    S01_AXI1_bvalid,
    S01_AXI1_rdata,
    S01_AXI1_rid,
    S01_AXI1_rlast,
    S01_AXI1_rready,
    S01_AXI1_rresp,
    S01_AXI1_rvalid,
    S01_AXI1_wdata,
    S01_AXI1_wlast,
    S01_AXI1_wready,
    S01_AXI1_wstrb,
    S01_AXI1_wvalid,
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
  input [31:0]S01_AXI1_araddr;
  input [1:0]S01_AXI1_arburst;
  input [3:0]S01_AXI1_arcache;
  input [0:0]S01_AXI1_arid;
  input [7:0]S01_AXI1_arlen;
  input S01_AXI1_arlock;
  input [2:0]S01_AXI1_arprot;
  input [3:0]S01_AXI1_arqos;
  output S01_AXI1_arready;
  input [2:0]S01_AXI1_arsize;
  input S01_AXI1_arvalid;
  input [31:0]S01_AXI1_awaddr;
  input [1:0]S01_AXI1_awburst;
  input [3:0]S01_AXI1_awcache;
  input [0:0]S01_AXI1_awid;
  input [7:0]S01_AXI1_awlen;
  input S01_AXI1_awlock;
  input [2:0]S01_AXI1_awprot;
  input [3:0]S01_AXI1_awqos;
  output S01_AXI1_awready;
  input [2:0]S01_AXI1_awsize;
  input S01_AXI1_awvalid;
  output [0:0]S01_AXI1_bid;
  input S01_AXI1_bready;
  output [1:0]S01_AXI1_bresp;
  output S01_AXI1_bvalid;
  output [31:0]S01_AXI1_rdata;
  output [0:0]S01_AXI1_rid;
  output S01_AXI1_rlast;
  input S01_AXI1_rready;
  output [1:0]S01_AXI1_rresp;
  output S01_AXI1_rvalid;
  input [31:0]S01_AXI1_wdata;
  input S01_AXI1_wlast;
  output S01_AXI1_wready;
  input [3:0]S01_AXI1_wstrb;
  input S01_AXI1_wvalid;
  input aud_mrst;
  output [31:0]m_axis_aud_tdata;
  output [2:0]m_axis_aud_tid;
  input m_axis_aud_tready;
  output m_axis_aud_tvalid;

  wire [31:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [0:0]Conn1_ARID;
  wire [7:0]Conn1_ARLEN;
  wire Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [3:0]Conn1_ARQOS;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [0:0]Conn1_AWID;
  wire [7:0]Conn1_AWLEN;
  wire Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [3:0]Conn1_AWQOS;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire [0:0]Conn1_BID;
  wire Conn1_BREADY;
  wire [1:0]Conn1_BRESP;
  wire Conn1_BVALID;
  wire [31:0]Conn1_RDATA;
  wire [0:0]Conn1_RID;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [31:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire [3:0]Conn1_WSTRB;
  wire Conn1_WVALID;
  (* DEBUG = "true" *) wire JD3_1;
  (* DEBUG = "true" *) wire i2s_receiver_0_lrclk_out;
  (* DEBUG = "true" *) wire [31:0]i2s_receiver_0_m_axis_aud_TDATA;
  (* DEBUG = "true" *) wire [2:0]i2s_receiver_0_m_axis_aud_TID;
  (* DEBUG = "true" *) wire i2s_receiver_0_m_axis_aud_TREADY;
  (* DEBUG = "true" *) wire i2s_receiver_0_m_axis_aud_TVALID;
  (* DEBUG = "true" *) wire i2s_receiver_0_sclk_out;
  wire [31:0]i2s_reciever_config_0_axi_periph_M00_AXI_ARADDR;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]i2s_reciever_config_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]i2s_reciever_config_0_axi_periph_M00_AXI_AWADDR;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]i2s_reciever_config_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]i2s_reciever_config_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]i2s_reciever_config_0_axi_periph_M00_AXI_BRESP;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]i2s_reciever_config_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]i2s_reciever_config_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]i2s_reciever_config_0_axi_periph_M00_AXI_RRESP;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]i2s_reciever_config_0_axi_periph_M00_AXI_WDATA;
  wire i2s_reciever_config_0_axi_periph_M00_AXI_WREADY;
  wire [0:0]i2s_reciever_config_0_axi_periph_M00_AXI_WVALID;
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

  assign Conn1_ARADDR = S01_AXI1_araddr[31:0];
  assign Conn1_ARBURST = S01_AXI1_arburst[1:0];
  assign Conn1_ARCACHE = S01_AXI1_arcache[3:0];
  assign Conn1_ARID = S01_AXI1_arid[0];
  assign Conn1_ARLEN = S01_AXI1_arlen[7:0];
  assign Conn1_ARLOCK = S01_AXI1_arlock;
  assign Conn1_ARPROT = S01_AXI1_arprot[2:0];
  assign Conn1_ARQOS = S01_AXI1_arqos[3:0];
  assign Conn1_ARSIZE = S01_AXI1_arsize[2:0];
  assign Conn1_ARVALID = S01_AXI1_arvalid;
  assign Conn1_AWADDR = S01_AXI1_awaddr[31:0];
  assign Conn1_AWBURST = S01_AXI1_awburst[1:0];
  assign Conn1_AWCACHE = S01_AXI1_awcache[3:0];
  assign Conn1_AWID = S01_AXI1_awid[0];
  assign Conn1_AWLEN = S01_AXI1_awlen[7:0];
  assign Conn1_AWLOCK = S01_AXI1_awlock;
  assign Conn1_AWPROT = S01_AXI1_awprot[2:0];
  assign Conn1_AWQOS = S01_AXI1_awqos[3:0];
  assign Conn1_AWSIZE = S01_AXI1_awsize[2:0];
  assign Conn1_AWVALID = S01_AXI1_awvalid;
  assign Conn1_BREADY = S01_AXI1_bready;
  assign Conn1_RREADY = S01_AXI1_rready;
  assign Conn1_WDATA = S01_AXI1_wdata[31:0];
  assign Conn1_WLAST = S01_AXI1_wlast;
  assign Conn1_WSTRB = S01_AXI1_wstrb[3:0];
  assign Conn1_WVALID = S01_AXI1_wvalid;
  assign JD2 = i2s_receiver_0_lrclk_out;
  assign JD3_1 = JD3;
  assign JD4 = i2s_receiver_0_sclk_out;
  assign S01_AXI1_arready = Conn1_ARREADY;
  assign S01_AXI1_awready = Conn1_AWREADY;
  assign S01_AXI1_bid[0] = Conn1_BID;
  assign S01_AXI1_bresp[1:0] = Conn1_BRESP;
  assign S01_AXI1_bvalid = Conn1_BVALID;
  assign S01_AXI1_rdata[31:0] = Conn1_RDATA;
  assign S01_AXI1_rid[0] = Conn1_RID;
  assign S01_AXI1_rlast = Conn1_RLAST;
  assign S01_AXI1_rresp[1:0] = Conn1_RRESP;
  assign S01_AXI1_rvalid = Conn1_RVALID;
  assign S01_AXI1_wready = Conn1_WREADY;
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
        .s_axi_ctrl_araddr(i2s_reciever_config_0_axi_periph_M00_AXI_ARADDR[7:0]),
        .s_axi_ctrl_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .s_axi_ctrl_arready(i2s_reciever_config_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_ctrl_arvalid(i2s_reciever_config_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_ctrl_awaddr(i2s_reciever_config_0_axi_periph_M00_AXI_AWADDR[7:0]),
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
  ANC_PROJ_BD_i2s_reciever_config_0_axi_periph_1 i2s_reciever_config_0_axi_periph
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
        .S00_AXI_wvalid(i2s_reciever_config_0_s_axi_ctrl_WVALID),
        .S01_ACLK(sys_clock_1),
        .S01_ARESETN(proc_sys_reset_0_peripheral_aresetn),
        .S01_AXI_araddr(Conn1_ARADDR),
        .S01_AXI_arburst(Conn1_ARBURST),
        .S01_AXI_arcache(Conn1_ARCACHE),
        .S01_AXI_arid(Conn1_ARID),
        .S01_AXI_arlen(Conn1_ARLEN),
        .S01_AXI_arlock(Conn1_ARLOCK),
        .S01_AXI_arprot(Conn1_ARPROT),
        .S01_AXI_arqos(Conn1_ARQOS),
        .S01_AXI_arready(Conn1_ARREADY),
        .S01_AXI_arsize(Conn1_ARSIZE),
        .S01_AXI_arvalid(Conn1_ARVALID),
        .S01_AXI_awaddr(Conn1_AWADDR),
        .S01_AXI_awburst(Conn1_AWBURST),
        .S01_AXI_awcache(Conn1_AWCACHE),
        .S01_AXI_awid(Conn1_AWID),
        .S01_AXI_awlen(Conn1_AWLEN),
        .S01_AXI_awlock(Conn1_AWLOCK),
        .S01_AXI_awprot(Conn1_AWPROT),
        .S01_AXI_awqos(Conn1_AWQOS),
        .S01_AXI_awready(Conn1_AWREADY),
        .S01_AXI_awsize(Conn1_AWSIZE),
        .S01_AXI_awvalid(Conn1_AWVALID),
        .S01_AXI_bid(Conn1_BID),
        .S01_AXI_bready(Conn1_BREADY),
        .S01_AXI_bresp(Conn1_BRESP),
        .S01_AXI_bvalid(Conn1_BVALID),
        .S01_AXI_rdata(Conn1_RDATA),
        .S01_AXI_rid(Conn1_RID),
        .S01_AXI_rlast(Conn1_RLAST),
        .S01_AXI_rready(Conn1_RREADY),
        .S01_AXI_rresp(Conn1_RRESP),
        .S01_AXI_rvalid(Conn1_RVALID),
        .S01_AXI_wdata(Conn1_WDATA),
        .S01_AXI_wlast(Conn1_WLAST),
        .S01_AXI_wready(Conn1_WREADY),
        .S01_AXI_wstrb(Conn1_WSTRB),
        .S01_AXI_wvalid(Conn1_WVALID));
endmodule

module m00_couplers_imp_1J6U4VB
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
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
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

module s01_couplers_imp_1E9YIEH
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
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
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arburst,
    S_AXI_arcache,
    S_AXI_arid,
    S_AXI_arlen,
    S_AXI_arlock,
    S_AXI_arprot,
    S_AXI_arqos,
    S_AXI_arready,
    S_AXI_arsize,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awburst,
    S_AXI_awcache,
    S_AXI_awid,
    S_AXI_awlen,
    S_AXI_awlock,
    S_AXI_awprot,
    S_AXI_awqos,
    S_AXI_awready,
    S_AXI_awsize,
    S_AXI_awvalid,
    S_AXI_bid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rid,
    S_AXI_rlast,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wlast,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
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
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [1:0]S_AXI_arburst;
  input [3:0]S_AXI_arcache;
  input [0:0]S_AXI_arid;
  input [7:0]S_AXI_arlen;
  input S_AXI_arlock;
  input [2:0]S_AXI_arprot;
  input [3:0]S_AXI_arqos;
  output S_AXI_arready;
  input [2:0]S_AXI_arsize;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [1:0]S_AXI_awburst;
  input [3:0]S_AXI_awcache;
  input [0:0]S_AXI_awid;
  input [7:0]S_AXI_awlen;
  input S_AXI_awlock;
  input [2:0]S_AXI_awprot;
  input [3:0]S_AXI_awqos;
  output S_AXI_awready;
  input [2:0]S_AXI_awsize;
  input S_AXI_awvalid;
  output [0:0]S_AXI_bid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  output [0:0]S_AXI_rid;
  output S_AXI_rlast;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  input S_AXI_wlast;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire S_ACLK_1;
  wire S_ARESETN_1;
  wire [31:0]auto_pc_to_s01_couplers_ARADDR;
  wire [2:0]auto_pc_to_s01_couplers_ARPROT;
  wire auto_pc_to_s01_couplers_ARREADY;
  wire auto_pc_to_s01_couplers_ARVALID;
  wire [31:0]auto_pc_to_s01_couplers_AWADDR;
  wire [2:0]auto_pc_to_s01_couplers_AWPROT;
  wire auto_pc_to_s01_couplers_AWREADY;
  wire auto_pc_to_s01_couplers_AWVALID;
  wire auto_pc_to_s01_couplers_BREADY;
  wire [1:0]auto_pc_to_s01_couplers_BRESP;
  wire auto_pc_to_s01_couplers_BVALID;
  wire [31:0]auto_pc_to_s01_couplers_RDATA;
  wire auto_pc_to_s01_couplers_RREADY;
  wire [1:0]auto_pc_to_s01_couplers_RRESP;
  wire auto_pc_to_s01_couplers_RVALID;
  wire [31:0]auto_pc_to_s01_couplers_WDATA;
  wire auto_pc_to_s01_couplers_WREADY;
  wire [3:0]auto_pc_to_s01_couplers_WSTRB;
  wire auto_pc_to_s01_couplers_WVALID;
  wire [31:0]s01_couplers_to_auto_pc_ARADDR;
  wire [1:0]s01_couplers_to_auto_pc_ARBURST;
  wire [3:0]s01_couplers_to_auto_pc_ARCACHE;
  wire [0:0]s01_couplers_to_auto_pc_ARID;
  wire [7:0]s01_couplers_to_auto_pc_ARLEN;
  wire s01_couplers_to_auto_pc_ARLOCK;
  wire [2:0]s01_couplers_to_auto_pc_ARPROT;
  wire [3:0]s01_couplers_to_auto_pc_ARQOS;
  wire s01_couplers_to_auto_pc_ARREADY;
  wire [2:0]s01_couplers_to_auto_pc_ARSIZE;
  wire s01_couplers_to_auto_pc_ARVALID;
  wire [31:0]s01_couplers_to_auto_pc_AWADDR;
  wire [1:0]s01_couplers_to_auto_pc_AWBURST;
  wire [3:0]s01_couplers_to_auto_pc_AWCACHE;
  wire [0:0]s01_couplers_to_auto_pc_AWID;
  wire [7:0]s01_couplers_to_auto_pc_AWLEN;
  wire s01_couplers_to_auto_pc_AWLOCK;
  wire [2:0]s01_couplers_to_auto_pc_AWPROT;
  wire [3:0]s01_couplers_to_auto_pc_AWQOS;
  wire s01_couplers_to_auto_pc_AWREADY;
  wire [2:0]s01_couplers_to_auto_pc_AWSIZE;
  wire s01_couplers_to_auto_pc_AWVALID;
  wire [0:0]s01_couplers_to_auto_pc_BID;
  wire s01_couplers_to_auto_pc_BREADY;
  wire [1:0]s01_couplers_to_auto_pc_BRESP;
  wire s01_couplers_to_auto_pc_BVALID;
  wire [31:0]s01_couplers_to_auto_pc_RDATA;
  wire [0:0]s01_couplers_to_auto_pc_RID;
  wire s01_couplers_to_auto_pc_RLAST;
  wire s01_couplers_to_auto_pc_RREADY;
  wire [1:0]s01_couplers_to_auto_pc_RRESP;
  wire s01_couplers_to_auto_pc_RVALID;
  wire [31:0]s01_couplers_to_auto_pc_WDATA;
  wire s01_couplers_to_auto_pc_WLAST;
  wire s01_couplers_to_auto_pc_WREADY;
  wire [3:0]s01_couplers_to_auto_pc_WSTRB;
  wire s01_couplers_to_auto_pc_WVALID;

  assign M_AXI_araddr[31:0] = auto_pc_to_s01_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = auto_pc_to_s01_couplers_ARPROT;
  assign M_AXI_arvalid = auto_pc_to_s01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = auto_pc_to_s01_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = auto_pc_to_s01_couplers_AWPROT;
  assign M_AXI_awvalid = auto_pc_to_s01_couplers_AWVALID;
  assign M_AXI_bready = auto_pc_to_s01_couplers_BREADY;
  assign M_AXI_rready = auto_pc_to_s01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = auto_pc_to_s01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = auto_pc_to_s01_couplers_WSTRB;
  assign M_AXI_wvalid = auto_pc_to_s01_couplers_WVALID;
  assign S_ACLK_1 = S_ACLK;
  assign S_ARESETN_1 = S_ARESETN;
  assign S_AXI_arready = s01_couplers_to_auto_pc_ARREADY;
  assign S_AXI_awready = s01_couplers_to_auto_pc_AWREADY;
  assign S_AXI_bid[0] = s01_couplers_to_auto_pc_BID;
  assign S_AXI_bresp[1:0] = s01_couplers_to_auto_pc_BRESP;
  assign S_AXI_bvalid = s01_couplers_to_auto_pc_BVALID;
  assign S_AXI_rdata[31:0] = s01_couplers_to_auto_pc_RDATA;
  assign S_AXI_rid[0] = s01_couplers_to_auto_pc_RID;
  assign S_AXI_rlast = s01_couplers_to_auto_pc_RLAST;
  assign S_AXI_rresp[1:0] = s01_couplers_to_auto_pc_RRESP;
  assign S_AXI_rvalid = s01_couplers_to_auto_pc_RVALID;
  assign S_AXI_wready = s01_couplers_to_auto_pc_WREADY;
  assign auto_pc_to_s01_couplers_ARREADY = M_AXI_arready;
  assign auto_pc_to_s01_couplers_AWREADY = M_AXI_awready;
  assign auto_pc_to_s01_couplers_BRESP = M_AXI_bresp[1:0];
  assign auto_pc_to_s01_couplers_BVALID = M_AXI_bvalid;
  assign auto_pc_to_s01_couplers_RDATA = M_AXI_rdata[31:0];
  assign auto_pc_to_s01_couplers_RRESP = M_AXI_rresp[1:0];
  assign auto_pc_to_s01_couplers_RVALID = M_AXI_rvalid;
  assign auto_pc_to_s01_couplers_WREADY = M_AXI_wready;
  assign s01_couplers_to_auto_pc_ARADDR = S_AXI_araddr[31:0];
  assign s01_couplers_to_auto_pc_ARBURST = S_AXI_arburst[1:0];
  assign s01_couplers_to_auto_pc_ARCACHE = S_AXI_arcache[3:0];
  assign s01_couplers_to_auto_pc_ARID = S_AXI_arid[0];
  assign s01_couplers_to_auto_pc_ARLEN = S_AXI_arlen[7:0];
  assign s01_couplers_to_auto_pc_ARLOCK = S_AXI_arlock;
  assign s01_couplers_to_auto_pc_ARPROT = S_AXI_arprot[2:0];
  assign s01_couplers_to_auto_pc_ARQOS = S_AXI_arqos[3:0];
  assign s01_couplers_to_auto_pc_ARSIZE = S_AXI_arsize[2:0];
  assign s01_couplers_to_auto_pc_ARVALID = S_AXI_arvalid;
  assign s01_couplers_to_auto_pc_AWADDR = S_AXI_awaddr[31:0];
  assign s01_couplers_to_auto_pc_AWBURST = S_AXI_awburst[1:0];
  assign s01_couplers_to_auto_pc_AWCACHE = S_AXI_awcache[3:0];
  assign s01_couplers_to_auto_pc_AWID = S_AXI_awid[0];
  assign s01_couplers_to_auto_pc_AWLEN = S_AXI_awlen[7:0];
  assign s01_couplers_to_auto_pc_AWLOCK = S_AXI_awlock;
  assign s01_couplers_to_auto_pc_AWPROT = S_AXI_awprot[2:0];
  assign s01_couplers_to_auto_pc_AWQOS = S_AXI_awqos[3:0];
  assign s01_couplers_to_auto_pc_AWSIZE = S_AXI_awsize[2:0];
  assign s01_couplers_to_auto_pc_AWVALID = S_AXI_awvalid;
  assign s01_couplers_to_auto_pc_BREADY = S_AXI_bready;
  assign s01_couplers_to_auto_pc_RREADY = S_AXI_rready;
  assign s01_couplers_to_auto_pc_WDATA = S_AXI_wdata[31:0];
  assign s01_couplers_to_auto_pc_WLAST = S_AXI_wlast;
  assign s01_couplers_to_auto_pc_WSTRB = S_AXI_wstrb[3:0];
  assign s01_couplers_to_auto_pc_WVALID = S_AXI_wvalid;
  ANC_PROJ_BD_auto_pc_0 auto_pc
       (.aclk(S_ACLK_1),
        .aresetn(S_ARESETN_1),
        .m_axi_araddr(auto_pc_to_s01_couplers_ARADDR),
        .m_axi_arprot(auto_pc_to_s01_couplers_ARPROT),
        .m_axi_arready(auto_pc_to_s01_couplers_ARREADY),
        .m_axi_arvalid(auto_pc_to_s01_couplers_ARVALID),
        .m_axi_awaddr(auto_pc_to_s01_couplers_AWADDR),
        .m_axi_awprot(auto_pc_to_s01_couplers_AWPROT),
        .m_axi_awready(auto_pc_to_s01_couplers_AWREADY),
        .m_axi_awvalid(auto_pc_to_s01_couplers_AWVALID),
        .m_axi_bready(auto_pc_to_s01_couplers_BREADY),
        .m_axi_bresp(auto_pc_to_s01_couplers_BRESP),
        .m_axi_bvalid(auto_pc_to_s01_couplers_BVALID),
        .m_axi_rdata(auto_pc_to_s01_couplers_RDATA),
        .m_axi_rready(auto_pc_to_s01_couplers_RREADY),
        .m_axi_rresp(auto_pc_to_s01_couplers_RRESP),
        .m_axi_rvalid(auto_pc_to_s01_couplers_RVALID),
        .m_axi_wdata(auto_pc_to_s01_couplers_WDATA),
        .m_axi_wready(auto_pc_to_s01_couplers_WREADY),
        .m_axi_wstrb(auto_pc_to_s01_couplers_WSTRB),
        .m_axi_wvalid(auto_pc_to_s01_couplers_WVALID),
        .s_axi_araddr(s01_couplers_to_auto_pc_ARADDR),
        .s_axi_arburst(s01_couplers_to_auto_pc_ARBURST),
        .s_axi_arcache(s01_couplers_to_auto_pc_ARCACHE),
        .s_axi_arid(s01_couplers_to_auto_pc_ARID),
        .s_axi_arlen(s01_couplers_to_auto_pc_ARLEN),
        .s_axi_arlock(s01_couplers_to_auto_pc_ARLOCK),
        .s_axi_arprot(s01_couplers_to_auto_pc_ARPROT),
        .s_axi_arqos(s01_couplers_to_auto_pc_ARQOS),
        .s_axi_arready(s01_couplers_to_auto_pc_ARREADY),
        .s_axi_arregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arsize(s01_couplers_to_auto_pc_ARSIZE),
        .s_axi_arvalid(s01_couplers_to_auto_pc_ARVALID),
        .s_axi_awaddr(s01_couplers_to_auto_pc_AWADDR),
        .s_axi_awburst(s01_couplers_to_auto_pc_AWBURST),
        .s_axi_awcache(s01_couplers_to_auto_pc_AWCACHE),
        .s_axi_awid(s01_couplers_to_auto_pc_AWID),
        .s_axi_awlen(s01_couplers_to_auto_pc_AWLEN),
        .s_axi_awlock(s01_couplers_to_auto_pc_AWLOCK),
        .s_axi_awprot(s01_couplers_to_auto_pc_AWPROT),
        .s_axi_awqos(s01_couplers_to_auto_pc_AWQOS),
        .s_axi_awready(s01_couplers_to_auto_pc_AWREADY),
        .s_axi_awregion({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awsize(s01_couplers_to_auto_pc_AWSIZE),
        .s_axi_awvalid(s01_couplers_to_auto_pc_AWVALID),
        .s_axi_bid(s01_couplers_to_auto_pc_BID),
        .s_axi_bready(s01_couplers_to_auto_pc_BREADY),
        .s_axi_bresp(s01_couplers_to_auto_pc_BRESP),
        .s_axi_bvalid(s01_couplers_to_auto_pc_BVALID),
        .s_axi_rdata(s01_couplers_to_auto_pc_RDATA),
        .s_axi_rid(s01_couplers_to_auto_pc_RID),
        .s_axi_rlast(s01_couplers_to_auto_pc_RLAST),
        .s_axi_rready(s01_couplers_to_auto_pc_RREADY),
        .s_axi_rresp(s01_couplers_to_auto_pc_RRESP),
        .s_axi_rvalid(s01_couplers_to_auto_pc_RVALID),
        .s_axi_wdata(s01_couplers_to_auto_pc_WDATA),
        .s_axi_wlast(s01_couplers_to_auto_pc_WLAST),
        .s_axi_wready(s01_couplers_to_auto_pc_WREADY),
        .s_axi_wstrb(s01_couplers_to_auto_pc_WSTRB),
        .s_axi_wvalid(s01_couplers_to_auto_pc_WVALID));
endmodule
