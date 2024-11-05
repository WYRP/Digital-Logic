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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "03/22/2022 13:46:15"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Yongru_Pan_comparator IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	AgtBplusOne : BUFFER std_logic;
	AgteBplusOne : BUFFER std_logic;
	AltBplusOne : BUFFER std_logic;
	AlteBplusOne : BUFFER std_logic;
	AeqBplusOne : BUFFER std_logic;
	overflow : BUFFER std_logic
	);
END Yongru_Pan_comparator;

-- Design Ports Information
-- AgtBplusOne	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AgteBplusOne	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AltBplusOne	=>  Location: PIN_V17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AlteBplusOne	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AeqBplusOne	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- overflow	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Yongru_Pan_comparator IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_AgtBplusOne : std_logic;
SIGNAL ww_AgteBplusOne : std_logic;
SIGNAL ww_AltBplusOne : std_logic;
SIGNAL ww_AlteBplusOne : std_logic;
SIGNAL ww_AeqBplusOne : std_logic;
SIGNAL ww_overflow : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \AgtBplusOne~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \AltBplusOne~0_combout\ : std_logic;
SIGNAL \AeqBplusOne~0_combout\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_AeqBplusOne~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan1~0_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~2_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~1_combout\ : std_logic;
SIGNAL \ALT_INV_LessThan0~0_combout\ : std_logic;
SIGNAL \ALT_INV_Equal0~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
AgtBplusOne <= ww_AgtBplusOne;
AgteBplusOne <= ww_AgteBplusOne;
AltBplusOne <= ww_AltBplusOne;
AlteBplusOne <= ww_AlteBplusOne;
AeqBplusOne <= ww_AeqBplusOne;
overflow <= ww_overflow;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_AeqBplusOne~0_combout\ <= NOT \AeqBplusOne~0_combout\;
\ALT_INV_LessThan1~1_combout\ <= NOT \LessThan1~1_combout\;
\ALT_INV_LessThan1~0_combout\ <= NOT \LessThan1~0_combout\;
\ALT_INV_LessThan0~2_combout\ <= NOT \LessThan0~2_combout\;
\ALT_INV_LessThan0~1_combout\ <= NOT \LessThan0~1_combout\;
\ALT_INV_LessThan0~0_combout\ <= NOT \LessThan0~0_combout\;
\ALT_INV_Equal0~0_combout\ <= NOT \Equal0~0_combout\;

-- Location: IOOBUF_X52_Y0_N2
\AgtBplusOne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AgtBplusOne~0_combout\,
	devoe => ww_devoe,
	o => ww_AgtBplusOne);

-- Location: IOOBUF_X52_Y0_N19
\AgteBplusOne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_AgteBplusOne);

-- Location: IOOBUF_X60_Y0_N2
\AltBplusOne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \AltBplusOne~0_combout\,
	devoe => ww_devoe,
	o => ww_AltBplusOne);

-- Location: IOOBUF_X80_Y0_N2
\AlteBplusOne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_AlteBplusOne);

-- Location: IOOBUF_X60_Y0_N19
\AeqBplusOne~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_AeqBplusOne~0_combout\,
	devoe => ww_devoe,
	o => ww_AeqBplusOne);

-- Location: IOOBUF_X80_Y0_N19
\overflow~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \Equal0~0_combout\,
	devoe => ww_devoe,
	o => ww_overflow);

