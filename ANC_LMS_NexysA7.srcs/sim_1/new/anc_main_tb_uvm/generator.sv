timeunit 1ns/1ps;
//////////////////////////////////////////////////////////////////////////////////
// generator and transaction object for anc_main project
class transaction;
	rand bit [15:0] data;   // 16 bit i2s random data

    function void display(string name);
        $display("-------------------------");
        $display("- %s ",name);
        $display("-------------------------");
        $display("- a = %0d, b = %0d",a,b);
        $display("- c = %0d",c);
        $display("-------------------------");
  endfunction
endclass //className

class generator;
    // transaction object
    rand transaction trans;
    //declaring mailbox
    mailbox get2driv;
    //event, to indicate the end of transaction generation
    event ended;
    //number of items
    int repeat_count;

    function new (mailbox gen2driv);
        this.gen2driv = gen2driv;
    endfunction

    // main task to create and randomize the repeat_count number
    // of transaction packets and put into mailbox
    task main();
        repeat (repeat_count) begin
            trans = new();
            if(!trans.randomize()) $fatal("Gen:: trans randomization failed");
            gen2driv.put(trans);
        end
        -> ended;
    endtask //automatic
endclass //className

