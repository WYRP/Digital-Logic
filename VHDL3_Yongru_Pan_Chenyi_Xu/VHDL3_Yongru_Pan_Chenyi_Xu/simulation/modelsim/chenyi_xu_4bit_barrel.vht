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
-- Generated on "02/10/2022 21:14:59"
                                                            
-- Vhdl Test Bench template for design  :  chenyi_xu_4bit_barrel
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;    
use ieee.numeric_std.all;                            

ENTITY chenyi_xu_4bit_barrel_vhd_tst IS
END chenyi_xu_4bit_barrel_vhd_tst;
ARCHITECTURE chenyi_xu_4bit_barrel_arch OF chenyi_xu_4bit_barrel_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Y : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT chenyi_xu_4bit_barrel
	PORT (
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	X : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	Y : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : chenyi_xu_4bit_barrel
	PORT MAP (
-- list connections between master ports and signals
	sel => sel,
	X => X,
	Y => Y
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
generate_test : PROCESS                                              
                                     
BEGIN  
For i IN 0 to 16 LOOP
X <= std_logic_vector (to_unsigned(i,4));
For j IN 0 to 4 LOOP
sel <= std_logic_vector (to_unsigned(j,2));
WAIT FOR 10 ns;
END LOOP;
END LOOP;
        -- code executes for every event on sensitivity list  
WAIT;                                                        
END PROCESS generate_test;                                             
END chenyi_xu_4bit_barrel_arch;
