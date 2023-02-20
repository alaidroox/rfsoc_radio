-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\Tx_Signal\tx_signal_ip_src_BPSK_Generator.vhd
-- Created: 2023-02-16 15:25:39
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: tx_signal_ip_src_BPSK_Generator
-- Source Path: Tx_Signal/Tx_Signal/Modulation/Signal Generator/Variable Modulator/BPSK Generator
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY tx_signal_ip_src_BPSK_Generator IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        Data                              :   IN    std_logic;  -- ufix1
        Reset_1                           :   IN    std_logic;
        Enable                            :   IN    std_logic;
        I_symbols                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En15
        );
END tx_signal_ip_src_BPSK_Generator;


ARCHITECTURE rtl OF tx_signal_ip_src_BPSK_Generator IS

  -- Signals
  SIGNAL Constant3_out1                   : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL Constant2_out1                   : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL Multiport_Switch_out1            : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL Delay_bypass                     : signed(15 DOWNTO 0);  -- sfix16
  SIGNAL Delay_reg                        : signed(15 DOWNTO 0);  -- sfix16
  SIGNAL Delay_bypass_next                : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL Delay_delay_out                  : signed(15 DOWNTO 0);  -- sfix16_En15
  SIGNAL Delay_out1                       : signed(15 DOWNTO 0);  -- sfix16_En15

BEGIN
  Constant3_out1 <= to_signed(-16#8000#, 16);

  Constant2_out1 <= to_signed(16#7FFF#, 16);

  
  Multiport_Switch_out1 <= Constant3_out1 WHEN Data = '0' ELSE
      Constant2_out1;

  Delay_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay_bypass <= to_signed(16#0000#, 16);
      Delay_reg <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF Enable = '1' THEN
          IF Reset_1 = '1' THEN
            Delay_bypass <= to_signed(16#0000#, 16);
            Delay_reg <= to_signed(16#0000#, 16);
          ELSE 
            Delay_bypass <= Delay_bypass_next;
            Delay_reg <= Multiport_Switch_out1;
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS Delay_process;

  
  Delay_delay_out <= to_signed(16#0000#, 16) WHEN Reset_1 = '1' ELSE
      Delay_reg;
  
  Delay_out1 <= Delay_delay_out WHEN Enable = '1' ELSE
      Delay_bypass;
  Delay_bypass_next <= Delay_delay_out;

  I_symbols <= std_logic_vector(Delay_out1);

END rtl;

