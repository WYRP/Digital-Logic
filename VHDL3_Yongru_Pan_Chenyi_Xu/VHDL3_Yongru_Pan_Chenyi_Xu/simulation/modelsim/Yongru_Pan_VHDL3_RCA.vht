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
-- Generated on "02/10/2022 17:05:22"
                                                            
-- Vhdl Test Bench template for design  :  Yongru_Pan_VHDL3_RCA
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;      
USE ieee.numeric_std.all;                          

ENTITY Yongru_Pan_VHDL3_RCA_vhd_tst IS
END Yongru_Pan_VHDL3_RCA_vhd_tst;
ARCHITECTURE Yongru_Pan_VHDL3_RCA_arch OF Yongru_Pan_VHDL3_RCA_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL B : STD_LOGIC_VECTOR (3 downto 0);
SIGNAL S : STD_LOGIC;
COMPONENT Yongru_Pan_VHDL3_RCA
	PORT (
	A : IN STD_LOGIC_VECTOR;
	B : IN STD_LOGIC_VECTOR;
	S : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Yongru_Pan_VHDL3_RCA
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	S => S
	);
generate_test : PROCESS                                              
                                     
BEGIN  
For i IN 0 to 16 LOOP
A <= std_logic_vector (to_unsigned(i,4));
For j IN 0 to 16 LOOP
B <= std_logic_vector (to_unsigned(j,4));
WAIT FOR 10 ns;
END LOOP;
END LOOP;
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS generate_test;  
END Yongru_Pan_VHDL3_RCA_arch;
