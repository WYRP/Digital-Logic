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

-- DATE "04/08/2022 15:40:40"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Yongru_Pan_wrapper IS
    PORT (
	reset : IN std_logic;
	clk : IN std_logic;
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0)
	);
END Yongru_Pan_wrapper;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_AD29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_V25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_AA30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AE29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_AC29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_AD30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_AC30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_AA28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_AB30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Yongru_Pan_wrapper IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputCLKENA0_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \stage0|tmp~0_combout\ : std_logic;
SIGNAL \stage0|tmp~1_combout\ : std_logic;
SIGNAL \stage0|tmp~2_combout\ : std_logic;
SIGNAL \stage0|en_out~0_combout\ : std_logic;
SIGNAL \stage0|en_out~q\ : std_logic;
SIGNAL \stage2|stage0|current_state.OneZero~DUPLICATE_q\ : std_logic;
SIGNAL \stage1|cnt[0]~0_combout\ : std_logic;
SIGNAL \stage1|cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \stage1|Add0~25_sumout\ : std_logic;
SIGNAL \stage1|cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \stage1|Add0~26\ : std_logic;
SIGNAL \stage1|Add0~5_sumout\ : std_logic;
SIGNAL \stage1|Add0~6\ : std_logic;
SIGNAL \stage1|Add0~21_sumout\ : std_logic;
SIGNAL \stage1|Add0~22\ : std_logic;
SIGNAL \stage1|Add0~13_sumout\ : std_logic;
SIGNAL \stage1|Add0~14\ : std_logic;
SIGNAL \stage1|Add0~17_sumout\ : std_logic;
SIGNAL \stage1|Add0~18\ : std_logic;
SIGNAL \stage1|Add0~9_sumout\ : std_logic;
SIGNAL \stage1|Add0~10\ : std_logic;
SIGNAL \stage1|Add0~1_sumout\ : std_logic;
SIGNAL \stage1|Mux0~1_combout\ : std_logic;
SIGNAL \stage1|Mux0~2_combout\ : std_logic;
SIGNAL \stage1|Mux0~0_combout\ : std_logic;
SIGNAL \stage1|cnt[5]~DUPLICATE_q\ : std_logic;
SIGNAL \stage1|Mux0~3_combout\ : std_logic;
SIGNAL \stage1|Mux0~4_combout\ : std_logic;
SIGNAL \stage2|stage0|next_state.One~0_combout\ : std_logic;
SIGNAL \stage2|stage0|current_state.One~q\ : std_logic;
SIGNAL \stage2|stage0|Selector1~0_combout\ : std_logic;
SIGNAL \stage2|stage0|current_state.OneZero~q\ : std_logic;
SIGNAL \stage2|stage0|next_state.OneZeroOne~0_combout\ : std_logic;
SIGNAL \stage2|stage0|current_state.OneZeroOne~q\ : std_logic;
SIGNAL \stage2|stage0|next_state.OneZeroOneOne~0_combout\ : std_logic;
SIGNAL \stage2|stage0|current_state.OneZeroOneOne~q\ : std_logic;
SIGNAL \stage2|stage1|tmp[0]~2_combout\ : std_logic;
SIGNAL \stage2|stage1|tmp[0]~feeder_combout\ : std_logic;
SIGNAL \stage2|stage1|tmp[1]~0_combout\ : std_logic;
SIGNAL \stage2|stage1|tmp[1]~feeder_combout\ : std_logic;
SIGNAL \stage2|stage1|tmp[2]~1_combout\ : std_logic;
SIGNAL \stage2|stage1|tmp[2]~feeder_combout\ : std_logic;
SIGNAL \stage2|stage1|count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \stage2|stage1|count[0]~feeder_combout\ : std_logic;
SIGNAL \stage3|Mux6~0_combout\ : std_logic;
SIGNAL \stage3|Mux5~0_combout\ : std_logic;
SIGNAL \stage3|Mux4~0_combout\ : std_logic;
SIGNAL \stage3|Mux3~0_combout\ : std_logic;
SIGNAL \stage3|Mux2~0_combout\ : std_logic;
SIGNAL \stage3|Mux1~0_combout\ : std_logic;
SIGNAL \stage3|Mux0~0_combout\ : std_logic;
SIGNAL \stage2|stage0|next_state2.One2~0_combout\ : std_logic;
SIGNAL \stage2|stage0|current_state2.One2~q\ : std_logic;
SIGNAL \stage2|stage0|Selector2~0_combout\ : std_logic;
SIGNAL \stage2|stage0|current_state2.ZeroZero~q\ : std_logic;
SIGNAL \stage2|stage0|next_state2.ZeroZeroOne~0_combout\ : std_logic;
SIGNAL \stage2|stage0|current_state2.ZeroZeroOne~q\ : std_logic;
SIGNAL \stage2|stage0|next_state2.ZeroZeroOneZero~0_combout\ : std_logic;
SIGNAL \stage2|stage0|current_state2.ZeroZeroOneZero~q\ : std_logic;
SIGNAL \stage2|stage2|tmp[1]~0_combout\ : std_logic;
SIGNAL \stage2|stage2|tmp[0]~2_combout\ : std_logic;
SIGNAL \stage2|stage2|tmp[2]~1_combout\ : std_logic;
SIGNAL \stage4|Mux6~0_combout\ : std_logic;
SIGNAL \stage4|Mux5~0_combout\ : std_logic;
SIGNAL \stage4|Mux4~0_combout\ : std_logic;
SIGNAL \stage4|Mux3~0_combout\ : std_logic;
SIGNAL \stage4|Mux2~0_combout\ : std_logic;
SIGNAL \stage4|Mux1~0_combout\ : std_logic;
SIGNAL \stage4|Mux0~0_combout\ : std_logic;
SIGNAL \stage2|stage2|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage2|stage1|tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage0|tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage2|stage2|tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage2|stage1|count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage1|cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage2|stage0|ALT_INV_current_state.OneZero~DUPLICATE_q\ : std_logic;
SIGNAL \stage1|ALT_INV_cnt[1]~DUPLICATE_q\ : std_logic;
SIGNAL \stage1|ALT_INV_cnt[5]~DUPLICATE_q\ : std_logic;
SIGNAL \stage1|ALT_INV_cnt[0]~DUPLICATE_q\ : std_logic;
SIGNAL \stage2|stage1|ALT_INV_count[2]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \stage2|stage0|ALT_INV_current_state2.One2~q\ : std_logic;
SIGNAL \stage2|stage0|ALT_INV_current_state.One~q\ : std_logic;
SIGNAL \stage2|stage0|ALT_INV_current_state2.ZeroZero~q\ : std_logic;
SIGNAL \stage2|stage0|ALT_INV_current_state.OneZero~q\ : std_logic;
SIGNAL \stage2|stage0|ALT_INV_current_state2.ZeroZeroOne~q\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux0~4_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_cnt\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \stage1|ALT_INV_Mux0~3_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux0~2_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux0~1_combout\ : std_logic;
SIGNAL \stage1|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \stage2|stage0|ALT_INV_current_state.OneZeroOne~q\ : std_logic;
SIGNAL \stage2|stage0|ALT_INV_current_state2.ZeroZeroOneZero~q\ : std_logic;
SIGNAL \stage2|stage1|ALT_INV_tmp[0]~2_combout\ : std_logic;
SIGNAL \stage2|stage1|ALT_INV_tmp[2]~1_combout\ : std_logic;
SIGNAL \stage0|ALT_INV_tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage2|stage1|ALT_INV_tmp[1]~0_combout\ : std_logic;
SIGNAL \stage2|stage0|ALT_INV_current_state.OneZeroOneOne~q\ : std_logic;
SIGNAL \stage2|stage2|ALT_INV_tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage2|stage1|ALT_INV_tmp\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage2|stage2|ALT_INV_count\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \stage2|stage1|ALT_INV_count\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_reset <= reset;
ww_clk <= clk;
HEX0 <= ww_HEX0;
HEX5 <= ww_HEX5;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\stage2|stage0|ALT_INV_current_state.OneZero~DUPLICATE_q\ <= NOT \stage2|stage0|current_state.OneZero~DUPLICATE_q\;
\stage1|ALT_INV_cnt[1]~DUPLICATE_q\ <= NOT \stage1|cnt[1]~DUPLICATE_q\;
\stage1|ALT_INV_cnt[5]~DUPLICATE_q\ <= NOT \stage1|cnt[5]~DUPLICATE_q\;
\stage1|ALT_INV_cnt[0]~DUPLICATE_q\ <= NOT \stage1|cnt[0]~DUPLICATE_q\;
\stage2|stage1|ALT_INV_count[2]~DUPLICATE_q\ <= NOT \stage2|stage1|count[2]~DUPLICATE_q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\stage2|stage0|ALT_INV_current_state2.One2~q\ <= NOT \stage2|stage0|current_state2.One2~q\;
\stage2|stage0|ALT_INV_current_state.One~q\ <= NOT \stage2|stage0|current_state.One~q\;
\stage2|stage0|ALT_INV_current_state2.ZeroZero~q\ <= NOT \stage2|stage0|current_state2.ZeroZero~q\;
\stage2|stage0|ALT_INV_current_state.OneZero~q\ <= NOT \stage2|stage0|current_state.OneZero~q\;
\stage2|stage0|ALT_INV_current_state2.ZeroZeroOne~q\ <= NOT \stage2|stage0|current_state2.ZeroZeroOne~q\;
\stage1|ALT_INV_Mux0~4_combout\ <= NOT \stage1|Mux0~4_combout\;
\stage1|ALT_INV_cnt\(1) <= NOT \stage1|cnt\(1);
\stage1|ALT_INV_cnt\(3) <= NOT \stage1|cnt\(3);
\stage1|ALT_INV_Mux0~3_combout\ <= NOT \stage1|Mux0~3_combout\;
\stage1|ALT_INV_Mux0~2_combout\ <= NOT \stage1|Mux0~2_combout\;
\stage1|ALT_INV_Mux0~1_combout\ <= NOT \stage1|Mux0~1_combout\;
\stage1|ALT_INV_Mux0~0_combout\ <= NOT \stage1|Mux0~0_combout\;
\stage1|ALT_INV_cnt\(5) <= NOT \stage1|cnt\(5);
\stage1|ALT_INV_cnt\(4) <= NOT \stage1|cnt\(4);
\stage1|ALT_INV_cnt\(6) <= NOT \stage1|cnt\(6);
\stage1|ALT_INV_cnt\(2) <= NOT \stage1|cnt\(2);
\stage1|ALT_INV_cnt\(7) <= NOT \stage1|cnt\(7);
\stage1|ALT_INV_cnt\(0) <= NOT \stage1|cnt\(0);
\stage2|stage0|ALT_INV_current_state.OneZeroOne~q\ <= NOT \stage2|stage0|current_state.OneZeroOne~q\;
\stage2|stage0|ALT_INV_current_state2.ZeroZeroOneZero~q\ <= NOT \stage2|stage0|current_state2.ZeroZeroOneZero~q\;
\stage2|stage1|ALT_INV_tmp[0]~2_combout\ <= NOT \stage2|stage1|tmp[0]~2_combout\;
\stage2|stage1|ALT_INV_tmp[2]~1_combout\ <= NOT \stage2|stage1|tmp[2]~1_combout\;
\stage0|ALT_INV_tmp\(2) <= NOT \stage0|tmp\(2);
\stage0|ALT_INV_tmp\(1) <= NOT \stage0|tmp\(1);
\stage0|ALT_INV_tmp\(0) <= NOT \stage0|tmp\(0);
\stage2|stage1|ALT_INV_tmp[1]~0_combout\ <= NOT \stage2|stage1|tmp[1]~0_combout\;
\stage2|stage0|ALT_INV_current_state.OneZeroOneOne~q\ <= NOT \stage2|stage0|current_state.OneZeroOneOne~q\;
\stage2|stage2|ALT_INV_tmp\(1) <= NOT \stage2|stage2|tmp\(1);
\stage2|stage1|ALT_INV_tmp\(1) <= NOT \stage2|stage1|tmp\(1);
\stage2|stage2|ALT_INV_count\(0) <= NOT \stage2|stage2|count\(0);
\stage2|stage2|ALT_INV_count\(2) <= NOT \stage2|stage2|count\(2);
\stage2|stage2|ALT_INV_count\(1) <= NOT \stage2|stage2|count\(1);
\stage2|stage1|ALT_INV_count\(0) <= NOT \stage2|stage1|count\(0);
\stage2|stage1|ALT_INV_count\(2) <= NOT \stage2|stage1|count\(2);
\stage2|stage1|ALT_INV_count\(1) <= NOT \stage2|stage1|count\(1);
\stage2|stage2|ALT_INV_tmp\(0) <= NOT \stage2|stage2|tmp\(0);
\stage2|stage2|ALT_INV_tmp\(2) <= NOT \stage2|stage2|tmp\(2);
\stage2|stage1|ALT_INV_tmp\(0) <= NOT \stage2|stage1|tmp\(0);
\stage2|stage1|ALT_INV_tmp\(2) <= NOT \stage2|stage1|tmp\(2);

