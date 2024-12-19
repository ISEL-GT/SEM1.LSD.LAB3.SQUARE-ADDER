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

-- DATE "12/19/2024 13:59:04"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
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
-- Cy	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[0]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[4]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[5]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[6]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sum[7]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[7]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[7]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[7]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Step	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MCLK	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Rst	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \MCLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Cy~output_o\ : std_logic;
SIGNAL \sum[0]~output_o\ : std_logic;
SIGNAL \sum[1]~output_o\ : std_logic;
SIGNAL \sum[2]~output_o\ : std_logic;
SIGNAL \sum[3]~output_o\ : std_logic;
SIGNAL \sum[4]~output_o\ : std_logic;
SIGNAL \sum[5]~output_o\ : std_logic;
SIGNAL \sum[6]~output_o\ : std_logic;
SIGNAL \sum[7]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[7]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX1[7]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX2[7]~output_o\ : std_logic;
SIGNAL \MCLK~input_o\ : std_logic;
SIGNAL \MCLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \inst_rom_squares|data[6]~0_combout\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \inst_rom_squares|data[3]~3_combout\ : std_logic;
SIGNAL \inst_rom_squares|data[2]~4_combout\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \Step~input_o\ : std_logic;
SIGNAL \inst_asm|ROM|data[4]~4_combout\ : std_logic;
SIGNAL \Rst~input_o\ : std_logic;
SIGNAL \inst_asm|Flip_Flop_Q1|Q~q\ : std_logic;
SIGNAL \inst_asm|ROM|data[5]~3_combout\ : std_logic;
SIGNAL \inst_asm|Flip_Flop_Q2|Q~q\ : std_logic;
SIGNAL \inst_asm|ROM|data[3]~5_combout\ : std_logic;
SIGNAL \inst_asm|ROM|data[3]~6_combout\ : std_logic;
SIGNAL \inst_asm|Flip_Flop_Q0|Q~q\ : std_logic;
SIGNAL \inst_asm|ROM|data[1]~2_combout\ : std_logic;
SIGNAL \inst_registry_8bits|FFD1|Q~0_combout\ : std_logic;
SIGNAL \inst_asm|ROM|data[2]~1_combout\ : std_logic;
SIGNAL \inst_registry_8bits|FFD1|Q~q\ : std_logic;
SIGNAL \inst_registry_8bits|FFD2|Q~2_combout\ : std_logic;
SIGNAL \inst_registry_8bits|FFD2|Q~q\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_1|instance_half_adder_1|carry_out~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_3|instance_half_adder_2|result~combout\ : std_logic;
SIGNAL \inst_registry_8bits|FFD3|Q~q\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|result~combout\ : std_logic;
SIGNAL \inst_registry_8bits|FFD4|Q~q\ : std_logic;
SIGNAL \inst_rom_squares|data[4]~2_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~combout\ : std_logic;
SIGNAL \inst_registry_8bits|FFD5|Q~q\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_5|carry_out~1_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_5|carry_out~2_combout\ : std_logic;
SIGNAL \inst_rom_squares|data[5]~1_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_5|carry_out~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|result~combout\ : std_logic;
SIGNAL \inst_registry_8bits|FFD6|Q~q\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|result~combout\ : std_logic;
SIGNAL \inst_registry_8bits|FFD7|Q~q\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~combout\ : std_logic;
SIGNAL \inst_registry_8bits|FFD8|Q~q\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_7|carry_out~0_combout\ : std_logic;
SIGNAL \inst_adder_8bits|instance_full_adder_8|carry_out~0_combout\ : std_logic;
SIGNAL \inst_asm|ROM|data[0]~0_combout\ : std_logic;
SIGNAL \inst_mux_2x8|result[0]~2_combout\ : std_logic;
SIGNAL \inst_mux_2x8|result~3_combout\ : std_logic;
SIGNAL \inst_mux_2x8|result[2]~9_combout\ : std_logic;
SIGNAL \inst_mux_2x8|result[3]~4_combout\ : std_logic;
SIGNAL \inst_mux_2x8|result[4]~5_combout\ : std_logic;
SIGNAL \inst_mux_2x8|result[5]~6_combout\ : std_logic;
SIGNAL \inst_mux_2x8|result[6]~7_combout\ : std_logic;
SIGNAL \inst_mux_2x8|result[7]~8_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux9~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux10~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux11~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux20~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux21~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux22~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux31~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux32~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux33~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux44~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux42~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux43~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U0|dOut[0]~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U0|dOut[1]~1_combout\ : std_logic;
SIGNAL \inst_decoderHex|U0|dOut[2]~2_combout\ : std_logic;
SIGNAL \inst_decoderHex|U0|dOut[3]~3_combout\ : std_logic;
SIGNAL \inst_decoderHex|U0|dOut[4]~4_combout\ : std_logic;
SIGNAL \inst_decoderHex|U0|dOut[5]~5_combout\ : std_logic;
SIGNAL \inst_decoderHex|U0|dOut[6]~6_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux0~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux19~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux30~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux8~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux46~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux48~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux41~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux47~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U1|dOut[0]~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U1|dOut[1]~1_combout\ : std_logic;
SIGNAL \inst_decoderHex|U1|dOut[2]~2_combout\ : std_logic;
SIGNAL \inst_decoderHex|U1|dOut[3]~3_combout\ : std_logic;
SIGNAL \inst_decoderHex|U1|dOut[4]~4_combout\ : std_logic;
SIGNAL \inst_decoderHex|U1|dOut[5]~5_combout\ : std_logic;
SIGNAL \inst_decoderHex|U1|dOut[6]~6_combout\ : std_logic;
SIGNAL \inst_decoderHex|U2|Equal12~4_combout\ : std_logic;
SIGNAL \inst_decoderHex|U2|dOut[2]~8_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux45~0_combout\ : std_logic;
SIGNAL \inst_decoderHex|U2|dOut[5]~9_combout\ : std_logic;
SIGNAL \inst_decoderHex|U3|Mux34~0_combout\ : std_logic;
SIGNAL \ALT_INV_Rst~input_o\ : std_logic;
SIGNAL \inst_decoderHex|U2|ALT_INV_dOut[5]~9_combout\ : std_logic;
SIGNAL \inst_decoderHex|U2|ALT_INV_dOut[2]~8_combout\ : std_logic;
SIGNAL \inst_asm|ROM|ALT_INV_data[2]~1_combout\ : std_logic;
SIGNAL \inst_decoderHex|U1|ALT_INV_dOut[6]~6_combout\ : std_logic;
SIGNAL \inst_decoderHex|U1|ALT_INV_dOut[2]~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

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

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\MCLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MCLK~input_o\);
\ALT_INV_Rst~input_o\ <= NOT \Rst~input_o\;
\inst_decoderHex|U2|ALT_INV_dOut[5]~9_combout\ <= NOT \inst_decoderHex|U2|dOut[5]~9_combout\;
\inst_decoderHex|U2|ALT_INV_dOut[2]~8_combout\ <= NOT \inst_decoderHex|U2|dOut[2]~8_combout\;
\inst_asm|ROM|ALT_INV_data[2]~1_combout\ <= NOT \inst_asm|ROM|data[2]~1_combout\;
\inst_decoderHex|U1|ALT_INV_dOut[6]~6_combout\ <= NOT \inst_decoderHex|U1|dOut[6]~6_combout\;
\inst_decoderHex|U1|ALT_INV_dOut[2]~2_combout\ <= NOT \inst_decoderHex|U1|dOut[2]~2_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X51_Y54_N9
\Cy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_adder_8bits|instance_full_adder_8|carry_out~0_combout\,
	devoe => ww_devoe,
	o => \Cy~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\sum[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mux_2x8|result[0]~2_combout\,
	devoe => ww_devoe,
	o => \sum[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\sum[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mux_2x8|result~3_combout\,
	devoe => ww_devoe,
	o => \sum[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\sum[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mux_2x8|result[2]~9_combout\,
	devoe => ww_devoe,
	o => \sum[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\sum[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mux_2x8|result[3]~4_combout\,
	devoe => ww_devoe,
	o => \sum[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\sum[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mux_2x8|result[4]~5_combout\,
	devoe => ww_devoe,
	o => \sum[4]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\sum[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mux_2x8|result[5]~6_combout\,
	devoe => ww_devoe,
	o => \sum[5]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\sum[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mux_2x8|result[6]~7_combout\,
	devoe => ww_devoe,
	o => \sum[6]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\sum[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_mux_2x8|result[7]~8_combout\,
	devoe => ww_devoe,
	o => \sum[7]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\HEX0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U0|dOut[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\HEX0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U0|dOut[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\HEX0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U0|dOut[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\HEX0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U0|dOut[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\HEX0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U0|dOut[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\HEX0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U0|dOut[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\HEX0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U0|dOut[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\HEX0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX0[7]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\HEX1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U1|dOut[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\HEX1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U1|dOut[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\HEX1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U1|ALT_INV_dOut[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\HEX1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U1|dOut[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\HEX1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U1|dOut[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\HEX1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U1|dOut[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\HEX1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U1|ALT_INV_dOut[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\HEX1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX1[7]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\HEX2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U2|Equal12~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\HEX2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\HEX2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U2|ALT_INV_dOut[2]~8_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\HEX2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U2|Equal12~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\HEX2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U3|Mux45~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\HEX2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U2|ALT_INV_dOut[5]~9_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\HEX2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst_decoderHex|U3|Mux34~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\HEX2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \HEX2[7]~output_o\);

-- Location: IOIBUF_X34_Y0_N29
\MCLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MCLK,
	o => \MCLK~input_o\);

-- Location: CLKCTRL_G19
\MCLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MCLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MCLK~inputclkctrl_outclk\);

-- Location: IOIBUF_X51_Y54_N22
\X[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: IOIBUF_X51_Y54_N1
\X[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X54_Y54_N29
\X[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: LCCOMB_X52_Y50_N12
\inst_rom_squares|data[6]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_rom_squares|data[6]~0_combout\ = (\X[3]~input_o\ & ((\X[1]~input_o\) # (!\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst_rom_squares|data[6]~0_combout\);

-- Location: IOIBUF_X51_Y54_N29
\X[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: LCCOMB_X52_Y50_N24
\inst_rom_squares|data[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_rom_squares|data[3]~3_combout\ = (\X[0]~input_o\ & (\X[1]~input_o\ $ (\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst_rom_squares|data[3]~3_combout\);

-- Location: LCCOMB_X52_Y50_N30
\inst_rom_squares|data[2]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_rom_squares|data[2]~4_combout\ = (\X[1]~input_o\ & !\X[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[1]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst_rom_squares|data[2]~4_combout\);

-- Location: IOIBUF_X54_Y54_N22
\Start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: IOIBUF_X46_Y54_N29
\Step~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Step,
	o => \Step~input_o\);

-- Location: LCCOMB_X50_Y50_N16
\inst_asm|ROM|data[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|ROM|data[4]~4_combout\ = (\inst_asm|Flip_Flop_Q0|Q~q\ & (!\inst_asm|Flip_Flop_Q1|Q~q\ & ((\Start~input_o\) # (!\inst_asm|Flip_Flop_Q2|Q~q\)))) # (!\inst_asm|Flip_Flop_Q0|Q~q\ & (!\inst_asm|Flip_Flop_Q2|Q~q\ & ((\inst_asm|Flip_Flop_Q1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|Flip_Flop_Q0|Q~q\,
	datab => \inst_asm|Flip_Flop_Q2|Q~q\,
	datac => \Start~input_o\,
	datad => \inst_asm|Flip_Flop_Q1|Q~q\,
	combout => \inst_asm|ROM|data[4]~4_combout\);

-- Location: IOIBUF_X49_Y54_N29
\Rst~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Rst,
	o => \Rst~input_o\);

-- Location: FF_X51_Y50_N5
\inst_asm|Flip_Flop_Q1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	asdata => \inst_asm|ROM|data[4]~4_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_asm|Flip_Flop_Q1|Q~q\);

-- Location: LCCOMB_X51_Y50_N14
\inst_asm|ROM|data[5]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|ROM|data[5]~3_combout\ = (\inst_asm|Flip_Flop_Q1|Q~q\ & (!\inst_asm|Flip_Flop_Q2|Q~q\ & \inst_asm|Flip_Flop_Q0|Q~q\)) # (!\inst_asm|Flip_Flop_Q1|Q~q\ & (\inst_asm|Flip_Flop_Q2|Q~q\ & !\inst_asm|Flip_Flop_Q0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|Flip_Flop_Q1|Q~q\,
	datac => \inst_asm|Flip_Flop_Q2|Q~q\,
	datad => \inst_asm|Flip_Flop_Q0|Q~q\,
	combout => \inst_asm|ROM|data[5]~3_combout\);

-- Location: FF_X51_Y50_N15
\inst_asm|Flip_Flop_Q2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_asm|ROM|data[5]~3_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_asm|Flip_Flop_Q2|Q~q\);

-- Location: LCCOMB_X50_Y50_N14
\inst_asm|ROM|data[3]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|ROM|data[3]~5_combout\ = (\inst_asm|Flip_Flop_Q2|Q~q\ & (((!\Step~input_o\ & !\inst_asm|Flip_Flop_Q1|Q~q\)))) # (!\inst_asm|Flip_Flop_Q2|Q~q\ & ((\inst_asm|Flip_Flop_Q1|Q~q\ & ((\Step~input_o\))) # (!\inst_asm|Flip_Flop_Q1|Q~q\ & 
-- (\Start~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Start~input_o\,
	datab => \Step~input_o\,
	datac => \inst_asm|Flip_Flop_Q2|Q~q\,
	datad => \inst_asm|Flip_Flop_Q1|Q~q\,
	combout => \inst_asm|ROM|data[3]~5_combout\);

-- Location: LCCOMB_X51_Y50_N20
\inst_asm|ROM|data[3]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|ROM|data[3]~6_combout\ = (!\inst_asm|Flip_Flop_Q0|Q~q\ & \inst_asm|ROM|data[3]~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst_asm|Flip_Flop_Q0|Q~q\,
	datad => \inst_asm|ROM|data[3]~5_combout\,
	combout => \inst_asm|ROM|data[3]~6_combout\);

-- Location: FF_X51_Y50_N21
\inst_asm|Flip_Flop_Q0|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_asm|ROM|data[3]~6_combout\,
	clrn => \ALT_INV_Rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_asm|Flip_Flop_Q0|Q~q\);

-- Location: LCCOMB_X50_Y50_N6
\inst_asm|ROM|data[1]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|ROM|data[1]~2_combout\ = (\inst_asm|Flip_Flop_Q0|Q~q\ & (!\inst_asm|Flip_Flop_Q2|Q~q\ & \inst_asm|Flip_Flop_Q1|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|Flip_Flop_Q0|Q~q\,
	datab => \inst_asm|Flip_Flop_Q2|Q~q\,
	datad => \inst_asm|Flip_Flop_Q1|Q~q\,
	combout => \inst_asm|ROM|data[1]~2_combout\);

-- Location: LCCOMB_X51_Y50_N2
\inst_registry_8bits|FFD1|Q~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_registry_8bits|FFD1|Q~0_combout\ = \inst_registry_8bits|FFD1|Q~q\ $ (((\X[0]~input_o\ & \inst_asm|ROM|data[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \inst_asm|ROM|data[1]~2_combout\,
	datac => \inst_registry_8bits|FFD1|Q~q\,
	combout => \inst_registry_8bits|FFD1|Q~0_combout\);

-- Location: LCCOMB_X51_Y50_N10
\inst_asm|ROM|data[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|ROM|data[2]~1_combout\ = (!\inst_asm|Flip_Flop_Q2|Q~q\ & (!\inst_asm|Flip_Flop_Q1|Q~q\ & \inst_asm|Flip_Flop_Q0|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_asm|Flip_Flop_Q2|Q~q\,
	datac => \inst_asm|Flip_Flop_Q1|Q~q\,
	datad => \inst_asm|Flip_Flop_Q0|Q~q\,
	combout => \inst_asm|ROM|data[2]~1_combout\);

-- Location: FF_X51_Y50_N3
\inst_registry_8bits|FFD1|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_registry_8bits|FFD1|Q~0_combout\,
	clrn => \inst_asm|ROM|ALT_INV_data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registry_8bits|FFD1|Q~q\);

-- Location: LCCOMB_X51_Y50_N24
\inst_registry_8bits|FFD2|Q~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_registry_8bits|FFD2|Q~2_combout\ = \inst_registry_8bits|FFD2|Q~q\ $ (((\X[0]~input_o\ & (\inst_asm|ROM|data[1]~2_combout\ & \inst_registry_8bits|FFD1|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \inst_asm|ROM|data[1]~2_combout\,
	datac => \inst_registry_8bits|FFD2|Q~q\,
	datad => \inst_registry_8bits|FFD1|Q~q\,
	combout => \inst_registry_8bits|FFD2|Q~2_combout\);

-- Location: FF_X51_Y50_N25
\inst_registry_8bits|FFD2|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_registry_8bits|FFD2|Q~2_combout\,
	clrn => \inst_asm|ROM|ALT_INV_data[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registry_8bits|FFD2|Q~q\);

-- Location: LCCOMB_X51_Y50_N0
\inst_adder_8bits|instance_full_adder_1|instance_half_adder_1|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_1|instance_half_adder_1|carry_out~0_combout\ = (\X[0]~input_o\ & \inst_registry_8bits|FFD1|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \X[0]~input_o\,
	datad => \inst_registry_8bits|FFD1|Q~q\,
	combout => \inst_adder_8bits|instance_full_adder_1|instance_half_adder_1|carry_out~0_combout\);

-- Location: LCCOMB_X51_Y50_N22
\inst_adder_8bits|instance_full_adder_3|instance_half_adder_2|result\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_3|instance_half_adder_2|result~combout\ = \inst_registry_8bits|FFD3|Q~q\ $ (\inst_rom_squares|data[2]~4_combout\ $ (((\inst_adder_8bits|instance_full_adder_1|instance_half_adder_1|carry_out~0_combout\ & 
-- \inst_registry_8bits|FFD2|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_adder_8bits|instance_full_adder_1|instance_half_adder_1|carry_out~0_combout\,
	datab => \inst_registry_8bits|FFD2|Q~q\,
	datac => \inst_registry_8bits|FFD3|Q~q\,
	datad => \inst_rom_squares|data[2]~4_combout\,
	combout => \inst_adder_8bits|instance_full_adder_3|instance_half_adder_2|result~combout\);

-- Location: FF_X51_Y50_N23
\inst_registry_8bits|FFD3|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_adder_8bits|instance_full_adder_3|instance_half_adder_2|result~combout\,
	clrn => \inst_asm|ROM|ALT_INV_data[2]~1_combout\,
	ena => \inst_asm|ROM|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registry_8bits|FFD3|Q~q\);

-- Location: LCCOMB_X51_Y50_N28
\inst_adder_8bits|instance_full_adder_3|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\ = (\inst_rom_squares|data[2]~4_combout\ & ((\inst_registry_8bits|FFD3|Q~q\) # ((\inst_registry_8bits|FFD2|Q~q\ & 
-- \inst_adder_8bits|instance_full_adder_1|instance_half_adder_1|carry_out~0_combout\)))) # (!\inst_rom_squares|data[2]~4_combout\ & (\inst_registry_8bits|FFD2|Q~q\ & (\inst_registry_8bits|FFD3|Q~q\ & 
-- \inst_adder_8bits|instance_full_adder_1|instance_half_adder_1|carry_out~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_rom_squares|data[2]~4_combout\,
	datab => \inst_registry_8bits|FFD2|Q~q\,
	datac => \inst_registry_8bits|FFD3|Q~q\,
	datad => \inst_adder_8bits|instance_full_adder_1|instance_half_adder_1|carry_out~0_combout\,
	combout => \inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\);

-- Location: LCCOMB_X51_Y50_N30
\inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|result\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|result~combout\ = \inst_rom_squares|data[3]~3_combout\ $ (\inst_registry_8bits|FFD4|Q~q\ $ (\inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_rom_squares|data[3]~3_combout\,
	datac => \inst_registry_8bits|FFD4|Q~q\,
	datad => \inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\,
	combout => \inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|result~combout\);

-- Location: FF_X51_Y50_N31
\inst_registry_8bits|FFD4|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_adder_8bits|instance_full_adder_4|instance_half_adder_2|result~combout\,
	clrn => \inst_asm|ROM|ALT_INV_data[2]~1_combout\,
	ena => \inst_asm|ROM|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registry_8bits|FFD4|Q~q\);

-- Location: LCCOMB_X52_Y50_N4
\inst_rom_squares|data[4]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_rom_squares|data[4]~2_combout\ = (\X[0]~input_o\ & ((\X[3]~input_o\ $ (\X[2]~input_o\)))) # (!\X[0]~input_o\ & (!\X[1]~input_o\ & ((\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst_rom_squares|data[4]~2_combout\);

-- Location: LCCOMB_X52_Y50_N20
\inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~0_combout\ = \inst_rom_squares|data[4]~2_combout\ $ (\inst_registry_8bits|FFD5|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_rom_squares|data[4]~2_combout\,
	datad => \inst_registry_8bits|FFD5|Q~q\,
	combout => \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~0_combout\);

-- Location: LCCOMB_X51_Y50_N18
\inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~combout\ = \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~0_combout\ $ (((\inst_registry_8bits|FFD4|Q~q\ & ((\inst_rom_squares|data[3]~3_combout\) # 
-- (\inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\))) # (!\inst_registry_8bits|FFD4|Q~q\ & (\inst_rom_squares|data[3]~3_combout\ & \inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registry_8bits|FFD4|Q~q\,
	datab => \inst_rom_squares|data[3]~3_combout\,
	datac => \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~0_combout\,
	datad => \inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\,
	combout => \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~combout\);

-- Location: FF_X51_Y50_N19
\inst_registry_8bits|FFD5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_adder_8bits|instance_full_adder_5|instance_half_adder_2|result~combout\,
	clrn => \inst_asm|ROM|ALT_INV_data[2]~1_combout\,
	ena => \inst_asm|ROM|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registry_8bits|FFD5|Q~q\);

-- Location: LCCOMB_X51_Y50_N4
\inst_adder_8bits|instance_full_adder_5|carry_out~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_5|carry_out~1_combout\ = (\inst_rom_squares|data[4]~2_combout\) # (\inst_registry_8bits|FFD5|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_rom_squares|data[4]~2_combout\,
	datad => \inst_registry_8bits|FFD5|Q~q\,
	combout => \inst_adder_8bits|instance_full_adder_5|carry_out~1_combout\);

-- Location: LCCOMB_X51_Y50_N6
\inst_adder_8bits|instance_full_adder_5|carry_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_5|carry_out~2_combout\ = (\inst_adder_8bits|instance_full_adder_5|carry_out~1_combout\ & ((\inst_registry_8bits|FFD4|Q~q\ & ((\inst_rom_squares|data[3]~3_combout\) # 
-- (\inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\))) # (!\inst_registry_8bits|FFD4|Q~q\ & (\inst_rom_squares|data[3]~3_combout\ & \inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registry_8bits|FFD4|Q~q\,
	datab => \inst_rom_squares|data[3]~3_combout\,
	datac => \inst_adder_8bits|instance_full_adder_5|carry_out~1_combout\,
	datad => \inst_adder_8bits|instance_full_adder_3|carry_out~0_combout\,
	combout => \inst_adder_8bits|instance_full_adder_5|carry_out~2_combout\);

-- Location: LCCOMB_X52_Y50_N22
\inst_rom_squares|data[5]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_rom_squares|data[5]~1_combout\ = (\X[3]~input_o\ & ((\X[2]~input_o\ & ((\X[0]~input_o\))) # (!\X[2]~input_o\ & (\X[1]~input_o\)))) # (!\X[3]~input_o\ & (\X[1]~input_o\ & (\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[1]~input_o\,
	datab => \X[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst_rom_squares|data[5]~1_combout\);

-- Location: LCCOMB_X52_Y50_N10
\inst_adder_8bits|instance_full_adder_5|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_5|carry_out~0_combout\ = (\inst_rom_squares|data[4]~2_combout\ & \inst_registry_8bits|FFD5|Q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_rom_squares|data[4]~2_combout\,
	datad => \inst_registry_8bits|FFD5|Q~q\,
	combout => \inst_adder_8bits|instance_full_adder_5|carry_out~0_combout\);

-- Location: LCCOMB_X51_Y50_N8
\inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|result\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|result~combout\ = \inst_rom_squares|data[5]~1_combout\ $ (\inst_registry_8bits|FFD6|Q~q\ $ (((\inst_adder_8bits|instance_full_adder_5|carry_out~2_combout\) # 
-- (\inst_adder_8bits|instance_full_adder_5|carry_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_adder_8bits|instance_full_adder_5|carry_out~2_combout\,
	datab => \inst_rom_squares|data[5]~1_combout\,
	datac => \inst_registry_8bits|FFD6|Q~q\,
	datad => \inst_adder_8bits|instance_full_adder_5|carry_out~0_combout\,
	combout => \inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|result~combout\);

-- Location: FF_X51_Y50_N9
\inst_registry_8bits|FFD6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_adder_8bits|instance_full_adder_6|instance_half_adder_2|result~combout\,
	clrn => \inst_asm|ROM|ALT_INV_data[2]~1_combout\,
	ena => \inst_asm|ROM|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registry_8bits|FFD6|Q~q\);

-- Location: LCCOMB_X51_Y50_N12
\inst_adder_8bits|instance_full_adder_6|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\ = (\inst_registry_8bits|FFD6|Q~q\ & ((\inst_rom_squares|data[5]~1_combout\) # ((\inst_adder_8bits|instance_full_adder_5|carry_out~0_combout\) # 
-- (\inst_adder_8bits|instance_full_adder_5|carry_out~2_combout\)))) # (!\inst_registry_8bits|FFD6|Q~q\ & (\inst_rom_squares|data[5]~1_combout\ & ((\inst_adder_8bits|instance_full_adder_5|carry_out~0_combout\) # 
-- (\inst_adder_8bits|instance_full_adder_5|carry_out~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registry_8bits|FFD6|Q~q\,
	datab => \inst_rom_squares|data[5]~1_combout\,
	datac => \inst_adder_8bits|instance_full_adder_5|carry_out~0_combout\,
	datad => \inst_adder_8bits|instance_full_adder_5|carry_out~2_combout\,
	combout => \inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\);

-- Location: LCCOMB_X51_Y50_N26
\inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|result\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|result~combout\ = \inst_rom_squares|data[6]~0_combout\ $ (\inst_registry_8bits|FFD7|Q~q\ $ (\inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_rom_squares|data[6]~0_combout\,
	datac => \inst_registry_8bits|FFD7|Q~q\,
	datad => \inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\,
	combout => \inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|result~combout\);

-- Location: FF_X51_Y50_N27
\inst_registry_8bits|FFD7|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_adder_8bits|instance_full_adder_7|instance_half_adder_2|result~combout\,
	clrn => \inst_asm|ROM|ALT_INV_data[2]~1_combout\,
	ena => \inst_asm|ROM|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registry_8bits|FFD7|Q~q\);

-- Location: LCCOMB_X52_Y50_N2
\inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0_combout\ = \inst_registry_8bits|FFD8|Q~q\ $ (((\X[2]~input_o\ & \X[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[2]~input_o\,
	datab => \X[3]~input_o\,
	datac => \inst_registry_8bits|FFD8|Q~q\,
	combout => \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0_combout\);

-- Location: LCCOMB_X51_Y50_N16
\inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~combout\ = \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0_combout\ $ (((\inst_registry_8bits|FFD7|Q~q\ & ((\inst_rom_squares|data[6]~0_combout\) # 
-- (\inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\))) # (!\inst_registry_8bits|FFD7|Q~q\ & (\inst_rom_squares|data[6]~0_combout\ & \inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registry_8bits|FFD7|Q~q\,
	datab => \inst_rom_squares|data[6]~0_combout\,
	datac => \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~0_combout\,
	datad => \inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\,
	combout => \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~combout\);

-- Location: FF_X51_Y50_N17
\inst_registry_8bits|FFD8|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MCLK~inputclkctrl_outclk\,
	d => \inst_adder_8bits|instance_full_adder_8|instance_half_adder_2|result~combout\,
	clrn => \inst_asm|ROM|ALT_INV_data[2]~1_combout\,
	ena => \inst_asm|ROM|data[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst_registry_8bits|FFD8|Q~q\);

-- Location: LCCOMB_X52_Y50_N28
\inst_adder_8bits|instance_full_adder_7|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_7|carry_out~0_combout\ = (\inst_rom_squares|data[6]~0_combout\ & ((\inst_registry_8bits|FFD7|Q~q\) # (\inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\))) # (!\inst_rom_squares|data[6]~0_combout\ & 
-- (\inst_registry_8bits|FFD7|Q~q\ & \inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_rom_squares|data[6]~0_combout\,
	datac => \inst_registry_8bits|FFD7|Q~q\,
	datad => \inst_adder_8bits|instance_full_adder_6|carry_out~0_combout\,
	combout => \inst_adder_8bits|instance_full_adder_7|carry_out~0_combout\);

-- Location: LCCOMB_X52_Y50_N6
\inst_adder_8bits|instance_full_adder_8|carry_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_adder_8bits|instance_full_adder_8|carry_out~0_combout\ = (\inst_registry_8bits|FFD8|Q~q\ & ((\inst_adder_8bits|instance_full_adder_7|carry_out~0_combout\) # ((\X[2]~input_o\ & \X[3]~input_o\)))) # (!\inst_registry_8bits|FFD8|Q~q\ & 
-- (\inst_adder_8bits|instance_full_adder_7|carry_out~0_combout\ & (\X[2]~input_o\ & \X[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registry_8bits|FFD8|Q~q\,
	datab => \inst_adder_8bits|instance_full_adder_7|carry_out~0_combout\,
	datac => \X[2]~input_o\,
	datad => \X[3]~input_o\,
	combout => \inst_adder_8bits|instance_full_adder_8|carry_out~0_combout\);

-- Location: LCCOMB_X50_Y50_N24
\inst_asm|ROM|data[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_asm|ROM|data[0]~0_combout\ = (!\inst_asm|Flip_Flop_Q0|Q~q\ & (\Step~input_o\ & (\inst_asm|Flip_Flop_Q2|Q~q\ & !\inst_asm|Flip_Flop_Q1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|Flip_Flop_Q0|Q~q\,
	datab => \Step~input_o\,
	datac => \inst_asm|Flip_Flop_Q2|Q~q\,
	datad => \inst_asm|Flip_Flop_Q1|Q~q\,
	combout => \inst_asm|ROM|data[0]~0_combout\);

-- Location: LCCOMB_X50_Y50_N22
\inst_mux_2x8|result[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux_2x8|result[0]~2_combout\ = (\inst_asm|ROM|data[0]~0_combout\ & (\X[0]~input_o\)) # (!\inst_asm|ROM|data[0]~0_combout\ & ((\inst_registry_8bits|FFD1|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_asm|ROM|data[0]~0_combout\,
	datac => \X[0]~input_o\,
	datad => \inst_registry_8bits|FFD1|Q~q\,
	combout => \inst_mux_2x8|result[0]~2_combout\);

-- Location: LCCOMB_X50_Y50_N0
\inst_mux_2x8|result~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux_2x8|result~3_combout\ = (\inst_registry_8bits|FFD2|Q~q\ & !\inst_asm|ROM|data[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_registry_8bits|FFD2|Q~q\,
	datad => \inst_asm|ROM|data[0]~0_combout\,
	combout => \inst_mux_2x8|result~3_combout\);

-- Location: LCCOMB_X52_Y50_N26
\inst_mux_2x8|result[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux_2x8|result[2]~9_combout\ = (\inst_asm|ROM|data[0]~0_combout\ & (((\X[1]~input_o\ & !\X[0]~input_o\)))) # (!\inst_asm|ROM|data[0]~0_combout\ & (\inst_registry_8bits|FFD3|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|ROM|data[0]~0_combout\,
	datab => \inst_registry_8bits|FFD3|Q~q\,
	datac => \X[1]~input_o\,
	datad => \X[0]~input_o\,
	combout => \inst_mux_2x8|result[2]~9_combout\);

-- Location: LCCOMB_X52_Y50_N8
\inst_mux_2x8|result[3]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux_2x8|result[3]~4_combout\ = (\inst_asm|ROM|data[0]~0_combout\ & ((\inst_rom_squares|data[3]~3_combout\))) # (!\inst_asm|ROM|data[0]~0_combout\ & (\inst_registry_8bits|FFD4|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst_registry_8bits|FFD4|Q~q\,
	datac => \inst_asm|ROM|data[0]~0_combout\,
	datad => \inst_rom_squares|data[3]~3_combout\,
	combout => \inst_mux_2x8|result[3]~4_combout\);

-- Location: LCCOMB_X52_Y50_N18
\inst_mux_2x8|result[4]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux_2x8|result[4]~5_combout\ = (\inst_asm|ROM|data[0]~0_combout\ & (\inst_rom_squares|data[4]~2_combout\)) # (!\inst_asm|ROM|data[0]~0_combout\ & ((\inst_registry_8bits|FFD5|Q~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_asm|ROM|data[0]~0_combout\,
	datac => \inst_rom_squares|data[4]~2_combout\,
	datad => \inst_registry_8bits|FFD5|Q~q\,
	combout => \inst_mux_2x8|result[4]~5_combout\);

-- Location: LCCOMB_X52_Y50_N0
\inst_mux_2x8|result[5]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux_2x8|result[5]~6_combout\ = (\inst_asm|ROM|data[0]~0_combout\ & ((\inst_rom_squares|data[5]~1_combout\))) # (!\inst_asm|ROM|data[0]~0_combout\ & (\inst_registry_8bits|FFD6|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registry_8bits|FFD6|Q~q\,
	datac => \inst_asm|ROM|data[0]~0_combout\,
	datad => \inst_rom_squares|data[5]~1_combout\,
	combout => \inst_mux_2x8|result[5]~6_combout\);

-- Location: LCCOMB_X52_Y50_N14
\inst_mux_2x8|result[6]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux_2x8|result[6]~7_combout\ = (\inst_asm|ROM|data[0]~0_combout\ & ((\inst_rom_squares|data[6]~0_combout\))) # (!\inst_asm|ROM|data[0]~0_combout\ & (\inst_registry_8bits|FFD7|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registry_8bits|FFD7|Q~q\,
	datac => \inst_asm|ROM|data[0]~0_combout\,
	datad => \inst_rom_squares|data[6]~0_combout\,
	combout => \inst_mux_2x8|result[6]~7_combout\);

-- Location: LCCOMB_X52_Y50_N16
\inst_mux_2x8|result[7]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_mux_2x8|result[7]~8_combout\ = (\inst_asm|ROM|data[0]~0_combout\ & (((\X[3]~input_o\ & \X[2]~input_o\)))) # (!\inst_asm|ROM|data[0]~0_combout\ & (\inst_registry_8bits|FFD8|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_registry_8bits|FFD8|Q~q\,
	datab => \X[3]~input_o\,
	datac => \X[2]~input_o\,
	datad => \inst_asm|ROM|data[0]~0_combout\,
	combout => \inst_mux_2x8|result[7]~8_combout\);

-- Location: LCCOMB_X58_Y51_N16
\inst_decoderHex|U3|Mux9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux9~0_combout\ = (\inst_mux_2x8|result[4]~5_combout\ & (\inst_mux_2x8|result[7]~8_combout\ & (!\inst_mux_2x8|result[5]~6_combout\ & !\inst_mux_2x8|result[6]~7_combout\))) # (!\inst_mux_2x8|result[4]~5_combout\ & 
-- (\inst_mux_2x8|result[6]~7_combout\ & (\inst_mux_2x8|result[7]~8_combout\ $ (!\inst_mux_2x8|result[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux_2x8|result[7]~8_combout\,
	datab => \inst_mux_2x8|result[4]~5_combout\,
	datac => \inst_mux_2x8|result[5]~6_combout\,
	datad => \inst_mux_2x8|result[6]~7_combout\,
	combout => \inst_decoderHex|U3|Mux9~0_combout\);

-- Location: LCCOMB_X58_Y51_N18
\inst_decoderHex|U3|Mux10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux10~0_combout\ = (\inst_mux_2x8|result[7]~8_combout\ & (!\inst_mux_2x8|result[5]~6_combout\ & ((\inst_mux_2x8|result[6]~7_combout\) # (!\inst_mux_2x8|result[4]~5_combout\)))) # (!\inst_mux_2x8|result[7]~8_combout\ & 
-- (\inst_mux_2x8|result[5]~6_combout\ & ((\inst_mux_2x8|result[4]~5_combout\) # (!\inst_mux_2x8|result[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux_2x8|result[7]~8_combout\,
	datab => \inst_mux_2x8|result[4]~5_combout\,
	datac => \inst_mux_2x8|result[5]~6_combout\,
	datad => \inst_mux_2x8|result[6]~7_combout\,
	combout => \inst_decoderHex|U3|Mux10~0_combout\);

-- Location: LCCOMB_X58_Y51_N24
\inst_decoderHex|U3|Mux11~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux11~0_combout\ = (\inst_mux_2x8|result[4]~5_combout\ & (\inst_mux_2x8|result[6]~7_combout\ $ (((\inst_mux_2x8|result[5]~6_combout\) # (!\inst_mux_2x8|result[7]~8_combout\))))) # (!\inst_mux_2x8|result[4]~5_combout\ & 
-- ((\inst_mux_2x8|result[7]~8_combout\ & (!\inst_mux_2x8|result[5]~6_combout\ & !\inst_mux_2x8|result[6]~7_combout\)) # (!\inst_mux_2x8|result[7]~8_combout\ & (\inst_mux_2x8|result[5]~6_combout\ & \inst_mux_2x8|result[6]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux_2x8|result[7]~8_combout\,
	datab => \inst_mux_2x8|result[4]~5_combout\,
	datac => \inst_mux_2x8|result[5]~6_combout\,
	datad => \inst_mux_2x8|result[6]~7_combout\,
	combout => \inst_decoderHex|U3|Mux11~0_combout\);

-- Location: LCCOMB_X58_Y51_N10
\inst_decoderHex|U3|Mux20~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux20~0_combout\ = (\inst_decoderHex|U3|Mux11~0_combout\ & (\inst_decoderHex|U3|Mux9~0_combout\ & (\inst_decoderHex|U3|Mux10~0_combout\))) # (!\inst_decoderHex|U3|Mux11~0_combout\ & ((\inst_mux_2x8|result[3]~4_combout\ & 
-- (\inst_decoderHex|U3|Mux9~0_combout\)) # (!\inst_mux_2x8|result[3]~4_combout\ & ((\inst_decoderHex|U3|Mux10~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux9~0_combout\,
	datab => \inst_decoderHex|U3|Mux10~0_combout\,
	datac => \inst_mux_2x8|result[3]~4_combout\,
	datad => \inst_decoderHex|U3|Mux11~0_combout\,
	combout => \inst_decoderHex|U3|Mux20~0_combout\);

-- Location: LCCOMB_X58_Y51_N20
\inst_decoderHex|U3|Mux21~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux21~0_combout\ = (\inst_decoderHex|U3|Mux9~0_combout\ & ((\inst_decoderHex|U3|Mux11~0_combout\) # ((!\inst_decoderHex|U3|Mux10~0_combout\ & !\inst_mux_2x8|result[3]~4_combout\)))) # (!\inst_decoderHex|U3|Mux9~0_combout\ & 
-- (\inst_decoderHex|U3|Mux11~0_combout\ & ((\inst_mux_2x8|result[3]~4_combout\) # (!\inst_decoderHex|U3|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux9~0_combout\,
	datab => \inst_decoderHex|U3|Mux10~0_combout\,
	datac => \inst_mux_2x8|result[3]~4_combout\,
	datad => \inst_decoderHex|U3|Mux11~0_combout\,
	combout => \inst_decoderHex|U3|Mux21~0_combout\);

-- Location: LCCOMB_X58_Y51_N22
\inst_decoderHex|U3|Mux22~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux22~0_combout\ = (\inst_decoderHex|U3|Mux9~0_combout\ & (\inst_mux_2x8|result[3]~4_combout\ $ (((!\inst_decoderHex|U3|Mux10~0_combout\ & !\inst_decoderHex|U3|Mux11~0_combout\))))) # (!\inst_decoderHex|U3|Mux9~0_combout\ & 
-- ((\inst_decoderHex|U3|Mux10~0_combout\ & (!\inst_mux_2x8|result[3]~4_combout\ & \inst_decoderHex|U3|Mux11~0_combout\)) # (!\inst_decoderHex|U3|Mux10~0_combout\ & (\inst_mux_2x8|result[3]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux9~0_combout\,
	datab => \inst_decoderHex|U3|Mux10~0_combout\,
	datac => \inst_mux_2x8|result[3]~4_combout\,
	datad => \inst_decoderHex|U3|Mux11~0_combout\,
	combout => \inst_decoderHex|U3|Mux22~0_combout\);

-- Location: LCCOMB_X58_Y51_N28
\inst_decoderHex|U3|Mux31~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux31~0_combout\ = (\inst_decoderHex|U3|Mux22~0_combout\ & (\inst_decoderHex|U3|Mux20~0_combout\ & (\inst_decoderHex|U3|Mux21~0_combout\))) # (!\inst_decoderHex|U3|Mux22~0_combout\ & ((\inst_mux_2x8|result[2]~9_combout\ & 
-- (\inst_decoderHex|U3|Mux20~0_combout\)) # (!\inst_mux_2x8|result[2]~9_combout\ & ((\inst_decoderHex|U3|Mux21~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux20~0_combout\,
	datab => \inst_decoderHex|U3|Mux21~0_combout\,
	datac => \inst_decoderHex|U3|Mux22~0_combout\,
	datad => \inst_mux_2x8|result[2]~9_combout\,
	combout => \inst_decoderHex|U3|Mux31~0_combout\);

-- Location: LCCOMB_X58_Y51_N30
\inst_decoderHex|U3|Mux32~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux32~0_combout\ = (\inst_decoderHex|U3|Mux20~0_combout\ & ((\inst_decoderHex|U3|Mux22~0_combout\) # ((!\inst_decoderHex|U3|Mux21~0_combout\ & !\inst_mux_2x8|result[2]~9_combout\)))) # (!\inst_decoderHex|U3|Mux20~0_combout\ & 
-- (\inst_decoderHex|U3|Mux22~0_combout\ & ((\inst_mux_2x8|result[2]~9_combout\) # (!\inst_decoderHex|U3|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux20~0_combout\,
	datab => \inst_decoderHex|U3|Mux21~0_combout\,
	datac => \inst_decoderHex|U3|Mux22~0_combout\,
	datad => \inst_mux_2x8|result[2]~9_combout\,
	combout => \inst_decoderHex|U3|Mux32~0_combout\);

-- Location: LCCOMB_X58_Y51_N12
\inst_decoderHex|U3|Mux33~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux33~0_combout\ = (\inst_decoderHex|U3|Mux20~0_combout\ & (\inst_mux_2x8|result[2]~9_combout\ $ (((!\inst_decoderHex|U3|Mux21~0_combout\ & !\inst_decoderHex|U3|Mux22~0_combout\))))) # (!\inst_decoderHex|U3|Mux20~0_combout\ & 
-- ((\inst_decoderHex|U3|Mux21~0_combout\ & (\inst_decoderHex|U3|Mux22~0_combout\ & !\inst_mux_2x8|result[2]~9_combout\)) # (!\inst_decoderHex|U3|Mux21~0_combout\ & ((\inst_mux_2x8|result[2]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux20~0_combout\,
	datab => \inst_decoderHex|U3|Mux21~0_combout\,
	datac => \inst_decoderHex|U3|Mux22~0_combout\,
	datad => \inst_mux_2x8|result[2]~9_combout\,
	combout => \inst_decoderHex|U3|Mux33~0_combout\);

-- Location: LCCOMB_X58_Y50_N12
\inst_decoderHex|U3|Mux44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux44~0_combout\ = (\inst_decoderHex|U3|Mux31~0_combout\ & (\inst_mux_2x8|result~3_combout\ $ (((!\inst_decoderHex|U3|Mux32~0_combout\ & !\inst_decoderHex|U3|Mux33~0_combout\))))) # (!\inst_decoderHex|U3|Mux31~0_combout\ & 
-- ((\inst_mux_2x8|result~3_combout\ & (!\inst_decoderHex|U3|Mux32~0_combout\)) # (!\inst_mux_2x8|result~3_combout\ & (\inst_decoderHex|U3|Mux32~0_combout\ & \inst_decoderHex|U3|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux_2x8|result~3_combout\,
	datab => \inst_decoderHex|U3|Mux31~0_combout\,
	datac => \inst_decoderHex|U3|Mux32~0_combout\,
	datad => \inst_decoderHex|U3|Mux33~0_combout\,
	combout => \inst_decoderHex|U3|Mux44~0_combout\);

-- Location: LCCOMB_X58_Y50_N28
\inst_decoderHex|U3|Mux42~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux42~0_combout\ = (\inst_decoderHex|U3|Mux33~0_combout\ & (((\inst_decoderHex|U3|Mux31~0_combout\ & \inst_decoderHex|U3|Mux32~0_combout\)))) # (!\inst_decoderHex|U3|Mux33~0_combout\ & ((\inst_mux_2x8|result~3_combout\ & 
-- (\inst_decoderHex|U3|Mux31~0_combout\)) # (!\inst_mux_2x8|result~3_combout\ & ((\inst_decoderHex|U3|Mux32~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux_2x8|result~3_combout\,
	datab => \inst_decoderHex|U3|Mux31~0_combout\,
	datac => \inst_decoderHex|U3|Mux32~0_combout\,
	datad => \inst_decoderHex|U3|Mux33~0_combout\,
	combout => \inst_decoderHex|U3|Mux42~0_combout\);

-- Location: LCCOMB_X58_Y50_N10
\inst_decoderHex|U3|Mux43~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux43~0_combout\ = (\inst_mux_2x8|result~3_combout\ & (((\inst_decoderHex|U3|Mux33~0_combout\)))) # (!\inst_mux_2x8|result~3_combout\ & ((\inst_decoderHex|U3|Mux31~0_combout\ & ((\inst_decoderHex|U3|Mux33~0_combout\) # 
-- (!\inst_decoderHex|U3|Mux32~0_combout\))) # (!\inst_decoderHex|U3|Mux31~0_combout\ & (!\inst_decoderHex|U3|Mux32~0_combout\ & \inst_decoderHex|U3|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux_2x8|result~3_combout\,
	datab => \inst_decoderHex|U3|Mux31~0_combout\,
	datac => \inst_decoderHex|U3|Mux32~0_combout\,
	datad => \inst_decoderHex|U3|Mux33~0_combout\,
	combout => \inst_decoderHex|U3|Mux43~0_combout\);

-- Location: LCCOMB_X58_Y50_N22
\inst_decoderHex|U0|dOut[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U0|dOut[0]~0_combout\ = (\inst_decoderHex|U3|Mux42~0_combout\ & (\inst_mux_2x8|result[0]~2_combout\ & (\inst_decoderHex|U3|Mux44~0_combout\ $ (\inst_decoderHex|U3|Mux43~0_combout\)))) # (!\inst_decoderHex|U3|Mux42~0_combout\ & 
-- (!\inst_decoderHex|U3|Mux44~0_combout\ & (\inst_mux_2x8|result[0]~2_combout\ $ (\inst_decoderHex|U3|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux44~0_combout\,
	datab => \inst_decoderHex|U3|Mux42~0_combout\,
	datac => \inst_mux_2x8|result[0]~2_combout\,
	datad => \inst_decoderHex|U3|Mux43~0_combout\,
	combout => \inst_decoderHex|U0|dOut[0]~0_combout\);

-- Location: LCCOMB_X58_Y50_N20
\inst_decoderHex|U0|dOut[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U0|dOut[1]~1_combout\ = (\inst_decoderHex|U3|Mux44~0_combout\ & ((\inst_mux_2x8|result[0]~2_combout\ & (\inst_decoderHex|U3|Mux42~0_combout\)) # (!\inst_mux_2x8|result[0]~2_combout\ & ((\inst_decoderHex|U3|Mux43~0_combout\))))) # 
-- (!\inst_decoderHex|U3|Mux44~0_combout\ & (\inst_decoderHex|U3|Mux43~0_combout\ & (\inst_decoderHex|U3|Mux42~0_combout\ $ (\inst_mux_2x8|result[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux44~0_combout\,
	datab => \inst_decoderHex|U3|Mux42~0_combout\,
	datac => \inst_mux_2x8|result[0]~2_combout\,
	datad => \inst_decoderHex|U3|Mux43~0_combout\,
	combout => \inst_decoderHex|U0|dOut[1]~1_combout\);

-- Location: LCCOMB_X58_Y50_N6
\inst_decoderHex|U0|dOut[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U0|dOut[2]~2_combout\ = (\inst_decoderHex|U3|Mux42~0_combout\ & (\inst_decoderHex|U3|Mux43~0_combout\ & ((\inst_decoderHex|U3|Mux44~0_combout\) # (!\inst_mux_2x8|result[0]~2_combout\)))) # (!\inst_decoderHex|U3|Mux42~0_combout\ & 
-- (\inst_decoderHex|U3|Mux44~0_combout\ & (!\inst_mux_2x8|result[0]~2_combout\ & !\inst_decoderHex|U3|Mux43~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux44~0_combout\,
	datab => \inst_decoderHex|U3|Mux42~0_combout\,
	datac => \inst_mux_2x8|result[0]~2_combout\,
	datad => \inst_decoderHex|U3|Mux43~0_combout\,
	combout => \inst_decoderHex|U0|dOut[2]~2_combout\);

-- Location: LCCOMB_X58_Y50_N16
\inst_decoderHex|U0|dOut[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U0|dOut[3]~3_combout\ = (\inst_mux_2x8|result[0]~2_combout\ & (\inst_decoderHex|U3|Mux44~0_combout\ $ (((!\inst_decoderHex|U3|Mux43~0_combout\))))) # (!\inst_mux_2x8|result[0]~2_combout\ & ((\inst_decoderHex|U3|Mux44~0_combout\ & 
-- (\inst_decoderHex|U3|Mux42~0_combout\ & !\inst_decoderHex|U3|Mux43~0_combout\)) # (!\inst_decoderHex|U3|Mux44~0_combout\ & (!\inst_decoderHex|U3|Mux42~0_combout\ & \inst_decoderHex|U3|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux44~0_combout\,
	datab => \inst_decoderHex|U3|Mux42~0_combout\,
	datac => \inst_mux_2x8|result[0]~2_combout\,
	datad => \inst_decoderHex|U3|Mux43~0_combout\,
	combout => \inst_decoderHex|U0|dOut[3]~3_combout\);

-- Location: LCCOMB_X58_Y50_N14
\inst_decoderHex|U0|dOut[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U0|dOut[4]~4_combout\ = (\inst_decoderHex|U3|Mux44~0_combout\ & (!\inst_decoderHex|U3|Mux42~0_combout\ & (\inst_mux_2x8|result[0]~2_combout\))) # (!\inst_decoderHex|U3|Mux44~0_combout\ & ((\inst_decoderHex|U3|Mux43~0_combout\ & 
-- (!\inst_decoderHex|U3|Mux42~0_combout\)) # (!\inst_decoderHex|U3|Mux43~0_combout\ & ((\inst_mux_2x8|result[0]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux44~0_combout\,
	datab => \inst_decoderHex|U3|Mux42~0_combout\,
	datac => \inst_mux_2x8|result[0]~2_combout\,
	datad => \inst_decoderHex|U3|Mux43~0_combout\,
	combout => \inst_decoderHex|U0|dOut[4]~4_combout\);

-- Location: LCCOMB_X58_Y50_N24
\inst_decoderHex|U0|dOut[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U0|dOut[5]~5_combout\ = (\inst_decoderHex|U3|Mux44~0_combout\ & (!\inst_decoderHex|U3|Mux42~0_combout\ & ((\inst_mux_2x8|result[0]~2_combout\) # (!\inst_decoderHex|U3|Mux43~0_combout\)))) # (!\inst_decoderHex|U3|Mux44~0_combout\ & 
-- (\inst_mux_2x8|result[0]~2_combout\ & (\inst_decoderHex|U3|Mux42~0_combout\ $ (!\inst_decoderHex|U3|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux44~0_combout\,
	datab => \inst_decoderHex|U3|Mux42~0_combout\,
	datac => \inst_mux_2x8|result[0]~2_combout\,
	datad => \inst_decoderHex|U3|Mux43~0_combout\,
	combout => \inst_decoderHex|U0|dOut[5]~5_combout\);

-- Location: LCCOMB_X58_Y50_N2
\inst_decoderHex|U0|dOut[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U0|dOut[6]~6_combout\ = (\inst_mux_2x8|result[0]~2_combout\ & (!\inst_decoderHex|U3|Mux42~0_combout\ & (\inst_decoderHex|U3|Mux44~0_combout\ $ (!\inst_decoderHex|U3|Mux43~0_combout\)))) # (!\inst_mux_2x8|result[0]~2_combout\ & 
-- (!\inst_decoderHex|U3|Mux44~0_combout\ & (\inst_decoderHex|U3|Mux42~0_combout\ $ (!\inst_decoderHex|U3|Mux43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux44~0_combout\,
	datab => \inst_decoderHex|U3|Mux42~0_combout\,
	datac => \inst_mux_2x8|result[0]~2_combout\,
	datad => \inst_decoderHex|U3|Mux43~0_combout\,
	combout => \inst_decoderHex|U0|dOut[6]~6_combout\);

-- Location: LCCOMB_X58_Y51_N4
\inst_decoderHex|U3|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux0~0_combout\ = ((!\inst_mux_2x8|result[5]~6_combout\ & !\inst_mux_2x8|result[6]~7_combout\)) # (!\inst_mux_2x8|result[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux_2x8|result[7]~8_combout\,
	datac => \inst_mux_2x8|result[5]~6_combout\,
	datad => \inst_mux_2x8|result[6]~7_combout\,
	combout => \inst_decoderHex|U3|Mux0~0_combout\);

-- Location: LCCOMB_X58_Y51_N6
\inst_decoderHex|U3|Mux19~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux19~0_combout\ = (\inst_decoderHex|U3|Mux9~0_combout\) # ((\inst_decoderHex|U3|Mux10~0_combout\ & ((\inst_mux_2x8|result[3]~4_combout\) # (\inst_decoderHex|U3|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux9~0_combout\,
	datab => \inst_decoderHex|U3|Mux10~0_combout\,
	datac => \inst_mux_2x8|result[3]~4_combout\,
	datad => \inst_decoderHex|U3|Mux11~0_combout\,
	combout => \inst_decoderHex|U3|Mux19~0_combout\);

-- Location: LCCOMB_X58_Y51_N8
\inst_decoderHex|U3|Mux30~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux30~0_combout\ = (\inst_decoderHex|U3|Mux20~0_combout\) # ((\inst_decoderHex|U3|Mux21~0_combout\ & ((\inst_decoderHex|U3|Mux22~0_combout\) # (\inst_mux_2x8|result[2]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux20~0_combout\,
	datab => \inst_decoderHex|U3|Mux21~0_combout\,
	datac => \inst_decoderHex|U3|Mux22~0_combout\,
	datad => \inst_mux_2x8|result[2]~9_combout\,
	combout => \inst_decoderHex|U3|Mux30~0_combout\);

-- Location: LCCOMB_X58_Y51_N14
\inst_decoderHex|U3|Mux8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux8~0_combout\ = (\inst_mux_2x8|result[7]~8_combout\ & ((\inst_mux_2x8|result[5]~6_combout\ & (\inst_mux_2x8|result[4]~5_combout\ & \inst_mux_2x8|result[6]~7_combout\)) # (!\inst_mux_2x8|result[5]~6_combout\ & 
-- ((!\inst_mux_2x8|result[6]~7_combout\))))) # (!\inst_mux_2x8|result[7]~8_combout\ & (\inst_mux_2x8|result[6]~7_combout\ & ((\inst_mux_2x8|result[4]~5_combout\) # (\inst_mux_2x8|result[5]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_mux_2x8|result[7]~8_combout\,
	datab => \inst_mux_2x8|result[4]~5_combout\,
	datac => \inst_mux_2x8|result[5]~6_combout\,
	datad => \inst_mux_2x8|result[6]~7_combout\,
	combout => \inst_decoderHex|U3|Mux8~0_combout\);

-- Location: LCCOMB_X69_Y51_N28
\inst_decoderHex|U3|Mux46~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux46~0_combout\ = (\inst_decoderHex|U3|Mux30~0_combout\ & (!\inst_decoderHex|U3|Mux0~0_combout\ & (!\inst_decoderHex|U3|Mux19~0_combout\ & !\inst_decoderHex|U3|Mux8~0_combout\))) # (!\inst_decoderHex|U3|Mux30~0_combout\ & 
-- (\inst_decoderHex|U3|Mux8~0_combout\ & (\inst_decoderHex|U3|Mux0~0_combout\ $ (\inst_decoderHex|U3|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux0~0_combout\,
	datab => \inst_decoderHex|U3|Mux19~0_combout\,
	datac => \inst_decoderHex|U3|Mux30~0_combout\,
	datad => \inst_decoderHex|U3|Mux8~0_combout\,
	combout => \inst_decoderHex|U3|Mux46~0_combout\);

-- Location: LCCOMB_X69_Y51_N18
\inst_decoderHex|U3|Mux48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux48~0_combout\ = (\inst_decoderHex|U3|Mux30~0_combout\ & (\inst_decoderHex|U3|Mux8~0_combout\ $ (((\inst_decoderHex|U3|Mux0~0_combout\) # (\inst_decoderHex|U3|Mux19~0_combout\))))) # (!\inst_decoderHex|U3|Mux30~0_combout\ & 
-- ((\inst_decoderHex|U3|Mux0~0_combout\ & (\inst_decoderHex|U3|Mux19~0_combout\ & \inst_decoderHex|U3|Mux8~0_combout\)) # (!\inst_decoderHex|U3|Mux0~0_combout\ & (!\inst_decoderHex|U3|Mux19~0_combout\ & !\inst_decoderHex|U3|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100011100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux0~0_combout\,
	datab => \inst_decoderHex|U3|Mux19~0_combout\,
	datac => \inst_decoderHex|U3|Mux30~0_combout\,
	datad => \inst_decoderHex|U3|Mux8~0_combout\,
	combout => \inst_decoderHex|U3|Mux48~0_combout\);

-- Location: LCCOMB_X58_Y51_N26
\inst_decoderHex|U3|Mux41~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux41~0_combout\ = (\inst_decoderHex|U3|Mux31~0_combout\) # ((\inst_decoderHex|U3|Mux32~0_combout\ & ((\inst_mux_2x8|result~3_combout\) # (\inst_decoderHex|U3|Mux33~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux32~0_combout\,
	datab => \inst_decoderHex|U3|Mux31~0_combout\,
	datac => \inst_mux_2x8|result~3_combout\,
	datad => \inst_decoderHex|U3|Mux33~0_combout\,
	combout => \inst_decoderHex|U3|Mux41~0_combout\);

-- Location: LCCOMB_X69_Y51_N24
\inst_decoderHex|U3|Mux47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux47~0_combout\ = (\inst_decoderHex|U3|Mux0~0_combout\ & (\inst_decoderHex|U3|Mux19~0_combout\ & ((\inst_decoderHex|U3|Mux30~0_combout\) # (!\inst_decoderHex|U3|Mux8~0_combout\)))) # (!\inst_decoderHex|U3|Mux0~0_combout\ & 
-- (!\inst_decoderHex|U3|Mux19~0_combout\ & ((\inst_decoderHex|U3|Mux8~0_combout\) # (!\inst_decoderHex|U3|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux0~0_combout\,
	datab => \inst_decoderHex|U3|Mux19~0_combout\,
	datac => \inst_decoderHex|U3|Mux30~0_combout\,
	datad => \inst_decoderHex|U3|Mux8~0_combout\,
	combout => \inst_decoderHex|U3|Mux47~0_combout\);

-- Location: LCCOMB_X69_Y51_N2
\inst_decoderHex|U1|dOut[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U1|dOut[0]~0_combout\ = (\inst_decoderHex|U3|Mux46~0_combout\ & (\inst_decoderHex|U3|Mux41~0_combout\ & (\inst_decoderHex|U3|Mux48~0_combout\ $ (\inst_decoderHex|U3|Mux47~0_combout\)))) # (!\inst_decoderHex|U3|Mux46~0_combout\ & 
-- (!\inst_decoderHex|U3|Mux48~0_combout\ & (\inst_decoderHex|U3|Mux41~0_combout\ $ (\inst_decoderHex|U3|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux46~0_combout\,
	datab => \inst_decoderHex|U3|Mux48~0_combout\,
	datac => \inst_decoderHex|U3|Mux41~0_combout\,
	datad => \inst_decoderHex|U3|Mux47~0_combout\,
	combout => \inst_decoderHex|U1|dOut[0]~0_combout\);

-- Location: LCCOMB_X69_Y51_N8
\inst_decoderHex|U1|dOut[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U1|dOut[1]~1_combout\ = (\inst_decoderHex|U3|Mux46~0_combout\ & ((\inst_decoderHex|U3|Mux41~0_combout\ & (\inst_decoderHex|U3|Mux48~0_combout\)) # (!\inst_decoderHex|U3|Mux41~0_combout\ & ((\inst_decoderHex|U3|Mux47~0_combout\))))) # 
-- (!\inst_decoderHex|U3|Mux46~0_combout\ & (\inst_decoderHex|U3|Mux47~0_combout\ & (\inst_decoderHex|U3|Mux48~0_combout\ $ (\inst_decoderHex|U3|Mux41~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux46~0_combout\,
	datab => \inst_decoderHex|U3|Mux48~0_combout\,
	datac => \inst_decoderHex|U3|Mux41~0_combout\,
	datad => \inst_decoderHex|U3|Mux47~0_combout\,
	combout => \inst_decoderHex|U1|dOut[1]~1_combout\);

-- Location: LCCOMB_X69_Y51_N6
\inst_decoderHex|U1|dOut[2]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U1|dOut[2]~2_combout\ = (\inst_decoderHex|U3|Mux46~0_combout\ & (((!\inst_decoderHex|U3|Mux48~0_combout\ & \inst_decoderHex|U3|Mux41~0_combout\)) # (!\inst_decoderHex|U3|Mux47~0_combout\))) # (!\inst_decoderHex|U3|Mux46~0_combout\ & 
-- (((\inst_decoderHex|U3|Mux41~0_combout\) # (\inst_decoderHex|U3|Mux47~0_combout\)) # (!\inst_decoderHex|U3|Mux48~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux46~0_combout\,
	datab => \inst_decoderHex|U3|Mux48~0_combout\,
	datac => \inst_decoderHex|U3|Mux41~0_combout\,
	datad => \inst_decoderHex|U3|Mux47~0_combout\,
	combout => \inst_decoderHex|U1|dOut[2]~2_combout\);

-- Location: LCCOMB_X69_Y51_N0
\inst_decoderHex|U1|dOut[3]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U1|dOut[3]~3_combout\ = (\inst_decoderHex|U3|Mux41~0_combout\ & ((\inst_decoderHex|U3|Mux48~0_combout\ $ (!\inst_decoderHex|U3|Mux47~0_combout\)))) # (!\inst_decoderHex|U3|Mux41~0_combout\ & ((\inst_decoderHex|U3|Mux46~0_combout\ & 
-- (\inst_decoderHex|U3|Mux48~0_combout\ & !\inst_decoderHex|U3|Mux47~0_combout\)) # (!\inst_decoderHex|U3|Mux46~0_combout\ & (!\inst_decoderHex|U3|Mux48~0_combout\ & \inst_decoderHex|U3|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux46~0_combout\,
	datab => \inst_decoderHex|U3|Mux48~0_combout\,
	datac => \inst_decoderHex|U3|Mux41~0_combout\,
	datad => \inst_decoderHex|U3|Mux47~0_combout\,
	combout => \inst_decoderHex|U1|dOut[3]~3_combout\);

-- Location: LCCOMB_X69_Y51_N22
\inst_decoderHex|U1|dOut[4]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U1|dOut[4]~4_combout\ = (\inst_decoderHex|U3|Mux48~0_combout\ & (!\inst_decoderHex|U3|Mux46~0_combout\ & (\inst_decoderHex|U3|Mux41~0_combout\))) # (!\inst_decoderHex|U3|Mux48~0_combout\ & ((\inst_decoderHex|U3|Mux47~0_combout\ & 
-- (!\inst_decoderHex|U3|Mux46~0_combout\)) # (!\inst_decoderHex|U3|Mux47~0_combout\ & ((\inst_decoderHex|U3|Mux41~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux46~0_combout\,
	datab => \inst_decoderHex|U3|Mux48~0_combout\,
	datac => \inst_decoderHex|U3|Mux41~0_combout\,
	datad => \inst_decoderHex|U3|Mux47~0_combout\,
	combout => \inst_decoderHex|U1|dOut[4]~4_combout\);

-- Location: LCCOMB_X69_Y51_N20
\inst_decoderHex|U1|dOut[5]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U1|dOut[5]~5_combout\ = (\inst_decoderHex|U3|Mux48~0_combout\ & (!\inst_decoderHex|U3|Mux46~0_combout\ & ((\inst_decoderHex|U3|Mux41~0_combout\) # (!\inst_decoderHex|U3|Mux47~0_combout\)))) # (!\inst_decoderHex|U3|Mux48~0_combout\ & 
-- (\inst_decoderHex|U3|Mux41~0_combout\ & (\inst_decoderHex|U3|Mux46~0_combout\ $ (!\inst_decoderHex|U3|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux46~0_combout\,
	datab => \inst_decoderHex|U3|Mux48~0_combout\,
	datac => \inst_decoderHex|U3|Mux41~0_combout\,
	datad => \inst_decoderHex|U3|Mux47~0_combout\,
	combout => \inst_decoderHex|U1|dOut[5]~5_combout\);

-- Location: LCCOMB_X69_Y51_N30
\inst_decoderHex|U1|dOut[6]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U1|dOut[6]~6_combout\ = (\inst_decoderHex|U3|Mux41~0_combout\ & ((\inst_decoderHex|U3|Mux46~0_combout\) # (\inst_decoderHex|U3|Mux48~0_combout\ $ (\inst_decoderHex|U3|Mux47~0_combout\)))) # (!\inst_decoderHex|U3|Mux41~0_combout\ & 
-- ((\inst_decoderHex|U3|Mux48~0_combout\) # (\inst_decoderHex|U3|Mux46~0_combout\ $ (\inst_decoderHex|U3|Mux47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux46~0_combout\,
	datab => \inst_decoderHex|U3|Mux48~0_combout\,
	datac => \inst_decoderHex|U3|Mux41~0_combout\,
	datad => \inst_decoderHex|U3|Mux47~0_combout\,
	combout => \inst_decoderHex|U1|dOut[6]~6_combout\);

-- Location: LCCOMB_X69_Y51_N12
\inst_decoderHex|U2|Equal12~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U2|Equal12~4_combout\ = (\inst_decoderHex|U3|Mux0~0_combout\ & (\inst_decoderHex|U3|Mux8~0_combout\ & ((\inst_decoderHex|U3|Mux19~0_combout\) # (\inst_decoderHex|U3|Mux30~0_combout\)))) # (!\inst_decoderHex|U3|Mux0~0_combout\ & 
-- (!\inst_decoderHex|U3|Mux19~0_combout\ & ((!\inst_decoderHex|U3|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux0~0_combout\,
	datab => \inst_decoderHex|U3|Mux19~0_combout\,
	datac => \inst_decoderHex|U3|Mux30~0_combout\,
	datad => \inst_decoderHex|U3|Mux8~0_combout\,
	combout => \inst_decoderHex|U2|Equal12~4_combout\);

-- Location: LCCOMB_X69_Y51_N14
\inst_decoderHex|U2|dOut[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U2|dOut[2]~8_combout\ = (\inst_decoderHex|U3|Mux0~0_combout\) # ((\inst_decoderHex|U3|Mux19~0_combout\ & (\inst_decoderHex|U3|Mux30~0_combout\ & \inst_decoderHex|U3|Mux8~0_combout\)) # (!\inst_decoderHex|U3|Mux19~0_combout\ & 
-- ((!\inst_decoderHex|U3|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux0~0_combout\,
	datab => \inst_decoderHex|U3|Mux19~0_combout\,
	datac => \inst_decoderHex|U3|Mux30~0_combout\,
	datad => \inst_decoderHex|U3|Mux8~0_combout\,
	combout => \inst_decoderHex|U2|dOut[2]~8_combout\);

-- Location: LCCOMB_X69_Y51_N16
\inst_decoderHex|U3|Mux45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux45~0_combout\ = (\inst_decoderHex|U3|Mux0~0_combout\ & (\inst_decoderHex|U3|Mux8~0_combout\ & ((\inst_decoderHex|U3|Mux19~0_combout\) # (\inst_decoderHex|U3|Mux30~0_combout\)))) # (!\inst_decoderHex|U3|Mux0~0_combout\ & 
-- ((\inst_decoderHex|U3|Mux19~0_combout\ & (\inst_decoderHex|U3|Mux30~0_combout\ & \inst_decoderHex|U3|Mux8~0_combout\)) # (!\inst_decoderHex|U3|Mux19~0_combout\ & ((!\inst_decoderHex|U3|Mux8~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux0~0_combout\,
	datab => \inst_decoderHex|U3|Mux19~0_combout\,
	datac => \inst_decoderHex|U3|Mux30~0_combout\,
	datad => \inst_decoderHex|U3|Mux8~0_combout\,
	combout => \inst_decoderHex|U3|Mux45~0_combout\);

-- Location: LCCOMB_X69_Y51_N4
\inst_decoderHex|U2|dOut[5]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U2|dOut[5]~9_combout\ = (\inst_decoderHex|U3|Mux0~0_combout\ & (((!\inst_decoderHex|U3|Mux19~0_combout\ & !\inst_decoderHex|U3|Mux30~0_combout\)) # (!\inst_decoderHex|U3|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux0~0_combout\,
	datab => \inst_decoderHex|U3|Mux19~0_combout\,
	datac => \inst_decoderHex|U3|Mux30~0_combout\,
	datad => \inst_decoderHex|U3|Mux8~0_combout\,
	combout => \inst_decoderHex|U2|dOut[5]~9_combout\);

-- Location: LCCOMB_X69_Y51_N26
\inst_decoderHex|U3|Mux34~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst_decoderHex|U3|Mux34~0_combout\ = (\inst_decoderHex|U3|Mux0~0_combout\) # ((!\inst_decoderHex|U3|Mux19~0_combout\ & !\inst_decoderHex|U3|Mux8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst_decoderHex|U3|Mux0~0_combout\,
	datac => \inst_decoderHex|U3|Mux19~0_combout\,
	datad => \inst_decoderHex|U3|Mux8~0_combout\,
	combout => \inst_decoderHex|U3|Mux34~0_combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_Cy <= \Cy~output_o\;

ww_sum(0) <= \sum[0]~output_o\;

ww_sum(1) <= \sum[1]~output_o\;

ww_sum(2) <= \sum[2]~output_o\;

ww_sum(3) <= \sum[3]~output_o\;

ww_sum(4) <= \sum[4]~output_o\;

ww_sum(5) <= \sum[5]~output_o\;

ww_sum(6) <= \sum[6]~output_o\;

ww_sum(7) <= \sum[7]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(7) <= \HEX0[7]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX1(7) <= \HEX1[7]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX2(7) <= \HEX2[7]~output_o\;
END structure;


