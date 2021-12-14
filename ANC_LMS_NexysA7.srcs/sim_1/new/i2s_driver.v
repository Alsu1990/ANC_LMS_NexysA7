`default_nettype none

module i2s_driver (
    input wire lrclk_in,
    input wire sclk_in,
    output wire s_data_out
    );
    // File handling
    // Samples.txt contains 44100 samples for sin wave (400hz)
    integer file;
    reg [15:0] line_of_data;
    // i2s packet
    reg [31:0] i2s_transaction = 0;
    reg[4:0] i2s_counter = 5'd31; // transaction counter
    initial begin
        file = $fopen("Samples.txt", "r");
        $display("File opened");    
    end    

    task automatic gen_and_drive;
        integer i;
        begin
            i = 0;
            while(!$feof(file)) begin
                $fgets(line_of_data,file);
                $display("Sample[%d] = %b loaded", i, line_of_data);
                
            end

        end

    endtask
endmodule