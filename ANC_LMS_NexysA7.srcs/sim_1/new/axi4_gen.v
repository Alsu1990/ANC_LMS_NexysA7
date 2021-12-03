module axi4_gen (
    input           m_axi_ctrl_aclk,
    input           m_axi_ctrl_aresetn,

    output          m_axi_ctrl_awvalid,
    input           m_axi_ctrl_awready,
    output  [7:0]   m_axi_ctrl_awaddr,

    input           m_axi_ctrl_wvalid,
    output          m_axi_ctrl_wready,
    input  [31:0]   m_axi_ctrl_wdata,

    output          m_axi_ctrl_bvalid,
    input           m_axi_ctrl_bready,
    output  [1:0]   m_axi_ctrl_bresp,

    input           m_axi_ctrl_arvalid,
    output          m_axi_ctrl_arready,
    input  [7:0]    m_axi_ctrl_araddr,

    output          m_axi_ctrl_rvalid,
    input           m_axi_ctrl_rready,
    output  [31:0]  m_axi_ctrl_rdata,
    output  [1:0]   m_axi_ctrl_rresp
);
    
endmodule

