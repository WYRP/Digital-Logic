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
-- Generated on "04/08/2022 14:36:46"
                                                            
-- Vhdl Test Bench template for design  :  Chenyi_Xu_FSM
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Chenyi_Xu_FSM_vhd_tst IS
END Chenyi_Xu_FSM_vhd_tst;
ARCHITECTURE Chenyi_Xu_FSM_arch OF Chenyi_Xu_FSM_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL enable : STD_LOGIC;
SIGNAL out_1 : STD_LOGIC;
SIGNAL out_2 : STD_LOGIC;
SIGNAL reset : STD_LOGIC;
SIGNAL seq : STD_LOGIC;
COMPONENT Chenyi_Xu_FSM
	PORT (
	clk : IN STD_LOGIC;
	enable : IN STD_LOGIC;
	out_1 : BUFFER STD_LOGIC;
	out_2 : BUFFER STD_LOGIC;
	reset : IN STD_LOGIC;
	seq : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Chenyi_Xu_FSM
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	enable => enable,
	out_1 => out_1,
	out_2 => out_2,
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
  wait for 30 ns;
  reset <= '0';
  enable <= '1';
  wait for 40 ns;
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
END Chenyi_Xu_FSM_arch;
