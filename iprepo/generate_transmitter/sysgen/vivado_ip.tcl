#-----------------------------------------------------------------
# System Generator version 2022.1 IP Tcl source file.
#
# Copyright(C) 2022 by Xilinx, Inc.  All rights reserved.  This
# text/file contains proprietary, confidential information of Xilinx,
# Inc., is distributed under license from Xilinx, Inc., and may be used,
# copied and/or disclosed only pursuant to the terms of a valid license
# agreement with Xilinx, Inc.  Xilinx hereby grants you a license to use
# this text/file solely for design, simulation, implementation and
# creation of design files limited to Xilinx devices or technologies.
# Use with non-Xilinx devices or technologies is expressly prohibited
# and immediately terminates your license unless covered by a separate
# agreement.
#
# Xilinx is providing this design, code, or information "as is" solely
# for use in developing programs and solutions for Xilinx devices.  By
# providing this design, code, or information as one possible
# implementation of this feature, application or standard, Xilinx is
# making no representation that this implementation is free from any
# claims of infringement.  You are responsible for obtaining any rights
# you may require for your implementation.  Xilinx expressly disclaims
# any warranty whatsoever with respect to the adequacy of the
# implementation, including but not limited to warranties of
# merchantability or fitness for a particular purpose.
#
# Xilinx products are not intended for use in life support appliances,
# devices, or systems.  Use in such applications is expressly prohibited.
#
# Any modifications that are made to the source code are done at the user's
# sole risk and will be unsupported.
#
# This copyright and support notice must be retained as part of this
# text at all times.  (c) Copyright 1995-2022 Xilinx, Inc.  All rights
# reserved.
#-----------------------------------------------------------------

