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

-- DATE "02/23/2022 14:57:36"

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

ENTITY 	chenyi_xu_wrapper IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	decoded_A : OUT std_logic_vector(6 DOWNTO 0);
	decoded_B : OUT std_logic_vector(6 DOWNTO 0);
	decoded_AplusB : OUT std_logic_vector(13 DOWNTO 0)
	);
END chenyi_xu_wrapper;

-- Design Ports Information
-- decoded_A[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_A[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_B[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[0]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[1]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[2]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[3]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[4]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[5]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[6]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[7]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[8]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[9]	=>  Location: PIN_AD25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[10]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[11]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[12]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- decoded_AplusB[13]	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF chenyi_xu_wrapper IS
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
SIGNAL ww_decoded_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_decoded_B : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_decoded_AplusB : std_logic_vector(13 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \stage0|Mux6~0_combout\ : std_logic;
SIGNAL \stage0|Mux5~0_combout\ : std_logic;
SIGNAL \stage0|Mux4~0_combout\ : std_logic;
SIGNAL \stage0|Mux3~0_combout\ : std_logic;
SIGNAL \stage0|Mux2~0_combout\ : std_logic;
SIGNAL \stage0|Mux1~0_combout\ : std_logic;
SIGNAL \stage0|Mux0~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \stage1|Mux6~0_combout\ : std_logic;
SIGNAL \stage1|Mux5~0_combout\ : std_logic;
SIGNAL \stage1|Mux4~0_combout\ : std_logic;
SIGNAL \stage1|Mux3~0_combout\ : std_logic;
SIGNAL \stage1|Mux2~0_combout\ : std_logic;
SIGNAL \stage1|Mux1~0_combout\ : std_logic;
SIGNAL \stage1|Mux0~0_combout\ : std_logic;
SIGNAL \stage2|Add0~2\ : std_logic;
SIGNAL \stage2|Add0~6\ : std_logic;
SIGNAL \stage2|Add0~10\ : std_logic;
SIGNAL \stage2|Add0~13_sumout\ : std_logic;
SIGNAL \stage2|Add0~5_sumout\ : std_logic;
SIGNAL \stage2|Add0~14\ : std_logic;
SIGNAL \stage2|Add0~17_sumout\ : std_logic;
SIGNAL \stage2|Add0~9_sumout\ : std_logic;
SIGNAL \stage2|S[3]~2_combout\ : std_logic;
SIGNAL \stage2|S[1]~0_combout\ : std_logic;
SIGNAL \stage2|S[2]~1_combout\ : std_logic;
SIGNAL \stage2|Add0~1_sumout\ : std_logic;
SIGNAL \stage3|Mux6~0_combout\ : std_logic;
SIGNAL \stage3|Mux5~0_combout\ : std_logic;
SIGNAL \stage3|Mux4~0_combout\ : std_logic;
SIGNAL \stage3|Mux3~0_combout\ : std_logic;
SIGNAL \stage3|Mux2~0_combout\ : std_logic;
SIGNAL \stage3|Mux1~0_combout\ : std_logic;
SIGNAL \stage3|Mux0~0_combout\ : std_logic;
SIGNAL \stage2|C~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \stage2|ALT_INV_C~0_combout\ : std_logic;
SIGNAL \stage3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_S[3]~2_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_S[2]~1_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_S[1]~0_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \stage0|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \stage2|ALT_INV_Add0~17_sumout\ : std_logic;
SIGNAL \stage2|ALT_INV_Add0~13_sumout\ : std_logic;
SIGNAL \stage2|ALT_INV_Add0~9_sumout\ : std_logic;
SIGNAL \stage2|ALT_INV_Add0~5_sumout\ : std_logic;
SIGNAL \stage2|ALT_INV_Add0~1_sumout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
decoded_A <= ww_decoded_A;
decoded_B <= ww_decoded_B;
decoded_AplusB <= ww_decoded_AplusB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\stage2|ALT_INV_C~0_combout\ <= NOT \stage2|C~0_combout\;
\stage3|ALT_INV_Mux0~0_combout\ <= NOT \stage3|Mux0~0_combout\;
\stage2|ALT_INV_S[3]~2_combout\ <= NOT \stage2|S[3]~2_combout\;
\stage2|ALT_INV_S[2]~1_combout\ <= NOT \stage2|S[2]~1_combout\;
\stage2|ALT_INV_S[1]~0_combout\ <= NOT \stage2|S[1]~0_combout\;
\stage1|ALT_INV_Mux0~0_combout\ <= NOT \stage1|Mux0~0_combout\;
\stage0|ALT_INV_Mux0~0_combout\ <= NOT \stage0|Mux0~0_combout\;
\stage2|ALT_INV_Add0~17_sumout\ <= NOT \stage2|Add0~17_sumout\;
\stage2|ALT_INV_Add0~13_sumout\ <= NOT \stage2|Add0~13_sumout\;
\stage2|ALT_INV_Add0~9_sumout\ <= NOT \stage2|Add0~9_sumout\;
\stage2|ALT_INV_Add0~5_sumout\ <= NOT \stage2|Add0~5_sumout\;
\stage2|ALT_INV_Add0~1_sumout\ <= NOT \stage2|Add0~1_sumout\;

-- Location: IOOBUF_X89_Y8_N39
\decoded_A[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(0));

-- Location: IOOBUF_X89_Y11_N79
\decoded_A[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(1));

-- Location: IOOBUF_X89_Y11_N96
\decoded_A[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(2));

-- Location: IOOBUF_X89_Y4_N79
\decoded_A[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(3));

-- Location: IOOBUF_X89_Y13_N56
\decoded_A[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(4));

-- Location: IOOBUF_X89_Y13_N39
\decoded_A[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(5));

-- Location: IOOBUF_X89_Y4_N96
\decoded_A[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage0|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_A(6));

-- Location: IOOBUF_X89_Y6_N39
\decoded_B[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(0));

-- Location: IOOBUF_X89_Y6_N56
\decoded_B[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(1));

-- Location: IOOBUF_X89_Y16_N39
\decoded_B[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(2));

-- Location: IOOBUF_X89_Y16_N56
\decoded_B[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(3));

-- Location: IOOBUF_X89_Y15_N39
\decoded_B[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(4));

-- Location: IOOBUF_X89_Y15_N56
\decoded_B[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(5));

-- Location: IOOBUF_X89_Y8_N56
\decoded_B[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage1|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_B(6));

-- Location: IOOBUF_X89_Y9_N22
\decoded_AplusB[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(0));

-- Location: IOOBUF_X89_Y23_N39
\decoded_AplusB[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(1));

-- Location: IOOBUF_X89_Y23_N56
\decoded_AplusB[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(2));

-- Location: IOOBUF_X89_Y20_N79
\decoded_AplusB[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(3));

-- Location: IOOBUF_X89_Y25_N39
\decoded_AplusB[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(4));

-- Location: IOOBUF_X89_Y20_N96
\decoded_AplusB[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(5));

-- Location: IOOBUF_X89_Y25_N56
\decoded_AplusB[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(6));

-- Location: IOOBUF_X89_Y16_N5
\decoded_AplusB[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|ALT_INV_C~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(7));

-- Location: IOOBUF_X89_Y16_N22
\decoded_AplusB[8]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(8));

-- Location: IOOBUF_X89_Y4_N45
\decoded_AplusB[9]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(9));

-- Location: IOOBUF_X89_Y4_N62
\decoded_AplusB[10]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|ALT_INV_C~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(10));

-- Location: IOOBUF_X89_Y21_N39
\decoded_AplusB[11]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|ALT_INV_C~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(11));