-- Location: IOOBUF_X89_Y23_N56
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X89_Y23_N22
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X89_Y21_N39
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X89_Y20_N62
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X89_Y21_N22
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X89_Y23_N39
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X89_Y20_N79
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage3|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X89_Y20_N96
\HEX5[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(0));

-- Location: IOOBUF_X89_Y25_N5
\HEX5[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(1));

-- Location: IOOBUF_X89_Y25_N39
\HEX5[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(2));

-- Location: IOOBUF_X89_Y25_N56
\HEX5[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage4|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(3));

-- Location: IOOBUF_X89_Y21_N56
\HEX5[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(4));

-- Location: IOOBUF_X89_Y21_N5
\HEX5[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(5));

-- Location: IOOBUF_X89_Y20_N45
\HEX5[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \stage4|Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_HEX5(6));

-- Location: IOIBUF_X89_Y25_N21
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G10
\clk~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \clk~input_o\,
	outclk => \clk~inputCLKENA0_outclk\);

-- Location: IOIBUF_X89_Y23_N4
\reset~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: MLABCELL_X84_Y23_N51
\stage0|tmp~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|tmp~0_combout\ = ( !\stage0|tmp\(0) & ( !\reset~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \stage0|ALT_INV_tmp\(0),
	dataf => \ALT_INV_reset~input_o\,
	combout => \stage0|tmp~0_combout\);

-- Location: FF_X84_Y23_N53
\stage0|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \stage0|tmp~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|tmp\(0));

