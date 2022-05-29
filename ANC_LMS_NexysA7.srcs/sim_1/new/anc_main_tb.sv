module anc_main_tb();
	//////////////////////////////////////////////////////////////////////////////////
	// system clock 100 mhz
    bit sys_clk;
	
	
    // push buttons
    logic [3:0] btn;          //active high
    // switches
    logic [3:0] sw;
    // leds 
    logic [3:0] led;
    // Pmod JA connector for microphone connection
    // mono channel
    // error mic 
    logic ja_1, ja_2, ja_4;  //sel,lrclk,bclk
    logic ja_3;               //dout
    // Pmod JB connector for microphone connection
    // mono channel
    // ref mic
    logic jb_1, jb_2, jb_4;  //sel,lrclk,bclk
    logic jb_3;               //dout
    //pwm analog output
    logic ja_10;
	// eth phy
	bit           	eth_ref_clk;
	logic           eth_rstn;
	bit           	eth_tx_clk;
	logic           eth_tx_en;
	logic [3:0]     eth_txd;
	
	assign eth_tx_clk = eth_ref_clk;
	//////////////////////////////////////////////////////////////////////////////////
	// Tb assign i2s signals
	logic tb_sel, tb_lrclk, tb_bclk, tb_dout;

	assign tb_sel 	= ja_1;
	assign tb_lrclk = ja_2;
	assign tb_bclk 	= ja_4;
	assign ja_3 	= tb_dout;
	//////////////////////////////////////////////////////////////////////////////////
	// clk gen
	localparam CLK_PERIOD = 10;
	always #(CLK_PERIOD/2) sys_clk = ~sys_clk;
	// always #(CLK_PERIOD*2) eth_tx_clk = ~eth_tx_clk;	//25 mhz tx clock from phy




	anc_main dut0 (	
					// .ja_1(1'b0),	//SEL set 0 (data valid when ws = 0)
					// .ja_2(_if.lrclk),
					// .ja_4(_if.ws),
					// .ja_3(_if.data),
					.*);

	// i2s fifo to compare with transmitted payload
	logic [15:0] i2s_queue [$] = {};

	task automatic i2s_write_left();

		logic [31:0] i2s_trans;
		logic [15:0] rand_data;
		int j = 31;

		@(posedge tb_lrclk);	// wait for valid word_select signal
		rand_data = $urandom();	// seed = 3
		i2s_trans = {rand_data, 16'h00ZZ};
		i2s_queue = {i2s_queue, rand_data};
		$display("T=[%0t] Transaction generated 0h%h.", $time, i2s_trans);
		repeat(32) begin
			// $display("T=[%0t] j=%d.", $time, j);
			@(posedge tb_bclk);
			tb_dout = i2s_trans[j];
			@(negedge tb_bclk);
			j = j-1;
		end
		// end


	endtask //automatic

	// quick sanity check
	integer i = 0;
	initial begin	:main_sequence 
		$display("T=[%0t] Simulation started.", $time);
		btn = '0;
		sw[3:2] = 2'b01;	// microphone channel select assign ( sw[3] = ja_1, sw[2] = jb_1)
	    #(CLK_PERIOD*20);
		repeat (50) begin
			i2s_write_left();
		end
		// repeat(15000) #(CLK_PERIOD);
		$display("T=[%0t] Simulation ended.", $time);
		#(CLK_PERIOD*20);
		$finish;
		// @(done);
	end


	// fetch transmitted packets
	int unsigned packet_count = 0;
	logic [3:0] payload_queue [$] = {};


	always @(posedge eth_tx_clk) begin
		if (((dut0.eth_logger.eth_udp_send.state == 9)&&(dut0.eth_logger.eth_udp_send.i <= (dut0.eth_logger.eth_udp_send.MIN_DATA_BYTES-1)*2))
			||((dut0.eth_logger.eth_udp_send.state == 11)&&(dut0.eth_logger.eth_udp_send.i == 7))) begin
			payload_queue = {payload_queue, eth_txd};
			$display("T=[%t]. %h inserted to queue", $time, eth_txd);
		end
	end

	always @(negedge eth_tx_en) begin
		if (!eth_rstn) begin
			packet_count = '0;
		end else begin
			packet_count ++;
			$display("T=[%t]. Packet recieved, Total packets = %d", $time, packet_count);
			$display("T=[%t]. Queue.size=%d, Payload =", $time, (payload_queue.size()/4));
			for (int i = 0;i < payload_queue.size() ; i=i+4 ) begin
				$display("%h", {payload_queue[i],payload_queue[i+1],payload_queue[i+2],payload_queue[i+3]});
			end	
			$display("T=[%t]. Queue.size=%d, I2S transactions =, ", $time, i2s_queue.size());
			for (int j = 0; j < i2s_queue.size(); j++ ) begin
				$display("%h", i2s_queue[j]);
			end
		end
	end
endmodule