-- Location: IOOBUF_X89_Y11_N62
\decoded_AplusB[12]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage2|ALT_INV_C~0_combout\,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(12));

-- Location: IOOBUF_X89_Y9_N5
\decoded_AplusB[13]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_decoded_AplusB(13));

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

-- Location: LABCELL_X88_Y8_N18
\stage0|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|Mux6~0_combout\ = ( \A[1]~input_o\ & ( \A[3]~input_o\ ) ) # ( !\A[1]~input_o\ & ( !\A[2]~input_o\ $ (((!\A[0]~input_o\) # (\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010100001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \stage0|Mux6~0_combout\);

-- Location: LABCELL_X88_Y8_N21
\stage0|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|Mux5~0_combout\ = ( \A[1]~input_o\ & ( ((\A[2]~input_o\ & !\A[0]~input_o\)) # (\A[3]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & ((\A[3]~input_o\) # (\A[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010101010101000001010101010101010000111111110101000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datac => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \stage0|Mux5~0_combout\);

-- Location: LABCELL_X88_Y8_N54
\stage0|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|Mux4~0_combout\ = ( \A[1]~input_o\ & ( ((!\A[2]~input_o\ & !\A[0]~input_o\)) # (\A[3]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\A[2]~input_o\ & \A[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000001010000010110001111100011111000111110001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \stage0|Mux4~0_combout\);

-- Location: LABCELL_X88_Y8_N33
\stage0|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|Mux3~0_combout\ = ( \A[1]~input_o\ & ( ((\A[2]~input_o\ & \A[0]~input_o\)) # (\A[3]~input_o\) ) ) # ( !\A[1]~input_o\ & ( !\A[2]~input_o\ $ (((!\A[0]~input_o\) # (\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \stage0|Mux3~0_combout\);

-- Location: LABCELL_X88_Y8_N57
\stage0|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|Mux2~0_combout\ = ( \A[1]~input_o\ & ( (\A[3]~input_o\) # (\A[0]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\A[0]~input_o\) # (\A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \stage0|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N30
\stage0|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|Mux1~0_combout\ = ( \A[1]~input_o\ & ( (!\A[2]~input_o\) # ((\A[3]~input_o\) # (\A[0]~input_o\)) ) ) # ( !\A[1]~input_o\ & ( (!\A[2]~input_o\ & (\A[0]~input_o\ & !\A[3]~input_o\)) # (\A[2]~input_o\ & ((\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010010100100101001001010010010110111111101111111011111110111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[2]~input_o\,
	datab => \ALT_INV_A[0]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \stage0|Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N36
\stage0|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|Mux0~0_combout\ = ( \A[1]~input_o\ & ( (!\A[3]~input_o\ & ((!\A[2]~input_o\) # (!\A[0]~input_o\))) ) ) # ( !\A[1]~input_o\ & ( !\A[3]~input_o\ $ (!\A[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000111100001111000011110011001100110000001100110011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \stage0|Mux0~0_combout\);

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

-- Location: LABCELL_X88_Y8_N39
\stage1|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux6~0_combout\ = ( \B[1]~input_o\ & ( \B[3]~input_o\ ) ) # ( !\B[1]~input_o\ & ( !\B[2]~input_o\ $ (((!\B[0]~input_o\) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101011110101000010101111010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage1|Mux6~0_combout\);

-- Location: LABCELL_X88_Y8_N42
\stage1|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux5~0_combout\ = ( \B[1]~input_o\ & ( ((\B[2]~input_o\ & !\B[0]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\B[2]~input_o\ & ((\B[3]~input_o\) # (\B[0]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001010100010101000101010001010101001111010011110100111101001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage1|Mux5~0_combout\);

-- Location: LABCELL_X88_Y8_N45
\stage1|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux4~0_combout\ = ( \B[1]~input_o\ & ( ((!\B[2]~input_o\ & !\B[0]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\B[2]~input_o\ & \B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000001010101000000000101010110001000111111111000100011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage1|Mux4~0_combout\);

-- Location: LABCELL_X88_Y8_N48
\stage1|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux3~0_combout\ = ( \B[1]~input_o\ & ( ((\B[2]~input_o\ & \B[0]~input_o\)) # (\B[3]~input_o\) ) ) # ( !\B[1]~input_o\ & ( !\B[2]~input_o\ $ (((!\B[0]~input_o\) # (\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110010101100101011001010110010100011111000111110001111100011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage1|Mux3~0_combout\);

-- Location: LABCELL_X88_Y8_N51
\stage1|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux2~0_combout\ = ( \B[1]~input_o\ & ( (\B[3]~input_o\) # (\B[0]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (\B[0]~input_o\) # (\B[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101110111011101110111011100110011111111110011001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage1|Mux2~0_combout\);

-- Location: LABCELL_X88_Y8_N24
\stage1|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux1~0_combout\ = ( \B[1]~input_o\ & ( ((!\B[2]~input_o\) # (\B[3]~input_o\)) # (\B[0]~input_o\) ) ) # ( !\B[1]~input_o\ & ( (!\B[2]~input_o\ & (\B[0]~input_o\ & !\B[3]~input_o\)) # (\B[2]~input_o\ & ((\B[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000001111001100000000111111110011111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage1|Mux1~0_combout\);

-- Location: LABCELL_X88_Y8_N27
\stage1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux0~0_combout\ = ( \B[1]~input_o\ & ( (!\B[3]~input_o\ & ((!\B[2]~input_o\) # (!\B[0]~input_o\))) ) ) # ( !\B[1]~input_o\ & ( !\B[2]~input_o\ $ (!\B[3]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101011101110000000001110111000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[2]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datad => \ALT_INV_B[3]~input_o\,
	dataf => \ALT_INV_B[1]~input_o\,
	combout => \stage1|Mux0~0_combout\);

-- Location: LABCELL_X88_Y8_N0
\stage2|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|Add0~1_sumout\ = SUM(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))
-- \stage2|Add0~2\ = CARRY(( \B[0]~input_o\ ) + ( \A[0]~input_o\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000110011001100110000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_A[0]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	cin => GND,
	sumout => \stage2|Add0~1_sumout\,
	cout => \stage2|Add0~2\);

-- Location: LABCELL_X88_Y8_N3
\stage2|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|Add0~5_sumout\ = SUM(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \stage2|Add0~2\ ))
-- \stage2|Add0~6\ = CARRY(( \B[1]~input_o\ ) + ( \A[1]~input_o\ ) + ( \stage2|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[1]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	cin => \stage2|Add0~2\,
	sumout => \stage2|Add0~5_sumout\,
	cout => \stage2|Add0~6\);

-- Location: LABCELL_X88_Y8_N6
\stage2|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|Add0~9_sumout\ = SUM(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \stage2|Add0~6\ ))
-- \stage2|Add0~10\ = CARRY(( \B[2]~input_o\ ) + ( \A[2]~input_o\ ) + ( \stage2|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_B[2]~input_o\,
	dataf => \ALT_INV_A[2]~input_o\,
	cin => \stage2|Add0~6\,
	sumout => \stage2|Add0~9_sumout\,
	cout => \stage2|Add0~10\);

-- Location: LABCELL_X88_Y8_N9
\stage2|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|Add0~13_sumout\ = SUM(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \stage2|Add0~10\ ))
-- \stage2|Add0~14\ = CARRY(( \B[3]~input_o\ ) + ( \A[3]~input_o\ ) + ( \stage2|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[3]~input_o\,
	cin => \stage2|Add0~10\,
	sumout => \stage2|Add0~13_sumout\,
	cout => \stage2|Add0~14\);

-- Location: LABCELL_X88_Y8_N12
\stage2|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|Add0~17_sumout\ = SUM(( GND ) + ( GND ) + ( \stage2|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	cin => \stage2|Add0~14\,
	sumout => \stage2|Add0~17_sumout\);

-- Location: LABCELL_X88_Y20_N42
\stage2|S[3]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|S[3]~2_combout\ = ( \stage2|Add0~17_sumout\ & ( \stage2|Add0~9_sumout\ & ( !\stage2|Add0~13_sumout\ ) ) ) # ( \stage2|Add0~17_sumout\ & ( !\stage2|Add0~9_sumout\ & ( !\stage2|Add0~13_sumout\ $ (!\stage2|Add0~5_sumout\) ) ) ) # ( 
-- !\stage2|Add0~17_sumout\ & ( !\stage2|Add0~9_sumout\ & ( (\stage2|Add0~13_sumout\ & !\stage2|Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001111000011110000000000000000001100110011001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|ALT_INV_Add0~13_sumout\,
	datac => \stage2|ALT_INV_Add0~5_sumout\,
	datae => \stage2|ALT_INV_Add0~17_sumout\,
	dataf => \stage2|ALT_INV_Add0~9_sumout\,
	combout => \stage2|S[3]~2_combout\);

-- Location: LABCELL_X88_Y20_N0
\stage2|S[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|S[1]~0_combout\ = ( \stage2|Add0~17_sumout\ & ( \stage2|Add0~9_sumout\ & ( !\stage2|Add0~5_sumout\ ) ) ) # ( !\stage2|Add0~17_sumout\ & ( \stage2|Add0~9_sumout\ & ( !\stage2|Add0~13_sumout\ $ (!\stage2|Add0~5_sumout\) ) ) ) # ( 
-- \stage2|Add0~17_sumout\ & ( !\stage2|Add0~9_sumout\ & ( !\stage2|Add0~5_sumout\ ) ) ) # ( !\stage2|Add0~17_sumout\ & ( !\stage2|Add0~9_sumout\ & ( (!\stage2|Add0~13_sumout\ & \stage2|Add0~5_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000001100111100001111000000111100001111001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|ALT_INV_Add0~13_sumout\,
	datac => \stage2|ALT_INV_Add0~5_sumout\,
	datae => \stage2|ALT_INV_Add0~17_sumout\,
	dataf => \stage2|ALT_INV_Add0~9_sumout\,
	combout => \stage2|S[1]~0_combout\);

-- Location: LABCELL_X88_Y20_N9
\stage2|S[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|S[2]~1_combout\ = ( \stage2|Add0~17_sumout\ & ( \stage2|Add0~9_sumout\ & ( \stage2|Add0~5_sumout\ ) ) ) # ( !\stage2|Add0~17_sumout\ & ( \stage2|Add0~9_sumout\ & ( (!\stage2|Add0~13_sumout\) # (\stage2|Add0~5_sumout\) ) ) ) # ( 
-- \stage2|Add0~17_sumout\ & ( !\stage2|Add0~9_sumout\ & ( !\stage2|Add0~5_sumout\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101011110101111101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ALT_INV_Add0~5_sumout\,
	datac => \stage2|ALT_INV_Add0~13_sumout\,
	datae => \stage2|ALT_INV_Add0~17_sumout\,
	dataf => \stage2|ALT_INV_Add0~9_sumout\,
	combout => \stage2|S[2]~1_combout\);

-- Location: LABCELL_X88_Y20_N48
\stage3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux6~0_combout\ = ( \stage2|Add0~1_sumout\ & ( !\stage2|S[3]~2_combout\ $ (((\stage2|S[2]~1_combout\) # (\stage2|S[1]~0_combout\))) ) ) # ( !\stage2|Add0~1_sumout\ & ( (!\stage2|S[1]~0_combout\ & ((\stage2|S[2]~1_combout\))) # 
-- (\stage2|S[1]~0_combout\ & (\stage2|S[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000001111110011110000110011001100000011111100111100001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|ALT_INV_S[3]~2_combout\,
	datac => \stage2|ALT_INV_S[1]~0_combout\,
	datad => \stage2|ALT_INV_S[2]~1_combout\,
	datae => \stage2|ALT_INV_Add0~1_sumout\,
	combout => \stage3|Mux6~0_combout\);

-- Location: LABCELL_X88_Y20_N57
\stage3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux5~0_combout\ = ( \stage2|Add0~1_sumout\ & ( (!\stage2|S[1]~0_combout\ & (\stage2|S[2]~1_combout\)) # (\stage2|S[1]~0_combout\ & ((\stage2|S[3]~2_combout\))) ) ) # ( !\stage2|Add0~1_sumout\ & ( (!\stage2|S[1]~0_combout\ & 
-- (\stage2|S[2]~1_combout\ & \stage2|S[3]~2_combout\)) # (\stage2|S[1]~0_combout\ & ((\stage2|S[3]~2_combout\) # (\stage2|S[2]~1_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111001001110010011100010111000101110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ALT_INV_S[1]~0_combout\,
	datab => \stage2|ALT_INV_S[2]~1_combout\,
	datac => \stage2|ALT_INV_S[3]~2_combout\,
	datae => \stage2|ALT_INV_Add0~1_sumout\,
	combout => \stage3|Mux5~0_combout\);

-- Location: LABCELL_X88_Y20_N30
\stage3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux4~0_combout\ = ( \stage2|Add0~1_sumout\ & ( (\stage2|S[3]~2_combout\ & ((\stage2|S[2]~1_combout\) # (\stage2|S[1]~0_combout\))) ) ) # ( !\stage2|Add0~1_sumout\ & ( (!\stage2|S[2]~1_combout\ & ((\stage2|S[1]~0_combout\))) # 
-- (\stage2|S[2]~1_combout\ & (\stage2|S[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011000000110011001100001111001100110000001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|ALT_INV_S[3]~2_combout\,
	datac => \stage2|ALT_INV_S[1]~0_combout\,
	datad => \stage2|ALT_INV_S[2]~1_combout\,
	datae => \stage2|ALT_INV_Add0~1_sumout\,
	combout => \stage3|Mux4~0_combout\);

-- Location: LABCELL_X88_Y20_N39
\stage3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux3~0_combout\ = ( \stage2|Add0~1_sumout\ & ( (!\stage2|S[1]~0_combout\ & (!\stage2|S[2]~1_combout\ $ (\stage2|S[3]~2_combout\))) # (\stage2|S[1]~0_combout\ & ((\stage2|S[3]~2_combout\) # (\stage2|S[2]~1_combout\))) ) ) # ( 
-- !\stage2|Add0~1_sumout\ & ( (!\stage2|S[1]~0_combout\ & (\stage2|S[2]~1_combout\)) # (\stage2|S[1]~0_combout\ & ((\stage2|S[3]~2_combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111100101111001011100100111001001111001011110010111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ALT_INV_S[1]~0_combout\,
	datab => \stage2|ALT_INV_S[2]~1_combout\,
	datac => \stage2|ALT_INV_S[3]~2_combout\,
	datae => \stage2|ALT_INV_Add0~1_sumout\,
	combout => \stage3|Mux3~0_combout\);

-- Location: LABCELL_X88_Y20_N12
\stage3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux2~0_combout\ = ( \stage2|S[3]~2_combout\ & ( ((\stage2|Add0~1_sumout\) # (\stage2|S[1]~0_combout\)) # (\stage2|S[2]~1_combout\) ) ) # ( !\stage2|S[3]~2_combout\ & ( ((\stage2|S[2]~1_combout\ & !\stage2|S[1]~0_combout\)) # 
-- (\stage2|Add0~1_sumout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000011111111001100001111111100111111111111110011111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|ALT_INV_S[2]~1_combout\,
	datac => \stage2|ALT_INV_S[1]~0_combout\,
	datad => \stage2|ALT_INV_Add0~1_sumout\,
	dataf => \stage2|ALT_INV_S[3]~2_combout\,
	combout => \stage3|Mux2~0_combout\);

-- Location: LABCELL_X88_Y20_N18
\stage3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux1~0_combout\ = ( \stage2|Add0~1_sumout\ & ( (!\stage2|S[3]~2_combout\ $ (\stage2|S[2]~1_combout\)) # (\stage2|S[1]~0_combout\) ) ) # ( !\stage2|Add0~1_sumout\ & ( (!\stage2|S[2]~1_combout\ & ((\stage2|S[1]~0_combout\))) # 
-- (\stage2|S[2]~1_combout\ & (\stage2|S[3]~2_combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100110011110011110011111100001111001100111100111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|ALT_INV_S[3]~2_combout\,
	datac => \stage2|ALT_INV_S[1]~0_combout\,
	datad => \stage2|ALT_INV_S[2]~1_combout\,
	datae => \stage2|ALT_INV_Add0~1_sumout\,
	combout => \stage3|Mux1~0_combout\);

-- Location: LABCELL_X88_Y20_N15
\stage3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux0~0_combout\ = ( \stage2|S[3]~2_combout\ & ( (!\stage2|S[1]~0_combout\ & !\stage2|S[2]~1_combout\) ) ) # ( !\stage2|S[3]~2_combout\ & ( (!\stage2|S[1]~0_combout\ & (\stage2|S[2]~1_combout\)) # (\stage2|S[1]~0_combout\ & 
-- ((!\stage2|S[2]~1_combout\) # (!\stage2|Add0~1_sumout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101100110011101110110011010001000100010001000100010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ALT_INV_S[1]~0_combout\,
	datab => \stage2|ALT_INV_S[2]~1_combout\,
	datad => \stage2|ALT_INV_Add0~1_sumout\,
	dataf => \stage2|ALT_INV_S[3]~2_combout\,
	combout => \stage3|Mux0~0_combout\);

-- Location: LABCELL_X88_Y20_N27
\stage2|C~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|C~0_combout\ = ( \stage2|Add0~17_sumout\ & ( \stage2|Add0~9_sumout\ & ( \stage2|Add0~13_sumout\ ) ) ) # ( !\stage2|Add0~17_sumout\ & ( \stage2|Add0~9_sumout\ & ( !\stage2|Add0~13_sumout\ ) ) ) # ( \stage2|Add0~17_sumout\ & ( 
-- !\stage2|Add0~9_sumout\ & ( (\stage2|Add0~5_sumout\ & \stage2|Add0~13_sumout\) ) ) ) # ( !\stage2|Add0~17_sumout\ & ( !\stage2|Add0~9_sumout\ & ( (!\stage2|Add0~5_sumout\) # (!\stage2|Add0~13_sumout\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111101011111010000001010000010111110000111100000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|ALT_INV_Add0~5_sumout\,
	datac => \stage2|ALT_INV_Add0~13_sumout\,
	datae => \stage2|ALT_INV_Add0~17_sumout\,
	dataf => \stage2|ALT_INV_Add0~9_sumout\,
	combout => \stage2|C~0_combout\);

-- Location: LABCELL_X51_Y5_N3
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


