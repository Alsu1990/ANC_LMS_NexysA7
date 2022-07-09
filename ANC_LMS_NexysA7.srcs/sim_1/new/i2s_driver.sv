`default_nettype none

class i2s_transaction;  // i2s transaction class
    logic [31:0] i2s_packet;
    integer n; // i2s packet bit count
    //new packet generation
    function new(bit [15:0] valid_data); 
        this.i2s_packet = {valid_data,16'h00ZZ};
        this.n = 31;
        $display("T = %0t, I2S packet = 0b%b", $time, this.i2s_packet);
    endfunction 

    function logic getbit();
        getbit = this.i2s_packet[this.n];
        // $display("i2s_packet[%d] = %b",this.n,this.i2s_packet[this.n]) ;
        this.n --;
    endfunction
endclass //className

module i2s_driver (
    output logic done,
    input wire lrclk_in,
    input wire sclk_in,
    output logic s_data_out
    );
    event drv_done;
    i2s_transaction i2s_pkt;
    // File handling
    // Samples.txt contains 44100 samples for sin wave (400hz)
    int i = 0;
    int file;
    string line_data;
    
    initial begin : read_from_file
        file = $fopen("C:/Xilinx/Projects/ANC_LMS_NexysA7/Samples.txt","r");
        if (file) begin
        $display("T= %0t, Data file opened", $time);  
        end else $display("T= %0t, File not found", $time);  
    end

    always_ff @( negedge lrclk_in ) begin : fetch_data
    // Every negative edge new data packet comes
        if(!$feof(file)) begin
            $fgets(line_data, file);
            i++;
            // $display("T= %0t, sample number = %d, data = %b", $time, i, line_data.atohex());
            i2s_pkt = new(line_data.atohex());   // string to hex

            done = 0;
        end else begin
            done = 1;
            $display("T= %0t, End of file", $time);
            $fclose(file);
        end
    end

    always_ff @( posedge sclk_in ) begin : drive_bit
        if (!lrclk_in) begin
            s_data_out = i2s_pkt.getbit();
        end else s_data_out = 1'bZ;
    end

endmodule

//-----------------------------------------------------------------------------------
