`ifndef xlConvPkgIncluded
`include "conv_pkg.v"
`endif

`timescale 1 ns / 10 ps
// Generated from Simulink block Model_V6_15022023/Transmitter/Interpolation/Interpolation
module transmitter_interpolation_x0 (
  input [16-1:0] s_re_tdata,
  input [16-1:0] s_im_tdata,
  input clk_1,
  input ce_1,
  input clk_320,
  input ce_320,
  output [16-1:0] m_re_tdata,
  output [16-1:0] m_im_tdata,
  output m_tvalid
);
  wire [58-1:0] shift_op_net;
  wire [58-1:0] shift1_op_net;
  wire [16-1:0] cmult_p_net;
  wire cic_compiler_4_0_m_axis_data_tvalid_net;
  wire clk_320_net;
  wire [16-1:0] convert_dout_net;
  wire ce_net;
  wire [16-1:0] cmult1_p_net;
  wire [16-1:0] convert1_dout_net;
  wire clk_net;
  wire ce_320_net;
  wire cic_compiler_4_0_s_axis_data_tready_net;
  wire [50-1:0] cic_compiler_4_0_m_axis_data_tdata_real_net;
  wire cic_compiler_4_0_1_s_axis_data_tready_net;
  wire cic_compiler_4_0_1_m_axis_data_tvalid_net;
  wire [50-1:0] cic_compiler_4_0_1_m_axis_data_tdata_real_net;
  assign m_re_tdata = cmult_p_net;
  assign m_im_tdata = cmult1_p_net;
  assign m_tvalid = cic_compiler_4_0_m_axis_data_tvalid_net;
  assign convert_dout_net = s_re_tdata;
  assign convert1_dout_net = s_im_tdata;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign clk_320_net = clk_320;
  assign ce_320_net = ce_320;
  xlcic_compiler_6c459c5334676148e74f3c5b9e8c6f47 cic_compiler_4_0 (
    .s_axis_data_tdata_real(convert_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .clk_320(clk_320_net),
    .ce_320(ce_320_net),
    .clk_logic_320(clk_320_net),
    .ce_logic_320(ce_320_net),
    .s_axis_data_tready(cic_compiler_4_0_s_axis_data_tready_net),
    .m_axis_data_tvalid(cic_compiler_4_0_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(cic_compiler_4_0_m_axis_data_tdata_real_net)
  );
  xlcic_compiler_6c459c5334676148e74f3c5b9e8c6f47 cic_compiler_4_0_1 (
    .s_axis_data_tdata_real(convert1_dout_net),
    .clk(clk_net),
    .ce(ce_net),
    .clk_320(clk_320_net),
    .ce_320(ce_320_net),
    .clk_logic_320(clk_320_net),
    .ce_logic_320(ce_320_net),
    .s_axis_data_tready(cic_compiler_4_0_1_s_axis_data_tready_net),
    .m_axis_data_tvalid(cic_compiler_4_0_1_m_axis_data_tvalid_net),
    .m_axis_data_tdata_real(cic_compiler_4_0_1_m_axis_data_tdata_real_net)
  );
  transmitter_xlcmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(56),
    .a_width(58),
    .b_bin_pt(15),
    .c_a_type(0),
    .c_a_width(58),
    .c_b_type(1),
    .c_b_width(16),
    .c_output_width(74),
    .core_name0("transmitter_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(16),
    .quantization(2),
    .zero_const(0)
  )
  cmult (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(shift_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(cmult_p_net)
  );
  transmitter_xlcmult #(
    .a_arith(`xlSigned),
    .a_bin_pt(56),
    .a_width(58),
    .b_bin_pt(15),
    .c_a_type(0),
    .c_a_width(58),
    .c_b_type(1),
    .c_b_width(16),
    .c_output_width(74),
    .core_name0("transmitter_mult_gen_v12_0_i0"),
    .extra_registers(0),
    .multsign(2),
    .overflow(2),
    .p_arith(`xlSigned),
    .p_bin_pt(15),
    .p_width(16),
    .quantization(2),
    .zero_const(0)
  )
  cmult1 (
    .clr(1'b0),
    .core_clr(1'b1),
    .en(1'b1),
    .rst(1'b0),
    .a(shift1_op_net),
    .clk(clk_net),
    .ce(ce_net),
    .core_clk(clk_net),
    .core_ce(ce_net),
    .p(cmult1_p_net)
  );
  sysgen_shift_be3eecc59a shift (
    .clr(1'b0),
    .ip(cic_compiler_4_0_m_axis_data_tdata_real_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(shift_op_net)
  );
  sysgen_shift_be3eecc59a shift1 (
    .clr(1'b0),
    .ip(cic_compiler_4_0_1_m_axis_data_tdata_real_net),
    .clk(clk_net),
    .ce(ce_net),
    .op(shift1_op_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Model_V6_15022023/Transmitter/Interpolation/Observer
module transmitter_observer (
  input [16-1:0] real_a,
  input [16-1:0] real_b,
  input [16-1:0] real_c,
  input [16-1:0] imag_a,
  input [16-1:0] imag_b,
  input [16-1:0] imag_c,
  input valid_a,
  input [32-1:0] control,
  input clk_1,
  input ce_1,
  input clk_320,
  input ce_320,
  input clk_1280,
  input ce_1280,
  output [34-1:0] op_data,
  output [1-1:0] op_valid
);
  wire [1-1:0] constant_op_net;
  wire [16-1:0] reinterpret3_output_port_net;
  wire [1-1:0] mux_valid_y_net;
  wire [16-1:0] convert_dout_net;
  wire [16-1:0] reinterpret2_output_port_net;
  wire [16-1:0] cmult_p_net;
  wire [16-1:0] cmult1_p_net;
  wire [16-1:0] convert1_dout_net;
  wire cic_compiler_4_0_m_axis_data_tvalid_net;
  wire [32-1:0] observation_point_net;
  wire [34-1:0] concat_y_net;
  wire src_clk_net;
  wire ce_320_net;
  wire ce_net;
  wire clk_320_net;
  wire clk_net;
  wire src_ce_net;
  wire [17-1:0] reinterpret1_output_port_net;
  wire [17-1:0] reinterpret_output_port_net;
  wire [1-1:0] constant1_op_net;
  wire [16-1:0] up_sample2_q_net;
  wire [2-1:0] slice_y_net;
  wire [1-1:0] up_sample9_q_net;
  wire [17-1:0] mux_re_y_net;
  wire [16-1:0] up_sample5_q_net;
  wire [17-1:0] mux_im_y_net;
  wire [16-1:0] up_sample1_q_net;
  wire [1-1:0] up_sample3_q_net;
  wire [16-1:0] up_sample4_q_net;
  assign op_data = concat_y_net;
  assign op_valid = mux_valid_y_net;
  assign cmult_p_net = real_a;
  assign convert_dout_net = real_b;
  assign reinterpret2_output_port_net = real_c;
  assign cmult1_p_net = imag_a;
  assign convert1_dout_net = imag_b;
  assign reinterpret3_output_port_net = imag_c;
  assign cic_compiler_4_0_m_axis_data_tvalid_net = valid_a;
  assign observation_point_net = control;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign clk_320_net = clk_320;
  assign ce_320_net = ce_320;
  assign src_clk_net = clk_1280;
  assign src_ce_net = ce_1280;
  sysgen_concat_aecfb75ec1 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret1_output_port_net),
    .in1(reinterpret_output_port_net),
    .y(concat_y_net)
  );
  sysgen_constant_01cc029cd7 constant (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant_op_net)
  );
  sysgen_constant_01cc029cd7 constant1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .op(constant1_op_net)
  );
  sysgen_mux_ca22f16a2d mux_im (
    .clr(1'b0),
    .sel(slice_y_net),
    .d0(up_sample1_q_net),
    .d1(up_sample4_q_net),
    .d2(cmult1_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_im_y_net)
  );
  sysgen_mux_ca22f16a2d mux_re (
    .clr(1'b0),
    .sel(slice_y_net),
    .d0(up_sample2_q_net),
    .d1(up_sample5_q_net),
    .d2(cmult_p_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_re_y_net)
  );
  sysgen_mux_6102dda336 mux_valid (
    .clr(1'b0),
    .sel(slice_y_net),
    .d0(up_sample9_q_net),
    .d1(up_sample3_q_net),
    .d2(cic_compiler_4_0_m_axis_data_tvalid_net),
    .clk(clk_net),
    .ce(ce_net),
    .y(mux_valid_y_net)
  );
  sysgen_reinterpret_1effecd207 reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(mux_re_y_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_1effecd207 reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(mux_im_y_net),
    .output_port(reinterpret1_output_port_net)
  );
  transmitter_xlslice #(
    .new_lsb(0),
    .new_msb(1),
    .x_width(32),
    .y_width(2)
  )
  slice (
    .x(observation_point_net),
    .y(slice_y_net)
  );
  transmitter_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(14),
    .d_width(16),
    .latency(0),
    .q_arith(`xlSigned),
    .q_bin_pt(14),
    .q_width(16)
  )
  up_sample1 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(reinterpret3_output_port_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample1_q_net)
  );
  transmitter_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(14),
    .d_width(16),
    .latency(0),
    .q_arith(`xlSigned),
    .q_bin_pt(14),
    .q_width(16)
  )
  up_sample2 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(reinterpret2_output_port_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample2_q_net)
  );
  transmitter_xlusamp #(
    .copy_samples(0),
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(1),
    .latency(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(1)
  )
  up_sample3 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(constant1_op_net),
    .src_clk(clk_320_net),
    .src_ce(ce_320_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample3_q_net)
  );
  transmitter_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(16),
    .latency(0),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(16)
  )
  up_sample4 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert1_dout_net),
    .src_clk(clk_320_net),
    .src_ce(ce_320_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample4_q_net)
  );
  transmitter_xlusamp #(
    .copy_samples(1),
    .d_arith(`xlSigned),
    .d_bin_pt(15),
    .d_width(16),
    .latency(0),
    .q_arith(`xlSigned),
    .q_bin_pt(15),
    .q_width(16)
  )
  up_sample5 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(convert_dout_net),
    .src_clk(clk_320_net),
    .src_ce(ce_320_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample5_q_net)
  );
  transmitter_xlusamp #(
    .copy_samples(0),
    .d_arith(`xlUnsigned),
    .d_bin_pt(0),
    .d_width(1),
    .latency(0),
    .q_arith(`xlUnsigned),
    .q_bin_pt(0),
    .q_width(1)
  )
  up_sample9 (
    .src_clr(1'b0),
    .dest_clr(1'b0),
    .en(1'b1),
    .d(constant_op_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .dest_clk(clk_net),
    .dest_ce(ce_net),
    .q(up_sample9_q_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Model_V6_15022023/Transmitter/Interpolation/RRC
module transmitter_rrc (
  input [16-1:0] s_re_tdata,
  input [16-1:0] s_im_tdata,
  input clk_1,
  input ce_1,
  input clk_320,
  input ce_320,
  input clk_1280,
  input ce_1280,
  output [16-1:0] m_re_tdata,
  output [16-1:0] m_im_tdata
);
  wire src_clk_net;
  wire src_ce_net;
  wire clk_320_net;
  wire [31-1:0] fir_compiler_7_2_m_axis_data_tdata_path1_net;
  wire ce_320_net;
  wire [16-1:0] convert_dout_net;
  wire [16-1:0] convert1_dout_net;
  wire [16-1:0] reinterpret3_output_port_net;
  wire clk_net;
  wire ce_net;
  wire [16-1:0] reinterpret2_output_port_net;
  wire [31-1:0] fir_compiler_7_2_m_axis_data_tdata_path0_net;
  wire fir_compiler_7_2_s_axis_data_tready_net;
  wire fir_compiler_7_2_m_axis_data_tvalid_net;
  assign m_re_tdata = convert_dout_net;
  assign m_im_tdata = convert1_dout_net;
  assign reinterpret2_output_port_net = s_re_tdata;
  assign reinterpret3_output_port_net = s_im_tdata;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign clk_320_net = clk_320;
  assign ce_320_net = ce_320;
  assign src_clk_net = clk_1280;
  assign src_ce_net = ce_1280;
  transmitter_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(28),
    .din_width(31),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlRound)
  )
  convert (
    .clr(1'b0),
    .en(1'b1),
    .din(fir_compiler_7_2_m_axis_data_tdata_path1_net),
    .clk(clk_320_net),
    .ce(ce_320_net),
    .dout(convert_dout_net)
  );
  transmitter_xlconvert #(
    .bool_conversion(0),
    .din_arith(2),
    .din_bin_pt(28),
    .din_width(31),
    .dout_arith(2),
    .dout_bin_pt(15),
    .dout_width(16),
    .latency(0),
    .overflow(`xlSaturate),
    .quantization(`xlRound)
  )
  convert1 (
    .clr(1'b0),
    .en(1'b1),
    .din(fir_compiler_7_2_m_axis_data_tdata_path0_net),
    .clk(clk_320_net),
    .ce(ce_320_net),
    .dout(convert1_dout_net)
  );
  xlfir_compiler_86b7e45ed21ab6444043df9a1f43c31e fir_compiler_7_2 (
    .s_axis_data_tdata_path1(reinterpret2_output_port_net),
    .s_axis_data_tdata_path0(reinterpret3_output_port_net),
    .src_clk(src_clk_net),
    .src_ce(src_ce_net),
    .clk(clk_net),
    .ce(ce_net),
    .clk_320(clk_320_net),
    .ce_320(ce_320_net),
    .clk_1280(src_clk_net),
    .ce_1280(src_ce_net),
    .clk_logic_1280(src_clk_net),
    .ce_logic_1280(src_ce_net),
    .s_axis_data_tready(fir_compiler_7_2_s_axis_data_tready_net),
    .m_axis_data_tvalid(fir_compiler_7_2_m_axis_data_tvalid_net),
    .m_axis_data_tdata_path1(fir_compiler_7_2_m_axis_data_tdata_path1_net),
    .m_axis_data_tdata_path0(fir_compiler_7_2_m_axis_data_tdata_path0_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Model_V6_15022023/Transmitter/Interpolation
module transmitter_interpolation (
  input [32-1:0] s_tdata,
  input [32-1:0] observation,
  input clk_1,
  input ce_1,
  input clk_320,
  input ce_320,
  input clk_1280,
  input ce_1280,
  output [32-1:0] m_tdata,
  output m_tvalid,
  output [34-1:0] m_op_data,
  output [1-1:0] m_op_valid,
  output [16-1:0] imag_c,
  output [16-1:0] imag_b,
  output [16-1:0] imag_a,
  output [16-1:0] real_c,
  output [16-1:0] real_b,
  output [16-1:0] real_a
);
  wire [32-1:0] concat_y_net_x0;
  wire [16-1:0] convert1_dout_net;
  wire [16-1:0] cmult_p_net;
  wire [16-1:0] convert_dout_net;
  wire [16-1:0] cmult1_p_net;
  wire [32-1:0] observation_point_net;
  wire ce_net;
  wire [34-1:0] concat_y_net;
  wire [1-1:0] mux_valid_y_net;
  wire [16-1:0] reinterpret3_output_port_net;
  wire [16-1:0] reinterpret2_output_port_net;
  wire cic_compiler_4_0_m_axis_data_tvalid_net;
  wire clk_net;
  wire [32-1:0] s_axis_tdata_net;
  wire clk_320_net;
  wire ce_320_net;
  wire src_clk_net;
  wire src_ce_net;
  wire [16-1:0] reinterpret1_output_port_net;
  wire [16-1:0] imag_slice_y_net;
  wire [16-1:0] reinterpret_output_port_net;
  wire [16-1:0] real_slice_y_net;
  assign m_tdata = concat_y_net_x0;
  assign m_tvalid = cic_compiler_4_0_m_axis_data_tvalid_net;
  assign m_op_data = concat_y_net;
  assign m_op_valid = mux_valid_y_net;
  assign imag_c = reinterpret3_output_port_net;
  assign imag_b = convert1_dout_net;
  assign imag_a = cmult1_p_net;
  assign real_c = reinterpret2_output_port_net;
  assign real_b = convert_dout_net;
  assign real_a = cmult_p_net;
  assign s_axis_tdata_net = s_tdata;
  assign observation_point_net = observation;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign clk_320_net = clk_320;
  assign ce_320_net = ce_320;
  assign src_clk_net = clk_1280;
  assign src_ce_net = ce_1280;
  transmitter_interpolation_x0 interpolation (
    .s_re_tdata(convert_dout_net),
    .s_im_tdata(convert1_dout_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_320(clk_320_net),
    .ce_320(ce_320_net),
    .m_re_tdata(cmult_p_net),
    .m_im_tdata(cmult1_p_net),
    .m_tvalid(cic_compiler_4_0_m_axis_data_tvalid_net)
  );
  transmitter_observer observer (
    .real_a(cmult_p_net),
    .real_b(convert_dout_net),
    .real_c(reinterpret2_output_port_net),
    .imag_a(cmult1_p_net),
    .imag_b(convert1_dout_net),
    .imag_c(reinterpret3_output_port_net),
    .valid_a(cic_compiler_4_0_m_axis_data_tvalid_net),
    .control(observation_point_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_320(clk_320_net),
    .ce_320(ce_320_net),
    .clk_1280(src_clk_net),
    .ce_1280(src_ce_net),
    .op_data(concat_y_net),
    .op_valid(mux_valid_y_net)
  );
  transmitter_rrc rrc (
    .s_re_tdata(reinterpret2_output_port_net),
    .s_im_tdata(reinterpret3_output_port_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_320(clk_320_net),
    .ce_320(ce_320_net),
    .clk_1280(src_clk_net),
    .ce_1280(src_ce_net),
    .m_re_tdata(convert_dout_net),
    .m_im_tdata(convert1_dout_net)
  );
  sysgen_concat_91e2fb1ab4 concat (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .in0(reinterpret1_output_port_net),
    .in1(reinterpret_output_port_net),
    .y(concat_y_net_x0)
  );
  transmitter_xlslice #(
    .new_lsb(16),
    .new_msb(31),
    .x_width(32),
    .y_width(16)
  )
  imag_slice_x0 (
    .x(s_axis_tdata_net),
    .y(imag_slice_y_net)
  );
  transmitter_xlslice #(
    .new_lsb(0),
    .new_msb(15),
    .x_width(32),
    .y_width(16)
  )
  real_slice_x0 (
    .x(s_axis_tdata_net),
    .y(real_slice_y_net)
  );
  sysgen_reinterpret_c933ba2fbe reinterpret (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cmult1_p_net),
    .output_port(reinterpret_output_port_net)
  );
  sysgen_reinterpret_c933ba2fbe reinterpret1 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(cmult_p_net),
    .output_port(reinterpret1_output_port_net)
  );
  sysgen_reinterpret_25cee5ac77 reinterpret2 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(real_slice_y_net),
    .output_port(reinterpret2_output_port_net)
  );
  sysgen_reinterpret_25cee5ac77 reinterpret3 (
    .clk(1'b0),
    .ce(1'b0),
    .clr(1'b0),
    .input_port(imag_slice_y_net),
    .output_port(reinterpret3_output_port_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Model_V6_15022023/Transmitter/config
module transmitter_config (
  input [1-1:0] enable_tx_in,
  input [16-1:0] modulation_in,
  input [32-1:0] observation_point,
  input [1-1:0] enable_data_in
);
  wire [1-1:0] enable_tx_in_net;
  wire [32-1:0] observation_point_net;
  wire [16-1:0] modulation_in_net;
  wire [1-1:0] enable_data_in_net;
  assign enable_tx_in_net = enable_tx_in;
  assign modulation_in_net = modulation_in;
  assign observation_point_net = observation_point;
  assign enable_data_in_net = enable_data_in;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Model_V6_15022023/Transmitter/s_axis_data
module transmitter_s_axis_data (
  input [1-1:0] m_axis_data_tready,
  input [8-1:0] s_axis_data_tdata,
  input [1-1:0] s_axis_data_tlast,
  input [1-1:0] s_axis_data_tvalid
);
  wire [1-1:0] m_axis_data_tready_net;
  wire [8-1:0] s_axis_data_tdata_net;
  wire [1-1:0] s_axis_data_tvalid_net;
  wire [1-1:0] s_axis_data_tlast_net;
  assign m_axis_data_tready_net = m_axis_data_tready;
  assign s_axis_data_tdata_net = s_axis_data_tdata;
  assign s_axis_data_tlast_net = s_axis_data_tlast;
  assign s_axis_data_tvalid_net = s_axis_data_tvalid;
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block Model_V6_15022023/Transmitter_struct
module transmitter_struct (
  input [1-1:0] m_axis_tready,
  input [32-1:0] s_axis_tdata,
  input [1-1:0] s_axis_tvalid,
  input [1-1:0] enable_tx_in,
  input [16-1:0] modulation_in,
  input [32-1:0] observation_point,
  input [1-1:0] enable_data_in,
  input [1-1:0] m_axis_data_tready,
  input [8-1:0] s_axis_data_tdata,
  input [1-1:0] s_axis_data_tlast,
  input [1-1:0] s_axis_data_tvalid,
  input clk_1,
  input ce_1,
  input clk_320,
  input ce_320,
  input clk_1280,
  input ce_1280,
  output [34-1:0] m_axis_op_tdata,
  output [1-1:0] m_axis_op_tvalid,
  output [32-1:0] m_axis_tdata,
  output [1-1:0] m_axis_tvalid,
  output [16-1:0] m_axis_sim_op_1,
  output [16-1:0] m_axis_sim_op_2,
  output [16-1:0] m_axis_sim_op_3,
  output [16-1:0] m_axis_sim_op_4,
  output [16-1:0] m_axis_sim_op_5,
  output [16-1:0] m_axis_sim_op_6,
  output [16-1:0] modulation_out,
  output [1-1:0] enable_tx_out,
  output [1-1:0] enable_data_out,
  output [8-1:0] m_axis_data_tdata,
  output [1-1:0] m_axis_data_tvalid,
  output [1-1:0] s_axis_data_tready,
  output [1-1:0] m_axis_data_tlast
);
  wire [1-1:0] enable_data_in_net;
  wire [8-1:0] s_axis_data_tdata_net;
  wire [1-1:0] s_axis_data_tvalid_net;
  wire [1-1:0] m_axis_data_tready_net;
  wire [1-1:0] s_axis_data_tlast_net;
  wire clk_net;
  wire clk_320_net;
  wire ce_320_net;
  wire ce_net;
  wire src_clk_net;
  wire src_ce_net;
  wire [16-1:0] convert1_dout_net;
  wire [32-1:0] observation_point_net;
  wire [16-1:0] reinterpret3_output_port_net;
  wire [1-1:0] enable_tx_in_net;
  wire [1-1:0] s_axis_tvalid_net;
  wire [16-1:0] modulation_in_net;
  wire [1-1:0] mux_valid_y_net;
  wire [32-1:0] concat_y_net;
  wire [1-1:0] m_axis_tready_net;
  wire [1-1:0] cic_compiler_4_0_m_axis_data_tvalid_net;
  wire [34-1:0] concat_y_net_x0;
  wire [16-1:0] cmult_p_net;
  wire [32-1:0] s_axis_tdata_net;
  wire [16-1:0] convert_dout_net;
  wire [16-1:0] reinterpret2_output_port_net;
  wire [16-1:0] cmult1_p_net;
  assign m_axis_op_tdata = concat_y_net_x0;
  assign m_axis_op_tvalid = mux_valid_y_net;
  assign m_axis_tdata = concat_y_net;
  assign m_axis_tready_net = m_axis_tready;
  assign m_axis_tvalid = cic_compiler_4_0_m_axis_data_tvalid_net;
  assign s_axis_tdata_net = s_axis_tdata;
  assign m_axis_sim_op_1 = cmult_p_net;
  assign m_axis_sim_op_2 = convert_dout_net;
  assign m_axis_sim_op_3 = reinterpret2_output_port_net;
  assign m_axis_sim_op_4 = cmult1_p_net;
  assign m_axis_sim_op_5 = convert1_dout_net;
  assign m_axis_sim_op_6 = reinterpret3_output_port_net;
  assign s_axis_tvalid_net = s_axis_tvalid;
  assign modulation_out = modulation_in_net;
  assign enable_tx_in_net = enable_tx_in;
  assign modulation_in_net = modulation_in;
  assign enable_tx_out = enable_tx_in_net;
  assign observation_point_net = observation_point;
  assign enable_data_in_net = enable_data_in;
  assign enable_data_out = enable_data_in_net;
  assign m_axis_data_tdata = s_axis_data_tdata_net;
  assign m_axis_data_tready_net = m_axis_data_tready;
  assign m_axis_data_tvalid = s_axis_data_tvalid_net;
  assign s_axis_data_tdata_net = s_axis_data_tdata;
  assign s_axis_data_tlast_net = s_axis_data_tlast;
  assign s_axis_data_tready = m_axis_data_tready_net;
  assign s_axis_data_tvalid_net = s_axis_data_tvalid;
  assign m_axis_data_tlast = s_axis_data_tlast_net;
  assign clk_net = clk_1;
  assign ce_net = ce_1;
  assign clk_320_net = clk_320;
  assign ce_320_net = ce_320;
  assign src_clk_net = clk_1280;
  assign src_ce_net = ce_1280;
  transmitter_interpolation interpolation (
    .s_tdata(s_axis_tdata_net),
    .observation(observation_point_net),
    .clk_1(clk_net),
    .ce_1(ce_net),
    .clk_320(clk_320_net),
    .ce_320(ce_320_net),
    .clk_1280(src_clk_net),
    .ce_1280(src_ce_net),
    .m_tdata(concat_y_net),
    .m_tvalid(cic_compiler_4_0_m_axis_data_tvalid_net),
    .m_op_data(concat_y_net_x0),
    .m_op_valid(mux_valid_y_net),
    .imag_c(reinterpret3_output_port_net),
    .imag_b(convert1_dout_net),
    .imag_a(cmult1_p_net),
    .real_c(reinterpret2_output_port_net),
    .real_b(convert_dout_net),
    .real_a(cmult_p_net)
  );
  transmitter_config config_x0 (
    .enable_tx_in(enable_tx_in_net),
    .modulation_in(modulation_in_net),
    .observation_point(observation_point_net),
    .enable_data_in(enable_data_in_net)
  );
  transmitter_s_axis_data s_axis_data (
    .m_axis_data_tready(m_axis_data_tready_net),
    .s_axis_data_tdata(s_axis_data_tdata_net),
    .s_axis_data_tlast(s_axis_data_tlast_net),
    .s_axis_data_tvalid(s_axis_data_tvalid_net)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
module transmitter_default_clock_driver (
  input transmitter_sysclk,
  input transmitter_sysce,
  input transmitter_sysclr,
  output transmitter_clk1,
  output transmitter_ce1,
  output transmitter_clk320,
  output transmitter_ce320,
  output transmitter_clk1280,
  output transmitter_ce1280
);
  xlclockdriver #(
    .period(1),
    .log_2_period(1)
  )
  clockdriver_x1 (
    .sysclk(transmitter_sysclk),
    .sysce(transmitter_sysce),
    .sysclr(transmitter_sysclr),
    .clk(transmitter_clk1),
    .ce(transmitter_ce1)
  );
  xlclockdriver #(
    .period(320),
    .log_2_period(9)
  )
  clockdriver_x0 (
    .sysclk(transmitter_sysclk),
    .sysce(transmitter_sysce),
    .sysclr(transmitter_sysclr),
    .clk(transmitter_clk320),
    .ce(transmitter_ce320)
  );
  xlclockdriver #(
    .period(1280),
    .log_2_period(11)
  )
  clockdriver (
    .sysclk(transmitter_sysclk),
    .sysce(transmitter_sysce),
    .sysclr(transmitter_sysclr),
    .clk(transmitter_clk1280),
    .ce(transmitter_ce1280)
  );
endmodule
`timescale 1 ns / 10 ps
// Generated from Simulink block 
(* core_generation_info = "transmitter,sysgen_core_2022_1,{,compilation=IP Catalog,block_icon_display=Default,family=zynquplusRFSOC,part=xczu28dr,speed=-2-e,package=ffvg1517,synthesis_language=verilog,hdl_library=xil_defaultlib,synthesis_strategy=Vivado Synthesis Defaults,implementation_strategy=Vivado Implementation Defaults,testbench=0,interface_doc=0,ce_clr=0,clock_period=7.8125,system_simulink_period=7.8125e-09,waveform_viewer=0,axilite_interface=1,ip_catalog_plugin=0,hwcosim_burst_mode=0,simulation_time=0.00125,cic_compiler_v4_0=2,cmult=2,concat=2,constant=2,convert=2,fir_compiler_v7_2=1,mux=3,reinterpret=6,shift=2,slice=3,usamp=6,}" *)
module transmitter (
  input [1-1:0] m_axis_tready,
  input [32-1:0] s_axis_tdata,
  input [1-1:0] s_axis_tvalid,
  input [1-1:0] m_axis_data_tready,
  input [8-1:0] s_axis_data_tdata,
  input [1-1:0] s_axis_data_tlast,
  input [1-1:0] s_axis_data_tvalid,
  input clk,
  input transmitter_aresetn,
  input [4-1:0] transmitter_s_axi_awaddr,
  input transmitter_s_axi_awvalid,
  input [32-1:0] transmitter_s_axi_wdata,
  input [4-1:0] transmitter_s_axi_wstrb,
  input transmitter_s_axi_wvalid,
  input transmitter_s_axi_bready,
  input [4-1:0] transmitter_s_axi_araddr,
  input transmitter_s_axi_arvalid,
  input transmitter_s_axi_rready,
  output [34-1:0] m_axis_op_tdata,
  output [1-1:0] m_axis_op_tvalid,
  output [32-1:0] m_axis_tdata,
  output [1-1:0] m_axis_tvalid,
  output [16-1:0] m_axis_sim_op_1,
  output [16-1:0] m_axis_sim_op_2,
  output [16-1:0] m_axis_sim_op_3,
  output [16-1:0] m_axis_sim_op_4,
  output [16-1:0] m_axis_sim_op_5,
  output [16-1:0] m_axis_sim_op_6,
  output [16-1:0] modulation_out,
  output [1-1:0] enable_tx_out,
  output [1-1:0] enable_data_out,
  output [8-1:0] m_axis_data_tdata,
  output [1-1:0] m_axis_data_tvalid,
  output [1-1:0] s_axis_data_tready,
  output [1-1:0] m_axis_data_tlast,
  output transmitter_s_axi_awready,
  output transmitter_s_axi_wready,
  output [2-1:0] transmitter_s_axi_bresp,
  output transmitter_s_axi_bvalid,
  output transmitter_s_axi_arready,
  output [32-1:0] transmitter_s_axi_rdata,
  output [2-1:0] transmitter_s_axi_rresp,
  output transmitter_s_axi_rvalid
);
  wire [1-1:0] enable_tx_in;
  wire clk_320_net;
  wire ce_320_net;
  wire clk_1280_net;
  wire clk_1_net;
  wire [1-1:0] enable_data_in;
  wire [32-1:0] observation_point;
  wire ce_1_net;
  wire ce_1280_net;
  wire clk_net;
  wire [16-1:0] modulation_in;
  transmitter_axi_lite_interface transmitter_axi_lite_interface (
    .transmitter_s_axi_awaddr(transmitter_s_axi_awaddr),
    .transmitter_s_axi_awvalid(transmitter_s_axi_awvalid),
    .transmitter_s_axi_wdata(transmitter_s_axi_wdata),
    .transmitter_s_axi_wstrb(transmitter_s_axi_wstrb),
    .transmitter_s_axi_wvalid(transmitter_s_axi_wvalid),
    .transmitter_s_axi_bready(transmitter_s_axi_bready),
    .transmitter_s_axi_araddr(transmitter_s_axi_araddr),
    .transmitter_s_axi_arvalid(transmitter_s_axi_arvalid),
    .transmitter_s_axi_rready(transmitter_s_axi_rready),
    .transmitter_aresetn(transmitter_aresetn),
    .transmitter_aclk(clk),
    .enable_data_in(enable_data_in),
    .observation_point(observation_point),
    .modulation_in(modulation_in),
    .enable_tx_in(enable_tx_in),
    .transmitter_s_axi_awready(transmitter_s_axi_awready),
    .transmitter_s_axi_wready(transmitter_s_axi_wready),
    .transmitter_s_axi_bresp(transmitter_s_axi_bresp),
    .transmitter_s_axi_bvalid(transmitter_s_axi_bvalid),
    .transmitter_s_axi_arready(transmitter_s_axi_arready),
    .transmitter_s_axi_rdata(transmitter_s_axi_rdata),
    .transmitter_s_axi_rresp(transmitter_s_axi_rresp),
    .transmitter_s_axi_rvalid(transmitter_s_axi_rvalid),
    .clk(clk_net)
  );
  transmitter_default_clock_driver transmitter_default_clock_driver (
    .transmitter_sysclk(clk_net),
    .transmitter_sysce(1'b1),
    .transmitter_sysclr(1'b0),
    .transmitter_clk1(clk_1_net),
    .transmitter_ce1(ce_1_net),
    .transmitter_clk320(clk_320_net),
    .transmitter_ce320(ce_320_net),
    .transmitter_clk1280(clk_1280_net),
    .transmitter_ce1280(ce_1280_net)
  );
  transmitter_struct transmitter_struct (
    .m_axis_tready(m_axis_tready),
    .s_axis_tdata(s_axis_tdata),
    .s_axis_tvalid(s_axis_tvalid),
    .enable_tx_in(enable_tx_in),
    .modulation_in(modulation_in),
    .observation_point(observation_point),
    .enable_data_in(enable_data_in),
    .m_axis_data_tready(m_axis_data_tready),
    .s_axis_data_tdata(s_axis_data_tdata),
    .s_axis_data_tlast(s_axis_data_tlast),
    .s_axis_data_tvalid(s_axis_data_tvalid),
    .clk_1(clk_1_net),
    .ce_1(ce_1_net),
    .clk_320(clk_320_net),
    .ce_320(ce_320_net),
    .clk_1280(clk_1280_net),
    .ce_1280(ce_1280_net),
    .m_axis_op_tdata(m_axis_op_tdata),
    .m_axis_op_tvalid(m_axis_op_tvalid),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_sim_op_1(m_axis_sim_op_1),
    .m_axis_sim_op_2(m_axis_sim_op_2),
    .m_axis_sim_op_3(m_axis_sim_op_3),
    .m_axis_sim_op_4(m_axis_sim_op_4),
    .m_axis_sim_op_5(m_axis_sim_op_5),
    .m_axis_sim_op_6(m_axis_sim_op_6),
    .modulation_out(modulation_out),
    .enable_tx_out(enable_tx_out),
    .enable_data_out(enable_data_out),
    .m_axis_data_tdata(m_axis_data_tdata),
    .m_axis_data_tvalid(m_axis_data_tvalid),
    .s_axis_data_tready(s_axis_data_tready),
    .m_axis_data_tlast(m_axis_data_tlast)
  );
endmodule
