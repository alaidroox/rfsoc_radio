//-----------------------------------------------------------------
// System Generator version 2022.1 Verilog source file.
//
// Copyright(C) 2022 by Xilinx, Inc.  All rights reserved.  This
// text/file contains proprietary, confidential information of Xilinx,
// Inc., is distributed under license from Xilinx, Inc., and may be used,
// copied and/or disclosed only pursuant to the terms of a valid license
// agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
// this text/file solely for design, simulation, implementation and
// creation of design files limited to Xilinx devices or technologies.
// Use with non-Xilinx devices or technologies is expressly prohibited
// and immediately terminates your license unless covered by a separate
// agreement.
//
// Xilinx is providing this design, code, or information "as is" solely
// for use in developing programs and solutions for Xilinx devices.  By
// providing this design, code, or information as one possible
// implementation of this feature, application or standard, Xilinx is
// making no representation that this implementation is free from any
// claims of infringement.  You are responsible for obtaining any rights
// you may require for your implementation.  Xilinx expressly disclaims
// any warranty whatsoever with respect to the adequacy of the
// implementation, including but not limited to warranties of
// merchantability or fitness for a particular purpose.
//
// Xilinx products are not intended for use in life support appliances,
// devices, or systems.  Use in such applications is expressly prohibited.
//
// Any modifications that are made to the source code are done at the user's
// sole risk and will be unsupported.
//
// This copyright and support notice must be retained as part of this
// text at all times.  (c) Copyright 1995-2022 Xilinx, Inc.  All rights
// reserved.
//-----------------------------------------------------------------

