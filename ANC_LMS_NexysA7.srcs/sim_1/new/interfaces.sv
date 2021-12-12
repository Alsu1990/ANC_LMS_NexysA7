`default_nettype none

interface axis_int ;
    logic           m_axis_aud_aclk;
    logic           m_axis_aud_tvalid;
    logic [2:0]     m_axis_aud_tid;
    logic [31:0]    m_axis_aud_tdata;
    logic           m_axis_aud_aresetn;
    logic           m_axis_aud_tready;


    modport MASTER (
        input   m_axis_aud_aclk,
        output  m_axis_aud_tvalid,
        output  m_axis_aud_tid,
        output  m_axis_aud_tdata,
        input   m_axis_aud_aresetn,
        input   m_axis_aud_tready
    );

    modport SLAVE (
        input   m_axis_aud_aclk,
        input   m_axis_aud_tvalid,
        input   m_axis_aud_tid,
        input   m_axis_aud_tdata,
        output  m_axis_aud_aresetn,
        output  m_axis_aud_tready
    );
endinterface //interfacename

interface s_axi_int (input var logic s_axi_ctrl_aclk );
    logic s_axi_ctrl_aresetn;
    logic s_axi_ctrl_awvalid;
    logic s_axi_ctrl_awready;
    logic [7 : 0] s_axi_ctrl_awaddr;
    logic s_axi_ctrl_wvalid;
    logic s_axi_ctrl_wready;
    logic [31 : 0] s_axi_ctrl_wdata;
    logic s_axi_ctrl_bvalid;
    logic s_axi_ctrl_bready;
    logic [1 : 0] s_axi_ctrl_bresp;
    logic s_axi_ctrl_arvalid;
    logic s_axi_ctrl_arready;
    logic [7 : 0] s_axi_ctrl_araddr;
    logic s_axi_ctrl_rvalid;
    logic s_axi_ctrl_rready;
    logic [31 : 0] s_axi_ctrl_rdata;
    logic [1 : 0] s_axi_ctrl_rresp;

    modport SLAVE(
        input s_axi_ctrl_aresetn,
        input s_axi_ctrl_awvalid,
        output s_axi_ctrl_awready,
        input s_axi_ctrl_awaddr,
        input s_axi_ctrl_wvalid,
        output s_axi_ctrl_wready,
        input s_axi_ctrl_wdata,
        output s_axi_ctrl_bvalid,
        input s_axi_ctrl_bready,
        output s_axi_ctrl_bresp,
        input s_axi_ctrl_arvalid,
        output s_axi_ctrl_arready,
        input s_axi_ctrl_araddr,
        output s_axi_ctrl_rvalid,
        input s_axi_ctrl_rready,
        output s_axi_ctrl_rdata,
        output s_axi_ctrl_rresp
    );
    
    modport MASTER(
        input s_axi_ctrl_aresetn,
        output s_axi_ctrl_awvalid,
        input s_axi_ctrl_awready,
        output s_axi_ctrl_awaddr,
        output s_axi_ctrl_wvalid,
        input s_axi_ctrl_wready,
        output s_axi_ctrl_wdata,
        input s_axi_ctrl_bvalid,
        output s_axi_ctrl_bready,
        input s_axi_ctrl_bresp,
        output s_axi_ctrl_arvalid,
        input s_axi_ctrl_arready,
        output s_axi_ctrl_araddr,
        input s_axi_ctrl_rvalid,
        output s_axi_ctrl_rready,
        input s_axi_ctrl_rdata,
        input s_axi_ctrl_rresp
    );

endinterface 
