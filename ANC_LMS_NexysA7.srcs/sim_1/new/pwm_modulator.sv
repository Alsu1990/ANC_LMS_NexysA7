module pwm_modulator (
	// AXI_S INTERFACE
	input m_axis_aud_tvalid,
	input [2:0] m_axis_aud_tid,
	input [31:0] m_axis_aud_tdata,
	input m_axis_aud_aresetn,
	input m_axis_aud_aclk,
	output logic m_axis_aud_tready,
	output logic interupt_out,
	output logic pwm_out);






endmodule