timeunit 1ns/1ps;
`include "C:/Xilinx/Projects/ANC_LMS_NexysA7/ANC_LMS_NexysA7.srcs/sim_1/new/i2s_driver.sv"
//
	// `include "i2s_driver.sv"
	// `include "pwm_modulator.sv"

	// module top_tb;
	// /////////signals//////////
	// 	logic s_axi_ctrl_aclk;
	// 	logic s_axi_ctrl_aresetn;
	// 	logic s_axi_ctrl_awvalid;
	// 	logic s_axi_ctrl_awready;
	// 	logic [7 : 0] s_axi_ctrl_awaddr;
	// 	logic s_axi_ctrl_wvalid;
	// 	logic s_axi_ctrl_wready;
	// 	logic [31 : 0] s_axi_ctrl_wdata;
	// 	logic s_axi_ctrl_bvalid;
	// 	logic s_axi_ctrl_bready;
	// 	logic [1 : 0] s_axi_ctrl_bresp;
	// 	logic s_axi_ctrl_arvalid;
	// 	logic s_axi_ctrl_arready;
	// 	logic [7 : 0] s_axi_ctrl_araddr;
	// 	logic s_axi_ctrl_rvalid;
	// 	logic s_axi_ctrl_rready;
	// 	logic [31 : 0] s_axi_ctrl_rdata;
	// 	logic [1 : 0] s_axi_ctrl_rresp;
	// 	logic m_axis_aud_aclk;
	// 	logic m_axis_aud_tvalid;
	// 	logic [2 : 0] m_axis_aud_tid;
	// 	logic [31 : 0] m_axis_aud_tdata;
	// 	logic m_axis_aud_aresetn;
	// 	logic m_axis_aud_tready;

	// 	logic pwm_out;
	// 	logic irq;
	// 	logic done;                         
	// 	logic lrclk_out;
	// 	logic sclk_out;
	// 	logic sdata_0_in;
	// 	logic aud_mrst;
	// 	logic aud_mclk;
	// //////////////////////////

	// localparam CLK_PERIOD = 10;
	// bit clk_100M = 0;
	// always #(CLK_PERIOD/2) clk_100M = !clk_100M;
	// ////////// interfaces///////////////


	// i2s_driver i2s_gen0 (done, lrclk_out, sclk_out, sdata_0_in);
	// i2s_reciever_config config0(
	// 	.s_axi_ctrl_aclk(clk_100M),
	// 	.s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),
	// 	.s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),
	// 	.s_axi_ctrl_awready(s_axi_ctrl_awready),
	// 	.s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),
	// 	.s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),
	// 	.s_axi_ctrl_wready(s_axi_ctrl_wready),
	// 	.s_axi_ctrl_wdata(s_axi_ctrl_wdata),
	// 	.s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),
	// 	.s_axi_ctrl_arready(s_axi_ctrl_arready),
	// 	.s_axi_ctrl_araddr(s_axi_ctrl_araddr),
	// 	.s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),
	// 	.s_axi_ctrl_rready(s_axi_ctrl_rready),
	// 	.s_axi_ctrl_rdata(s_axi_ctrl_rdata),
	// 	.s_axi_ctrl_rresp(s_axi_ctrl_rresp),
	// 	.s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),
	// 	.s_axi_ctrl_bready(s_axi_ctrl_bready),
	// 	.s_axi_ctrl_bresp(s_axi_ctrl_bresp));

	// pwm_modulator pwm_modulator0 (
	// 	.m_axis_aud_aclk(clk_100M),
	// 	.m_axis_aud_tvalid(m_axis_aud_tvalid),
	// 	.m_axis_aud_tid(m_axis_aud_tid),
	// 	.m_axis_aud_tdata(m_axis_aud_tdata),
	// 	.m_axis_aud_aresetn(m_axis_aud_aresetn),
	// 	.m_axis_aud_tready(m_axis_aud_tready),
	// 	.pwm_out(pwm_out)
	// 	);

	// i2s_receiver_0 i2s_reciever_inst0 (
	//   .s_axi_ctrl_aclk(clk_100M),        // input wire s_axi_ctrl_aclk
	//   .s_axi_ctrl_aresetn(s_axi_ctrl_aresetn),  // input wire s_axi_ctrl_aresetn
	//   .aud_mclk(clk_100M),                      // input wire aud_mclk
	//   .aud_mrst(aud_mrst),                      // input wire aud_mrst
	//   .s_axi_ctrl_awvalid(s_axi_ctrl_awvalid),  // input wire s_axi_ctrl_awvalid
	//   .s_axi_ctrl_awready(s_axi_ctrl_awready),  // output wire s_axi_ctrl_awready
	//   .s_axi_ctrl_awaddr(s_axi_ctrl_awaddr),    // input wire [7 : 0] s_axi_ctrl_awaddr
	//   .s_axi_ctrl_wvalid(s_axi_ctrl_wvalid),    // input wire s_axi_ctrl_wvalid
	//   .s_axi_ctrl_wready(s_axi_ctrl_wready),    // output wire s_axi_ctrl_wready
	//   .s_axi_ctrl_wdata(s_axi_ctrl_wdata),      // input wire [31 : 0] s_axi_ctrl_wdata
	//   .s_axi_ctrl_bvalid(s_axi_ctrl_bvalid),    // output wire s_axi_ctrl_bvalid
	//   .s_axi_ctrl_bready(s_axi_ctrl_bready),    // input wire s_axi_ctrl_bready
	//   .s_axi_ctrl_bresp(s_axi_ctrl_bresp),      // output wire [1 : 0] s_axi_ctrl_bresp
	//   .s_axi_ctrl_arvalid(s_axi_ctrl_arvalid),  // input wire s_axi_ctrl_arvalid
	//   .s_axi_ctrl_arready(s_axi_ctrl_arready),  // output wire s_axi_ctrl_arready
	//   .s_axi_ctrl_araddr(s_axi_ctrl_araddr),    // input wire [7 : 0] s_axi_ctrl_araddr
	//   .s_axi_ctrl_rvalid(s_axi_ctrl_rvalid),    // output wire s_axi_ctrl_rvalid
	//   .s_axi_ctrl_rready(s_axi_ctrl_rready),    // input wire s_axi_ctrl_rready
	//   .s_axi_ctrl_rdata(s_axi_ctrl_rdata),      // output wire [31 : 0] s_axi_ctrl_rdata
	//   .s_axi_ctrl_rresp(s_axi_ctrl_rresp),      // output wire [1 : 0] s_axi_ctrl_rresp
	//   .irq(irq),                                // output wire irq
	//   .lrclk_out(lrclk_out),                    // output wire lrclk_out
	//   .sclk_out(sclk_out),                      // output wire sclk_out
	//   .sdata_0_in(sdata_0_in),                  // input wire sdata_0_in
	//   .m_axis_aud_aclk(clk_100M),        // input wire m_axis_aud_aclk
	//   .m_axis_aud_aresetn(m_axis_aud_aresetn),  // input wire m_axis_aud_aresetn
	//   .m_axis_aud_tdata(m_axis_aud_tdata),      // output wire [31 : 0] m_axis_aud_tdata
	//   .m_axis_aud_tid(m_axis_aud_tid),          // output wire [2 : 0] m_axis_aud_tid
	//   .m_axis_aud_tvalid(m_axis_aud_tvalid),    // output wire m_axis_aud_tvalid
	//   .m_axis_aud_tready(m_axis_aud_tready)    // input wire m_axis_aud_tready
	// 	);


	// // task axi_write(input [7:0] addr, input [31:0] data);
	// // 	begin
	// // 		$display("%g AXI4 Write to adress: %h Data: %h", $time, addr, data);
	// // 		$display("%g Checking if slave ready",$time);
	// // 		s_axi_ctrl_awvalid = 0;
	// // 		s_axi_ctrl_wvalid = 0;
	// // 		s_axi_ctrl_bready = 0;
	// // 		@(posedge clk_100M);
	// // 		s_axi_ctrl_awvalid = 1;
	// // 		s_axi_ctrl_awaddr = addr;
	// // 		s_axi_ctrl_wvalid = 1;
	// // 		s_axi_ctrl_wdata = data;
	// // 		s_axi_ctrl_bready = 1;
	// // 		@(posedge clk_100M);
	// // 		s_axi_ctrl_awvalid = 0;
	// // 		@(posedge clk_100M);
	// // 		s_axi_ctrl_wvalid = 0;
	// // 		s_axi_ctrl_bready = 1;
	// // 		@(negedge s_axi_ctrl_bvalid);
	// // 		s_axi_ctrl_bready = 0;
	// // 		@(posedge s_axi_ctrl_awready);
	// // 		$display("%g AXI4 transaction completed",$time);
	// // 	end
	// // endtask
	// //axi stream memory
	// reg [31:0] axi_stream_memory  [0:15];
	// integer axi_stream_counter = 0;




	// // always @(posedge clk_100M ) begin
	// // 		if (m_axis_aud_tvalid) begin
	// // 			m_axis_aud_tready <= 1;
	// // 			axi_stream_memory[axi_stream_counter] <= {8'h00 , m_axis_aud_tdata[27:4]}; //valid data
	// // 			$display("%g Data from AXIS channel = %h, n = %d", $time, m_axis_aud_tdata, axi_stream_counter);
	// // 			axi_stream_counter <= axi_stream_counter + 1;
	// // 		end	
		
	// // end




	// integer i = 0;
	// initial begin	:main_sequence
	//     s_axi_ctrl_aresetn = 0;   
	// 	m_axis_aud_aresetn = 0;
	//     aud_mrst = 1;
	//     #(CLK_PERIOD*4);
	//     s_axi_ctrl_aresetn = 1;
	//     m_axis_aud_aresetn = 1;
	//     aud_mrst = 0;
	//     #(CLK_PERIOD*4);
	// 	// axi_write(8'h20,32'h0000000F);		// clock devider selection
	// 	// axi_write(8'h50,32'h87654321);
	// 	// axi_write(8'h54,32'h0fedcba9);
	// 	// axi_write(8'h58,32'h33221100);
	// 	// axi_write(8'h5c,32'h77665544);
	// 	// axi_write(8'h60,32'hbbaa9988);
	// 	// axi_write(8'h64,32'hffeeddcc);
	// 	// axi_write(8'h08,32'h00000003);
	// 	// axi_write(8'h08,32'h00000011);

	// 	// while (axi_stream_counter < 127) begin
	// 	// 	axis_read;
	// 	// end

	// 	@(done);
	// 	$display("Simulation finished at %0t", $time);
	// 	$finish;
	// end

	// endmodule