`include "conv_pkg.v"
`timescale 1 ns / 10 ps
module sysgen_concat_91e2fb1ab4 (
  input [(16 - 1):0] in0,
  input [(16 - 1):0] in1,
  output [(32 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] in0_1_23;
  wire [(16 - 1):0] in1_1_27;
  wire [(32 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign y_2_1_concat = {in0_1_23, in1_1_27};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps

module  transmitter_xlslice  (x, y);

//Parameter Definitions
parameter new_msb= 9;
parameter new_lsb= 1;
parameter x_width= 16;
parameter y_width= 8;

//Port Declartions
input [x_width-1:0] x;
output [y_width-1:0] y;

assign y = x[new_msb:new_lsb];

endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_c933ba2fbe (
  input [(16 - 1):0] input_port,
  output [(16 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(16 - 1):0] input_port_1_40;
  wire [(16 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_25cee5ac77 (
  input [(16 - 1):0] input_port,
  output [(16 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire [(16 - 1):0] input_port_1_40;
  wire signed [(16 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps
module sysgen_shift_be3eecc59a (
  input [(50 - 1):0] ip,
  output [(58 - 1):0] op,
  input clk,
  input ce,
  input clr);
  wire signed [(50 - 1):0] ip_1_23;
  localparam signed [(58 - 1):0] const_value = 58'sb0000000000000000000000000000000000000000000000000000000000;
  reg signed [(58 - 1):0] op_mem_46_20[0:(1 - 1)];
  initial
    begin
      op_mem_46_20[0] = 58'b0000000000000000000000000000000000000000000000000000000000;
    end
  wire signed [(58 - 1):0] op_mem_46_20_front_din;
  wire signed [(58 - 1):0] op_mem_46_20_back;
  wire op_mem_46_20_push_front_pop_back_en;
  localparam [(1 - 1):0] const_value_x_000000 = 1'b1;
  wire signed [(58 - 1):0] internal_ip_33_3_convert;
  assign ip_1_23 = ip;
  assign op_mem_46_20_back = op_mem_46_20[0];
  always @(posedge clk)
    begin:proc_op_mem_46_20
      integer i;
      if (((ce == 1'b1) && (op_mem_46_20_push_front_pop_back_en == 1'b1)))
        begin
          op_mem_46_20[0] <= op_mem_46_20_front_din;
        end
    end
  defparam convert_internal_ip_33_3_convert.new_arith = `xlSigned;
  defparam convert_internal_ip_33_3_convert.new_bin_pt = 56;
  defparam convert_internal_ip_33_3_convert.new_width = 58;
  defparam convert_internal_ip_33_3_convert.old_arith = `xlSigned;
  defparam convert_internal_ip_33_3_convert.old_bin_pt = 48;
  defparam convert_internal_ip_33_3_convert.old_width = 50;
  defparam convert_internal_ip_33_3_convert.overflow = `xlSaturate;
  defparam convert_internal_ip_33_3_convert.quantization = `xlRound;
  convert_type convert_internal_ip_33_3_convert(.inp(ip_1_23), .res(internal_ip_33_3_convert));
  assign op_mem_46_20_push_front_pop_back_en = 1'b0;
  assign op = internal_ip_33_3_convert;
endmodule
`timescale 1 ns / 10 ps
module sysgen_concat_aecfb75ec1 (
  input [(17 - 1):0] in0,
  input [(17 - 1):0] in1,
  output [(34 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(17 - 1):0] in0_1_23;
  wire [(17 - 1):0] in1_1_27;
  wire [(34 - 1):0] y_2_1_concat;
  assign in0_1_23 = in0;
  assign in1_1_27 = in1;
  assign y_2_1_concat = {in0_1_23, in1_1_27};
  assign y = y_2_1_concat;
endmodule
`timescale 1 ns / 10 ps
module sysgen_constant_01cc029cd7 (
  output [(1 - 1):0] op,
  input clk,
  input ce,
  input clr);
  assign op = 1'b1;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_ca22f16a2d (
  input [(2 - 1):0] sel,
  input [(16 - 1):0] d0,
  input [(16 - 1):0] d1,
  input [(16 - 1):0] d2,
  output [(17 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire [(16 - 1):0] d0_1_24;
  wire [(16 - 1):0] d1_1_27;
  wire [(16 - 1):0] d2_1_30;
  localparam [(17 - 1):0] const_value = 17'b00000000000000000;
  reg [(17 - 1):0] pipe_18_22[0:(1 - 1)];
  initial
    begin
      pipe_18_22[0] = 17'b00000000000000000;
    end
  wire [(17 - 1):0] pipe_18_22_front_din;
  wire [(17 - 1):0] pipe_18_22_back;
  wire pipe_18_22_push_front_pop_back_en;
  reg [(17 - 1):0] unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign pipe_18_22_back = pipe_18_22[0];
  always @(posedge clk)
    begin:proc_pipe_18_22
      integer i;
      if (((ce == 1'b1) && (pipe_18_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_18_22[0] <= pipe_18_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = {d0_1_24[15:0], 1'b0};
          end
        2'b01 :
          begin
            unregy_join_6_1 = {{1{d1_1_27[15]}}, d1_1_27[15:0]};
          end
        default:
          begin
            unregy_join_6_1 = {{1{d2_1_30[15]}}, d2_1_30[15:0]};
          end
      endcase
    end
  assign pipe_18_22_front_din = unregy_join_6_1;
  assign pipe_18_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_18_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_mux_6102dda336 (
  input [(2 - 1):0] sel,
  input [(1 - 1):0] d0,
  input [(1 - 1):0] d1,
  input [(1 - 1):0] d2,
  output [(1 - 1):0] y,
  input clk,
  input ce,
  input clr);
  wire [(2 - 1):0] sel_1_20;
  wire d0_1_24;
  wire d1_1_27;
  wire d2_1_30;
  reg pipe_18_22[0:(1 - 1)];
  initial
    begin
      pipe_18_22[0] = 1'b0;
    end
  wire pipe_18_22_front_din;
  wire pipe_18_22_back;
  wire pipe_18_22_push_front_pop_back_en;
  reg unregy_join_6_1;
  assign sel_1_20 = sel;
  assign d0_1_24 = d0;
  assign d1_1_27 = d1;
  assign d2_1_30 = d2;
  assign pipe_18_22_back = pipe_18_22[0];
  always @(posedge clk)
    begin:proc_pipe_18_22
      integer i;
      if (((ce == 1'b1) && (pipe_18_22_push_front_pop_back_en == 1'b1)))
        begin
          pipe_18_22[0] <= pipe_18_22_front_din;
        end
    end
  always @(d0_1_24 or d1_1_27 or d2_1_30 or sel_1_20)
    begin:proc_switch_6_1
      case (sel_1_20)
        2'b00 :
          begin
            unregy_join_6_1 = d0_1_24;
          end
        2'b01 :
          begin
            unregy_join_6_1 = d1_1_27;
          end
        default:
          begin
            unregy_join_6_1 = d2_1_30;
          end
      endcase
    end
  assign pipe_18_22_front_din = unregy_join_6_1;
  assign pipe_18_22_push_front_pop_back_en = 1'b1;
  assign y = pipe_18_22_back;
endmodule
`timescale 1 ns / 10 ps
module sysgen_reinterpret_1effecd207 (
  input [(17 - 1):0] input_port,
  output [(17 - 1):0] output_port,
  input clk,
  input ce,
  input clr);
  wire signed [(17 - 1):0] input_port_1_40;
  wire [(17 - 1):0] output_port_5_5_force;
  assign input_port_1_40 = input_port;
  assign output_port_5_5_force = input_port_1_40;
  assign output_port = output_port_5_5_force;
endmodule
`timescale 1 ns / 10 ps


module  transmitter_xlusamp  (d, src_clk, src_ce, src_clr, dest_clk, dest_ce, dest_clr, en, q);


//Parameter Definitions
parameter d_width= 5;
parameter d_bin_pt= 2;
parameter d_arith= `xlUnsigned;
parameter q_width= 5;
parameter q_bin_pt= 2;
parameter q_arith= `xlUnsigned;
parameter en_width = 1;
parameter en_bin_pt = 0;
parameter en_arith = `xlUnsigned;
parameter sampling_ratio = 2;
parameter latency = 1;
parameter copy_samples= 0;


//Port Declartions
input [d_width-1:0] d;
input  src_clk;
input  src_ce;
input  src_clr;
input  dest_clk;
input  dest_ce;
input  dest_clr;
input [en_width-1:0] en;
output [q_width-1:0] q;


//Wire Declartions
wire [q_width-1:0] zero;
wire  mux_sel;
wire internal_ce;
wire [d_width-1:0] sampled_d;
assign internal_ce = src_ce & en[0];
generate
   if (copy_samples == 0)
   begin:copy_samples_0
       FDSE sel_gen(.Q(mux_sel),
           .D(src_ce),
           .C(src_clk),
           .S(src_clr),
           .CE(dest_ce));
       assign zero = {q_width{1'b0}};
       if (latency == 0)
       begin
           assign q = (mux_sel) ? d : zero;
       end
       else // if (latency > 0)
       begin
           synth_reg # (d_width, latency)
           reg1 (
               .i(d),
               .ce(internal_ce),
               .clr(src_clr),
               .clk(src_clk),
               .o(sampled_d)
           );
           assign q = (mux_sel) ? sampled_d : zero;
       end
   end

   if (copy_samples == 1)
   begin:copy_samples_1
       if (latency == 0)
       begin
           assign q = d;
       end
       else // !if(latency == 0)
       begin
           assign q = sampled_d;
           synth_reg # (d_width, latency)
           reg2 (
               .i(d),
               .ce(internal_ce),
               .clr(src_clr),
               .clk(src_clk),
               .o(sampled_d)
           );
       end
   end
endgenerate
endmodule

`timescale 1 ns / 10 ps


module transmitter_xlconvert (din, clk, ce, clr, en, dout);

//Parameter Definitions
   parameter din_width= 16;
   parameter din_bin_pt= 4;
   parameter din_arith= `xlUnsigned;
   parameter dout_width= 8;
   parameter dout_bin_pt= 2;
   parameter dout_arith= `xlUnsigned;
   parameter en_width = 1;
   parameter en_bin_pt = 0;
   parameter en_arith = `xlUnsigned;
   parameter bool_conversion = 0;
   parameter latency = 0;
   parameter quantization= `xlTruncate;
   parameter overflow= `xlWrap;

//Port Declartions
   input [din_width-1:0] din;
   input clk, ce, clr;
   input [en_width-1:0] en;
   output [dout_width-1:0] dout;

//Wire Declartions
   wire [dout_width-1:0]   result;
   wire internal_ce;
   assign internal_ce = ce & en[0];

generate
 if (bool_conversion == 1)
    begin:bool_converion_generate
       assign result = din;
    end
 else
    begin:std_conversion
       convert_type #(din_width,
                      din_bin_pt,
                      din_arith,
		              dout_width,
                      dout_bin_pt,
                      dout_arith,
                      quantization,
                      overflow)
        conv_udp (.inp(din), .res(result));
    end
endgenerate

generate
if (latency > 0)
     begin:latency_test
	synth_reg # (dout_width, latency)
	  reg1 (
	       .i(result),
	       .ce(internal_ce),
	       .clr(clr),
	       .clk(clk),
	       .o(dout));
     end
else
     begin:latency0
	assign dout = result;
     end
endgenerate

endmodule

`timescale 1 ns / 10 ps
module transmitter_axi_lite_interface#(parameter C_S_AXI_DATA_WIDTH = 32, C_S_AXI_ADDR_WIDTH = 4, C_S_NUM_OFFSETS = 4)(
  output wire[0:0] enable_data_in,
  output wire[31:0] observation_point,
  output wire[15:0] modulation_in,
  output wire[0:0] enable_tx_in,
  output wire clk,
  input wire transmitter_aclk,
  input wire transmitter_aresetn,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] transmitter_s_axi_awaddr,
  input  wire transmitter_s_axi_awvalid,
  output wire transmitter_s_axi_awready,
  input  wire [C_S_AXI_DATA_WIDTH-1:0] transmitter_s_axi_wdata,
  input  wire [C_S_AXI_DATA_WIDTH/8-1:0] transmitter_s_axi_wstrb,
  input  wire transmitter_s_axi_wvalid,
  output wire transmitter_s_axi_wready,
  output wire [1:0] transmitter_s_axi_bresp,
  output wire transmitter_s_axi_bvalid,
  input  wire transmitter_s_axi_bready,
  input  wire [C_S_AXI_ADDR_WIDTH - 1:0] transmitter_s_axi_araddr,
  input  wire transmitter_s_axi_arvalid,
  output wire transmitter_s_axi_arready,
  output wire [C_S_AXI_DATA_WIDTH-1:0] transmitter_s_axi_rdata,
  output wire [1:0] transmitter_s_axi_rresp,
  output wire transmitter_s_axi_rvalid,
  input  wire transmitter_s_axi_rready
);
function integer clogb2 (input integer bit_depth);
begin
  for(clogb2=0; bit_depth>0; clogb2=clogb2+1)
    bit_depth = bit_depth >> 1;
  end
endfunction
localparam integer ADDR_LSB = clogb2(C_S_AXI_DATA_WIDTH/8);
localparam integer ADDR_MSB = C_S_AXI_ADDR_WIDTH;
localparam integer DEC_SIZE = clogb2(C_S_NUM_OFFSETS);
reg [1 :0] axi_rresp;
reg [1 :0] axi_bresp;
reg axi_awready;
reg axi_wready;
reg axi_bvalid;
reg axi_rvalid;
reg [ADDR_MSB-1:0] axi_awaddr;
reg [ADDR_MSB-1:0] axi_araddr;
reg [C_S_AXI_DATA_WIDTH-1:0] axi_rdata;
reg axi_arready;
wire [C_S_AXI_DATA_WIDTH-1:0] slv_wire_array [0:C_S_NUM_OFFSETS-1];
reg [C_S_AXI_DATA_WIDTH-1:0] slv_reg_array [0:C_S_NUM_OFFSETS-1];
wire slv_reg_rden;
wire slv_reg_wren;
reg [DEC_SIZE-1:0] dec_w;
reg [DEC_SIZE-1:0] dec_r;
reg [C_S_AXI_DATA_WIDTH-1:0] reg_data_out;
integer byte_index;
integer offset_index;
assign transmitter_s_axi_awready = axi_awready;
assign transmitter_s_axi_wready  = axi_wready;
assign transmitter_s_axi_bresp  = axi_bresp;
assign transmitter_s_axi_bvalid = axi_bvalid;
assign transmitter_s_axi_arready = axi_arready;
assign transmitter_s_axi_rdata  = axi_rdata;
assign transmitter_s_axi_rvalid = axi_rvalid;
assign transmitter_s_axi_rresp  = axi_rresp;
// map input 0
assign slv_wire_array[0] = slv_reg_array[0];
assign enable_data_in = slv_wire_array[0][0];
// map input 1
assign slv_wire_array[1] = slv_reg_array[1];
assign observation_point[31:0] = slv_wire_array[1][31:0];
// map input 2
assign slv_wire_array[2] = slv_reg_array[2];
assign modulation_in[15:0] = slv_wire_array[2][15:0];
// map input 3
assign slv_wire_array[3] = slv_reg_array[3];
assign enable_tx_in = slv_wire_array[3][0];
  initial
  begin
    slv_reg_array[0] = 32'd0;
    slv_reg_array[1] = 32'd0;
    slv_reg_array[2] = 32'd0;
    slv_reg_array[3] = 32'd0;
  end
  always @(axi_awaddr)
  begin
    case(axi_awaddr)
      4'd0 : dec_w = 0;
      4'd12 : dec_w = 1;
      4'd8 : dec_w = 2;
      4'd4 : dec_w = 3;
      default : dec_w = 0;
    endcase
  end
  always @(axi_araddr)
  begin
    case(axi_araddr)
      4'd0 : dec_r = 0;
      4'd12 : dec_r = 1;
      4'd8 : dec_r = 2;
      4'd4 : dec_r = 3;
      default : dec_r = 0;
    endcase
  end
  always @( posedge transmitter_aclk )
  begin
    if ( transmitter_aresetn == 1'b0 )
      begin
        axi_awready <= 1'b0;
        axi_awaddr <= 0;
      end
    else
      begin
        if (~axi_awready && transmitter_s_axi_awvalid && transmitter_s_axi_wvalid)
          begin
            axi_awready <= 1'b1;
            axi_awaddr <= transmitter_s_axi_awaddr;
          end
        else
          begin
            axi_awready <= 1'b0;
          end
      end
  end
  always @( posedge transmitter_aclk )
  begin
    if ( transmitter_aresetn == 1'b0 )
      begin
        axi_wready <= 1'b0;
      end
    else
      begin
        if (~axi_wready && transmitter_s_axi_wvalid && transmitter_s_axi_awvalid)
          begin
            axi_wready <= 1'b1;
          end
        else
          begin
            axi_wready <= 1'b0;
          end
      end
  end
  assign slv_reg_wren = axi_wready && transmitter_s_axi_wvalid && axi_awready && transmitter_s_axi_awvalid;
  always @( posedge transmitter_aclk )
  begin
    if ( transmitter_aresetn == 1'b0 )
      begin
        slv_reg_array[0] = 32'd0;
        slv_reg_array[1] = 32'd0;
        slv_reg_array[2] = 32'd0;
        slv_reg_array[3] = 32'd0;
      end
    else begin
      if (slv_reg_wren)
        begin
          for ( byte_index = 0; byte_index <= (C_S_AXI_DATA_WIDTH/8)-1; byte_index = byte_index+1 )
            if ( transmitter_s_axi_wstrb[byte_index] == 1 ) begin
              slv_reg_array[dec_w][(byte_index*8) +: 8] <= transmitter_s_axi_wdata[(byte_index*8) +: 8];
            end
        end
    end
  end
  always @( posedge transmitter_aclk )
  begin
    if ( transmitter_aresetn == 1'b0 )
      begin
        axi_bvalid  <= 0;
        axi_bresp   <= 2'b0;
      end
    else
      begin
        if (axi_awready && transmitter_s_axi_awvalid && ~axi_bvalid && axi_wready && transmitter_s_axi_wvalid)
          begin
            axi_bvalid <= 1'b1;
            axi_bresp  <= 2'b0; 
          end
        else
          begin
            if (transmitter_s_axi_bready && axi_bvalid)
              begin
                axi_bvalid <= 1'b0;
              end
          end
      end
  end
  always @( posedge transmitter_aclk )
  begin
    if ( transmitter_aresetn == 1'b0 )
      begin
        axi_arready <= 1'b0;
        axi_araddr  <= {ADDR_MSB{1'b0}};
      end
    else
      begin
        if (~axi_arready && transmitter_s_axi_arvalid)
          begin
            axi_arready <= 1'b1;
            axi_araddr  <= transmitter_s_axi_araddr;
          end
        else
          begin
            axi_arready <= 1'b0;
          end
      end
  end

  // AXI read response (inferred flops)
  always @( posedge transmitter_aclk )
  begin
    if ( transmitter_aresetn == 1'b0 )
      begin
        axi_rvalid <= 1'b0;
        axi_rresp  <= 2'b0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rvalid <= 1'b1;
            axi_rresp  <= 2'b0; 
          end
        else if (axi_rvalid && transmitter_s_axi_rready)
          begin
            axi_rvalid <= 1'b0;
            axi_rresp  <= 2'b0; 
          end
      end
  end
  assign slv_reg_rden = axi_arready & transmitter_s_axi_arvalid & ~axi_rvalid;
  always @(transmitter_aresetn, slv_reg_rden, axi_araddr, slv_wire_array, dec_r)
  begin
    if ( transmitter_aresetn == 1'b0 )
      begin
        reg_data_out <= {C_S_AXI_DATA_WIDTH{1'b0}};
      end
    else
      begin
     reg_data_out <= slv_wire_array[dec_r];
      end
  end
  // flop for AXI read data
  always @( posedge transmitter_aclk )
  begin
    if ( transmitter_aresetn == 1'b0 )
      begin
        axi_rdata  <= 0;
      end
    else
      begin
        if (slv_reg_rden)
          begin
            axi_rdata <= reg_data_out;
          end
      end
  end

  assign clk = transmitter_aclk;

endmodule

module transmitter_xlcmult (a, ce, clr, clk, core_ce, core_clr, core_clk, rst, en, p);
 
 parameter core_name0= "";
 parameter a_width= 4;
 parameter a_bin_pt= 2;
 parameter a_arith= `xlSigned;
 parameter b_width= 4;
 parameter b_bin_pt= 2;
 parameter b_arith= `xlSigned;
 parameter p_width= 8;
 parameter p_bin_pt= 2;
 parameter p_arith= `xlSigned;
 parameter rst_width= 1;
 parameter rst_bin_pt= 0;
 parameter rst_arith= `xlUnsigned;
 parameter en_width= 1;
 parameter en_bin_pt= 0;
 parameter en_arith= `xlUnsigned;
 parameter multsign= `xlSigned;
 parameter quantization= `xlTruncate;
 parameter overflow= `xlWrap;
 parameter extra_registers= 0;
 parameter c_a_width= 7;
 parameter c_b_width= 7;
 parameter c_a_type= 0;
 parameter c_b_type= 0;
 parameter c_type= 0;
 parameter const_bin_pt= 1;
 parameter c_output_width= 16;
 parameter zero_const = 0;
 
 input [a_width-1:0] a;
 input  ce;
 input  clr;
 input  clk;
 input  core_ce;
 input  core_clr;
 input  core_clk;
 input [rst_width-1:0] rst;
 input [en_width-1:0] en;
 output [p_width-1:0] p;
 
 wire [c_a_width-1:0] #0.1 tmp_a;
 wire [c_output_width-1:0] tmp_p;
 wire [p_width-1:0] conv_p;
 wire  real_a,real_p;
 wire  nd;
 wire  internal_ce;
 wire  internal_clr;
 wire  internal_core_ce;
 
 assign internal_ce = ce & en[0];
 assign internal_core_ce = core_ce & en[0];
 assign internal_clr = (clr | rst[0]) & ce;
 assign nd = internal_ce;
 
 zero_ext # (a_width,c_a_width) zero_ext_a(.inp(a),.res(tmp_a));
 
 convert_type # (c_output_width, a_bin_pt+b_bin_pt, multsign,
                            p_width, p_bin_pt, p_arith, quantization, overflow)
 convert_p(.inp(tmp_p),.res(conv_p));
 
 generate



if (core_name0 == "transmitter_mult_gen_v12_0_i0") 
     begin:comp0
transmitter_mult_gen_v12_0_i0 core_instance0 ( 
      .SCLR(internal_clr),
      .CLK(clk),
      .CE(internal_ce),
      .P(tmp_p),
      .A(tmp_a) 
       ); 
     end 

 endgenerate
 
 generate
  if ((extra_registers > 0) && (zero_const == 0))
      begin:latency_gt_0
 	synth_reg # (p_width, extra_registers) 
 	  reg1 (
 	       .i(conv_p), 
 	       .ce(internal_ce),
 	       .clr(internal_clr),
 	       .clk(clk),
 	       .o(p)
                );
      end
     
    if ((extra_registers == 0) && (zero_const == 0))
      begin:latency_eq_0
 	assign p = conv_p;
      end
 
    if (zero_const == 1)
      begin:zero_constant
 	assign p = {p_width{1'b0}};
      end
 endgenerate
 
 endmodule


`timescale 1 ns / 10 ps
module  xlcic_compiler_6c459c5334676148e74f3c5b9e8c6f47 (ce,ce_320,ce_logic_320,clk,clk_320,clk_logic_320,m_axis_data_tdata_real,m_axis_data_tvalid,s_axis_data_tdata_real,s_axis_data_tready);

input ce;
input ce_320;
input ce_logic_320;
input clk;
input clk_320;
input clk_logic_320;
output[49:0] m_axis_data_tdata_real;
output m_axis_data_tvalid;
input[15:0] s_axis_data_tdata_real;
output s_axis_data_tready;
wire[55:0] m_axis_data_tdata_net;
wire[15:0] s_axis_data_tdata_net;
  assign m_axis_data_tdata_real = m_axis_data_tdata_net[49 : 0];
  assign s_axis_data_tdata_net[15 : 0] = s_axis_data_tdata_real;
  transmitter_cic_compiler_v4_0_i0 transmitter_cic_compiler_v4_0_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(ce_logic_320)
    );

 endmodule



`timescale 1 ns / 10 ps
module  xlfir_compiler_86b7e45ed21ab6444043df9a1f43c31e (ce,ce_1280,ce_320,ce_logic_1280,clk,clk_1280,clk_320,clk_logic_1280,m_axis_data_tdata_path0,m_axis_data_tdata_path1,m_axis_data_tvalid,s_axis_data_tdata_path0,s_axis_data_tdata_path1,s_axis_data_tready,src_ce,src_clk);

input ce;
input ce_1280;
input ce_320;
input ce_logic_1280;
input clk;
input clk_1280;
input clk_320;
input clk_logic_1280;
output[30:0] m_axis_data_tdata_path0;
output[30:0] m_axis_data_tdata_path1;
output m_axis_data_tvalid;
input[15:0] s_axis_data_tdata_path0;
input[15:0] s_axis_data_tdata_path1;
output s_axis_data_tready;
input src_ce;
input src_clk;
wire[63:0] m_axis_data_tdata_net;
wire[30:0] m_axis_data_tdata_path1_ps_net;
wire[30:0] m_axis_data_tdata_path0_ps_net;
wire m_axis_data_tvalid_ps_net;
wire m_axis_data_tvalid_ps_net_captured;
wire m_axis_data_tvalid_ps_net_or_captured_net;
wire[31:0] s_axis_data_tdata_net;
  assign m_axis_data_tdata_path1_ps_net = m_axis_data_tdata_net[62 : 32];
  assign m_axis_data_tdata_path0_ps_net = m_axis_data_tdata_net[30 : 0];
  assign s_axis_data_tdata_net[31 : 16] = s_axis_data_tdata_path1;
  assign s_axis_data_tdata_net[15 : 0] = s_axis_data_tdata_path0;
  synth_reg_w_init # (.width(31),
                  .init_index(0),
                  .init_value('b0),
                  .latency(1))
m_axis_data_tdata_path1_ps_net_synchronizer (.i(m_axis_data_tdata_path1_ps_net),
             .ce(ce_320),
             .clr(1'b0),
             .clk(clk_320),
             .o(m_axis_data_tdata_path1));

  synth_reg_w_init # (.width(31),
                  .init_index(0),
                  .init_value('b0),
                  .latency(1))
m_axis_data_tdata_path0_ps_net_synchronizer (.i(m_axis_data_tdata_path0_ps_net),
             .ce(ce_320),
             .clr(1'b0),
             .clk(clk_320),
             .o(m_axis_data_tdata_path0));

  assign m_axis_data_tvalid_ps_net_or_captured_net = m_axis_data_tvalid_ps_net || m_axis_data_tvalid_ps_net_captured;
synth_reg_w_init # (
        .width (1),
        .init_index(0),
        .init_value(1'b0),
        .latency(1))
m_axis_data_tvalid_ps_net_synchronizer_1 (
        .i(m_axis_data_tvalid_ps_net_or_captured_net),
        .ce(ce_320),
        .clr(1'b0),
        .clk(clk_320), 
        .o(m_axis_data_tvalid)
    );
synth_reg_w_init # (
        .width(1),
        .init_index(0),
        .init_value(1'b0),
        .latency(1)
    )
m_axis_data_tvalid_ps_net_synchronizer_2 (
        .i(1'b1),
        .ce(m_axis_data_tvalid_ps_net),
        .clr(1'b0),
        .clk(clk_320), 
        .o(m_axis_data_tvalid_ps_net_captured)
    );

  transmitter_fir_compiler_v7_2_i0 transmitter_fir_compiler_v7_2_i0_instance(
      .aclk(clk),
      .aclken(ce),
      .m_axis_data_tdata(m_axis_data_tdata_net),
      .m_axis_data_tvalid(m_axis_data_tvalid_ps_net),
      .s_axis_data_tdata(s_axis_data_tdata_net),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tvalid(ce_logic_1280)
    );

 endmodule



