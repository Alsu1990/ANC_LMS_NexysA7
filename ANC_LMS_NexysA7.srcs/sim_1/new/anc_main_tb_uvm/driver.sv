timeunit 1ns/1ps;
//////////////////////////////////////////////////////////////////////////////////
// interface I2S
interface intf(input logic clk);    // i2s clock
    logic sel;  //device select channel. if sel 1 => data_valid on lrclk = 1,
    logic lrclk; // left/right channel frame = 32 X clk
    logic data; // shifted on rising edge, sampled on falling edge;
endinterface //intf
//////////////////////////////////////////////////////////////////////////////////
// driver 
class driver;
    virtual intf vif;   // virtual interface
    mailbox gen2driv;
    transaction trans;  // transaction object
    bit ch_select;

    function new(virtual intf vif, mailbox gen2driv, bit ch_select);
        this.vif = vif;
        this.gen2driv = gen2driv;
        this.ch_select = ch_select;
    endfunction //new()

    task main;  // get transaction item and serialize data on clk rising edge
        logic [31:0] data_out;

        forever begin
            gen2driv.get(trans);
            data_out = {trans.data, 16'h00ZZ}; // 32 bit i2s transaction
            @(posedge vif.sel, negedge vif.sel);
            for (int j = 31; j == 0 ; j-- ) begin
                
            end
            if (vif.sel) begin   // if channel select = 1, data valid on lrclk = 1;
                
            end else begin
                
            end
        end
    endtask //
endclass //driver