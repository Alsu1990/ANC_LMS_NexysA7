`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/07/2022 08:16:34 PM
// Design Name: 
// Module Name: nlms_block
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

(* use_dsp48 = "yes" *)         // force Vivado to use DSP48 slice in synthesis

module mult_fp_16signed #(
    N   = 16       // data width q1.15
) (
    input   logic                   clk_i,
    input   logic                   enable_i,

    input   logic signed [N-1:0]    data1_i,
    input   logic signed [N-1:0]    data2_i,
    input   logic signed [N-1:0]    acc_i,

    output  logic signed [N-1:0]    product_o,
    output  logic                   ov_detect_o
    );

    // working in Q1.15 format
    logic signed [N-1:0]        data1_q, data2_q, acc_q, acc_q2, mult_q;
    logic signed [2*N-1:0]      mult;
    logic signed [N:0]          sum;
    logic                       ov_mult, ov_sum;

    // pipelining signals
    // acc input need to be delayed by extra clock
    always_ff @( posedge clk_i ) begin
        if (enable_i) begin
            data1_q <= data1_i;
            data2_q <= data2_i; 
            acc_q <= acc_i;   
            acc_q2 <= acc_q;
        end
    end
    //////////////////////////////////////////////////////////////////////////////////
    // multiplication stage
    assign mult = data1_q * data2_q;
    // overflow check (overflow may occur only  if 2 MSBs differ)
    assign ov_mult = mult [2*N-1] ^ mult [2*N-2]; 

    always_ff @( posedge clk_i ) begin
        if (!ov_mult) begin
            mult_q <= mult[(2*N-2):(2*N-17)]; // post_mult truncation {2nd_sign_bit:15_bits}
        end else begin
            if (mult[2*N-1]) begin      //negative => signed bit = 1 and others 0
                mult_q <= {1'b1,{(N-1){1'b0}}};
            end else begin              //positive => signed bit = 0 and others 1
                mult_q <= {1'b0,{(N-1){1'b1}}};
            end
        end
    end
    //////////////////////////////////////////////////////////////////////////////////
    // accumulating stage
    assign sum = mult_q + acc_q2;
    assign ov_sum = sum[N] ^ sum[N-1];

    always_ff @( posedge clk_i ) begin
        if (!ov_sum) begin
            product_o <= sum[(N-1):0]; // post_mult truncation {2nd_sign_bit:15_bits}
        end else begin
            if (sum[N]) begin      //negative => signed bit = 1 and others 0
                product_o <= {1'b1,{(N-1){1'b0}}};
            end else begin              //positive => signed bit = 0 and others 1
                product_o <= {1'b0,{(N-1){1'b1}}};
            end
        end
    end
    // overflow detection
    always_ff @( posedge clk_i ) ov_detect_o <= ov_mult || ov_sum;
endmodule


module nlms #(
    N = 16,                                 // data width
    TAP = 5                                 // filter order
) (
    input   logic                   clk_i,  // sys clock
    input   logic                   rstn_i, // sys reset (active-low)
    input   logic                   enable_i,

    input   logic signed [N-1:0]    noize_sample_i,
    input   logic signed [N-1:0]    ref_sample_i,
    output  logic signed [N-1:0]    filter_o
);
    // registers declaration
    logic signed [N-1:0]            noize_sample_q [0:TAP-1];
    logic signed [N-1:0]            weights_q [0:TAP-1];
    logic signed [N-1:0]            next_weights_q [0:TAP-1];
    logic signed [N-1:0]            ref_sample_q;

    always_ff @( posedge clk_i ) begin
        if (!rstn_i) begin
            noize_sample_q[0] <= '0;
            ref_sample_q <= '0;
        end else if (enable_i) begin
            noize_sample_q[0] <= noize_sample_i;
            ref_sample_q <= ref_sample_i;
        end
    end

    always_ff @( posedge clk_i ) begin
        if (!rstn_i) begin
            for (int k = TAP; k > 0; k=k-1 ) begin
                noize_sample_q[k] <= '0;
            end  
        end else if (enable_i) begin
            for (int k = 1; k < TAP; k=k+1 ) begin
                noize_sample_q[k] <= noize_sample_q[k-1];
            end
            // noize_sample_q[1] <= noize_sample_q[0];
            // noize_sample_q[2] <= noize_sample_q[1];
            // noize_sample_q[3] <= noize_sample_q[2];
            // noize_sample_q[TAP-1] <= noize_sample_q[3];
        end
    end

    //////////////////////////////////////////////////////////////////////////////////
    // generating filter taps and wiring
    // filter_output += (weights[k] * rolling_window_samples[k])

    logic signed [N-1:0]    accin_w [0:TAP-1];      // accumulate input for each dsp block
    logic signed [N-1:0]    product_w [0:TAP-1];  // output for each dsp block
    logic [0:TAP-1]         ov_fil_output_w, ov_weight_w;
    assign accin_w[0] = '0; // first accumulate stage = 0
    assign filter_o = product_w[TAP-1]; // last stage = filter_output
    // ov_detect monitoring
    logic                   ov_detect_all;
    assign  ov_detect_all = (| ov_fil_output_w) || (|ov_weight_w);
    generate
        for (genvar j = 0; j < TAP; j=j+1 ) begin
            mult_fp_16signed #(.N (N)) u_mult_fp_16signed(
                .clk_i       (clk_i       ),
                .enable_i    (enable_i    ),
                .data1_i     (noize_sample_q[j]),
                .data2_i     (weights_q[j]),
                .acc_i       (accin_w[j]),
                // product = (data1_i * data2_i) + acc_i
                .product_o   (product_w[j]),
                .ov_detect_o (ov_fil_output_w[j] )
            );
            if (j < TAP-1) begin
                assign accin_w[j+1] = product_w[j];
            end
        end
    endgenerate

    //////////////////////////////////////////////////////////////////////////////////
    // error calculation
    // current_error = current_desired_sample - filter_output
    logic signed [N:0]      cur_error_q;
    logic signed [N:0]      cur_error_norm_q; // mu factor (0.25)
    logic signed [N-1:0]    cur_error_norm_w; // mu factor (0.25)
    always_ff @( posedge clk_i ) begin
        if (!rstn_i) begin
            cur_error_q <= '0;
            cur_error_norm_q <= '0;
        end else begin
            cur_error_q <= ref_sample_q - filter_o;
            cur_error_norm_q <= cur_error_q >>> 7; // arithmetic shift right (keep sign)
            // cur_error_norm_q <= cur_error_q >>> 2; // arithmetic shift right (keep sign)
        end
    end
    assign cur_error_norm_w = cur_error_norm_q[N-1:0];
    //////////////////////////////////////////////////////////////////////////////////
    // weights update
    // weights[l] = weights[l] + (mu * current_error * rolling_window_samples[l])
    generate
        for (genvar j = 0; j < TAP; j=j+1 ) begin
            mult_fp_16signed #(.N (N)) w_mult_fp_16signed(
                .clk_i       (clk_i       ),
                .enable_i    (enable_i    ),
                .data1_i     (noize_sample_q[j]),
                .data2_i     (cur_error_norm_w),
                .acc_i       (weights_q[j]),
                // product = (data1_i * data2_i) + acc_i
                .product_o   (next_weights_q[j]),
                .ov_detect_o (ov_weight_w[j] )
            );
            always_ff @(posedge clk_i) begin
                if (!rstn_i) begin
                    weights_q[j] <= '0;
                end else begin
                    weights_q[j] <= next_weights_q[j];
                end
            end
        end
    endgenerate
endmodule