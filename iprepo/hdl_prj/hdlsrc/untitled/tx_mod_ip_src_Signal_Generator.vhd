-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\untitled\tx_mod_ip_src_Signal_Generator.vhd
-- Created: 2023-02-16 14:09:41
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: tx_mod_ip_src_Signal_Generator
-- Source Path: untitled/Modulation/Signal Generator
-- Hierarchy Level: 1
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tx_mod_ip_src_Signal_Generator IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        Modulation                        :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
        Reset_1                           :   IN    std_logic;
        Enable                            :   IN    std_logic;
        re_tdata                          :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        im_tdata                          :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        m_axis_tvalid                     :   OUT   std_logic
        );
END tx_mod_ip_src_Signal_Generator;


ARCHITECTURE rtl OF tx_mod_ip_src_Signal_Generator IS

  -- Component Declarations
  COMPONENT tx_mod_ip_src_Random_Generator
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          Reset_1                         :   IN    std_logic;
          Enable                          :   IN    std_logic;
          Data                            :   OUT   std_logic_vector(9 DOWNTO 0)  -- ufix10
          );
  END COMPONENT;

  COMPONENT tx_mod_ip_src_Variable_Modulator
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          Select_rsvd                     :   IN    std_logic_vector(7 DOWNTO 0);  -- uint8
          Reset_1                         :   IN    std_logic;
          Enable                          :   IN    std_logic;
          Data                            :   IN    std_logic_vector(9 DOWNTO 0);  -- ufix10
          Q_symbols                       :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          I_symbols                       :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : tx_mod_ip_src_Random_Generator
    USE ENTITY work.tx_mod_ip_src_Random_Generator(rtl);

  FOR ALL : tx_mod_ip_src_Variable_Modulator
    USE ENTITY work.tx_mod_ip_src_Variable_Modulator(rtl);

  -- Signals
  SIGNAL Random_Generator_out1            : std_logic_vector(9 DOWNTO 0);  -- ufix10
  SIGNAL Variable_Modulator_out1          : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Variable_Modulator_out2          : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL Delay_out1                       : std_logic;
  SIGNAL AND_out1                         : std_logic;

BEGIN
  u_Random_Generator : tx_mod_ip_src_Random_Generator
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              Reset_1 => Reset_1,
              Enable => Enable,
              Data => Random_Generator_out1  -- ufix10
              );

  u_Variable_Modulator : tx_mod_ip_src_Variable_Modulator
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              Select_rsvd => Modulation,  -- uint8
              Reset_1 => Reset_1,
              Enable => Enable,
              Data => Random_Generator_out1,  -- ufix10
              Q_symbols => Variable_Modulator_out1,  -- sfix16_En14
              I_symbols => Variable_Modulator_out2  -- sfix16_En14
              );

  Delay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay_out1 <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        Delay_out1 <= Enable;
      END IF;
    END IF;
  END PROCESS Delay_process;


  AND_out1 <= Enable AND Delay_out1;

  re_tdata <= Variable_Modulator_out2;

  im_tdata <= Variable_Modulator_out1;

  m_axis_tvalid <= AND_out1;

END rtl;

