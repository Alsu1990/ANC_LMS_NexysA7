//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.1.1 (win64) Build 3286242 Wed Jul 28 13:10:47 MDT 2021
//Date        : Fri Jan  7 20:54:27 2022
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
    LED0,
    eth_mdio_mdc_mdc,
    eth_mdio_mdc_mdio_io,
    eth_rmii_crs_dv,
    eth_rmii_rx_er,
    eth_rmii_rxd,
    eth_rmii_tx_en,
    eth_rmii_txd);
  output AUD_PWM;
  input CLK100MHZ;
  input CPU_RESETN;
  output [0:0]JD1;
  output JD2;
  input JD3;
  output JD4;
  output LED0;
  output eth_mdio_mdc_mdc;
  inout eth_mdio_mdc_mdio_io;
  input eth_rmii_crs_dv;
  input eth_rmii_rx_er;
  input [1:0]eth_rmii_rxd;
  output eth_rmii_tx_en;
  output [1:0]eth_rmii_txd;

  wire AUD_PWM;
  wire CLK100MHZ;
  wire CPU_RESETN;
  wire [0:0]JD1;
  wire JD2;
  wire JD3;
  wire JD4;
  wire LED0;
  wire eth_mdio_mdc_mdc;
  wire eth_mdio_mdc_mdio_i;
  wire eth_mdio_mdc_mdio_io;
  wire eth_mdio_mdc_mdio_o;
  wire eth_mdio_mdc_mdio_t;
  wire eth_rmii_crs_dv;
  wire eth_rmii_rx_er;
  wire [1:0]eth_rmii_rxd;
  wire eth_rmii_tx_en;
  wire [1:0]eth_rmii_txd;

  ANC_PROJ_BD ANC_PROJ_BD_i
       (.AUD_PWM(AUD_PWM),
        .CLK100MHZ(CLK100MHZ),
        .CPU_RESETN(CPU_RESETN),
        .JD1(JD1),
        .JD2(JD2),
        .JD3(JD3),
        .JD4(JD4),
        .LED0(LED0),
        .eth_mdio_mdc_mdc(eth_mdio_mdc_mdc),
        .eth_mdio_mdc_mdio_i(eth_mdio_mdc_mdio_i),
        .eth_mdio_mdc_mdio_o(eth_mdio_mdc_mdio_o),
        .eth_mdio_mdc_mdio_t(eth_mdio_mdc_mdio_t),
        .eth_rmii_crs_dv(eth_rmii_crs_dv),
        .eth_rmii_rx_er(eth_rmii_rx_er),
        .eth_rmii_rxd(eth_rmii_rxd),
        .eth_rmii_tx_en(eth_rmii_tx_en),
        .eth_rmii_txd(eth_rmii_txd));
  IOBUF eth_mdio_mdc_mdio_iobuf
       (.I(eth_mdio_mdc_mdio_o),
        .IO(eth_mdio_mdc_mdio_io),
        .O(eth_mdio_mdc_mdio_i),
        .T(eth_mdio_mdc_mdio_t));
endmodule
