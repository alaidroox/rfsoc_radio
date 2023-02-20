-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\Tx_Signal\tx_signal_ip_src_LFRSs.vhd
-- Created: 2023-02-16 15:25:39
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: tx_signal_ip_src_LFRSs
-- Source Path: Tx_Signal/Tx_Signal/Modulation/Signal Generator/Random Generator/LFRSs
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tx_signal_ip_src_LFRSs IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        Reset_1                           :   IN    std_logic;
        Enable                            :   IN    std_logic;
        LFSR1                             :   OUT   std_logic;
        LFSR2                             :   OUT   std_logic;
        LFSR3                             :   OUT   std_logic;
        LFSR4                             :   OUT   std_logic;
        LFSR5                             :   OUT   std_logic;
        LFSR6                             :   OUT   std_logic;
        LFSR7                             :   OUT   std_logic;
        LFSR8                             :   OUT   std_logic;
        LFSR9                             :   OUT   std_logic;
        LFSR10                            :   OUT   std_logic
        );
END tx_signal_ip_src_LFRSs;


ARCHITECTURE rtl OF tx_signal_ip_src_LFRSs IS

  -- Component Declarations
  COMPONENT tx_signal_ip_src_PN_Sequence_Generator
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inportReset                     :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT tx_signal_ip_src_PN_Sequence_Generator1
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inportReset                     :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT tx_signal_ip_src_PN_Sequence_Generator2
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inportReset                     :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT tx_signal_ip_src_PN_Sequence_Generator3
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inportReset                     :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT tx_signal_ip_src_PN_Sequence_Generator4
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inportReset                     :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT tx_signal_ip_src_PN_Sequence_Generator5
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inportReset                     :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT tx_signal_ip_src_PN_Sequence_Generator6
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inportReset                     :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT tx_signal_ip_src_PN_Sequence_Generator7
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inportReset                     :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT tx_signal_ip_src_PN_Sequence_Generator8
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inportReset                     :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  COMPONENT tx_signal_ip_src_PN_Sequence_Generator9
    PORT( clk                             :   IN    std_logic;
          reset                           :   IN    std_logic;
          enb                             :   IN    std_logic;
          inportReset                     :   IN    std_logic;
          PN_Sequence                     :   OUT   std_logic
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : tx_signal_ip_src_PN_Sequence_Generator
    USE ENTITY work.tx_signal_ip_src_PN_Sequence_Generator(rtl);

  FOR ALL : tx_signal_ip_src_PN_Sequence_Generator1
    USE ENTITY work.tx_signal_ip_src_PN_Sequence_Generator1(rtl);

  FOR ALL : tx_signal_ip_src_PN_Sequence_Generator2
    USE ENTITY work.tx_signal_ip_src_PN_Sequence_Generator2(rtl);

  FOR ALL : tx_signal_ip_src_PN_Sequence_Generator3
    USE ENTITY work.tx_signal_ip_src_PN_Sequence_Generator3(rtl);

  FOR ALL : tx_signal_ip_src_PN_Sequence_Generator4
    USE ENTITY work.tx_signal_ip_src_PN_Sequence_Generator4(rtl);

  FOR ALL : tx_signal_ip_src_PN_Sequence_Generator5
    USE ENTITY work.tx_signal_ip_src_PN_Sequence_Generator5(rtl);

  FOR ALL : tx_signal_ip_src_PN_Sequence_Generator6
    USE ENTITY work.tx_signal_ip_src_PN_Sequence_Generator6(rtl);

  FOR ALL : tx_signal_ip_src_PN_Sequence_Generator7
    USE ENTITY work.tx_signal_ip_src_PN_Sequence_Generator7(rtl);

  FOR ALL : tx_signal_ip_src_PN_Sequence_Generator8
    USE ENTITY work.tx_signal_ip_src_PN_Sequence_Generator8(rtl);

  FOR ALL : tx_signal_ip_src_PN_Sequence_Generator9
    USE ENTITY work.tx_signal_ip_src_PN_Sequence_Generator9(rtl);

  -- Signals
  SIGNAL enb_gated                        : std_logic;
  SIGNAL Enable_out2                      : std_logic;
  SIGNAL PN_Sequence_Generator_out1       : std_logic;
  SIGNAL PN_Sequence_Generator_out1_bypass : std_logic;
  SIGNAL PN_Sequence_Generator_out1_last_value : std_logic;
  SIGNAL PN_Sequence_Generator1_out1      : std_logic;
  SIGNAL PN_Sequence_Generator1_out1_bypass : std_logic;
  SIGNAL PN_Sequence_Generator1_out1_last_value : std_logic;
  SIGNAL PN_Sequence_Generator2_out1      : std_logic;
  SIGNAL PN_Sequence_Generator2_out1_bypass : std_logic;
  SIGNAL PN_Sequence_Generator2_out1_last_value : std_logic;
  SIGNAL PN_Sequence_Generator3_out1      : std_logic;
  SIGNAL PN_Sequence_Generator3_out1_bypass : std_logic;
  SIGNAL PN_Sequence_Generator3_out1_last_value : std_logic;
  SIGNAL PN_Sequence_Generator4_out1      : std_logic;
  SIGNAL PN_Sequence_Generator4_out1_bypass : std_logic;
  SIGNAL PN_Sequence_Generator4_out1_last_value : std_logic;
  SIGNAL PN_Sequence_Generator5_out1      : std_logic;
  SIGNAL PN_Sequence_Generator5_out1_bypass : std_logic;
  SIGNAL PN_Sequence_Generator5_out1_last_value : std_logic;
  SIGNAL PN_Sequence_Generator6_out1      : std_logic;
  SIGNAL PN_Sequence_Generator6_out1_bypass : std_logic;
  SIGNAL PN_Sequence_Generator6_out1_last_value : std_logic;
  SIGNAL PN_Sequence_Generator7_out1      : std_logic;
  SIGNAL PN_Sequence_Generator7_out1_bypass : std_logic;
  SIGNAL PN_Sequence_Generator7_out1_last_value : std_logic;
  SIGNAL PN_Sequence_Generator8_out1      : std_logic;
  SIGNAL PN_Sequence_Generator8_out1_bypass : std_logic;
  SIGNAL PN_Sequence_Generator8_out1_last_value : std_logic;
  SIGNAL PN_Sequence_Generator9_out1      : std_logic;
  SIGNAL PN_Sequence_Generator9_out1_bypass : std_logic;
  SIGNAL PN_Sequence_Generator9_out1_last_value : std_logic;

BEGIN
  u_PN_Sequence_Generator : tx_signal_ip_src_PN_Sequence_Generator
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb_gated,
              inportReset => Reset_1,
              PN_Sequence => PN_Sequence_Generator_out1
              );

  u_PN_Sequence_Generator1 : tx_signal_ip_src_PN_Sequence_Generator1
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb_gated,
              inportReset => Reset_1,
              PN_Sequence => PN_Sequence_Generator1_out1
              );

  u_PN_Sequence_Generator2 : tx_signal_ip_src_PN_Sequence_Generator2
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb_gated,
              inportReset => Reset_1,
              PN_Sequence => PN_Sequence_Generator2_out1
              );

  u_PN_Sequence_Generator3 : tx_signal_ip_src_PN_Sequence_Generator3
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb_gated,
              inportReset => Reset_1,
              PN_Sequence => PN_Sequence_Generator3_out1
              );

  u_PN_Sequence_Generator4 : tx_signal_ip_src_PN_Sequence_Generator4
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb_gated,
              inportReset => Reset_1,
              PN_Sequence => PN_Sequence_Generator4_out1
              );

  u_PN_Sequence_Generator5 : tx_signal_ip_src_PN_Sequence_Generator5
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb_gated,
              inportReset => Reset_1,
              PN_Sequence => PN_Sequence_Generator5_out1
              );

  u_PN_Sequence_Generator6 : tx_signal_ip_src_PN_Sequence_Generator6
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb_gated,
              inportReset => Reset_1,
              PN_Sequence => PN_Sequence_Generator6_out1
              );

  u_PN_Sequence_Generator7 : tx_signal_ip_src_PN_Sequence_Generator7
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb_gated,
              inportReset => Reset_1,
              PN_Sequence => PN_Sequence_Generator7_out1
              );

  u_PN_Sequence_Generator8 : tx_signal_ip_src_PN_Sequence_Generator8
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb_gated,
              inportReset => Reset_1,
              PN_Sequence => PN_Sequence_Generator8_out1
              );

  u_PN_Sequence_Generator9 : tx_signal_ip_src_PN_Sequence_Generator9
    PORT MAP( clk => clk,
              reset => reset,
              enb => enb_gated,
              inportReset => Reset_1,
              PN_Sequence => PN_Sequence_Generator9_out1
              );

  Enable_out2 <= Enable;

  enb_gated <= Enable_out2 AND enb;

  LFSR1_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      PN_Sequence_Generator_out1_last_value <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        PN_Sequence_Generator_out1_last_value <= PN_Sequence_Generator_out1_bypass;
      END IF;
    END IF;
  END PROCESS LFSR1_bypass_process;


  
  PN_Sequence_Generator_out1_bypass <= PN_Sequence_Generator_out1_last_value WHEN Enable_out2 = '0' ELSE
      PN_Sequence_Generator_out1;

  LFSR2_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      PN_Sequence_Generator1_out1_last_value <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        PN_Sequence_Generator1_out1_last_value <= PN_Sequence_Generator1_out1_bypass;
      END IF;
    END IF;
  END PROCESS LFSR2_bypass_process;


  
  PN_Sequence_Generator1_out1_bypass <= PN_Sequence_Generator1_out1_last_value WHEN Enable_out2 = '0' ELSE
      PN_Sequence_Generator1_out1;

  LFSR3_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      PN_Sequence_Generator2_out1_last_value <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        PN_Sequence_Generator2_out1_last_value <= PN_Sequence_Generator2_out1_bypass;
      END IF;
    END IF;
  END PROCESS LFSR3_bypass_process;


  
  PN_Sequence_Generator2_out1_bypass <= PN_Sequence_Generator2_out1_last_value WHEN Enable_out2 = '0' ELSE
      PN_Sequence_Generator2_out1;

  LFSR4_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      PN_Sequence_Generator3_out1_last_value <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        PN_Sequence_Generator3_out1_last_value <= PN_Sequence_Generator3_out1_bypass;
      END IF;
    END IF;
  END PROCESS LFSR4_bypass_process;


  
  PN_Sequence_Generator3_out1_bypass <= PN_Sequence_Generator3_out1_last_value WHEN Enable_out2 = '0' ELSE
      PN_Sequence_Generator3_out1;

  LFSR5_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      PN_Sequence_Generator4_out1_last_value <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        PN_Sequence_Generator4_out1_last_value <= PN_Sequence_Generator4_out1_bypass;
      END IF;
    END IF;
  END PROCESS LFSR5_bypass_process;


  
  PN_Sequence_Generator4_out1_bypass <= PN_Sequence_Generator4_out1_last_value WHEN Enable_out2 = '0' ELSE
      PN_Sequence_Generator4_out1;

  LFSR6_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      PN_Sequence_Generator5_out1_last_value <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        PN_Sequence_Generator5_out1_last_value <= PN_Sequence_Generator5_out1_bypass;
      END IF;
    END IF;
  END PROCESS LFSR6_bypass_process;


  
  PN_Sequence_Generator5_out1_bypass <= PN_Sequence_Generator5_out1_last_value WHEN Enable_out2 = '0' ELSE
      PN_Sequence_Generator5_out1;

  LFSR7_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      PN_Sequence_Generator6_out1_last_value <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        PN_Sequence_Generator6_out1_last_value <= PN_Sequence_Generator6_out1_bypass;
      END IF;
    END IF;
  END PROCESS LFSR7_bypass_process;


  
  PN_Sequence_Generator6_out1_bypass <= PN_Sequence_Generator6_out1_last_value WHEN Enable_out2 = '0' ELSE
      PN_Sequence_Generator6_out1;

  LFSR8_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      PN_Sequence_Generator7_out1_last_value <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        PN_Sequence_Generator7_out1_last_value <= PN_Sequence_Generator7_out1_bypass;
      END IF;
    END IF;
  END PROCESS LFSR8_bypass_process;


  
  PN_Sequence_Generator7_out1_bypass <= PN_Sequence_Generator7_out1_last_value WHEN Enable_out2 = '0' ELSE
      PN_Sequence_Generator7_out1;

  LFSR9_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      PN_Sequence_Generator8_out1_last_value <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        PN_Sequence_Generator8_out1_last_value <= PN_Sequence_Generator8_out1_bypass;
      END IF;
    END IF;
  END PROCESS LFSR9_bypass_process;


  
  PN_Sequence_Generator8_out1_bypass <= PN_Sequence_Generator8_out1_last_value WHEN Enable_out2 = '0' ELSE
      PN_Sequence_Generator8_out1;

  LFSR10_bypass_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      PN_Sequence_Generator9_out1_last_value <= '0';
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb_gated = '1' THEN
        PN_Sequence_Generator9_out1_last_value <= PN_Sequence_Generator9_out1_bypass;
      END IF;
    END IF;
  END PROCESS LFSR10_bypass_process;


  
  PN_Sequence_Generator9_out1_bypass <= PN_Sequence_Generator9_out1_last_value WHEN Enable_out2 = '0' ELSE
      PN_Sequence_Generator9_out1;

  LFSR1 <= PN_Sequence_Generator_out1_bypass;

  LFSR2 <= PN_Sequence_Generator1_out1_bypass;

  LFSR3 <= PN_Sequence_Generator2_out1_bypass;

  LFSR4 <= PN_Sequence_Generator3_out1_bypass;

  LFSR5 <= PN_Sequence_Generator4_out1_bypass;

  LFSR6 <= PN_Sequence_Generator5_out1_bypass;

  LFSR7 <= PN_Sequence_Generator6_out1_bypass;

  LFSR8 <= PN_Sequence_Generator7_out1_bypass;

  LFSR9 <= PN_Sequence_Generator8_out1_bypass;

  LFSR10 <= PN_Sequence_Generator9_out1_bypass;

END rtl;

