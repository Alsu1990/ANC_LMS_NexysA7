`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 11/29/2021 09:59:44 PM
// Design Name: 
// Module Name: i2s_reciever_tb
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


`default_nettype none

module tb_i2s_reciever_tb;

reg s_axi_ctrl_aclk;                            // input wire s_axi_ctrl_aclk       
reg s_axi_ctrl_aresetn;                         // input wire s_axi_ctrl_aresetn
reg aud_mclk;                                   // input wire aud_mclk
reg aud_mrst;                                   // input wire aud_mrst
reg m_axis_aud_aclk;                            // input wire m_axis_aud_aclk
reg m_axis_aud_aresetn;                         // input wire m_axis_aud_aresetn
reg s_axi_ctrl_awvalid;                         // input wire s_axi_ctrl_awvalid
wire s_axi_ctrl_awready;                        // output wire s_axi_ctrl_awready
reg [7:0] s_axi_ctrl_awaddr;                               // input wire [7 : 0] s_axi_ctrl_awaddr
reg s_axi_ctrl_wvalid;                               // input wire s_axi_ctrl_wvalid
wire s_axi_ctrl_wready;                               // output wire s_axi_ctrl_wready
reg [31:0] s_axi_ctrl_wdata;                                // input wire [31 : 0] s_axi_ctrl_wdata
wire s_axi_ctrl_bvalid;                               // output wire s_axi_ctrl_bvalid
reg s_axi_ctrl_bready;                               // input wire s_axi_ctrl_bready
wire [1:0] s_axi_ctrl_bresp;                                // output wire [1 : 0] s_axi_ctrl_bresp
reg s_axi_ctrl_arvalid;                              // input wire s_axi_ctrl_arvalid
wire s_axi_ctrl_arready;                              // output wire s_axi_ctrl_arready
reg [7:0] s_axi_ctrl_araddr;                               // input wire [7 : 0] s_axi_ctrl_araddr
wire s_axi_ctrl_rvalid;                               // output wire s_axi_ctrl_rvalid
reg s_axi_ctrl_rready;                          // input wire s_axi_ctrl_rready
wire [31:0] s_axi_ctrl_rdata;                             // output wire [31 : 0] s_axi_ctrl_rdata
wire [1:0] s_axi_ctrl_rresp;                                // output wire [1 : 0] s_axi_ctrl_rresp
wire irq;                                             // output wire irq
wire lrclk_out;                                       // output wire lrclk_out
wire sclk_out;                                        // output wire sclk_out
reg sdata_0_in;                                      // input wire sdata_0_in
wire [31:0] m_axis_aud_tdata;                                // output wire [31 : 0] m_axis_aud_tdata
wire [2:0] m_axis_aud_tid;                                  // output wire [2 : 0] m_axis_aud_tid
wire m_axis_aud_tvalid;                               // output wire m_axis_aud_tvalid
reg m_axis_aud_tready;                               // input wire m_axis_aud_tready

i2s_receiver_0 DUT (
  .s_axi_ctrl_aclk(s_axi_ctrl_aclk),        // input wire s_axi_ctrl_aclk
  .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),  // input wire s_axi_ctrl_aresetn
  .aud_mclk(aud_mclk),                      // input wire aud_mclk
  .aud_mrst(aud_mrst),                      // input wire aud_mrst
  .m_axis_aud_aclk(m_axis_aud_aclk),        // input wire m_axis_aud_aclk
  .m_axis_aud_aresetn(m_axis_aud_aresetn),  // input wire m_axis_aud_aresetn
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
  .lrclk_out(lrclk_out),                    // output wire lrclk_out
  .sclk_out(sclk_out),                      // output wire sclk_out
  .sdata_0_in(sdata_0_in),                  // input wire sdata_0_in
  .m_axis_aud_tdata(m_axis_aud_tdata),      // output wire [31 : 0] m_axis_aud_tdata
  .m_axis_aud_tid(m_axis_aud_tid),          // output wire [2 : 0] m_axis_aud_tid
  .m_axis_aud_tvalid(m_axis_aud_tvalid),    // output wire m_axis_aud_tvalid
  .m_axis_aud_tready(m_axis_aud_tready)    // input wire m_axis_aud_tready
);

localparam CLK_PERIOD = 10;
always #(CLK_PERIOD/2) s_axi_ctrl_aclk=~s_axi_ctrl_aclk;

initial begin
    $dumpfile("tb_i2s_reciever_tb.vcd");
    $dumpvars(0, tb_i2s_reciever_tb);
end

initial begin
    #1 s_axi_ctrl_aresetn<=1'bx;s_axi_ctrl_aclk<=1'bx;
    #(CLK_PERIOD*3) s_axi_ctrl_aresetn<=1;
    #(CLK_PERIOD*3) s_axi_ctrl_aresetn<=0;s_axi_ctrl_aclk<=0;
    repeat(5) @(posedge s_axi_ctrl_aclk);
    s_axi_ctrl_aresetn<=1;
    @(posedge s_axi_ctrl_aclk);
    repeat(2) @(posedge s_axi_ctrl_aclk);
    $finish(2);
end

endmodule
`default_nettype wire
