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
    #(
        PROBE_WIDTH = 16)
    (
        // debug interface
        input logic [PROBE_WIDTH-1:0]       debug_probe_i, 
        input logic                         debug_trig_i,
        input logic                         debug_clk_i,
        input logic                         debug_rstn_i,
        // Ethernet Phy interface
        // output logic                        eth_tx,
    );


endmodule
