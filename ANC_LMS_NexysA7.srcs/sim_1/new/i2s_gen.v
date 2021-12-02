module i2s_gen (
    input lrclk_in,
    input sclk_in,
    output s_data_out);

    /// 2 microphone registers
    reg [17:0] valid_data_18bit;
    reg [31:0] mic_1, mic_2;
    reg [4:0] i2s_trns_cnt = 0;

    always @(posedge sclk_in) begin
        i2s_trns_cnt <= i2s_trns_cnt - 1;
        if (!i2s_trns_cnt) begin
            if (lrclk_in) begin
                valid_data_18bit = $urandom;
                mic_1 = {valid_data_18bit, 14'b000000ZZZZZZZZ };
            end else begin
                valid_data_18bit = $urandom;
                mic_2 = {valid_data_18bit, 14'b000000ZZZZZZZZ };                
            end
        end
    end

assign s_data_out =  (lrclk_in)? mic_1[i2s_trns_cnt] : mic_2[i2s_trns_cnt];

endmodule