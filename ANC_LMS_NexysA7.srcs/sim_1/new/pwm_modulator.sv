// `default_nettype none

module pwm_modulator (
	// AXI_S INTERFACE
	input wire 			m_axis_aud_tvalid,
	input wire [2:0] 	m_axis_aud_tid,
	input wire [31:0] 	m_axis_aud_tdata,
	input wire 			m_axis_aud_aresetn,
	input wire 			m_axis_aud_aclk,
	output logic 		m_axis_aud_tready,
	//
	input wire 			rstn_in,	// sync reset active low
	input wire 			clk_in,		// 100 mhz clock
	output logic 		pwm_out);

//////////////////////////counter/////////////////////////////////////
	localparam  PWM_FRAME = 16'd2268;		// 44.1 kHz 100Mhz clock
	logic [15:0] period_counter;			// PWM counter
	logic [15:0] period_counter_reversed;	// PWM counter bit reversed

	always_ff @( posedge clk_in ) begin : pwm_period_counter
		if (!rstn_in) begin
			period_counter <= 0;
		end else begin
			period_counter <= period_counter + 1;
		end
	end

	genvar k;
	generate
		for (k = 0; k < 16; k++ ) begin : bit_reversal_loop
			assign period_counter_reversed[k] = period_counter[15-k];
		end
	endgenerate

//////////////////////////AXIS && New samples logic ///////////////////////////////////
	logic zero_timer;	// when timer hits zero, zero_timer flag indicates that system ready for new sample
	logic [15:0] timer;
	
	always_ff @( posedge clk_in ) zero_timer <= (!rstn_in) ? 0 : (timer == 16'h0001);	// flag raises one clock before timer reaches zero

	always_ff @( posedge clk_in ) timer <= ((!rstn_in) || (zero_timer)) ? PWM_FRAME : timer - 1;

	// when the timer runs out => accept next value
	logic [15:0] sample_out;
	logic [15:0] next_sample;
	logic next_valid;

	always_ff @( posedge clk_in ) if (zero_timer) sample_out <= next_sample;	// reload sample with timer reaches zero

	always_ff @( posedge clk_in ) m_axis_aud_tready <= (zero_timer) ? 1 : 0;	// pwm module ready for next sample

	always_ff @( posedge clk_in ) begin : next_sample_logic
		if (!rstn_in) begin
			next_sample <= 0;
			next_valid <= 1;
		end else begin
			// since we working only with one microphone we will use only ZERO CHANNEL
			if ((m_axis_aud_tid == 0) && (m_axis_aud_tvalid) ) begin
				next_sample <= {!m_axis_aud_tdata[27], m_axis_aud_tdata[26:4]};	// convert 2's complement to unsigned binary offset
				next_valid <= 1;
			end else if (zero_timer) next_valid <= 0;
		end
	end

	always_ff @( posedge clk_in ) pwm_out <= ( sample_out >= period_counter_reversed ) ? 1'b1 : 1'b0 ;
endmodule