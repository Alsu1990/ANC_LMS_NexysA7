`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2022 07:34:26 PM
// Design Name: 
// Module Name: eth_logger_tb
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


module eth_logger_tb();
localparam PROBE_WIDTH = 16;

bit                             clk_i;
logic                           rstn_i;
logic [PROBE_WIDTH-1:0]         debug_probe_i; 
logic                           debug_trig_i;
logic                           eth_ref_clk_o;
logic                           eth_rstn_o;
bit                             eth_tx_clk_i;
logic                           eth_tx_en_o;
logic [3:0]                     eth_tx_d_o;

always #5 clk_i = ~clk_i;
always #20 eth_tx_clk_i = ~eth_tx_clk_i;
eth_logger_main #(PROBE_WIDTH) dut (.*);

task automatic set_probe_data();
    debug_trig_i = 0;
    debug_probe_i = $urandom();
    @(posedge clk_i);
    debug_trig_i = 1;
    $display("%h", debug_probe_i);
    #800 debug_trig_i = 0;
endtask //automatic

initial begin
    $display("T=[%t]. Simulation started", $time);
    rstn_i = 0; clk_i = 0; eth_tx_clk_i = 0; debug_probe_i = '0; debug_trig_i = 0;
    #100 rstn_i = 1;
    #19200;
        $display("T=[%t]. Starting data generating", $time);
    repeat(40) begin
        @(posedge clk_i);
        set_probe_data();
        
        #19200;
    end

    
end
// /eth_logger_tb/dut/eth_udp_send/state

int unsigned packet_count = 0;
logic [3:0] payload_queue [$] = {};

always @(posedge eth_tx_clk_i) begin
    if (((dut.eth_udp_send.state == 9)&&(dut.eth_udp_send.i <= (dut.eth_udp_send.MIN_DATA_BYTES-1)*2))
        ||((dut.eth_udp_send.state == 11)&&(dut.eth_udp_send.i == 7))) begin
        payload_queue = {payload_queue, eth_tx_d_o};
        $display("T=[%t]. %h inserted to queue", $time, eth_tx_d_o);
    end
end
always @(negedge eth_tx_en_o) begin
    packet_count ++;
    $display("T=[%t]. Packet recieved, Total packets = %d", $time, packet_count);
    $display("T=[%t]. Payload =", $time);
    for (int i = 0;i < payload_queue.size() ; i=i+4 ) begin
        $display("%h", {payload_queue[i],payload_queue[i+1],payload_queue[i+2],payload_queue[i+3]});
    end
    #100;
    $finish();
end
endmodule
