`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/08/2022 10:45:23 PM
// Design Name: top design module
// Module Name: anc_main
// Project Name: Active Noise Cancelation project
// Target Devices: Artix 7 
// Target Board: Arty A7 35t
// Tool Versions: Vivado  2021.1.1
// Description: Active Noise Cancelation module based on FLMS design
// Currently implemented: i2s reciever, audio pwm modulator, eth udp data logger
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module anc_main(
    // system clock 100 mhz
    input logic clk100_i,
    //push buttons
    //Pmod JA connector for microphone connection
    //mono
    input logic [3:0] ja
    );
endmodule
