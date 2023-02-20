-- -------------------------------------------------------------
-- 
-- File Name: hdl_prj\hdlsrc\Tx_Signal\Tx_Signal_ip_src_QAM512_Generator.vhd
-- Created: 2023-02-16 15:23:47
-- 
-- Generated by MATLAB 9.10 and HDL Coder 3.18
-- 
-- -------------------------------------------------------------


-- -------------------------------------------------------------
-- 
-- Module: Tx_Signal_ip_src_QAM512_Generator
-- Source Path: Tx_Signal/Tx_Signal/Modulation/Signal Generator/Variable Modulator/QAM512 Generator
-- Hierarchy Level: 4
-- 
-- -------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY Tx_Signal_ip_src_QAM512_Generator IS
  PORT( clk                               :   IN    std_logic;
        reset                             :   IN    std_logic;
        enb                               :   IN    std_logic;
        Data                              :   IN    std_logic_vector(8 DOWNTO 0);  -- ufix9
        Reset_1                           :   IN    std_logic;
        Enable                            :   IN    std_logic;
        I_symbols                         :   OUT   std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
        Q_symbols                         :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
        );
END Tx_Signal_ip_src_QAM512_Generator;


ARCHITECTURE rtl OF Tx_Signal_ip_src_QAM512_Generator IS

  -- Component Declarations
  COMPONENT Tx_Signal_ip_src_complement_re_block2
    PORT( d_in                            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          d_out                           :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  COMPONENT Tx_Signal_ip_src_complement2
    PORT( d_in                            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          d_out                           :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  COMPONENT Tx_Signal_ip_src_complement_im2
    PORT( d_in                            :   IN    std_logic_vector(15 DOWNTO 0);  -- sfix16_En14
          d_out                           :   OUT   std_logic_vector(15 DOWNTO 0)  -- sfix16_En14
          );
  END COMPONENT;

  -- Component Configuration Statements
  FOR ALL : Tx_Signal_ip_src_complement_re_block2
    USE ENTITY work.Tx_Signal_ip_src_complement_re_block2(rtl);

  FOR ALL : Tx_Signal_ip_src_complement2
    USE ENTITY work.Tx_Signal_ip_src_complement2(rtl);

  FOR ALL : Tx_Signal_ip_src_complement_im2
    USE ENTITY work.Tx_Signal_ip_src_complement_im2(rtl);

  -- Signals
  SIGNAL Data_unsigned                    : unsigned(8 DOWNTO 0);  -- ufix9
  SIGNAL Bit_Slice15_out1                 : std_logic;  -- ufix1
  SIGNAL Bit_Slice14_out1                 : std_logic;  -- ufix1
  SIGNAL Bit_Slice11_out1                 : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL Constant13_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant14_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant15_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant16_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant17_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant18_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant19_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant20_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Multiport_Switch17_out1          : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Bit_Slice13_out1                 : std_logic;  -- ufix1
  SIGNAL Bit_Slice12_out1                 : unsigned(2 DOWNTO 0);  -- ufix3
  SIGNAL Multiport_Switch18_out1          : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant21_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant22_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant23_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant24_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant25_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant26_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant27_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Constant28_out1                  : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Multiport_Switch19_out1          : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Multiport_Switch20_out1          : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Multiport_Switch22_out1          : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL complement_re_out1               : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL complement_re_out1_signed        : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Multiport_Switch23_out1          : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Delay5_bypass                    : signed(15 DOWNTO 0);  -- sfix16
  SIGNAL Delay5_reg                       : signed(15 DOWNTO 0);  -- sfix16
  SIGNAL Delay5_bypass_next               : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Delay5_delay_out                 : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Delay5_out1                      : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL complement2_out1                 : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL complement2_out1_signed          : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Multiport_Switch21_out1          : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL complement_im2_out1              : std_logic_vector(15 DOWNTO 0);  -- ufix16
  SIGNAL complement_im2_out1_signed       : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Multiport_Switch24_out1          : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Delay6_bypass                    : signed(15 DOWNTO 0);  -- sfix16
  SIGNAL Delay6_reg                       : signed(15 DOWNTO 0);  -- sfix16
  SIGNAL Delay6_bypass_next               : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Delay6_delay_out                 : signed(15 DOWNTO 0);  -- sfix16_En14
  SIGNAL Delay6_out1                      : signed(15 DOWNTO 0);  -- sfix16_En14

BEGIN
  u_complement_re : Tx_Signal_ip_src_complement_re_block2
    PORT MAP( d_in => std_logic_vector(Multiport_Switch22_out1),  -- sfix16_En14
              d_out => complement_re_out1  -- sfix16_En14
              );

  u_complement2 : Tx_Signal_ip_src_complement2
    PORT MAP( d_in => std_logic_vector(Multiport_Switch17_out1),  -- sfix16_En14
              d_out => complement2_out1  -- sfix16_En14
              );

  u_complement_im2 : Tx_Signal_ip_src_complement_im2
    PORT MAP( d_in => std_logic_vector(Multiport_Switch21_out1),  -- sfix16_En14
              d_out => complement_im2_out1  -- sfix16_En14
              );

  Data_unsigned <= unsigned(Data);

  Bit_Slice15_out1 <= Data_unsigned(8);

  Bit_Slice14_out1 <= Data_unsigned(7);

  Bit_Slice11_out1 <= Data_unsigned(2 DOWNTO 0);

  Constant13_out1 <= to_signed(16#02C8#, 16);

  Constant14_out1 <= to_signed(16#0859#, 16);

  Constant15_out1 <= to_signed(16#0DEA#, 16);

  Constant16_out1 <= to_signed(16#137A#, 16);

  Constant17_out1 <= to_signed(16#190B#, 16);

  Constant18_out1 <= to_signed(16#1E9C#, 16);

  Constant19_out1 <= to_signed(16#242D#, 16);

  Constant20_out1 <= to_signed(16#29BD#, 16);

  
  Multiport_Switch17_out1 <= Constant13_out1 WHEN Bit_Slice11_out1 = to_unsigned(16#0#, 3) ELSE
      Constant14_out1 WHEN Bit_Slice11_out1 = to_unsigned(16#1#, 3) ELSE
      Constant15_out1 WHEN Bit_Slice11_out1 = to_unsigned(16#2#, 3) ELSE
      Constant16_out1 WHEN Bit_Slice11_out1 = to_unsigned(16#3#, 3) ELSE
      Constant17_out1 WHEN Bit_Slice11_out1 = to_unsigned(16#4#, 3) ELSE
      Constant18_out1 WHEN Bit_Slice11_out1 = to_unsigned(16#5#, 3) ELSE
      Constant19_out1 WHEN Bit_Slice11_out1 = to_unsigned(16#6#, 3) ELSE
      Constant20_out1;

  Bit_Slice13_out1 <= Data_unsigned(6);

  Bit_Slice12_out1 <= Data_unsigned(5 DOWNTO 3);

  
  Multiport_Switch18_out1 <= Constant13_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#0#, 3) ELSE
      Constant14_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#1#, 3) ELSE
      Constant15_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#2#, 3) ELSE
      Constant16_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#3#, 3) ELSE
      Constant17_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#4#, 3) ELSE
      Constant18_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#5#, 3) ELSE
      Constant19_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#6#, 3) ELSE
      Constant20_out1;

  Constant21_out1 <= to_signed(16#4000#, 16);

  Constant22_out1 <= to_signed(16#3A6F#, 16);

  Constant23_out1 <= to_signed(16#34DF#, 16);

  Constant24_out1 <= to_signed(16#2F4E#, 16);

  Constant25_out1 <= to_signed(-16#2F4E#, 16);

  Constant26_out1 <= to_signed(-16#34DF#, 16);

  Constant27_out1 <= to_signed(-16#3A6F#, 16);

  Constant28_out1 <= to_signed(-16#4000#, 16);

  
  Multiport_Switch19_out1 <= Constant21_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#0#, 3) ELSE
      Constant22_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#1#, 3) ELSE
      Constant23_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#2#, 3) ELSE
      Constant24_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#3#, 3) ELSE
      Constant25_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#4#, 3) ELSE
      Constant26_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#5#, 3) ELSE
      Constant27_out1 WHEN Bit_Slice12_out1 = to_unsigned(16#6#, 3) ELSE
      Constant28_out1;

  
  Multiport_Switch20_out1 <= Multiport_Switch18_out1 WHEN Bit_Slice13_out1 = '0' ELSE
      Multiport_Switch19_out1;

  
  Multiport_Switch22_out1 <= Multiport_Switch17_out1 WHEN Bit_Slice14_out1 = '0' ELSE
      Multiport_Switch20_out1;

  complement_re_out1_signed <= signed(complement_re_out1);

  
  Multiport_Switch23_out1 <= Multiport_Switch22_out1 WHEN Bit_Slice15_out1 = '0' ELSE
      complement_re_out1_signed;

  Delay5_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay5_bypass <= to_signed(16#0000#, 16);
      Delay5_reg <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF Enable = '1' THEN
          IF Reset_1 = '1' THEN
            Delay5_bypass <= to_signed(16#0000#, 16);
            Delay5_reg <= to_signed(16#0000#, 16);
          ELSE 
            Delay5_bypass <= Delay5_bypass_next;
            Delay5_reg <= Multiport_Switch23_out1;
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS Delay5_process;

  
  Delay5_delay_out <= to_signed(16#0000#, 16) WHEN Reset_1 = '1' ELSE
      Delay5_reg;
  
  Delay5_out1 <= Delay5_delay_out WHEN Enable = '1' ELSE
      Delay5_bypass;
  Delay5_bypass_next <= Delay5_delay_out;

  I_symbols <= std_logic_vector(Delay5_out1);

  complement2_out1_signed <= signed(complement2_out1);

  
  Multiport_Switch21_out1 <= Multiport_Switch20_out1 WHEN Bit_Slice14_out1 = '0' ELSE
      complement2_out1_signed;

  complement_im2_out1_signed <= signed(complement_im2_out1);

  
  Multiport_Switch24_out1 <= Multiport_Switch21_out1 WHEN Bit_Slice15_out1 = '0' ELSE
      complement_im2_out1_signed;

  Delay6_process : PROCESS (clk, reset)
  BEGIN
    IF reset = '1' THEN
      Delay6_bypass <= to_signed(16#0000#, 16);
      Delay6_reg <= to_signed(16#0000#, 16);
    ELSIF clk'EVENT AND clk = '1' THEN
      IF enb = '1' THEN
        IF Enable = '1' THEN
          IF Reset_1 = '1' THEN
            Delay6_bypass <= to_signed(16#0000#, 16);
            Delay6_reg <= to_signed(16#0000#, 16);
          ELSE 
            Delay6_bypass <= Delay6_bypass_next;
            Delay6_reg <= Multiport_Switch24_out1;
          END IF;
        END IF;
      END IF;
    END IF;
  END PROCESS Delay6_process;

  
  Delay6_delay_out <= to_signed(16#0000#, 16) WHEN Reset_1 = '1' ELSE
      Delay6_reg;
  
  Delay6_out1 <= Delay6_delay_out WHEN Enable = '1' ELSE
      Delay6_bypass;
  Delay6_bypass_next <= Delay6_delay_out;

  Q_symbols <= std_logic_vector(Delay6_out1);

END rtl;

