module i2s_reciever_config (
    input logic         s_axi_ctrl_aclk,
	input logic         s_axi_ctrl_aresetn,
	output logic        s_axi_ctrl_awvalid,
	input  logic        s_axi_ctrl_awready,
	output logic [7:0]  s_axi_ctrl_awaddr,
	output logic        s_axi_ctrl_wvalid,
	input logic         s_axi_ctrl_wready,
	output logic [31:0] s_axi_ctrl_wdata,
	output logic        s_axi_ctrl_arvalid,
	input logic         s_axi_ctrl_arready,
	output logic [7:0]  s_axi_ctrl_araddr,
	input logic         s_axi_ctrl_rvalid,
	output logic        s_axi_ctrl_rready,
	input logic [31:0]  s_axi_ctrl_rdata,
	input logic [1:0]   s_axi_ctrl_rresp,
	input logic         s_axi_ctrl_bvalid,
	output logic        s_axi_ctrl_bready,
	input logic [1:0]   s_axi_ctrl_bresp);
    
	// configuration counter
	logic [3:0] config_counter;
	logic config_done;
	always_ff @( posedge s_axi_ctrl_aclk ) begin : config_seq
		if (!s_axi_ctrl_aresetn) begin
			config_counter <= 0;
			s_axi_ctrl_bready <= 1;
		end else begin
			if (s_axi_ctrl_bvalid && !config_done) begin	// slave response, increment counter
				s_axi_ctrl_bready <= 0;
				config_counter <= config_counter + 1;
			end else begin
				s_axi_ctrl_bready <= 1;
			end
		end
	end
	always_ff @( posedge s_axi_ctrl_aclk ) begin : config_done_logic
		config_done <= (config_counter == 4'b1000) ? 1 : 0;
	end
	// block config
	always_ff @(posedge s_axi_ctrl_aclk) begin : write
		if (!s_axi_ctrl_aresetn) begin
			s_axi_ctrl_awvalid <= 0;
			s_axi_ctrl_wvalid <= 0;
			s_axi_ctrl_awaddr <= 0;
			s_axi_ctrl_wdata <= 0;
		end else begin
			if (s_axi_ctrl_awready && !config_done) begin
				case (config_counter)
					4'b0000: begin
						s_axi_ctrl_awaddr <= 8'h20;
						s_axi_ctrl_awvalid <= 1;
						s_axi_ctrl_wdata <= 32'h0000000f;
						s_axi_ctrl_wvalid <= 1;
					end
					4'b0001: begin
						s_axi_ctrl_awaddr <= 8'h50;
						s_axi_ctrl_awvalid <= 1;
						s_axi_ctrl_wdata <= 32'h87654321;
						s_axi_ctrl_wvalid <= 1;
					end
					4'b0010: begin
						s_axi_ctrl_awaddr <= 8'h54;
						s_axi_ctrl_awvalid <= 1;
						s_axi_ctrl_wdata <= 32'h0fedcba9;
						s_axi_ctrl_wvalid <= 1;
					end
					4'b0011: begin
						s_axi_ctrl_awaddr <= 8'h58;
						s_axi_ctrl_awvalid <= 1;
						s_axi_ctrl_wdata <= 32'h33221100;
						s_axi_ctrl_wvalid <= 1;
					end
					4'b0100: begin
						s_axi_ctrl_awaddr <= 8'h5c;
						s_axi_ctrl_awvalid <= 1;
						s_axi_ctrl_wdata <= 32'h77665544;
						s_axi_ctrl_wvalid <= 1;
					end
					4'b0101: begin
						s_axi_ctrl_awaddr <= 8'h60;
						s_axi_ctrl_awvalid <= 1;
						s_axi_ctrl_wdata <= 32'hbbaa9988;
						s_axi_ctrl_wvalid <= 1;
					end
					4'b0110: begin
						s_axi_ctrl_awaddr <= 8'h64;
						s_axi_ctrl_awvalid <= 1;
						s_axi_ctrl_wdata <= 32'hffeeddcc;
						s_axi_ctrl_wvalid <= 1;
					end
					4'b0111: begin
						s_axi_ctrl_awaddr <= 8'h08;
						s_axi_ctrl_awvalid <= 1;
						s_axi_ctrl_wdata <= 32'h00000003;
						s_axi_ctrl_wvalid <= 1;
					end
					4'b1???: begin	// if config done go idle
						s_axi_ctrl_awvalid <= 0;
						s_axi_ctrl_wvalid <= 0;
						s_axi_ctrl_awaddr <= 0;
						s_axi_ctrl_wdata <= 0;
					end
				endcase
			end else if (config_done) begin
				s_axi_ctrl_awvalid <= 0;
				s_axi_ctrl_wvalid <= 0;
				s_axi_ctrl_awaddr <= 0;
				s_axi_ctrl_wdata <= 0;
			end
		end
	end

endmodule