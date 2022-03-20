`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2022 09:55:42 PM
// Design Name: 
// Module Name: eth_logger
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


module eth_logger
    #(PROBE_WIDTH = 16)(  // must be %(nibble_size=4)
        // sys clk and rst
        input logic                         clk_i,
        input logic                         rstn_i,
        // debug interface
        input logic [PROBE_WIDTH-1:0]       debug_probe_i, 
        input logic                         debug_trig_i,
        // Ethernet Phy interface
        input  logic                        clk25,
        output logic                        eth_ref_clk_o,
        output logic                        eth_rstn_o,
        input  logic                        eth_tx_clk_i,
        output logic                        eth_tx_en_o,
        output logic [3:0]                  eth_tx_d_o
        );

    ////////////////////////////////////////////////////////////////
    // PROBE_WIDTH % 4 check
    initial begin
        if (PROBE_WIDTH % 8 != 0 ||
            PROBE_WIDTH < 8) begin
            $error("PROBE_WIDTH must be a multiple of 2*(nibble size");
        end
    end
    ////////////////////////////////////////////////////////////////
    // debug interface
    ////////////////////////////////////////////////////////////////
    // probe data triger
    logic                   debug_trig_q, debug_trig_detect_q;
    logic [PROBE_WIDTH-1:0] trigged_data_q;
    // rising edge triger detect
    always_ff @( posedge clk_i ) begin : trig_detect
        if (!rstn_i) begin
            debug_trig_q <= 0;
            debug_trig_detect_q <= 0;
        end else begin
            debug_trig_q <= debug_trig_i;
            debug_trig_detect_q <= (!debug_trig_q) && (debug_trig_i);
        end     
    end

    always_ff @( posedge clk_i ) begin : data_fetch
        if (!rstn_i) begin
            trigged_data_q <= '0;
        end else begin
            trigged_data_q <= (debug_trig_detect_q) ?  debug_probe_i: trigged_data_q; 
        end
    end
    ////////////////////////////////////////////////////////////////
    // function for nibble swap
    function automatic logic [PROBE_WIDTH-1:0] swap_nibbles(
        input logic [PROBE_WIDTH-1:0] data_in );
        // swapping itteration ( number of bytes)
        for (int j = 0; j < (PROBE_WIDTH / 8);j++ ) begin
            swap_nibbles[(8*j+4)+:4] = data_in[(8*j)+:4];
            swap_nibbles[(8*j)+:4] = data_in[((8*j)+4)+:4];
        end  
    endfunction
    ////////////////////////////////////////////////////////////////
    // probe data need to be packed in 4 bits nibbles
    // neebles number = PROBE_WIDTH >> log2(4)
    typedef struct packed {
        logic [3:0] nibble;
        } nibble_t;
    nibble_t [(PROBE_WIDTH>>2)-1:0]         nibbles_tx_q;
    logic [(($clog2(PROBE_WIDTH>>2))-1):0]  nibbles_tx_ptr;
    logic                                   last_nibble;
    /////////////////////////////////////////////////////////////////
    // fifo write and write enable
    logic           wr_en;
    logic [3:0]     wr_d;
    logic           wr_rst_busy, wr_full;
    // eth_udp_send eth control signals
    logic           flush, rdy, mac_busy;
    /// *   [flush] causes any data in the queue to be sent even if it is less than
    ///     [MIN_DATA_BYTES] long. This will only send a multiple of two bytes so
    ///     this may not send all data. It is read on the falling edge of
    ///     [eth.tx_clk].
    /// *   [mac_busy] indicates that packet is currently being sent. Note that the
    ///     queue can still be written to when this is asserted. When this signal
    ///     falls a packet has finished sending.
    /// *   [rdy] indicates that the module is powered up and ready to communicate
    ///     with the PHY when asserted high.
    assign flush = 0; // not used in this design
    // udp fifo write fsm
    typedef enum logic [1:0] { 
        IDLE =      2'b01,
        WRITE =     2'b10
    } state_t;
    state_t state_q;
    always_ff @( posedge clk_i ) begin : fsm
        if (!rstn_i) begin
            nibbles_tx_q <= '0;
            nibbles_tx_ptr <= '1;   // sending MSB first / nibbles swaped
            wr_en <= 0;
            wr_d <= 0;
            state_q <= IDLE;
            last_nibble <= 0;
        end else begin
            unique case (state_q)
                IDLE: begin
                    nibbles_tx_q <= '0;
                    nibbles_tx_ptr <= '1;
                    wr_en <= 0;
                    wr_d <= '0;
                    last_nibble <= 0;
                    //check if fifo not in reset state and eth_udp module is ready
                    if ((debug_trig_detect_q)&&(!wr_rst_busy)&&(rdy)) begin
                        // data capture and nibble swap for eth transmition
                        nibbles_tx_q <= swap_nibbles(debug_probe_i);
                        state_q <= WRITE;
                    end else begin
                        state_q <= IDLE;
                    end
                end
                WRITE: begin
                    if (!last_nibble) begin
                        // all data written
                        wr_en <= 1;
                        wr_d <= nibbles_tx_q[nibbles_tx_ptr];
                        state_q <= WRITE;
                        if (nibbles_tx_ptr != 0) begin
                            nibbles_tx_ptr <= nibbles_tx_ptr - 1;
                        end else begin
                            last_nibble <= 1;
                        end
                    end else begin
                        wr_en <= 0;
                        last_nibble <= 0;
                        state_q <= IDLE;   
                    end
                    state_q <= (last_nibble) ?  IDLE:WRITE;
                end

                default: begin
                    nibbles_tx_q <= '0;
                    nibbles_tx_ptr <= '0;
                end 
            endcase
        end
    end

    /////////////////////////////////////////////////////////////////
    // IP info
    IIpInfo ip_info();
    assign ip_info.src_ip   = 32'h55_66_77_88;
    assign ip_info.src_mac  = 48'haa_bb_cc_dd_ee_ff;
    assign ip_info.src_port = 16'h1000;
    assign ip_info.dst_ip   = 32'h11_22_33_44;
    assign ip_info.dst_mac  = 48'h1a_2b_3c_4d_5e_6f;
    assign ip_info.dst_port = 16'h1000;
    // Eth Phy control signal interface inst
    IEthPhy  eth();
    assign eth_ref_clk_o = eth.ref_clk; // Out
    assign eth_rstn_o    = eth.rstn;    // Out
    assign eth.tx_clk  = eth_tx_clk_i;  // In
    assign eth_tx_en_o   = eth.tx_en;   // Out
    assign eth_tx_d_o     = eth.tx_d;   // Out
    // eth_udp_send i nst
    eth_udp_send #(
        .CLK_RATIO(4),          // clk to clk25 ratio
        .MAX_DATA_BYTES(64),  // 20 for sim. Default 1024  
        .MIN_DATA_BYTES(32),   // 10 for sim. Default 512
        .POWER_UP_CYCLES(100),  // 100 for sim. Default 5e6
        .WORD_SIZE_BYTES(1))
    eth_udp_send(
        // Standard
        .clk(clk_i),
        .rst(~rstn_i),
        // Writing data
        .wr_en(wr_en),
        .wr_d(wr_d),
        .wr_rst_busy(wr_rst_busy),
        .wr_full(wr_full),
        // Ethernet
        .clk25(clk25),
        .eth(eth),
        .flush(flush),
        .ip_info(ip_info),
        .mac_busy(mac_busy),
        .rdy(rdy)
    );

endmodule
