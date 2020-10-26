//Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2019.2 (lin64) Build 2678556 Sun Sep 29 18:40:56 MDT 2019
//Date        : Tue Oct  1 13:52:15 2019
//Host        : xhdlc190408 running 64-bit Red Hat Enterprise Linux Workstation release 7.4 (Maipo)
//Command     : generate_target bd_wrapper.bd
//Design      : bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module zcu106_llp2_nv12_wrapper
   (DRU_CLK_clk_n,
    DRU_CLK_clk_p,
    HDMI_CTRL_IIC_scl_io,
    HDMI_CTRL_IIC_sda_io,
    HDMI_RX_CLK_N,
    HDMI_RX_CLK_P,
    HDMI_RX_DAT_N,
    HDMI_RX_DAT_P,
    HDMI_TX_CLK_N,
    HDMI_TX_CLK_P,
    HDMI_TX_DAT_N,
    HDMI_TX_DAT_P,
    LED0,
    LED1,
    LED2,
    LED3,
    LED4,
    LED5,
    LED6,
    LED7,
    RX_DDC_scl_io,
    RX_DDC_sda_io,
    RX_DET,
    RX_HPD,
    RX_REFCLK_N,
    RX_REFCLK_P,
    SI5319_LOL,
    SI5319_RST,
    TX_DDC_scl_io,
    TX_DDC_sda_io,
    TX_EN,
    TX_HPD,
    TX_REFCLK_N,
    TX_REFCLK_P,
    sensor_iic_scl_io,
    sensor_iic_sda_io,
    si570_user_clk_n,
    si570_user_clk_p);
  input [0:0]DRU_CLK_clk_n;
  input [0:0]DRU_CLK_clk_p;
  inout HDMI_CTRL_IIC_scl_io;
  inout HDMI_CTRL_IIC_sda_io;
  input HDMI_RX_CLK_N;
  input HDMI_RX_CLK_P;
  input [2:0]HDMI_RX_DAT_N;
  input [2:0]HDMI_RX_DAT_P;
  output HDMI_TX_CLK_N;
  output HDMI_TX_CLK_P;
  output [2:0]HDMI_TX_DAT_N;
  output [2:0]HDMI_TX_DAT_P;
  output LED0;
  output [0:0]LED1;
  output [0:0]LED2;
  output [0:0]LED3;
  output [0:0]LED4;
  output [0:0]LED5;
  output LED6;
  output LED7;
  inout RX_DDC_scl_io;
  inout RX_DDC_sda_io;
  input RX_DET;
  output [0:0]RX_HPD;
  output RX_REFCLK_N;
  output RX_REFCLK_P;
  input SI5319_LOL;
  output [0:0]SI5319_RST;
  inout TX_DDC_scl_io;
  inout TX_DDC_sda_io;
  output [0:0]TX_EN;
  input TX_HPD;
  input TX_REFCLK_N;
  input TX_REFCLK_P;
  inout sensor_iic_scl_io;
  inout sensor_iic_sda_io;
  input si570_user_clk_n;
  input si570_user_clk_p;

  wire [0:0]DRU_CLK_clk_n;
  wire [0:0]DRU_CLK_clk_p;
  wire HDMI_CTRL_IIC_scl_i;
  wire HDMI_CTRL_IIC_scl_io;
  wire HDMI_CTRL_IIC_scl_o;
  wire HDMI_CTRL_IIC_scl_t;
  wire HDMI_CTRL_IIC_sda_i;
  wire HDMI_CTRL_IIC_sda_io;
  wire HDMI_CTRL_IIC_sda_o;
  wire HDMI_CTRL_IIC_sda_t;
  wire HDMI_RX_CLK_N;
  wire HDMI_RX_CLK_P;
  wire [2:0]HDMI_RX_DAT_N;
  wire [2:0]HDMI_RX_DAT_P;
  wire HDMI_TX_CLK_N;
  wire HDMI_TX_CLK_P;
  wire [2:0]HDMI_TX_DAT_N;
  wire [2:0]HDMI_TX_DAT_P;
  wire LED0;
  wire [0:0]LED1;
  wire [0:0]LED2;
  wire [0:0]LED3;
  wire [0:0]LED4;
  wire [0:0]LED5;
  wire LED6;
  wire LED7;
  wire RX_DDC_scl_i;
  wire RX_DDC_scl_io;
  wire RX_DDC_scl_o;
  wire RX_DDC_scl_t;
  wire RX_DDC_sda_i;
  wire RX_DDC_sda_io;
  wire RX_DDC_sda_o;
  wire RX_DDC_sda_t;
  wire RX_DET;
  wire [0:0]RX_HPD;
  wire RX_REFCLK_N;
  wire RX_REFCLK_P;
  wire SI5319_LOL;
  wire [0:0]SI5319_RST;
  wire TX_DDC_scl_i;
  wire TX_DDC_scl_io;
  wire TX_DDC_scl_o;
  wire TX_DDC_scl_t;
  wire TX_DDC_sda_i;
  wire TX_DDC_sda_io;
  wire TX_DDC_sda_o;
  wire TX_DDC_sda_t;
  wire [0:0]TX_EN;
  wire TX_HPD;
  wire TX_REFCLK_N;
  wire TX_REFCLK_P;
  wire sensor_iic_scl_i;
  wire sensor_iic_scl_io;
  wire sensor_iic_scl_o;
  wire sensor_iic_scl_t;
  wire sensor_iic_sda_i;
  wire sensor_iic_sda_io;
  wire sensor_iic_sda_o;
  wire sensor_iic_sda_t;
  wire si570_user_clk_n;
  wire si570_user_clk_p;

  IOBUF HDMI_CTRL_IIC_scl_iobuf
       (.I(HDMI_CTRL_IIC_scl_o),
        .IO(HDMI_CTRL_IIC_scl_io),
        .O(HDMI_CTRL_IIC_scl_i),
        .T(HDMI_CTRL_IIC_scl_t));
  IOBUF HDMI_CTRL_IIC_sda_iobuf
       (.I(HDMI_CTRL_IIC_sda_o),
        .IO(HDMI_CTRL_IIC_sda_io),
        .O(HDMI_CTRL_IIC_sda_i),
        .T(HDMI_CTRL_IIC_sda_t));
  IOBUF RX_DDC_scl_iobuf
       (.I(RX_DDC_scl_o),
        .IO(RX_DDC_scl_io),
        .O(RX_DDC_scl_i),
        .T(RX_DDC_scl_t));
  IOBUF RX_DDC_sda_iobuf
       (.I(RX_DDC_sda_o),
        .IO(RX_DDC_sda_io),
        .O(RX_DDC_sda_i),
        .T(RX_DDC_sda_t));
  IOBUF TX_DDC_scl_iobuf
       (.I(TX_DDC_scl_o),
        .IO(TX_DDC_scl_io),
        .O(TX_DDC_scl_i),
        .T(TX_DDC_scl_t));
  IOBUF TX_DDC_sda_iobuf
       (.I(TX_DDC_sda_o),
        .IO(TX_DDC_sda_io),
        .O(TX_DDC_sda_i),
        .T(TX_DDC_sda_t));
  bd bd_i
       (.DRU_CLK_clk_n(DRU_CLK_clk_n),
        .DRU_CLK_clk_p(DRU_CLK_clk_p),
        .HDMI_CTRL_IIC_scl_i(HDMI_CTRL_IIC_scl_i),
        .HDMI_CTRL_IIC_scl_o(HDMI_CTRL_IIC_scl_o),
        .HDMI_CTRL_IIC_scl_t(HDMI_CTRL_IIC_scl_t),
        .HDMI_CTRL_IIC_sda_i(HDMI_CTRL_IIC_sda_i),
        .HDMI_CTRL_IIC_sda_o(HDMI_CTRL_IIC_sda_o),
        .HDMI_CTRL_IIC_sda_t(HDMI_CTRL_IIC_sda_t),
        .HDMI_RX_CLK_N(HDMI_RX_CLK_N),
        .HDMI_RX_CLK_P(HDMI_RX_CLK_P),
        .HDMI_RX_DAT_N(HDMI_RX_DAT_N),
        .HDMI_RX_DAT_P(HDMI_RX_DAT_P),
        .HDMI_TX_CLK_N(HDMI_TX_CLK_N),
        .HDMI_TX_CLK_P(HDMI_TX_CLK_P),
        .HDMI_TX_DAT_N(HDMI_TX_DAT_N),
        .HDMI_TX_DAT_P(HDMI_TX_DAT_P),
        .LED0(LED0),
        .LED1(LED1),
        .LED2(LED2),
        .LED3(LED3),
        .LED4(LED4),
        .LED5(LED5),
        .LED6(LED6),
        .LED7(LED7),
        .RX_DDC_scl_i(RX_DDC_scl_i),
        .RX_DDC_scl_o(RX_DDC_scl_o),
        .RX_DDC_scl_t(RX_DDC_scl_t),
        .RX_DDC_sda_i(RX_DDC_sda_i),
        .RX_DDC_sda_o(RX_DDC_sda_o),
        .RX_DDC_sda_t(RX_DDC_sda_t),
        .RX_DET(RX_DET),
        .RX_HPD(RX_HPD),
        .RX_REFCLK_N(RX_REFCLK_N),
        .RX_REFCLK_P(RX_REFCLK_P),
        .SI5319_LOL(SI5319_LOL),
        .SI5319_RST(SI5319_RST),
        .TX_DDC_scl_i(TX_DDC_scl_i),
        .TX_DDC_scl_o(TX_DDC_scl_o),
        .TX_DDC_scl_t(TX_DDC_scl_t),
        .TX_DDC_sda_i(TX_DDC_sda_i),
        .TX_DDC_sda_o(TX_DDC_sda_o),
        .TX_DDC_sda_t(TX_DDC_sda_t),
        .TX_EN(TX_EN),
        .TX_HPD(TX_HPD),
        .TX_REFCLK_N(TX_REFCLK_N),
        .TX_REFCLK_P(TX_REFCLK_P),
        .sensor_iic_scl_i(sensor_iic_scl_i),
        .sensor_iic_scl_o(sensor_iic_scl_o),
        .sensor_iic_scl_t(sensor_iic_scl_t),
        .sensor_iic_sda_i(sensor_iic_sda_i),
        .sensor_iic_sda_o(sensor_iic_sda_o),
        .sensor_iic_sda_t(sensor_iic_sda_t),
        .si570_user_clk_n(si570_user_clk_n),
        .si570_user_clk_p(si570_user_clk_p));
  IOBUF sensor_iic_scl_iobuf
       (.I(sensor_iic_scl_o),
        .IO(sensor_iic_scl_io),
        .O(sensor_iic_scl_i),
        .T(sensor_iic_scl_t));
  IOBUF sensor_iic_sda_iobuf
       (.I(sensor_iic_sda_o),
        .IO(sensor_iic_sda_io),
        .O(sensor_iic_sda_i),
        .T(sensor_iic_sda_t));
endmodule