-- Location: IOIBUF_X8_Y0_N35
\A[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\B[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N52
\A[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N35
\B[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\B[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X16_Y0_N18
\B[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: LABCELL_X13_Y1_N18
\LessThan0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( (!\A[2]~input_o\ & (\A[3]~input_o\ & (!\B[3]~input_o\ $ (\B[2]~input_o\)))) # (\A[2]~input_o\ & ((!\B[3]~input_o\ & (\A[3]~input_o\)) # (\B[3]~input_o\ & ((\B[2]~input_o\))))) ) ) ) # ( 
-- !\B[0]~input_o\ & ( \B[1]~input_o\ & ( (!\B[3]~input_o\ & (((\A[2]~input_o\ & !\B[2]~input_o\)) # (\A[3]~input_o\))) # (\B[3]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ & !\B[2]~input_o\))) ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[3]~input_o\ & (((\A[2]~input_o\ & !\B[2]~input_o\)) # (\A[3]~input_o\))) # (\B[3]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ & !\B[2]~input_o\))) ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[3]~input_o\ & (((\A[2]~input_o\ & 
-- !\B[2]~input_o\)) # (\A[3]~input_o\))) # (\B[3]~input_o\ & (\A[2]~input_o\ & (\A[3]~input_o\ & !\B[2]~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100110100001100010011010000110001001101000011000000110000010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \LessThan0~2_combout\);

-- Location: LABCELL_X13_Y1_N42
\LessThan0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( (!\A[2]~input_o\ & (\B[2]~input_o\ & (!\B[3]~input_o\ $ (!\A[3]~input_o\)))) # (\A[2]~input_o\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ $ (\A[3]~input_o\)))) ) ) ) # ( !\B[0]~input_o\ & ( 
-- \B[1]~input_o\ & ( (!\A[2]~input_o\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ $ (\A[3]~input_o\)))) # (\A[2]~input_o\ & (\B[2]~input_o\ & (!\B[3]~input_o\ $ (\A[3]~input_o\)))) ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\A[2]~input_o\ & 
-- (!\B[2]~input_o\ & (!\B[3]~input_o\ $ (\A[3]~input_o\)))) # (\A[2]~input_o\ & (\B[2]~input_o\ & (!\B[3]~input_o\ $ (\A[3]~input_o\)))) ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\A[2]~input_o\ & (!\B[2]~input_o\ & (!\B[3]~input_o\ $ 
-- (\A[3]~input_o\)))) # (\A[2]~input_o\ & (\B[2]~input_o\ & (!\B[3]~input_o\ $ (\A[3]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000001001000001100000100100000110000010010000010100000100101000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \LessThan0~1_combout\);

-- Location: LABCELL_X13_Y1_N0
\Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( (\B[3]~input_o\ & \B[2]~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \Equal0~0_combout\);

-- Location: IOIBUF_X16_Y0_N1
\A[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X12_Y0_N18
\A[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LABCELL_X13_Y1_N36
\LessThan0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( (\A[0]~input_o\) # (\A[1]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( (\A[1]~input_o\ & \A[0]~input_o\) ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( \A[1]~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101000001010000010100000000000000000101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[1]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \LessThan0~0_combout\);

-- Location: LABCELL_X13_Y1_N57
\AgtBplusOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AgtBplusOne~0_combout\ = ( \LessThan0~0_combout\ & ( (!\Equal0~0_combout\ & ((\LessThan0~1_combout\) # (\LessThan0~2_combout\))) ) ) # ( !\LessThan0~0_combout\ & ( (\LessThan0~2_combout\ & !\Equal0~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010100000000010111110000000001010101000000000101111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datac => \ALT_INV_LessThan0~1_combout\,
	datad => \ALT_INV_Equal0~0_combout\,
	datae => \ALT_INV_LessThan0~0_combout\,
	combout => \AgtBplusOne~0_combout\);

-- Location: LABCELL_X13_Y1_N6
\LessThan1~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ( \B[0]~input_o\ & ( \B[1]~input_o\ & ( (!\A[2]~input_o\ & ((!\B[3]~input_o\ & (!\A[3]~input_o\)) # (\B[3]~input_o\ & ((!\B[2]~input_o\))))) # (\A[2]~input_o\ & (!\A[3]~input_o\ & (!\B[3]~input_o\ $ (!\B[2]~input_o\)))) ) ) ) # ( 
-- !\B[0]~input_o\ & ( \B[1]~input_o\ & ( (!\B[3]~input_o\ & (!\A[2]~input_o\ & (!\A[3]~input_o\ & \B[2]~input_o\))) # (\B[3]~input_o\ & ((!\A[3]~input_o\) # ((!\A[2]~input_o\ & \B[2]~input_o\)))) ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( 
-- (!\B[3]~input_o\ & (!\A[2]~input_o\ & (!\A[3]~input_o\ & \B[2]~input_o\))) # (\B[3]~input_o\ & ((!\A[3]~input_o\) # ((!\A[2]~input_o\ & \B[2]~input_o\)))) ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\B[3]~input_o\ & (!\A[2]~input_o\ & 
-- (!\A[3]~input_o\ & \B[2]~input_o\))) # (\B[3]~input_o\ & ((!\A[3]~input_o\) # ((!\A[2]~input_o\ & \B[2]~input_o\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000010110010001100001011001000110000101100101011001011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \LessThan1~1_combout\);

-- Location: LABCELL_X13_Y1_N33
\LessThan1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ( !\B[0]~input_o\ & ( \B[1]~input_o\ & ( (!\A[0]~input_o\) # (!\A[1]~input_o\) ) ) ) # ( \B[0]~input_o\ & ( !\B[1]~input_o\ & ( !\A[1]~input_o\ ) ) ) # ( !\B[0]~input_o\ & ( !\B[1]~input_o\ & ( (!\A[0]~input_o\ & !\A[1]~input_o\) ) 
-- ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101000000000111111110000000011111111101010100000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[1]~input_o\,
	datae => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \LessThan1~0_combout\);

-- Location: LABCELL_X13_Y1_N12
\AltBplusOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AltBplusOne~0_combout\ = ( !\Equal0~0_combout\ & ( \LessThan1~0_combout\ & ( (!\LessThan0~2_combout\ & ((!\LessThan0~1_combout\ & ((\LessThan1~1_combout\))) # (\LessThan0~1_combout\ & (!\LessThan0~0_combout\)))) ) ) ) # ( !\Equal0~0_combout\ & ( 
-- !\LessThan1~0_combout\ & ( (!\LessThan0~2_combout\ & (\LessThan1~1_combout\ & ((!\LessThan0~1_combout\) # (!\LessThan0~0_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101000000000000000000000100000101010000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan1~1_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \AltBplusOne~0_combout\);

-- Location: LABCELL_X13_Y1_N48
\AeqBplusOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \AeqBplusOne~0_combout\ = ( \Equal0~0_combout\ & ( \LessThan1~0_combout\ ) ) # ( !\Equal0~0_combout\ & ( \LessThan1~0_combout\ & ( ((\LessThan1~1_combout\) # (\LessThan0~1_combout\)) # (\LessThan0~2_combout\) ) ) ) # ( \Equal0~0_combout\ & ( 
-- !\LessThan1~0_combout\ ) ) # ( !\Equal0~0_combout\ & ( !\LessThan1~0_combout\ & ( (((\LessThan0~1_combout\ & \LessThan0~0_combout\)) # (\LessThan1~1_combout\)) # (\LessThan0~2_combout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101011111111111111111111111111101110111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_LessThan0~2_combout\,
	datab => \ALT_INV_LessThan0~1_combout\,
	datac => \ALT_INV_LessThan0~0_combout\,
	datad => \ALT_INV_LessThan1~1_combout\,
	datae => \ALT_INV_Equal0~0_combout\,
	dataf => \ALT_INV_LessThan1~0_combout\,
	combout => \AeqBplusOne~0_combout\);

-- Location: LABCELL_X9_Y50_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


