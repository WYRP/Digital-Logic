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
-- Generated on "04/08/2022 14:58:48"
                                                            
-- Vhdl Test Bench template for design  :  Yongru_Pan_wrapper
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Yongru_Pan_wrapper_vhd_tst IS
END Yongru_Pan_wrapper_vhd_tst;
ARCHITECTURE Yongru_Pan_wrapper_arch OF Yongru_Pan_wrapper_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL HEX0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL HEX5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT Yongru_Pan_wrapper
	PORT (
	clk : IN STD_LOGIC;
	HEX0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	HEX5 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Yongru_Pan_wrapper
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	HEX0 => HEX0,
	HEX5 => HEX5,
	reset => reset
	);
 clock_process :process
   begin
  clk <= '0';
  wait for 10 ns;
  clk <= '1';
  wait for 10 ns;
   end process;
	
 process begin
 reset <='1';
 wait for 20 ns;
 reset <='0';
 wait;
end process;                                       
END Yongru_Pan_wrapper_arch;
