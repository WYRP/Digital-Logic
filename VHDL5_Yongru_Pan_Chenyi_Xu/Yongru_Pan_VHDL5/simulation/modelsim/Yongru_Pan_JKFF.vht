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
-- Generated on "03/14/2022 15:38:44"
                                                            
-- Vhdl Test Bench template for design  :  Yongru_Pan_JKFF
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Yongru_Pan_JKFF_vhd_tst IS
END Yongru_Pan_JKFF_vhd_tst;
ARCHITECTURE Yongru_Pan_JKFF_arch OF Yongru_Pan_JKFF_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL J : STD_LOGIC;
SIGNAL K : STD_LOGIC;
SIGNAL Q : STD_LOGIC;
COMPONENT Yongru_Pan_JKFF
	PORT (
	clk : IN STD_LOGIC;
	J : IN STD_LOGIC;
	K : IN STD_LOGIC;
	Q : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Yongru_Pan_JKFF
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	J => J,
	K => K,
	Q => Q
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
clock_generation : process
begin
clk <='1';
wait for 5 ns;
clk <='0';
wait for 5 ns ;
end process clock_generation ;  

stim_proc: process
begin        
J<='1';
K<='0';
wait for 20 ns;


J<='1';
K<='1';
wait for 20 ns;


J<='0';
K<='1';
wait for 20 ns;

J<='0';
K<='0';
wait for 20 ns;

wait;
end process; 
                                       
END Yongru_Pan_JKFF_arch;
