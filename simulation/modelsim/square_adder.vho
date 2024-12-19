-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "12/19/2024 01:22:39"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	square_adder IS
    PORT (
	X : IN std_logic_vector(3 DOWNTO 0);
	Start : IN std_logic;
	Step : IN std_logic;
	MCLK : IN std_logic;
	Rst : IN std_logic;
	Cy : OUT std_logic;
	sum : OUT std_logic_vector(7 DOWNTO 0);
	HEX0 : OUT std_logic_vector(7 DOWNTO 0);
	HEX1 : OUT std_logic_vector(7 DOWNTO 0);
	HEX2 : OUT std_logic_vector(7 DOWNTO 0)
	);
END square_adder;

-- Design Ports Information
-- Start	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Step	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cy	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[0]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_L17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF square_adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Start : std_logic;
SIGNAL ww_Step : std_logic;
SIGNAL ww_MCLK : std_logic;
SIGNAL ww_Rst : std_logic;
SIGNAL ww_Cy : std_logic;
SIGNAL ww_sum : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \Step~input_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \inst_rom_squares|data[4]~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_8|carry_out~combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_4|carry_out~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \ALT_INV_X[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_X[3]~input_o\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|ALT_INV_result~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|ALT_INV_result~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|ALT_INV_result~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|ALT_INV_result~combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|ALT_INV_result~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_4|ALT_INV_carry_out~0_combout\ : std_logic;
SIGNAL \inst_rom_squares|ALT_INV_data[4]~0_combout\ : std_logic;

BEGIN

ww_X <= X;
ww_Start <= Start;
ww_Step <= Step;
ww_MCLK <= MCLK;
ww_Rst <= Rst;
Cy <= ww_Cy;
sum <= ww_sum;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_X[0]~input_o\ <= NOT \X[0]~input_o\;
\ALT_INV_X[1]~input_o\ <= NOT \X[1]~input_o\;
\ALT_INV_X[2]~input_o\ <= NOT \X[2]~input_o\;
\ALT_INV_X[3]~input_o\ <= NOT \X[3]~input_o\;
\inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|ALT_INV_result~0_combout\ <= NOT \inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|result~0_combout\;
\inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|ALT_INV_result~0_combout\ <= NOT \inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|result~0_combout\;
\inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|ALT_INV_result~0_combout\ <= NOT \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0_combout\;
\inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|ALT_INV_result~combout\ <= NOT \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~combout\;
\inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|ALT_INV_result~0_combout\ <= NOT \inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\;
\inst_adder_8bits|instance_full_adder_4|ALT_INV_carry_out~0_combout\ <= NOT \inst_adder_8bits|instance_full_adder_4|carry_out~0_combout\;
\inst_rom_squares|ALT_INV_data[4]~0_combout\ <= NOT \inst_rom_squares|data[4]~0_combout\;

-- Location: IOOBUF_X89_Y38_N39
\Cy~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder_8bits|instance_full_adder_8|carry_out~combout\,
	devoe => ww_devoe,
	o => ww_Cy);

-- Location: IOOBUF_X89_Y9_N22
\sum[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_X[0]~input_o\,
	devoe => ww_devoe,
	o => ww_sum(0));

-- Location: IOOBUF_X89_Y6_N22
\sum[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_X[0]~input_o\,
	devoe => ww_devoe,
	o => ww_sum(1));

-- Location: IOOBUF_X89_Y37_N22
\sum[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder_8bits|instance_full_adder_4|ALT_INV_carry_out~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(2));

-- Location: IOOBUF_X89_Y35_N96
\sum[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|ALT_INV_result~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(3));

-- Location: IOOBUF_X89_Y38_N22
\sum[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|ALT_INV_result~combout\,
	devoe => ww_devoe,
	o => ww_sum(4));

-- Location: IOOBUF_X89_Y35_N79
\sum[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|ALT_INV_result~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(5));

