

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/24/2022 09:21:21 PM
// Design Name: 
// Module Name: data_logger
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

module data_logger #(
    PROBE_WIDTH = 32,
    AXI_ADDR_WIDTH = 4,
    AXI_DATA_WIDTH = 32)
    (
    // debug interface
    // [27:12] 16 bit audio sample
    input logic [PROBE_WIDTH-1:0]       debug_probe_in, 
    input logic                         debug_trig_in,
    input logic                         debug_clk_in,

    input logic                         rx,
    output logic                        tx,
    // axi_lite interface to UART/ETHERNET
    input logic                         m_axi_aclk,
    input logic                         m_axi_aresetn

    );
    //////////////////////////////////////////////////////////////////////////////////
    //debug clock domain
    logic [1:0] debug_trig_q;
    logic trig_rising_edge;
    always_ff @(posedge debug_clk_in) begin : edge_detect
        debug_trig_q <= {debug_trig_q[0], debug_trig_in};
    end
    assign trig_rising_edge = ~debug_trig_q[1] & debug_trig_q[0];

    logic wr_en, full;
    always_ff @(posedge debug_clk_in) begin : wr_en_logic
        wr_en <= (trig_rising_edge && !full) ? 1'b1 : 1'b0;
    end

    //////////////////////////////////////////////////////////////////////////////////
    // axi clock domain
    logic                           m_axi_awvalid;
    logic                           m_axi_awready;
    logic [AXI_ADDR_WIDTH-1:0]      m_axi_awaddr;
    logic                           m_axi_wvalid;
    logic                           m_axi_wready;
    logic [AXI_DATA_WIDTH-1:0]      m_axi_wdata;
    logic [3:0]                     m_axi_wstrb;
    logic                           m_axi_bvalid;
    logic                           m_axi_bready;
    logic  [1:0]                    m_axi_bresp;
    logic                           m_axi_arvalid;
    logic                           m_axi_arready;
    logic [AXI_ADDR_WIDTH-1:0]      m_axi_araddr;
    logic                           m_axi_rvalid;
    logic                           m_axi_rready;
    logic  [AXI_DATA_WIDTH-1:0]     m_axi_rdata;
    logic  [1:0]                    m_axi_rresp;
    logic                           interrupt;        
    localparam UART_RX_FIFO_ADDR = 4'h0;  
    localparam UART_TX_FIFO_ADDR = 4'h4;
    localparam UART_STAT_REG_ADDR = 4'h8;   // Status Register
    localparam UART_CTRL_REG_ADDR = 4'hC;   // Control Register
    // every hex number transmitted solely
    logic [3:0] uart_chunk [0:3];
    logic [1:0] chunk_ptr;

    logic rd_en, empty;
    logic axi_busy;
    logic [31:0] fifo_out;


    // main fsm
    typedef enum logic [1:0]  {
		IDLE = 2'b00,
		CHUNK_TX = 2'b01,
		VERIFY_TX = 2'b10
	} state_t;

	typedef enum logic [2:0] { 
		SET_READ_ADDR = 3'b000,
		DO_READ = 3'b001,
		SET_WRITE_ADDR = 3'b010,
		DO_WRITE = 3'b011,
		FINISH_WRITE = 3'b100,
        RESET = 3'b101	
	} axi_state_t;

    state_t state_q, next_state_q;
    axi_state_t axi_state_q, next_axi_state_q;

    always_ff @(posedge m_axi_aclk) begin : current_state
        if (!m_axi_aresetn) begin
            state_q <= IDLE;
            axi_state_q <= RESET;
        end else begin
            state_q <= next_state_q;
            axi_state_q <= next_axi_state_q;
        end
    end    

    always_comb begin : next_state
        unique case (state_q)
            IDLE: begin
                if (!empty) begin
                // if (!empty && !axi_busy) begin
                    next_state_q <= CHUNK_TX;
                    next_axi_state_q <= SET_WRITE_ADDR;
                end else begin
                    next_state_q <= IDLE;
                    next_axi_state_q <= RESET;
                end
            end 
            CHUNK_TX: begin
                unique case (axi_state_q)
                    SET_WRITE_ADDR: begin
                        if (m_axi_awready) begin
                            next_axi_state_q <= DO_WRITE;
                        end
                    end
                    DO_WRITE: begin
                        if (m_axi_wready) begin
                            next_axi_state_q <= FINISH_WRITE;
                        end
                    end
                    FINISH_WRITE: begin
                        if (m_axi_bvalid) begin
                            next_state_q <= VERIFY_TX;
                            next_axi_state_q <= SET_READ_ADDR;
                        end
                    end
                endcase
            end
            VERIFY_TX: begin
                unique case (axi_state_q)
                    SET_READ_ADDR: begin
                        if (m_axi_arready) begin
                            next_axi_state_q <= DO_READ;
                        end
                    end
                    DO_READ: begin
                        if (m_axi_rvalid) begin
                            next_axi_state_q <= SET_WRITE_ADDR;
                            next_state_q <= CHUNK_TX;
                        end
                    end
                endcase
            end
        endcase
    end

    always_comb begin : output_logic_main
        unique case (state_q)
            IDLE: begin
                chunk_ptr <= 0;
                uart_chunk <= {'0, '0, '0, '0};
                rd_en <= 0;
            end
            CHUNK_TX: begin
                if (chunk_ptr == 0) begin
                    rd_en <= 1'b1;
                    {uart_chunk[0], uart_chunk[1], uart_chunk[2], uart_chunk[3]} <= fifo_out[27:12];
                end 
            end
        endcase
    end

    always_comb begin : output_logic_axi
        unique case (axi_state_q)
            RESET: begin
                m_axi_awvalid <= 0;
                m_axi_arvalid <= 0;			
                m_axi_wvalid <= 0;			
                m_axi_bready <= 0;			
                m_axi_rready <= 0;
                axi_busy <= 0;
                m_axi_wstrb <= 0;
                m_axi_wdata <= 0;
                m_axi_araddr <= 0;
            end
            SET_WRITE_ADDR: begin
                m_axi_awaddr <= UART_TX_FIFO_ADDR;
                m_axi_awvalid <= 1'b1;
                // m_axi_wvalid <= 1'b1;
                if (m_axi_awready) m_axi_awvalid <= 0;
            end
        endcase
    end




    //////////////////////////////////////////////////////////////////////////////////
    // fifo_generator instantination
    // DEPTH = 256, Interface = native, 
    fifo_dual_clock input_fifo (
        .rst(~m_axi_aresetn),        // input logic wire rst
        .wr_clk(debug_clk_in),  // input logic wire wr_clk
        .rd_clk(m_axi_aclk),  // input logic wire rd_clk
        .din(debug_probe_in),        // input logic wire [31 : 0] din
        .wr_en(wr_en),    // input logic wire wr_en
        .rd_en(rd_en),    // input logic wire rd_en
        .dout(fifo_out),      // output wire [31 : 0] dout
        .full(full),      // output wire full
        .empty(empty)    // output wire empty
    );
    //////////////////////////////////////////////////////////////////////////////////

    // uart_lite instantination
    //Baud Rate = 230400, Data Bits = 8, No Parity
    axi_uartlite_0 uart (
        .s_axi_aclk(m_axi_aclk),        // input logic wire s_axi_aclk
        .s_axi_aresetn(m_axi_aresetn),  // input logic wire s_axi_aresetn
        .s_axi_awaddr(m_axi_awaddr),    // input logic wire [3 : 0] s_axi_awaddr
        .s_axi_awvalid(m_axi_awvalid),  // input logic wire s_axi_awvalid
        .s_axi_awready(m_axi_awready),  // output wire s_axi_awready
        .s_axi_wdata(m_axi_wdata),      // input logic wire [31 : 0] s_axi_wdata
        .s_axi_wstrb(m_axi_wstrb),      // input logic wire [3 : 0] s_axi_wstrb
        .s_axi_wvalid(m_axi_wvalid),    // input logic wire s_axi_wvalid
        .s_axi_wready(m_axi_wready),    // output wire s_axi_wready
        .s_axi_bresp(m_axi_bresp),      // output wire [1 : 0] s_axi_bresp
        .s_axi_bvalid(m_axi_bvalid),    // output wire s_axi_bvalid
        .s_axi_bready(m_axi_bready),    // input logic wire s_axi_bready
        .s_axi_araddr(m_axi_araddr),    // input logic wire [3 : 0] s_axi_araddr
        .s_axi_arvalid(m_axi_arvalid),  // input logic wire s_axi_arvalid
        .s_axi_arready(m_axi_arready),  // output wire s_axi_arready
        .s_axi_rdata(m_axi_rdata),      // output wire [31 : 0] s_axi_rdata
        .s_axi_rresp(m_axi_rresp),      // output wire [1 : 0] s_axi_rresp
        .s_axi_rvalid(m_axi_rvalid),    // output wire s_axi_rvalid
        .s_axi_rready(m_axi_rready),    // input logic wire s_axi_rready
        .interrupt(interrupt),          // output wire interrupt
        .rx(rx),                        // input logic wire rx
        .tx(tx)                        // output wire tx
    );
endmodule
