-- Copyright (C) 2017  Intel Corporation. All rights reserved.
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
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "09/06/2018 12:04:29"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LAB2 IS
    PORT (
	clk : IN std_logic;
	ps2_data : IN std_logic;
	ps2_clock : IN std_logic;
	reset : IN std_logic;
	key : OUT std_logic_vector(10 DOWNTO 0);
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0);
	lcd : OUT std_logic_vector(7 DOWNTO 0);
	enviar : OUT std_logic;
	rs : OUT std_logic;
	rw : OUT std_logic
	);
END LAB2;

-- Design Ports Information
-- key[0]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[1]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[3]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[4]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[6]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[7]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[8]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[9]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key[10]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp1[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- disp2[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[0]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[1]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[2]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[3]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[4]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[5]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[6]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- lcd[7]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enviar	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rs	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ps2_clock	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ps2_data	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_ps2_data : std_logic;
SIGNAL ww_ps2_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_key : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lcd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_enviar : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \key[0]~output_o\ : std_logic;
SIGNAL \key[1]~output_o\ : std_logic;
SIGNAL \key[2]~output_o\ : std_logic;
SIGNAL \key[3]~output_o\ : std_logic;
SIGNAL \key[4]~output_o\ : std_logic;
SIGNAL \key[5]~output_o\ : std_logic;
SIGNAL \key[6]~output_o\ : std_logic;
SIGNAL \key[7]~output_o\ : std_logic;
SIGNAL \key[8]~output_o\ : std_logic;
SIGNAL \key[9]~output_o\ : std_logic;
SIGNAL \key[10]~output_o\ : std_logic;
SIGNAL \disp1[0]~output_o\ : std_logic;
SIGNAL \disp1[1]~output_o\ : std_logic;
SIGNAL \disp1[2]~output_o\ : std_logic;
SIGNAL \disp1[3]~output_o\ : std_logic;
SIGNAL \disp1[4]~output_o\ : std_logic;
SIGNAL \disp1[5]~output_o\ : std_logic;
SIGNAL \disp1[6]~output_o\ : std_logic;
SIGNAL \disp2[0]~output_o\ : std_logic;
SIGNAL \disp2[1]~output_o\ : std_logic;
SIGNAL \disp2[2]~output_o\ : std_logic;
SIGNAL \disp2[3]~output_o\ : std_logic;
SIGNAL \disp2[4]~output_o\ : std_logic;
SIGNAL \disp2[5]~output_o\ : std_logic;
SIGNAL \disp2[6]~output_o\ : std_logic;
SIGNAL \lcd[0]~output_o\ : std_logic;
SIGNAL \lcd[1]~output_o\ : std_logic;
SIGNAL \lcd[2]~output_o\ : std_logic;
SIGNAL \lcd[3]~output_o\ : std_logic;
SIGNAL \lcd[4]~output_o\ : std_logic;
SIGNAL \lcd[5]~output_o\ : std_logic;
SIGNAL \lcd[6]~output_o\ : std_logic;
SIGNAL \lcd[7]~output_o\ : std_logic;
SIGNAL \enviar~output_o\ : std_logic;
SIGNAL \rs~output_o\ : std_logic;
SIGNAL \rw~output_o\ : std_logic;
SIGNAL \ps2_clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \i~2_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \i~1_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Equal3~2_combout\ : std_logic;
SIGNAL \Equal3~3_combout\ : std_logic;
SIGNAL \Equal3~5_combout\ : std_logic;
SIGNAL \Equal3~7_combout\ : std_logic;
SIGNAL \Equal3~6_combout\ : std_logic;
SIGNAL \Equal3~4_combout\ : std_logic;
SIGNAL \Equal3~8_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \Equal3~1_combout\ : std_logic;
SIGNAL \Equal3~9_combout\ : std_logic;
SIGNAL \i~0_combout\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \ps2_data~input_o\ : std_logic;
SIGNAL \code[0]~0_combout\ : std_logic;
SIGNAL \key[0]~reg0feeder_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \code[3]~7_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \code[6]~5_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \code[5]~6_combout\ : std_logic;
SIGNAL \code[2]~8_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \code[1]~4_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \code[7]~2_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \code[8]~1_combout\ : std_logic;
SIGNAL \code[4]~3_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \letDif~0_combout\ : std_logic;
SIGNAL \letDif~q\ : std_logic;
SIGNAL \char[0]~3_combout\ : std_logic;
SIGNAL \key[0]~reg0_q\ : std_logic;
SIGNAL \key[1]~reg0feeder_combout\ : std_logic;
SIGNAL \key[1]~reg0_q\ : std_logic;
SIGNAL \key[2]~reg0feeder_combout\ : std_logic;
SIGNAL \key[2]~reg0_q\ : std_logic;
SIGNAL \key[3]~reg0_q\ : std_logic;
SIGNAL \key[4]~reg0_q\ : std_logic;
SIGNAL \key[5]~reg0_q\ : std_logic;
SIGNAL \key[6]~reg0feeder_combout\ : std_logic;
SIGNAL \key[6]~reg0_q\ : std_logic;
SIGNAL \key[7]~reg0feeder_combout\ : std_logic;
SIGNAL \key[7]~reg0_q\ : std_logic;
SIGNAL \key[8]~reg0_q\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \code[9]~9_combout\ : std_logic;
SIGNAL \key[9]~reg0feeder_combout\ : std_logic;
SIGNAL \key[9]~reg0_q\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \code[10]~10_combout\ : std_logic;
SIGNAL \key[10]~reg0feeder_combout\ : std_logic;
SIGNAL \key[10]~reg0_q\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \disp1[0]~reg0_q\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \disp1[1]~reg0_q\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \disp1[2]~reg0_q\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \disp1[3]~reg0_q\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \disp1[4]~reg0_q\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \disp1[5]~reg0_q\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \disp1[6]~reg0_q\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \disp2[0]~reg0_q\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \disp2[1]~reg0_q\ : std_logic;
SIGNAL \Mux11~0_combout\ : std_logic;
SIGNAL \disp2[2]~reg0_q\ : std_logic;
SIGNAL \Mux10~0_combout\ : std_logic;
SIGNAL \disp2[3]~reg0_q\ : std_logic;
SIGNAL \Mux9~0_combout\ : std_logic;
SIGNAL \disp2[4]~reg0_q\ : std_logic;
SIGNAL \Mux8~0_combout\ : std_logic;
SIGNAL \disp2[5]~reg0_q\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \disp2[6]~reg0_q\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~6_combout\ : std_logic;
SIGNAL \Mux20~7_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~5_combout\ : std_logic;
SIGNAL \comb_logic~0_combout\ : std_logic;
SIGNAL \char[0]~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Selector37~3_combout\ : std_logic;
SIGNAL \comb_logic:contar[0]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[30]~2\ : std_logic;
SIGNAL \comb_logic:contar[31]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[31]~q\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Selector40~4_combout\ : std_logic;
SIGNAL \estado.encender~q\ : std_logic;
SIGNAL \comb_logic:contar[12]~1_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \comb_logic:contar[12]~2_combout\ : std_logic;
SIGNAL \comb_logic:contar[12]~3_combout\ : std_logic;
SIGNAL \comb_logic:contar[0]~q\ : std_logic;
SIGNAL \comb_logic:contar[0]~2\ : std_logic;
SIGNAL \comb_logic:contar[1]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[1]~q\ : std_logic;
SIGNAL \comb_logic:contar[1]~2\ : std_logic;
SIGNAL \comb_logic:contar[2]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[2]~q\ : std_logic;
SIGNAL \comb_logic:contar[2]~2\ : std_logic;
SIGNAL \comb_logic:contar[3]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[3]~q\ : std_logic;
SIGNAL \comb_logic:contar[3]~2\ : std_logic;
SIGNAL \comb_logic:contar[4]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[4]~q\ : std_logic;
SIGNAL \comb_logic:contar[4]~2\ : std_logic;
SIGNAL \comb_logic:contar[5]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[5]~q\ : std_logic;
SIGNAL \comb_logic:contar[5]~2\ : std_logic;
SIGNAL \comb_logic:contar[6]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[6]~q\ : std_logic;
SIGNAL \comb_logic:contar[6]~2\ : std_logic;
SIGNAL \comb_logic:contar[7]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[7]~q\ : std_logic;
SIGNAL \comb_logic:contar[7]~2\ : std_logic;
SIGNAL \comb_logic:contar[8]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[8]~q\ : std_logic;
SIGNAL \comb_logic:contar[8]~2\ : std_logic;
SIGNAL \comb_logic:contar[9]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[9]~q\ : std_logic;
SIGNAL \comb_logic:contar[9]~2\ : std_logic;
SIGNAL \comb_logic:contar[10]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[10]~q\ : std_logic;
SIGNAL \comb_logic:contar[10]~2\ : std_logic;
SIGNAL \comb_logic:contar[11]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[11]~q\ : std_logic;
SIGNAL \comb_logic:contar[11]~2\ : std_logic;
SIGNAL \comb_logic:contar[12]~4_combout\ : std_logic;
SIGNAL \comb_logic:contar[12]~q\ : std_logic;
SIGNAL \comb_logic:contar[12]~5\ : std_logic;
SIGNAL \comb_logic:contar[13]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[13]~q\ : std_logic;
SIGNAL \comb_logic:contar[13]~2\ : std_logic;
SIGNAL \comb_logic:contar[14]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[14]~q\ : std_logic;
SIGNAL \comb_logic:contar[14]~2\ : std_logic;
SIGNAL \comb_logic:contar[15]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[15]~q\ : std_logic;
SIGNAL \comb_logic:contar[15]~2\ : std_logic;
SIGNAL \comb_logic:contar[16]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[16]~q\ : std_logic;
SIGNAL \comb_logic:contar[16]~2\ : std_logic;
SIGNAL \comb_logic:contar[17]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[17]~q\ : std_logic;
SIGNAL \comb_logic:contar[17]~2\ : std_logic;
SIGNAL \comb_logic:contar[18]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[18]~q\ : std_logic;
SIGNAL \comb_logic:contar[18]~2\ : std_logic;
SIGNAL \comb_logic:contar[19]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[19]~q\ : std_logic;
SIGNAL \comb_logic:contar[19]~2\ : std_logic;
SIGNAL \comb_logic:contar[20]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[20]~q\ : std_logic;
SIGNAL \comb_logic:contar[20]~2\ : std_logic;
SIGNAL \comb_logic:contar[21]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[21]~q\ : std_logic;
SIGNAL \comb_logic:contar[21]~2\ : std_logic;
SIGNAL \comb_logic:contar[22]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[22]~q\ : std_logic;
SIGNAL \comb_logic:contar[22]~2\ : std_logic;
SIGNAL \comb_logic:contar[23]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[23]~q\ : std_logic;
SIGNAL \comb_logic:contar[23]~2\ : std_logic;
SIGNAL \comb_logic:contar[24]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[24]~q\ : std_logic;
SIGNAL \comb_logic:contar[24]~2\ : std_logic;
SIGNAL \comb_logic:contar[25]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[25]~q\ : std_logic;
SIGNAL \comb_logic:contar[25]~2\ : std_logic;
SIGNAL \comb_logic:contar[26]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[26]~q\ : std_logic;
SIGNAL \comb_logic:contar[26]~2\ : std_logic;
SIGNAL \comb_logic:contar[27]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[27]~q\ : std_logic;
SIGNAL \comb_logic:contar[27]~2\ : std_logic;
SIGNAL \comb_logic:contar[28]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[28]~q\ : std_logic;
SIGNAL \comb_logic:contar[28]~2\ : std_logic;
SIGNAL \comb_logic:contar[29]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[29]~q\ : std_logic;
SIGNAL \comb_logic:contar[29]~2\ : std_logic;
SIGNAL \comb_logic:contar[30]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[30]~q\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \j[0]~32_combout\ : std_logic;
SIGNAL \j[12]~34_combout\ : std_logic;
SIGNAL \j[12]~35_combout\ : std_logic;
SIGNAL \j[0]~33\ : std_logic;
SIGNAL \j[1]~36_combout\ : std_logic;
SIGNAL \j[1]~37\ : std_logic;
SIGNAL \j[2]~38_combout\ : std_logic;
SIGNAL \j[2]~39\ : std_logic;
SIGNAL \j[3]~40_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \j[3]~41\ : std_logic;
SIGNAL \j[4]~42_combout\ : std_logic;
SIGNAL \j[4]~43\ : std_logic;
SIGNAL \j[5]~44_combout\ : std_logic;
SIGNAL \j[5]~45\ : std_logic;
SIGNAL \j[6]~46_combout\ : std_logic;
SIGNAL \j[6]~47\ : std_logic;
SIGNAL \j[7]~48_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \j[7]~49\ : std_logic;
SIGNAL \j[8]~50_combout\ : std_logic;
SIGNAL \j[8]~51\ : std_logic;
SIGNAL \j[9]~52_combout\ : std_logic;
SIGNAL \j[9]~53\ : std_logic;
SIGNAL \j[10]~54_combout\ : std_logic;
SIGNAL \j[10]~55\ : std_logic;
SIGNAL \j[11]~56_combout\ : std_logic;
SIGNAL \j[11]~57\ : std_logic;
SIGNAL \j[12]~58_combout\ : std_logic;
SIGNAL \j[12]~59\ : std_logic;
SIGNAL \j[13]~60_combout\ : std_logic;
SIGNAL \j[13]~61\ : std_logic;
SIGNAL \j[14]~62_combout\ : std_logic;
SIGNAL \j[14]~63\ : std_logic;
SIGNAL \j[15]~64_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \j[15]~65\ : std_logic;
SIGNAL \j[16]~66_combout\ : std_logic;
SIGNAL \j[16]~67\ : std_logic;
SIGNAL \j[17]~68_combout\ : std_logic;
SIGNAL \j[17]~69\ : std_logic;
SIGNAL \j[18]~70_combout\ : std_logic;
SIGNAL \j[18]~71\ : std_logic;
SIGNAL \j[19]~72_combout\ : std_logic;
SIGNAL \j[19]~73\ : std_logic;
SIGNAL \j[20]~74_combout\ : std_logic;
SIGNAL \j[20]~75\ : std_logic;
SIGNAL \j[21]~76_combout\ : std_logic;
SIGNAL \j[21]~77\ : std_logic;
SIGNAL \j[22]~78_combout\ : std_logic;
SIGNAL \j[22]~79\ : std_logic;
SIGNAL \j[23]~80_combout\ : std_logic;
SIGNAL \j[23]~81\ : std_logic;
SIGNAL \j[24]~82_combout\ : std_logic;
SIGNAL \j[24]~83\ : std_logic;
SIGNAL \j[25]~84_combout\ : std_logic;
SIGNAL \j[25]~85\ : std_logic;
SIGNAL \j[26]~86_combout\ : std_logic;
SIGNAL \j[26]~87\ : std_logic;
SIGNAL \j[27]~88_combout\ : std_logic;
SIGNAL \j[27]~89\ : std_logic;
SIGNAL \j[28]~90_combout\ : std_logic;
SIGNAL \j[28]~91\ : std_logic;
SIGNAL \j[29]~92_combout\ : std_logic;
SIGNAL \j[29]~93\ : std_logic;
SIGNAL \j[30]~94_combout\ : std_logic;
SIGNAL \j[30]~95\ : std_logic;
SIGNAL \j[31]~96_combout\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \estado.fin~q\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \estado~18_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Selector33~0_combout\ : std_logic;
SIGNAL \estado.configpantalla~q\ : std_logic;
SIGNAL \estado.encenderdisplay~q\ : std_logic;
SIGNAL \Selector35~1_combout\ : std_logic;
SIGNAL \estado.limpiardisplay~q\ : std_logic;
SIGNAL \estado.configcursor~q\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \Selector37~5_combout\ : std_logic;
SIGNAL \Selector37~4_combout\ : std_logic;
SIGNAL \estado.listo~q\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \lcd~2_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \Selector50~2_combout\ : std_logic;
SIGNAL \Selector50~3_combout\ : std_logic;
SIGNAL \lcd[0]~reg0_q\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector49~1_combout\ : std_logic;
SIGNAL \Selector49~2_combout\ : std_logic;
SIGNAL \Selector49~3_combout\ : std_logic;
SIGNAL \lcd[1]~reg0_q\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \lcd[4]~3_combout\ : std_logic;
SIGNAL \Selector48~2_combout\ : std_logic;
SIGNAL \Selector48~3_combout\ : std_logic;
SIGNAL \lcd[2]~reg0_q\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \Selector47~2_combout\ : std_logic;
SIGNAL \Selector47~3_combout\ : std_logic;
SIGNAL \lcd[3]~reg0_q\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \lcd[4]~4_combout\ : std_logic;
SIGNAL \lcd[4]~7_combout\ : std_logic;
SIGNAL \lcd[4]~6_combout\ : std_logic;
SIGNAL \lcd[4]~reg0_q\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \lcd[5]~reg0_q\ : std_logic;
SIGNAL \lcd[4]~5_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \lcd[6]~reg0_q\ : std_logic;
SIGNAL \Selector43~1_combout\ : std_logic;
SIGNAL \lcd[7]~reg0_q\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \enviar~reg0_q\ : std_logic;
SIGNAL \rs~0_combout\ : std_logic;
SIGNAL \rs~1_combout\ : std_logic;
SIGNAL \rs~reg0_q\ : std_logic;
SIGNAL char : std_logic_vector(7 DOWNTO 0);
SIGNAL j : std_logic_vector(31 DOWNTO 0);
SIGNAL code : std_logic_vector(10 DOWNTO 0);
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL \ALT_INV_disp2[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_disp1[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_estado.fin~q\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_ps2_clock~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk <= clk;
ww_ps2_data <= ps2_data;
ww_ps2_clock <= ps2_clock;
ww_reset <= reset;
key <= ww_key;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
lcd <= ww_lcd;
enviar <= ww_enviar;
rs <= ww_rs;
rw <= ww_rw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_disp2[6]~reg0_q\ <= NOT \disp2[6]~reg0_q\;
\ALT_INV_disp1[6]~reg0_q\ <= NOT \disp1[6]~reg0_q\;
\ALT_INV_estado.fin~q\ <= NOT \estado.fin~q\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_ps2_clock~input_o\ <= NOT \ps2_clock~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X72_Y73_N2
\key[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[0]~reg0_q\,
	devoe => ww_devoe,
	o => \key[0]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\key[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[1]~reg0_q\,
	devoe => ww_devoe,
	o => \key[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\key[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[2]~reg0_q\,
	devoe => ww_devoe,
	o => \key[2]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\key[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[3]~reg0_q\,
	devoe => ww_devoe,
	o => \key[3]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\key[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[4]~reg0_q\,
	devoe => ww_devoe,
	o => \key[4]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\key[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[5]~reg0_q\,
	devoe => ww_devoe,
	o => \key[5]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\key[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[6]~reg0_q\,
	devoe => ww_devoe,
	o => \key[6]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\key[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[7]~reg0_q\,
	devoe => ww_devoe,
	o => \key[7]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\key[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[8]~reg0_q\,
	devoe => ww_devoe,
	o => \key[8]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\key[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[9]~reg0_q\,
	devoe => ww_devoe,
	o => \key[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\key[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \key[10]~reg0_q\,
	devoe => ww_devoe,
	o => \key[10]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\disp1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1[0]~reg0_q\,
	devoe => ww_devoe,
	o => \disp1[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\disp1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1[1]~reg0_q\,
	devoe => ww_devoe,
	o => \disp1[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\disp1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1[2]~reg0_q\,
	devoe => ww_devoe,
	o => \disp1[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\disp1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1[3]~reg0_q\,
	devoe => ww_devoe,
	o => \disp1[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\disp1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1[4]~reg0_q\,
	devoe => ww_devoe,
	o => \disp1[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\disp1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp1[5]~reg0_q\,
	devoe => ww_devoe,
	o => \disp1[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\disp1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_disp1[6]~reg0_q\,
	devoe => ww_devoe,
	o => \disp1[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\disp2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2[0]~reg0_q\,
	devoe => ww_devoe,
	o => \disp2[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\disp2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2[1]~reg0_q\,
	devoe => ww_devoe,
	o => \disp2[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\disp2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2[2]~reg0_q\,
	devoe => ww_devoe,
	o => \disp2[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\disp2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2[3]~reg0_q\,
	devoe => ww_devoe,
	o => \disp2[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\disp2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2[4]~reg0_q\,
	devoe => ww_devoe,
	o => \disp2[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\disp2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \disp2[5]~reg0_q\,
	devoe => ww_devoe,
	o => \disp2[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\disp2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_disp2[6]~reg0_q\,
	devoe => ww_devoe,
	o => \disp2[6]~output_o\);

-- Location: IOOBUF_X0_Y52_N16
\lcd[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd[0]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd[0]~output_o\);

-- Location: IOOBUF_X0_Y44_N9
\lcd[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd[1]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd[1]~output_o\);

-- Location: IOOBUF_X0_Y44_N2
\lcd[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd[2]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd[2]~output_o\);

-- Location: IOOBUF_X0_Y49_N9
\lcd[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd[3]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd[3]~output_o\);

-- Location: IOOBUF_X0_Y54_N9
\lcd[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd[4]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd[4]~output_o\);

-- Location: IOOBUF_X0_Y55_N23
\lcd[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd[5]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd[5]~output_o\);

-- Location: IOOBUF_X0_Y51_N16
\lcd[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd[6]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd[6]~output_o\);

-- Location: IOOBUF_X0_Y47_N2
\lcd[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \lcd[7]~reg0_q\,
	devoe => ww_devoe,
	o => \lcd[7]~output_o\);

-- Location: IOOBUF_X0_Y52_N2
\enviar~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \enviar~reg0_q\,
	devoe => ww_devoe,
	o => \enviar~output_o\);

-- Location: IOOBUF_X0_Y44_N16
\rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs~reg0_q\,
	devoe => ww_devoe,
	o => \rs~output_o\);

-- Location: IOOBUF_X0_Y44_N23
\rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rw~output_o\);

-- Location: IOIBUF_X0_Y67_N15
\ps2_clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ps2_clock,
	o => \ps2_clock~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X8_Y66_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = i(0) $ (VCC)
-- \Add2~1\ = CARRY(i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X8_Y66_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (i(1) & (!\Add2~1\)) # (!i(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X9_Y64_N4
\i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~2_combout\ = (\Add2~2_combout\ & \Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~2_combout\,
	datad => \Equal3~9_combout\,
	combout => \i~2_combout\);

-- Location: FF_X9_Y64_N5
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LCCOMB_X8_Y66_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (i(2) & (\Add2~3\ $ (GND))) # (!i(2) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((i(2) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: FF_X8_Y66_N5
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: LCCOMB_X8_Y66_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (i(3) & (!\Add2~5\)) # (!i(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X9_Y64_N26
\i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~1_combout\ = (\Equal3~9_combout\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datad => \Add2~6_combout\,
	combout => \i~1_combout\);

-- Location: FF_X9_Y64_N27
\i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(3));

-- Location: LCCOMB_X8_Y66_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (i(4) & (\Add2~7\ $ (GND))) # (!i(4) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((i(4) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: FF_X8_Y66_N9
\i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(4));

-- Location: LCCOMB_X8_Y66_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (i(5) & (!\Add2~9\)) # (!i(5) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!i(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: FF_X8_Y66_N11
\i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(5));

-- Location: LCCOMB_X8_Y66_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = (i(6) & (\Add2~11\ $ (GND))) # (!i(6) & (!\Add2~11\ & VCC))
-- \Add2~13\ = CARRY((i(6) & !\Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: FF_X8_Y66_N13
\i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(6));

-- Location: LCCOMB_X8_Y66_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (i(7) & (!\Add2~13\)) # (!i(7) & ((\Add2~13\) # (GND)))
-- \Add2~15\ = CARRY((!\Add2~13\) # (!i(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: FF_X8_Y66_N15
\i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(7));

-- Location: LCCOMB_X8_Y66_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = (i(8) & (\Add2~15\ $ (GND))) # (!i(8) & (!\Add2~15\ & VCC))
-- \Add2~17\ = CARRY((i(8) & !\Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(8),
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: FF_X8_Y66_N17
\i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(8));

-- Location: LCCOMB_X8_Y66_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = (i(9) & (!\Add2~17\)) # (!i(9) & ((\Add2~17\) # (GND)))
-- \Add2~19\ = CARRY((!\Add2~17\) # (!i(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(9),
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: FF_X8_Y66_N19
\i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(9));

-- Location: LCCOMB_X8_Y66_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = (i(10) & (\Add2~19\ $ (GND))) # (!i(10) & (!\Add2~19\ & VCC))
-- \Add2~21\ = CARRY((i(10) & !\Add2~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(10),
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: FF_X8_Y66_N21
\i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(10));

-- Location: LCCOMB_X8_Y66_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = (i(11) & (!\Add2~21\)) # (!i(11) & ((\Add2~21\) # (GND)))
-- \Add2~23\ = CARRY((!\Add2~21\) # (!i(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(11),
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: FF_X8_Y66_N23
\i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(11));

-- Location: LCCOMB_X8_Y66_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = (i(12) & (\Add2~23\ $ (GND))) # (!i(12) & (!\Add2~23\ & VCC))
-- \Add2~25\ = CARRY((i(12) & !\Add2~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(12),
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: FF_X8_Y66_N25
\i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(12));

-- Location: LCCOMB_X8_Y66_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = (i(13) & (!\Add2~25\)) # (!i(13) & ((\Add2~25\) # (GND)))
-- \Add2~27\ = CARRY((!\Add2~25\) # (!i(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(13),
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: FF_X8_Y66_N27
\i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(13));

-- Location: LCCOMB_X8_Y66_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = (i(14) & (\Add2~27\ $ (GND))) # (!i(14) & (!\Add2~27\ & VCC))
-- \Add2~29\ = CARRY((i(14) & !\Add2~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(14),
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: FF_X8_Y66_N29
\i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(14));

-- Location: LCCOMB_X8_Y66_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = (i(15) & (!\Add2~29\)) # (!i(15) & ((\Add2~29\) # (GND)))
-- \Add2~31\ = CARRY((!\Add2~29\) # (!i(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(15),
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: FF_X8_Y66_N31
\i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(15));

-- Location: LCCOMB_X8_Y65_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = (i(16) & (\Add2~31\ $ (GND))) # (!i(16) & (!\Add2~31\ & VCC))
-- \Add2~33\ = CARRY((i(16) & !\Add2~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(16),
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: FF_X8_Y65_N1
\i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(16));

-- Location: LCCOMB_X8_Y65_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = (i(17) & (!\Add2~33\)) # (!i(17) & ((\Add2~33\) # (GND)))
-- \Add2~35\ = CARRY((!\Add2~33\) # (!i(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(17),
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: FF_X8_Y65_N3
\i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(17));

-- Location: LCCOMB_X8_Y65_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = (i(18) & (\Add2~35\ $ (GND))) # (!i(18) & (!\Add2~35\ & VCC))
-- \Add2~37\ = CARRY((i(18) & !\Add2~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(18),
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: FF_X8_Y65_N5
\i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(18));

-- Location: LCCOMB_X8_Y65_N6
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = (i(19) & (!\Add2~37\)) # (!i(19) & ((\Add2~37\) # (GND)))
-- \Add2~39\ = CARRY((!\Add2~37\) # (!i(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(19),
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: FF_X8_Y65_N7
\i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(19));

-- Location: LCCOMB_X8_Y65_N8
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = (i(20) & (\Add2~39\ $ (GND))) # (!i(20) & (!\Add2~39\ & VCC))
-- \Add2~41\ = CARRY((i(20) & !\Add2~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(20),
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: FF_X8_Y65_N9
\i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(20));

-- Location: LCCOMB_X8_Y65_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = (i(21) & (!\Add2~41\)) # (!i(21) & ((\Add2~41\) # (GND)))
-- \Add2~43\ = CARRY((!\Add2~41\) # (!i(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(21),
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: FF_X8_Y65_N11
\i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(21));

-- Location: LCCOMB_X8_Y65_N12
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = (i(22) & (\Add2~43\ $ (GND))) # (!i(22) & (!\Add2~43\ & VCC))
-- \Add2~45\ = CARRY((i(22) & !\Add2~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(22),
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: FF_X8_Y65_N13
\i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(22));

-- Location: LCCOMB_X8_Y65_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = (i(23) & (!\Add2~45\)) # (!i(23) & ((\Add2~45\) # (GND)))
-- \Add2~47\ = CARRY((!\Add2~45\) # (!i(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(23),
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: FF_X8_Y65_N15
\i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(23));

-- Location: LCCOMB_X8_Y65_N16
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = (i(24) & (\Add2~47\ $ (GND))) # (!i(24) & (!\Add2~47\ & VCC))
-- \Add2~49\ = CARRY((i(24) & !\Add2~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(24),
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: FF_X8_Y65_N17
\i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(24));

-- Location: LCCOMB_X8_Y65_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = (i(25) & (!\Add2~49\)) # (!i(25) & ((\Add2~49\) # (GND)))
-- \Add2~51\ = CARRY((!\Add2~49\) # (!i(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(25),
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: FF_X8_Y65_N19
\i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(25));

-- Location: LCCOMB_X8_Y65_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = (i(26) & (\Add2~51\ $ (GND))) # (!i(26) & (!\Add2~51\ & VCC))
-- \Add2~53\ = CARRY((i(26) & !\Add2~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(26),
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: FF_X8_Y65_N21
\i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(26));

-- Location: LCCOMB_X8_Y65_N22
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = (i(27) & (!\Add2~53\)) # (!i(27) & ((\Add2~53\) # (GND)))
-- \Add2~55\ = CARRY((!\Add2~53\) # (!i(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(27),
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: FF_X8_Y65_N23
\i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(27));

-- Location: LCCOMB_X8_Y64_N6
\Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~2_combout\ = (i(27)) # ((i(25)) # ((i(24)) # (i(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(27),
	datab => i(25),
	datac => i(24),
	datad => i(26),
	combout => \Equal3~2_combout\);

-- Location: LCCOMB_X8_Y64_N20
\Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~3_combout\ = (i(22)) # ((i(20)) # ((i(23)) # (i(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(22),
	datab => i(20),
	datac => i(23),
	datad => i(21),
	combout => \Equal3~3_combout\);

-- Location: LCCOMB_X8_Y64_N10
\Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~5_combout\ = (i(12)) # ((i(14)) # ((i(13)) # (i(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(12),
	datab => i(14),
	datac => i(13),
	datad => i(15),
	combout => \Equal3~5_combout\);

-- Location: LCCOMB_X8_Y64_N2
\Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~7_combout\ = (i(6)) # ((i(7)) # ((i(4)) # (i(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datab => i(7),
	datac => i(4),
	datad => i(5),
	combout => \Equal3~7_combout\);

-- Location: LCCOMB_X8_Y64_N22
\Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~6_combout\ = (i(8)) # ((i(11)) # ((i(10)) # (i(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(8),
	datab => i(11),
	datac => i(10),
	datad => i(9),
	combout => \Equal3~6_combout\);

-- Location: LCCOMB_X8_Y64_N24
\Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~4_combout\ = (i(18)) # ((i(19)) # ((i(16)) # (i(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(18),
	datab => i(19),
	datac => i(16),
	datad => i(17),
	combout => \Equal3~4_combout\);

-- Location: LCCOMB_X8_Y64_N14
\Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~8_combout\ = (\Equal3~5_combout\) # ((\Equal3~7_combout\) # ((\Equal3~6_combout\) # (\Equal3~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~5_combout\,
	datab => \Equal3~7_combout\,
	datac => \Equal3~6_combout\,
	datad => \Equal3~4_combout\,
	combout => \Equal3~8_combout\);

-- Location: LCCOMB_X9_Y64_N8
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!i(2) & !i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datad => i(0),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X8_Y65_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = (i(28) & (\Add2~55\ $ (GND))) # (!i(28) & (!\Add2~55\ & VCC))
-- \Add2~57\ = CARRY((i(28) & !\Add2~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(28),
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: FF_X8_Y65_N25
\i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(28));

-- Location: LCCOMB_X8_Y65_N26
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = (i(29) & (!\Add2~57\)) # (!i(29) & ((\Add2~57\) # (GND)))
-- \Add2~59\ = CARRY((!\Add2~57\) # (!i(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: FF_X8_Y65_N27
\i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(29));

-- Location: LCCOMB_X8_Y65_N28
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = (i(30) & (\Add2~59\ $ (GND))) # (!i(30) & (!\Add2~59\ & VCC))
-- \Add2~61\ = CARRY((i(30) & !\Add2~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(30),
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: FF_X8_Y65_N29
\i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~60_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(30));

-- Location: LCCOMB_X8_Y65_N30
\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = i(31) $ (\Add2~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(31),
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: FF_X8_Y65_N31
\i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add2~62_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(31));

-- Location: LCCOMB_X9_Y64_N24
\Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~0_combout\ = (i(28)) # ((i(31)) # ((i(29)) # (i(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(28),
	datab => i(31),
	datac => i(29),
	datad => i(30),
	combout => \Equal3~0_combout\);

-- Location: LCCOMB_X9_Y64_N2
\Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~1_combout\ = (((\Equal3~0_combout\) # (!\Decoder0~0_combout\)) # (!i(1))) # (!i(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datab => i(1),
	datac => \Decoder0~0_combout\,
	datad => \Equal3~0_combout\,
	combout => \Equal3~1_combout\);

-- Location: LCCOMB_X8_Y64_N12
\Equal3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal3~9_combout\ = (\Equal3~2_combout\) # ((\Equal3~3_combout\) # ((\Equal3~8_combout\) # (\Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~2_combout\,
	datab => \Equal3~3_combout\,
	datac => \Equal3~8_combout\,
	datad => \Equal3~1_combout\,
	combout => \Equal3~9_combout\);

-- Location: LCCOMB_X9_Y66_N20
\i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~0_combout\ = (\Add2~0_combout\ & \Equal3~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \Equal3~9_combout\,
	combout => \i~0_combout\);

-- Location: FF_X9_Y66_N21
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LCCOMB_X10_Y64_N24
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\reset~input_o\ & (!i(0) & (!i(3) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i(0),
	datac => i(3),
	datad => i(2),
	combout => \Decoder0~1_combout\);

-- Location: IOIBUF_X0_Y59_N22
\ps2_data~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ps2_data,
	o => \ps2_data~input_o\);

-- Location: LCCOMB_X10_Y64_N22
\code[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[0]~0_combout\ = (\Decoder0~1_combout\ & ((i(1) & (code(0))) # (!i(1) & ((\ps2_data~input_o\))))) # (!\Decoder0~1_combout\ & (((code(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~1_combout\,
	datab => i(1),
	datac => code(0),
	datad => \ps2_data~input_o\,
	combout => \code[0]~0_combout\);

-- Location: FF_X10_Y64_N23
\code[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(0));

-- Location: LCCOMB_X9_Y64_N20
\key[0]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[0]~reg0feeder_combout\ = code(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(0),
	combout => \key[0]~reg0feeder_combout\);

-- Location: LCCOMB_X7_Y64_N6
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!i(3) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i(3),
	datad => \reset~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X7_Y64_N12
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\Decoder0~3_combout\ & (i(0) & (i(1) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => i(0),
	datac => i(1),
	datad => i(2),
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X8_Y64_N26
\code[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[3]~7_combout\ = (\Decoder0~8_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~8_combout\ & ((code(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datac => code(3),
	datad => \Decoder0~8_combout\,
	combout => \code[3]~7_combout\);

-- Location: FF_X8_Y64_N27
\code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[3]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(3));

-- Location: LCCOMB_X7_Y64_N2
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!\reset~input_o\ & (i(2) & (!i(3) & !i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i(2),
	datac => i(3),
	datad => i(0),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X8_Y64_N28
\code[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[6]~5_combout\ = (i(1) & ((\Decoder0~5_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~5_combout\ & ((code(6)))))) # (!i(1) & (((code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datab => i(1),
	datac => code(6),
	datad => \Decoder0~5_combout\,
	combout => \code[6]~5_combout\);

-- Location: FF_X8_Y64_N29
\code[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[6]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(6));

-- Location: LCCOMB_X7_Y64_N14
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (\Decoder0~3_combout\ & (i(0) & (!i(1) & i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => i(0),
	datac => i(1),
	datad => i(2),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X8_Y64_N4
\code[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[5]~6_combout\ = (\Decoder0~7_combout\ & ((\ps2_data~input_o\))) # (!\Decoder0~7_combout\ & (code(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Decoder0~7_combout\,
	datac => code(5),
	datad => \ps2_data~input_o\,
	combout => \code[5]~6_combout\);

-- Location: FF_X8_Y64_N5
\code[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[5]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(5));

-- Location: LCCOMB_X9_Y64_N18
\code[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[2]~8_combout\ = (i(1) & ((\Decoder0~1_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~1_combout\ & ((code(2)))))) # (!i(1) & (((code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datab => i(1),
	datac => code(2),
	datad => \Decoder0~1_combout\,
	combout => \code[2]~8_combout\);

-- Location: FF_X9_Y64_N19
\code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[2]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(2));

-- Location: LCCOMB_X8_Y64_N8
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (!code(3) & (code(6) & (code(5) & !code(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(6),
	datac => code(5),
	datad => code(2),
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X7_Y64_N28
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (\Decoder0~3_combout\ & (!i(2) & (!i(1) & i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => i(2),
	datac => i(1),
	datad => i(0),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X7_Y64_N30
\code[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[1]~4_combout\ = (\Decoder0~6_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~6_combout\ & ((code(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datac => code(1),
	datad => \Decoder0~6_combout\,
	combout => \code[1]~4_combout\);

-- Location: FF_X7_Y64_N31
\code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(1));

-- Location: LCCOMB_X7_Y64_N16
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (\Decoder0~3_combout\ & (i(2) & (i(1) & i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => i(2),
	datac => i(1),
	datad => i(0),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X7_Y64_N18
\code[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[7]~2_combout\ = (\Decoder0~4_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~4_combout\ & ((code(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datac => code(7),
	datad => \Decoder0~4_combout\,
	combout => \code[7]~2_combout\);

-- Location: FF_X7_Y64_N19
\code[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[7]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(7));

-- Location: LCCOMB_X7_Y64_N8
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\reset~input_o\ & (!i(2) & (i(3) & !i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i(2),
	datac => i(3),
	datad => i(0),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X7_Y64_N4
\code[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[8]~1_combout\ = (i(1) & (((code(8))))) # (!i(1) & ((\Decoder0~2_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~2_combout\ & ((code(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datab => i(1),
	datac => code(8),
	datad => \Decoder0~2_combout\,
	combout => \code[8]~1_combout\);

-- Location: FF_X7_Y64_N5
\code[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[8]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(8));

-- Location: LCCOMB_X7_Y64_N20
\code[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[4]~3_combout\ = (\Decoder0~5_combout\ & ((i(1) & ((code(4)))) # (!i(1) & (\ps2_data~input_o\)))) # (!\Decoder0~5_combout\ & (((code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datab => \Decoder0~5_combout\,
	datac => code(4),
	datad => i(1),
	combout => \code[4]~3_combout\);

-- Location: FF_X7_Y64_N21
\code[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[4]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(4));

-- Location: LCCOMB_X7_Y64_N24
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (!code(1) & (code(7) & (code(8) & !code(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(7),
	datac => code(8),
	datad => code(4),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X8_Y64_N30
\letDif~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \letDif~0_combout\ = \letDif~q\ $ (((!\Equal3~9_combout\ & ((!\Equal4~0_combout\) # (!\Equal4~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal3~9_combout\,
	datab => \Equal4~1_combout\,
	datac => \letDif~q\,
	datad => \Equal4~0_combout\,
	combout => \letDif~0_combout\);

-- Location: FF_X8_Y64_N31
letDif : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \letDif~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \letDif~q\);

-- Location: LCCOMB_X8_Y64_N16
\char[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \char[0]~3_combout\ = (!\letDif~q\ & (!\Equal3~9_combout\ & ((!\Equal4~1_combout\) # (!\Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letDif~q\,
	datab => \Equal4~0_combout\,
	datac => \Equal4~1_combout\,
	datad => \Equal3~9_combout\,
	combout => \char[0]~3_combout\);

-- Location: FF_X9_Y64_N21
\key[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[0]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[0]~reg0_q\);

-- Location: LCCOMB_X6_Y64_N12
\key[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[1]~reg0feeder_combout\ = code(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => code(1),
	combout => \key[1]~reg0feeder_combout\);

-- Location: FF_X6_Y64_N13
\key[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[1]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[1]~reg0_q\);

-- Location: LCCOMB_X9_Y64_N10
\key[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[2]~reg0feeder_combout\ = code(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => code(2),
	combout => \key[2]~reg0feeder_combout\);

-- Location: FF_X9_Y64_N11
\key[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[2]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[2]~reg0_q\);

-- Location: FF_X8_Y64_N19
\key[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => code(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[3]~reg0_q\);

-- Location: FF_X8_Y64_N1
\key[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => code(4),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[4]~reg0_q\);

-- Location: FF_X8_Y64_N9
\key[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => code(5),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[5]~reg0_q\);

-- Location: LCCOMB_X10_Y64_N0
\key[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[6]~reg0feeder_combout\ = code(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(6),
	combout => \key[6]~reg0feeder_combout\);

-- Location: FF_X10_Y64_N1
\key[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[6]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[6]~reg0_q\);

-- Location: LCCOMB_X10_Y64_N14
\key[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[7]~reg0feeder_combout\ = code(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(7),
	combout => \key[7]~reg0feeder_combout\);

-- Location: FF_X10_Y64_N15
\key[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[7]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[7]~reg0_q\);

-- Location: FF_X9_Y64_N9
\key[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => code(8),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[8]~reg0_q\);

-- Location: LCCOMB_X10_Y64_N10
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (i(3) & (!i(1) & (i(0) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datab => i(1),
	datac => i(0),
	datad => i(2),
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X10_Y64_N4
\code[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[9]~9_combout\ = (\reset~input_o\ & (((code(9))))) # (!\reset~input_o\ & ((\Decoder0~9_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~9_combout\ & ((code(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ps2_data~input_o\,
	datac => code(9),
	datad => \Decoder0~9_combout\,
	combout => \code[9]~9_combout\);

-- Location: FF_X10_Y64_N5
\code[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(9));

-- Location: LCCOMB_X9_Y64_N6
\key[9]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[9]~reg0feeder_combout\ = code(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(9),
	combout => \key[9]~reg0feeder_combout\);

-- Location: FF_X9_Y64_N7
\key[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[9]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[9]~reg0_q\);

-- Location: LCCOMB_X10_Y64_N28
\Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (\Decoder0~0_combout\ & (i(1) & (i(3) & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => i(1),
	datac => i(3),
	datad => \reset~input_o\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X10_Y64_N18
\code[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[10]~10_combout\ = (\Decoder0~10_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~10_combout\ & ((code(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_data~input_o\,
	datac => code(10),
	datad => \Decoder0~10_combout\,
	combout => \code[10]~10_combout\);

-- Location: FF_X10_Y64_N19
\code[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(10));

-- Location: LCCOMB_X9_Y64_N0
\key[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[10]~reg0feeder_combout\ = code(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(10),
	combout => \key[10]~reg0feeder_combout\);

-- Location: FF_X9_Y64_N1
\key[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[10]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[10]~reg0_q\);

-- Location: LCCOMB_X6_Y64_N2
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (code(4) & (code(1) & (code(2) $ (code(3))))) # (!code(4) & (!code(2) & (code(1) $ (code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux6~0_combout\);

-- Location: FF_X6_Y64_N3
\disp1[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux6~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[0]~reg0_q\);

-- Location: LCCOMB_X6_Y64_N0
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (code(2) & ((code(1) & (code(4))) # (!code(1) & ((code(3)))))) # (!code(2) & (code(3) & (code(1) $ (code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux5~0_combout\);

-- Location: FF_X6_Y64_N1
\disp1[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux5~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[1]~reg0_q\);

-- Location: LCCOMB_X6_Y64_N22
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (code(4) & (code(3) & ((code(2)) # (!code(1))))) # (!code(4) & (code(2) & (!code(1) & !code(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux4~0_combout\);

-- Location: FF_X6_Y64_N23
\disp1[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux4~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[2]~reg0_q\);

-- Location: LCCOMB_X6_Y64_N16
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (code(1) & (code(2) $ (((!code(3)))))) # (!code(1) & ((code(2) & (code(4) & !code(3))) # (!code(2) & (!code(4) & code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux3~0_combout\);

-- Location: FF_X6_Y64_N17
\disp1[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux3~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[3]~reg0_q\);

-- Location: LCCOMB_X6_Y64_N18
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (code(2) & (code(1) & (!code(4)))) # (!code(2) & ((code(3) & ((!code(4)))) # (!code(3) & (code(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux2~0_combout\);

-- Location: FF_X6_Y64_N19
\disp1[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux2~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[4]~reg0_q\);

-- Location: LCCOMB_X6_Y64_N24
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (code(2) & (!code(4) & ((code(1)) # (!code(3))))) # (!code(2) & (code(1) & (code(4) $ (!code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux1~0_combout\);

-- Location: FF_X6_Y64_N25
\disp1[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux1~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[5]~reg0_q\);

-- Location: LCCOMB_X6_Y64_N14
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (code(1) & ((code(4)) # (code(2) $ (code(3))))) # (!code(1) & ((code(2)) # (code(4) $ (code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux0~0_combout\);

-- Location: FF_X6_Y64_N15
\disp1[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[6]~reg0_q\);

-- Location: LCCOMB_X10_Y64_N8
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (code(7) & (!code(6) & (code(5) $ (!code(8))))) # (!code(7) & (code(5) & (code(6) $ (!code(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(6),
	datac => code(5),
	datad => code(8),
	combout => \Mux13~0_combout\);

-- Location: FF_X10_Y64_N9
\disp2[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux13~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[0]~reg0_q\);

-- Location: LCCOMB_X9_Y64_N22
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (code(6) & ((code(5) & ((code(8)))) # (!code(5) & (code(7))))) # (!code(6) & (code(7) & (code(5) $ (code(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(6),
	datad => code(8),
	combout => \Mux12~0_combout\);

-- Location: FF_X9_Y64_N23
\disp2[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux12~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[1]~reg0_q\);

-- Location: LCCOMB_X9_Y64_N28
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (code(7) & (code(8) & ((code(6)) # (!code(5))))) # (!code(7) & (!code(5) & (code(6) & !code(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(6),
	datad => code(8),
	combout => \Mux11~0_combout\);

-- Location: FF_X9_Y64_N29
\disp2[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux11~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[2]~reg0_q\);

-- Location: LCCOMB_X9_Y64_N30
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (code(5) & (code(7) $ ((!code(6))))) # (!code(5) & ((code(7) & (!code(6) & !code(8))) # (!code(7) & (code(6) & code(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(6),
	datad => code(8),
	combout => \Mux10~0_combout\);

-- Location: FF_X9_Y64_N31
\disp2[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux10~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[3]~reg0_q\);

-- Location: LCCOMB_X9_Y64_N16
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (code(6) & (code(5) & ((!code(8))))) # (!code(6) & ((code(7) & ((!code(8)))) # (!code(7) & (code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(6),
	datad => code(8),
	combout => \Mux9~0_combout\);

-- Location: FF_X9_Y64_N17
\disp2[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux9~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[4]~reg0_q\);

-- Location: LCCOMB_X9_Y64_N14
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (code(5) & (code(8) $ (((code(6)) # (!code(7)))))) # (!code(5) & (!code(7) & (code(6) & !code(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(6),
	datad => code(8),
	combout => \Mux8~0_combout\);

-- Location: FF_X9_Y64_N15
\disp2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux8~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[5]~reg0_q\);

-- Location: LCCOMB_X9_Y64_N12
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (code(5) & ((code(8)) # (code(7) $ (code(6))))) # (!code(5) & ((code(6)) # (code(7) $ (code(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(6),
	datad => code(8),
	combout => \Mux7~0_combout\);

-- Location: FF_X9_Y64_N13
\disp2[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux7~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \char[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[6]~reg0_q\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X5_Y62_N0
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (code(7) & (!code(5) & !code(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => code(7),
	datac => code(5),
	datad => code(6),
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X5_Y62_N14
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!code(4) & ((code(3) & (!code(1))) # (!code(3) & ((code(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(3),
	datad => code(2),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X5_Y64_N30
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = code(2) $ (((code(1)) # ((code(4)) # (code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(2),
	datac => code(4),
	datad => code(6),
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X5_Y64_N8
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (!code(1) & (code(6) & ((code(2)) # (!code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(2),
	datac => code(4),
	datad => code(6),
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X5_Y64_N18
\Mux20~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~6_combout\ = (code(4) & (code(2) & (code(1) $ (code(6))))) # (!code(4) & (code(6) & (code(1) $ (code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(2),
	datac => code(4),
	datad => code(6),
	combout => \Mux20~6_combout\);

-- Location: LCCOMB_X5_Y64_N12
\Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (code(3) & (code(5))) # (!code(3) & (\Mux20~6_combout\ & (code(5) $ (!code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(3),
	datac => code(4),
	datad => \Mux20~6_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X5_Y64_N28
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (code(3) & ((\Mux20~7_combout\ & (\Mux20~3_combout\)) # (!\Mux20~7_combout\ & ((\Mux20~2_combout\))))) # (!code(3) & (((\Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => code(3),
	datac => \Mux20~2_combout\,
	datad => \Mux20~7_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X7_Y62_N0
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (\Mux20~1_combout\ & ((\Mux20~0_combout\) # ((!code(7) & \Mux20~4_combout\)))) # (!\Mux20~1_combout\ & (((!code(7) & \Mux20~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \Mux20~0_combout\,
	datac => code(7),
	datad => \Mux20~4_combout\,
	combout => \Mux20~5_combout\);

-- Location: LCCOMB_X8_Y64_N18
\comb_logic~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic~0_combout\ = (!\letDif~q\ & ((!\Equal4~0_combout\) # (!\Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \letDif~q\,
	datab => \Equal4~1_combout\,
	datad => \Equal4~0_combout\,
	combout => \comb_logic~0_combout\);

-- Location: LCCOMB_X8_Y64_N0
\char[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \char[0]~2_combout\ = (!\reset~input_o\ & (\comb_logic~0_combout\ & !\Equal3~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \comb_logic~0_combout\,
	datad => \Equal3~9_combout\,
	combout => \char[0]~2_combout\);

-- Location: FF_X7_Y62_N1
\char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux20~5_combout\,
	sclr => code(8),
	ena => \char[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(0));

-- Location: LCCOMB_X7_Y63_N12
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (code(2) & (code(1) & (!code(3) & code(4)))) # (!code(2) & (!code(1) & (code(3) & !code(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(3),
	datad => code(4),
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X7_Y63_N18
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (!code(2) & (code(1) & (code(3) & code(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(3),
	datad => code(4),
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X7_Y63_N10
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (code(7) & (\Mux18~3_combout\ & (!code(5)))) # (!code(7) & (((code(5) & \Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => code(7),
	datac => code(5),
	datad => \Mux18~2_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X7_Y63_N8
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (code(2) & ((code(1)) # (code(5) $ (!code(4))))) # (!code(2) & (code(1) & (code(5) $ (code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(5),
	datad => code(4),
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X7_Y63_N2
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (code(2) & (((!code(1) & code(4))) # (!code(5)))) # (!code(2) & (code(1) & (code(5) & !code(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(5),
	datad => code(4),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X7_Y63_N26
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (code(7)) # ((code(3) & (!\Mux18~1_combout\)) # (!code(3) & ((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~1_combout\,
	datab => \Mux18~0_combout\,
	datac => code(3),
	datad => code(7),
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X7_Y63_N30
\Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (code(6) & (((\Mux18~5_combout\ & !code(7))))) # (!code(6) & (\Mux18~4_combout\ & ((\Mux18~5_combout\) # (!code(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => \Mux18~4_combout\,
	datac => \Mux18~5_combout\,
	datad => code(7),
	combout => \Mux18~6_combout\);

-- Location: FF_X7_Y63_N31
\char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux18~6_combout\,
	sclr => code(8),
	ena => \char[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(2));

-- Location: LCCOMB_X7_Y63_N6
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (code(1) & ((code(2) & (!code(3))) # (!code(2) & ((!code(7)))))) # (!code(1) & ((code(3) & ((code(7)))) # (!code(3) & (code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(3),
	datad => code(7),
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X7_Y63_N4
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (code(2) & ((code(1) & (!code(3))) # (!code(1) & (code(3) & !code(7))))) # (!code(2) & (code(1) & ((code(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(3),
	datad => code(7),
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X7_Y63_N16
\Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (code(4) & (((!code(1))))) # (!code(4) & (!code(7) & (code(6) & code(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(4),
	datab => code(7),
	datac => code(6),
	datad => code(1),
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X7_Y63_N14
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux17~2_combout\ & (!code(7) & ((\Mux17~3_combout\) # (\Mux17~7_combout\)))) # (!\Mux17~2_combout\ & (((\Mux17~3_combout\ & \Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => code(7),
	datac => \Mux17~3_combout\,
	datad => \Mux17~7_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X7_Y63_N0
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux17~2_combout\ & ((\Mux17~3_combout\) # ((code(7) & !\Mux17~7_combout\)))) # (!\Mux17~2_combout\ & (!code(7) & (\Mux17~3_combout\ & \Mux17~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => code(7),
	datac => \Mux17~3_combout\,
	datad => \Mux17~7_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X7_Y63_N20
\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (code(5) & (\Mux17~4_combout\ & ((code(6)) # (!\Mux17~5_combout\)))) # (!code(5) & (!\Mux17~4_combout\ & (!code(6) & \Mux17~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => \Mux17~4_combout\,
	datac => code(6),
	datad => \Mux17~5_combout\,
	combout => \Mux17~6_combout\);

-- Location: FF_X7_Y63_N21
\char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux17~6_combout\,
	sclr => code(8),
	ena => \char[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(3));

-- Location: LCCOMB_X6_Y64_N4
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (!code(1) & (!code(4) & (code(2) $ (code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X6_Y64_N6
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (code(2) & ((code(4) & ((!code(3)))) # (!code(4) & (!code(1))))) # (!code(2) & (code(1) & (code(4) $ (!code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X6_Y64_N30
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (code(7) & (!code(6) & (\Mux19~1_combout\))) # (!code(7) & (code(6) & ((\Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(6),
	datac => \Mux19~1_combout\,
	datad => \Mux19~0_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X7_Y63_N22
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (code(3) & (code(1) $ (((code(2)) # (!code(4)))))) # (!code(3) & (code(2) $ (((code(1) & !code(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101000110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(3),
	datad => code(4),
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X7_Y63_N24
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~4_combout\ & ((code(6) & ((code(1)) # (!code(4)))) # (!code(6) & (code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(4),
	datac => code(1),
	datad => \Mux19~4_combout\,
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X7_Y63_N28
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (code(5) & (((\Mux19~5_combout\ & !code(7))))) # (!code(5) & (\Mux19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \Mux19~5_combout\,
	datac => code(5),
	datad => code(7),
	combout => \Mux19~3_combout\);

-- Location: FF_X7_Y63_N29
\char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux19~3_combout\,
	sclr => code(8),
	ena => \char[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(1));

-- Location: LCCOMB_X5_Y62_N26
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (code(2) & (((code(3))))) # (!code(2) & (!code(7) & (!code(3) & code(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(2),
	datac => code(3),
	datad => code(6),
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X5_Y62_N28
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (code(3) & (((code(1) & code(7))) # (!code(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(3),
	datac => code(1),
	datad => code(7),
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X5_Y62_N24
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux15~3_combout\ & (((code(4)) # (code(5))))) # (!\Mux15~3_combout\ & (code(1) & (code(4) $ (code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(5),
	datad => \Mux15~3_combout\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X5_Y62_N30
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (code(4) & ((code(5) & (code(1))) # (!code(5) & ((\Mux15~3_combout\))))) # (!code(4) & (code(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(5),
	datad => \Mux15~3_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X5_Y62_N2
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (code(3) & (code(7) $ (code(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => code(7),
	datac => code(3),
	datad => code(6),
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X5_Y62_N10
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux15~7_combout\ & (!\Mux15~4_combout\ & (\Mux15~5_combout\ $ (\Mux15~2_combout\)))) # (!\Mux15~7_combout\ & (!\Mux15~5_combout\ & (\Mux15~4_combout\ & \Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~7_combout\,
	datab => \Mux15~5_combout\,
	datac => \Mux15~4_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~6_combout\);

-- Location: FF_X5_Y62_N11
\char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux15~6_combout\,
	sclr => code(8),
	ena => \char[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(5));

-- Location: LCCOMB_X5_Y62_N6
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (code(3) & ((code(1) & ((!code(2)))) # (!code(1) & (!code(4) & code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(3),
	datad => code(2),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X5_Y62_N8
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (code(5) & (code(1) $ (code(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datac => code(1),
	datad => code(2),
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X5_Y62_N22
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (code(1) & ((!code(2)))) # (!code(1) & ((code(4)) # (code(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => code(4),
	datac => code(1),
	datad => code(2),
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X5_Y62_N20
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (code(2) & ((code(5) & ((code(4)))) # (!code(5) & (!code(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(5),
	datad => code(2),
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X5_Y62_N18
\Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (code(3) & (((code(6))))) # (!code(3) & (\Mux16~5_combout\ & (code(5) $ (code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => \Mux16~5_combout\,
	datac => code(3),
	datad => code(6),
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X5_Y62_N4
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (code(3) & ((\Mux16~6_combout\ & ((\Mux16~2_combout\))) # (!\Mux16~6_combout\ & (\Mux16~1_combout\)))) # (!code(3) & (((\Mux16~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => \Mux16~1_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux16~6_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X5_Y62_N16
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\Mux16~0_combout\ & ((\Mux20~1_combout\) # ((!code(7) & \Mux16~3_combout\)))) # (!\Mux16~0_combout\ & (!code(7) & (\Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => code(7),
	datac => \Mux16~3_combout\,
	datad => \Mux20~1_combout\,
	combout => \Mux16~4_combout\);

-- Location: FF_X5_Y62_N17
\char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux16~4_combout\,
	sclr => code(8),
	ena => \char[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(4));

-- Location: LCCOMB_X6_Y64_N8
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = code(3) $ (((code(2)) # ((code(1) & !code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X6_Y64_N10
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (code(2) & (!code(3) & ((code(1)) # (!code(4))))) # (!code(2) & (code(3) & (code(1) $ (!code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X6_Y64_N20
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (code(7) & (!code(6) & ((\Mux14~1_combout\)))) # (!code(7) & (code(6) & (\Mux14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(6),
	datac => \Mux14~0_combout\,
	datad => \Mux14~1_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X6_Y64_N28
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (code(6) & ((code(1) & (!code(4))) # (!code(1) & ((code(3)))))) # (!code(6) & ((code(4)) # ((code(1) & code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(6),
	datac => code(4),
	datad => code(3),
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X6_Y64_N26
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (code(2) & (!code(3) & ((code(6)) # (\Mux14~4_combout\)))) # (!code(2) & (\Mux14~4_combout\ & ((code(6)) # (code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(6),
	datac => code(3),
	datad => \Mux14~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X5_Y62_N12
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (code(5) & (((!code(7) & \Mux14~5_combout\)))) # (!code(5) & (\Mux14~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~2_combout\,
	datab => code(7),
	datac => code(5),
	datad => \Mux14~5_combout\,
	combout => \Mux14~3_combout\);

-- Location: FF_X5_Y62_N13
\char[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux14~3_combout\,
	sclr => code(8),
	ena => \char[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(6));

-- Location: LCCOMB_X6_Y62_N20
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!char(5) & (!char(0) & (!char(4) & !char(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(5),
	datab => char(0),
	datac => char(4),
	datad => char(6),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X7_Y62_N12
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!char(2) & (!char(3) & (!char(1) & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => char(3),
	datac => char(1),
	datad => \Equal1~0_combout\,
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X7_Y64_N22
\Selector37~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~3_combout\ = (\estado.fin~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.fin~q\,
	datad => \reset~input_o\,
	combout => \Selector37~3_combout\);

-- Location: LCCOMB_X9_Y63_N0
\comb_logic:contar[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[0]~1_combout\ = \comb_logic:contar[0]~q\ $ (VCC)
-- \comb_logic:contar[0]~2\ = CARRY(\comb_logic:contar[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[0]~q\,
	datad => VCC,
	combout => \comb_logic:contar[0]~1_combout\,
	cout => \comb_logic:contar[0]~2\);

-- Location: LCCOMB_X9_Y62_N28
\comb_logic:contar[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[30]~1_combout\ = (\comb_logic:contar[30]~q\ & (\comb_logic:contar[29]~2\ $ (GND))) # (!\comb_logic:contar[30]~q\ & (!\comb_logic:contar[29]~2\ & VCC))
-- \comb_logic:contar[30]~2\ = CARRY((\comb_logic:contar[30]~q\ & !\comb_logic:contar[29]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[30]~q\,
	datad => VCC,
	cin => \comb_logic:contar[29]~2\,
	combout => \comb_logic:contar[30]~1_combout\,
	cout => \comb_logic:contar[30]~2\);

-- Location: LCCOMB_X9_Y62_N30
\comb_logic:contar[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[31]~1_combout\ = \comb_logic:contar[31]~q\ $ (\comb_logic:contar[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[31]~q\,
	cin => \comb_logic:contar[30]~2\,
	combout => \comb_logic:contar[31]~1_combout\);

-- Location: FF_X9_Y62_N31
\comb_logic:contar[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[31]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[31]~q\);

-- Location: LCCOMB_X10_Y62_N14
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\comb_logic:contar[23]~q\ & (!\comb_logic:contar[22]~q\ & (!\comb_logic:contar[24]~q\ & !\comb_logic:contar[25]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[23]~q\,
	datab => \comb_logic:contar[22]~q\,
	datac => \comb_logic:contar[24]~q\,
	datad => \comb_logic:contar[25]~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X10_Y62_N16
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\comb_logic:contar[29]~q\ & (!\comb_logic:contar[27]~q\ & (!\comb_logic:contar[26]~q\ & !\comb_logic:contar[28]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[29]~q\,
	datab => \comb_logic:contar[27]~q\,
	datac => \comb_logic:contar[26]~q\,
	datad => \comb_logic:contar[28]~q\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X10_Y62_N24
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\comb_logic:contar[30]~q\ & (\Equal0~2_combout\ & \Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[30]~q\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X8_Y63_N28
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\comb_logic:contar[14]~q\ & !\comb_logic:contar[15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[14]~q\,
	datac => \comb_logic:contar[15]~q\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X8_Y62_N24
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\comb_logic:contar[20]~q\ & (!\comb_logic:contar[19]~q\ & ((!\comb_logic:contar[17]~q\) # (!\comb_logic:contar[18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[18]~q\,
	datab => \comb_logic:contar[20]~q\,
	datac => \comb_logic:contar[17]~q\,
	datad => \comb_logic:contar[19]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X8_Y62_N26
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\comb_logic:contar[20]~q\ & (!\comb_logic:contar[16]~q\ & !\comb_logic:contar[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[20]~q\,
	datab => \comb_logic:contar[16]~q\,
	datad => \comb_logic:contar[19]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X8_Y62_N2
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!\comb_logic:contar[5]~q\ & !\comb_logic:contar[6]~q\)) # (!\comb_logic:contar[7]~q\)) # (!\comb_logic:contar[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[5]~q\,
	datab => \comb_logic:contar[8]~q\,
	datac => \comb_logic:contar[6]~q\,
	datad => \comb_logic:contar[7]~q\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X8_Y62_N20
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\comb_logic:contar[11]~q\) # ((\comb_logic:contar[10]~q\ & ((\comb_logic:contar[9]~q\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[9]~q\,
	datab => \comb_logic:contar[10]~q\,
	datac => \comb_logic:contar[11]~q\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X8_Y62_N16
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\ & (((!\comb_logic:contar[12]~q\ & !\LessThan0~3_combout\)) # (!\comb_logic:contar[13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \comb_logic:contar[12]~q\,
	datac => \comb_logic:contar[13]~q\,
	datad => \LessThan0~3_combout\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X8_Y62_N10
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~1_combout\) # (((\Equal0~11_combout\ & \LessThan0~4_combout\)) # (!\comb_logic:contar[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~11_combout\,
	datab => \LessThan0~1_combout\,
	datac => \comb_logic:contar[21]~q\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X10_Y62_N6
\Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~4_combout\ = (\estado.encender~q\) # ((!\comb_logic:contar[31]~q\ & ((!\LessThan0~5_combout\) # (!\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[31]~q\,
	datab => \Equal0~10_combout\,
	datac => \estado.encender~q\,
	datad => \LessThan0~5_combout\,
	combout => \Selector40~4_combout\);

-- Location: FF_X10_Y62_N7
\estado.encender\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector40~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.encender~q\);

-- Location: LCCOMB_X8_Y62_N30
\comb_logic:contar[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[12]~1_combout\ = (\Equal0~9_combout\ & (((\comb_logic~0_combout\ & !\Equal1~1_combout\)) # (!\estado.listo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.listo~q\,
	datab => \comb_logic~0_combout\,
	datac => \Equal0~9_combout\,
	datad => \Equal1~1_combout\,
	combout => \comb_logic:contar[12]~1_combout\);

-- Location: LCCOMB_X8_Y62_N12
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!\comb_logic:contar[6]~q\ & !\comb_logic:contar[7]~q\)) # (!\comb_logic:contar[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[6]~q\,
	datab => \comb_logic:contar[7]~q\,
	datad => \comb_logic:contar[9]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X8_Y62_N18
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\comb_logic:contar[11]~q\ & (!\comb_logic:contar[13]~q\ & (!\comb_logic:contar[10]~q\ & !\comb_logic:contar[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[11]~q\,
	datab => \comb_logic:contar[13]~q\,
	datac => \comb_logic:contar[10]~q\,
	datad => \comb_logic:contar[12]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X8_Y62_N0
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\comb_logic:contar[5]~q\ & (!\comb_logic:contar[7]~q\ & !\comb_logic:contar[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[5]~q\,
	datab => \comb_logic:contar[7]~q\,
	datad => \comb_logic:contar[4]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X8_Y62_N14
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Equal0~1_combout\ & ((\LessThan1~0_combout\) # ((\Equal0~0_combout\) # (!\comb_logic:contar[8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \comb_logic:contar[8]~q\,
	datad => \Equal0~0_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X7_Y62_N8
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\comb_logic:contar[17]~q\ & (!\comb_logic:contar[18]~q\ & (!\comb_logic:contar[21]~q\ & \LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[17]~q\,
	datab => \comb_logic:contar[18]~q\,
	datac => \comb_logic:contar[21]~q\,
	datad => \LessThan0~0_combout\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X8_Y62_N4
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\Equal0~5_combout\ & (((\LessThan1~1_combout\) # (!\comb_logic:contar[14]~q\)) # (!\comb_logic:contar[15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[15]~q\,
	datab => \comb_logic:contar[14]~q\,
	datac => \LessThan1~1_combout\,
	datad => \Equal0~5_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X8_Y62_N28
\comb_logic:contar[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[12]~2_combout\ = (\Equal0~10_combout\ & ((\estado.encender~q\ & (\LessThan1~2_combout\)) # (!\estado.encender~q\ & ((\LessThan0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \Equal0~10_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan0~5_combout\,
	combout => \comb_logic:contar[12]~2_combout\);

-- Location: LCCOMB_X8_Y62_N6
\comb_logic:contar[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[12]~3_combout\ = (!\comb_logic:contar[31]~q\ & (!\comb_logic:contar[12]~2_combout\ & ((!\comb_logic:contar[12]~1_combout\) # (!\estado.encender~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \comb_logic:contar[31]~q\,
	datac => \comb_logic:contar[12]~1_combout\,
	datad => \comb_logic:contar[12]~2_combout\,
	combout => \comb_logic:contar[12]~3_combout\);

-- Location: FF_X9_Y63_N1
\comb_logic:contar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[0]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[0]~q\);

-- Location: LCCOMB_X9_Y63_N2
\comb_logic:contar[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[1]~1_combout\ = (\comb_logic:contar[1]~q\ & (!\comb_logic:contar[0]~2\)) # (!\comb_logic:contar[1]~q\ & ((\comb_logic:contar[0]~2\) # (GND)))
-- \comb_logic:contar[1]~2\ = CARRY((!\comb_logic:contar[0]~2\) # (!\comb_logic:contar[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[1]~q\,
	datad => VCC,
	cin => \comb_logic:contar[0]~2\,
	combout => \comb_logic:contar[1]~1_combout\,
	cout => \comb_logic:contar[1]~2\);

-- Location: FF_X9_Y63_N3
\comb_logic:contar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[1]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[1]~q\);

-- Location: LCCOMB_X9_Y63_N4
\comb_logic:contar[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[2]~1_combout\ = (\comb_logic:contar[2]~q\ & (\comb_logic:contar[1]~2\ $ (GND))) # (!\comb_logic:contar[2]~q\ & (!\comb_logic:contar[1]~2\ & VCC))
-- \comb_logic:contar[2]~2\ = CARRY((\comb_logic:contar[2]~q\ & !\comb_logic:contar[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[2]~q\,
	datad => VCC,
	cin => \comb_logic:contar[1]~2\,
	combout => \comb_logic:contar[2]~1_combout\,
	cout => \comb_logic:contar[2]~2\);

-- Location: FF_X9_Y63_N5
\comb_logic:contar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[2]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[2]~q\);

-- Location: LCCOMB_X9_Y63_N6
\comb_logic:contar[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[3]~1_combout\ = (\comb_logic:contar[3]~q\ & (!\comb_logic:contar[2]~2\)) # (!\comb_logic:contar[3]~q\ & ((\comb_logic:contar[2]~2\) # (GND)))
-- \comb_logic:contar[3]~2\ = CARRY((!\comb_logic:contar[2]~2\) # (!\comb_logic:contar[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[3]~q\,
	datad => VCC,
	cin => \comb_logic:contar[2]~2\,
	combout => \comb_logic:contar[3]~1_combout\,
	cout => \comb_logic:contar[3]~2\);

-- Location: FF_X8_Y63_N9
\comb_logic:contar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[3]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[3]~q\);

-- Location: LCCOMB_X9_Y63_N8
\comb_logic:contar[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[4]~1_combout\ = (\comb_logic:contar[4]~q\ & (\comb_logic:contar[3]~2\ $ (GND))) # (!\comb_logic:contar[4]~q\ & (!\comb_logic:contar[3]~2\ & VCC))
-- \comb_logic:contar[4]~2\ = CARRY((\comb_logic:contar[4]~q\ & !\comb_logic:contar[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[4]~q\,
	datad => VCC,
	cin => \comb_logic:contar[3]~2\,
	combout => \comb_logic:contar[4]~1_combout\,
	cout => \comb_logic:contar[4]~2\);

-- Location: FF_X9_Y63_N9
\comb_logic:contar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[4]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[4]~q\);

-- Location: LCCOMB_X9_Y63_N10
\comb_logic:contar[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[5]~1_combout\ = (\comb_logic:contar[5]~q\ & (!\comb_logic:contar[4]~2\)) # (!\comb_logic:contar[5]~q\ & ((\comb_logic:contar[4]~2\) # (GND)))
-- \comb_logic:contar[5]~2\ = CARRY((!\comb_logic:contar[4]~2\) # (!\comb_logic:contar[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[5]~q\,
	datad => VCC,
	cin => \comb_logic:contar[4]~2\,
	combout => \comb_logic:contar[5]~1_combout\,
	cout => \comb_logic:contar[5]~2\);

-- Location: FF_X9_Y63_N11
\comb_logic:contar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[5]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[5]~q\);

-- Location: LCCOMB_X9_Y63_N12
\comb_logic:contar[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[6]~1_combout\ = (\comb_logic:contar[6]~q\ & (\comb_logic:contar[5]~2\ $ (GND))) # (!\comb_logic:contar[6]~q\ & (!\comb_logic:contar[5]~2\ & VCC))
-- \comb_logic:contar[6]~2\ = CARRY((\comb_logic:contar[6]~q\ & !\comb_logic:contar[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[6]~q\,
	datad => VCC,
	cin => \comb_logic:contar[5]~2\,
	combout => \comb_logic:contar[6]~1_combout\,
	cout => \comb_logic:contar[6]~2\);

-- Location: FF_X8_Y62_N3
\comb_logic:contar[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[6]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[6]~q\);

-- Location: LCCOMB_X9_Y63_N14
\comb_logic:contar[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[7]~1_combout\ = (\comb_logic:contar[7]~q\ & (!\comb_logic:contar[6]~2\)) # (!\comb_logic:contar[7]~q\ & ((\comb_logic:contar[6]~2\) # (GND)))
-- \comb_logic:contar[7]~2\ = CARRY((!\comb_logic:contar[6]~2\) # (!\comb_logic:contar[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[7]~q\,
	datad => VCC,
	cin => \comb_logic:contar[6]~2\,
	combout => \comb_logic:contar[7]~1_combout\,
	cout => \comb_logic:contar[7]~2\);

-- Location: FF_X9_Y63_N15
\comb_logic:contar[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[7]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[7]~q\);

-- Location: LCCOMB_X9_Y63_N16
\comb_logic:contar[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[8]~1_combout\ = (\comb_logic:contar[8]~q\ & (\comb_logic:contar[7]~2\ $ (GND))) # (!\comb_logic:contar[8]~q\ & (!\comb_logic:contar[7]~2\ & VCC))
-- \comb_logic:contar[8]~2\ = CARRY((\comb_logic:contar[8]~q\ & !\comb_logic:contar[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[8]~q\,
	datad => VCC,
	cin => \comb_logic:contar[7]~2\,
	combout => \comb_logic:contar[8]~1_combout\,
	cout => \comb_logic:contar[8]~2\);

-- Location: FF_X8_Y62_N15
\comb_logic:contar[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[8]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[8]~q\);

-- Location: LCCOMB_X9_Y63_N18
\comb_logic:contar[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[9]~1_combout\ = (\comb_logic:contar[9]~q\ & (!\comb_logic:contar[8]~2\)) # (!\comb_logic:contar[9]~q\ & ((\comb_logic:contar[8]~2\) # (GND)))
-- \comb_logic:contar[9]~2\ = CARRY((!\comb_logic:contar[8]~2\) # (!\comb_logic:contar[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[9]~q\,
	datad => VCC,
	cin => \comb_logic:contar[8]~2\,
	combout => \comb_logic:contar[9]~1_combout\,
	cout => \comb_logic:contar[9]~2\);

-- Location: FF_X8_Y62_N1
\comb_logic:contar[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[9]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[9]~q\);

-- Location: LCCOMB_X9_Y63_N20
\comb_logic:contar[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[10]~1_combout\ = (\comb_logic:contar[10]~q\ & (\comb_logic:contar[9]~2\ $ (GND))) # (!\comb_logic:contar[10]~q\ & (!\comb_logic:contar[9]~2\ & VCC))
-- \comb_logic:contar[10]~2\ = CARRY((\comb_logic:contar[10]~q\ & !\comb_logic:contar[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[10]~q\,
	datad => VCC,
	cin => \comb_logic:contar[9]~2\,
	combout => \comb_logic:contar[10]~1_combout\,
	cout => \comb_logic:contar[10]~2\);

-- Location: FF_X8_Y62_N19
\comb_logic:contar[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[10]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[10]~q\);

-- Location: LCCOMB_X9_Y63_N22
\comb_logic:contar[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[11]~1_combout\ = (\comb_logic:contar[11]~q\ & (!\comb_logic:contar[10]~2\)) # (!\comb_logic:contar[11]~q\ & ((\comb_logic:contar[10]~2\) # (GND)))
-- \comb_logic:contar[11]~2\ = CARRY((!\comb_logic:contar[10]~2\) # (!\comb_logic:contar[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[11]~q\,
	datad => VCC,
	cin => \comb_logic:contar[10]~2\,
	combout => \comb_logic:contar[11]~1_combout\,
	cout => \comb_logic:contar[11]~2\);

-- Location: FF_X8_Y62_N21
\comb_logic:contar[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[11]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[11]~q\);

-- Location: LCCOMB_X9_Y63_N24
\comb_logic:contar[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[12]~4_combout\ = (\comb_logic:contar[12]~q\ & (\comb_logic:contar[11]~2\ $ (GND))) # (!\comb_logic:contar[12]~q\ & (!\comb_logic:contar[11]~2\ & VCC))
-- \comb_logic:contar[12]~5\ = CARRY((\comb_logic:contar[12]~q\ & !\comb_logic:contar[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[12]~q\,
	datad => VCC,
	cin => \comb_logic:contar[11]~2\,
	combout => \comb_logic:contar[12]~4_combout\,
	cout => \comb_logic:contar[12]~5\);

-- Location: FF_X8_Y62_N27
\comb_logic:contar[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[12]~4_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[12]~q\);

-- Location: LCCOMB_X9_Y63_N26
\comb_logic:contar[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[13]~1_combout\ = (\comb_logic:contar[13]~q\ & (!\comb_logic:contar[12]~5\)) # (!\comb_logic:contar[13]~q\ & ((\comb_logic:contar[12]~5\) # (GND)))
-- \comb_logic:contar[13]~2\ = CARRY((!\comb_logic:contar[12]~5\) # (!\comb_logic:contar[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[13]~q\,
	datad => VCC,
	cin => \comb_logic:contar[12]~5\,
	combout => \comb_logic:contar[13]~1_combout\,
	cout => \comb_logic:contar[13]~2\);

-- Location: FF_X8_Y62_N9
\comb_logic:contar[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[13]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[13]~q\);

-- Location: LCCOMB_X9_Y63_N28
\comb_logic:contar[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[14]~1_combout\ = (\comb_logic:contar[14]~q\ & (\comb_logic:contar[13]~2\ $ (GND))) # (!\comb_logic:contar[14]~q\ & (!\comb_logic:contar[13]~2\ & VCC))
-- \comb_logic:contar[14]~2\ = CARRY((\comb_logic:contar[14]~q\ & !\comb_logic:contar[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[14]~q\,
	datad => VCC,
	cin => \comb_logic:contar[13]~2\,
	combout => \comb_logic:contar[14]~1_combout\,
	cout => \comb_logic:contar[14]~2\);

-- Location: FF_X8_Y63_N5
\comb_logic:contar[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[14]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[14]~q\);

-- Location: LCCOMB_X9_Y63_N30
\comb_logic:contar[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[15]~1_combout\ = (\comb_logic:contar[15]~q\ & (!\comb_logic:contar[14]~2\)) # (!\comb_logic:contar[15]~q\ & ((\comb_logic:contar[14]~2\) # (GND)))
-- \comb_logic:contar[15]~2\ = CARRY((!\comb_logic:contar[14]~2\) # (!\comb_logic:contar[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[15]~q\,
	datad => VCC,
	cin => \comb_logic:contar[14]~2\,
	combout => \comb_logic:contar[15]~1_combout\,
	cout => \comb_logic:contar[15]~2\);

-- Location: FF_X8_Y63_N23
\comb_logic:contar[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[15]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[15]~q\);

-- Location: LCCOMB_X9_Y62_N0
\comb_logic:contar[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[16]~1_combout\ = (\comb_logic:contar[16]~q\ & (\comb_logic:contar[15]~2\ $ (GND))) # (!\comb_logic:contar[16]~q\ & (!\comb_logic:contar[15]~2\ & VCC))
-- \comb_logic:contar[16]~2\ = CARRY((\comb_logic:contar[16]~q\ & !\comb_logic:contar[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[16]~q\,
	datad => VCC,
	cin => \comb_logic:contar[15]~2\,
	combout => \comb_logic:contar[16]~1_combout\,
	cout => \comb_logic:contar[16]~2\);

-- Location: FF_X9_Y62_N1
\comb_logic:contar[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[16]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[16]~q\);

-- Location: LCCOMB_X9_Y62_N2
\comb_logic:contar[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[17]~1_combout\ = (\comb_logic:contar[17]~q\ & (!\comb_logic:contar[16]~2\)) # (!\comb_logic:contar[17]~q\ & ((\comb_logic:contar[16]~2\) # (GND)))
-- \comb_logic:contar[17]~2\ = CARRY((!\comb_logic:contar[16]~2\) # (!\comb_logic:contar[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[17]~q\,
	datad => VCC,
	cin => \comb_logic:contar[16]~2\,
	combout => \comb_logic:contar[17]~1_combout\,
	cout => \comb_logic:contar[17]~2\);

-- Location: FF_X8_Y62_N25
\comb_logic:contar[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[17]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[17]~q\);

-- Location: LCCOMB_X9_Y62_N4
\comb_logic:contar[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[18]~1_combout\ = (\comb_logic:contar[18]~q\ & (\comb_logic:contar[17]~2\ $ (GND))) # (!\comb_logic:contar[18]~q\ & (!\comb_logic:contar[17]~2\ & VCC))
-- \comb_logic:contar[18]~2\ = CARRY((\comb_logic:contar[18]~q\ & !\comb_logic:contar[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[18]~q\,
	datad => VCC,
	cin => \comb_logic:contar[17]~2\,
	combout => \comb_logic:contar[18]~1_combout\,
	cout => \comb_logic:contar[18]~2\);

-- Location: FF_X8_Y62_N23
\comb_logic:contar[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[18]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[18]~q\);

-- Location: LCCOMB_X9_Y62_N6
\comb_logic:contar[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[19]~1_combout\ = (\comb_logic:contar[19]~q\ & (!\comb_logic:contar[18]~2\)) # (!\comb_logic:contar[19]~q\ & ((\comb_logic:contar[18]~2\) # (GND)))
-- \comb_logic:contar[19]~2\ = CARRY((!\comb_logic:contar[18]~2\) # (!\comb_logic:contar[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[19]~q\,
	datad => VCC,
	cin => \comb_logic:contar[18]~2\,
	combout => \comb_logic:contar[19]~1_combout\,
	cout => \comb_logic:contar[19]~2\);

-- Location: FF_X9_Y62_N7
\comb_logic:contar[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[19]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[19]~q\);

-- Location: LCCOMB_X9_Y62_N8
\comb_logic:contar[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[20]~1_combout\ = (\comb_logic:contar[20]~q\ & (\comb_logic:contar[19]~2\ $ (GND))) # (!\comb_logic:contar[20]~q\ & (!\comb_logic:contar[19]~2\ & VCC))
-- \comb_logic:contar[20]~2\ = CARRY((\comb_logic:contar[20]~q\ & !\comb_logic:contar[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[20]~q\,
	datad => VCC,
	cin => \comb_logic:contar[19]~2\,
	combout => \comb_logic:contar[20]~1_combout\,
	cout => \comb_logic:contar[20]~2\);

-- Location: FF_X9_Y62_N9
\comb_logic:contar[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[20]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[20]~q\);

-- Location: LCCOMB_X9_Y62_N10
\comb_logic:contar[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[21]~1_combout\ = (\comb_logic:contar[21]~q\ & (!\comb_logic:contar[20]~2\)) # (!\comb_logic:contar[21]~q\ & ((\comb_logic:contar[20]~2\) # (GND)))
-- \comb_logic:contar[21]~2\ = CARRY((!\comb_logic:contar[20]~2\) # (!\comb_logic:contar[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[21]~q\,
	datad => VCC,
	cin => \comb_logic:contar[20]~2\,
	combout => \comb_logic:contar[21]~1_combout\,
	cout => \comb_logic:contar[21]~2\);

-- Location: FF_X8_Y62_N13
\comb_logic:contar[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[21]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[21]~q\);

-- Location: LCCOMB_X9_Y62_N12
\comb_logic:contar[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[22]~1_combout\ = (\comb_logic:contar[22]~q\ & (\comb_logic:contar[21]~2\ $ (GND))) # (!\comb_logic:contar[22]~q\ & (!\comb_logic:contar[21]~2\ & VCC))
-- \comb_logic:contar[22]~2\ = CARRY((\comb_logic:contar[22]~q\ & !\comb_logic:contar[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[22]~q\,
	datad => VCC,
	cin => \comb_logic:contar[21]~2\,
	combout => \comb_logic:contar[22]~1_combout\,
	cout => \comb_logic:contar[22]~2\);

-- Location: FF_X9_Y62_N13
\comb_logic:contar[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[22]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[22]~q\);

-- Location: LCCOMB_X9_Y62_N14
\comb_logic:contar[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[23]~1_combout\ = (\comb_logic:contar[23]~q\ & (!\comb_logic:contar[22]~2\)) # (!\comb_logic:contar[23]~q\ & ((\comb_logic:contar[22]~2\) # (GND)))
-- \comb_logic:contar[23]~2\ = CARRY((!\comb_logic:contar[22]~2\) # (!\comb_logic:contar[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[23]~q\,
	datad => VCC,
	cin => \comb_logic:contar[22]~2\,
	combout => \comb_logic:contar[23]~1_combout\,
	cout => \comb_logic:contar[23]~2\);

-- Location: FF_X9_Y62_N15
\comb_logic:contar[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[23]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[23]~q\);

-- Location: LCCOMB_X9_Y62_N16
\comb_logic:contar[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[24]~1_combout\ = (\comb_logic:contar[24]~q\ & (\comb_logic:contar[23]~2\ $ (GND))) # (!\comb_logic:contar[24]~q\ & (!\comb_logic:contar[23]~2\ & VCC))
-- \comb_logic:contar[24]~2\ = CARRY((\comb_logic:contar[24]~q\ & !\comb_logic:contar[23]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[24]~q\,
	datad => VCC,
	cin => \comb_logic:contar[23]~2\,
	combout => \comb_logic:contar[24]~1_combout\,
	cout => \comb_logic:contar[24]~2\);

-- Location: FF_X9_Y62_N17
\comb_logic:contar[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[24]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[24]~q\);

-- Location: LCCOMB_X9_Y62_N18
\comb_logic:contar[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[25]~1_combout\ = (\comb_logic:contar[25]~q\ & (!\comb_logic:contar[24]~2\)) # (!\comb_logic:contar[25]~q\ & ((\comb_logic:contar[24]~2\) # (GND)))
-- \comb_logic:contar[25]~2\ = CARRY((!\comb_logic:contar[24]~2\) # (!\comb_logic:contar[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[25]~q\,
	datad => VCC,
	cin => \comb_logic:contar[24]~2\,
	combout => \comb_logic:contar[25]~1_combout\,
	cout => \comb_logic:contar[25]~2\);

-- Location: FF_X9_Y62_N19
\comb_logic:contar[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[25]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[25]~q\);

-- Location: LCCOMB_X9_Y62_N20
\comb_logic:contar[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[26]~1_combout\ = (\comb_logic:contar[26]~q\ & (\comb_logic:contar[25]~2\ $ (GND))) # (!\comb_logic:contar[26]~q\ & (!\comb_logic:contar[25]~2\ & VCC))
-- \comb_logic:contar[26]~2\ = CARRY((\comb_logic:contar[26]~q\ & !\comb_logic:contar[25]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[26]~q\,
	datad => VCC,
	cin => \comb_logic:contar[25]~2\,
	combout => \comb_logic:contar[26]~1_combout\,
	cout => \comb_logic:contar[26]~2\);

-- Location: FF_X9_Y62_N21
\comb_logic:contar[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[26]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[26]~q\);

-- Location: LCCOMB_X9_Y62_N22
\comb_logic:contar[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[27]~1_combout\ = (\comb_logic:contar[27]~q\ & (!\comb_logic:contar[26]~2\)) # (!\comb_logic:contar[27]~q\ & ((\comb_logic:contar[26]~2\) # (GND)))
-- \comb_logic:contar[27]~2\ = CARRY((!\comb_logic:contar[26]~2\) # (!\comb_logic:contar[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[27]~q\,
	datad => VCC,
	cin => \comb_logic:contar[26]~2\,
	combout => \comb_logic:contar[27]~1_combout\,
	cout => \comb_logic:contar[27]~2\);

-- Location: FF_X9_Y62_N23
\comb_logic:contar[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[27]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[27]~q\);

-- Location: LCCOMB_X9_Y62_N24
\comb_logic:contar[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[28]~1_combout\ = (\comb_logic:contar[28]~q\ & (\comb_logic:contar[27]~2\ $ (GND))) # (!\comb_logic:contar[28]~q\ & (!\comb_logic:contar[27]~2\ & VCC))
-- \comb_logic:contar[28]~2\ = CARRY((\comb_logic:contar[28]~q\ & !\comb_logic:contar[27]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[28]~q\,
	datad => VCC,
	cin => \comb_logic:contar[27]~2\,
	combout => \comb_logic:contar[28]~1_combout\,
	cout => \comb_logic:contar[28]~2\);

-- Location: FF_X9_Y62_N25
\comb_logic:contar[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[28]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[28]~q\);

-- Location: LCCOMB_X9_Y62_N26
\comb_logic:contar[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[29]~1_combout\ = (\comb_logic:contar[29]~q\ & (!\comb_logic:contar[28]~2\)) # (!\comb_logic:contar[29]~q\ & ((\comb_logic:contar[28]~2\) # (GND)))
-- \comb_logic:contar[29]~2\ = CARRY((!\comb_logic:contar[28]~2\) # (!\comb_logic:contar[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[29]~q\,
	datad => VCC,
	cin => \comb_logic:contar[28]~2\,
	combout => \comb_logic:contar[29]~1_combout\,
	cout => \comb_logic:contar[29]~2\);

-- Location: FF_X9_Y62_N27
\comb_logic:contar[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[29]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[29]~q\);

-- Location: FF_X9_Y62_N29
\comb_logic:contar[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[30]~1_combout\,
	sclr => \comb_logic:contar[12]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[30]~q\);

-- Location: LCCOMB_X7_Y62_N26
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\comb_logic:contar[30]~q\ & (\Equal0~1_combout\ & (\Equal0~2_combout\ & \Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[30]~q\,
	datab => \Equal0~1_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X8_Y63_N30
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\comb_logic:contar[1]~q\ & (!\comb_logic:contar[14]~q\ & (!\comb_logic:contar[15]~q\ & !\comb_logic:contar[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[1]~q\,
	datab => \comb_logic:contar[14]~q\,
	datac => \comb_logic:contar[15]~q\,
	datad => \comb_logic:contar[2]~q\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X7_Y62_N18
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\comb_logic:contar[6]~q\) # ((\comb_logic:contar[3]~q\) # ((\comb_logic:contar[31]~q\) # (\comb_logic:contar[0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[6]~q\,
	datab => \comb_logic:contar[3]~q\,
	datac => \comb_logic:contar[31]~q\,
	datad => \comb_logic:contar[0]~q\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X7_Y62_N24
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\comb_logic:contar[8]~q\ & (!\comb_logic:contar[9]~q\ & (\Equal0~6_combout\ & !\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[8]~q\,
	datab => \comb_logic:contar[9]~q\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X7_Y62_N6
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~4_combout\ & (\Equal0~0_combout\ & (\Equal0~5_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~4_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~5_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X7_Y62_N20
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\estado.listo~q\ & (((\Equal1~1_combout\) # (!\comb_logic~0_combout\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \estado.listo~q\,
	datac => \comb_logic~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X8_Y62_N8
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\comb_logic:contar[31]~q\) # ((\LessThan1~2_combout\ & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[31]~q\,
	datab => \LessThan1~2_combout\,
	datad => \Equal0~10_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X8_Y61_N0
\j[0]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[0]~32_combout\ = j(0) $ (VCC)
-- \j[0]~33\ = CARRY(j(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => j(0),
	datad => VCC,
	combout => \j[0]~32_combout\,
	cout => \j[0]~33\);

-- Location: LCCOMB_X7_Y62_N28
\j[12]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[12]~34_combout\ = (!\Equal0~9_combout\) # (!\estado.listo~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.listo~q\,
	datad => \Equal0~9_combout\,
	combout => \j[12]~34_combout\);

-- Location: LCCOMB_X7_Y62_N10
\j[12]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[12]~35_combout\ = (\Selector35~0_combout\) # ((!\Equal1~1_combout\ & (\comb_logic~0_combout\ & !\j[12]~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \Selector35~0_combout\,
	datac => \comb_logic~0_combout\,
	datad => \j[12]~34_combout\,
	combout => \j[12]~35_combout\);

-- Location: FF_X8_Y61_N1
\j[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[0]~32_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(0));

-- Location: LCCOMB_X8_Y61_N2
\j[1]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[1]~36_combout\ = (j(1) & (!\j[0]~33\)) # (!j(1) & ((\j[0]~33\) # (GND)))
-- \j[1]~37\ = CARRY((!\j[0]~33\) # (!j(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(1),
	datad => VCC,
	cin => \j[0]~33\,
	combout => \j[1]~36_combout\,
	cout => \j[1]~37\);

-- Location: FF_X8_Y61_N3
\j[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[1]~36_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(1));

-- Location: LCCOMB_X8_Y61_N4
\j[2]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[2]~38_combout\ = (j(2) & (\j[1]~37\ $ (GND))) # (!j(2) & (!\j[1]~37\ & VCC))
-- \j[2]~39\ = CARRY((j(2) & !\j[1]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(2),
	datad => VCC,
	cin => \j[1]~37\,
	combout => \j[2]~38_combout\,
	cout => \j[2]~39\);

-- Location: FF_X8_Y61_N5
\j[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[2]~38_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(2));

-- Location: LCCOMB_X8_Y61_N6
\j[3]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[3]~40_combout\ = (j(3) & (!\j[2]~39\)) # (!j(3) & ((\j[2]~39\) # (GND)))
-- \j[3]~41\ = CARRY((!\j[2]~39\) # (!j(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(3),
	datad => VCC,
	cin => \j[2]~39\,
	combout => \j[3]~40_combout\,
	cout => \j[3]~41\);

-- Location: FF_X8_Y61_N7
\j[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[3]~40_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(3));

-- Location: LCCOMB_X7_Y61_N12
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (j(2) & (j(3) & (j(0) & j(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(2),
	datab => j(3),
	datac => j(0),
	datad => j(1),
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X8_Y61_N8
\j[4]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[4]~42_combout\ = (j(4) & (\j[3]~41\ $ (GND))) # (!j(4) & (!\j[3]~41\ & VCC))
-- \j[4]~43\ = CARRY((j(4) & !\j[3]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(4),
	datad => VCC,
	cin => \j[3]~41\,
	combout => \j[4]~42_combout\,
	cout => \j[4]~43\);

-- Location: FF_X8_Y61_N9
\j[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[4]~42_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(4));

-- Location: LCCOMB_X8_Y61_N10
\j[5]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[5]~44_combout\ = (j(5) & (!\j[4]~43\)) # (!j(5) & ((\j[4]~43\) # (GND)))
-- \j[5]~45\ = CARRY((!\j[4]~43\) # (!j(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(5),
	datad => VCC,
	cin => \j[4]~43\,
	combout => \j[5]~44_combout\,
	cout => \j[5]~45\);

-- Location: FF_X8_Y61_N11
\j[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[5]~44_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(5));

-- Location: LCCOMB_X8_Y61_N12
\j[6]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[6]~46_combout\ = (j(6) & (\j[5]~45\ $ (GND))) # (!j(6) & (!\j[5]~45\ & VCC))
-- \j[6]~47\ = CARRY((j(6) & !\j[5]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(6),
	datad => VCC,
	cin => \j[5]~45\,
	combout => \j[6]~46_combout\,
	cout => \j[6]~47\);

-- Location: FF_X8_Y61_N13
\j[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[6]~46_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(6));

-- Location: LCCOMB_X8_Y61_N14
\j[7]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[7]~48_combout\ = (j(7) & (!\j[6]~47\)) # (!j(7) & ((\j[6]~47\) # (GND)))
-- \j[7]~49\ = CARRY((!\j[6]~47\) # (!j(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(7),
	datad => VCC,
	cin => \j[6]~47\,
	combout => \j[7]~48_combout\,
	cout => \j[7]~49\);

-- Location: FF_X8_Y61_N15
\j[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[7]~48_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(7));

-- Location: LCCOMB_X7_Y61_N18
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!j(7) & (!j(6) & (!j(4) & !j(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(7),
	datab => j(6),
	datac => j(4),
	datad => j(5),
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X8_Y61_N16
\j[8]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[8]~50_combout\ = (j(8) & (\j[7]~49\ $ (GND))) # (!j(8) & (!\j[7]~49\ & VCC))
-- \j[8]~51\ = CARRY((j(8) & !\j[7]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(8),
	datad => VCC,
	cin => \j[7]~49\,
	combout => \j[8]~50_combout\,
	cout => \j[8]~51\);

-- Location: FF_X8_Y61_N17
\j[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[8]~50_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(8));

-- Location: LCCOMB_X8_Y61_N18
\j[9]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[9]~52_combout\ = (j(9) & (!\j[8]~51\)) # (!j(9) & ((\j[8]~51\) # (GND)))
-- \j[9]~53\ = CARRY((!\j[8]~51\) # (!j(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(9),
	datad => VCC,
	cin => \j[8]~51\,
	combout => \j[9]~52_combout\,
	cout => \j[9]~53\);

-- Location: FF_X8_Y61_N19
\j[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[9]~52_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(9));

-- Location: LCCOMB_X8_Y61_N20
\j[10]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[10]~54_combout\ = (j(10) & (\j[9]~53\ $ (GND))) # (!j(10) & (!\j[9]~53\ & VCC))
-- \j[10]~55\ = CARRY((j(10) & !\j[9]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(10),
	datad => VCC,
	cin => \j[9]~53\,
	combout => \j[10]~54_combout\,
	cout => \j[10]~55\);

-- Location: FF_X8_Y61_N21
\j[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[10]~54_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(10));

-- Location: LCCOMB_X8_Y61_N22
\j[11]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[11]~56_combout\ = (j(11) & (!\j[10]~55\)) # (!j(11) & ((\j[10]~55\) # (GND)))
-- \j[11]~57\ = CARRY((!\j[10]~55\) # (!j(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(11),
	datad => VCC,
	cin => \j[10]~55\,
	combout => \j[11]~56_combout\,
	cout => \j[11]~57\);

-- Location: FF_X8_Y61_N23
\j[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[11]~56_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(11));

-- Location: LCCOMB_X8_Y61_N24
\j[12]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[12]~58_combout\ = (j(12) & (\j[11]~57\ $ (GND))) # (!j(12) & (!\j[11]~57\ & VCC))
-- \j[12]~59\ = CARRY((j(12) & !\j[11]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(12),
	datad => VCC,
	cin => \j[11]~57\,
	combout => \j[12]~58_combout\,
	cout => \j[12]~59\);

-- Location: FF_X8_Y61_N25
\j[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[12]~58_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(12));

-- Location: LCCOMB_X8_Y61_N26
\j[13]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[13]~60_combout\ = (j(13) & (!\j[12]~59\)) # (!j(13) & ((\j[12]~59\) # (GND)))
-- \j[13]~61\ = CARRY((!\j[12]~59\) # (!j(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(13),
	datad => VCC,
	cin => \j[12]~59\,
	combout => \j[13]~60_combout\,
	cout => \j[13]~61\);

-- Location: FF_X8_Y61_N27
\j[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[13]~60_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(13));

-- Location: LCCOMB_X8_Y61_N28
\j[14]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[14]~62_combout\ = (j(14) & (\j[13]~61\ $ (GND))) # (!j(14) & (!\j[13]~61\ & VCC))
-- \j[14]~63\ = CARRY((j(14) & !\j[13]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(14),
	datad => VCC,
	cin => \j[13]~61\,
	combout => \j[14]~62_combout\,
	cout => \j[14]~63\);

-- Location: FF_X8_Y61_N29
\j[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[14]~62_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(14));

-- Location: LCCOMB_X8_Y61_N30
\j[15]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[15]~64_combout\ = (j(15) & (!\j[14]~63\)) # (!j(15) & ((\j[14]~63\) # (GND)))
-- \j[15]~65\ = CARRY((!\j[14]~63\) # (!j(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(15),
	datad => VCC,
	cin => \j[14]~63\,
	combout => \j[15]~64_combout\,
	cout => \j[15]~65\);

-- Location: FF_X8_Y61_N31
\j[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[15]~64_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(15));

-- Location: LCCOMB_X7_Y61_N30
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!j(15) & (!j(14) & (!j(13) & !j(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(15),
	datab => j(14),
	datac => j(13),
	datad => j(12),
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X7_Y61_N28
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!j(11) & (!j(9) & (!j(10) & !j(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(11),
	datab => j(9),
	datac => j(10),
	datad => j(8),
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X7_Y61_N0
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~0_combout\ & (\Equal2~1_combout\ & (\Equal2~3_combout\ & \Equal2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~0_combout\,
	datab => \Equal2~1_combout\,
	datac => \Equal2~3_combout\,
	datad => \Equal2~2_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X8_Y60_N0
\j[16]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[16]~66_combout\ = (j(16) & (\j[15]~65\ $ (GND))) # (!j(16) & (!\j[15]~65\ & VCC))
-- \j[16]~67\ = CARRY((j(16) & !\j[15]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(16),
	datad => VCC,
	cin => \j[15]~65\,
	combout => \j[16]~66_combout\,
	cout => \j[16]~67\);

-- Location: FF_X8_Y60_N1
\j[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[16]~66_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(16));

-- Location: LCCOMB_X8_Y60_N2
\j[17]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[17]~68_combout\ = (j(17) & (!\j[16]~67\)) # (!j(17) & ((\j[16]~67\) # (GND)))
-- \j[17]~69\ = CARRY((!\j[16]~67\) # (!j(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(17),
	datad => VCC,
	cin => \j[16]~67\,
	combout => \j[17]~68_combout\,
	cout => \j[17]~69\);

-- Location: FF_X8_Y60_N3
\j[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[17]~68_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(17));

-- Location: LCCOMB_X8_Y60_N4
\j[18]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[18]~70_combout\ = (j(18) & (\j[17]~69\ $ (GND))) # (!j(18) & (!\j[17]~69\ & VCC))
-- \j[18]~71\ = CARRY((j(18) & !\j[17]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(18),
	datad => VCC,
	cin => \j[17]~69\,
	combout => \j[18]~70_combout\,
	cout => \j[18]~71\);

-- Location: FF_X8_Y60_N5
\j[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[18]~70_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(18));

-- Location: LCCOMB_X8_Y60_N6
\j[19]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[19]~72_combout\ = (j(19) & (!\j[18]~71\)) # (!j(19) & ((\j[18]~71\) # (GND)))
-- \j[19]~73\ = CARRY((!\j[18]~71\) # (!j(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(19),
	datad => VCC,
	cin => \j[18]~71\,
	combout => \j[19]~72_combout\,
	cout => \j[19]~73\);

-- Location: FF_X8_Y60_N7
\j[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[19]~72_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(19));

-- Location: LCCOMB_X8_Y60_N8
\j[20]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[20]~74_combout\ = (j(20) & (\j[19]~73\ $ (GND))) # (!j(20) & (!\j[19]~73\ & VCC))
-- \j[20]~75\ = CARRY((j(20) & !\j[19]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(20),
	datad => VCC,
	cin => \j[19]~73\,
	combout => \j[20]~74_combout\,
	cout => \j[20]~75\);

-- Location: FF_X8_Y60_N9
\j[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[20]~74_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(20));

-- Location: LCCOMB_X8_Y60_N10
\j[21]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[21]~76_combout\ = (j(21) & (!\j[20]~75\)) # (!j(21) & ((\j[20]~75\) # (GND)))
-- \j[21]~77\ = CARRY((!\j[20]~75\) # (!j(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(21),
	datad => VCC,
	cin => \j[20]~75\,
	combout => \j[21]~76_combout\,
	cout => \j[21]~77\);

-- Location: FF_X8_Y60_N11
\j[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[21]~76_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(21));

-- Location: LCCOMB_X8_Y60_N12
\j[22]~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[22]~78_combout\ = (j(22) & (\j[21]~77\ $ (GND))) # (!j(22) & (!\j[21]~77\ & VCC))
-- \j[22]~79\ = CARRY((j(22) & !\j[21]~77\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(22),
	datad => VCC,
	cin => \j[21]~77\,
	combout => \j[22]~78_combout\,
	cout => \j[22]~79\);

-- Location: FF_X8_Y60_N13
\j[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[22]~78_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(22));

-- Location: LCCOMB_X8_Y60_N14
\j[23]~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[23]~80_combout\ = (j(23) & (!\j[22]~79\)) # (!j(23) & ((\j[22]~79\) # (GND)))
-- \j[23]~81\ = CARRY((!\j[22]~79\) # (!j(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(23),
	datad => VCC,
	cin => \j[22]~79\,
	combout => \j[23]~80_combout\,
	cout => \j[23]~81\);

-- Location: FF_X8_Y60_N15
\j[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[23]~80_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(23));

-- Location: LCCOMB_X8_Y60_N16
\j[24]~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[24]~82_combout\ = (j(24) & (\j[23]~81\ $ (GND))) # (!j(24) & (!\j[23]~81\ & VCC))
-- \j[24]~83\ = CARRY((j(24) & !\j[23]~81\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(24),
	datad => VCC,
	cin => \j[23]~81\,
	combout => \j[24]~82_combout\,
	cout => \j[24]~83\);

-- Location: FF_X8_Y60_N17
\j[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[24]~82_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(24));

-- Location: LCCOMB_X8_Y60_N18
\j[25]~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[25]~84_combout\ = (j(25) & (!\j[24]~83\)) # (!j(25) & ((\j[24]~83\) # (GND)))
-- \j[25]~85\ = CARRY((!\j[24]~83\) # (!j(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(25),
	datad => VCC,
	cin => \j[24]~83\,
	combout => \j[25]~84_combout\,
	cout => \j[25]~85\);

-- Location: FF_X8_Y60_N19
\j[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[25]~84_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(25));

-- Location: LCCOMB_X8_Y60_N20
\j[26]~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[26]~86_combout\ = (j(26) & (\j[25]~85\ $ (GND))) # (!j(26) & (!\j[25]~85\ & VCC))
-- \j[26]~87\ = CARRY((j(26) & !\j[25]~85\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(26),
	datad => VCC,
	cin => \j[25]~85\,
	combout => \j[26]~86_combout\,
	cout => \j[26]~87\);

-- Location: FF_X8_Y60_N21
\j[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[26]~86_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(26));

-- Location: LCCOMB_X8_Y60_N22
\j[27]~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[27]~88_combout\ = (j(27) & (!\j[26]~87\)) # (!j(27) & ((\j[26]~87\) # (GND)))
-- \j[27]~89\ = CARRY((!\j[26]~87\) # (!j(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(27),
	datad => VCC,
	cin => \j[26]~87\,
	combout => \j[27]~88_combout\,
	cout => \j[27]~89\);

-- Location: FF_X8_Y60_N23
\j[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[27]~88_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(27));

-- Location: LCCOMB_X8_Y60_N24
\j[28]~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[28]~90_combout\ = (j(28) & (\j[27]~89\ $ (GND))) # (!j(28) & (!\j[27]~89\ & VCC))
-- \j[28]~91\ = CARRY((j(28) & !\j[27]~89\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(28),
	datad => VCC,
	cin => \j[27]~89\,
	combout => \j[28]~90_combout\,
	cout => \j[28]~91\);

-- Location: FF_X8_Y60_N25
\j[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[28]~90_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(28));

-- Location: LCCOMB_X8_Y60_N26
\j[29]~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[29]~92_combout\ = (j(29) & (!\j[28]~91\)) # (!j(29) & ((\j[28]~91\) # (GND)))
-- \j[29]~93\ = CARRY((!\j[28]~91\) # (!j(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(29),
	datad => VCC,
	cin => \j[28]~91\,
	combout => \j[29]~92_combout\,
	cout => \j[29]~93\);

-- Location: FF_X8_Y60_N27
\j[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[29]~92_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(29));

-- Location: LCCOMB_X8_Y60_N28
\j[30]~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[30]~94_combout\ = (j(30) & (\j[29]~93\ $ (GND))) # (!j(30) & (!\j[29]~93\ & VCC))
-- \j[30]~95\ = CARRY((j(30) & !\j[29]~93\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => j(30),
	datad => VCC,
	cin => \j[29]~93\,
	combout => \j[30]~94_combout\,
	cout => \j[30]~95\);

-- Location: FF_X8_Y60_N29
\j[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[30]~94_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(30));

-- Location: LCCOMB_X8_Y60_N30
\j[31]~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \j[31]~96_combout\ = j(31) $ (\j[30]~95\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => j(31),
	cin => \j[30]~95\,
	combout => \j[31]~96_combout\);

-- Location: FF_X8_Y60_N31
\j[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \j[31]~96_combout\,
	sclr => \estado.fin~q\,
	ena => \j[12]~35_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => j(31));

-- Location: LCCOMB_X9_Y60_N10
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!j(29) & (!j(30) & (!j(31) & !j(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(29),
	datab => j(30),
	datac => j(31),
	datad => j(28),
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X9_Y60_N18
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!j(21) & (!j(23) & (!j(22) & !j(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(21),
	datab => j(23),
	datac => j(22),
	datad => j(20),
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X9_Y60_N4
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (!j(24) & (!j(26) & (!j(27) & !j(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(24),
	datab => j(26),
	datac => j(27),
	datad => j(25),
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X9_Y60_N12
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!j(16) & (!j(18) & (!j(19) & !j(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => j(16),
	datab => j(18),
	datac => j(19),
	datad => j(17),
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X9_Y60_N28
\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (\Equal2~8_combout\ & (\Equal2~6_combout\ & (\Equal2~7_combout\ & \Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~8_combout\,
	datab => \Equal2~6_combout\,
	datac => \Equal2~7_combout\,
	datad => \Equal2~5_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X7_Y64_N10
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\Equal3~9_combout\) # ((\Equal2~4_combout\ & \Equal2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~4_combout\,
	datac => \Equal3~9_combout\,
	datad => \Equal2~9_combout\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X7_Y64_N26
\Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\Selector37~3_combout\ & ((\Selector38~0_combout\) # ((\Selector43~0_combout\ & !\LessThan1~3_combout\)))) # (!\Selector37~3_combout\ & (\Selector43~0_combout\ & (!\LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector37~3_combout\,
	datab => \Selector43~0_combout\,
	datac => \LessThan1~3_combout\,
	datad => \Selector38~0_combout\,
	combout => \Selector38~1_combout\);

-- Location: FF_X7_Y64_N27
\estado.fin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector38~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.fin~q\);

-- Location: LCCOMB_X7_Y64_N0
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (\estado.fin~q\ & \reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.fin~q\,
	datad => \reset~input_o\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X7_Y60_N20
\estado~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado~18_combout\ = (!\comb_logic:contar[31]~q\ & (!\Equal0~9_combout\ & ((!\LessThan1~2_combout\) # (!\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[31]~q\,
	datab => \Equal0~10_combout\,
	datac => \Equal0~9_combout\,
	datad => \LessThan1~2_combout\,
	combout => \estado~18_combout\);

-- Location: LCCOMB_X8_Y62_N22
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (\comb_logic:contar[31]~q\) # ((\LessThan0~5_combout\ & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \Equal0~10_combout\,
	datad => \comb_logic:contar[31]~q\,
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X7_Y60_N2
\Selector33~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector33~0_combout\ = (\estado.encender~q\ & (!\estado~18_combout\ & (\estado.configpantalla~q\))) # (!\estado.encender~q\ & (((!\estado~18_combout\ & \estado.configpantalla~q\)) # (!\LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \estado~18_combout\,
	datac => \estado.configpantalla~q\,
	datad => \LessThan0~6_combout\,
	combout => \Selector33~0_combout\);

-- Location: FF_X7_Y60_N3
\estado.configpantalla\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector33~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.configpantalla~q\);

-- Location: FF_X7_Y60_N17
\estado.encenderdisplay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado.configpantalla~q\,
	sload => VCC,
	ena => \estado~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.encenderdisplay~q\);

-- Location: LCCOMB_X7_Y60_N22
\Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~1_combout\ = (\Selector35~0_combout\) # ((\estado~18_combout\ & (\estado.encenderdisplay~q\)) # (!\estado~18_combout\ & ((\estado.limpiardisplay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~0_combout\,
	datab => \estado.encenderdisplay~q\,
	datac => \estado.limpiardisplay~q\,
	datad => \estado~18_combout\,
	combout => \Selector35~1_combout\);

-- Location: FF_X7_Y60_N23
\estado.limpiardisplay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector35~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.limpiardisplay~q\);

-- Location: FF_X7_Y60_N5
\estado.configcursor\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado.limpiardisplay~q\,
	sload => VCC,
	ena => \estado~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.configcursor~q\);

-- Location: LCCOMB_X7_Y62_N2
\Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\LessThan1~3_combout\ & (((\estado.listo~q\)))) # (!\LessThan1~3_combout\ & (\estado.configcursor~q\ & ((!\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.configcursor~q\,
	datab => \estado.listo~q\,
	datac => \LessThan1~3_combout\,
	datad => \Equal0~9_combout\,
	combout => \Selector37~2_combout\);

-- Location: LCCOMB_X6_Y62_N2
\Selector37~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~5_combout\ = (!\reset~input_o\ & (\estado.fin~q\ & ((!\Equal2~4_combout\) # (!\Equal2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \estado.fin~q\,
	datac => \Equal2~9_combout\,
	datad => \Equal2~4_combout\,
	combout => \Selector37~5_combout\);

-- Location: LCCOMB_X7_Y62_N16
\Selector37~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~4_combout\ = (\Selector40~0_combout\) # ((\Selector37~2_combout\) # ((!\Equal3~9_combout\ & \Selector37~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~0_combout\,
	datab => \Selector37~2_combout\,
	datac => \Equal3~9_combout\,
	datad => \Selector37~5_combout\,
	combout => \Selector37~4_combout\);

-- Location: FF_X7_Y62_N17
\estado.listo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector37~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.listo~q\);

-- Location: LCCOMB_X7_Y62_N22
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (!\Equal1~1_combout\ & (\estado.listo~q\ & (\comb_logic~0_combout\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~1_combout\,
	datab => \estado.listo~q\,
	datac => \comb_logic~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X6_Y62_N10
\lcd~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd~2_combout\ = (!\estado.fin~q\ & \estado.encender~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.fin~q\,
	datad => \estado.encender~q\,
	combout => \lcd~2_combout\);

-- Location: LCCOMB_X7_Y60_N12
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\estado.limpiardisplay~q\ & (!\lcd[0]~reg0_q\)) # (!\estado.limpiardisplay~q\ & ((\lcd[0]~reg0_q\ & (\lcd~2_combout\ & !\estado.encenderdisplay~q\)) # (!\lcd[0]~reg0_q\ & ((\estado.encenderdisplay~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.limpiardisplay~q\,
	datab => \lcd[0]~reg0_q\,
	datac => \lcd~2_combout\,
	datad => \estado.encenderdisplay~q\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X7_Y60_N6
\Selector50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (\lcd[0]~reg0_q\ & (!\Equal0~9_combout\ & ((\estado.configpantalla~q\) # (\estado.configcursor~q\)))) # (!\lcd[0]~reg0_q\ & (((\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[0]~reg0_q\,
	datab => \estado.configpantalla~q\,
	datac => \estado.configcursor~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector50~1_combout\);

-- Location: LCCOMB_X7_Y60_N24
\Selector50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~2_combout\ = (\Selector50~0_combout\ & ((\Selector50~1_combout\) # ((\lcd[0]~reg0_q\ & \Selector43~0_combout\)))) # (!\Selector50~0_combout\ & (\lcd[0]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => \lcd[0]~reg0_q\,
	datac => \Selector43~0_combout\,
	datad => \Selector50~1_combout\,
	combout => \Selector50~2_combout\);

-- Location: LCCOMB_X7_Y60_N8
\Selector50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~3_combout\ = (\Selector50~2_combout\) # ((char(0) & \Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datac => \Selector40~0_combout\,
	datad => \Selector50~2_combout\,
	combout => \Selector50~3_combout\);

-- Location: FF_X7_Y60_N9
\lcd[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector50~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[0]~reg0_q\);

-- Location: LCCOMB_X7_Y60_N4
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\estado.limpiardisplay~q\) # ((\estado.configcursor~q\) # (\estado.configpantalla~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.limpiardisplay~q\,
	datac => \estado.configcursor~q\,
	datad => \estado.configpantalla~q\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X6_Y62_N16
\Selector49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~1_combout\ = (\lcd[1]~reg0_q\ & (\lcd~2_combout\ & ((\Equal0~9_combout\) # (!\Selector49~0_combout\)))) # (!\lcd[1]~reg0_q\ & (((\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd~2_combout\,
	datab => \lcd[1]~reg0_q\,
	datac => \Selector49~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \Selector49~1_combout\);

-- Location: LCCOMB_X6_Y62_N30
\Selector49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~2_combout\ = (\Selector49~1_combout\ & ((\estado.encenderdisplay~q\) # ((\lcd[1]~reg0_q\ & \Selector43~0_combout\)))) # (!\Selector49~1_combout\ & (((\lcd[1]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encenderdisplay~q\,
	datab => \lcd[1]~reg0_q\,
	datac => \Selector43~0_combout\,
	datad => \Selector49~1_combout\,
	combout => \Selector49~2_combout\);

-- Location: LCCOMB_X6_Y62_N4
\Selector49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~3_combout\ = (\Selector49~2_combout\) # ((char(1) & \Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(1),
	datac => \Selector49~2_combout\,
	datad => \Selector40~0_combout\,
	combout => \Selector49~3_combout\);

-- Location: FF_X6_Y62_N5
\lcd[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector49~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[1]~reg0_q\);

-- Location: LCCOMB_X7_Y62_N30
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (char(2) & ((\Selector40~0_combout\) # ((\lcd[2]~reg0_q\ & \Selector43~0_combout\)))) # (!char(2) & (\lcd[2]~reg0_q\ & ((\Selector43~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datab => \lcd[2]~reg0_q\,
	datac => \Selector40~0_combout\,
	datad => \Selector43~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X7_Y60_N16
\Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (!\estado.configcursor~q\ & !\estado.encenderdisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.configcursor~q\,
	datac => \estado.encenderdisplay~q\,
	combout => \Selector48~1_combout\);

-- Location: LCCOMB_X7_Y60_N30
\lcd[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd[4]~3_combout\ = (!\estado.limpiardisplay~q\ & !\estado.configpantalla~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.limpiardisplay~q\,
	datad => \estado.configpantalla~q\,
	combout => \lcd[4]~3_combout\);

-- Location: LCCOMB_X7_Y62_N4
\Selector48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~2_combout\ = (\Equal0~9_combout\ & (!\Selector48~1_combout\)) # (!\Equal0~9_combout\ & (\lcd[2]~reg0_q\ & ((!\lcd[4]~3_combout\) # (!\Selector48~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~1_combout\,
	datab => \lcd[4]~3_combout\,
	datac => \lcd[2]~reg0_q\,
	datad => \Equal0~9_combout\,
	combout => \Selector48~2_combout\);

-- Location: LCCOMB_X7_Y62_N14
\Selector48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~3_combout\ = (\Selector48~0_combout\) # ((\Selector48~2_combout\) # ((\lcd[2]~reg0_q\ & !\lcd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~0_combout\,
	datab => \Selector48~2_combout\,
	datac => \lcd[2]~reg0_q\,
	datad => \lcd~2_combout\,
	combout => \Selector48~3_combout\);

-- Location: FF_X7_Y62_N15
\lcd[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector48~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[2]~reg0_q\);

-- Location: LCCOMB_X7_Y60_N28
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\lcd[3]~reg0_q\ & (!\estado.encenderdisplay~q\ & (\lcd~2_combout\ & !\estado.configpantalla~q\))) # (!\lcd[3]~reg0_q\ & ((\estado.encenderdisplay~q\) # ((\estado.configpantalla~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[3]~reg0_q\,
	datab => \estado.encenderdisplay~q\,
	datac => \lcd~2_combout\,
	datad => \estado.configpantalla~q\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X7_Y60_N10
\Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\lcd[3]~reg0_q\ & (!\Equal0~9_combout\ & ((\estado.configcursor~q\) # (\estado.limpiardisplay~q\)))) # (!\lcd[3]~reg0_q\ & (((\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[3]~reg0_q\,
	datab => \estado.configcursor~q\,
	datac => \estado.limpiardisplay~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector47~1_combout\);

-- Location: LCCOMB_X7_Y60_N0
\Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~2_combout\ = (\Selector47~0_combout\ & ((\Selector47~1_combout\) # ((\lcd[3]~reg0_q\ & \Selector43~0_combout\)))) # (!\Selector47~0_combout\ & (\lcd[3]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[3]~reg0_q\,
	datab => \Selector47~0_combout\,
	datac => \Selector43~0_combout\,
	datad => \Selector47~1_combout\,
	combout => \Selector47~2_combout\);

-- Location: LCCOMB_X7_Y60_N26
\Selector47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~3_combout\ = (\Selector47~2_combout\) # ((char(3) & \Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char(3),
	datac => \Selector40~0_combout\,
	datad => \Selector47~2_combout\,
	combout => \Selector47~3_combout\);

-- Location: FF_X7_Y60_N27
\lcd[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector47~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[3]~reg0_q\);

-- Location: LCCOMB_X6_Y62_N26
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (\estado.listo~q\ & (char(4))) # (!\estado.listo~q\ & ((\estado.configpantalla~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(4),
	datab => \estado.listo~q\,
	datac => \estado.configpantalla~q\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X7_Y60_N18
\lcd[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd[4]~4_combout\ = (\estado.limpiardisplay~q\) # ((\estado.encenderdisplay~q\) # ((\estado.configcursor~q\) # (\estado.configpantalla~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.limpiardisplay~q\,
	datab => \estado.encenderdisplay~q\,
	datac => \estado.configcursor~q\,
	datad => \estado.configpantalla~q\,
	combout => \lcd[4]~4_combout\);

-- Location: LCCOMB_X6_Y62_N28
\lcd[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd[4]~7_combout\ = ((!\Equal0~9_combout\ & ((\estado.listo~q\) # (\lcd[4]~4_combout\)))) # (!\lcd~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd~2_combout\,
	datab => \estado.listo~q\,
	datac => \lcd[4]~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \lcd[4]~7_combout\);

-- Location: LCCOMB_X6_Y62_N14
\lcd[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd[4]~6_combout\ = (!\lcd[4]~7_combout\ & (((\comb_logic~0_combout\ & !\Equal1~1_combout\)) # (!\estado.listo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic~0_combout\,
	datab => \estado.listo~q\,
	datac => \Equal1~1_combout\,
	datad => \lcd[4]~7_combout\,
	combout => \lcd[4]~6_combout\);

-- Location: FF_X6_Y62_N27
\lcd[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector46~0_combout\,
	ena => \lcd[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[4]~reg0_q\);

-- Location: LCCOMB_X6_Y62_N12
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\estado.listo~q\ & (char(5))) # (!\estado.listo~q\ & ((\estado.configpantalla~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(5),
	datab => \estado.configpantalla~q\,
	datad => \estado.listo~q\,
	combout => \Selector45~0_combout\);

-- Location: FF_X6_Y62_N13
\lcd[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector45~0_combout\,
	ena => \lcd[4]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[5]~reg0_q\);

-- Location: LCCOMB_X6_Y62_N24
\lcd[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd[4]~5_combout\ = (\lcd[4]~4_combout\ & !\Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \lcd[4]~4_combout\,
	datad => \Equal0~9_combout\,
	combout => \lcd[4]~5_combout\);

-- Location: LCCOMB_X6_Y62_N8
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\lcd[6]~reg0_q\ & (((\Selector43~0_combout\) # (\lcd[4]~5_combout\)) # (!\lcd~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd~2_combout\,
	datab => \lcd[6]~reg0_q\,
	datac => \Selector43~0_combout\,
	datad => \lcd[4]~5_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X6_Y62_N22
\Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\Selector44~0_combout\) # ((char(6) & \Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(6),
	datac => \Selector44~0_combout\,
	datad => \Selector40~0_combout\,
	combout => \Selector44~1_combout\);

-- Location: FF_X6_Y62_N23
\lcd[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector44~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[6]~reg0_q\);

-- Location: LCCOMB_X6_Y62_N0
\Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~1_combout\ = (\lcd[7]~reg0_q\ & ((\Selector43~0_combout\) # ((\lcd[4]~5_combout\) # (!\lcd~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector43~0_combout\,
	datab => \lcd[4]~5_combout\,
	datac => \lcd[7]~reg0_q\,
	datad => \lcd~2_combout\,
	combout => \Selector43~1_combout\);

-- Location: FF_X6_Y62_N1
\lcd[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector43~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[7]~reg0_q\);

-- Location: LCCOMB_X10_Y62_N18
\Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (\estado.fin~q\) # ((\LessThan1~3_combout\ & ((\estado.listo~q\) # (\lcd[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.listo~q\,
	datab => \lcd[4]~4_combout\,
	datac => \estado.fin~q\,
	datad => \LessThan1~3_combout\,
	combout => \Selector40~1_combout\);

-- Location: LCCOMB_X10_Y62_N28
\Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = (\enviar~reg0_q\ & ((\Selector40~1_combout\) # ((!\estado.encender~q\ & \LessThan0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \enviar~reg0_q\,
	datac => \LessThan0~6_combout\,
	datad => \Selector40~1_combout\,
	combout => \Selector40~2_combout\);

-- Location: LCCOMB_X10_Y62_N4
\Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = (\Selector40~0_combout\) # ((\Selector40~2_combout\) # ((\Equal0~9_combout\ & \lcd[4]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \lcd[4]~4_combout\,
	datac => \Selector40~0_combout\,
	datad => \Selector40~2_combout\,
	combout => \Selector40~3_combout\);

-- Location: FF_X10_Y62_N5
\enviar~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector40~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enviar~reg0_q\);

-- Location: LCCOMB_X6_Y62_N6
\rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rs~0_combout\ = (\lcd~2_combout\ & (\Selector48~1_combout\ & ((\lcd[4]~3_combout\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd~2_combout\,
	datab => \Selector48~1_combout\,
	datac => \lcd[4]~3_combout\,
	datad => \Equal0~9_combout\,
	combout => \rs~0_combout\);

-- Location: LCCOMB_X6_Y62_N18
\rs~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rs~1_combout\ = (\rs~0_combout\ & ((\Selector40~0_combout\) # ((\estado.listo~q\ & \rs~reg0_q\)))) # (!\rs~0_combout\ & (((\rs~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rs~0_combout\,
	datab => \estado.listo~q\,
	datac => \rs~reg0_q\,
	datad => \Selector40~0_combout\,
	combout => \rs~1_combout\);

-- Location: FF_X6_Y62_N19
\rs~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs~reg0_q\);

ww_key(0) <= \key[0]~output_o\;

ww_key(1) <= \key[1]~output_o\;

ww_key(2) <= \key[2]~output_o\;

ww_key(3) <= \key[3]~output_o\;

ww_key(4) <= \key[4]~output_o\;

ww_key(5) <= \key[5]~output_o\;

ww_key(6) <= \key[6]~output_o\;

ww_key(7) <= \key[7]~output_o\;

ww_key(8) <= \key[8]~output_o\;

ww_key(9) <= \key[9]~output_o\;

ww_key(10) <= \key[10]~output_o\;

ww_disp1(0) <= \disp1[0]~output_o\;

ww_disp1(1) <= \disp1[1]~output_o\;

ww_disp1(2) <= \disp1[2]~output_o\;

ww_disp1(3) <= \disp1[3]~output_o\;

ww_disp1(4) <= \disp1[4]~output_o\;

ww_disp1(5) <= \disp1[5]~output_o\;

ww_disp1(6) <= \disp1[6]~output_o\;

ww_disp2(0) <= \disp2[0]~output_o\;

ww_disp2(1) <= \disp2[1]~output_o\;

ww_disp2(2) <= \disp2[2]~output_o\;

ww_disp2(3) <= \disp2[3]~output_o\;

ww_disp2(4) <= \disp2[4]~output_o\;

ww_disp2(5) <= \disp2[5]~output_o\;

ww_disp2(6) <= \disp2[6]~output_o\;

ww_lcd(0) <= \lcd[0]~output_o\;

ww_lcd(1) <= \lcd[1]~output_o\;

ww_lcd(2) <= \lcd[2]~output_o\;

ww_lcd(3) <= \lcd[3]~output_o\;

ww_lcd(4) <= \lcd[4]~output_o\;

ww_lcd(5) <= \lcd[5]~output_o\;

ww_lcd(6) <= \lcd[6]~output_o\;

ww_lcd(7) <= \lcd[7]~output_o\;

ww_enviar <= \enviar~output_o\;

ww_rs <= \rs~output_o\;

ww_rw <= \rw~output_o\;
END structure;


