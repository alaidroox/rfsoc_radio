-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\untitled\tx_mod_ip_src_complement_block.vhd
-- Created: 2023-02-16 14:09:41
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: tx_mod_ip_src_complement_block
-- Source Path: untitled/Modulation/Signal Generator/Variable Modulator/QAM32 Generator/complement
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tx_mod_ip_src_complement_block IS
  PORT( d_in                              :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        d_out                             :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
        );
END tx_mod_ip_src_complement_block;


ARCHITECTURE rtl OF tx_mod_ip_src_complement_block IS

  -- Signals
  SIGNAL d_in_signed                      : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Data_Type_Conversion_out1        : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL Bitwise_NOT_out1                 : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL Constant1_out1                   : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL Add_out1                         : unsigned(15 DOWNTO 0);  -- uint16
  SIGNAL Data_Type_Conversion1_out1       : signed(15 DOWNTO 0);  -- sfix16_En14

BEGIN
  d_in_signed <= signed(d_in);

  Data_Type_Conversion_out1 <= unsigned(d_in_signed);

  Bitwise_NOT_out1 <=  NOT Data_Type_Conversion_out1;

  Constant1_out1 <= to_unsigned(16#0001#, 16);

  Add_out1 <= Bitwise_NOT_out1 + Constant1_out1;

  Data_Type_Conversion1_out1 <= signed(Add_out1);

  d_out <= std_logic_vector(Data_Type_Conversion1_out1);

END rtl;

