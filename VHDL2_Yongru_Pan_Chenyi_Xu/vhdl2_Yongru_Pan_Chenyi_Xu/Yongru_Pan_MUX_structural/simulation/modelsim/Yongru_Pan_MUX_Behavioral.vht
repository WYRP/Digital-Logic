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
-- Generated on "01/28/2022 16:31:52"
                                                            
-- Vhdl Test Bench template for design  :  Yongru_Pan_MUX_Behavioral
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Yongru_Pan_MUX_Behavioral_vhd_tst IS
END Yongru_Pan_MUX_Behavioral_vhd_tst;
ARCHITECTURE Yongru_Pan_MUX_Behavioral_arch OF Yongru_Pan_MUX_Behavioral_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL S : STD_LOGIC;
SIGNAL Y : STD_LOGIC;
COMPONENT Yongru_Pan_MUX_Behavioral
	PORT (
	A : IN STD_LOGIC;
	B : IN STD_LOGIC;
	S : IN STD_LOGIC;
	Y : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Yongru_Pan_MUX_Behavioral
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	S => S,
	Y => Y
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init; 
                                           
always : PROCESS
BEGIN                                              
A <= '0';
B <= '0';
S <= '0';
wait for 10 ns;
A <= '1';
wait for 10 ns;
B <= '1';
wait for 10 ns;
A <= '0';
wait for 10 ns;
S <= '1';
wait for 10 ns;
A <= '1';
wait for 10 ns;
B <='0';
wait for 10 ns;
A <= '0';
wait for 10 ns;                                                                                            
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Yongru_Pan_MUX_Behavioral_arch;
