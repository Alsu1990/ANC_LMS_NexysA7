`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/22/2022 10:29:14 PM
// Design Name: 
// Module Name: math_tb
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
//Q15.16 format. sign bit + 15 integer bits + 16 fractional bits
//Q2.29 format. sign bit + 2 integer bits + 29 fractional bits
localparam FRAC_BITS    = 15;
localparam INT_BITS     = 0; 
localparam TOTAL_BITS   = FRAC_BITS + INT_BITS + 1;


function automatic logic signed [TOTAL_BITS-1:0] real_to_q1_15( input real num);
    integer i;
    real temp;
    
    temp = num;
    $display("input num = %f", temp);
    // sign bit
    if (temp < 0) begin
        real_to_q1_15[TOTAL_BITS-1] = 1;
        temp = 1 + temp;
    end else begin
        real_to_q1_15[TOTAL_BITS-1] = 0;
    end
    // fractional part
    for (i = 1; i<=FRAC_BITS; i=i+1) begin
        if (temp >= 1.0/(1 << i)) begin
            real_to_q1_15[FRAC_BITS-i] = 1;
            temp = temp - 1.0/(1 << i);
        end else begin
            real_to_q1_15[FRAC_BITS-i] = 0;
        end
    end
    $display("2's complement = %b",real_to_q1_15);
endfunction

// module tb_fp_16signed;
//     localparam N = 16;
//     localparam SF = 2.0 ** -FRAC_BITS;
//     localparam TEST_NUM = 10;

//     bit clk_i;
//     always #5 clk_i = ~clk_i;

//     logic                   enable_i;
//     logic signed [N-1:0]    data1_i;
//     logic signed [N-1:0]    data2_i;
//     logic signed [N-1:0]    acc_i;
//     logic signed [N-1:0]    product_o;
//     logic ov_detect_o;
    
//     mult_fp_16signed #(.N(N)) dut(
//     	.clk_i       (clk_i       ),
//         .enable_i    (enable_i    ),
//         .data1_i     (data1_i     ),
//         .data2_i     (data2_i     ),
//         .acc_i       (acc_i       ),
//         .product_o   (product_o   ),
//         .ov_detect_o (ov_detect_o )
//     );
    
//     // initial begin : monitoring_dut
//     //    $monitor("%t mult_q = %b, product_o = %b", $time, dut.mult_q, dut.product_o); 
//     // end
    
//     always @(posedge ov_detect_o) begin
//         $display("%t overflow detected!", $time);
//         $display("data1_q = %f, data2_q = %f, mult_q = %f", real'(dut.data1_q*SF), real'(dut.data2_q*SF), real'(dut.mult_q*SF));
//         $display("acc_q = %f, mult_q = %f, product_o = %f", real'(dut.acc_q*SF), real'(dut.mult_q*SF), real'(dut.product_o*SF));
//         $stop;
//     end

    
    
//     initial begin : main
//         #95;
//         for (int i=0; i<TEST_NUM ;i++ ) begin
//             enable_i = $random();
//             data1_i = $random(); 
//             data2_i = $random(); 
//             acc_i = $random();
//             #50;
//         end
//         #100;
//         $finish();
//     end
    
// endmodule

module tb;
    nlms #(
        .N   (16),
        .TAP (5))
    dut(.*);
    

    bit                                     clk_i;
    localparam PERIOD = 10;
    always #(PERIOD/2) clk_i = ~clk_i;
        
    logic                                   rstn_i;
    logic                                   enable_i;
    logic signed [dut.N-1:0]                noize_sample_i;
    logic signed [dut.N-1:0]                ref_sample_i;
    logic signed [dut.N-1:0]                filter_o;

    real                                    result_real;
    localparam                              SF = 2.0 ** -FRAC_BITS;

    bit [dut.N-1:0] data_from_text_queue [$];
    int sample_num = 0;
    // testbench
    // open txt sample file
    initial begin
        int fd;
        string line;
        fd = $fopen("D:/Projects/FPGA/ANC_LMS_NexysA7/ANC_LMS_NexysA7.srcs/sources_1/Python_Data/SamplesFixed_bin.txt", "r");   

        if (fd) begin
            $display("opened");
        end else $display("not opened");

        while (!$feof(fd)) begin
            $fgets(line,fd);
            // $display("Line: %b", line.atobin());
            data_from_text_queue.push_back($signed(line.atobin()));
        end
        $fclose(fd);

    end

    //dummy samples & dummy system
    logic [dut.N-1:0]  dummy_system [0:(dut.TAP)-1] = {
        16'b0000010000000000,   // 0.03125  = signed integer 1024  
        16'b0000100000000000,   // 0.0625   = signed integer 2048
        16'b0001000000000000,   // 0.125    = signed integer 4096
        16'b0010000000000000,   // 0.25     = signed integer 8192
        16'b0100000000000000    // 0.5      = signed integer 16384
        };

    logic signed [dut.N-1:0] diff;

    always_comb begin : blockName
        diff = filter_o - noize_sample_i;
        // diff = noize_sample_i - filter_o;
    end

    initial begin
        rstn_i = 0; noize_sample_i = '0; ref_sample_i = '0; enable_i = 0;
        repeat (10) @(posedge clk_i);
        rstn_i = 1;
        repeat (10) @(posedge clk_i);
        // for (int i = 0 ; i < data_from_text_queue.size() ; i++ ) begin
        for (int i = 0 ; i < 10000; i++ ) begin
            #(PERIOD*1);
            noize_sample_i = data_from_text_queue[i];
            ref_sample_i = data_from_text_queue[i];
            sample_num ++;
            // ref_sample_i = '0;
            // for (int j = 0; j < dut.TAP; j++) begin
            //     if ((i-j) >= 0) begin
            //         ref_sample_i += (data_from_text_queue[i-j] * dummy_system[j]) >> (dut.N-2);
            //         $display("ref_sample_i = %d", ref_sample_i);
            //     end
            // end
            // ref_sample_i = data_from_text_queue[i] >> 2;
            enable_i = 1;
            #(PERIOD*1);
            enable_i = 0;
            #(PERIOD*100);
            enable_i = 0;
        end
        repeat (10) @(posedge clk_i);
        enable_i = 0;
        $finish();
    end

endmodule 
