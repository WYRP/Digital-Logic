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
-- Generated on "02/22/2022 14:41:26"
                                                            
-- Vhdl Test Bench template for design  :  full_adder
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY full_adder_vhd_tst IS
END full_adder_vhd_tst;
ARCHITECTURE full_adder_arch OF full_adder_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL a : STD_LOGIC;
SIGNAL b : STD_LOGIC;
SIGNAL c_in : STD_LOGIC;
SIGNAL c_out : STD_LOGIC;
SIGNAL s : STD_LOGIC;
COMPONENT full_adder
	PORT (
	a : IN STD_LOGIC;
	b : IN STD_LOGIC;
	c_in : IN STD_LOGIC;
	c_out : OUT STD_LOGIC;
	s : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : full_adder
	PORT MAP (
-- list connections between master ports and signals
	a => a,
	b => b,
	c_in => c_in,
	c_out => c_out,
	s => s
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
 a <=0;
 b <=0;
 c_in <=0;
 wait for 10 ns;
 c_in <= 1;
 wait for 10 ns;
 b <= 1;
 wait for 10 ns;
 a <=1;
 wait for 10 ns;
 b <= o;
 wait for 10 ns;
 c_in <= 0;
 wait for 10 ns;
 b <= 1;
 wait for 10 ns;
 a <= 0;
WAIT;                                                        

END PROCESS always;                                                         
                                          
END full_adder_arch;