-- Location: IOOBUF_X89_Y35_N62
\sum[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|ALT_INV_result~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(6));

-- Location: IOOBUF_X89_Y36_N22
\sum[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|ALT_INV_result~0_combout\,
	devoe => ww_devoe,
	o => ww_sum(7));

-- Location: IOOBUF_X74_Y81_N76
\HEX0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(0));

-- Location: IOOBUF_X72_Y81_N53
\HEX0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(1));

-- Location: IOOBUF_X40_Y81_N19
\HEX0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(2));

-- Location: IOOBUF_X52_Y81_N36
\HEX0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(3));

-- Location: IOOBUF_X34_Y81_N76
\HEX0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(4));

-- Location: IOOBUF_X32_Y0_N36
\HEX0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(5));

-- Location: IOOBUF_X66_Y81_N93
\HEX0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX0(6));

-- Location: IOOBUF_X40_Y0_N36
\HEX0[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX0(7));

-- Location: IOOBUF_X6_Y0_N2
\HEX1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(0));

-- Location: IOOBUF_X30_Y0_N53
\HEX1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(1));

-- Location: IOOBUF_X58_Y81_N93
\HEX1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(2));

-- Location: IOOBUF_X66_Y81_N42
\HEX1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(3));

-- Location: IOOBUF_X52_Y0_N36
\HEX1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(4));

-- Location: IOOBUF_X38_Y0_N2
\HEX1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(5));

-- Location: IOOBUF_X68_Y0_N2
\HEX1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX1(6));

-- Location: IOOBUF_X89_Y6_N39
\HEX1[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX1(7));

-- Location: IOOBUF_X6_Y0_N36
\HEX2[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(0));

-- Location: IOOBUF_X89_Y38_N5
\HEX2[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(1));

-- Location: IOOBUF_X38_Y81_N2
\HEX2[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(2));

-- Location: IOOBUF_X28_Y0_N53
\HEX2[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(3));

-- Location: IOOBUF_X62_Y81_N19
\HEX2[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(4));

-- Location: IOOBUF_X50_Y0_N42
\HEX2[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(5));

-- Location: IOOBUF_X36_Y0_N36
\HEX2[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => ww_HEX2(6));

-- Location: IOOBUF_X34_Y81_N42
\HEX2[7]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_HEX2(7));

