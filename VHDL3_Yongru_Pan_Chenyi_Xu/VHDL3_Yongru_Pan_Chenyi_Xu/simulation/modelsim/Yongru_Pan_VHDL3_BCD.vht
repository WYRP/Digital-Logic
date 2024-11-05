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
-- Generated on "02/10/2022 18:22:39"
                                                            
-- Vhdl Test Bench template for design  :  Yongru_Pan_VHDL3_BCD
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Yongru_Pan_VHDL3_BCD_vhd_tst IS
END Yongru_Pan_VHDL3_BCD_vhd_tst;
ARCHITECTURE Yongru_Pan_VHDL3_BCD_arch OF Yongru_Pan_VHDL3_BCD_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL Carry_out : STD_LOGIC;
SIGNAL O : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
SIGNAL S2 : STD_LOGIC;
SIGNAL S3 : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT Yongru_Pan_VHDL3_BCD
	PORT (
	Carry_out : OUT STD_LOGIC;
	O : IN STD_LOGIC;
	S0 : OUT STD_LOGIC;
	S1 : OUT STD_LOGIC;
	S2 : OUT STD_LOGIC;
	S3 : OUT STD_LOGIC;
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Yongru_Pan_VHDL3_BCD
	PORT MAP (
-- list connections between master ports and signals
	Carry_out => Carry_out,
	O => O,
	S0 => S0,
	S1 => S1,
	S2 => S2,
	S3 => S3,
	X => X,
	Y => Y
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS always;                                          
END Yongru_Pan_VHDL3_BCD_arch;
