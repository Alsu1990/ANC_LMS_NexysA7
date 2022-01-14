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
    
	// axi4 transaction struct
	typedef struct packed {
		logic [7:0] address;
		logic [31:0] data;
	} axi_pkt_t;

	axi_pkt_t [0:7] axi_cmd ={{8'h20, 32'h0000000f},
							{8'h50, 32'h87654321},
							{8'h54, 32'h0fedcba9},
							{8'h58, 32'h33221100},
							{8'h5c, 32'h77665544},
							{8'h60, 32'hbbaa9988},
							{8'h64, 32'hffeeddcc},
							// {8'h08, 32'h00000001}};
							{8'h08, 32'h00000005}};

	




	// block config
	// configuration counter
	logic [3:0] config_counter;
	logic config_done;

	assign config_done = (config_counter >= 7) ? 1:0;
	
	//---- config state machine
	// typedef enum { 
	// 	IDLE,
	// 	START, 
	// 	AW_ACK, 
	// 	W_ACK, 
	// 	RESP_ACK   
	// } states_t;

	typedef enum  {
		IDLE,
		SLAVE_CONFIG,	// i2s registers configuration
		VERIFY,			// verifying configuration write
		DONE
	} state_t;

	typedef enum { 
		SET_READ_ADDR,
		DO_READ,
		SET_WRITE_ADDR,
		DO_WRITE,
		FINISH_WRITE		
	} axi_state_t;


	state_t state_q;
	axi_state_t axi_state_q;

	always_ff @(posedge s_axi_ctrl_aclk) begin : main_fsm
		if (!s_axi_ctrl_aresetn) begin
			s_axi_ctrl_awvalid <= '0;
			s_axi_ctrl_arvalid <= '0;			
			s_axi_ctrl_wvalid <= '0;			
			s_axi_ctrl_bready <= '0;			
			s_axi_ctrl_rready <= '0;
			state_q <= IDLE;
			axi_state_q <= SET_WRITE_ADDR;
			config_counter <= '0;			
		end else begin
			case (state_q)
				IDLE: begin
					state_q <= (config_done) ? IDLE : SLAVE_CONFIG;
					axi_state_q <= SET_WRITE_ADDR;
				end
				SLAVE_CONFIG: begin
					unique case (axi_state_q)
						SET_WRITE_ADDR: begin
							s_axi_ctrl_awaddr <= axi_cmd[config_counter].address;
							s_axi_ctrl_awvalid <= 1'b1;
							if(s_axi_ctrl_awready) begin
								s_axi_ctrl_awvalid <= 1'b0;
								axi_state_q <= DO_WRITE;
							end
						end
						DO_WRITE: begin
							s_axi_ctrl_wdata <= axi_cmd[config_counter].data;
							s_axi_ctrl_wvalid <= 1'b1;
							if (s_axi_ctrl_wready && s_axi_ctrl_wvalid) begin
								s_axi_ctrl_wvalid <= 1'b0;
								s_axi_ctrl_bready <= 1'b1;
								axi_state_q <= FINISH_WRITE;
							end
						end
						FINISH_WRITE: begin
							s_axi_ctrl_bready <= 1'b1;
							if(s_axi_ctrl_bvalid) begin
								s_axi_ctrl_bready <= 1'b0;
								state_q = VERIFY;
								axi_state_q <= SET_READ_ADDR;
								// config_counter <= config_counter + 1; move to verify branch
							end
						end
					endcase
				end
				VERIFY: begin
					unique case(axi_state_q)
						SET_READ_ADDR: begin
							s_axi_ctrl_araddr <= axi_cmd[config_counter].address;
							s_axi_ctrl_arvalid <= 1'b1;
							if(s_axi_ctrl_arready) begin
								s_axi_ctrl_arvalid <= 1'b0;
								s_axi_ctrl_rready <= 1'b1;
								axi_state_q <= DO_READ;
							end
						end
						DO_READ: begin
							s_axi_ctrl_rready <= 1'b1;
							if (s_axi_ctrl_rvalid) begin
								s_axi_ctrl_rready <= 1'b0;
								if (s_axi_ctrl_rdata == axi_cmd[config_counter].data) begin
									config_counter <= config_counter + 1;
									state_q <= SLAVE_CONFIG;
									axi_state_q <= SET_WRITE_ADDR;	
								end else
								if (config_done) begin
									state_q <= DONE;
									axi_state_q <= SET_READ_ADDR;
								end
							end
						end
					endcase
				end
				DONE: begin
					s_axi_ctrl_awvalid <= '0;
					s_axi_ctrl_arvalid <= '0;			
					s_axi_ctrl_wvalid <= '0;			
					s_axi_ctrl_bready <= '0;			
					s_axi_ctrl_rready <= '0;
				end
			endcase
		end
	end

	// states_t state, next_state;

	// always_ff @( posedge s_axi_ctrl_aclk ) begin : state_update
	// 	if (!s_axi_ctrl_aresetn) begin
	// 		state <= IDLE;
	// 	end else begin
	// 		state <= next_state;
	// 	end
	// end

	// always_comb begin : next_state_logic
	// 	case (state)
	// 		IDLE: begin
	// 			next_state <= (!config_done) ? START : IDLE; // if slave ready on AW BUS
	// 		end
	// 		START: begin
	// 			next_state <= (s_axi_ctrl_awready && !config_done) ? AW_ACK : IDLE; // if slave ready on AW BUS
	// 		end
	// 		AW_ACK: begin
	// 			next_state <= (s_axi_ctrl_wready) ? W_ACK : AW_ACK; // if slave ready on W BUS
	// 		end
	// 		W_ACK: begin
	// 			next_state <= (s_axi_ctrl_bvalid) ? RESP_ACK : AW_ACK; // if slave ready on W BUS
	// 		end
	// 		RESP_ACK: begin
	// 			next_state <= (s_axi_ctrl_awready) ? START : RESP_ACK; // if slave ready on W BUS
	// 		end
	// 		default: next_state <= IDLE;
	// 	endcase
	// end



	// always_ff @( posedge s_axi_ctrl_aclk ) begin : output_logic
	// 	if (!s_axi_ctrl_aresetn) begin
	// 		s_axi_ctrl_awvalid <= 0;
	// 		s_axi_ctrl_awaddr <= 0;
	// 		s_axi_ctrl_wvalid <= 0;
	// 		s_axi_ctrl_wdata <= 0;
	// 		s_axi_ctrl_bready <= 0;
	// 		// config_counter <= 4'b1111;
	// 		config_counter <= 0;
	// 	end else begin
	// 		case (state)
	// 			IDLE: begin
	// 				s_axi_ctrl_awvalid <= 0;
	// 				s_axi_ctrl_awaddr <= 0;
	// 				s_axi_ctrl_wvalid <= 0;
	// 				s_axi_ctrl_wdata <= 0;
	// 				s_axi_ctrl_bready <= 0;
	// 			end
	// 			START: begin
	// 				if (!config_done) begin
	// 					s_axi_ctrl_awvalid <= 1;
	// 					s_axi_ctrl_awaddr <= axi_cmd[config_counter].address;
	// 					s_axi_ctrl_wvalid <= 1;
	// 					s_axi_ctrl_wdata <= axi_cmd[config_counter].data;
	// 					s_axi_ctrl_bready <= 1;
	// 					config_counter <= config_counter + 1;	
	// 				end
	// 			end
	// 			AW_ACK: begin
	// 				s_axi_ctrl_awvalid <= 0;
	// 			end
	// 			W_ACK: begin
	// 				s_axi_ctrl_wvalid <= 0;
	// 			end
	// 			RESP_ACK: begin
	// 				s_axi_ctrl_bready <= 0;
					
	// 			end
				
	// 			// default: 
	// 		endcase
	// 	end
	// end


endmodule
