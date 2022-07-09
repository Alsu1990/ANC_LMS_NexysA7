
module i2s_reciever_config (
    input 	logic         	s_axi_ctrl_aclk,
	input 	logic         	s_axi_ctrl_aresetn,
	output 	logic        	s_axi_ctrl_awvalid,
	input  	logic        	s_axi_ctrl_awready,
	output 	logic [7:0]  	s_axi_ctrl_awaddr,
	output 	logic        	s_axi_ctrl_wvalid,
	input 	logic         	s_axi_ctrl_wready,
	output 	logic [31:0] 	s_axi_ctrl_wdata,
	output 	logic        	s_axi_ctrl_arvalid,
	input 	logic         	s_axi_ctrl_arready,
	output 	logic [7:0]  	s_axi_ctrl_araddr,
	input 	logic         	s_axi_ctrl_rvalid,
	output 	logic        	s_axi_ctrl_rready,
	input 	logic [31:0]  	s_axi_ctrl_rdata,
	input 	logic [1:0]   	s_axi_ctrl_rresp,
	input 	logic         	s_axi_ctrl_bvalid,
	output 	logic        	s_axi_ctrl_bready,
	input 	logic [1:0]   	s_axi_ctrl_bresp);
	//////////////////////////////////////////////////////////////////////////////////
	// axi4 transaction struct
	typedef struct packed {
		logic [7:0] address;
		logic [31:0] data;
	} axi_pkt_t;
	// configuration sequence
	axi_pkt_t [0:7] axi_cmd ={	{8'h20, 32'h0000000f},	// Timing Control Register. DIV_VAL = 15. SCLK = CLK * DIV_VAL * 2 = 300 ns = 3.33 Mhz
								{8'h50, 32'h87654321},	// AES Channel Status registers.	
								{8'h54, 32'h0fedcba9},	// AES Channel Status registers.
								{8'h58, 32'h33221100},	// AES Channel Status registers.
								{8'h5c, 32'h77665544},	// AES Channel Status registers.
								{8'h60, 32'hbbaa9988},	// AES Channel Status registers.
								{8'h64, 32'hffeeddcc},	// AES Channel Status registers.
								// {8'h08, 32'h00000005}	// Reciever Control Register. Right Justificatiom, Enable Left/Right Justification, Enable Core.
								{8'h08, 32'h00000003}	// Reciever Control Register. Left Justificatiom, Enable Left/Right Justification, Enable Core.
								};
	//////////////////////////////////////////////////////////////////////////////////
	// configuration counter
	logic [3:0] config_counter;
	logic config_done;
	assign config_done = (config_counter == 7) ? 1:0;

	typedef enum logic [2:0] { 
		IDLE = 3'b000,
		DO_READ = 3'b001,
		DO_WRITE = 3'b010,
		FINISH_WRITE = 3'b100		
	} axi_state_t;


	// state_t state_q;
	axi_state_t state, next_state;

	always_ff @( posedge s_axi_ctrl_aclk ) begin : state_transition
		if (!s_axi_ctrl_aresetn) begin
			state <= DO_WRITE;
		end else begin
			state <= next_state;
		end		
	end

	always_comb begin : next_state_logic
		unique case (state)
			DO_WRITE: begin
				if (s_axi_ctrl_wready&&s_axi_ctrl_wvalid) begin
					next_state = FINISH_WRITE;
				end else begin
					next_state = DO_WRITE;
				end
			end 
			FINISH_WRITE: begin
				if (s_axi_ctrl_bvalid&&s_axi_ctrl_bready) begin
					next_state = DO_READ;
				end else begin
					next_state = FINISH_WRITE;
				end
			end
			DO_READ: begin
				if (s_axi_ctrl_rvalid&&s_axi_ctrl_rready) begin
					next_state = (config_done) ?  IDLE: DO_WRITE; 
				end else begin
					next_state = DO_READ;
				end
			end

		endcase
	end

	always_ff @( posedge s_axi_ctrl_aclk ) begin : output_logic
		if (!s_axi_ctrl_aresetn) begin
			config_counter <= '0;
			s_axi_ctrl_awvalid <= 0;
			s_axi_ctrl_wvalid <= 0;
			s_axi_ctrl_bready <= 0;
			s_axi_ctrl_arvalid <= 0;
			s_axi_ctrl_rready <= 0;
		end else begin
			unique case (state)
				DO_WRITE: begin
					s_axi_ctrl_arvalid <= 0; // clear flags from previous read
					s_axi_ctrl_rready <= 0;
					s_axi_ctrl_awvalid <= 1;
					s_axi_ctrl_awaddr <= axi_cmd[config_counter].address;
					s_axi_ctrl_wvalid <= 1;
					s_axi_ctrl_wdata <= axi_cmd[config_counter].data;
					s_axi_ctrl_bready <= 1;
				end 
				FINISH_WRITE: begin
					s_axi_ctrl_awvalid <= 0;
					s_axi_ctrl_wvalid <= 0;
					s_axi_ctrl_bready <= 0;
				end 
				DO_READ: begin
					s_axi_ctrl_arvalid <= 1;
					s_axi_ctrl_araddr <= axi_cmd[config_counter].address;
					s_axi_ctrl_rready <= 1;
					if (s_axi_ctrl_rdata == axi_cmd[config_counter].data)
						config_counter <= config_counter + 1;
				end 
				IDLE: begin
					s_axi_ctrl_awvalid <= 0;
					s_axi_ctrl_wvalid <= 0;
					s_axi_ctrl_bready <= 0;
					s_axi_ctrl_arvalid <= 0;
					s_axi_ctrl_rready <= 0;
				end
			endcase
		end	
	end

endmodule
