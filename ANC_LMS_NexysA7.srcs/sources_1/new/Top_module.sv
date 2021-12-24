`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/18/2021 04:28:12 PM
// Design Name: 
// Module Name: Top_module
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
    // output  wire    JD1,  // sel pin = 0
    // output  wire    JD2,  // ws pin {data active when low}
    // input   wire    JD3,   // mic's data out pin {need pull down due to singe mic}
    // output  wire    JD4,  // mic's clock
// `include "i2s_reciever_config.sv"
// `include "pwm_modulator.sv"


module top_design(
    input logic     CLK100MHZ,
    input logic     CPU_RESETN,
    // microphone
    output  logic   JD1,  // sel pin = 1
    output  logic   JD2,  // ws pin {data active when low}
    input   logic   JD3,   // mic's data out pin {need pull down due to singe mic}
    output  logic   JD4,  // mic's clock
    output logic    LED0,
    output  logic   AUD_PWM
    );
    assign LED0 = CPU_RESETN; //led glow when no reset 
    // assign JD1 = 1'bZ; // need to configurate pull up in VIVADO
    assign JD1 = 1'b1; // simulation only
//------ system_reset_block
    logic [0:3] peripheral_reset;
    logic [0:3] peripheral_aresetn;
    proc_sys_reset_0 sys_reset_inst0 (
        .slowest_sync_clk(CLK100MHZ),          // input wire slowest_sync_clk
        .ext_reset_in(CPU_RESETN),                  // input wire ext_reset_in
        .aux_reset_in(CPU_RESETN),                  // input wire aux_reset_in
        .mb_debug_sys_rst(1'b0),          // input wire mb_debug_sys_rst
        .dcm_locked(1'b1),                      // input wire dcm_locked
        .mb_reset(mb_reset),                          // output wire mb_reset
        .bus_struct_reset(bus_struct_reset),          // output wire [0 : 0] bus_struct_reset
        .peripheral_reset(peripheral_reset),          // output wire [0 : 3] peripheral_reset
        .interconnect_aresetn(interconnect_aresetn),  // output wire [0 : 0] interconnect_aresetn
        .peripheral_aresetn(peripheral_aresetn)      // output wire [0 : 3] peripheral_aresetn
    );
//------ i2s reciever inst
    i2s_receiver_0 i2s_reciever_inst0 (
        .s_axi_ctrl_aclk(CLK100MHZ),        // input wire s_axi_ctrl_aclk
        .s_axi_ctrl_aresetn(peripheral_aresetn[0]),  // input wire s_axi_ctrl_aresetn
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),  // input wire s_axi_ctrl_awvalid
        .s_axi_ctrl_awready(s_axi_ctrl_awready),  // output wire s_axi_ctrl_awready
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),    // input wire [7 : 0] s_axi_ctrl_awaddr
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),    // input wire s_axi_ctrl_wvalid
        .s_axi_ctrl_wready(s_axi_ctrl_wready),    // output wire s_axi_ctrl_wready
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),      // input wire [31 : 0] s_axi_ctrl_wdata
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),    // output wire s_axi_ctrl_bvalid
        .s_axi_ctrl_bready(s_axi_ctrl_bready),    // input wire s_axi_ctrl_bready
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),      // output wire [1 : 0] s_axi_ctrl_bresp
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),  // input wire s_axi_ctrl_arvalid
        .s_axi_ctrl_arready(s_axi_ctrl_arready),  // output wire s_axi_ctrl_arready
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),    // input wire [7 : 0] s_axi_ctrl_araddr
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),    // output wire s_axi_ctrl_rvalid
        .s_axi_ctrl_rready(s_axi_ctrl_rready),    // input wire s_axi_ctrl_rready
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),      // output wire [31 : 0] s_axi_ctrl_rdata
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),      // output wire [1 : 0] s_axi_ctrl_rresp
        .irq(irq),                                // output wire irq
        .lrclk_out(JD2),                    // output wire lrclk_out
        .sclk_out(JD4),                      // output wire sclk_out
        .sdata_0_in(JD3),                  // input wire sdata_0_in
        .aud_mclk(CLK100MHZ),                      // input wire aud_mclk
        .aud_mrst(peripheral_reset[0]),                      // input wire aud_mrst
        .m_axis_aud_aclk(CLK100MHZ),        // input wire m_axis_aud_aclk
        .m_axis_aud_aresetn(peripheral_aresetn[1]),  // input wire m_axis_aud_aresetn
        .m_axis_aud_tdata(m_axis_aud_tdata),      // output wire [31 : 0] m_axis_aud_tdata
        .m_axis_aud_tid(m_axis_aud_tid),          // output wire [2 : 0] m_axis_aud_tid
        .m_axis_aud_tvalid(m_axis_aud_tvalid),    // output wire m_axis_aud_tvalid
        .m_axis_aud_tready(m_axis_aud_tready)    // input wire m_axis_aud_tready
        );
    // i2s reciever config block
    i2s_reciever_config i2s_reciever_config_inst0 (
        .s_axi_ctrl_aclk(CLK100MHZ),
        .s_axi_ctrl_aresetn(peripheral_aresetn[0]),
        .*
        );
   pwm_modulator pwm_modulator_inst0 (
       .m_axis_aud_aclk(CLK100MHZ),
       .m_axis_aud_aresetn(peripheral_aresetn[1]),
       .pwm_out(AUD_PWM),
       .*);
endmodule
