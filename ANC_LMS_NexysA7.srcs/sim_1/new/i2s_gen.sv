`default_nettype none

module i2s_gen (
    input wire lrclk_in,
    input wire sclk_in,
    output logic s_data_out);

    /// 2 microphone logicisters
    logic [17:0] valid_data_18bit;
    logic [31:0] mic_1 = 0, mic_2 = 0;
    logic [4:0] i2s_trns_cnt = 0;
  
    // File handling
    // Samples.txt contains 44100 samples for sin wave (400hz)
    logic [15:0] data_line;
    integer sin_samples;
    
    initial begin: file_load
        
        
    end

    always @( posedge sclk_in ) begin : microphone
        i2s_trns_cnt <= i2s_trns_cnt - 1;
        s_data_out <= (!lrclk_in)? mic_1[i2s_trns_cnt] : mic_2[i2s_trns_cnt];
        if (!i2s_trns_cnt) begin
            if (lrclk_in) begin
                valid_data_18bit = $random;
                mic_1 = {valid_data_18bit, 14'b000000ZZZZZZZZ };
            end else begin
                valid_data_18bit = $random;
                // mic_2 = {valid_data_18bit, 14'b000000ZZZZZZZZ };                
                mic_2 = 0;                
            end
        end
    end 





endmodule