set existingipslist [get_ips]
if {[lsearch $existingipslist transmitter_cic_compiler_v4_0_i0] < 0} {
create_ip -name cic_compiler -version 4.0 -vendor xilinx.com -library ip -module_name transmitter_cic_compiler_v4_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {transmitter_cic_compiler_v4_0_i0}
lappend params_list CONFIG.Clock_Frequency {200.0}
lappend params_list CONFIG.Differential_Delay {1}
lappend params_list CONFIG.Filter_Type {Interpolation}
lappend params_list CONFIG.Fixed_Or_Initial_Rate {320}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.HAS_ACLKEN {true}
lappend params_list CONFIG.HAS_ARESETN {false}
lappend params_list CONFIG.HAS_DOUT_TREADY {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Input_Data_Width {16}
lappend params_list CONFIG.Input_Sample_Frequency {0.001}
lappend params_list CONFIG.Maximum_Rate {320}
lappend params_list CONFIG.Minimum_Rate {320}
lappend params_list CONFIG.Number_Of_Channels {1}
lappend params_list CONFIG.Number_Of_Stages {5}
lappend params_list CONFIG.Output_Data_Width {50}
lappend params_list CONFIG.Passband_Max {0.5}
lappend params_list CONFIG.Passband_Min {0.0}
lappend params_list CONFIG.Quantization {Full_Precision}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Response_Magnitude {Normalized}
lappend params_list CONFIG.SamplePeriod {320}
lappend params_list CONFIG.Sample_Rate_Changes {Fixed}
lappend params_list CONFIG.Stopband_Max {1.0}
lappend params_list CONFIG.Stopband_Min {0.5}
lappend params_list CONFIG.Use_Streaming_Interface {true}
lappend params_list CONFIG.Use_Xtreme_DSP_Slice {true}

set_property -dict $params_list [get_ips transmitter_cic_compiler_v4_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist transmitter_mult_gen_v12_0_i0] < 0} {
create_ip -name mult_gen -version 12.0 -vendor xilinx.com -library ip -module_name transmitter_mult_gen_v12_0_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {transmitter_mult_gen_v12_0_i0}
lappend params_list CONFIG.ccmimp {Distributed_Memory}
lappend params_list CONFIG.clockenable {true}
lappend params_list CONFIG.constvalue {26844}
lappend params_list CONFIG.internaluser {0}
lappend params_list CONFIG.multtype {Constant_Coefficient_Multiplier}
lappend params_list CONFIG.outputwidthhigh {73}
lappend params_list CONFIG.outputwidthlow {0}
lappend params_list CONFIG.pipestages {1}
lappend params_list CONFIG.portatype {Signed}
lappend params_list CONFIG.portawidth {58}
lappend params_list CONFIG.portbtype {Unsigned}
lappend params_list CONFIG.portbwidth {16}
lappend params_list CONFIG.syncclear {true}
lappend params_list CONFIG.use_custom_output_width {true}

set_property -dict $params_list [get_ips transmitter_mult_gen_v12_0_i0]
}


set existingipslist [get_ips]
if {[lsearch $existingipslist transmitter_fir_compiler_v7_2_i0] < 0} {
create_ip -name fir_compiler -version 7.2 -vendor xilinx.com -library ip -module_name transmitter_fir_compiler_v7_2_i0
set params_list [list]
lappend params_list CONFIG.Component_Name {transmitter_fir_compiler_v7_2_i0}
lappend params_list CONFIG.BestPrecision {true}
lappend params_list CONFIG.Blank_Output {false}
lappend params_list CONFIG.Channel_Sequence {Basic}
lappend params_list CONFIG.Clock_Frequency {300.0}
lappend params_list CONFIG.CoefficientSource {Vector}
lappend params_list CONFIG.CoefficientVector {binary:178816C377E57CBF105D3A6C7E2586BF89522AD1B7DC66BF1A5BE47FC915893F9153650528E5943F32D94BE531A5833F23580AE3E42E92BFA8D0F42F7A4DA5BF6302563136CAA2BF56D90C69FE36783F4520B323A476B03FACCF2BC2AACBB73F2F3D86774DE6AA3F91C08051EAF2ABBF91E8F65DE8ADC5BF4BF8A502EC56C9BFD35819C9A467B0BFC49458D7A067CE3FF1451B41ADE2E33F83BC1D443D2DEE3F2172721BCC17F13F83BC1D443D2DEE3FF1451B41ADE2E33FC49458D7A067CE3FD35819C9A467B0BF4BF8A502EC56C9BF91E8F65DE8ADC5BF91C08051EAF2ABBF2F3D86774DE6AA3FACCF2BC2AACBB73F4520B323A476B03F56D90C69FE36783F6302563136CAA2BFA8D0F42F7A4DA5BF23580AE3E42E92BF32D94BE531A5833F9153650528E5943F1A5BE47FC915893F89522AD1B7DC66BF105D3A6C7E2586BF178816C377E57CBF}
lappend params_list CONFIG.Coefficient_Buffer_Type {Automatic}
lappend params_list CONFIG.Coefficient_Fanout {false}
lappend params_list CONFIG.Coefficient_File {no_coe_file_loaded}
lappend params_list CONFIG.Coefficient_Fractional_Bits {14}
lappend params_list CONFIG.Coefficient_Reload {false}
lappend params_list CONFIG.Coefficient_Sets {1}
lappend params_list CONFIG.Coefficient_Sign {Signed}
lappend params_list CONFIG.Coefficient_Structure {Inferred}
lappend params_list CONFIG.Coefficient_Width {16}
lappend params_list CONFIG.ColumnConfig {1}
lappend params_list CONFIG.Control_Broadcast_Fanout {false}
lappend params_list CONFIG.Control_Column_Fanout {false}
lappend params_list CONFIG.Control_LUT_Pipeline {false}
lappend params_list CONFIG.Control_Path_Fanout {false}
lappend params_list CONFIG.DATA_Has_TLAST {Not_Required}
lappend params_list CONFIG.DATA_TUSER_Width {1}
lappend params_list CONFIG.Data_Buffer_Type {Automatic}
lappend params_list CONFIG.Data_Fractional_Bits {14}
lappend params_list CONFIG.Data_Path_Broadcast {false}
lappend params_list CONFIG.Data_Path_Fanout {false}
lappend params_list CONFIG.Data_Sign {Signed}
lappend params_list CONFIG.Data_Width {16}
lappend params_list CONFIG.Decimation_Rate {1}
lappend params_list CONFIG.Disable_Half_Band_Centre_Tap {false}
lappend params_list CONFIG.DisplayReloadOrder {false}
lappend params_list CONFIG.Filter_Architecture {Systolic_Multiply_Accumulate}
lappend params_list CONFIG.Filter_Selection {1}
lappend params_list CONFIG.Filter_Type {Interpolation}
lappend params_list CONFIG.GUI_Behaviour {Sysgen_uUPP}
lappend params_list CONFIG.Gen_MIF_Files {false}
lappend params_list CONFIG.Gen_MIF_from_COE {false}
lappend params_list CONFIG.Gen_MIF_from_Spec {false}
lappend params_list CONFIG.HardwareOversamplingRate {1}
lappend params_list CONFIG.Has_ACLKEN {true}
lappend params_list CONFIG.Has_ARESETn {false}
lappend params_list CONFIG.Input_Buffer_Type {Automatic}
lappend params_list CONFIG.Inter_Column_Pipe_Length {4}
lappend params_list CONFIG.Interpolation_Rate {4}
lappend params_list CONFIG.M_DATA_Has_TREADY {false}
lappend params_list CONFIG.M_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.Multi_Column_Support {Automatic}
lappend params_list CONFIG.No_BRAM_Read_First_Mode {false}
lappend params_list CONFIG.No_SRL_Attributes {false}
lappend params_list CONFIG.Num_Reload_Slots {1}
lappend params_list CONFIG.Number_Channels {1}
lappend params_list CONFIG.Number_Paths {2}
lappend params_list CONFIG.Optimal_Column_Lengths {false}
lappend params_list CONFIG.Optimization_Goal {Area}
lappend params_list CONFIG.Optimization_List {None}
lappend params_list CONFIG.Optimization_Selection {None}
lappend params_list CONFIG.Other {false}
lappend params_list CONFIG.Output_Buffer_Type {Automatic}
lappend params_list CONFIG.Output_Rounding_Mode {Full_Precision}
lappend params_list CONFIG.Output_Width {31}
lappend params_list CONFIG.Passband_Max {0.50000000}
lappend params_list CONFIG.Passband_Min {0.00000000}
lappend params_list CONFIG.Pattern_List {P4-0,P4-1,P4-2,P4-3,P4-4}
lappend params_list CONFIG.Pre_Adder_Pipeline {false}
lappend params_list CONFIG.Preference_For_Other_Storage {Automatic}
lappend params_list CONFIG.Quantization {Quantize_Only}
lappend params_list CONFIG.RateSpecification {Maximum_Possible}
lappend params_list CONFIG.Rate_Change_Type {Integer}
lappend params_list CONFIG.Reload_File {no_coe_file_loaded}
lappend params_list CONFIG.Reset_Data_Vector {true}
lappend params_list CONFIG.S_CONFIG_Method {Single}
lappend params_list CONFIG.S_CONFIG_Sync_Mode {On_Vector}
lappend params_list CONFIG.S_DATA_Has_FIFO {false}
lappend params_list CONFIG.S_DATA_Has_TUSER {Not_Required}
lappend params_list CONFIG.SamplePeriod {1280}
lappend params_list CONFIG.Sample_Frequency {0.001}
lappend params_list CONFIG.Select_Pattern {All}
lappend params_list CONFIG.Stopband_Max {1.00000000}
lappend params_list CONFIG.Stopband_Min {0.50000000}
lappend params_list CONFIG.Zero_Pack_Factor {1}

set_property -dict $params_list [get_ips transmitter_fir_compiler_v7_2_i0]
}


validate_ip [get_ips]
