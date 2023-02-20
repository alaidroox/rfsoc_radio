//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1 (win64) Build 3526262 Mon Apr 18 15:48:16 MDT 2022
//Date        : Thu Feb 16 16:06:02 2023
//Host        : Envy-16 running 64-bit major release  (build 9200)
//Command     : generate_target transmitter_bd.bd
//Design      : transmitter_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module microblaze_1_local_memory_imp_15CNWT8
   (DLMB_abus,
    DLMB_addrstrobe,
    DLMB_be,
    DLMB_ce,
    DLMB_readdbus,
    DLMB_readstrobe,
    DLMB_ready,
    DLMB_ue,
    DLMB_wait,
    DLMB_writedbus,
    DLMB_writestrobe,
    ILMB_abus,
    ILMB_addrstrobe,
    ILMB_ce,
    ILMB_readdbus,
    ILMB_readstrobe,
    ILMB_ready,
    ILMB_ue,
    ILMB_wait,
    LMB_Clk,
    SYS_Rst);
  input [0:31]DLMB_abus;
  input DLMB_addrstrobe;
  input [0:3]DLMB_be;
  output DLMB_ce;
  output [0:31]DLMB_readdbus;
  input DLMB_readstrobe;
  output DLMB_ready;
  output DLMB_ue;
  output DLMB_wait;
  input [0:31]DLMB_writedbus;
  input DLMB_writestrobe;
  input [0:31]ILMB_abus;
  input ILMB_addrstrobe;
  output ILMB_ce;
  output [0:31]ILMB_readdbus;
  input ILMB_readstrobe;
  output ILMB_ready;
  output ILMB_ue;
  output ILMB_wait;
  input LMB_Clk;
  input SYS_Rst;

  wire SYS_Rst_1;
  wire microblaze_1_Clk;
  wire [0:31]microblaze_1_dlmb_ABUS;
  wire microblaze_1_dlmb_ADDRSTROBE;
  wire [0:3]microblaze_1_dlmb_BE;
  wire microblaze_1_dlmb_CE;
  wire [0:31]microblaze_1_dlmb_READDBUS;
  wire microblaze_1_dlmb_READSTROBE;
  wire microblaze_1_dlmb_READY;
  wire microblaze_1_dlmb_UE;
  wire microblaze_1_dlmb_WAIT;
  wire [0:31]microblaze_1_dlmb_WRITEDBUS;
  wire microblaze_1_dlmb_WRITESTROBE;
  wire [0:31]microblaze_1_dlmb_bus_ABUS;
  wire microblaze_1_dlmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_1_dlmb_bus_BE;
  wire microblaze_1_dlmb_bus_CE;
  wire [0:31]microblaze_1_dlmb_bus_READDBUS;
  wire microblaze_1_dlmb_bus_READSTROBE;
  wire microblaze_1_dlmb_bus_READY;
  wire microblaze_1_dlmb_bus_UE;
  wire microblaze_1_dlmb_bus_WAIT;
  wire [0:31]microblaze_1_dlmb_bus_WRITEDBUS;
  wire microblaze_1_dlmb_bus_WRITESTROBE;
  wire [0:31]microblaze_1_dlmb_cntlr_ADDR;
  wire microblaze_1_dlmb_cntlr_CLK;
  wire [0:31]microblaze_1_dlmb_cntlr_DIN;
  wire [31:0]microblaze_1_dlmb_cntlr_DOUT;
  wire microblaze_1_dlmb_cntlr_EN;
  wire microblaze_1_dlmb_cntlr_RST;
  wire [0:3]microblaze_1_dlmb_cntlr_WE;
  wire [0:31]microblaze_1_ilmb_ABUS;
  wire microblaze_1_ilmb_ADDRSTROBE;
  wire microblaze_1_ilmb_CE;
  wire [0:31]microblaze_1_ilmb_READDBUS;
  wire microblaze_1_ilmb_READSTROBE;
  wire microblaze_1_ilmb_READY;
  wire microblaze_1_ilmb_UE;
  wire microblaze_1_ilmb_WAIT;
  wire [0:31]microblaze_1_ilmb_bus_ABUS;
  wire microblaze_1_ilmb_bus_ADDRSTROBE;
  wire [0:3]microblaze_1_ilmb_bus_BE;
  wire microblaze_1_ilmb_bus_CE;
  wire [0:31]microblaze_1_ilmb_bus_READDBUS;
  wire microblaze_1_ilmb_bus_READSTROBE;
  wire microblaze_1_ilmb_bus_READY;
  wire microblaze_1_ilmb_bus_UE;
  wire microblaze_1_ilmb_bus_WAIT;
  wire [0:31]microblaze_1_ilmb_bus_WRITEDBUS;
  wire microblaze_1_ilmb_bus_WRITESTROBE;
  wire [0:31]microblaze_1_ilmb_cntlr_ADDR;
  wire microblaze_1_ilmb_cntlr_CLK;
  wire [0:31]microblaze_1_ilmb_cntlr_DIN;
  wire [31:0]microblaze_1_ilmb_cntlr_DOUT;
  wire microblaze_1_ilmb_cntlr_EN;
  wire microblaze_1_ilmb_cntlr_RST;
  wire [0:3]microblaze_1_ilmb_cntlr_WE;

  assign DLMB_ce = microblaze_1_dlmb_CE;
  assign DLMB_readdbus[0:31] = microblaze_1_dlmb_READDBUS;
  assign DLMB_ready = microblaze_1_dlmb_READY;
  assign DLMB_ue = microblaze_1_dlmb_UE;
  assign DLMB_wait = microblaze_1_dlmb_WAIT;
  assign ILMB_ce = microblaze_1_ilmb_CE;
  assign ILMB_readdbus[0:31] = microblaze_1_ilmb_READDBUS;
  assign ILMB_ready = microblaze_1_ilmb_READY;
  assign ILMB_ue = microblaze_1_ilmb_UE;
  assign ILMB_wait = microblaze_1_ilmb_WAIT;
  assign SYS_Rst_1 = SYS_Rst;
  assign microblaze_1_Clk = LMB_Clk;
  assign microblaze_1_dlmb_ABUS = DLMB_abus[0:31];
  assign microblaze_1_dlmb_ADDRSTROBE = DLMB_addrstrobe;
  assign microblaze_1_dlmb_BE = DLMB_be[0:3];
  assign microblaze_1_dlmb_READSTROBE = DLMB_readstrobe;
  assign microblaze_1_dlmb_WRITEDBUS = DLMB_writedbus[0:31];
  assign microblaze_1_dlmb_WRITESTROBE = DLMB_writestrobe;
  assign microblaze_1_ilmb_ABUS = ILMB_abus[0:31];
  assign microblaze_1_ilmb_ADDRSTROBE = ILMB_addrstrobe;
  assign microblaze_1_ilmb_READSTROBE = ILMB_readstrobe;
  (* BMM_INFO_ADDRESS_SPACE = "byte  0x00000000 32 > transmitter_bd microblaze_1_local_memory/lmb_bram" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  transmitter_bd_dlmb_bram_if_cntlr_0 dlmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_1_dlmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_1_dlmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_1_dlmb_cntlr_DOUT[31],microblaze_1_dlmb_cntlr_DOUT[30],microblaze_1_dlmb_cntlr_DOUT[29],microblaze_1_dlmb_cntlr_DOUT[28],microblaze_1_dlmb_cntlr_DOUT[27],microblaze_1_dlmb_cntlr_DOUT[26],microblaze_1_dlmb_cntlr_DOUT[25],microblaze_1_dlmb_cntlr_DOUT[24],microblaze_1_dlmb_cntlr_DOUT[23],microblaze_1_dlmb_cntlr_DOUT[22],microblaze_1_dlmb_cntlr_DOUT[21],microblaze_1_dlmb_cntlr_DOUT[20],microblaze_1_dlmb_cntlr_DOUT[19],microblaze_1_dlmb_cntlr_DOUT[18],microblaze_1_dlmb_cntlr_DOUT[17],microblaze_1_dlmb_cntlr_DOUT[16],microblaze_1_dlmb_cntlr_DOUT[15],microblaze_1_dlmb_cntlr_DOUT[14],microblaze_1_dlmb_cntlr_DOUT[13],microblaze_1_dlmb_cntlr_DOUT[12],microblaze_1_dlmb_cntlr_DOUT[11],microblaze_1_dlmb_cntlr_DOUT[10],microblaze_1_dlmb_cntlr_DOUT[9],microblaze_1_dlmb_cntlr_DOUT[8],microblaze_1_dlmb_cntlr_DOUT[7],microblaze_1_dlmb_cntlr_DOUT[6],microblaze_1_dlmb_cntlr_DOUT[5],microblaze_1_dlmb_cntlr_DOUT[4],microblaze_1_dlmb_cntlr_DOUT[3],microblaze_1_dlmb_cntlr_DOUT[2],microblaze_1_dlmb_cntlr_DOUT[1],microblaze_1_dlmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_1_dlmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_1_dlmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_1_dlmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_1_dlmb_cntlr_WE),
        .LMB_ABus(microblaze_1_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_dlmb_bus_BE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadStrobe(microblaze_1_dlmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_1_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_dlmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_1_dlmb_bus_CE),
        .Sl_DBus(microblaze_1_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_dlmb_bus_READY),
        .Sl_UE(microblaze_1_dlmb_bus_UE),
        .Sl_Wait(microblaze_1_dlmb_bus_WAIT));
  transmitter_bd_dlmb_v10_0 dlmb_v10
       (.LMB_ABus(microblaze_1_dlmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_dlmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_dlmb_bus_BE),
        .LMB_CE(microblaze_1_dlmb_CE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadDBus(microblaze_1_dlmb_READDBUS),
        .LMB_ReadStrobe(microblaze_1_dlmb_bus_READSTROBE),
        .LMB_Ready(microblaze_1_dlmb_READY),
        .LMB_UE(microblaze_1_dlmb_UE),
        .LMB_Wait(microblaze_1_dlmb_WAIT),
        .LMB_WriteDBus(microblaze_1_dlmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_dlmb_bus_WRITESTROBE),
        .M_ABus(microblaze_1_dlmb_ABUS),
        .M_AddrStrobe(microblaze_1_dlmb_ADDRSTROBE),
        .M_BE(microblaze_1_dlmb_BE),
        .M_DBus(microblaze_1_dlmb_WRITEDBUS),
        .M_ReadStrobe(microblaze_1_dlmb_READSTROBE),
        .M_WriteStrobe(microblaze_1_dlmb_WRITESTROBE),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_1_dlmb_bus_CE),
        .Sl_DBus(microblaze_1_dlmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_dlmb_bus_READY),
        .Sl_UE(microblaze_1_dlmb_bus_UE),
        .Sl_Wait(microblaze_1_dlmb_bus_WAIT));
  transmitter_bd_ilmb_bram_if_cntlr_0 ilmb_bram_if_cntlr
       (.BRAM_Addr_A(microblaze_1_ilmb_cntlr_ADDR),
        .BRAM_Clk_A(microblaze_1_ilmb_cntlr_CLK),
        .BRAM_Din_A({microblaze_1_ilmb_cntlr_DOUT[31],microblaze_1_ilmb_cntlr_DOUT[30],microblaze_1_ilmb_cntlr_DOUT[29],microblaze_1_ilmb_cntlr_DOUT[28],microblaze_1_ilmb_cntlr_DOUT[27],microblaze_1_ilmb_cntlr_DOUT[26],microblaze_1_ilmb_cntlr_DOUT[25],microblaze_1_ilmb_cntlr_DOUT[24],microblaze_1_ilmb_cntlr_DOUT[23],microblaze_1_ilmb_cntlr_DOUT[22],microblaze_1_ilmb_cntlr_DOUT[21],microblaze_1_ilmb_cntlr_DOUT[20],microblaze_1_ilmb_cntlr_DOUT[19],microblaze_1_ilmb_cntlr_DOUT[18],microblaze_1_ilmb_cntlr_DOUT[17],microblaze_1_ilmb_cntlr_DOUT[16],microblaze_1_ilmb_cntlr_DOUT[15],microblaze_1_ilmb_cntlr_DOUT[14],microblaze_1_ilmb_cntlr_DOUT[13],microblaze_1_ilmb_cntlr_DOUT[12],microblaze_1_ilmb_cntlr_DOUT[11],microblaze_1_ilmb_cntlr_DOUT[10],microblaze_1_ilmb_cntlr_DOUT[9],microblaze_1_ilmb_cntlr_DOUT[8],microblaze_1_ilmb_cntlr_DOUT[7],microblaze_1_ilmb_cntlr_DOUT[6],microblaze_1_ilmb_cntlr_DOUT[5],microblaze_1_ilmb_cntlr_DOUT[4],microblaze_1_ilmb_cntlr_DOUT[3],microblaze_1_ilmb_cntlr_DOUT[2],microblaze_1_ilmb_cntlr_DOUT[1],microblaze_1_ilmb_cntlr_DOUT[0]}),
        .BRAM_Dout_A(microblaze_1_ilmb_cntlr_DIN),
        .BRAM_EN_A(microblaze_1_ilmb_cntlr_EN),
        .BRAM_Rst_A(microblaze_1_ilmb_cntlr_RST),
        .BRAM_WEN_A(microblaze_1_ilmb_cntlr_WE),
        .LMB_ABus(microblaze_1_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_ilmb_bus_BE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadStrobe(microblaze_1_ilmb_bus_READSTROBE),
        .LMB_Rst(SYS_Rst_1),
        .LMB_WriteDBus(microblaze_1_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_ilmb_bus_WRITESTROBE),
        .Sl_CE(microblaze_1_ilmb_bus_CE),
        .Sl_DBus(microblaze_1_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_ilmb_bus_READY),
        .Sl_UE(microblaze_1_ilmb_bus_UE),
        .Sl_Wait(microblaze_1_ilmb_bus_WAIT));
  transmitter_bd_ilmb_v10_0 ilmb_v10
       (.LMB_ABus(microblaze_1_ilmb_bus_ABUS),
        .LMB_AddrStrobe(microblaze_1_ilmb_bus_ADDRSTROBE),
        .LMB_BE(microblaze_1_ilmb_bus_BE),
        .LMB_CE(microblaze_1_ilmb_CE),
        .LMB_Clk(microblaze_1_Clk),
        .LMB_ReadDBus(microblaze_1_ilmb_READDBUS),
        .LMB_ReadStrobe(microblaze_1_ilmb_bus_READSTROBE),
        .LMB_Ready(microblaze_1_ilmb_READY),
        .LMB_UE(microblaze_1_ilmb_UE),
        .LMB_Wait(microblaze_1_ilmb_WAIT),
        .LMB_WriteDBus(microblaze_1_ilmb_bus_WRITEDBUS),
        .LMB_WriteStrobe(microblaze_1_ilmb_bus_WRITESTROBE),
        .M_ABus(microblaze_1_ilmb_ABUS),
        .M_AddrStrobe(microblaze_1_ilmb_ADDRSTROBE),
        .M_BE({1'b0,1'b0,1'b0,1'b0}),
        .M_DBus({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_ReadStrobe(microblaze_1_ilmb_READSTROBE),
        .M_WriteStrobe(1'b0),
        .SYS_Rst(SYS_Rst_1),
        .Sl_CE(microblaze_1_ilmb_bus_CE),
        .Sl_DBus(microblaze_1_ilmb_bus_READDBUS),
        .Sl_Ready(microblaze_1_ilmb_bus_READY),
        .Sl_UE(microblaze_1_ilmb_bus_UE),
        .Sl_Wait(microblaze_1_ilmb_bus_WAIT));
  transmitter_bd_lmb_bram_0 lmb_bram
       (.addra({microblaze_1_dlmb_cntlr_ADDR[0],microblaze_1_dlmb_cntlr_ADDR[1],microblaze_1_dlmb_cntlr_ADDR[2],microblaze_1_dlmb_cntlr_ADDR[3],microblaze_1_dlmb_cntlr_ADDR[4],microblaze_1_dlmb_cntlr_ADDR[5],microblaze_1_dlmb_cntlr_ADDR[6],microblaze_1_dlmb_cntlr_ADDR[7],microblaze_1_dlmb_cntlr_ADDR[8],microblaze_1_dlmb_cntlr_ADDR[9],microblaze_1_dlmb_cntlr_ADDR[10],microblaze_1_dlmb_cntlr_ADDR[11],microblaze_1_dlmb_cntlr_ADDR[12],microblaze_1_dlmb_cntlr_ADDR[13],microblaze_1_dlmb_cntlr_ADDR[14],microblaze_1_dlmb_cntlr_ADDR[15],microblaze_1_dlmb_cntlr_ADDR[16],microblaze_1_dlmb_cntlr_ADDR[17],microblaze_1_dlmb_cntlr_ADDR[18],microblaze_1_dlmb_cntlr_ADDR[19],microblaze_1_dlmb_cntlr_ADDR[20],microblaze_1_dlmb_cntlr_ADDR[21],microblaze_1_dlmb_cntlr_ADDR[22],microblaze_1_dlmb_cntlr_ADDR[23],microblaze_1_dlmb_cntlr_ADDR[24],microblaze_1_dlmb_cntlr_ADDR[25],microblaze_1_dlmb_cntlr_ADDR[26],microblaze_1_dlmb_cntlr_ADDR[27],microblaze_1_dlmb_cntlr_ADDR[28],microblaze_1_dlmb_cntlr_ADDR[29],microblaze_1_dlmb_cntlr_ADDR[30],microblaze_1_dlmb_cntlr_ADDR[31]}),
        .addrb({microblaze_1_ilmb_cntlr_ADDR[0],microblaze_1_ilmb_cntlr_ADDR[1],microblaze_1_ilmb_cntlr_ADDR[2],microblaze_1_ilmb_cntlr_ADDR[3],microblaze_1_ilmb_cntlr_ADDR[4],microblaze_1_ilmb_cntlr_ADDR[5],microblaze_1_ilmb_cntlr_ADDR[6],microblaze_1_ilmb_cntlr_ADDR[7],microblaze_1_ilmb_cntlr_ADDR[8],microblaze_1_ilmb_cntlr_ADDR[9],microblaze_1_ilmb_cntlr_ADDR[10],microblaze_1_ilmb_cntlr_ADDR[11],microblaze_1_ilmb_cntlr_ADDR[12],microblaze_1_ilmb_cntlr_ADDR[13],microblaze_1_ilmb_cntlr_ADDR[14],microblaze_1_ilmb_cntlr_ADDR[15],microblaze_1_ilmb_cntlr_ADDR[16],microblaze_1_ilmb_cntlr_ADDR[17],microblaze_1_ilmb_cntlr_ADDR[18],microblaze_1_ilmb_cntlr_ADDR[19],microblaze_1_ilmb_cntlr_ADDR[20],microblaze_1_ilmb_cntlr_ADDR[21],microblaze_1_ilmb_cntlr_ADDR[22],microblaze_1_ilmb_cntlr_ADDR[23],microblaze_1_ilmb_cntlr_ADDR[24],microblaze_1_ilmb_cntlr_ADDR[25],microblaze_1_ilmb_cntlr_ADDR[26],microblaze_1_ilmb_cntlr_ADDR[27],microblaze_1_ilmb_cntlr_ADDR[28],microblaze_1_ilmb_cntlr_ADDR[29],microblaze_1_ilmb_cntlr_ADDR[30],microblaze_1_ilmb_cntlr_ADDR[31]}),
        .clka(microblaze_1_dlmb_cntlr_CLK),
        .clkb(microblaze_1_ilmb_cntlr_CLK),
        .dina({microblaze_1_dlmb_cntlr_DIN[0],microblaze_1_dlmb_cntlr_DIN[1],microblaze_1_dlmb_cntlr_DIN[2],microblaze_1_dlmb_cntlr_DIN[3],microblaze_1_dlmb_cntlr_DIN[4],microblaze_1_dlmb_cntlr_DIN[5],microblaze_1_dlmb_cntlr_DIN[6],microblaze_1_dlmb_cntlr_DIN[7],microblaze_1_dlmb_cntlr_DIN[8],microblaze_1_dlmb_cntlr_DIN[9],microblaze_1_dlmb_cntlr_DIN[10],microblaze_1_dlmb_cntlr_DIN[11],microblaze_1_dlmb_cntlr_DIN[12],microblaze_1_dlmb_cntlr_DIN[13],microblaze_1_dlmb_cntlr_DIN[14],microblaze_1_dlmb_cntlr_DIN[15],microblaze_1_dlmb_cntlr_DIN[16],microblaze_1_dlmb_cntlr_DIN[17],microblaze_1_dlmb_cntlr_DIN[18],microblaze_1_dlmb_cntlr_DIN[19],microblaze_1_dlmb_cntlr_DIN[20],microblaze_1_dlmb_cntlr_DIN[21],microblaze_1_dlmb_cntlr_DIN[22],microblaze_1_dlmb_cntlr_DIN[23],microblaze_1_dlmb_cntlr_DIN[24],microblaze_1_dlmb_cntlr_DIN[25],microblaze_1_dlmb_cntlr_DIN[26],microblaze_1_dlmb_cntlr_DIN[27],microblaze_1_dlmb_cntlr_DIN[28],microblaze_1_dlmb_cntlr_DIN[29],microblaze_1_dlmb_cntlr_DIN[30],microblaze_1_dlmb_cntlr_DIN[31]}),
        .dinb({microblaze_1_ilmb_cntlr_DIN[0],microblaze_1_ilmb_cntlr_DIN[1],microblaze_1_ilmb_cntlr_DIN[2],microblaze_1_ilmb_cntlr_DIN[3],microblaze_1_ilmb_cntlr_DIN[4],microblaze_1_ilmb_cntlr_DIN[5],microblaze_1_ilmb_cntlr_DIN[6],microblaze_1_ilmb_cntlr_DIN[7],microblaze_1_ilmb_cntlr_DIN[8],microblaze_1_ilmb_cntlr_DIN[9],microblaze_1_ilmb_cntlr_DIN[10],microblaze_1_ilmb_cntlr_DIN[11],microblaze_1_ilmb_cntlr_DIN[12],microblaze_1_ilmb_cntlr_DIN[13],microblaze_1_ilmb_cntlr_DIN[14],microblaze_1_ilmb_cntlr_DIN[15],microblaze_1_ilmb_cntlr_DIN[16],microblaze_1_ilmb_cntlr_DIN[17],microblaze_1_ilmb_cntlr_DIN[18],microblaze_1_ilmb_cntlr_DIN[19],microblaze_1_ilmb_cntlr_DIN[20],microblaze_1_ilmb_cntlr_DIN[21],microblaze_1_ilmb_cntlr_DIN[22],microblaze_1_ilmb_cntlr_DIN[23],microblaze_1_ilmb_cntlr_DIN[24],microblaze_1_ilmb_cntlr_DIN[25],microblaze_1_ilmb_cntlr_DIN[26],microblaze_1_ilmb_cntlr_DIN[27],microblaze_1_ilmb_cntlr_DIN[28],microblaze_1_ilmb_cntlr_DIN[29],microblaze_1_ilmb_cntlr_DIN[30],microblaze_1_ilmb_cntlr_DIN[31]}),
        .douta(microblaze_1_dlmb_cntlr_DOUT),
        .doutb(microblaze_1_ilmb_cntlr_DOUT),
        .ena(microblaze_1_dlmb_cntlr_EN),
        .enb(microblaze_1_ilmb_cntlr_EN),
        .rsta(microblaze_1_dlmb_cntlr_RST),
        .rstb(microblaze_1_ilmb_cntlr_RST),
        .wea({microblaze_1_dlmb_cntlr_WE[0],microblaze_1_dlmb_cntlr_WE[1],microblaze_1_dlmb_cntlr_WE[2],microblaze_1_dlmb_cntlr_WE[3]}),
        .web({microblaze_1_ilmb_cntlr_WE[0],microblaze_1_ilmb_cntlr_WE[1],microblaze_1_ilmb_cntlr_WE[2],microblaze_1_ilmb_cntlr_WE[3]}));
endmodule

module s00_couplers_imp_6DIUEL
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input M_AXI_arready;
  output M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input M_AXI_awready;
  output M_AXI_awvalid;
  output M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output S_AXI_arready;
  input S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output S_AXI_awready;
  input S_AXI_awvalid;
  input S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire s00_couplers_to_s00_couplers_ARREADY;
  wire s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire s00_couplers_to_s00_couplers_AWREADY;
  wire s00_couplers_to_s00_couplers_AWVALID;
  wire s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arvalid = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awvalid = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready;
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid;
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready;
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid;
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready;
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid;
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready;
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid;
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready;
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid;
endmodule

(* CORE_GENERATION_INFO = "transmitter_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=transmitter_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=10,numNonXlnxBlks=1,numHierBlks=3,maxHierDepth=1,numSysgenBlks=1,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SYSGEN,da_axi4_cnt=1,da_mb_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "transmitter_bd.hwdef" *) 
module transmitter_bd
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK_IN1_D, CAN_DEBUG false, FREQ_HZ 127999999.99999999" *) input CLK_IN1_D_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 CLK_IN1_D CLK_P" *) input CLK_IN1_D_clk_p;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ENABLE_DATA_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ENABLE_DATA_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [0:0]enable_data_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.ENABLE_TX_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.ENABLE_TX_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [0:0]enable_tx_out;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_data, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [7:0]m_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TLAST" *) output [0:0]m_axis_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TREADY" *) input [0:0]m_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_data TVALID" *) output [0:0]m_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_op TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis_op, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 0, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 34} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [33:0]m_axis_op_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis_op TVALID" *) output [0:0]m_axis_op_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_AXIS_SIM_OP_1 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_AXIS_SIM_OP_1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]m_axis_sim_op_1;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_AXIS_SIM_OP_2 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_AXIS_SIM_OP_2, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]m_axis_sim_op_2;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_AXIS_SIM_OP_3 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_AXIS_SIM_OP_3, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]m_axis_sim_op_3;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_AXIS_SIM_OP_4 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_AXIS_SIM_OP_4, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]m_axis_sim_op_4;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_AXIS_SIM_OP_5 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_AXIS_SIM_OP_5, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 15} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]m_axis_sim_op_5;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.M_AXIS_SIM_OP_6 DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.M_AXIS_SIM_OP_6, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 14} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value true}}}}}}" *) output [15:0]m_axis_sim_op_6;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) output [31:0]m_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TREADY" *) input [0:0]m_axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *) output [0:0]m_axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:data:1.0 DATA.MODULATION_OUT DATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME DATA.MODULATION_OUT, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 16} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}" *) output [15:0]modulation_out;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_RTL RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_RTL, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_rtl;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis_data, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 8} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [7:0]s_axis_data_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TLAST" *) input [0:0]s_axis_data_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TREADY" *) output [0:0]s_axis_data_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis_data TVALID" *) input [0:0]s_axis_data_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_axis, FREQ_HZ 100000000, HAS_TKEEP 0, HAS_TLAST 0, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {fixed {fractwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum {}} value false}}}}}}, PHASE 0.0, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0" *) input [31:0]s_axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_axis TVALID" *) input [0:0]s_axis_tvalid;

  wire CLK_IN1_D_1_CLK_N;
  wire CLK_IN1_D_1_CLK_P;
  wire clk_wiz_1_locked;
  wire mdm_1_debug_sys_rst;
  wire microblaze_1_Clk;
  wire [31:0]microblaze_1_axi_dp_ARADDR;
  wire microblaze_1_axi_dp_ARREADY;
  wire microblaze_1_axi_dp_ARVALID;
  wire [31:0]microblaze_1_axi_dp_AWADDR;
  wire microblaze_1_axi_dp_AWREADY;
  wire microblaze_1_axi_dp_AWVALID;
  wire microblaze_1_axi_dp_BREADY;
  wire [1:0]microblaze_1_axi_dp_BRESP;
  wire microblaze_1_axi_dp_BVALID;
  wire [31:0]microblaze_1_axi_dp_RDATA;
  wire microblaze_1_axi_dp_RREADY;
  wire [1:0]microblaze_1_axi_dp_RRESP;
  wire microblaze_1_axi_dp_RVALID;
  wire [31:0]microblaze_1_axi_dp_WDATA;
  wire microblaze_1_axi_dp_WREADY;
  wire [3:0]microblaze_1_axi_dp_WSTRB;
  wire microblaze_1_axi_dp_WVALID;
  wire [31:0]microblaze_1_axi_periph_M00_AXI_ARADDR;
  wire microblaze_1_axi_periph_M00_AXI_ARREADY;
  wire microblaze_1_axi_periph_M00_AXI_ARVALID;
  wire [31:0]microblaze_1_axi_periph_M00_AXI_AWADDR;
  wire microblaze_1_axi_periph_M00_AXI_AWREADY;
  wire microblaze_1_axi_periph_M00_AXI_AWVALID;
  wire microblaze_1_axi_periph_M00_AXI_BREADY;
  wire [1:0]microblaze_1_axi_periph_M00_AXI_BRESP;
  wire microblaze_1_axi_periph_M00_AXI_BVALID;
  wire [31:0]microblaze_1_axi_periph_M00_AXI_RDATA;
  wire microblaze_1_axi_periph_M00_AXI_RREADY;
  wire [1:0]microblaze_1_axi_periph_M00_AXI_RRESP;
  wire microblaze_1_axi_periph_M00_AXI_RVALID;
  wire [31:0]microblaze_1_axi_periph_M00_AXI_WDATA;
  wire microblaze_1_axi_periph_M00_AXI_WREADY;
  wire [3:0]microblaze_1_axi_periph_M00_AXI_WSTRB;
  wire microblaze_1_axi_periph_M00_AXI_WVALID;
  wire microblaze_1_debug_CAPTURE;
  wire microblaze_1_debug_CLK;
  wire microblaze_1_debug_DISABLE;
  wire [0:7]microblaze_1_debug_REG_EN;
  wire microblaze_1_debug_RST;
  wire microblaze_1_debug_SHIFT;
  wire microblaze_1_debug_TDI;
  wire microblaze_1_debug_TDO;
  wire microblaze_1_debug_UPDATE;
  wire [0:31]microblaze_1_dlmb_1_ABUS;
  wire microblaze_1_dlmb_1_ADDRSTROBE;
  wire [0:3]microblaze_1_dlmb_1_BE;
  wire microblaze_1_dlmb_1_CE;
  wire [0:31]microblaze_1_dlmb_1_READDBUS;
  wire microblaze_1_dlmb_1_READSTROBE;
  wire microblaze_1_dlmb_1_READY;
  wire microblaze_1_dlmb_1_UE;
  wire microblaze_1_dlmb_1_WAIT;
  wire [0:31]microblaze_1_dlmb_1_WRITEDBUS;
  wire microblaze_1_dlmb_1_WRITESTROBE;
  wire [0:31]microblaze_1_ilmb_1_ABUS;
  wire microblaze_1_ilmb_1_ADDRSTROBE;
  wire microblaze_1_ilmb_1_CE;
  wire [0:31]microblaze_1_ilmb_1_READDBUS;
  wire microblaze_1_ilmb_1_READSTROBE;
  wire microblaze_1_ilmb_1_READY;
  wire microblaze_1_ilmb_1_UE;
  wire microblaze_1_ilmb_1_WAIT;
  wire reset_rtl_1;
  wire [0:0]rst_clk_wiz_1_100M_bus_struct_reset;
  wire rst_clk_wiz_1_100M_mb_reset;
  wire [0:0]rst_clk_wiz_1_100M_peripheral_aresetn;
  wire [31:0]s_axis_1_TDATA;
  wire [0:0]s_axis_1_TVALID;
  wire [7:0]s_axis_data_1_TDATA;
  wire [0:0]s_axis_data_1_TLAST;
  wire [0:0]s_axis_data_1_TREADY;
  wire [0:0]s_axis_data_1_TVALID;
  wire [0:0]transmitter_1_enable_data_out;
  wire [0:0]transmitter_1_enable_tx_out;
  wire [31:0]transmitter_1_m_axis_TDATA;
  wire [0:0]transmitter_1_m_axis_TREADY;
  wire [0:0]transmitter_1_m_axis_TVALID;
  wire [7:0]transmitter_1_m_axis_data_TDATA;
  wire [0:0]transmitter_1_m_axis_data_TLAST;
  wire [0:0]transmitter_1_m_axis_data_TREADY;
  wire [0:0]transmitter_1_m_axis_data_TVALID;
  wire [33:0]transmitter_1_m_axis_op_TDATA;
  wire [0:0]transmitter_1_m_axis_op_TVALID;
  wire [15:0]transmitter_1_m_axis_sim_op_1;
  wire [15:0]transmitter_1_m_axis_sim_op_2;
  wire [15:0]transmitter_1_m_axis_sim_op_3;
  wire [15:0]transmitter_1_m_axis_sim_op_4;
  wire [15:0]transmitter_1_m_axis_sim_op_5;
  wire [15:0]transmitter_1_m_axis_sim_op_6;
  wire [15:0]transmitter_1_modulation_out;

  assign CLK_IN1_D_1_CLK_N = CLK_IN1_D_clk_n;
  assign CLK_IN1_D_1_CLK_P = CLK_IN1_D_clk_p;
  assign enable_data_out[0] = transmitter_1_enable_data_out;
  assign enable_tx_out[0] = transmitter_1_enable_tx_out;
  assign m_axis_data_tdata[7:0] = transmitter_1_m_axis_data_TDATA;
  assign m_axis_data_tlast[0] = transmitter_1_m_axis_data_TLAST;
  assign m_axis_data_tvalid[0] = transmitter_1_m_axis_data_TVALID;
  assign m_axis_op_tdata[33:0] = transmitter_1_m_axis_op_TDATA;
  assign m_axis_op_tvalid[0] = transmitter_1_m_axis_op_TVALID;
  assign m_axis_sim_op_1[15:0] = transmitter_1_m_axis_sim_op_1;
  assign m_axis_sim_op_2[15:0] = transmitter_1_m_axis_sim_op_2;
  assign m_axis_sim_op_3[15:0] = transmitter_1_m_axis_sim_op_3;
  assign m_axis_sim_op_4[15:0] = transmitter_1_m_axis_sim_op_4;
  assign m_axis_sim_op_5[15:0] = transmitter_1_m_axis_sim_op_5;
  assign m_axis_sim_op_6[15:0] = transmitter_1_m_axis_sim_op_6;
  assign m_axis_tdata[31:0] = transmitter_1_m_axis_TDATA;
  assign m_axis_tvalid[0] = transmitter_1_m_axis_TVALID;
  assign modulation_out[15:0] = transmitter_1_modulation_out;
  assign reset_rtl_1 = reset_rtl;
  assign s_axis_1_TDATA = s_axis_tdata[31:0];
  assign s_axis_1_TVALID = s_axis_tvalid[0];
  assign s_axis_data_1_TDATA = s_axis_data_tdata[7:0];
  assign s_axis_data_1_TLAST = s_axis_data_tlast[0];
  assign s_axis_data_1_TVALID = s_axis_data_tvalid[0];
  assign s_axis_data_tready[0] = s_axis_data_1_TREADY;
  assign transmitter_1_m_axis_TREADY = m_axis_tready[0];
  assign transmitter_1_m_axis_data_TREADY = m_axis_data_tready[0];
  transmitter_bd_clk_wiz_1_0 clk_wiz_1
       (.clk_in1_n(CLK_IN1_D_1_CLK_N),
        .clk_in1_p(CLK_IN1_D_1_CLK_P),
        .clk_out1(microblaze_1_Clk),
        .locked(clk_wiz_1_locked),
        .reset(reset_rtl_1));
  transmitter_bd_mdm_1_0 mdm_1
       (.Dbg_Capture_0(microblaze_1_debug_CAPTURE),
        .Dbg_Clk_0(microblaze_1_debug_CLK),
        .Dbg_Disable_0(microblaze_1_debug_DISABLE),
        .Dbg_Reg_En_0(microblaze_1_debug_REG_EN),
        .Dbg_Rst_0(microblaze_1_debug_RST),
        .Dbg_Shift_0(microblaze_1_debug_SHIFT),
        .Dbg_TDI_0(microblaze_1_debug_TDI),
        .Dbg_TDO_0(microblaze_1_debug_TDO),
        .Dbg_Update_0(microblaze_1_debug_UPDATE),
        .Debug_SYS_Rst(mdm_1_debug_sys_rst));
  (* BMM_INFO_PROCESSOR = "microblaze-le > transmitter_bd microblaze_1_local_memory/dlmb_bram_if_cntlr" *) 
  (* KEEP_HIERARCHY = "yes" *) 
  transmitter_bd_microblaze_1_0 microblaze_1
       (.Byte_Enable(microblaze_1_dlmb_1_BE),
        .Clk(microblaze_1_Clk),
        .DCE(microblaze_1_dlmb_1_CE),
        .DReady(microblaze_1_dlmb_1_READY),
        .DUE(microblaze_1_dlmb_1_UE),
        .DWait(microblaze_1_dlmb_1_WAIT),
        .D_AS(microblaze_1_dlmb_1_ADDRSTROBE),
        .Data_Addr(microblaze_1_dlmb_1_ABUS),
        .Data_Read(microblaze_1_dlmb_1_READDBUS),
        .Data_Write(microblaze_1_dlmb_1_WRITEDBUS),
        .Dbg_Capture(microblaze_1_debug_CAPTURE),
        .Dbg_Clk(microblaze_1_debug_CLK),
        .Dbg_Disable(microblaze_1_debug_DISABLE),
        .Dbg_Reg_En(microblaze_1_debug_REG_EN),
        .Dbg_Shift(microblaze_1_debug_SHIFT),
        .Dbg_TDI(microblaze_1_debug_TDI),
        .Dbg_TDO(microblaze_1_debug_TDO),
        .Dbg_Update(microblaze_1_debug_UPDATE),
        .Debug_Rst(microblaze_1_debug_RST),
        .ICE(microblaze_1_ilmb_1_CE),
        .IFetch(microblaze_1_ilmb_1_READSTROBE),
        .IReady(microblaze_1_ilmb_1_READY),
        .IUE(microblaze_1_ilmb_1_UE),
        .IWAIT(microblaze_1_ilmb_1_WAIT),
        .I_AS(microblaze_1_ilmb_1_ADDRSTROBE),
        .Instr(microblaze_1_ilmb_1_READDBUS),
        .Instr_Addr(microblaze_1_ilmb_1_ABUS),
        .Interrupt(1'b0),
        .Interrupt_Address({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .M_AXI_DP_ARADDR(microblaze_1_axi_dp_ARADDR),
        .M_AXI_DP_ARREADY(microblaze_1_axi_dp_ARREADY),
        .M_AXI_DP_ARVALID(microblaze_1_axi_dp_ARVALID),
        .M_AXI_DP_AWADDR(microblaze_1_axi_dp_AWADDR),
        .M_AXI_DP_AWREADY(microblaze_1_axi_dp_AWREADY),
        .M_AXI_DP_AWVALID(microblaze_1_axi_dp_AWVALID),
        .M_AXI_DP_BREADY(microblaze_1_axi_dp_BREADY),
        .M_AXI_DP_BRESP(microblaze_1_axi_dp_BRESP),
        .M_AXI_DP_BVALID(microblaze_1_axi_dp_BVALID),
        .M_AXI_DP_RDATA(microblaze_1_axi_dp_RDATA),
        .M_AXI_DP_RREADY(microblaze_1_axi_dp_RREADY),
        .M_AXI_DP_RRESP(microblaze_1_axi_dp_RRESP),
        .M_AXI_DP_RVALID(microblaze_1_axi_dp_RVALID),
        .M_AXI_DP_WDATA(microblaze_1_axi_dp_WDATA),
        .M_AXI_DP_WREADY(microblaze_1_axi_dp_WREADY),
        .M_AXI_DP_WSTRB(microblaze_1_axi_dp_WSTRB),
        .M_AXI_DP_WVALID(microblaze_1_axi_dp_WVALID),
        .Read_Strobe(microblaze_1_dlmb_1_READSTROBE),
        .Reset(rst_clk_wiz_1_100M_mb_reset),
        .Write_Strobe(microblaze_1_dlmb_1_WRITESTROBE));
  transmitter_bd_microblaze_1_axi_periph_0 microblaze_1_axi_periph
       (.ACLK(microblaze_1_Clk),
        .ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .M00_ACLK(microblaze_1_Clk),
        .M00_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .M00_AXI_araddr(microblaze_1_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(microblaze_1_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(microblaze_1_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(microblaze_1_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(microblaze_1_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(microblaze_1_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(microblaze_1_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(microblaze_1_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(microblaze_1_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(microblaze_1_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(microblaze_1_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(microblaze_1_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(microblaze_1_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(microblaze_1_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(microblaze_1_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(microblaze_1_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(microblaze_1_axi_periph_M00_AXI_WVALID),
        .S00_ACLK(microblaze_1_Clk),
        .S00_ARESETN(rst_clk_wiz_1_100M_peripheral_aresetn),
        .S00_AXI_araddr(microblaze_1_axi_dp_ARADDR),
        .S00_AXI_arready(microblaze_1_axi_dp_ARREADY),
        .S00_AXI_arvalid(microblaze_1_axi_dp_ARVALID),
        .S00_AXI_awaddr(microblaze_1_axi_dp_AWADDR),
        .S00_AXI_awready(microblaze_1_axi_dp_AWREADY),
        .S00_AXI_awvalid(microblaze_1_axi_dp_AWVALID),
        .S00_AXI_bready(microblaze_1_axi_dp_BREADY),
        .S00_AXI_bresp(microblaze_1_axi_dp_BRESP),
        .S00_AXI_bvalid(microblaze_1_axi_dp_BVALID),
        .S00_AXI_rdata(microblaze_1_axi_dp_RDATA),
        .S00_AXI_rready(microblaze_1_axi_dp_RREADY),
        .S00_AXI_rresp(microblaze_1_axi_dp_RRESP),
        .S00_AXI_rvalid(microblaze_1_axi_dp_RVALID),
        .S00_AXI_wdata(microblaze_1_axi_dp_WDATA),
        .S00_AXI_wready(microblaze_1_axi_dp_WREADY),
        .S00_AXI_wstrb(microblaze_1_axi_dp_WSTRB),
        .S00_AXI_wvalid(microblaze_1_axi_dp_WVALID));
  microblaze_1_local_memory_imp_15CNWT8 microblaze_1_local_memory
       (.DLMB_abus(microblaze_1_dlmb_1_ABUS),
        .DLMB_addrstrobe(microblaze_1_dlmb_1_ADDRSTROBE),
        .DLMB_be(microblaze_1_dlmb_1_BE),
        .DLMB_ce(microblaze_1_dlmb_1_CE),
        .DLMB_readdbus(microblaze_1_dlmb_1_READDBUS),
        .DLMB_readstrobe(microblaze_1_dlmb_1_READSTROBE),
        .DLMB_ready(microblaze_1_dlmb_1_READY),
        .DLMB_ue(microblaze_1_dlmb_1_UE),
        .DLMB_wait(microblaze_1_dlmb_1_WAIT),
        .DLMB_writedbus(microblaze_1_dlmb_1_WRITEDBUS),
        .DLMB_writestrobe(microblaze_1_dlmb_1_WRITESTROBE),
        .ILMB_abus(microblaze_1_ilmb_1_ABUS),
        .ILMB_addrstrobe(microblaze_1_ilmb_1_ADDRSTROBE),
        .ILMB_ce(microblaze_1_ilmb_1_CE),
        .ILMB_readdbus(microblaze_1_ilmb_1_READDBUS),
        .ILMB_readstrobe(microblaze_1_ilmb_1_READSTROBE),
        .ILMB_ready(microblaze_1_ilmb_1_READY),
        .ILMB_ue(microblaze_1_ilmb_1_UE),
        .ILMB_wait(microblaze_1_ilmb_1_WAIT),
        .LMB_Clk(microblaze_1_Clk),
        .SYS_Rst(rst_clk_wiz_1_100M_bus_struct_reset));
  transmitter_bd_rst_clk_wiz_1_100M_0 rst_clk_wiz_1_100M
       (.aux_reset_in(1'b1),
        .bus_struct_reset(rst_clk_wiz_1_100M_bus_struct_reset),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(reset_rtl_1),
        .mb_debug_sys_rst(mdm_1_debug_sys_rst),
        .mb_reset(rst_clk_wiz_1_100M_mb_reset),
        .peripheral_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .slowest_sync_clk(microblaze_1_Clk));
  transmitter_bd_transmitter_1_0 transmitter_1
       (.clk(microblaze_1_Clk),
        .enable_data_out(transmitter_1_enable_data_out),
        .enable_tx_out(transmitter_1_enable_tx_out),
        .m_axis_data_tdata(transmitter_1_m_axis_data_TDATA),
        .m_axis_data_tlast(transmitter_1_m_axis_data_TLAST),
        .m_axis_data_tready(transmitter_1_m_axis_data_TREADY),
        .m_axis_data_tvalid(transmitter_1_m_axis_data_TVALID),
        .m_axis_op_tdata(transmitter_1_m_axis_op_TDATA),
        .m_axis_op_tvalid(transmitter_1_m_axis_op_TVALID),
        .m_axis_sim_op_1(transmitter_1_m_axis_sim_op_1),
        .m_axis_sim_op_2(transmitter_1_m_axis_sim_op_2),
        .m_axis_sim_op_3(transmitter_1_m_axis_sim_op_3),
        .m_axis_sim_op_4(transmitter_1_m_axis_sim_op_4),
        .m_axis_sim_op_5(transmitter_1_m_axis_sim_op_5),
        .m_axis_sim_op_6(transmitter_1_m_axis_sim_op_6),
        .m_axis_tdata(transmitter_1_m_axis_TDATA),
        .m_axis_tready(transmitter_1_m_axis_TREADY),
        .m_axis_tvalid(transmitter_1_m_axis_TVALID),
        .modulation_out(transmitter_1_modulation_out),
        .s_axis_data_tdata(s_axis_data_1_TDATA),
        .s_axis_data_tlast(s_axis_data_1_TLAST),
        .s_axis_data_tready(s_axis_data_1_TREADY),
        .s_axis_data_tvalid(s_axis_data_1_TVALID),
        .s_axis_tdata(s_axis_1_TDATA),
        .s_axis_tvalid(s_axis_1_TVALID),
        .transmitter_aresetn(rst_clk_wiz_1_100M_peripheral_aresetn),
        .transmitter_s_axi_araddr(microblaze_1_axi_periph_M00_AXI_ARADDR[3:0]),
        .transmitter_s_axi_arready(microblaze_1_axi_periph_M00_AXI_ARREADY),
        .transmitter_s_axi_arvalid(microblaze_1_axi_periph_M00_AXI_ARVALID),
        .transmitter_s_axi_awaddr(microblaze_1_axi_periph_M00_AXI_AWADDR[3:0]),
        .transmitter_s_axi_awready(microblaze_1_axi_periph_M00_AXI_AWREADY),
        .transmitter_s_axi_awvalid(microblaze_1_axi_periph_M00_AXI_AWVALID),
        .transmitter_s_axi_bready(microblaze_1_axi_periph_M00_AXI_BREADY),
        .transmitter_s_axi_bresp(microblaze_1_axi_periph_M00_AXI_BRESP),
        .transmitter_s_axi_bvalid(microblaze_1_axi_periph_M00_AXI_BVALID),
        .transmitter_s_axi_rdata(microblaze_1_axi_periph_M00_AXI_RDATA),
        .transmitter_s_axi_rready(microblaze_1_axi_periph_M00_AXI_RREADY),
        .transmitter_s_axi_rresp(microblaze_1_axi_periph_M00_AXI_RRESP),
        .transmitter_s_axi_rvalid(microblaze_1_axi_periph_M00_AXI_RVALID),
        .transmitter_s_axi_wdata(microblaze_1_axi_periph_M00_AXI_WDATA),
        .transmitter_s_axi_wready(microblaze_1_axi_periph_M00_AXI_WREADY),
        .transmitter_s_axi_wstrb(microblaze_1_axi_periph_M00_AXI_WSTRB),
        .transmitter_s_axi_wvalid(microblaze_1_axi_periph_M00_AXI_WVALID));
endmodule

module transmitter_bd_microblaze_1_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input M00_AXI_arready;
  output M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input M00_AXI_awready;
  output M00_AXI_awvalid;
  output M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output M00_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  output S00_AXI_arready;
  input S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  output S00_AXI_awready;
  input S00_AXI_awvalid;
  input S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input S00_AXI_wvalid;

  wire S00_ACLK_1;
  wire S00_ARESETN_1;
  wire microblaze_1_axi_periph_ACLK_net;
  wire microblaze_1_axi_periph_ARESETN_net;
  wire [31:0]microblaze_1_axi_periph_to_s00_couplers_ARADDR;
  wire microblaze_1_axi_periph_to_s00_couplers_ARREADY;
  wire microblaze_1_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]microblaze_1_axi_periph_to_s00_couplers_AWADDR;
  wire microblaze_1_axi_periph_to_s00_couplers_AWREADY;
  wire microblaze_1_axi_periph_to_s00_couplers_AWVALID;
  wire microblaze_1_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]microblaze_1_axi_periph_to_s00_couplers_BRESP;
  wire microblaze_1_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]microblaze_1_axi_periph_to_s00_couplers_RDATA;
  wire microblaze_1_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]microblaze_1_axi_periph_to_s00_couplers_RRESP;
  wire microblaze_1_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]microblaze_1_axi_periph_to_s00_couplers_WDATA;
  wire microblaze_1_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]microblaze_1_axi_periph_to_s00_couplers_WSTRB;
  wire microblaze_1_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_microblaze_1_axi_periph_ARADDR;
  wire s00_couplers_to_microblaze_1_axi_periph_ARREADY;
  wire s00_couplers_to_microblaze_1_axi_periph_ARVALID;
  wire [31:0]s00_couplers_to_microblaze_1_axi_periph_AWADDR;
  wire s00_couplers_to_microblaze_1_axi_periph_AWREADY;
  wire s00_couplers_to_microblaze_1_axi_periph_AWVALID;
  wire s00_couplers_to_microblaze_1_axi_periph_BREADY;
  wire [1:0]s00_couplers_to_microblaze_1_axi_periph_BRESP;
  wire s00_couplers_to_microblaze_1_axi_periph_BVALID;
  wire [31:0]s00_couplers_to_microblaze_1_axi_periph_RDATA;
  wire s00_couplers_to_microblaze_1_axi_periph_RREADY;
  wire [1:0]s00_couplers_to_microblaze_1_axi_periph_RRESP;
  wire s00_couplers_to_microblaze_1_axi_periph_RVALID;
  wire [31:0]s00_couplers_to_microblaze_1_axi_periph_WDATA;
  wire s00_couplers_to_microblaze_1_axi_periph_WREADY;
  wire [3:0]s00_couplers_to_microblaze_1_axi_periph_WSTRB;
  wire s00_couplers_to_microblaze_1_axi_periph_WVALID;

  assign M00_AXI_araddr[31:0] = s00_couplers_to_microblaze_1_axi_periph_ARADDR;
  assign M00_AXI_arvalid = s00_couplers_to_microblaze_1_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = s00_couplers_to_microblaze_1_axi_periph_AWADDR;
  assign M00_AXI_awvalid = s00_couplers_to_microblaze_1_axi_periph_AWVALID;
  assign M00_AXI_bready = s00_couplers_to_microblaze_1_axi_periph_BREADY;
  assign M00_AXI_rready = s00_couplers_to_microblaze_1_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = s00_couplers_to_microblaze_1_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = s00_couplers_to_microblaze_1_axi_periph_WSTRB;
  assign M00_AXI_wvalid = s00_couplers_to_microblaze_1_axi_periph_WVALID;
  assign S00_ACLK_1 = S00_ACLK;
  assign S00_ARESETN_1 = S00_ARESETN;
  assign S00_AXI_arready = microblaze_1_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready = microblaze_1_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = microblaze_1_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid = microblaze_1_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = microblaze_1_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = microblaze_1_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid = microblaze_1_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready = microblaze_1_axi_periph_to_s00_couplers_WREADY;
  assign microblaze_1_axi_periph_ACLK_net = M00_ACLK;
  assign microblaze_1_axi_periph_ARESETN_net = M00_ARESETN;
  assign microblaze_1_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign microblaze_1_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid;
  assign microblaze_1_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign microblaze_1_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid;
  assign microblaze_1_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready;
  assign microblaze_1_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready;
  assign microblaze_1_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign microblaze_1_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign microblaze_1_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid;
  assign s00_couplers_to_microblaze_1_axi_periph_ARREADY = M00_AXI_arready;
  assign s00_couplers_to_microblaze_1_axi_periph_AWREADY = M00_AXI_awready;
  assign s00_couplers_to_microblaze_1_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign s00_couplers_to_microblaze_1_axi_periph_BVALID = M00_AXI_bvalid;
  assign s00_couplers_to_microblaze_1_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign s00_couplers_to_microblaze_1_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign s00_couplers_to_microblaze_1_axi_periph_RVALID = M00_AXI_rvalid;
  assign s00_couplers_to_microblaze_1_axi_periph_WREADY = M00_AXI_wready;
  s00_couplers_imp_6DIUEL s00_couplers
       (.M_ACLK(microblaze_1_axi_periph_ACLK_net),
        .M_ARESETN(microblaze_1_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_microblaze_1_axi_periph_ARADDR),
        .M_AXI_arready(s00_couplers_to_microblaze_1_axi_periph_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_microblaze_1_axi_periph_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_microblaze_1_axi_periph_AWADDR),
        .M_AXI_awready(s00_couplers_to_microblaze_1_axi_periph_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_microblaze_1_axi_periph_AWVALID),
        .M_AXI_bready(s00_couplers_to_microblaze_1_axi_periph_BREADY),
        .M_AXI_bresp(s00_couplers_to_microblaze_1_axi_periph_BRESP),
        .M_AXI_bvalid(s00_couplers_to_microblaze_1_axi_periph_BVALID),
        .M_AXI_rdata(s00_couplers_to_microblaze_1_axi_periph_RDATA),
        .M_AXI_rready(s00_couplers_to_microblaze_1_axi_periph_RREADY),
        .M_AXI_rresp(s00_couplers_to_microblaze_1_axi_periph_RRESP),
        .M_AXI_rvalid(s00_couplers_to_microblaze_1_axi_periph_RVALID),
        .M_AXI_wdata(s00_couplers_to_microblaze_1_axi_periph_WDATA),
        .M_AXI_wready(s00_couplers_to_microblaze_1_axi_periph_WREADY),
        .M_AXI_wstrb(s00_couplers_to_microblaze_1_axi_periph_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_microblaze_1_axi_periph_WVALID),
        .S_ACLK(S00_ACLK_1),
        .S_ARESETN(S00_ARESETN_1),
        .S_AXI_araddr(microblaze_1_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arready(microblaze_1_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(microblaze_1_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(microblaze_1_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awready(microblaze_1_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(microblaze_1_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(microblaze_1_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(microblaze_1_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(microblaze_1_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(microblaze_1_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(microblaze_1_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(microblaze_1_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(microblaze_1_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(microblaze_1_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(microblaze_1_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(microblaze_1_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(microblaze_1_axi_periph_to_s00_couplers_WVALID));
endmodule
