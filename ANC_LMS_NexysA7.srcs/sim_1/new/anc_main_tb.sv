timeunit 1ns/1ps;
//////////////////////////////////////////////////////////////////////////////////
// i2s interface
interface i2s_if(input bit clk);
	logic lrclk;	// word select. toggles every 32 bit
	logic data;		// data output from microphone
	logic ws;		// data valid at lrclk==ws condition
endinterface //i2s_if
//////////////////////////////////////////////////////////////////////////////////
// i2s packet
class i2s_packet;  // i2s transaction class
    rand logic [15:0] i2s_data;
    //new packet generation
	function void print (string tag ="");
		$display("T=%0t %s i2s_data=0x%0h", $time, tag, i2s_data);
	endfunction
endclass //className
//////////////////////////////////////////////////////////////////////////////////
// i2s generator
class i2s_gen;
	mailbox drv_mbx;
	event drv_done;

	task automatic run();
		forever begin
			i2s_packet item = new;
			item.randomize();
			$display("T=%0t [Generator] New item generated. i2s_packet=0x%0h", $time, item.i2s_data);
			drv_mbx.put(item);
			@(drv_done);
		end
	endtask //automatic
endclass //i2s_gen
//////////////////////////////////////////////////////////////////////////////////
// i2s driver
class i2s_driver;
	event drv_done;
	virtual i2s_if _if;
	mailbox drv_mbx;
	logic [31:0] i2s_32bit;
	task automatic run();
		$display("T=%0t [Driver] starting...", $time);
		forever begin
			i2s_packet item;
			$display("T=%0t [Driver] waiting for packet...", $time);
			drv_mbx.get(item);
			item.print("Driver");
			i2s_32bit = {item.i2s_data,16'h00ZZ};
			@(posedge _if.lrclk or negedge _if.lrclk);
			repeat(32) begin	// 32 bit transaction
				@(posedge _if.clk)
				if (_if.ws == _if.lrclk) begin
					_if.data = i2s_32bit[31];
					i2s_32bit = {i2s_32bit[31:1], 1'b0};
				end
			end
			if (!i2s_32bit) -> drv_done;
		end
	endtask //automatic
endclass //className


module anc_main_tb();
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
	//////////////////////////////////////////////////////////////////////////////////
	// assign sys_reset to btn[0] active high
	logic pb_reset;
	assign pb_reset = btn[0];

	localparam CLK_PERIOD = 10;
	always #(CLK_PERIOD/2) sys_clk = ~sys_clk;

	logic done;
	ANC_PROJ_BD_wrapper dut0 (.*);
	// i2s_driver i2s_drv0(
	// 	.done,
	// 	.lrclk_in(JD2),
	// 	.sclk_in(JD4),
	// 	.s_data_out(JD3)
	// 	);
	// quick sanity check
	integer i = 0;
	initial begin	:main_sequence
	    pb_reset = 1;   
	    #(CLK_PERIOD*4);
	    pb_reset = 0;
		
	    // #(CLK_PERIOD*1000);
		// pb_reset = 0;   
		
	    // #(CLK_PERIOD*1000);
	    // pb_reset = 1;

	    // #(CLK_PERIOD*1000);
		// pb_reset = 0;   

	    #(CLK_PERIOD*4);
		repeat(300) #(CLK_PERIOD);
		$display("Simulation finished at %0t", $time);
		$finish;
		// @(done);
	end
endmodule