-- Location: MLABCELL_X84_Y23_N54
\stage0|tmp~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|tmp~1_combout\ = ( \stage0|tmp\(0) & ( (!\reset~input_o\ & !\stage0|tmp\(1)) ) ) # ( !\stage0|tmp\(0) & ( (!\reset~input_o\ & \stage0|tmp\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000000001111000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_reset~input_o\,
	datad => \stage0|ALT_INV_tmp\(1),
	dataf => \stage0|ALT_INV_tmp\(0),
	combout => \stage0|tmp~1_combout\);

-- Location: FF_X84_Y23_N56
\stage0|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \stage0|tmp~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|tmp\(1));

-- Location: MLABCELL_X84_Y23_N6
\stage0|tmp~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|tmp~2_combout\ = ( \stage0|tmp\(2) & ( \stage0|tmp\(0) & ( (!\reset~input_o\ & !\stage0|tmp\(1)) ) ) ) # ( !\stage0|tmp\(2) & ( \stage0|tmp\(0) & ( (!\reset~input_o\ & \stage0|tmp\(1)) ) ) ) # ( \stage0|tmp\(2) & ( !\stage0|tmp\(0) & ( 
-- !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001010000010101010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datac => \stage0|ALT_INV_tmp\(1),
	datae => \stage0|ALT_INV_tmp\(2),
	dataf => \stage0|ALT_INV_tmp\(0),
	combout => \stage0|tmp~2_combout\);

-- Location: FF_X84_Y23_N7
\stage0|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputCLKENA0_outclk\,
	d => \stage0|tmp~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|tmp\(2));

-- Location: MLABCELL_X84_Y23_N42
\stage0|en_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage0|en_out~0_combout\ = ( \stage0|tmp\(2) & ( (\stage0|tmp\(1) & \stage0|tmp\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage0|ALT_INV_tmp\(1),
	datab => \stage0|ALT_INV_tmp\(0),
	dataf => \stage0|ALT_INV_tmp\(2),
	combout => \stage0|en_out~0_combout\);

-- Location: FF_X84_Y23_N44
\stage0|en_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \stage0|en_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage0|en_out~q\);

-- Location: FF_X83_Y23_N40
\stage2|stage0|current_state.OneZero~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage0|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage0|current_state.OneZero~DUPLICATE_q\);

-- Location: MLABCELL_X84_Y23_N57
\stage1|cnt[0]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|cnt[0]~0_combout\ = ( !\stage1|cnt[0]~DUPLICATE_q\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \stage1|ALT_INV_cnt[0]~DUPLICATE_q\,
	combout => \stage1|cnt[0]~0_combout\);

-- Location: FF_X85_Y23_N26
\stage1|cnt[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|cnt[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt[0]~DUPLICATE_q\);

-- Location: FF_X85_Y23_N49
\stage1|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt\(1));

