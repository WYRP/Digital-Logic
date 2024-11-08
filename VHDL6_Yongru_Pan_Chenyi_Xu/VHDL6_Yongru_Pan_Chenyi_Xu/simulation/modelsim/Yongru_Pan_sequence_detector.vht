-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "04/08/2022 14:24:25"
                                                            
-- Vhdl Test Bench template for design  :  Yongru_Pan_sequence_detector
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Yongru_Pan_sequence_detector_vhd_tst IS
END Yongru_Pan_sequence_detector_vhd_tst;
ARCHITECTURE Yongru_Pan_sequence_detector_arch OF Yongru_Pan_sequence_detector_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL cnt_1 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL cnt_2 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL enable : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL seq : STD_LOGIC;
COMPONENT Yongru_Pan_sequence_detector
	PORT (
	clk : IN STD_LOGIC;
	cnt_1 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	cnt_2 : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	enable : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	seq : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Yongru_Pan_sequence_detector
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	cnt_1 => cnt_1,
	cnt_2 => cnt_2,
	enable => enable,
	reset => reset,
	seq => seq
	);
clock_generation: process
begin
clk <= '0';
wait for 10 ns;
clk <= '1';
wait for 10 ns;
end process clock_generation;
                                          
astim_proc: process
   begin  
      -- hold reset state for 100 ns.
  seq <= '0';
  reset <= '1';
  -- Wait 100 ns for global reset to finish
  wait for 20 ns;
  reset <= '0';
  enable <= '1';
  wait for 20 ns;
  seq <= '0';
  wait for 20 ns;
  seq <= '0';
  wait for 20 ns;
  seq <= '1'; 
  wait for 20 ns;
  seq <= '1'; 
  wait for 20 ns;
  seq <= '0'; 
  wait for 20 ns;
  seq <= '1'; 
  wait for 20 ns;
  seq <= '1';
  wait for 20 ns;
  seq <= '0';
  wait for 20 ns;
  seq <= '1'; 
  wait for 20 ns;
  seq <= '1'; 
  wait for 20 ns;
  seq <= '0'; 
  wait for 20 ns;
  seq <= '0'; 
  wait for 20 ns;
  seq <= '1';
  wait for 20 ns;
  seq <= '0';
  wait for 20 ns;
  seq <= '0'; 
  wait for 20 ns;
  seq <= '1'; 
  wait for 20 ns;
  seq <= '0'; 
  wait for 20 ns;
  seq <= '1'; 
  wait for 20 ns;
  seq <= '1';
  wait for 20 ns;
  seq <= '0';
  wait for 20 ns;
  seq <= '1'; 
      -- insert stimulus here 
      wait;
end process;                                                                
END Yongru_Pan_sequence_detector_arch;
