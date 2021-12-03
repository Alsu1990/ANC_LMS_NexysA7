module top_tb ();

reg s_axi_ctrl_aclk = 0;

localparam CLK_PERIOD = 10;

always #(CLK_PERIOD/2) s_axi_ctrl_aclk = !s_axi_ctrl_aclk;

i2s_gen i2s_gen0 (lrclk_out, sclk_out, sdata_0_in);


i2s_receiver_0 DUT (
  .s_axi_ctrl_aclk(s_axi_ctrl_aclk),        // input wire s_axi_ctrl_aclk
  .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),  // input wire s_axi_ctrl_aresetn
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
  .aud_mclk(aud_mclk),                      // input wire aud_mclk
  .aud_mrst(aud_mrst),                      // input wire aud_mrst
  .m_axis_aud_aresetn(m_axis_aud_aresetn),  // input wire m_axis_aud_aresetn
  .m_axis_aud_aclk(m_axis_aud_aclk),        // input wire m_axis_aud_aclk
  .m_axis_aud_tdata(m_axis_aud_tdata),      // output wire [31 : 0] m_axis_aud_tdata
  .m_axis_aud_tid(m_axis_aud_tid),          // output wire [2 : 0] m_axis_aud_tid
  .m_axis_aud_tvalid(m_axis_aud_tvalid),    // output wire m_axis_aud_tvalid
  .m_axis_aud_tready(m_axis_aud_tready));    // input wire m_axis_aud_tready





// reg [4:0] clk_count = 0;

// always @(posedge clk ) clk_count <= clk_count + 1;
// always @(negedge clk ) if (!clk_count) lrclk_in = ! lrclk_in;
    


initial begin
    repeat(256) @(posedge s_axi_ctrl_aclk);
    $finish;
end

endmodule