-- Location: LABCELL_X85_Y23_N0
\stage1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Add0~25_sumout\ = SUM(( \stage1|cnt\(1) ) + ( \stage1|cnt[0]~DUPLICATE_q\ ) + ( !VCC ))
-- \stage1|Add0~26\ = CARRY(( \stage1|cnt\(1) ) + ( \stage1|cnt[0]~DUPLICATE_q\ ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100001111000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \stage1|ALT_INV_cnt[0]~DUPLICATE_q\,
	datad => \stage1|ALT_INV_cnt\(1),
	cin => GND,
	sumout => \stage1|Add0~25_sumout\,
	cout => \stage1|Add0~26\);

-- Location: FF_X85_Y23_N50
\stage1|cnt[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|Add0~25_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt[1]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y23_N3
\stage1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Add0~5_sumout\ = SUM(( \stage1|cnt\(2) ) + ( GND ) + ( \stage1|Add0~26\ ))
-- \stage1|Add0~6\ = CARRY(( \stage1|cnt\(2) ) + ( GND ) + ( \stage1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \stage1|ALT_INV_cnt\(2),
	cin => \stage1|Add0~26\,
	sumout => \stage1|Add0~5_sumout\,
	cout => \stage1|Add0~6\);

-- Location: FF_X85_Y23_N59
\stage1|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|Add0~5_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt\(2));

-- Location: LABCELL_X85_Y23_N6
\stage1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Add0~21_sumout\ = SUM(( \stage1|cnt\(3) ) + ( GND ) + ( \stage1|Add0~6\ ))
-- \stage1|Add0~22\ = CARRY(( \stage1|cnt\(3) ) + ( GND ) + ( \stage1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage1|ALT_INV_cnt\(3),
	cin => \stage1|Add0~6\,
	sumout => \stage1|Add0~21_sumout\,
	cout => \stage1|Add0~22\);

-- Location: FF_X85_Y23_N41
\stage1|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|Add0~21_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt\(3));

-- Location: LABCELL_X85_Y23_N9
\stage1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Add0~13_sumout\ = SUM(( \stage1|cnt\(4) ) + ( GND ) + ( \stage1|Add0~22\ ))
-- \stage1|Add0~14\ = CARRY(( \stage1|cnt\(4) ) + ( GND ) + ( \stage1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \stage1|ALT_INV_cnt\(4),
	cin => \stage1|Add0~22\,
	sumout => \stage1|Add0~13_sumout\,
	cout => \stage1|Add0~14\);

-- Location: FF_X85_Y23_N38
\stage1|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|Add0~13_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt\(4));

-- Location: LABCELL_X85_Y23_N12
\stage1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Add0~17_sumout\ = SUM(( \stage1|cnt\(5) ) + ( GND ) + ( \stage1|Add0~14\ ))
-- \stage1|Add0~18\ = CARRY(( \stage1|cnt\(5) ) + ( GND ) + ( \stage1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \stage1|ALT_INV_cnt\(5),
	cin => \stage1|Add0~14\,
	sumout => \stage1|Add0~17_sumout\,
	cout => \stage1|Add0~18\);

-- Location: FF_X85_Y23_N56
\stage1|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt\(5));

-- Location: LABCELL_X85_Y23_N15
\stage1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Add0~9_sumout\ = SUM(( \stage1|cnt\(6) ) + ( GND ) + ( \stage1|Add0~18\ ))
-- \stage1|Add0~10\ = CARRY(( \stage1|cnt\(6) ) + ( GND ) + ( \stage1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \stage1|ALT_INV_cnt\(6),
	cin => \stage1|Add0~18\,
	sumout => \stage1|Add0~9_sumout\,
	cout => \stage1|Add0~10\);

-- Location: FF_X85_Y23_N32
\stage1|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|Add0~9_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt\(6));

-- Location: LABCELL_X85_Y23_N18
\stage1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Add0~1_sumout\ = SUM(( \stage1|cnt\(7) ) + ( GND ) + ( \stage1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111111111111100000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \stage1|ALT_INV_cnt\(7),
	cin => \stage1|Add0~10\,
	sumout => \stage1|Add0~1_sumout\);

-- Location: FF_X85_Y23_N29
\stage1|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|Add0~1_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt\(7));

-- Location: FF_X85_Y23_N25
\stage1|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|cnt[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt\(0));

-- Location: LABCELL_X85_Y23_N27
\stage1|Mux0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux0~1_combout\ = ( \stage1|cnt\(7) & ( \stage1|cnt\(0) & ( (!\stage1|cnt\(4) & (\stage1|cnt\(5) & (!\stage1|cnt\(2) $ (!\stage1|cnt\(6))))) # (\stage1|cnt\(4) & ((!\stage1|cnt\(6) & (!\stage1|cnt\(2))) # (\stage1|cnt\(6) & ((\stage1|cnt\(5)))))) 
-- ) ) ) # ( !\stage1|cnt\(7) & ( \stage1|cnt\(0) & ( (!\stage1|cnt\(4) & (!\stage1|cnt\(2) $ (((\stage1|cnt\(6) & !\stage1|cnt\(5)))))) # (\stage1|cnt\(4) & ((!\stage1|cnt\(2) & (\stage1|cnt\(6) & !\stage1|cnt\(5))) # (\stage1|cnt\(2) & ((!\stage1|cnt\(5)) 
-- # (\stage1|cnt\(6)))))) ) ) ) # ( \stage1|cnt\(7) & ( !\stage1|cnt\(0) & ( (!\stage1|cnt\(4) & ((!\stage1|cnt\(2) & (!\stage1|cnt\(6) & \stage1|cnt\(5))) # (\stage1|cnt\(2) & (\stage1|cnt\(6))))) # (\stage1|cnt\(4) & (\stage1|cnt\(6) & ((!\stage1|cnt\(2)) 
-- # (!\stage1|cnt\(5))))) ) ) ) # ( !\stage1|cnt\(7) & ( !\stage1|cnt\(0) & ( (!\stage1|cnt\(6) & (!\stage1|cnt\(5) $ (((\stage1|cnt\(4) & \stage1|cnt\(2)))))) # (\stage1|cnt\(6) & (!\stage1|cnt\(4) & (\stage1|cnt\(2) & \stage1|cnt\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1110000000010010000001111000011010010111100010010100000001101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|ALT_INV_cnt\(4),
	datab => \stage1|ALT_INV_cnt\(2),
	datac => \stage1|ALT_INV_cnt\(6),
	datad => \stage1|ALT_INV_cnt\(5),
	datae => \stage1|ALT_INV_cnt\(7),
	dataf => \stage1|ALT_INV_cnt\(0),
	combout => \stage1|Mux0~1_combout\);

-- Location: LABCELL_X85_Y23_N33
\stage1|Mux0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux0~2_combout\ = ( \stage1|cnt\(4) & ( \stage1|cnt\(0) & ( (!\stage1|cnt\(2) & (!\stage1|cnt\(5) & (!\stage1|cnt\(7) $ (\stage1|cnt\(6))))) # (\stage1|cnt\(2) & ((!\stage1|cnt\(6) $ (!\stage1|cnt\(5))) # (\stage1|cnt\(7)))) ) ) ) # ( 
-- !\stage1|cnt\(4) & ( \stage1|cnt\(0) & ( (!\stage1|cnt\(7) & (\stage1|cnt\(2) & ((!\stage1|cnt\(6)) # (\stage1|cnt\(5))))) # (\stage1|cnt\(7) & ((!\stage1|cnt\(5) & (!\stage1|cnt\(2))) # (\stage1|cnt\(5) & ((!\stage1|cnt\(6)))))) ) ) ) # ( \stage1|cnt\(4) 
-- & ( !\stage1|cnt\(0) & ( (!\stage1|cnt\(7) & (((!\stage1|cnt\(6) & \stage1|cnt\(5))))) # (\stage1|cnt\(7) & (\stage1|cnt\(6) & ((!\stage1|cnt\(2)) # (!\stage1|cnt\(5))))) ) ) ) # ( !\stage1|cnt\(4) & ( !\stage1|cnt\(0) & ( (!\stage1|cnt\(7) & 
-- (\stage1|cnt\(5) & ((!\stage1|cnt\(6)) # (\stage1|cnt\(2))))) # (\stage1|cnt\(7) & ((!\stage1|cnt\(6) & (\stage1|cnt\(2) & \stage1|cnt\(5))) # (\stage1|cnt\(6) & ((!\stage1|cnt\(5)))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010110110010000001011010010001100100011100101001011100110001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|ALT_INV_cnt\(7),
	datab => \stage1|ALT_INV_cnt\(2),
	datac => \stage1|ALT_INV_cnt\(6),
	datad => \stage1|ALT_INV_cnt\(5),
	datae => \stage1|ALT_INV_cnt\(4),
	dataf => \stage1|ALT_INV_cnt\(0),
	combout => \stage1|Mux0~2_combout\);

-- Location: LABCELL_X85_Y23_N39
\stage1|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux0~0_combout\ = ( \stage1|cnt\(7) & ( \stage1|cnt\(0) & ( (!\stage1|cnt\(2) & (!\stage1|cnt\(6) & ((!\stage1|cnt\(4)) # (\stage1|cnt\(5))))) # (\stage1|cnt\(2) & (!\stage1|cnt\(4) $ (!\stage1|cnt\(6) $ (\stage1|cnt\(5))))) ) ) ) # ( 
-- !\stage1|cnt\(7) & ( \stage1|cnt\(0) & ( (!\stage1|cnt\(4) & (!\stage1|cnt\(6) & (\stage1|cnt\(2) & !\stage1|cnt\(5)))) # (\stage1|cnt\(4) & (!\stage1|cnt\(6) $ (((\stage1|cnt\(5)))))) ) ) ) # ( \stage1|cnt\(7) & ( !\stage1|cnt\(0) & ( (!\stage1|cnt\(2) & 
-- (((!\stage1|cnt\(5))))) # (\stage1|cnt\(2) & ((!\stage1|cnt\(4) & (!\stage1|cnt\(6))) # (\stage1|cnt\(4) & ((\stage1|cnt\(5)))))) ) ) ) # ( !\stage1|cnt\(7) & ( !\stage1|cnt\(0) & ( (!\stage1|cnt\(6) & (\stage1|cnt\(5) & ((\stage1|cnt\(2)) # 
-- (\stage1|cnt\(4))))) # (\stage1|cnt\(6) & (((!\stage1|cnt\(2))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000001111100111110000000110101001100000100011000011011001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|ALT_INV_cnt\(4),
	datab => \stage1|ALT_INV_cnt\(6),
	datac => \stage1|ALT_INV_cnt\(2),
	datad => \stage1|ALT_INV_cnt\(5),
	datae => \stage1|ALT_INV_cnt\(7),
	dataf => \stage1|ALT_INV_cnt\(0),
	combout => \stage1|Mux0~0_combout\);

-- Location: FF_X85_Y23_N55
\stage1|cnt[5]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage1|Add0~17_sumout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage1|cnt[5]~DUPLICATE_q\);

-- Location: LABCELL_X85_Y23_N57
\stage1|Mux0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux0~3_combout\ = ( \stage1|cnt\(2) & ( \stage1|cnt\(7) & ( (!\stage1|cnt[5]~DUPLICATE_q\ & (((\stage1|cnt[0]~DUPLICATE_q\)) # (\stage1|cnt\(4)))) # (\stage1|cnt[5]~DUPLICATE_q\ & (!\stage1|cnt\(4) $ (((!\stage1|cnt\(6) & 
-- \stage1|cnt[0]~DUPLICATE_q\))))) ) ) ) # ( !\stage1|cnt\(2) & ( \stage1|cnt\(7) & ( (!\stage1|cnt[5]~DUPLICATE_q\ & ((!\stage1|cnt\(4) & ((!\stage1|cnt[0]~DUPLICATE_q\) # (\stage1|cnt\(6)))) # (\stage1|cnt\(4) & (\stage1|cnt\(6) & 
-- !\stage1|cnt[0]~DUPLICATE_q\)))) # (\stage1|cnt[5]~DUPLICATE_q\ & ((!\stage1|cnt\(6) $ (!\stage1|cnt[0]~DUPLICATE_q\)))) ) ) ) # ( \stage1|cnt\(2) & ( !\stage1|cnt\(7) & ( (!\stage1|cnt[5]~DUPLICATE_q\ & ((!\stage1|cnt\(6) $ 
-- (!\stage1|cnt[0]~DUPLICATE_q\)))) # (\stage1|cnt[5]~DUPLICATE_q\ & ((!\stage1|cnt\(4) & (!\stage1|cnt\(6))) # (\stage1|cnt\(4) & ((!\stage1|cnt[0]~DUPLICATE_q\))))) ) ) ) # ( !\stage1|cnt\(2) & ( !\stage1|cnt\(7) & ( (!\stage1|cnt\(4) & 
-- ((!\stage1|cnt[5]~DUPLICATE_q\ & (\stage1|cnt\(6))) # (\stage1|cnt[5]~DUPLICATE_q\ & ((\stage1|cnt[0]~DUPLICATE_q\))))) # (\stage1|cnt\(4) & (!\stage1|cnt[0]~DUPLICATE_q\ & (!\stage1|cnt[5]~DUPLICATE_q\ $ (\stage1|cnt\(6))))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100100100101010001111011110000010001111001110000110011011011110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|ALT_INV_cnt\(4),
	datab => \stage1|ALT_INV_cnt[5]~DUPLICATE_q\,
	datac => \stage1|ALT_INV_cnt\(6),
	datad => \stage1|ALT_INV_cnt[0]~DUPLICATE_q\,
	datae => \stage1|ALT_INV_cnt\(2),
	dataf => \stage1|ALT_INV_cnt\(7),
	combout => \stage1|Mux0~3_combout\);

-- Location: LABCELL_X85_Y23_N51
\stage1|Mux0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage1|Mux0~4_combout\ = ( \stage1|Mux0~0_combout\ & ( \stage1|Mux0~3_combout\ & ( (!\stage1|cnt[1]~DUPLICATE_q\ & ((!\stage1|cnt\(3)) # ((\stage1|Mux0~1_combout\)))) # (\stage1|cnt[1]~DUPLICATE_q\ & (((!\stage1|Mux0~2_combout\)) # (\stage1|cnt\(3)))) ) 
-- ) ) # ( !\stage1|Mux0~0_combout\ & ( \stage1|Mux0~3_combout\ & ( (!\stage1|cnt[1]~DUPLICATE_q\ & (\stage1|cnt\(3) & (\stage1|Mux0~1_combout\))) # (\stage1|cnt[1]~DUPLICATE_q\ & (((!\stage1|Mux0~2_combout\)) # (\stage1|cnt\(3)))) ) ) ) # ( 
-- \stage1|Mux0~0_combout\ & ( !\stage1|Mux0~3_combout\ & ( (!\stage1|cnt[1]~DUPLICATE_q\ & ((!\stage1|cnt\(3)) # ((\stage1|Mux0~1_combout\)))) # (\stage1|cnt[1]~DUPLICATE_q\ & (!\stage1|cnt\(3) & ((!\stage1|Mux0~2_combout\)))) ) ) ) # ( 
-- !\stage1|Mux0~0_combout\ & ( !\stage1|Mux0~3_combout\ & ( (!\stage1|cnt[1]~DUPLICATE_q\ & (\stage1|cnt\(3) & (\stage1|Mux0~1_combout\))) # (\stage1|cnt[1]~DUPLICATE_q\ & (!\stage1|cnt\(3) & ((!\stage1|Mux0~2_combout\)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011000000010110011101000101001010111000100111101111110011011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage1|ALT_INV_cnt[1]~DUPLICATE_q\,
	datab => \stage1|ALT_INV_cnt\(3),
	datac => \stage1|ALT_INV_Mux0~1_combout\,
	datad => \stage1|ALT_INV_Mux0~2_combout\,
	datae => \stage1|ALT_INV_Mux0~0_combout\,
	dataf => \stage1|ALT_INV_Mux0~3_combout\,
	combout => \stage1|Mux0~4_combout\);

-- Location: LABCELL_X85_Y23_N42
\stage2|stage0|next_state.One~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage0|next_state.One~0_combout\ = ( \stage1|Mux0~4_combout\ & ( (!\stage2|stage0|current_state.OneZero~DUPLICATE_q\ & !\stage2|stage0|current_state.OneZeroOne~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011001100000000001100110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|stage0|ALT_INV_current_state.OneZero~DUPLICATE_q\,
	datad => \stage2|stage0|ALT_INV_current_state.OneZeroOne~q\,
	dataf => \stage1|ALT_INV_Mux0~4_combout\,
	combout => \stage2|stage0|next_state.One~0_combout\);

-- Location: FF_X85_Y23_N43
\stage2|stage0|current_state.One\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage0|next_state.One~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage0|current_state.One~q\);

-- Location: LABCELL_X83_Y23_N39
\stage2|stage0|Selector1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage0|Selector1~0_combout\ = ( \stage2|stage0|current_state.OneZeroOneOne~q\ & ( !\stage1|Mux0~4_combout\ ) ) # ( !\stage2|stage0|current_state.OneZeroOneOne~q\ & ( (\stage2|stage0|current_state.One~q\ & !\stage1|Mux0~4_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100000000001100110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|stage0|ALT_INV_current_state.One~q\,
	datad => \stage1|ALT_INV_Mux0~4_combout\,
	dataf => \stage2|stage0|ALT_INV_current_state.OneZeroOneOne~q\,
	combout => \stage2|stage0|Selector1~0_combout\);

-- Location: FF_X83_Y23_N41
\stage2|stage0|current_state.OneZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage0|Selector1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage0|current_state.OneZero~q\);

-- Location: LABCELL_X83_Y23_N33
\stage2|stage0|next_state.OneZeroOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage0|next_state.OneZeroOne~0_combout\ = ( \stage1|Mux0~4_combout\ & ( \stage2|stage0|current_state.OneZero~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \stage2|stage0|ALT_INV_current_state.OneZero~q\,
	dataf => \stage1|ALT_INV_Mux0~4_combout\,
	combout => \stage2|stage0|next_state.OneZeroOne~0_combout\);

-- Location: FF_X83_Y23_N34
\stage2|stage0|current_state.OneZeroOne\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage0|next_state.OneZeroOne~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage0|current_state.OneZeroOne~q\);

-- Location: LABCELL_X83_Y23_N27
\stage2|stage0|next_state.OneZeroOneOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage0|next_state.OneZeroOneOne~0_combout\ = ( \stage1|Mux0~4_combout\ & ( \stage2|stage0|current_state.OneZeroOne~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \stage2|stage0|ALT_INV_current_state.OneZeroOne~q\,
	dataf => \stage1|ALT_INV_Mux0~4_combout\,
	combout => \stage2|stage0|next_state.OneZeroOneOne~0_combout\);

-- Location: FF_X83_Y23_N29
\stage2|stage0|current_state.OneZeroOneOne\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage0|next_state.OneZeroOneOne~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage0|current_state.OneZeroOneOne~q\);

-- Location: LABCELL_X83_Y23_N30
\stage2|stage1|tmp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage1|tmp[0]~2_combout\ = ( \stage2|stage1|tmp\(2) & ( (!\stage2|stage0|current_state.OneZeroOneOne~q\ & (!\stage2|stage1|tmp\(1) & \stage2|stage1|tmp\(0))) # (\stage2|stage0|current_state.OneZeroOneOne~q\ & ((!\stage2|stage1|tmp\(0)))) ) ) # ( 
-- !\stage2|stage1|tmp\(2) & ( !\stage2|stage0|current_state.OneZeroOneOne~q\ $ (!\stage2|stage1|tmp\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000000001111110000000000111111000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|stage1|ALT_INV_tmp\(1),
	datac => \stage2|stage0|ALT_INV_current_state.OneZeroOneOne~q\,
	datad => \stage2|stage1|ALT_INV_tmp\(0),
	dataf => \stage2|stage1|ALT_INV_tmp\(2),
	combout => \stage2|stage1|tmp[0]~2_combout\);

-- Location: LABCELL_X83_Y23_N12
\stage2|stage1|tmp[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage1|tmp[0]~feeder_combout\ = \stage2|stage1|tmp[0]~2_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011001100110011001100110011001100110011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|stage1|ALT_INV_tmp[0]~2_combout\,
	combout => \stage2|stage1|tmp[0]~feeder_combout\);

-- Location: FF_X83_Y23_N14
\stage2|stage1|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage1|tmp[0]~feeder_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage1|tmp\(0));

-- Location: LABCELL_X83_Y23_N6
\stage2|stage1|tmp[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage1|tmp[1]~0_combout\ = ( \stage2|stage1|tmp\(1) & ( \stage2|stage1|tmp\(0) & ( (!\reset~input_o\ & (!\stage2|stage1|tmp\(2) & !\stage2|stage0|current_state.OneZeroOneOne~q\)) ) ) ) # ( !\stage2|stage1|tmp\(1) & ( \stage2|stage1|tmp\(0) & ( 
-- (!\reset~input_o\ & \stage2|stage0|current_state.OneZeroOneOne~q\) ) ) ) # ( \stage2|stage1|tmp\(1) & ( !\stage2|stage1|tmp\(0) & ( !\reset~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000101010101010101000001010000010101000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_reset~input_o\,
	datab => \stage2|stage1|ALT_INV_tmp\(2),
	datac => \stage2|stage0|ALT_INV_current_state.OneZeroOneOne~q\,
	datae => \stage2|stage1|ALT_INV_tmp\(1),
	dataf => \stage2|stage1|ALT_INV_tmp\(0),
	combout => \stage2|stage1|tmp[1]~0_combout\);

-- Location: LABCELL_X83_Y23_N57
\stage2|stage1|tmp[1]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage1|tmp[1]~feeder_combout\ = \stage2|stage1|tmp[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage1|ALT_INV_tmp[1]~0_combout\,
	combout => \stage2|stage1|tmp[1]~feeder_combout\);

-- Location: FF_X83_Y23_N59
\stage2|stage1|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage1|tmp[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage1|tmp\(1));

-- Location: LABCELL_X83_Y23_N24
\stage2|stage1|tmp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage1|tmp[2]~1_combout\ = ( \stage2|stage1|tmp\(0) & ( (!\stage2|stage1|tmp\(1) & ((\stage2|stage1|tmp\(2)))) # (\stage2|stage1|tmp\(1) & (\stage2|stage0|current_state.OneZeroOneOne~q\ & !\stage2|stage1|tmp\(2))) ) ) # ( !\stage2|stage1|tmp\(0) & 
-- ( \stage2|stage1|tmp\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111100000011110011000000001111001100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|stage1|ALT_INV_tmp\(1),
	datac => \stage2|stage0|ALT_INV_current_state.OneZeroOneOne~q\,
	datad => \stage2|stage1|ALT_INV_tmp\(2),
	dataf => \stage2|stage1|ALT_INV_tmp\(0),
	combout => \stage2|stage1|tmp[2]~1_combout\);

-- Location: LABCELL_X83_Y23_N15
\stage2|stage1|tmp[2]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage1|tmp[2]~feeder_combout\ = \stage2|stage1|tmp[2]~1_combout\

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010101010101010101010101010101010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage1|ALT_INV_tmp[2]~1_combout\,
	combout => \stage2|stage1|tmp[2]~feeder_combout\);

-- Location: FF_X83_Y23_N17
\stage2|stage1|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage1|tmp[2]~feeder_combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage1|tmp\(2));

-- Location: FF_X83_Y23_N49
\stage2|stage1|count[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage2|stage1|tmp\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage1|count[2]~DUPLICATE_q\);

-- Location: FF_X83_Y23_N56
\stage2|stage1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage2|stage1|tmp\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage1|count\(1));

-- Location: LABCELL_X83_Y23_N42
\stage2|stage1|count[0]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage1|count[0]~feeder_combout\ = ( \stage2|stage1|tmp\(0) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \stage2|stage1|ALT_INV_tmp\(0),
	combout => \stage2|stage1|count[0]~feeder_combout\);

-- Location: FF_X83_Y23_N43
\stage2|stage1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage1|count[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage1|count\(0));

-- Location: LABCELL_X88_Y23_N51
\stage3|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux6~0_combout\ = ( \stage2|stage1|count\(0) & ( (!\stage2|stage1|count[2]~DUPLICATE_q\ & !\stage2|stage1|count\(1)) ) ) # ( !\stage2|stage1|count\(0) & ( (\stage2|stage1|count[2]~DUPLICATE_q\ & !\stage2|stage1|count\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000010100000101000010100000101000001010000010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage1|ALT_INV_count[2]~DUPLICATE_q\,
	datac => \stage2|stage1|ALT_INV_count\(1),
	dataf => \stage2|stage1|ALT_INV_count\(0),
	combout => \stage3|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y23_N57
\stage3|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux5~0_combout\ = ( !\stage2|stage1|count\(0) & ( \stage2|stage1|count\(1) & ( \stage2|stage1|count[2]~DUPLICATE_q\ ) ) ) # ( \stage2|stage1|count\(0) & ( !\stage2|stage1|count\(1) & ( \stage2|stage1|count[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000010101010101010101010101010101010000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage1|ALT_INV_count[2]~DUPLICATE_q\,
	datae => \stage2|stage1|ALT_INV_count\(0),
	dataf => \stage2|stage1|ALT_INV_count\(1),
	combout => \stage3|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y23_N36
\stage3|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux4~0_combout\ = ( !\stage2|stage1|count\(0) & ( \stage2|stage1|count\(1) & ( !\stage2|stage1|count[2]~DUPLICATE_q\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011110000111100000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \stage2|stage1|ALT_INV_count[2]~DUPLICATE_q\,
	datae => \stage2|stage1|ALT_INV_count\(0),
	dataf => \stage2|stage1|ALT_INV_count\(1),
	combout => \stage3|Mux4~0_combout\);

-- Location: FF_X83_Y23_N50
\stage2|stage1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage2|stage1|tmp\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage1|count\(2));

-- Location: LABCELL_X83_Y23_N3
\stage3|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux3~0_combout\ = ( \stage2|stage1|count\(2) & ( !\stage2|stage1|count\(1) $ (\stage2|stage1|count\(0)) ) ) # ( !\stage2|stage1|count\(2) & ( (!\stage2|stage1|count\(1) & \stage2|stage1|count\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110000000000001111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \stage2|stage1|ALT_INV_count\(1),
	datad => \stage2|stage1|ALT_INV_count\(0),
	dataf => \stage2|stage1|ALT_INV_count\(2),
	combout => \stage3|Mux3~0_combout\);

-- Location: LABCELL_X83_Y23_N51
\stage3|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux2~0_combout\ = ( \stage2|stage1|count\(1) & ( \stage2|stage1|count\(0) ) ) # ( !\stage2|stage1|count\(1) & ( (\stage2|stage1|count\(0)) # (\stage2|stage1|count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111000011110000111101011111010111110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage1|ALT_INV_count\(2),
	datac => \stage2|stage1|ALT_INV_count\(0),
	datae => \stage2|stage1|ALT_INV_count\(1),
	combout => \stage3|Mux2~0_combout\);

-- Location: LABCELL_X88_Y23_N54
\stage3|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux1~0_combout\ = ( \stage2|stage1|count\(0) & ( (!\stage2|stage1|count[2]~DUPLICATE_q\) # (\stage2|stage1|count\(1)) ) ) # ( !\stage2|stage1|count\(0) & ( (\stage2|stage1|count\(1) & !\stage2|stage1|count[2]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011000000110000001100000011000011110011111100111111001111110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|stage1|ALT_INV_count\(1),
	datac => \stage2|stage1|ALT_INV_count[2]~DUPLICATE_q\,
	dataf => \stage2|stage1|ALT_INV_count\(0),
	combout => \stage3|Mux1~0_combout\);

-- Location: LABCELL_X88_Y23_N3
\stage3|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage3|Mux0~0_combout\ = ( \stage2|stage1|count\(0) & ( !\stage2|stage1|count[2]~DUPLICATE_q\ $ (\stage2|stage1|count\(1)) ) ) # ( !\stage2|stage1|count\(0) & ( (!\stage2|stage1|count[2]~DUPLICATE_q\ & !\stage2|stage1|count\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010000010100000101000001010000010100101101001011010010110100101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage1|ALT_INV_count[2]~DUPLICATE_q\,
	datac => \stage2|stage1|ALT_INV_count\(1),
	dataf => \stage2|stage1|ALT_INV_count\(0),
	combout => \stage3|Mux0~0_combout\);

-- Location: LABCELL_X83_Y23_N18
\stage2|stage0|next_state2.One2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage0|next_state2.One2~0_combout\ = ( !\stage2|stage0|current_state2.ZeroZero~q\ & ( \stage1|Mux0~4_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111110000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datae => \stage2|stage0|ALT_INV_current_state2.ZeroZero~q\,
	dataf => \stage1|ALT_INV_Mux0~4_combout\,
	combout => \stage2|stage0|next_state2.One2~0_combout\);

-- Location: FF_X83_Y23_N20
\stage2|stage0|current_state2.One2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage0|next_state2.One2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage0|current_state2.One2~q\);

-- Location: LABCELL_X83_Y23_N36
\stage2|stage0|Selector2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage0|Selector2~0_combout\ = ( !\stage1|Mux0~4_combout\ & ( (!\stage2|stage0|current_state2.ZeroZeroOne~q\ & !\stage2|stage0|current_state2.One2~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111000000000000111100000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \stage2|stage0|ALT_INV_current_state2.ZeroZeroOne~q\,
	datad => \stage2|stage0|ALT_INV_current_state2.One2~q\,
	dataf => \stage1|ALT_INV_Mux0~4_combout\,
	combout => \stage2|stage0|Selector2~0_combout\);

-- Location: FF_X83_Y23_N37
\stage2|stage0|current_state2.ZeroZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage0|Selector2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage0|current_state2.ZeroZero~q\);

-- Location: LABCELL_X85_Y23_N45
\stage2|stage0|next_state2.ZeroZeroOne~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage0|next_state2.ZeroZeroOne~0_combout\ = ( \stage1|Mux0~4_combout\ & ( \stage2|stage0|current_state2.ZeroZero~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000001111000011110000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \stage2|stage0|ALT_INV_current_state2.ZeroZero~q\,
	dataf => \stage1|ALT_INV_Mux0~4_combout\,
	combout => \stage2|stage0|next_state2.ZeroZeroOne~0_combout\);

-- Location: FF_X85_Y23_N47
\stage2|stage0|current_state2.ZeroZeroOne\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage0|next_state2.ZeroZeroOne~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage0|current_state2.ZeroZeroOne~q\);

-- Location: LABCELL_X83_Y23_N0
\stage2|stage0|next_state2.ZeroZeroOneZero~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage0|next_state2.ZeroZeroOneZero~0_combout\ = ( !\stage1|Mux0~4_combout\ & ( \stage2|stage0|current_state2.ZeroZeroOne~q\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \stage2|stage0|ALT_INV_current_state2.ZeroZeroOne~q\,
	dataf => \stage1|ALT_INV_Mux0~4_combout\,
	combout => \stage2|stage0|next_state2.ZeroZeroOneZero~0_combout\);

-- Location: FF_X83_Y23_N1
\stage2|stage0|current_state2.ZeroZeroOneZero\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	d => \stage2|stage0|next_state2.ZeroZeroOneZero~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage0|current_state2.ZeroZeroOneZero~q\);

-- Location: MLABCELL_X87_Y23_N42
\stage2|stage2|tmp[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage2|tmp[1]~0_combout\ = ( \stage2|stage2|tmp\(0) & ( \stage2|stage2|tmp\(2) & ( (!\stage2|stage2|tmp\(1) & (\stage2|stage0|current_state2.ZeroZeroOneZero~q\ & !\reset~input_o\)) ) ) ) # ( !\stage2|stage2|tmp\(0) & ( \stage2|stage2|tmp\(2) & ( 
-- (\stage2|stage2|tmp\(1) & !\reset~input_o\) ) ) ) # ( \stage2|stage2|tmp\(0) & ( !\stage2|stage2|tmp\(2) & ( (!\reset~input_o\ & (!\stage2|stage2|tmp\(1) $ (!\stage2|stage0|current_state2.ZeroZeroOneZero~q\))) ) ) ) # ( !\stage2|stage2|tmp\(0) & ( 
-- !\stage2|stage2|tmp\(2) & ( (\stage2|stage2|tmp\(1) & !\reset~input_o\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000011000000110000001010000010100000010000000100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage2|ALT_INV_tmp\(1),
	datab => \stage2|stage0|ALT_INV_current_state2.ZeroZeroOneZero~q\,
	datac => \ALT_INV_reset~input_o\,
	datae => \stage2|stage2|ALT_INV_tmp\(0),
	dataf => \stage2|stage2|ALT_INV_tmp\(2),
	combout => \stage2|stage2|tmp[1]~0_combout\);

-- Location: FF_X87_Y23_N29
\stage2|stage2|tmp[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage2|stage2|tmp[1]~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage2|tmp\(1));

-- Location: MLABCELL_X87_Y23_N21
\stage2|stage2|tmp[0]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage2|tmp[0]~2_combout\ = ( \stage2|stage2|tmp\(2) & ( (!\stage2|stage2|tmp\(0) & (\stage2|stage0|current_state2.ZeroZeroOneZero~q\)) # (\stage2|stage2|tmp\(0) & (!\stage2|stage0|current_state2.ZeroZeroOneZero~q\ & !\stage2|stage2|tmp\(1))) ) ) # 
-- ( !\stage2|stage2|tmp\(2) & ( !\stage2|stage2|tmp\(0) $ (!\stage2|stage0|current_state2.ZeroZeroOneZero~q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101001011010010110100101101001011010000010100101101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage2|ALT_INV_tmp\(0),
	datac => \stage2|stage0|ALT_INV_current_state2.ZeroZeroOneZero~q\,
	datad => \stage2|stage2|ALT_INV_tmp\(1),
	dataf => \stage2|stage2|ALT_INV_tmp\(2),
	combout => \stage2|stage2|tmp[0]~2_combout\);

-- Location: FF_X85_Y23_N20
\stage2|stage2|tmp[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage2|stage2|tmp[0]~2_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage2|tmp\(0));

-- Location: MLABCELL_X87_Y23_N27
\stage2|stage2|tmp[2]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage2|stage2|tmp[2]~1_combout\ = ( \stage2|stage2|tmp\(1) & ( \stage2|stage0|current_state2.ZeroZeroOneZero~q\ & ( !\stage2|stage2|tmp\(0) $ (!\stage2|stage2|tmp\(2)) ) ) ) # ( !\stage2|stage2|tmp\(1) & ( \stage2|stage0|current_state2.ZeroZeroOneZero~q\ 
-- & ( \stage2|stage2|tmp\(2) ) ) ) # ( \stage2|stage2|tmp\(1) & ( !\stage2|stage0|current_state2.ZeroZeroOneZero~q\ & ( (!\stage2|stage2|tmp\(0) & \stage2|stage2|tmp\(2)) ) ) ) # ( !\stage2|stage2|tmp\(1) & ( 
-- !\stage2|stage0|current_state2.ZeroZeroOneZero~q\ & ( \stage2|stage2|tmp\(2) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001010101000000000111111110101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage2|ALT_INV_tmp\(0),
	datad => \stage2|stage2|ALT_INV_tmp\(2),
	datae => \stage2|stage2|ALT_INV_tmp\(1),
	dataf => \stage2|stage0|ALT_INV_current_state2.ZeroZeroOneZero~q\,
	combout => \stage2|stage2|tmp[2]~1_combout\);

-- Location: FF_X87_Y23_N50
\stage2|stage2|tmp[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage2|stage2|tmp[2]~1_combout\,
	sclr => \reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage2|tmp\(2));

-- Location: FF_X83_Y23_N10
\stage2|stage2|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage2|stage2|tmp\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage2|count\(2));

-- Location: FF_X85_Y23_N14
\stage2|stage2|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage2|stage2|tmp\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage2|count\(0));

-- Location: FF_X85_Y23_N23
\stage2|stage2|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \stage0|en_out~q\,
	asdata => \stage2|stage2|tmp\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \stage2|stage2|count\(1));

-- Location: MLABCELL_X87_Y23_N18
\stage4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage4|Mux6~0_combout\ = (!\stage2|stage2|count\(1) & (!\stage2|stage2|count\(2) $ (!\stage2|stage2|count\(0))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011110000000000001111000000000000111100000000000011110000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|stage2|ALT_INV_count\(2),
	datac => \stage2|stage2|ALT_INV_count\(0),
	datad => \stage2|stage2|ALT_INV_count\(1),
	combout => \stage4|Mux6~0_combout\);

-- Location: MLABCELL_X87_Y23_N3
\stage4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage4|Mux5~0_combout\ = ( \stage2|stage2|count\(1) & ( (!\stage2|stage2|count\(0) & \stage2|stage2|count\(2)) ) ) # ( !\stage2|stage2|count\(1) & ( (\stage2|stage2|count\(0) & \stage2|stage2|count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101000010100000101000000101000001010000101000001010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage2|ALT_INV_count\(0),
	datac => \stage2|stage2|ALT_INV_count\(2),
	datae => \stage2|stage2|ALT_INV_count\(1),
	combout => \stage4|Mux5~0_combout\);

-- Location: MLABCELL_X87_Y23_N6
\stage4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage4|Mux4~0_combout\ = (!\stage2|stage2|count\(0) & (!\stage2|stage2|count\(2) & \stage2|stage2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000000000100010000000000010001000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage2|ALT_INV_count\(0),
	datab => \stage2|stage2|ALT_INV_count\(2),
	datad => \stage2|stage2|ALT_INV_count\(1),
	combout => \stage4|Mux4~0_combout\);

-- Location: MLABCELL_X87_Y23_N9
\stage4|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage4|Mux3~0_combout\ = (!\stage2|stage2|count\(0) & (\stage2|stage2|count\(2) & !\stage2|stage2|count\(1))) # (\stage2|stage2|count\(0) & (!\stage2|stage2|count\(2) $ (\stage2|stage2|count\(1))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000101010110100000010101011010000001010101101000000101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage2|ALT_INV_count\(0),
	datac => \stage2|stage2|ALT_INV_count\(2),
	datad => \stage2|stage2|ALT_INV_count\(1),
	combout => \stage4|Mux3~0_combout\);

-- Location: MLABCELL_X87_Y23_N15
\stage4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage4|Mux2~0_combout\ = ( \stage2|stage2|count\(1) & ( \stage2|stage2|count\(0) ) ) # ( !\stage2|stage2|count\(1) & ( (\stage2|stage2|count\(2)) # (\stage2|stage2|count\(0)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010101010101010101011111010111110101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage2|ALT_INV_count\(0),
	datac => \stage2|stage2|ALT_INV_count\(2),
	datae => \stage2|stage2|ALT_INV_count\(1),
	combout => \stage4|Mux2~0_combout\);

-- Location: MLABCELL_X87_Y23_N33
\stage4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage4|Mux1~0_combout\ = ( \stage2|stage2|count\(1) & ( (!\stage2|stage2|count\(2)) # (\stage2|stage2|count\(0)) ) ) # ( !\stage2|stage2|count\(1) & ( (\stage2|stage2|count\(0) & !\stage2|stage2|count\(2)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000001010000111101011111010101010000010100001111010111110101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \stage2|stage2|ALT_INV_count\(0),
	datac => \stage2|stage2|ALT_INV_count\(2),
	datae => \stage2|stage2|ALT_INV_count\(1),
	combout => \stage4|Mux1~0_combout\);

-- Location: MLABCELL_X87_Y23_N48
\stage4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \stage4|Mux0~0_combout\ = (!\stage2|stage2|count\(2) & ((!\stage2|stage2|count\(1)))) # (\stage2|stage2|count\(2) & (\stage2|stage2|count\(0) & \stage2|stage2|count\(1)))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1100110000000011110011000000001111001100000000111100110000000011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \stage2|stage2|ALT_INV_count\(2),
	datac => \stage2|stage2|ALT_INV_count\(0),
	datad => \stage2|stage2|ALT_INV_count\(1),
	combout => \stage4|Mux0~0_combout\);

-- Location: MLABCELL_X39_Y19_N3
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


