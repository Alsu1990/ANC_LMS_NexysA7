module axi_eth_pkt_gen 
#(

)
(
    //axi interface
    input               s_axi_aclk_i,
    input               s_axi_aresetn_i,
    output logic [12:0] s_axi_awaddr_o,
    output logic        s_axi_awvalid_o,
    input  logic        s_axi_awready_i,
    output logic [31:0] s_axi_wdata_o,
    output logic [ 3:0] s_axi_wstrb_o,
    output logic        s_axi_wvalid_o,
    input  logic        s_axi_wready_i,
    input  logic [ 1:0] s_axi_bresp_i,
    input  logic        s_axi_bvalid_i,
    output logic        s_axi_bready_o,
    output logic [12:0] s_axi_araddr_o,
    output logic        s_axi_arvalid_o,
    input  logic        s_axi_arready_i,
    input  logic [31:0] s_axi_rdata_i,
    input  logic [ 1:0] s_axi_rresp_i,
    input  logic        s_axi_rvalid_i,
    output logic        s_axi_rready_o,
    //axi stream interface for "sniffing"
    input  logic        m_axis_aud_aclk_i,
    input  logic        m_axis_aud_tvalid_i,
    input  logic [2:0]  m_axis_aud_tid,
    input  logic [31:0] m_axis_aud_tdata_i,
    input  logic        m_axis_aud_aresetn_i
);
    //edge deteck
    logic m_axis_aud_tvalid_q;
    logic axis_tdata_ready_w;

    always_ff @(posedge m_axis_aud_aclk_i) begin : valid_data_detect
        m_axis_aud_tvalid_q <= (!m_axis_aud_aresetn_i) ? 0 : m_axis_aud_tvalid_i;
    end
    // axis_tdata_ready_w = 1 when tvalid rising edge and TID = 1 (first channel)
    assign axis_tdata_ready_w = ((m_axis_aud_tid == 3'b1) && (!m_axis_aud_tvalid_i && m_axis_aud_tvalid_q))? 1:0;
    
    logic [31:0] m_axis_aud_tdata_q;

    always_ff @(posedge m_axis_aud_aclk_i) begin : new_axis_sample
        if (!m_axis_aud_aresetn_i) begin
            m_axis_aud_tdata_q <= 0;
        end else begin
            if (axis_tdata_ready_w) m_axis_aud_tdata_q <= m_axis_aud_tdata_i;
        end
    end
    //passing axis sample to axi4lite domain (clock domain crossing)
    logic [1:0] axis_tdata_ready_sync;
    logic [31:0] axi_to_eth_sample;

    always_ff @(posedge s_axi_aclk_i ) begin : axis_to_axi_lite_passing
        if (!s_axi_aresetn_i) begin
            axi_to_eth_sample <= 0;
            axis_tdata_ready_sync <= 0;
        end else begin
            axis_tdata_ready_sync <= {axis_tdata_ready_sync[0],axis_tdata_ready_w};
            if (axis_tdata_ready_sync[1]) begin // data ready flag valid in axi domain
                axi_to_eth_sample <= m_axis_aud_tdata_q;
            end
        end
    end



localparam // bit length for eth packet fields
    DA = 48, // 6 bytes destination addr
    CA = 48, // 6 bytes source addr
    LENGTH = 16, // 6 bytes source addr
    PAYLOAD = 16;   // 2 bytes data

// transmit array for eth_axi_lite ip
logic [(DA+CA+LENGTH+PAYLOAD)-1:0] axi_eth_pkt_q;

typedef enum  { 
    RESET,
    WAIT_ON_SAMPLE,
    PACKET_ASSEMBLE
} state_t;    

state_t state_q;

// packet assemble fsm

endmodule