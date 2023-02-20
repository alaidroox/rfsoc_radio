//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Thu Feb 16 16:06:02 2023
//Host        : Envy-16 running 64-bit major release  (build 9200)
//Command     : generate_target transmitter_bd_wrapper.bd
//Design      : transmitter_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module transmitter_bd_wrapper
   (CLK_IN1_D_clk_n,
    CLK_IN1_D_clk_p,
    enable_data_out,
    enable_tx_out,
    m_axis_data_tdata,
    m_axis_data_tlast,
    m_axis_data_tready,
    m_axis_data_tvalid,
    m_axis_op_tdata,
    m_axis_op_tvalid,
    m_axis_sim_op_1,
    m_axis_sim_op_2,
    m_axis_sim_op_3,
    m_axis_sim_op_4,
    m_axis_sim_op_5,
    m_axis_sim_op_6,
    m_axis_tdata,
    m_axis_tready,
    m_axis_tvalid,
    modulation_out,
    reset_rtl,
    s_axis_data_tdata,
    s_axis_data_tlast,
    s_axis_data_tready,
    s_axis_data_tvalid,
    s_axis_tdata,
    s_axis_tvalid);
  input CLK_IN1_D_clk_n;
  input CLK_IN1_D_clk_p;
  output [0:0]enable_data_out;
  output [0:0]enable_tx_out;
  output [7:0]m_axis_data_tdata;
  output [0:0]m_axis_data_tlast;
  input [0:0]m_axis_data_tready;
  output [0:0]m_axis_data_tvalid;
  output [33:0]m_axis_op_tdata;
  output [0:0]m_axis_op_tvalid;
  output [15:0]m_axis_sim_op_1;
  output [15:0]m_axis_sim_op_2;
  output [15:0]m_axis_sim_op_3;
  output [15:0]m_axis_sim_op_4;
  output [15:0]m_axis_sim_op_5;
  output [15:0]m_axis_sim_op_6;
  output [31:0]m_axis_tdata;
  input [0:0]m_axis_tready;
  output [0:0]m_axis_tvalid;
  output [15:0]modulation_out;
  input reset_rtl;
  input [7:0]s_axis_data_tdata;
  input [0:0]s_axis_data_tlast;
  output [0:0]s_axis_data_tready;
  input [0:0]s_axis_data_tvalid;
  input [31:0]s_axis_tdata;
  input [0:0]s_axis_tvalid;

  wire CLK_IN1_D_clk_n;
  wire CLK_IN1_D_clk_p;
  wire [0:0]enable_data_out;
  wire [0:0]enable_tx_out;
  wire [7:0]m_axis_data_tdata;
  wire [0:0]m_axis_data_tlast;
  wire [0:0]m_axis_data_tready;
  wire [0:0]m_axis_data_tvalid;
  wire [33:0]m_axis_op_tdata;
  wire [0:0]m_axis_op_tvalid;
  wire [15:0]m_axis_sim_op_1;
  wire [15:0]m_axis_sim_op_2;
  wire [15:0]m_axis_sim_op_3;
  wire [15:0]m_axis_sim_op_4;
  wire [15:0]m_axis_sim_op_5;
  wire [15:0]m_axis_sim_op_6;
  wire [31:0]m_axis_tdata;
  wire [0:0]m_axis_tready;
  wire [0:0]m_axis_tvalid;
  wire [15:0]modulation_out;
  wire reset_rtl;
  wire [7:0]s_axis_data_tdata;
  wire [0:0]s_axis_data_tlast;
  wire [0:0]s_axis_data_tready;
  wire [0:0]s_axis_data_tvalid;
  wire [31:0]s_axis_tdata;
  wire [0:0]s_axis_tvalid;

  transmitter_bd transmitter_bd_i
       (.CLK_IN1_D_clk_n(CLK_IN1_D_clk_n),
        .CLK_IN1_D_clk_p(CLK_IN1_D_clk_p),
        .enable_data_out(enable_data_out),
        .enable_tx_out(enable_tx_out),
        .m_axis_data_tdata(m_axis_data_tdata),
        .m_axis_data_tlast(m_axis_data_tlast),
        .m_axis_data_tready(m_axis_data_tready),
        .m_axis_data_tvalid(m_axis_data_tvalid),
        .m_axis_op_tdata(m_axis_op_tdata),
        .m_axis_op_tvalid(m_axis_op_tvalid),
        .m_axis_sim_op_1(m_axis_sim_op_1),
        .m_axis_sim_op_2(m_axis_sim_op_2),
        .m_axis_sim_op_3(m_axis_sim_op_3),
        .m_axis_sim_op_4(m_axis_sim_op_4),
        .m_axis_sim_op_5(m_axis_sim_op_5),
        .m_axis_sim_op_6(m_axis_sim_op_6),
        .m_axis_tdata(m_axis_tdata),
        .m_axis_tready(m_axis_tready),
        .m_axis_tvalid(m_axis_tvalid),
        .modulation_out(modulation_out),
        .reset_rtl(reset_rtl),
        .s_axis_data_tdata(s_axis_data_tdata),
        .s_axis_data_tlast(s_axis_data_tlast),
        .s_axis_data_tready(s_axis_data_tready),
        .s_axis_data_tvalid(s_axis_data_tvalid),
        .s_axis_tdata(s_axis_tdata),
        .s_axis_tvalid(s_axis_tvalid));
endmodule
