//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
//Date        : Fri Dec 24 14:40:54 2021
//Host        : AR-LAP-111 running 64-bit major release  (build 9200)
//Command     : generate_target ANC_PROJ_BD_wrapper.bd
//Design      : ANC_PROJ_BD_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ANC_PROJ_BD_wrapper
   (AUD_PWM,
    CLK100MHZ,
    CPU_RESETN,
    JD1,
    JD2,
    JD3,
    JD4,
    LED0);
  output AUD_PWM;
  input CLK100MHZ;
  input CPU_RESETN;
  output [0:0]JD1;
  output JD2;
  input JD3;
  output JD4;
  output LED0;

  wire AUD_PWM;
  wire CLK100MHZ;
  wire CPU_RESETN;
  wire [0:0]JD1;
  wire JD2;
  wire JD3;
  wire JD4;
  wire LED0;

  ANC_PROJ_BD ANC_PROJ_BD_i
       (.AUD_PWM(AUD_PWM),
        .CLK100MHZ(CLK100MHZ),
        .CPU_RESETN(CPU_RESETN),
        .JD1(JD1),
        .JD2(JD2),
        .JD3(JD3),
        .JD4(JD4),
        .LED0(LED0));
endmodule
