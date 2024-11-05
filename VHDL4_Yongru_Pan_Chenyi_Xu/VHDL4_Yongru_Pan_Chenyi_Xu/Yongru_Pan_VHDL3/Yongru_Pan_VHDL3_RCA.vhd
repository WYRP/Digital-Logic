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
-- CREATED		"Wed Feb 09 16:11:54 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Yongru_Pan_VHDL3_RCA IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		S :  OUT  STD_LOGIC
	);
END Yongru_Pan_VHDL3_RCA;

ARCHITECTURE bdf_type OF Yongru_Pan_VHDL3_RCA IS 

SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;


BEGIN 









SYNTHESIZED_WIRE_10 <= B AND A;


SYNTHESIZED_WIRE_8 <= B AND SYNTHESIZED_WIRE_21;


SYNTHESIZED_WIRE_9 <= A AND SYNTHESIZED_WIRE_21;


SYNTHESIZED_WIRE_22 <= SYNTHESIZED_WIRE_8 OR SYNTHESIZED_WIRE_9 OR SYNTHESIZED_WIRE_10;


SYNTHESIZED_WIRE_15 <= A AND B;


SYNTHESIZED_WIRE_13 <= A AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_14 <= B AND SYNTHESIZED_WIRE_22;


SYNTHESIZED_WIRE_23 <= SYNTHESIZED_WIRE_13 OR SYNTHESIZED_WIRE_14 OR SYNTHESIZED_WIRE_15;


SYNTHESIZED_WIRE_20 <= A AND B;


SYNTHESIZED_WIRE_18 <= A AND SYNTHESIZED_WIRE_23;


SYNTHESIZED_WIRE_19 <= B AND SYNTHESIZED_WIRE_23;


S <= SYNTHESIZED_WIRE_18 OR SYNTHESIZED_WIRE_19 OR SYNTHESIZED_WIRE_20;


SYNTHESIZED_WIRE_21 <= A AND B;



END bdf_type;