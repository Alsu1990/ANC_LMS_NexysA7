`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2022 10:45:23 PM
// Design Name: top design module
// Module Name: anc_main
// Project Name: Active Noise Cancelation project
// Target Devices: Artix 7 
// Target Board: Arty A7 35t
// Tool Versions: Vivado  2021.1.1
// Description: Active Noise Cancelation module based on FLMS design
// Currently implemented: i2s reciever, audio pwm modulator, eth udp data logger
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
// mic SPH0645 breakout board pinout:
// Pin 1 - SEL (CHANNEL SELECT)
// Pin 2 - LRCLK (FRAME_CLOCK(32bit))
// Pin 3 - DOUT  
// Pin 4 - BCLK
// Pin 5 - GND
// Pin 6 - VCC
//////////////////////////////////////////////////////////////////////////////////

module anc_main(
    // system clock 100 mhz
    input logic sys_clk,
    // push buttons
    input logic [3:0] btn,          //active high
    // switches
    input logic [3:0] sw,
    // leds 
    output logic [3:0] led,
    // Pmod JA connector for microphone connection
    // mono channel
    // error mic 
    output logic ja_1, ja_2, ja_4,  //sel,lrclk,bclk
    input logic ja_3,               //dout
    // Pmod JB connector for microphone connection
    // mono channel
    // ref mic
    output logic jb_1, jb_2, jb_4,  //sel,lrclk,bclk
    input logic jb_3,               //dout

    //pwm analog output
    output ja_10
    );

    // assign mic SEL to SW. SW[3] - JA connector, SW[2] - JB connector
    assign {ja_1, jb_1} = sw[3:2];
    //////////////////////////////////////////////////////////////////////////////////
    // system sync power reset
    // sys_reset outputs
    proc_sys_reset_0 sys_reset (
        .slowest_sync_clk(sys_clk),                     // input wire slowest_sync_clk
        .ext_reset_in(btn[0]),                          // input wire ext_reset_in
        .aux_reset_in(btn[0]),                          // input wire aux_reset_in
        .mb_debug_sys_rst(),                            // input wire mb_debug_sys_rst
        .dcm_locked(),                                  // input wire dcm_locked
        .mb_reset(),                                    // output wire mb_reset
        .bus_struct_reset(bus_struct_reset),            // output wire [0 : 0] bus_struct_reset
        .peripheral_reset(peripheral_reset),            // output wire [0 : 0] peripheral_reset
        .interconnect_aresetn(interconnect_aresetn),    // output wire [0 : 0] interconnect_aresetn
        .peripheral_aresetn(peripheral_aresetn)         // output wire [0 : 0] peripheral_aresetn
        );
    //////////////////////////////////////////////////////////////////////////////////
    // clock module inst
    clk_gen sys_clock_gen(
        // Clock out ports
        .clk100(clk100),            // output clk100   general 100 clk
        .clk25(clk25),              // output clk25  for ethernet rgmii
        // Status and control signals
        .reset(peripheral_reset),   // input reset
        .locked(led[0]),            // output locked
        // Clock in ports
        .clk_ref(sys_clk)           // input clk_ref
        );      
    //////////////////////////////////////////////////////////////////////////////////
    // microphone data i2s reciever and controller inst
    //////////////////////////////////////////////////////////////////////////////////
    // i2s configuratior inst
    i2s_reciever_config i2s_config(
        .s_axi_ctrl_aclk(clk100),
        .s_axi_ctrl_aresetn(peripheral_aresetn),
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
        .s_axi_ctrl_awready(s_axi_ctrl_awready),
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
        .s_axi_ctrl_wready(s_axi_ctrl_wready),
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
        .s_axi_ctrl_arready(s_axi_ctrl_arready),
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
        .s_axi_ctrl_rready(s_axi_ctrl_rready),
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
        .s_axi_ctrl_bready(s_axi_ctrl_bready),
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp)
        );
    //////////////////////////////////////////////////////////////////////////////////
    // i2s reciver inst
    logic [31:0] m_axis_aud_tdata;
    i2s_receiver_0 i2s_rx (
        .s_axi_ctrl_aclk(clk100),                 // input wire s_axi_ctrl_aclk
        .s_axi_ctrl_aresetn(peripheral_aresetn),  // input wire s_axi_ctrl_aresetn
        .aud_mclk(clk100),                          // input wire aud_mclk
        .aud_mrst(peripheral_reset),                // input wire aud_mrst
        .m_axis_aud_aclk(clk100),                   // input wire m_axis_aud_aclk
        .m_axis_aud_aresetn(peripheral_aresetn),    // input wire m_axis_aud_aresetn
        .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),    // input wire s_axi_ctrl_awvalid
        .s_axi_ctrl_awready(s_axi_ctrl_awready),    // output wire s_axi_ctrl_awready
        .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),      // input wire [7 : 0] s_axi_ctrl_awaddr
        .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),      // input wire s_axi_ctrl_wvalid
        .s_axi_ctrl_wready(s_axi_ctrl_wready),      // output wire s_axi_ctrl_wready
        .s_axi_ctrl_wdata(s_axi_ctrl_wdata),        // input wire [31 : 0] s_axi_ctrl_wdata
        .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),      // output wire s_axi_ctrl_bvalid
        .s_axi_ctrl_bready(s_axi_ctrl_bready),      // input wire s_axi_ctrl_bready
        .s_axi_ctrl_bresp(s_axi_ctrl_bresp),        // output wire [1 : 0] s_axi_ctrl_bresp
        .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),    // input wire s_axi_ctrl_arvalid
        .s_axi_ctrl_arready(s_axi_ctrl_arready),    // output wire s_axi_ctrl_arready
        .s_axi_ctrl_araddr(s_axi_ctrl_araddr),      // input wire [7 : 0] s_axi_ctrl_araddr
        .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),      // output wire s_axi_ctrl_rvalid
        .s_axi_ctrl_rready(s_axi_ctrl_rready),      // input wire s_axi_ctrl_rready
        .s_axi_ctrl_rdata(s_axi_ctrl_rdata),        // output wire [31 : 0] s_axi_ctrl_rdata
        .s_axi_ctrl_rresp(s_axi_ctrl_rresp),        // output wire [1 : 0] s_axi_ctrl_rresp
        .irq(),                                     // output wire irq
        .lrclk_out(ja_2),                          // output wire lrclk_out
        .sclk_out(ja_4),                        // output wire sclk_out
        .sdata_0_in(ja_3),                    // input wire sdata_0_in
        .m_axis_aud_tdata(m_axis_aud_tdata),        // output wire [31 : 0] m_axis_aud_tdata
        .m_axis_aud_tid(m_axis_aud_tid),            // output wire [2 : 0] m_axis_aud_tid
        .m_axis_aud_tvalid(m_axis_aud_tvalid),      // output wire m_axis_aud_tvalid
        .m_axis_aud_tready(m_axis_aud_tready)       // input wire m_axis_aud_tready
        );

    //////////////////////////////////////////////////////////////////////////////////
    // DAC PWM modulator
    // convert I2S sampled data to analog signal
    pwm_modulator pwm_module (
        .m_axis_aud_aclk(clk100),
        .m_axis_aud_tvalid(m_axis_aud_tvalid),
        .m_axis_aud_tid(m_axis_aud_tid),
        .m_axis_aud_tdata(m_axis_aud_tdata),
        .m_axis_aud_aresetn(peripheral_aresetn),
        .m_axis_aud_tready(m_axis_aud_tready),
        .pwm_out(ja_10)
    );

    // ethernet logger
    eth_logger #(.PROBE_WIDTH(16)) eth_logger(
        .clk_i(clk100),
        .rstn_i(peripheral_aresetn),
        .debug_probe_i(m_axis_aud_tdata[27:12]),
        .debug_trig_i(m_axis_aud_tvalid),
        .clk25(clk25),
        .eth_ref_clk_o(eth_ref_clk_o),
        .eth_rstn_o(eth_rstn_o),
        .eth_tx_clk_i(eth_tx_clk_i),
        .eth_tx_en_o(eth_tx_en_o),
        .eth_tx_d_o(eth_tx_d_o)
    );
endmodule