// 
module top_design_tb;

	bit     	CLK100MHZ = 0;
	logic     	CPU_RESETN;
	logic   	JD1;  // sel pin = 1
	logic   	JD2;  // ws pin {data active when low}
	logic   	JD3;   // mic's data out pin {need pull down due to singe mic}
	logic   	JD4;  // mic's clock
	logic    	LED0;
	logic   	JD10;
	logic 		usb_uart_rxd;
	logic 		usb_uart_txd;

	localparam CLK_PERIOD = 10;
	always #(CLK_PERIOD/2) CLK100MHZ = !CLK100MHZ;

	logic done;
	ANC_PROJ_BD_wrapper dut0 (.*);
	i2s_driver i2s_drv0(
		.done,
		.lrclk_in(JD2),
		.sclk_in(JD4),
		.s_data_out(JD3)
		);
	// quick sanity check
	integer i = 0;
	initial begin	:main_sequence
	    CPU_RESETN = 0;   
	    #(CLK_PERIOD*1000);
	    CPU_RESETN = 1;
		
	    // #(CLK_PERIOD*1000);
		// CPU_RESETN = 0;   
		
	    // #(CLK_PERIOD*1000);
	    // CPU_RESETN = 1;

	    // #(CLK_PERIOD*1000);
		// CPU_RESETN = 0;   

	    #(CLK_PERIOD*4);
		repeat(300) #(CLK_PERIOD);
		$display("Simulation finished at %0t", $time);
		$finish;
		// @(done);
	end
endmodule