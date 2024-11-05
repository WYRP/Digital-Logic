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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"
-- CREATED		"Tue Feb 08 21:41:41 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Yongru_Pan_VHDL3_FA IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		Carry_in :  IN  STD_LOGIC;
		Sum :  INOUT  STD_LOGIC;
		Carry_out :  INOUT  STD_LOGIC
	);
END Yongru_Pan_VHDL3_FA;

ARCHITECTURE bdf_type OF Yongru_Pan_VHDL3_FA IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_2 <= A AND B;


SYNTHESIZED_WIRE_0 <= A AND Carry_in;


SYNTHESIZED_WIRE_1 <= B AND Carry_in;


Carry_out <= SYNTHESIZED_WIRE_0 OR SYNTHESIZED_WIRE_1 OR SYNTHESIZED_WIRE_2;


SYNTHESIZED_WIRE_3 <= B XOR Carry_in;


Sum <= A XOR SYNTHESIZED_WIRE_3;


END bdf_type;