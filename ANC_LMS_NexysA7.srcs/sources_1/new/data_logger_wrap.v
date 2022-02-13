`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/27/2022 11:30:29 AM
// Design Name: 
// Module Name: data_logger_wrap
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


module data_logger_wrap #(
    PROBE_WIDTH = 32,
    AXI_ADDR_WIDTH = 4,
    AXI_DATA_WIDTH = 32)
    (
    // debug interface
    input [PROBE_WIDTH-1:0]             debug_probe_in,
    input                               debug_trig_in,
    input                               debug_clk_in,

    // axi_lite interface to UART/ETHERNET
    input                               m_axi_aclk,
    input                               m_axi_aresetn,
    output reg                          m_axi_awvalid,
    input                               m_axi_awready,
    output reg [AXI_ADDR_WIDTH-1:0]     m_axi_awaddr,
    output reg                          m_axi_wvalid,
    input                               m_axi_wready,
    output reg [AXI_DATA_WIDTH-1:0]     m_axi_wdata,
    input                               m_axi_bvalid,
    output reg                          m_axi_bready,
    input  [1:0]                        m_axi_bresp,
    output reg                          m_axi_arvalid,
    input                               m_axi_arready,
    output reg [AXI_ADDR_WIDTH-1:0]     m_axi_araddr,
    input                               m_axi_rvalid,
    output reg                          m_axi_rready,
    input  [AXI_DATA_WIDTH-1:0]         m_axi_rdata,
    input  [1:0]                        m_axi_rresp);


    data_logger #(
        .PROBE_WIDTH(PROBE_WIDTH),
        .AXI_ADDR_WIDTH(AXI_ADDR_WIDTH),
        .AXI_DATA_WIDTH(AXI_DATA_WIDTH)
   )data_logger_0 (
        .m_axi_aclk(m_axi_aclk),
        .m_axi_aresetn(m_axi_aresetn),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awready(m_axi_awready),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_wvalid(m_axi_wvalid),
        .m_axi_wready(m_axi_wready),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_arready(m_axi_arready),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_rready(m_axi_rready),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rresp(m_axi_rresp));
endmodule