-- Location: IOIBUF_X89_Y36_N55
\X[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X89_Y36_N38
\X[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X89_Y36_N4
\X[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X89_Y6_N55
\X[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: LABCELL_X88_Y36_N30
\inst_rom_squares|data[4]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_rom_squares|data[4]~0_combout\ = (!\X[0]~input_o\ & (!\X[1]~input_o\ & ((\X[2]~input_o\)))) # (\X[0]~input_o\ & ((!\X[3]~input_o\ $ (!\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000101000111100000010100011110000001010001111000000101000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[1]~input_o\,
	datab => \ALT_INV_X[3]~input_o\,
	datac => \ALT_INV_X[2]~input_o\,
	datad => \ALT_INV_X[0]~input_o\,
	combout => \inst_rom_squares|data[4]~0_combout\);

-- Location: LABCELL_X88_Y36_N33
\inst_adder_8bits|instance_full_adder_8|carry_out\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_8|carry_out~combout\ = (((\X[0]~input_o\) # (\inst_rom_squares|data[4]~0_combout\)) # (\X[3]~input_o\)) # (\X[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111111111111011111111111111101111111111111110111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[1]~input_o\,
	datab => \ALT_INV_X[3]~input_o\,
	datac => \inst_rom_squares|ALT_INV_data[4]~0_combout\,
	datad => \ALT_INV_X[0]~input_o\,
	combout => \inst_adder_8bits|instance_full_adder_8|carry_out~combout\);

-- Location: LABCELL_X88_Y36_N6
\inst_adder_8bits|instance_full_adder_4|carry_out~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_4|carry_out~0_combout\ = (\X[1]~input_o\) # (\X[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011111100111111001111110011111100111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_X[0]~input_o\,
	datac => \ALT_INV_X[1]~input_o\,
	combout => \inst_adder_8bits|instance_full_adder_4|carry_out~0_combout\);

-- Location: LABCELL_X88_Y36_N15
\inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|result~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\ = ( \X[0]~input_o\ & ( !\X[2]~input_o\ $ (\X[1]~input_o\) ) ) # ( !\X[0]~input_o\ & ( \X[1]~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111101010100101010100000000111111111010101001010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[2]~input_o\,
	datad => \ALT_INV_X[1]~input_o\,
	datae => \ALT_INV_X[0]~input_o\,
	combout => \inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|result~0_combout\);

-- Location: LABCELL_X88_Y36_N9
\inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~combout\ = ( \inst_adder_8bits|instance_full_adder_4|carry_out~0_combout\ & ( !\inst_rom_squares|data[4]~0_combout\ ) ) # ( !\inst_adder_8bits|instance_full_adder_4|carry_out~0_combout\ 
-- & ( \inst_rom_squares|data[4]~0_combout\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111100001111000011110000111111110000111100001111000011110000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \inst_rom_squares|ALT_INV_data[4]~0_combout\,
	dataf => \inst_adder_8bits|instance_full_adder_4|ALT_INV_carry_out~0_combout\,
	combout => \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~combout\);

-- Location: LABCELL_X88_Y36_N3
\inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|result~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|result~0_combout\ = ( \X[0]~input_o\ & ( (!\X[2]~input_o\ & ((!\X[3]~input_o\) # (!\X[1]~input_o\))) # (\X[2]~input_o\ & (!\X[3]~input_o\ & !\X[1]~input_o\)) ) ) # ( !\X[0]~input_o\ & ( 
-- !\X[2]~input_o\ $ (((!\X[1]~input_o\) # (\X[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110100101111110101010000001010101101001011111101010100000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[2]~input_o\,
	datac => \ALT_INV_X[3]~input_o\,
	datad => \ALT_INV_X[1]~input_o\,
	datae => \ALT_INV_X[0]~input_o\,
	combout => \inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|result~0_combout\);

-- Location: LABCELL_X88_Y36_N24
\inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|result~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|result~0_combout\ = ( \X[0]~input_o\ & ( (!\X[3]~input_o\) # ((!\X[1]~input_o\ & \X[2]~input_o\)) ) ) # ( !\X[0]~input_o\ & ( (!\X[1]~input_o\ & ((\X[2]~input_o\) # (\X[3]~input_o\))) # 
-- (\X[1]~input_o\ & (!\X[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110111001101110110011101100111001101110011011101100111011001110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[1]~input_o\,
	datab => \ALT_INV_X[3]~input_o\,
	datac => \ALT_INV_X[2]~input_o\,
	datae => \ALT_INV_X[0]~input_o\,
	combout => \inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|result~0_combout\);

-- Location: LABCELL_X88_Y36_N51
\inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0_combout\ = ( \X[0]~input_o\ & ( (!\X[2]~input_o\) # (!\X[3]~input_o\) ) ) # ( !\X[0]~input_o\ & ( (!\X[2]~input_o\ & ((\X[1]~input_o\) # (\X[3]~input_o\))) # (\X[2]~input_o\ & 
-- (!\X[3]~input_o\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101011111010111110101111101001011010111110101111101011111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X[2]~input_o\,
	datac => \ALT_INV_X[3]~input_o\,
	datad => \ALT_INV_X[1]~input_o\,
	datae => \ALT_INV_X[0]~input_o\,
	combout => \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0_combout\);

-- Location: IOIBUF_X68_Y81_N35
\Start~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: IOIBUF_X89_Y6_N4
\Step~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Step,
	o => \Step~input_o\);

-- Location: IOIBUF_X60_Y81_N35
\MCLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCLK,
	o => \MCLK~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\Rst~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: MLABCELL_X3_Y2_N0
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


