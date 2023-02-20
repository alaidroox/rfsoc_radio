-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\Tx_Signal\tx_signal_ip_src_Random_Generator.vhd
-- Created: 2023-02-16 15:25:39
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: tx_signal_ip_src_Random_Generator
-- Source Path: Tx_Signal/Tx_Signal/Modulation/Signal Generator/Random Generator
-- Hierarchy Level: 3
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tx_signal_ip_src_Random_Generator IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        Reset_1                           :   IN    std_logic;
        Enable                            :   IN    std_logic;
        Data                              :   OUT   std_logic_vector(9 DOWNTO 0)  -- ufix10
        );
END tx_signal_ip_src_Random_Generator;


ARCHITECTURE rtl OF tx_signal_ip_src_Random_Generator IS

  -- Component Declarations
  COMPONENT tx_signal_ip_src_LFRSs
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          Reset_1                         :   IN    std_logic;
          Enable                          :   IN    std_logic;
          LFSR1                           :   OUT   std_logic;
          LFSR2                           :   OUT   std_logic;
          LFSR3                           :   OUT   std_logic;
          LFSR4                           :   OUT   std_logic;
          LFSR5                           :   OUT   std_logic;
          LFSR6                           :   OUT   std_logic;
          LFSR7                           :   OUT   std_logic;
          LFSR8                           :   OUT   std_logic;
          LFSR9                           :   OUT   std_logic;
          LFSR10                          :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : tx_signal_ip_src_LFRSs
    USE ENTITY work.tx_signal_ip_src_LFRSs(rtl);

  -- Signals
  SIGNAL LFRSs_out1                       : std_logic;
  SIGNAL LFRSs_out2                       : std_logic;
  SIGNAL LFRSs_out3                       : std_logic;
  SIGNAL LFRSs_out4                       : std_logic;
  SIGNAL LFRSs_out5                       : std_logic;
  SIGNAL LFRSs_out6                       : std_logic;
  SIGNAL LFRSs_out7                       : std_logic;
  SIGNAL LFRSs_out8                       : std_logic;
  SIGNAL LFRSs_out9                       : std_logic;
  SIGNAL LFRSs_out10                      : std_logic;
  SIGNAL Bit_Concat1_out1                 : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Delay_bypass                     : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Delay_reg                        : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Delay_bypass_next                : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Delay_delay_out                  : unsigned(9 DOWNTO 0);  -- ufix10
  SIGNAL Delay_out1                       : unsigned(9 DOWNTO 0);  -- ufix10

BEGIN
  u_LFRSs : tx_signal_ip_src_LFRSs
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb,
              Reset_1 => Reset_1,
              Enable => Enable,
              LFSR1 => LFRSs_out1,
              LFSR2 => LFRSs_out2,
              LFSR3 => LFRSs_out3,
              LFSR4 => LFRSs_out4,
              LFSR5 => LFRSs_out5,
              LFSR6 => LFRSs_out6,
              LFSR7 => LFRSs_out7,
              LFSR8 => LFRSs_out8,
              LFSR9 => LFRSs_out9,
              LFSR10 => LFRSs_out10
              );

  Bit_Concat1_out1 <= unsigned'(LFRSs_out1 & LFRSs_out2 & LFRSs_out3 & LFRSs_out4 & LFRSs_out5 & LFRSs_out6 & LFRSs_out7 & LFRSs_out8 & LFRSs_out9 & LFRSs_out10);

  Delay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay_bypass <= to_unsigned(16#000#, 10);
      Delay_reg <= to_unsigned(16#000#, 10);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF Enable = '1' THEN
          IF Reset_1 = '1' THEN
            Delay_bypass <= to_unsigned(16#000#, 10);
            Delay_reg <= to_unsigned(16#000#, 10);
          ELSE 
            Delay_bypass <= Delay_bypass_next;
            Delay_reg <= Bit_Concat1_out1;
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS Delay_process;

  
  Delay_delay_out <= to_unsigned(16#000#, 10) WHEN Reset_1 = '1' ELSE
      Delay_reg;
  
  Delay_out1 <= Delay_delay_out WHEN Enable = '1' ELSE
      Delay_bypass;
  Delay_bypass_next <= Delay_delay_out;

  Data <= std_logic_vector(Delay_out1);

END rtl;

