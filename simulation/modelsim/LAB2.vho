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

-- DATE "09/07/2018 11:18:56"

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
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
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
SIGNAL \Equal4~2_combout\ : std_logic;
SIGNAL \Equal4~3_combout\ : std_logic;
SIGNAL \Equal4~5_combout\ : std_logic;
SIGNAL \Equal4~6_combout\ : std_logic;
SIGNAL \Equal4~7_combout\ : std_logic;
SIGNAL \Equal4~4_combout\ : std_logic;
SIGNAL \Equal4~8_combout\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal4~1_combout\ : std_logic;
SIGNAL \Equal4~9_combout\ : std_logic;
SIGNAL \i~0_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \i~2_combout\ : std_logic;
SIGNAL \ps2_data~input_o\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \code[0]~0_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \code[4]~3_combout\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \code[7]~2_combout\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \code[1]~4_combout\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \code[8]~1_combout\ : std_logic;
SIGNAL \Equal5~0_combout\ : std_logic;
SIGNAL \code[2]~8_combout\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \code[3]~7_combout\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \code[5]~6_combout\ : std_logic;
SIGNAL \code[6]~5_combout\ : std_logic;
SIGNAL \Equal5~1_combout\ : std_logic;
SIGNAL \letDif~0_combout\ : std_logic;
SIGNAL \letDif~q\ : std_logic;
SIGNAL \key[0]~0_combout\ : std_logic;
SIGNAL \key[0]~reg0_q\ : std_logic;
SIGNAL \key[1]~reg0feeder_combout\ : std_logic;
SIGNAL \key[1]~reg0_q\ : std_logic;
SIGNAL \key[2]~reg0feeder_combout\ : std_logic;
SIGNAL \key[2]~reg0_q\ : std_logic;
SIGNAL \key[3]~reg0feeder_combout\ : std_logic;
SIGNAL \key[3]~reg0_q\ : std_logic;
SIGNAL \key[4]~reg0feeder_combout\ : std_logic;
SIGNAL \key[4]~reg0_q\ : std_logic;
SIGNAL \key[5]~reg0feeder_combout\ : std_logic;
SIGNAL \key[5]~reg0_q\ : std_logic;
SIGNAL \key[6]~reg0feeder_combout\ : std_logic;
SIGNAL \key[6]~reg0_q\ : std_logic;
SIGNAL \key[7]~reg0feeder_combout\ : std_logic;
SIGNAL \key[7]~reg0_q\ : std_logic;
SIGNAL \key[8]~reg0feeder_combout\ : std_logic;
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
SIGNAL \comb_logic:num[0]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[0]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[15]~2\ : std_logic;
SIGNAL \comb_logic:contar[16]~1_combout\ : std_logic;
SIGNAL \Selector38~0_combout\ : std_logic;
SIGNAL \comb_logic:num[3]~2\ : std_logic;
SIGNAL \comb_logic:num[4]~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \comb_logic:contar[30]~2\ : std_logic;
SIGNAL \comb_logic:contar[31]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[31]~q\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \comb_logic:num[25]~7_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \Mux18~5_combout\ : std_logic;
SIGNAL \Mux18~6_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~5_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \comb_logic~0_combout\ : std_logic;
SIGNAL \comb_logic:contar[1]~4_combout\ : std_logic;
SIGNAL \comb_logic:num[25]~4_combout\ : std_logic;
SIGNAL \comb_logic:num[4]~q\ : std_logic;
SIGNAL \comb_logic:num[4]~2\ : std_logic;
SIGNAL \comb_logic:num[5]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[5]~q\ : std_logic;
SIGNAL \comb_logic:num[5]~2\ : std_logic;
SIGNAL \comb_logic:num[6]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[6]~q\ : std_logic;
SIGNAL \comb_logic:num[6]~2\ : std_logic;
SIGNAL \comb_logic:num[7]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[7]~q\ : std_logic;
SIGNAL \comb_logic:num[7]~2\ : std_logic;
SIGNAL \comb_logic:num[8]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[8]~q\ : std_logic;
SIGNAL \comb_logic:num[8]~2\ : std_logic;
SIGNAL \comb_logic:num[9]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[9]~q\ : std_logic;
SIGNAL \comb_logic:num[9]~2\ : std_logic;
SIGNAL \comb_logic:num[10]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[10]~q\ : std_logic;
SIGNAL \comb_logic:num[10]~2\ : std_logic;
SIGNAL \comb_logic:num[11]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[11]~q\ : std_logic;
SIGNAL \comb_logic:num[11]~2\ : std_logic;
SIGNAL \comb_logic:num[12]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[12]~q\ : std_logic;
SIGNAL \comb_logic:num[12]~2\ : std_logic;
SIGNAL \comb_logic:num[13]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[13]~q\ : std_logic;
SIGNAL \comb_logic:num[13]~2\ : std_logic;
SIGNAL \comb_logic:num[14]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[14]~q\ : std_logic;
SIGNAL \comb_logic:num[14]~2\ : std_logic;
SIGNAL \comb_logic:num[15]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[15]~q\ : std_logic;
SIGNAL \comb_logic:num[15]~2\ : std_logic;
SIGNAL \comb_logic:num[16]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[16]~q\ : std_logic;
SIGNAL \comb_logic:num[16]~2\ : std_logic;
SIGNAL \comb_logic:num[17]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[17]~q\ : std_logic;
SIGNAL \comb_logic:num[17]~2\ : std_logic;
SIGNAL \comb_logic:num[18]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[18]~q\ : std_logic;
SIGNAL \comb_logic:num[18]~2\ : std_logic;
SIGNAL \comb_logic:num[19]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[19]~q\ : std_logic;
SIGNAL \comb_logic:num[19]~2\ : std_logic;
SIGNAL \comb_logic:num[20]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[20]~q\ : std_logic;
SIGNAL \comb_logic:num[20]~2\ : std_logic;
SIGNAL \comb_logic:num[21]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[21]~q\ : std_logic;
SIGNAL \comb_logic:num[21]~2\ : std_logic;
SIGNAL \comb_logic:num[22]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[22]~q\ : std_logic;
SIGNAL \comb_logic:num[22]~2\ : std_logic;
SIGNAL \comb_logic:num[23]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[23]~q\ : std_logic;
SIGNAL \comb_logic:num[23]~2\ : std_logic;
SIGNAL \comb_logic:num[24]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[24]~q\ : std_logic;
SIGNAL \comb_logic:num[24]~2\ : std_logic;
SIGNAL \comb_logic:num[25]~5_combout\ : std_logic;
SIGNAL \comb_logic:num[25]~q\ : std_logic;
SIGNAL \comb_logic:num[25]~6\ : std_logic;
SIGNAL \comb_logic:num[26]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[26]~q\ : std_logic;
SIGNAL \comb_logic:num[26]~2\ : std_logic;
SIGNAL \comb_logic:num[27]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[27]~q\ : std_logic;
SIGNAL \comb_logic:num[27]~2\ : std_logic;
SIGNAL \comb_logic:num[28]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[28]~q\ : std_logic;
SIGNAL \comb_logic:num[28]~2\ : std_logic;
SIGNAL \comb_logic:num[29]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[29]~q\ : std_logic;
SIGNAL \comb_logic:num[29]~2\ : std_logic;
SIGNAL \comb_logic:num[30]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[30]~q\ : std_logic;
SIGNAL \comb_logic:num[30]~2\ : std_logic;
SIGNAL \comb_logic:num[31]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[31]~q\ : std_logic;
SIGNAL \Equal2~8_combout\ : std_logic;
SIGNAL \Equal2~1_combout\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal2~2_combout\ : std_logic;
SIGNAL \Equal2~3_combout\ : std_logic;
SIGNAL \Equal2~4_combout\ : std_logic;
SIGNAL \Equal2~6_combout\ : std_logic;
SIGNAL \Equal2~5_combout\ : std_logic;
SIGNAL \Equal2~7_combout\ : std_logic;
SIGNAL \Equal2~9_combout\ : std_logic;
SIGNAL \Selector39~0_combout\ : std_logic;
SIGNAL \LessThan2~0_combout\ : std_logic;
SIGNAL \Equal2~10_combout\ : std_logic;
SIGNAL \estado~12_combout\ : std_logic;
SIGNAL \Selector39~1_combout\ : std_logic;
SIGNAL \estado.saltoLinea~q\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \estado.fin~q\ : std_logic;
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
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Selector40~1_combout\ : std_logic;
SIGNAL \estado.encender~q\ : std_logic;
SIGNAL \comb_logic:contar[1]~3_combout\ : std_logic;
SIGNAL \comb_logic:contar[1]~5_combout\ : std_logic;
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
SIGNAL \comb_logic:contar[12]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[12]~q\ : std_logic;
SIGNAL \comb_logic:contar[12]~2\ : std_logic;
SIGNAL \comb_logic:contar[13]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[13]~q\ : std_logic;
SIGNAL \comb_logic:contar[13]~2\ : std_logic;
SIGNAL \comb_logic:contar[14]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[14]~q\ : std_logic;
SIGNAL \comb_logic:contar[14]~2\ : std_logic;
SIGNAL \comb_logic:contar[15]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[15]~q\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \estado~11_combout\ : std_logic;
SIGNAL \Selector38~1_combout\ : std_logic;
SIGNAL \Selector38~2_combout\ : std_logic;
SIGNAL \estado.home~q\ : std_logic;
SIGNAL \comb_logic:num[25]~3_combout\ : std_logic;
SIGNAL \comb_logic:num[0]~q\ : std_logic;
SIGNAL \comb_logic:num[0]~2\ : std_logic;
SIGNAL \comb_logic:num[1]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[1]~q\ : std_logic;
SIGNAL \comb_logic:num[1]~2\ : std_logic;
SIGNAL \comb_logic:num[2]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[2]~q\ : std_logic;
SIGNAL \comb_logic:num[2]~2\ : std_logic;
SIGNAL \comb_logic:num[3]~1_combout\ : std_logic;
SIGNAL \comb_logic:num[3]~q\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector34~0_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \estado.configpantalla~q\ : std_logic;
SIGNAL \estado.encenderdisplay~q\ : std_logic;
SIGNAL \Selector34~1_combout\ : std_logic;
SIGNAL \estado.limpiardisplay~q\ : std_logic;
SIGNAL \estado.configcursor~q\ : std_logic;
SIGNAL \Selector50~5_combout\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \Selector36~1_combout\ : std_logic;
SIGNAL \estado.listo~q\ : std_logic;
SIGNAL \Selector40~0_combout\ : std_logic;
SIGNAL \Selector50~0_combout\ : std_logic;
SIGNAL \Selector50~1_combout\ : std_logic;
SIGNAL \WideOr8~0_combout\ : std_logic;
SIGNAL \Selector50~2_combout\ : std_logic;
SIGNAL \Selector50~3_combout\ : std_logic;
SIGNAL \Selector50~4_combout\ : std_logic;
SIGNAL \lcd[0]~reg0_q\ : std_logic;
SIGNAL \Selector49~1_combout\ : std_logic;
SIGNAL \Selector49~2_combout\ : std_logic;
SIGNAL \Selector49~0_combout\ : std_logic;
SIGNAL \Selector49~3_combout\ : std_logic;
SIGNAL \Selector49~4_combout\ : std_logic;
SIGNAL \lcd[1]~reg0_q\ : std_logic;
SIGNAL \WideOr8~1_combout\ : std_logic;
SIGNAL \Selector48~1_combout\ : std_logic;
SIGNAL \Selector48~2_combout\ : std_logic;
SIGNAL \Selector48~0_combout\ : std_logic;
SIGNAL \Selector48~3_combout\ : std_logic;
SIGNAL \lcd[2]~reg0_q\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \Selector47~2_combout\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Selector47~3_combout\ : std_logic;
SIGNAL \Selector47~4_combout\ : std_logic;
SIGNAL \lcd[3]~reg0_q\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \Selector46~2_combout\ : std_logic;
SIGNAL \Selector46~3_combout\ : std_logic;
SIGNAL \Selector46~4_combout\ : std_logic;
SIGNAL \lcd[4]~reg0_q\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \Selector45~2_combout\ : std_logic;
SIGNAL \Selector45~3_combout\ : std_logic;
SIGNAL \lcd[5]~reg0_q\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \lcd[6]~reg0_q\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \lcd[7]~reg0_q\ : std_logic;
SIGNAL \Selector40~2_combout\ : std_logic;
SIGNAL \Selector40~3_combout\ : std_logic;
SIGNAL \Selector40~4_combout\ : std_logic;
SIGNAL \Selector40~5_combout\ : std_logic;
SIGNAL \enviar~reg0_q\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector41~2_combout\ : std_logic;
SIGNAL \Selector41~3_combout\ : std_logic;
SIGNAL \rs~reg0_q\ : std_logic;
SIGNAL \Selector48~4_combout\ : std_logic;
SIGNAL \WideOr8~combout\ : std_logic;
SIGNAL \Selector42~1_combout\ : std_logic;
SIGNAL \rw~reg0_q\ : std_logic;
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL code : std_logic_vector(10 DOWNTO 0);
SIGNAL char : std_logic_vector(7 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \ALT_INV_ps2_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_estado.fin~q\ : std_logic;
SIGNAL \ALT_INV_disp2[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_disp1[6]~reg0_q\ : std_logic;

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
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\ALT_INV_ps2_clock~input_o\ <= NOT \ps2_clock~input_o\;
\ALT_INV_estado.fin~q\ <= NOT \estado.fin~q\;
\ALT_INV_disp2[6]~reg0_q\ <= NOT \disp2[6]~reg0_q\;
\ALT_INV_disp1[6]~reg0_q\ <= NOT \disp1[6]~reg0_q\;
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
	i => \rw~reg0_q\,
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

-- Location: LCCOMB_X8_Y55_N0
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

-- Location: LCCOMB_X8_Y55_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (i(1) & (!\Add2~1\)) # (!i(1) & ((\Add2~1\) # (GND)))
-- \Add2~3\ = CARRY((!\Add2~1\) # (!i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X8_Y55_N4
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

-- Location: FF_X8_Y55_N5
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

-- Location: LCCOMB_X8_Y55_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (i(3) & (!\Add2~5\)) # (!i(3) & ((\Add2~5\) # (GND)))
-- \Add2~7\ = CARRY((!\Add2~5\) # (!i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X7_Y55_N4
\i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~1_combout\ = (\Equal4~9_combout\ & \Add2~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal4~9_combout\,
	datad => \Add2~6_combout\,
	combout => \i~1_combout\);

-- Location: FF_X7_Y55_N5
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

-- Location: LCCOMB_X8_Y55_N8
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

-- Location: FF_X8_Y55_N9
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

-- Location: LCCOMB_X8_Y55_N10
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

-- Location: FF_X8_Y55_N11
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

-- Location: LCCOMB_X8_Y55_N12
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

-- Location: FF_X8_Y55_N13
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

-- Location: LCCOMB_X8_Y55_N14
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

-- Location: FF_X8_Y55_N15
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

-- Location: LCCOMB_X8_Y55_N16
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

-- Location: FF_X8_Y55_N17
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

-- Location: LCCOMB_X8_Y55_N18
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

-- Location: FF_X8_Y55_N19
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

-- Location: LCCOMB_X8_Y55_N20
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

-- Location: FF_X8_Y55_N21
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

-- Location: LCCOMB_X8_Y55_N22
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

-- Location: FF_X8_Y55_N23
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

-- Location: LCCOMB_X8_Y55_N24
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

-- Location: FF_X8_Y55_N25
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

-- Location: LCCOMB_X8_Y55_N26
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

-- Location: FF_X8_Y55_N27
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

-- Location: LCCOMB_X8_Y55_N28
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

-- Location: FF_X8_Y55_N29
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

-- Location: LCCOMB_X8_Y55_N30
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

-- Location: FF_X8_Y55_N31
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

-- Location: LCCOMB_X8_Y54_N0
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

-- Location: FF_X8_Y54_N1
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

-- Location: LCCOMB_X8_Y54_N2
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

-- Location: FF_X8_Y54_N3
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

-- Location: LCCOMB_X8_Y54_N4
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

-- Location: FF_X8_Y54_N5
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

-- Location: LCCOMB_X8_Y54_N6
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

-- Location: FF_X8_Y54_N7
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

-- Location: LCCOMB_X8_Y54_N8
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

-- Location: FF_X8_Y54_N9
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

-- Location: LCCOMB_X8_Y54_N10
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

-- Location: FF_X8_Y54_N11
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

-- Location: LCCOMB_X8_Y54_N12
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

-- Location: FF_X8_Y54_N13
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

-- Location: LCCOMB_X8_Y54_N14
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

-- Location: FF_X8_Y54_N15
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

-- Location: LCCOMB_X8_Y54_N16
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

-- Location: FF_X8_Y54_N17
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

-- Location: LCCOMB_X8_Y54_N18
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

-- Location: FF_X8_Y54_N19
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

-- Location: LCCOMB_X8_Y54_N20
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

-- Location: FF_X8_Y54_N21
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

-- Location: LCCOMB_X8_Y54_N22
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

-- Location: FF_X8_Y54_N23
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

-- Location: LCCOMB_X7_Y55_N30
\Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~2_combout\ = (i(26)) # ((i(27)) # ((i(24)) # (i(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(26),
	datab => i(27),
	datac => i(24),
	datad => i(25),
	combout => \Equal4~2_combout\);

-- Location: LCCOMB_X7_Y54_N0
\Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~3_combout\ = (i(22)) # ((i(23)) # ((i(20)) # (i(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(22),
	datab => i(23),
	datac => i(20),
	datad => i(21),
	combout => \Equal4~3_combout\);

-- Location: LCCOMB_X7_Y55_N26
\Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~5_combout\ = (i(15)) # ((i(14)) # ((i(12)) # (i(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(15),
	datab => i(14),
	datac => i(12),
	datad => i(13),
	combout => \Equal4~5_combout\);

-- Location: LCCOMB_X7_Y55_N24
\Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~6_combout\ = (i(10)) # ((i(9)) # ((i(11)) # (i(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(10),
	datab => i(9),
	datac => i(11),
	datad => i(8),
	combout => \Equal4~6_combout\);

-- Location: LCCOMB_X7_Y55_N22
\Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~7_combout\ = (i(7)) # ((i(6)) # ((i(4)) # (i(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(7),
	datab => i(6),
	datac => i(4),
	datad => i(5),
	combout => \Equal4~7_combout\);

-- Location: LCCOMB_X7_Y55_N0
\Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~4_combout\ = (i(18)) # ((i(16)) # ((i(17)) # (i(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(18),
	datab => i(16),
	datac => i(17),
	datad => i(19),
	combout => \Equal4~4_combout\);

-- Location: LCCOMB_X7_Y55_N8
\Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~8_combout\ = (\Equal4~5_combout\) # ((\Equal4~6_combout\) # ((\Equal4~7_combout\) # (\Equal4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~5_combout\,
	datab => \Equal4~6_combout\,
	datac => \Equal4~7_combout\,
	datad => \Equal4~4_combout\,
	combout => \Equal4~8_combout\);

-- Location: LCCOMB_X7_Y55_N18
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!i(0) & !i(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(0),
	datad => i(2),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X8_Y54_N24
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

-- Location: FF_X8_Y54_N25
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

-- Location: LCCOMB_X8_Y54_N26
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

-- Location: FF_X8_Y54_N27
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

-- Location: LCCOMB_X8_Y54_N28
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

-- Location: FF_X8_Y54_N29
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

-- Location: LCCOMB_X8_Y54_N30
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

-- Location: FF_X8_Y54_N31
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

-- Location: LCCOMB_X7_Y55_N10
\Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~0_combout\ = (i(29)) # ((i(31)) # ((i(30)) # (i(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datab => i(31),
	datac => i(30),
	datad => i(28),
	combout => \Equal4~0_combout\);

-- Location: LCCOMB_X7_Y55_N20
\Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~1_combout\ = (((\Equal4~0_combout\) # (!i(3))) # (!\Decoder0~0_combout\)) # (!i(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \Decoder0~0_combout\,
	datac => i(3),
	datad => \Equal4~0_combout\,
	combout => \Equal4~1_combout\);

-- Location: LCCOMB_X7_Y55_N2
\Equal4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal4~9_combout\ = (\Equal4~2_combout\) # ((\Equal4~3_combout\) # ((\Equal4~8_combout\) # (\Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal4~2_combout\,
	datab => \Equal4~3_combout\,
	datac => \Equal4~8_combout\,
	datad => \Equal4~1_combout\,
	combout => \Equal4~9_combout\);

-- Location: LCCOMB_X7_Y55_N16
\i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~0_combout\ = (\Add2~0_combout\ & \Equal4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add2~0_combout\,
	datad => \Equal4~9_combout\,
	combout => \i~0_combout\);

-- Location: FF_X7_Y55_N17
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

-- Location: LCCOMB_X7_Y55_N14
\i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~2_combout\ = (\Add2~2_combout\ & \Equal4~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datad => \Equal4~9_combout\,
	combout => \i~2_combout\);

-- Location: FF_X7_Y55_N15
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

-- Location: LCCOMB_X7_Y54_N16
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!\reset~input_o\ & (!i(3) & (!i(0) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i(3),
	datac => i(0),
	datad => i(2),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X7_Y54_N22
\code[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[0]~0_combout\ = (i(1) & (((code(0))))) # (!i(1) & ((\Decoder0~1_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~1_combout\ & ((code(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \ps2_data~input_o\,
	datac => code(0),
	datad => \Decoder0~1_combout\,
	combout => \code[0]~0_combout\);

-- Location: FF_X7_Y54_N23
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

-- Location: LCCOMB_X4_Y54_N30
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (i(2) & (!\reset~input_o\ & (!i(3) & !i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => \reset~input_o\,
	datac => i(3),
	datad => i(0),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X4_Y53_N24
\code[4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[4]~3_combout\ = (\Decoder0~5_combout\ & ((i(1) & ((code(4)))) # (!i(1) & (\ps2_data~input_o\)))) # (!\Decoder0~5_combout\ & (((code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => \ps2_data~input_o\,
	datac => code(4),
	datad => i(1),
	combout => \code[4]~3_combout\);

-- Location: FF_X4_Y53_N25
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

-- Location: LCCOMB_X4_Y53_N4
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!i(3) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datad => \reset~input_o\,
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X4_Y53_N10
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (i(0) & (\Decoder0~3_combout\ & (i(1) & i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \Decoder0~3_combout\,
	datac => i(1),
	datad => i(2),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X4_Y53_N22
\code[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[7]~2_combout\ = (\Decoder0~4_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~4_combout\ & ((code(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_data~input_o\,
	datac => code(7),
	datad => \Decoder0~4_combout\,
	combout => \code[7]~2_combout\);

-- Location: FF_X4_Y53_N23
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

-- Location: LCCOMB_X4_Y53_N20
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (i(0) & (\Decoder0~3_combout\ & (!i(1) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \Decoder0~3_combout\,
	datac => i(1),
	datad => i(2),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X4_Y53_N18
\code[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[1]~4_combout\ = (\Decoder0~6_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~6_combout\ & ((code(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_data~input_o\,
	datac => code(1),
	datad => \Decoder0~6_combout\,
	combout => \code[1]~4_combout\);

-- Location: FF_X4_Y53_N19
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

-- Location: LCCOMB_X7_Y55_N6
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!\reset~input_o\ & (i(3) & (!i(0) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i(3),
	datac => i(0),
	datad => i(2),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X4_Y53_N28
\code[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[8]~1_combout\ = (i(1) & (((code(8))))) # (!i(1) & ((\Decoder0~2_combout\ & ((\ps2_data~input_o\))) # (!\Decoder0~2_combout\ & (code(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \Decoder0~2_combout\,
	datac => code(8),
	datad => \ps2_data~input_o\,
	combout => \code[8]~1_combout\);

-- Location: FF_X4_Y53_N29
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

-- Location: LCCOMB_X6_Y53_N10
\Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~0_combout\ = (!code(4) & (code(7) & (!code(1) & code(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(4),
	datab => code(7),
	datac => code(1),
	datad => code(8),
	combout => \Equal5~0_combout\);

-- Location: LCCOMB_X9_Y53_N24
\code[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[2]~8_combout\ = (i(1) & ((\Decoder0~1_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~1_combout\ & ((code(2)))))) # (!i(1) & (((code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \ps2_data~input_o\,
	datac => code(2),
	datad => \Decoder0~1_combout\,
	combout => \code[2]~8_combout\);

-- Location: FF_X9_Y53_N25
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

-- Location: LCCOMB_X4_Y53_N16
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (i(0) & (\Decoder0~3_combout\ & (i(1) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \Decoder0~3_combout\,
	datac => i(1),
	datad => i(2),
	combout => \Decoder0~8_combout\);

-- Location: LCCOMB_X4_Y53_N12
\code[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[3]~7_combout\ = (\Decoder0~8_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~8_combout\ & ((code(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_data~input_o\,
	datac => code(3),
	datad => \Decoder0~8_combout\,
	combout => \code[3]~7_combout\);

-- Location: FF_X4_Y53_N13
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

-- Location: LCCOMB_X4_Y53_N2
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (i(0) & (\Decoder0~3_combout\ & (!i(1) & i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \Decoder0~3_combout\,
	datac => i(1),
	datad => i(2),
	combout => \Decoder0~7_combout\);

-- Location: LCCOMB_X4_Y53_N6
\code[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[5]~6_combout\ = (\Decoder0~7_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~7_combout\ & ((code(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_data~input_o\,
	datac => code(5),
	datad => \Decoder0~7_combout\,
	combout => \code[5]~6_combout\);

-- Location: FF_X4_Y53_N7
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

-- Location: LCCOMB_X4_Y53_N8
\code[6]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[6]~5_combout\ = (\Decoder0~5_combout\ & ((i(1) & (\ps2_data~input_o\)) # (!i(1) & ((code(6)))))) # (!\Decoder0~5_combout\ & (((code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => \ps2_data~input_o\,
	datac => code(6),
	datad => i(1),
	combout => \code[6]~5_combout\);

-- Location: FF_X4_Y53_N9
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

-- Location: LCCOMB_X6_Y53_N4
\Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal5~1_combout\ = (!code(2) & (!code(3) & (code(5) & code(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(3),
	datac => code(5),
	datad => code(6),
	combout => \Equal5~1_combout\);

-- Location: LCCOMB_X7_Y55_N28
\letDif~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \letDif~0_combout\ = \letDif~q\ $ (((!\Equal4~9_combout\ & ((!\Equal5~1_combout\) # (!\Equal5~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \Equal5~1_combout\,
	datac => \letDif~q\,
	datad => \Equal4~9_combout\,
	combout => \letDif~0_combout\);

-- Location: FF_X7_Y55_N29
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

-- Location: LCCOMB_X7_Y55_N12
\key[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[0]~0_combout\ = (!\letDif~q\ & (!\Equal4~9_combout\ & ((!\Equal5~1_combout\) # (!\Equal5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal5~0_combout\,
	datab => \letDif~q\,
	datac => \Equal5~1_combout\,
	datad => \Equal4~9_combout\,
	combout => \key[0]~0_combout\);

-- Location: FF_X7_Y54_N9
\key[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => code(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[0]~reg0_q\);

-- Location: LCCOMB_X6_Y55_N4
\key[1]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[1]~reg0feeder_combout\ = code(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(1),
	combout => \key[1]~reg0feeder_combout\);

-- Location: FF_X6_Y55_N5
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[1]~reg0_q\);

-- Location: LCCOMB_X7_Y54_N14
\key[2]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[2]~reg0feeder_combout\ = code(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(2),
	combout => \key[2]~reg0feeder_combout\);

-- Location: FF_X7_Y54_N15
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[2]~reg0_q\);

-- Location: LCCOMB_X6_Y55_N18
\key[3]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[3]~reg0feeder_combout\ = code(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(3),
	combout => \key[3]~reg0feeder_combout\);

-- Location: FF_X6_Y55_N19
\key[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[3]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[3]~reg0_q\);

-- Location: LCCOMB_X7_Y54_N28
\key[4]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[4]~reg0feeder_combout\ = code(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(4),
	combout => \key[4]~reg0feeder_combout\);

-- Location: FF_X7_Y54_N29
\key[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[4]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[4]~reg0_q\);

-- Location: LCCOMB_X8_Y53_N18
\key[5]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[5]~reg0feeder_combout\ = code(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(5),
	combout => \key[5]~reg0feeder_combout\);

-- Location: FF_X8_Y53_N19
\key[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[5]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[5]~reg0_q\);

-- Location: LCCOMB_X7_Y54_N6
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

-- Location: FF_X7_Y54_N7
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[6]~reg0_q\);

-- Location: LCCOMB_X8_Y53_N12
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

-- Location: FF_X8_Y53_N13
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[7]~reg0_q\);

-- Location: LCCOMB_X8_Y53_N26
\key[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[8]~reg0feeder_combout\ = code(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => code(8),
	combout => \key[8]~reg0feeder_combout\);

-- Location: FF_X8_Y53_N27
\key[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[8]~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[8]~reg0_q\);

-- Location: LCCOMB_X7_Y54_N18
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (i(0) & (i(3) & (!i(1) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(3),
	datac => i(1),
	datad => i(2),
	combout => \Decoder0~9_combout\);

-- Location: LCCOMB_X7_Y54_N10
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

-- Location: FF_X7_Y54_N11
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

-- Location: LCCOMB_X7_Y54_N24
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

-- Location: FF_X7_Y54_N25
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[9]~reg0_q\);

-- Location: LCCOMB_X4_Y53_N30
\Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (i(1) & (\Decoder0~0_combout\ & (i(3) & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \Decoder0~0_combout\,
	datac => i(3),
	datad => \reset~input_o\,
	combout => \Decoder0~10_combout\);

-- Location: LCCOMB_X4_Y53_N26
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

-- Location: FF_X4_Y53_N27
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

-- Location: LCCOMB_X8_Y53_N28
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

-- Location: FF_X8_Y53_N29
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[10]~reg0_q\);

-- Location: LCCOMB_X6_Y55_N0
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (code(3) & (!code(2) & (code(4) $ (!code(1))))) # (!code(3) & (code(1) & (code(4) $ (!code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(4),
	datac => code(2),
	datad => code(1),
	combout => \Mux6~0_combout\);

-- Location: FF_X6_Y55_N1
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[0]~reg0_q\);

-- Location: LCCOMB_X6_Y55_N10
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (code(2) & ((code(1) & ((code(4)))) # (!code(1) & (code(3))))) # (!code(2) & (code(3) & (code(1) $ (code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(1),
	datac => code(2),
	datad => code(4),
	combout => \Mux5~0_combout\);

-- Location: FF_X6_Y55_N11
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[1]~reg0_q\);

-- Location: LCCOMB_X6_Y55_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (code(3) & (code(4) & ((code(2)) # (!code(1))))) # (!code(3) & (!code(4) & (code(2) & !code(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(4),
	datac => code(2),
	datad => code(1),
	combout => \Mux4~0_combout\);

-- Location: FF_X6_Y55_N21
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[2]~reg0_q\);

-- Location: LCCOMB_X6_Y55_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (code(1) & (code(3) $ (((!code(2)))))) # (!code(1) & ((code(3) & (!code(4) & !code(2))) # (!code(3) & (code(4) & code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(4),
	datac => code(2),
	datad => code(1),
	combout => \Mux3~0_combout\);

-- Location: FF_X6_Y55_N31
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[3]~reg0_q\);

-- Location: LCCOMB_X6_Y55_N12
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (code(2) & (((!code(4) & code(1))))) # (!code(2) & ((code(3) & (!code(4))) # (!code(3) & ((code(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(4),
	datac => code(2),
	datad => code(1),
	combout => \Mux2~0_combout\);

-- Location: FF_X6_Y55_N13
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[4]~reg0_q\);

-- Location: LCCOMB_X6_Y55_N2
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (code(3) & (code(1) & (code(4) $ (code(2))))) # (!code(3) & (!code(4) & ((code(2)) # (code(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(4),
	datac => code(2),
	datad => code(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X6_Y55_N3
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[5]~reg0_q\);

-- Location: LCCOMB_X6_Y55_N24
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (code(1) & ((code(4)) # (code(3) $ (code(2))))) # (!code(1) & ((code(2)) # (code(3) $ (code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(1),
	datac => code(2),
	datad => code(4),
	combout => \Mux0~0_combout\);

-- Location: FF_X6_Y55_N25
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[6]~reg0_q\);

-- Location: LCCOMB_X8_Y53_N30
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (code(8) & (code(5) & (code(7) $ (code(6))))) # (!code(8) & (!code(6) & (code(7) $ (code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(8),
	datab => code(7),
	datac => code(6),
	datad => code(5),
	combout => \Mux13~0_combout\);

-- Location: FF_X8_Y53_N31
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[0]~reg0_q\);

-- Location: LCCOMB_X8_Y53_N20
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (code(8) & ((code(5) & ((code(6)))) # (!code(5) & (code(7))))) # (!code(8) & (code(7) & (code(6) $ (code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(8),
	datab => code(7),
	datac => code(6),
	datad => code(5),
	combout => \Mux12~0_combout\);

-- Location: FF_X8_Y53_N21
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[1]~reg0_q\);

-- Location: LCCOMB_X8_Y53_N6
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (code(8) & (code(7) & ((code(6)) # (!code(5))))) # (!code(8) & (!code(7) & (code(6) & !code(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(8),
	datab => code(7),
	datac => code(6),
	datad => code(5),
	combout => \Mux11~0_combout\);

-- Location: FF_X8_Y53_N7
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[2]~reg0_q\);

-- Location: LCCOMB_X8_Y53_N8
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (code(5) & ((code(7) $ (!code(6))))) # (!code(5) & ((code(8) & (!code(7) & code(6))) # (!code(8) & (code(7) & !code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(8),
	datab => code(7),
	datac => code(6),
	datad => code(5),
	combout => \Mux10~0_combout\);

-- Location: FF_X8_Y53_N9
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[3]~reg0_q\);

-- Location: LCCOMB_X8_Y53_N14
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (code(6) & (!code(8) & ((code(5))))) # (!code(6) & ((code(7) & (!code(8))) # (!code(7) & ((code(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(8),
	datab => code(7),
	datac => code(6),
	datad => code(5),
	combout => \Mux9~0_combout\);

-- Location: FF_X8_Y53_N15
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[4]~reg0_q\);

-- Location: LCCOMB_X8_Y53_N0
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (code(7) & (code(5) & (code(8) $ (code(6))))) # (!code(7) & (!code(8) & ((code(6)) # (code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(8),
	datab => code(7),
	datac => code(6),
	datad => code(5),
	combout => \Mux8~0_combout\);

-- Location: FF_X8_Y53_N1
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
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[5]~reg0_q\);

-- Location: LCCOMB_X8_Y53_N10
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (code(5) & ((code(8)) # (code(7) $ (code(6))))) # (!code(5) & ((code(6)) # (code(8) $ (code(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(8),
	datab => code(7),
	datac => code(6),
	datad => code(5),
	combout => \Mux7~0_combout\);

-- Location: FF_X8_Y53_N11
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
	ena => \key[0]~0_combout\,
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

-- Location: LCCOMB_X8_Y53_N2
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (code(7) & (!code(6) & !code(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => code(7),
	datac => code(6),
	datad => code(5),
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X10_Y53_N24
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (!code(4) & ((code(3) & ((!code(1)))) # (!code(3) & (code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X9_Y53_N8
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = code(2) $ (((code(6)) # ((code(1)) # (code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(2),
	datac => code(1),
	datad => code(4),
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X9_Y53_N26
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (code(6) & (!code(1) & ((code(2)) # (!code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(2),
	datac => code(1),
	datad => code(4),
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X9_Y53_N20
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

-- Location: LCCOMB_X9_Y53_N2
\Mux20~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~7_combout\ = (code(3) & (((code(5))))) # (!code(3) & (\Mux20~6_combout\ & (code(4) $ (!code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(4),
	datab => code(5),
	datac => code(3),
	datad => \Mux20~6_combout\,
	combout => \Mux20~7_combout\);

-- Location: LCCOMB_X9_Y53_N10
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (code(3) & ((\Mux20~7_combout\ & (\Mux20~3_combout\)) # (!\Mux20~7_combout\ & ((\Mux20~2_combout\))))) # (!code(3) & (((\Mux20~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => \Mux20~3_combout\,
	datac => \Mux20~2_combout\,
	datad => \Mux20~7_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X7_Y53_N4
\Mux20~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~5_combout\ = (code(7) & (\Mux20~1_combout\ & (\Mux20~0_combout\))) # (!code(7) & ((\Mux20~4_combout\) # ((\Mux20~1_combout\ & \Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => \Mux20~1_combout\,
	datac => \Mux20~0_combout\,
	datad => \Mux20~4_combout\,
	combout => \Mux20~5_combout\);

-- Location: FF_X7_Y53_N5
\char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux20~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => code(8),
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(0));

-- Location: LCCOMB_X5_Y54_N0
\comb_logic:num[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[0]~1_combout\ = \comb_logic:num[0]~q\ $ (VCC)
-- \comb_logic:num[0]~2\ = CARRY(\comb_logic:num[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[0]~q\,
	datad => VCC,
	combout => \comb_logic:num[0]~1_combout\,
	cout => \comb_logic:num[0]~2\);

-- Location: LCCOMB_X7_Y52_N0
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

-- Location: LCCOMB_X7_Y52_N30
\comb_logic:contar[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[15]~1_combout\ = (\comb_logic:contar[15]~q\ & (!\comb_logic:contar[14]~2\)) # (!\comb_logic:contar[15]~q\ & ((\comb_logic:contar[14]~2\) # (GND)))
-- \comb_logic:contar[15]~2\ = CARRY((!\comb_logic:contar[14]~2\) # (!\comb_logic:contar[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[15]~q\,
	datad => VCC,
	cin => \comb_logic:contar[14]~2\,
	combout => \comb_logic:contar[15]~1_combout\,
	cout => \comb_logic:contar[15]~2\);

-- Location: LCCOMB_X7_Y51_N0
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

-- Location: LCCOMB_X4_Y54_N4
\Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~0_combout\ = (\estado.fin~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.fin~q\,
	datad => \reset~input_o\,
	combout => \Selector38~0_combout\);

-- Location: LCCOMB_X5_Y54_N6
\comb_logic:num[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[3]~1_combout\ = (\comb_logic:num[3]~q\ & (!\comb_logic:num[2]~2\)) # (!\comb_logic:num[3]~q\ & ((\comb_logic:num[2]~2\) # (GND)))
-- \comb_logic:num[3]~2\ = CARRY((!\comb_logic:num[2]~2\) # (!\comb_logic:num[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[3]~q\,
	datad => VCC,
	cin => \comb_logic:num[2]~2\,
	combout => \comb_logic:num[3]~1_combout\,
	cout => \comb_logic:num[3]~2\);

-- Location: LCCOMB_X5_Y54_N8
\comb_logic:num[4]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[4]~1_combout\ = (\comb_logic:num[4]~q\ & (\comb_logic:num[3]~2\ $ (GND))) # (!\comb_logic:num[4]~q\ & (!\comb_logic:num[3]~2\ & VCC))
-- \comb_logic:num[4]~2\ = CARRY((\comb_logic:num[4]~q\ & !\comb_logic:num[3]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[4]~q\,
	datad => VCC,
	cin => \comb_logic:num[3]~2\,
	combout => \comb_logic:num[4]~1_combout\,
	cout => \comb_logic:num[4]~2\);

-- Location: LCCOMB_X5_Y52_N16
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\comb_logic:contar[20]~q\ & (!\comb_logic:contar[19]~q\ & !\comb_logic:contar[16]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[20]~q\,
	datac => \comb_logic:contar[19]~q\,
	datad => \comb_logic:contar[16]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y52_N26
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

-- Location: LCCOMB_X6_Y52_N6
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\comb_logic:contar[7]~q\ & (!\comb_logic:contar[5]~q\ & !\comb_logic:contar[4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[7]~q\,
	datab => \comb_logic:contar[5]~q\,
	datad => \comb_logic:contar[4]~q\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X6_Y52_N14
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\comb_logic:contar[10]~q\ & (!\comb_logic:contar[12]~q\ & (!\comb_logic:contar[13]~q\ & !\comb_logic:contar[11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[10]~q\,
	datab => \comb_logic:contar[12]~q\,
	datac => \comb_logic:contar[13]~q\,
	datad => \comb_logic:contar[11]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X6_Y52_N8
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\comb_logic:contar[23]~q\ & (!\comb_logic:contar[25]~q\ & (!\comb_logic:contar[22]~q\ & !\comb_logic:contar[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[23]~q\,
	datab => \comb_logic:contar[25]~q\,
	datac => \comb_logic:contar[22]~q\,
	datad => \comb_logic:contar[24]~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X6_Y52_N28
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (!\comb_logic:contar[26]~q\ & (!\comb_logic:contar[28]~q\ & (!\comb_logic:contar[27]~q\ & !\comb_logic:contar[29]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[26]~q\,
	datab => \comb_logic:contar[28]~q\,
	datac => \comb_logic:contar[27]~q\,
	datad => \comb_logic:contar[29]~q\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X6_Y52_N4
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

-- Location: LCCOMB_X6_Y52_N26
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\comb_logic:contar[2]~q\ & (!\comb_logic:contar[14]~q\ & (!\comb_logic:contar[15]~q\ & !\comb_logic:contar[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[2]~q\,
	datab => \comb_logic:contar[14]~q\,
	datac => \comb_logic:contar[15]~q\,
	datad => \comb_logic:contar[1]~q\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X7_Y51_N28
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

-- Location: LCCOMB_X7_Y51_N30
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

-- Location: FF_X7_Y51_N31
\comb_logic:contar[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[31]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[31]~q\);

-- Location: LCCOMB_X6_Y52_N20
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (\comb_logic:contar[0]~q\) # ((\comb_logic:contar[9]~q\) # ((\comb_logic:contar[31]~q\) # (\comb_logic:contar[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[0]~q\,
	datab => \comb_logic:contar[9]~q\,
	datac => \comb_logic:contar[31]~q\,
	datad => \comb_logic:contar[8]~q\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X6_Y52_N2
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (!\comb_logic:contar[3]~q\ & (!\comb_logic:contar[6]~q\ & (\Equal0~6_combout\ & !\Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[3]~q\,
	datab => \comb_logic:contar[6]~q\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~7_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X6_Y52_N0
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~5_combout\ & (\Equal0~0_combout\ & (\Equal0~4_combout\ & \Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~4_combout\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X6_Y52_N18
\comb_logic:num[25]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[25]~7_combout\ = (\estado.home~q\ & (!\Equal0~9_combout\ & ((!\estado.fin~q\) # (!\reset~input_o\)))) # (!\estado.home~q\ & (((!\estado.fin~q\)) # (!\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.home~q\,
	datab => \reset~input_o\,
	datac => \estado.fin~q\,
	datad => \Equal0~9_combout\,
	combout => \comb_logic:num[25]~7_combout\);

-- Location: LCCOMB_X7_Y53_N0
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (code(6) & ((code(1) & ((!code(4)))) # (!code(1) & (code(3))))) # (!code(6) & ((code(4)) # ((code(3) & code(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(1),
	datac => code(4),
	datad => code(6),
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X7_Y53_N30
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (code(2) & (!code(3) & ((code(6)) # (\Mux14~4_combout\)))) # (!code(2) & (\Mux14~4_combout\ & ((code(3)) # (code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(2),
	datac => code(6),
	datad => \Mux14~4_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X7_Y53_N14
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = code(3) $ (((code(2)) # ((!code(4) & code(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(2),
	datac => code(4),
	datad => code(1),
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X7_Y53_N20
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (code(3) & (!code(2) & (code(4) $ (!code(1))))) # (!code(3) & (code(2) & ((code(1)) # (!code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(2),
	datac => code(4),
	datad => code(1),
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X7_Y53_N18
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

-- Location: LCCOMB_X7_Y53_N6
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (code(5) & (!code(7) & (\Mux14~5_combout\))) # (!code(5) & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => \Mux14~5_combout\,
	datad => \Mux14~2_combout\,
	combout => \Mux14~3_combout\);

-- Location: FF_X7_Y53_N7
\char[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux14~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => code(8),
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(6));

-- Location: LCCOMB_X7_Y53_N8
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (code(3) & ((code(2) & (!code(4) & !code(1))) # (!code(2) & ((code(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(2),
	datac => code(4),
	datad => code(1),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X9_Y53_N12
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (code(2) & ((code(5) & ((code(4)))) # (!code(5) & (!code(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(2),
	datac => code(4),
	datad => code(5),
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X9_Y53_N6
\Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (code(3) & (((code(6))))) # (!code(3) & (\Mux16~5_combout\ & (code(5) $ (code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(6),
	datac => code(3),
	datad => \Mux16~5_combout\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X10_Y53_N4
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (code(2) & ((!code(1)))) # (!code(2) & ((code(4)) # (code(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datac => code(4),
	datad => code(1),
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X10_Y53_N18
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (code(5) & (code(2) $ (code(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datac => code(1),
	datad => code(5),
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X10_Y53_N26
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (code(3) & ((\Mux16~6_combout\ & (\Mux16~2_combout\)) # (!\Mux16~6_combout\ & ((\Mux16~1_combout\))))) # (!code(3) & (\Mux16~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => \Mux16~6_combout\,
	datac => \Mux16~2_combout\,
	datad => \Mux16~1_combout\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X7_Y53_N22
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (code(7) & (\Mux16~0_combout\ & (\Mux20~1_combout\))) # (!code(7) & ((\Mux16~3_combout\) # ((\Mux16~0_combout\ & \Mux20~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => \Mux16~0_combout\,
	datac => \Mux20~1_combout\,
	datad => \Mux16~3_combout\,
	combout => \Mux16~4_combout\);

-- Location: FF_X7_Y53_N23
\char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux16~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => code(8),
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(4));

-- Location: LCCOMB_X7_Y53_N10
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (code(3) & (code(2))) # (!code(3) & (!code(2) & (!code(7) & code(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(2),
	datac => code(7),
	datad => code(6),
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X7_Y53_N2
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (code(3) & (((code(1) & code(7))) # (!code(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(1),
	datac => code(7),
	datad => code(6),
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X7_Y53_N24
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (code(4) & ((code(5) & (code(1))) # (!code(5) & ((\Mux15~3_combout\))))) # (!code(4) & (code(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => \Mux15~3_combout\,
	datac => code(4),
	datad => code(5),
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X7_Y53_N26
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\Mux15~3_combout\ & (((code(4)) # (code(5))))) # (!\Mux15~3_combout\ & (code(1) & (code(4) $ (code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => \Mux15~3_combout\,
	datac => code(4),
	datad => code(5),
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X7_Y53_N28
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (code(3) & (code(7) $ (code(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datac => code(7),
	datad => code(6),
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X7_Y53_N16
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\Mux15~7_combout\ & (!\Mux15~4_combout\ & (\Mux15~5_combout\ $ (\Mux15~2_combout\)))) # (!\Mux15~7_combout\ & (\Mux15~4_combout\ & (!\Mux15~5_combout\ & \Mux15~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~7_combout\,
	datab => \Mux15~4_combout\,
	datac => \Mux15~5_combout\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~6_combout\);

-- Location: FF_X7_Y53_N17
\char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux15~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => code(8),
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(5));

-- Location: LCCOMB_X7_Y53_N12
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!char(6) & (!char(0) & (!char(4) & !char(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(6),
	datab => char(0),
	datac => char(4),
	datad => char(5),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X10_Y53_N2
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (code(2) & (code(1) & (code(4) & !code(3)))) # (!code(2) & (!code(1) & (!code(4) & code(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X10_Y53_N12
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (!code(2) & (code(1) & (code(4) & code(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(3),
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X10_Y53_N20
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (code(5) & (((!code(7) & \Mux18~2_combout\)))) # (!code(5) & (\Mux18~3_combout\ & (code(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => \Mux18~3_combout\,
	datac => code(7),
	datad => \Mux18~2_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X10_Y53_N8
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (code(2) & (((!code(1) & code(4))) # (!code(5)))) # (!code(2) & (code(1) & (!code(4) & code(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(5),
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X10_Y53_N6
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (code(2) & ((code(1)) # (code(4) $ (!code(5))))) # (!code(2) & (code(1) & (code(4) $ (code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(1),
	datac => code(4),
	datad => code(5),
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X10_Y53_N22
\Mux18~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~5_combout\ = (code(7)) # ((code(3) & ((!\Mux18~1_combout\))) # (!code(3) & (\Mux18~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(3),
	datac => \Mux18~0_combout\,
	datad => \Mux18~1_combout\,
	combout => \Mux18~5_combout\);

-- Location: LCCOMB_X8_Y53_N22
\Mux18~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~6_combout\ = (code(6) & (!code(7) & ((\Mux18~5_combout\)))) # (!code(6) & (\Mux18~4_combout\ & ((\Mux18~5_combout\) # (!code(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(7),
	datac => \Mux18~4_combout\,
	datad => \Mux18~5_combout\,
	combout => \Mux18~6_combout\);

-- Location: FF_X8_Y53_N23
\char[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux18~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => code(8),
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(2));

-- Location: LCCOMB_X7_Y54_N12
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (code(3) & (code(1) $ (((code(2)) # (!code(4)))))) # (!code(3) & (code(2) $ (((code(1) & !code(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(3),
	datab => code(2),
	datac => code(1),
	datad => code(4),
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X7_Y54_N30
\Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~5_combout\ = (\Mux19~4_combout\ & ((code(4) & ((code(1)) # (!code(6)))) # (!code(4) & ((code(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~4_combout\,
	datab => code(4),
	datac => code(1),
	datad => code(6),
	combout => \Mux19~5_combout\);

-- Location: LCCOMB_X9_Y53_N14
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (!code(1) & (!code(4) & (code(2) $ (code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(2),
	datac => code(3),
	datad => code(4),
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X9_Y53_N0
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (code(2) & ((code(4) & ((!code(3)))) # (!code(4) & (!code(1))))) # (!code(2) & (code(1) & (code(3) $ (!code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010110001000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(2),
	datac => code(3),
	datad => code(4),
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X9_Y53_N16
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (code(6) & (((!code(7) & \Mux19~0_combout\)))) # (!code(6) & (\Mux19~1_combout\ & (code(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => \Mux19~1_combout\,
	datac => code(7),
	datad => \Mux19~0_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X8_Y53_N4
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (code(5) & (!code(7) & (\Mux19~5_combout\))) # (!code(5) & (((\Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => \Mux19~5_combout\,
	datad => \Mux19~2_combout\,
	combout => \Mux19~3_combout\);

-- Location: FF_X8_Y53_N5
\char[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux19~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => code(8),
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(1));

-- Location: LCCOMB_X9_Y53_N4
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (code(7) & ((code(3) & ((!code(1)))) # (!code(3) & (code(2))))) # (!code(7) & ((code(2) & ((!code(3)))) # (!code(2) & (code(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(2),
	datac => code(1),
	datad => code(3),
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X9_Y53_N22
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (code(7) & (code(1) & ((!code(3)) # (!code(2))))) # (!code(7) & (code(2) & (code(1) $ (code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(2),
	datac => code(1),
	datad => code(3),
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X9_Y53_N18
\Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (code(4) & (((!code(1))))) # (!code(4) & (!code(7) & (code(1) & code(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(4),
	datac => code(1),
	datad => code(6),
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X9_Y53_N30
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (code(7) & (\Mux17~2_combout\ & ((\Mux17~3_combout\) # (!\Mux17~7_combout\)))) # (!code(7) & (\Mux17~3_combout\ & ((\Mux17~2_combout\) # (\Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => \Mux17~2_combout\,
	datac => \Mux17~3_combout\,
	datad => \Mux17~7_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X9_Y53_N28
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (\Mux17~2_combout\ & (!code(7) & ((\Mux17~3_combout\) # (\Mux17~7_combout\)))) # (!\Mux17~2_combout\ & (((\Mux17~3_combout\ & \Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => \Mux17~2_combout\,
	datac => \Mux17~3_combout\,
	datad => \Mux17~7_combout\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X8_Y53_N24
\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (code(5) & (\Mux17~4_combout\ & ((code(6)) # (!\Mux17~5_combout\)))) # (!code(5) & (!code(6) & (\Mux17~5_combout\ & !\Mux17~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(6),
	datac => \Mux17~5_combout\,
	datad => \Mux17~4_combout\,
	combout => \Mux17~6_combout\);

-- Location: FF_X8_Y53_N25
\char[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux17~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sclr => code(8),
	ena => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(3));

-- Location: LCCOMB_X8_Y53_N16
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!char(2) & (!char(1) & !char(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(2),
	datac => char(1),
	datad => char(3),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X6_Y53_N6
\comb_logic~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic~0_combout\ = (\Equal1~0_combout\ & (!\Equal1~1_combout\ & ((!\Equal5~0_combout\) # (!\Equal5~1_combout\)))) # (!\Equal1~0_combout\ & (((!\Equal5~0_combout\)) # (!\Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~0_combout\,
	datab => \Equal5~1_combout\,
	datac => \Equal1~1_combout\,
	datad => \Equal5~0_combout\,
	combout => \comb_logic~0_combout\);

-- Location: LCCOMB_X6_Y53_N14
\comb_logic:contar[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[1]~4_combout\ = (\Equal0~9_combout\ & (((\letDif~q\ & \comb_logic~0_combout\)) # (!\estado.listo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.listo~q\,
	datab => \Equal0~9_combout\,
	datac => \letDif~q\,
	datad => \comb_logic~0_combout\,
	combout => \comb_logic:contar[1]~4_combout\);

-- Location: LCCOMB_X6_Y53_N18
\comb_logic:num[25]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[25]~4_combout\ = ((\Selector40~0_combout\) # ((\estado.saltoLinea~q\ & \comb_logic:contar[1]~4_combout\))) # (!\comb_logic:num[25]~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[25]~7_combout\,
	datab => \estado.saltoLinea~q\,
	datac => \comb_logic:contar[1]~4_combout\,
	datad => \Selector40~0_combout\,
	combout => \comb_logic:num[25]~4_combout\);

-- Location: FF_X5_Y54_N9
\comb_logic:num[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[4]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[4]~q\);

-- Location: LCCOMB_X5_Y54_N10
\comb_logic:num[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[5]~1_combout\ = (\comb_logic:num[5]~q\ & (!\comb_logic:num[4]~2\)) # (!\comb_logic:num[5]~q\ & ((\comb_logic:num[4]~2\) # (GND)))
-- \comb_logic:num[5]~2\ = CARRY((!\comb_logic:num[4]~2\) # (!\comb_logic:num[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[5]~q\,
	datad => VCC,
	cin => \comb_logic:num[4]~2\,
	combout => \comb_logic:num[5]~1_combout\,
	cout => \comb_logic:num[5]~2\);

-- Location: FF_X5_Y54_N11
\comb_logic:num[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[5]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[5]~q\);

-- Location: LCCOMB_X5_Y54_N12
\comb_logic:num[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[6]~1_combout\ = (\comb_logic:num[6]~q\ & (\comb_logic:num[5]~2\ $ (GND))) # (!\comb_logic:num[6]~q\ & (!\comb_logic:num[5]~2\ & VCC))
-- \comb_logic:num[6]~2\ = CARRY((\comb_logic:num[6]~q\ & !\comb_logic:num[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[6]~q\,
	datad => VCC,
	cin => \comb_logic:num[5]~2\,
	combout => \comb_logic:num[6]~1_combout\,
	cout => \comb_logic:num[6]~2\);

-- Location: FF_X5_Y54_N13
\comb_logic:num[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[6]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[6]~q\);

-- Location: LCCOMB_X5_Y54_N14
\comb_logic:num[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[7]~1_combout\ = (\comb_logic:num[7]~q\ & (!\comb_logic:num[6]~2\)) # (!\comb_logic:num[7]~q\ & ((\comb_logic:num[6]~2\) # (GND)))
-- \comb_logic:num[7]~2\ = CARRY((!\comb_logic:num[6]~2\) # (!\comb_logic:num[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[7]~q\,
	datad => VCC,
	cin => \comb_logic:num[6]~2\,
	combout => \comb_logic:num[7]~1_combout\,
	cout => \comb_logic:num[7]~2\);

-- Location: FF_X5_Y54_N15
\comb_logic:num[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[7]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[7]~q\);

-- Location: LCCOMB_X5_Y54_N16
\comb_logic:num[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[8]~1_combout\ = (\comb_logic:num[8]~q\ & (\comb_logic:num[7]~2\ $ (GND))) # (!\comb_logic:num[8]~q\ & (!\comb_logic:num[7]~2\ & VCC))
-- \comb_logic:num[8]~2\ = CARRY((\comb_logic:num[8]~q\ & !\comb_logic:num[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[8]~q\,
	datad => VCC,
	cin => \comb_logic:num[7]~2\,
	combout => \comb_logic:num[8]~1_combout\,
	cout => \comb_logic:num[8]~2\);

-- Location: FF_X5_Y54_N17
\comb_logic:num[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[8]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[8]~q\);

-- Location: LCCOMB_X5_Y54_N18
\comb_logic:num[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[9]~1_combout\ = (\comb_logic:num[9]~q\ & (!\comb_logic:num[8]~2\)) # (!\comb_logic:num[9]~q\ & ((\comb_logic:num[8]~2\) # (GND)))
-- \comb_logic:num[9]~2\ = CARRY((!\comb_logic:num[8]~2\) # (!\comb_logic:num[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[9]~q\,
	datad => VCC,
	cin => \comb_logic:num[8]~2\,
	combout => \comb_logic:num[9]~1_combout\,
	cout => \comb_logic:num[9]~2\);

-- Location: FF_X5_Y54_N19
\comb_logic:num[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[9]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[9]~q\);

-- Location: LCCOMB_X5_Y54_N20
\comb_logic:num[10]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[10]~1_combout\ = (\comb_logic:num[10]~q\ & (\comb_logic:num[9]~2\ $ (GND))) # (!\comb_logic:num[10]~q\ & (!\comb_logic:num[9]~2\ & VCC))
-- \comb_logic:num[10]~2\ = CARRY((\comb_logic:num[10]~q\ & !\comb_logic:num[9]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[10]~q\,
	datad => VCC,
	cin => \comb_logic:num[9]~2\,
	combout => \comb_logic:num[10]~1_combout\,
	cout => \comb_logic:num[10]~2\);

-- Location: FF_X5_Y54_N21
\comb_logic:num[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[10]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[10]~q\);

-- Location: LCCOMB_X5_Y54_N22
\comb_logic:num[11]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[11]~1_combout\ = (\comb_logic:num[11]~q\ & (!\comb_logic:num[10]~2\)) # (!\comb_logic:num[11]~q\ & ((\comb_logic:num[10]~2\) # (GND)))
-- \comb_logic:num[11]~2\ = CARRY((!\comb_logic:num[10]~2\) # (!\comb_logic:num[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[11]~q\,
	datad => VCC,
	cin => \comb_logic:num[10]~2\,
	combout => \comb_logic:num[11]~1_combout\,
	cout => \comb_logic:num[11]~2\);

-- Location: FF_X5_Y54_N23
\comb_logic:num[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[11]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[11]~q\);

-- Location: LCCOMB_X5_Y54_N24
\comb_logic:num[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[12]~1_combout\ = (\comb_logic:num[12]~q\ & (\comb_logic:num[11]~2\ $ (GND))) # (!\comb_logic:num[12]~q\ & (!\comb_logic:num[11]~2\ & VCC))
-- \comb_logic:num[12]~2\ = CARRY((\comb_logic:num[12]~q\ & !\comb_logic:num[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[12]~q\,
	datad => VCC,
	cin => \comb_logic:num[11]~2\,
	combout => \comb_logic:num[12]~1_combout\,
	cout => \comb_logic:num[12]~2\);

-- Location: FF_X5_Y54_N25
\comb_logic:num[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[12]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[12]~q\);

-- Location: LCCOMB_X5_Y54_N26
\comb_logic:num[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[13]~1_combout\ = (\comb_logic:num[13]~q\ & (!\comb_logic:num[12]~2\)) # (!\comb_logic:num[13]~q\ & ((\comb_logic:num[12]~2\) # (GND)))
-- \comb_logic:num[13]~2\ = CARRY((!\comb_logic:num[12]~2\) # (!\comb_logic:num[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[13]~q\,
	datad => VCC,
	cin => \comb_logic:num[12]~2\,
	combout => \comb_logic:num[13]~1_combout\,
	cout => \comb_logic:num[13]~2\);

-- Location: FF_X5_Y54_N27
\comb_logic:num[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[13]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[13]~q\);

-- Location: LCCOMB_X5_Y54_N28
\comb_logic:num[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[14]~1_combout\ = (\comb_logic:num[14]~q\ & (\comb_logic:num[13]~2\ $ (GND))) # (!\comb_logic:num[14]~q\ & (!\comb_logic:num[13]~2\ & VCC))
-- \comb_logic:num[14]~2\ = CARRY((\comb_logic:num[14]~q\ & !\comb_logic:num[13]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[14]~q\,
	datad => VCC,
	cin => \comb_logic:num[13]~2\,
	combout => \comb_logic:num[14]~1_combout\,
	cout => \comb_logic:num[14]~2\);

-- Location: FF_X5_Y54_N29
\comb_logic:num[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[14]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[14]~q\);

-- Location: LCCOMB_X5_Y54_N30
\comb_logic:num[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[15]~1_combout\ = (\comb_logic:num[15]~q\ & (!\comb_logic:num[14]~2\)) # (!\comb_logic:num[15]~q\ & ((\comb_logic:num[14]~2\) # (GND)))
-- \comb_logic:num[15]~2\ = CARRY((!\comb_logic:num[14]~2\) # (!\comb_logic:num[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[15]~q\,
	datad => VCC,
	cin => \comb_logic:num[14]~2\,
	combout => \comb_logic:num[15]~1_combout\,
	cout => \comb_logic:num[15]~2\);

-- Location: FF_X5_Y54_N31
\comb_logic:num[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[15]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[15]~q\);

-- Location: LCCOMB_X5_Y53_N0
\comb_logic:num[16]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[16]~1_combout\ = (\comb_logic:num[16]~q\ & (\comb_logic:num[15]~2\ $ (GND))) # (!\comb_logic:num[16]~q\ & (!\comb_logic:num[15]~2\ & VCC))
-- \comb_logic:num[16]~2\ = CARRY((\comb_logic:num[16]~q\ & !\comb_logic:num[15]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[16]~q\,
	datad => VCC,
	cin => \comb_logic:num[15]~2\,
	combout => \comb_logic:num[16]~1_combout\,
	cout => \comb_logic:num[16]~2\);

-- Location: FF_X5_Y53_N1
\comb_logic:num[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[16]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[16]~q\);

-- Location: LCCOMB_X5_Y53_N2
\comb_logic:num[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[17]~1_combout\ = (\comb_logic:num[17]~q\ & (!\comb_logic:num[16]~2\)) # (!\comb_logic:num[17]~q\ & ((\comb_logic:num[16]~2\) # (GND)))
-- \comb_logic:num[17]~2\ = CARRY((!\comb_logic:num[16]~2\) # (!\comb_logic:num[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[17]~q\,
	datad => VCC,
	cin => \comb_logic:num[16]~2\,
	combout => \comb_logic:num[17]~1_combout\,
	cout => \comb_logic:num[17]~2\);

-- Location: FF_X5_Y53_N3
\comb_logic:num[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[17]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[17]~q\);

-- Location: LCCOMB_X5_Y53_N4
\comb_logic:num[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[18]~1_combout\ = (\comb_logic:num[18]~q\ & (\comb_logic:num[17]~2\ $ (GND))) # (!\comb_logic:num[18]~q\ & (!\comb_logic:num[17]~2\ & VCC))
-- \comb_logic:num[18]~2\ = CARRY((\comb_logic:num[18]~q\ & !\comb_logic:num[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[18]~q\,
	datad => VCC,
	cin => \comb_logic:num[17]~2\,
	combout => \comb_logic:num[18]~1_combout\,
	cout => \comb_logic:num[18]~2\);

-- Location: FF_X5_Y53_N5
\comb_logic:num[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[18]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[18]~q\);

-- Location: LCCOMB_X5_Y53_N6
\comb_logic:num[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[19]~1_combout\ = (\comb_logic:num[19]~q\ & (!\comb_logic:num[18]~2\)) # (!\comb_logic:num[19]~q\ & ((\comb_logic:num[18]~2\) # (GND)))
-- \comb_logic:num[19]~2\ = CARRY((!\comb_logic:num[18]~2\) # (!\comb_logic:num[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[19]~q\,
	datad => VCC,
	cin => \comb_logic:num[18]~2\,
	combout => \comb_logic:num[19]~1_combout\,
	cout => \comb_logic:num[19]~2\);

-- Location: FF_X5_Y53_N7
\comb_logic:num[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[19]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[19]~q\);

-- Location: LCCOMB_X5_Y53_N8
\comb_logic:num[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[20]~1_combout\ = (\comb_logic:num[20]~q\ & (\comb_logic:num[19]~2\ $ (GND))) # (!\comb_logic:num[20]~q\ & (!\comb_logic:num[19]~2\ & VCC))
-- \comb_logic:num[20]~2\ = CARRY((\comb_logic:num[20]~q\ & !\comb_logic:num[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[20]~q\,
	datad => VCC,
	cin => \comb_logic:num[19]~2\,
	combout => \comb_logic:num[20]~1_combout\,
	cout => \comb_logic:num[20]~2\);

-- Location: FF_X5_Y53_N9
\comb_logic:num[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[20]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[20]~q\);

-- Location: LCCOMB_X5_Y53_N10
\comb_logic:num[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[21]~1_combout\ = (\comb_logic:num[21]~q\ & (!\comb_logic:num[20]~2\)) # (!\comb_logic:num[21]~q\ & ((\comb_logic:num[20]~2\) # (GND)))
-- \comb_logic:num[21]~2\ = CARRY((!\comb_logic:num[20]~2\) # (!\comb_logic:num[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[21]~q\,
	datad => VCC,
	cin => \comb_logic:num[20]~2\,
	combout => \comb_logic:num[21]~1_combout\,
	cout => \comb_logic:num[21]~2\);

-- Location: FF_X5_Y53_N11
\comb_logic:num[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[21]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[21]~q\);

-- Location: LCCOMB_X5_Y53_N12
\comb_logic:num[22]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[22]~1_combout\ = (\comb_logic:num[22]~q\ & (\comb_logic:num[21]~2\ $ (GND))) # (!\comb_logic:num[22]~q\ & (!\comb_logic:num[21]~2\ & VCC))
-- \comb_logic:num[22]~2\ = CARRY((\comb_logic:num[22]~q\ & !\comb_logic:num[21]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[22]~q\,
	datad => VCC,
	cin => \comb_logic:num[21]~2\,
	combout => \comb_logic:num[22]~1_combout\,
	cout => \comb_logic:num[22]~2\);

-- Location: FF_X5_Y53_N13
\comb_logic:num[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[22]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[22]~q\);

-- Location: LCCOMB_X5_Y53_N14
\comb_logic:num[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[23]~1_combout\ = (\comb_logic:num[23]~q\ & (!\comb_logic:num[22]~2\)) # (!\comb_logic:num[23]~q\ & ((\comb_logic:num[22]~2\) # (GND)))
-- \comb_logic:num[23]~2\ = CARRY((!\comb_logic:num[22]~2\) # (!\comb_logic:num[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[23]~q\,
	datad => VCC,
	cin => \comb_logic:num[22]~2\,
	combout => \comb_logic:num[23]~1_combout\,
	cout => \comb_logic:num[23]~2\);

-- Location: FF_X5_Y53_N15
\comb_logic:num[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[23]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[23]~q\);

-- Location: LCCOMB_X5_Y53_N16
\comb_logic:num[24]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[24]~1_combout\ = (\comb_logic:num[24]~q\ & (\comb_logic:num[23]~2\ $ (GND))) # (!\comb_logic:num[24]~q\ & (!\comb_logic:num[23]~2\ & VCC))
-- \comb_logic:num[24]~2\ = CARRY((\comb_logic:num[24]~q\ & !\comb_logic:num[23]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[24]~q\,
	datad => VCC,
	cin => \comb_logic:num[23]~2\,
	combout => \comb_logic:num[24]~1_combout\,
	cout => \comb_logic:num[24]~2\);

-- Location: FF_X5_Y53_N17
\comb_logic:num[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[24]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[24]~q\);

-- Location: LCCOMB_X5_Y53_N18
\comb_logic:num[25]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[25]~5_combout\ = (\comb_logic:num[25]~q\ & (!\comb_logic:num[24]~2\)) # (!\comb_logic:num[25]~q\ & ((\comb_logic:num[24]~2\) # (GND)))
-- \comb_logic:num[25]~6\ = CARRY((!\comb_logic:num[24]~2\) # (!\comb_logic:num[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[25]~q\,
	datad => VCC,
	cin => \comb_logic:num[24]~2\,
	combout => \comb_logic:num[25]~5_combout\,
	cout => \comb_logic:num[25]~6\);

-- Location: FF_X5_Y53_N19
\comb_logic:num[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[25]~5_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[25]~q\);

-- Location: LCCOMB_X5_Y53_N20
\comb_logic:num[26]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[26]~1_combout\ = (\comb_logic:num[26]~q\ & (\comb_logic:num[25]~6\ $ (GND))) # (!\comb_logic:num[26]~q\ & (!\comb_logic:num[25]~6\ & VCC))
-- \comb_logic:num[26]~2\ = CARRY((\comb_logic:num[26]~q\ & !\comb_logic:num[25]~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[26]~q\,
	datad => VCC,
	cin => \comb_logic:num[25]~6\,
	combout => \comb_logic:num[26]~1_combout\,
	cout => \comb_logic:num[26]~2\);

-- Location: FF_X5_Y53_N21
\comb_logic:num[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[26]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[26]~q\);

-- Location: LCCOMB_X5_Y53_N22
\comb_logic:num[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[27]~1_combout\ = (\comb_logic:num[27]~q\ & (!\comb_logic:num[26]~2\)) # (!\comb_logic:num[27]~q\ & ((\comb_logic:num[26]~2\) # (GND)))
-- \comb_logic:num[27]~2\ = CARRY((!\comb_logic:num[26]~2\) # (!\comb_logic:num[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[27]~q\,
	datad => VCC,
	cin => \comb_logic:num[26]~2\,
	combout => \comb_logic:num[27]~1_combout\,
	cout => \comb_logic:num[27]~2\);

-- Location: FF_X5_Y53_N23
\comb_logic:num[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[27]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[27]~q\);

-- Location: LCCOMB_X5_Y53_N24
\comb_logic:num[28]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[28]~1_combout\ = (\comb_logic:num[28]~q\ & (\comb_logic:num[27]~2\ $ (GND))) # (!\comb_logic:num[28]~q\ & (!\comb_logic:num[27]~2\ & VCC))
-- \comb_logic:num[28]~2\ = CARRY((\comb_logic:num[28]~q\ & !\comb_logic:num[27]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[28]~q\,
	datad => VCC,
	cin => \comb_logic:num[27]~2\,
	combout => \comb_logic:num[28]~1_combout\,
	cout => \comb_logic:num[28]~2\);

-- Location: FF_X5_Y53_N25
\comb_logic:num[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[28]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[28]~q\);

-- Location: LCCOMB_X5_Y53_N26
\comb_logic:num[29]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[29]~1_combout\ = (\comb_logic:num[29]~q\ & (!\comb_logic:num[28]~2\)) # (!\comb_logic:num[29]~q\ & ((\comb_logic:num[28]~2\) # (GND)))
-- \comb_logic:num[29]~2\ = CARRY((!\comb_logic:num[28]~2\) # (!\comb_logic:num[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[29]~q\,
	datad => VCC,
	cin => \comb_logic:num[28]~2\,
	combout => \comb_logic:num[29]~1_combout\,
	cout => \comb_logic:num[29]~2\);

-- Location: FF_X5_Y53_N27
\comb_logic:num[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[29]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[29]~q\);

-- Location: LCCOMB_X5_Y53_N28
\comb_logic:num[30]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[30]~1_combout\ = (\comb_logic:num[30]~q\ & (\comb_logic:num[29]~2\ $ (GND))) # (!\comb_logic:num[30]~q\ & (!\comb_logic:num[29]~2\ & VCC))
-- \comb_logic:num[30]~2\ = CARRY((\comb_logic:num[30]~q\ & !\comb_logic:num[29]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[30]~q\,
	datad => VCC,
	cin => \comb_logic:num[29]~2\,
	combout => \comb_logic:num[30]~1_combout\,
	cout => \comb_logic:num[30]~2\);

-- Location: FF_X5_Y53_N29
\comb_logic:num[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[30]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[30]~q\);

-- Location: LCCOMB_X5_Y53_N30
\comb_logic:num[31]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[31]~1_combout\ = \comb_logic:num[31]~q\ $ (\comb_logic:num[30]~2\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[31]~q\,
	cin => \comb_logic:num[30]~2\,
	combout => \comb_logic:num[31]~1_combout\);

-- Location: FF_X5_Y53_N31
\comb_logic:num[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[31]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[31]~q\);

-- Location: LCCOMB_X4_Y54_N0
\Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~8_combout\ = (!\comb_logic:num[2]~q\ & (\comb_logic:num[4]~q\ & (!\comb_logic:num[0]~q\ & !\comb_logic:num[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[2]~q\,
	datab => \comb_logic:num[4]~q\,
	datac => \comb_logic:num[0]~q\,
	datad => \comb_logic:num[1]~q\,
	combout => \Equal2~8_combout\);

-- Location: LCCOMB_X4_Y54_N22
\Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~1_combout\ = (!\comb_logic:num[10]~q\ & (!\comb_logic:num[11]~q\ & (!\comb_logic:num[13]~q\ & !\comb_logic:num[12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[10]~q\,
	datab => \comb_logic:num[11]~q\,
	datac => \comb_logic:num[13]~q\,
	datad => \comb_logic:num[12]~q\,
	combout => \Equal2~1_combout\);

-- Location: LCCOMB_X4_Y54_N16
\Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~0_combout\ = (!\comb_logic:num[9]~q\ & (!\comb_logic:num[7]~q\ & (!\comb_logic:num[6]~q\ & !\comb_logic:num[8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[9]~q\,
	datab => \comb_logic:num[7]~q\,
	datac => \comb_logic:num[6]~q\,
	datad => \comb_logic:num[8]~q\,
	combout => \Equal2~0_combout\);

-- Location: LCCOMB_X4_Y54_N8
\Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~2_combout\ = (!\comb_logic:num[15]~q\ & (!\comb_logic:num[14]~q\ & (!\comb_logic:num[16]~q\ & !\comb_logic:num[17]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[15]~q\,
	datab => \comb_logic:num[14]~q\,
	datac => \comb_logic:num[16]~q\,
	datad => \comb_logic:num[17]~q\,
	combout => \Equal2~2_combout\);

-- Location: LCCOMB_X4_Y53_N0
\Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~3_combout\ = (!\comb_logic:num[19]~q\ & (!\comb_logic:num[21]~q\ & (!\comb_logic:num[20]~q\ & !\comb_logic:num[18]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[19]~q\,
	datab => \comb_logic:num[21]~q\,
	datac => \comb_logic:num[20]~q\,
	datad => \comb_logic:num[18]~q\,
	combout => \Equal2~3_combout\);

-- Location: LCCOMB_X4_Y54_N14
\Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~4_combout\ = (\Equal2~1_combout\ & (\Equal2~0_combout\ & (\Equal2~2_combout\ & \Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal2~1_combout\,
	datab => \Equal2~0_combout\,
	datac => \Equal2~2_combout\,
	datad => \Equal2~3_combout\,
	combout => \Equal2~4_combout\);

-- Location: LCCOMB_X4_Y54_N20
\Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~6_combout\ = (!\comb_logic:num[28]~q\ & (!\comb_logic:num[27]~q\ & (!\comb_logic:num[29]~q\ & !\comb_logic:num[26]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[28]~q\,
	datab => \comb_logic:num[27]~q\,
	datac => \comb_logic:num[29]~q\,
	datad => \comb_logic:num[26]~q\,
	combout => \Equal2~6_combout\);

-- Location: LCCOMB_X4_Y53_N14
\Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~5_combout\ = (!\comb_logic:num[22]~q\ & (!\comb_logic:num[25]~q\ & (!\comb_logic:num[23]~q\ & !\comb_logic:num[24]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[22]~q\,
	datab => \comb_logic:num[25]~q\,
	datac => \comb_logic:num[23]~q\,
	datad => \comb_logic:num[24]~q\,
	combout => \Equal2~5_combout\);

-- Location: LCCOMB_X4_Y54_N2
\Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~7_combout\ = (\Equal2~6_combout\ & (!\comb_logic:num[30]~q\ & \Equal2~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal2~6_combout\,
	datac => \comb_logic:num[30]~q\,
	datad => \Equal2~5_combout\,
	combout => \Equal2~7_combout\);

-- Location: LCCOMB_X4_Y54_N10
\Equal2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~9_combout\ = (!\comb_logic:num[31]~q\ & (\Equal2~8_combout\ & (\Equal2~4_combout\ & \Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[31]~q\,
	datab => \Equal2~8_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~7_combout\,
	combout => \Equal2~9_combout\);

-- Location: LCCOMB_X4_Y54_N6
\Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~0_combout\ = (!\comb_logic:num[3]~q\ & (\Selector38~0_combout\ & (!\comb_logic:num[5]~q\ & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[3]~q\,
	datab => \Selector38~0_combout\,
	datac => \comb_logic:num[5]~q\,
	datad => \Equal2~9_combout\,
	combout => \Selector39~0_combout\);

-- Location: LCCOMB_X4_Y54_N26
\LessThan2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan2~0_combout\ = ((!\comb_logic:num[4]~q\ & !\comb_logic:num[3]~q\)) # (!\comb_logic:num[5]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[5]~q\,
	datac => \comb_logic:num[4]~q\,
	datad => \comb_logic:num[3]~q\,
	combout => \LessThan2~0_combout\);

-- Location: LCCOMB_X4_Y54_N24
\Equal2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal2~10_combout\ = (!\comb_logic:num[30]~q\ & (\Equal2~6_combout\ & (\Equal2~4_combout\ & \Equal2~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[30]~q\,
	datab => \Equal2~6_combout\,
	datac => \Equal2~4_combout\,
	datad => \Equal2~5_combout\,
	combout => \Equal2~10_combout\);

-- Location: LCCOMB_X6_Y54_N14
\estado~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado~12_combout\ = (\comb_logic:num[31]~q\) # (((\LessThan2~0_combout\ & \Equal2~10_combout\)) # (!\estado~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[31]~q\,
	datab => \LessThan2~0_combout\,
	datac => \Equal2~10_combout\,
	datad => \estado~11_combout\,
	combout => \estado~12_combout\);

-- Location: LCCOMB_X4_Y54_N12
\Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector39~1_combout\ = (\Selector39~0_combout\) # ((\estado.saltoLinea~q\ & \estado~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector39~0_combout\,
	datac => \estado.saltoLinea~q\,
	datad => \estado~12_combout\,
	combout => \Selector39~1_combout\);

-- Location: FF_X4_Y54_N13
\estado.saltoLinea\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector39~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.saltoLinea~q\);

-- Location: LCCOMB_X6_Y54_N18
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\comb_logic:contar[31]~q\) # ((\LessThan1~2_combout\ & \Equal0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \comb_logic:contar[31]~q\,
	datad => \Equal0~10_combout\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X6_Y53_N0
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\estado.listo~q\ & (((!\comb_logic~0_combout\) # (!\letDif~q\)) # (!\Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.listo~q\,
	datab => \Equal0~9_combout\,
	datac => \letDif~q\,
	datad => \comb_logic~0_combout\,
	combout => \Selector42~0_combout\);

-- Location: LCCOMB_X6_Y54_N28
\Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\estado.saltoLinea~q\ & (((!\LessThan1~3_combout\ & \Selector42~0_combout\)) # (!\estado~12_combout\))) # (!\estado.saltoLinea~q\ & (!\LessThan1~3_combout\ & ((\Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.saltoLinea~q\,
	datab => \LessThan1~3_combout\,
	datac => \estado~12_combout\,
	datad => \Selector42~0_combout\,
	combout => \Selector37~1_combout\);

-- Location: LCCOMB_X6_Y54_N20
\Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\Selector37~1_combout\) # ((\Selector37~0_combout\ & \Equal4~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Selector37~0_combout\,
	datac => \Equal4~9_combout\,
	datad => \Selector37~1_combout\,
	combout => \Selector37~2_combout\);

-- Location: FF_X6_Y54_N21
\estado.fin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector37~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.fin~q\);

-- Location: FF_X5_Y52_N25
\comb_logic:contar[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[16]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[16]~q\);

-- Location: LCCOMB_X7_Y51_N2
\comb_logic:contar[17]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[17]~1_combout\ = (\comb_logic:contar[17]~q\ & (!\comb_logic:contar[16]~2\)) # (!\comb_logic:contar[17]~q\ & ((\comb_logic:contar[16]~2\) # (GND)))
-- \comb_logic:contar[17]~2\ = CARRY((!\comb_logic:contar[16]~2\) # (!\comb_logic:contar[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[17]~q\,
	datad => VCC,
	cin => \comb_logic:contar[16]~2\,
	combout => \comb_logic:contar[17]~1_combout\,
	cout => \comb_logic:contar[17]~2\);

-- Location: FF_X5_Y52_N7
\comb_logic:contar[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[17]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[17]~q\);

-- Location: LCCOMB_X7_Y51_N4
\comb_logic:contar[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[18]~1_combout\ = (\comb_logic:contar[18]~q\ & (\comb_logic:contar[17]~2\ $ (GND))) # (!\comb_logic:contar[18]~q\ & (!\comb_logic:contar[17]~2\ & VCC))
-- \comb_logic:contar[18]~2\ = CARRY((\comb_logic:contar[18]~q\ & !\comb_logic:contar[17]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[18]~q\,
	datad => VCC,
	cin => \comb_logic:contar[17]~2\,
	combout => \comb_logic:contar[18]~1_combout\,
	cout => \comb_logic:contar[18]~2\);

-- Location: FF_X5_Y52_N21
\comb_logic:contar[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[18]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[18]~q\);

-- Location: LCCOMB_X7_Y51_N6
\comb_logic:contar[19]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[19]~1_combout\ = (\comb_logic:contar[19]~q\ & (!\comb_logic:contar[18]~2\)) # (!\comb_logic:contar[19]~q\ & ((\comb_logic:contar[18]~2\) # (GND)))
-- \comb_logic:contar[19]~2\ = CARRY((!\comb_logic:contar[18]~2\) # (!\comb_logic:contar[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[19]~q\,
	datad => VCC,
	cin => \comb_logic:contar[18]~2\,
	combout => \comb_logic:contar[19]~1_combout\,
	cout => \comb_logic:contar[19]~2\);

-- Location: FF_X5_Y52_N31
\comb_logic:contar[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[19]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[19]~q\);

-- Location: LCCOMB_X7_Y51_N8
\comb_logic:contar[20]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[20]~1_combout\ = (\comb_logic:contar[20]~q\ & (\comb_logic:contar[19]~2\ $ (GND))) # (!\comb_logic:contar[20]~q\ & (!\comb_logic:contar[19]~2\ & VCC))
-- \comb_logic:contar[20]~2\ = CARRY((\comb_logic:contar[20]~q\ & !\comb_logic:contar[19]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[20]~q\,
	datad => VCC,
	cin => \comb_logic:contar[19]~2\,
	combout => \comb_logic:contar[20]~1_combout\,
	cout => \comb_logic:contar[20]~2\);

-- Location: FF_X5_Y52_N5
\comb_logic:contar[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[20]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[20]~q\);

-- Location: LCCOMB_X7_Y51_N10
\comb_logic:contar[21]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[21]~1_combout\ = (\comb_logic:contar[21]~q\ & (!\comb_logic:contar[20]~2\)) # (!\comb_logic:contar[21]~q\ & ((\comb_logic:contar[20]~2\) # (GND)))
-- \comb_logic:contar[21]~2\ = CARRY((!\comb_logic:contar[20]~2\) # (!\comb_logic:contar[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[21]~q\,
	datad => VCC,
	cin => \comb_logic:contar[20]~2\,
	combout => \comb_logic:contar[21]~1_combout\,
	cout => \comb_logic:contar[21]~2\);

-- Location: FF_X5_Y52_N23
\comb_logic:contar[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[21]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[21]~q\);

-- Location: LCCOMB_X7_Y51_N12
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

-- Location: FF_X6_Y52_N9
\comb_logic:contar[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[22]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[22]~q\);

-- Location: LCCOMB_X7_Y51_N14
\comb_logic:contar[23]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[23]~1_combout\ = (\comb_logic:contar[23]~q\ & (!\comb_logic:contar[22]~2\)) # (!\comb_logic:contar[23]~q\ & ((\comb_logic:contar[22]~2\) # (GND)))
-- \comb_logic:contar[23]~2\ = CARRY((!\comb_logic:contar[22]~2\) # (!\comb_logic:contar[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[23]~q\,
	datad => VCC,
	cin => \comb_logic:contar[22]~2\,
	combout => \comb_logic:contar[23]~1_combout\,
	cout => \comb_logic:contar[23]~2\);

-- Location: FF_X6_Y52_N31
\comb_logic:contar[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[23]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[23]~q\);

-- Location: LCCOMB_X7_Y51_N16
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

-- Location: FF_X7_Y51_N17
\comb_logic:contar[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[24]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[24]~q\);

-- Location: LCCOMB_X7_Y51_N18
\comb_logic:contar[25]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[25]~1_combout\ = (\comb_logic:contar[25]~q\ & (!\comb_logic:contar[24]~2\)) # (!\comb_logic:contar[25]~q\ & ((\comb_logic:contar[24]~2\) # (GND)))
-- \comb_logic:contar[25]~2\ = CARRY((!\comb_logic:contar[24]~2\) # (!\comb_logic:contar[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[25]~q\,
	datad => VCC,
	cin => \comb_logic:contar[24]~2\,
	combout => \comb_logic:contar[25]~1_combout\,
	cout => \comb_logic:contar[25]~2\);

-- Location: FF_X6_Y52_N13
\comb_logic:contar[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[25]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[25]~q\);

-- Location: LCCOMB_X7_Y51_N20
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

-- Location: FF_X6_Y52_N7
\comb_logic:contar[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[26]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[26]~q\);

-- Location: LCCOMB_X7_Y51_N22
\comb_logic:contar[27]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[27]~1_combout\ = (\comb_logic:contar[27]~q\ & (!\comb_logic:contar[26]~2\)) # (!\comb_logic:contar[27]~q\ & ((\comb_logic:contar[26]~2\) # (GND)))
-- \comb_logic:contar[27]~2\ = CARRY((!\comb_logic:contar[26]~2\) # (!\comb_logic:contar[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[27]~q\,
	datad => VCC,
	cin => \comb_logic:contar[26]~2\,
	combout => \comb_logic:contar[27]~1_combout\,
	cout => \comb_logic:contar[27]~2\);

-- Location: FF_X6_Y52_N29
\comb_logic:contar[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[27]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[27]~q\);

-- Location: LCCOMB_X7_Y51_N24
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

-- Location: FF_X7_Y51_N25
\comb_logic:contar[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[28]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[28]~q\);

-- Location: LCCOMB_X7_Y51_N26
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

-- Location: FF_X7_Y51_N27
\comb_logic:contar[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[29]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[29]~q\);

-- Location: FF_X7_Y51_N29
\comb_logic:contar[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[30]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[30]~q\);

-- Location: LCCOMB_X6_Y52_N30
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\comb_logic:contar[30]~q\ & (\Equal0~2_combout\ & \Equal0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[30]~q\,
	datab => \Equal0~2_combout\,
	datad => \Equal0~3_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X6_Y52_N10
\Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~11_combout\ = (!\comb_logic:contar[15]~q\ & !\comb_logic:contar[14]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_logic:contar[15]~q\,
	datad => \comb_logic:contar[14]~q\,
	combout => \Equal0~11_combout\);

-- Location: LCCOMB_X5_Y52_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\comb_logic:contar[19]~q\ & (!\comb_logic:contar[20]~q\ & ((!\comb_logic:contar[18]~q\) # (!\comb_logic:contar[17]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[17]~q\,
	datab => \comb_logic:contar[19]~q\,
	datac => \comb_logic:contar[20]~q\,
	datad => \comb_logic:contar[18]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X6_Y53_N20
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!\comb_logic:contar[6]~q\ & !\comb_logic:contar[5]~q\)) # (!\comb_logic:contar[8]~q\)) # (!\comb_logic:contar[7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[7]~q\,
	datab => \comb_logic:contar[6]~q\,
	datac => \comb_logic:contar[8]~q\,
	datad => \comb_logic:contar[5]~q\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X6_Y53_N22
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\comb_logic:contar[11]~q\) # ((\comb_logic:contar[10]~q\ & ((\comb_logic:contar[9]~q\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[11]~q\,
	datab => \comb_logic:contar[10]~q\,
	datac => \comb_logic:contar[9]~q\,
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X6_Y53_N28
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\ & (((!\comb_logic:contar[12]~q\ & !\LessThan0~3_combout\)) # (!\comb_logic:contar[13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \comb_logic:contar[12]~q\,
	datac => \LessThan0~3_combout\,
	datad => \comb_logic:contar[13]~q\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X6_Y53_N30
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((\LessThan0~1_combout\) # ((\Equal0~11_combout\ & \LessThan0~4_combout\))) # (!\comb_logic:contar[21]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[21]~q\,
	datab => \Equal0~11_combout\,
	datac => \LessThan0~1_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X6_Y54_N2
\Selector40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~1_combout\ = (\estado.encender~q\) # ((!\comb_logic:contar[31]~q\ & ((!\LessThan0~5_combout\) # (!\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~10_combout\,
	datab => \comb_logic:contar[31]~q\,
	datac => \estado.encender~q\,
	datad => \LessThan0~5_combout\,
	combout => \Selector40~1_combout\);

-- Location: FF_X6_Y54_N3
\estado.encender\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector40~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.encender~q\);

-- Location: LCCOMB_X6_Y53_N24
\comb_logic:contar[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[1]~3_combout\ = (\Equal0~10_combout\ & ((\estado.encender~q\ & ((\LessThan1~2_combout\))) # (!\estado.encender~q\ & (\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \Equal0~10_combout\,
	datac => \LessThan0~5_combout\,
	datad => \LessThan1~2_combout\,
	combout => \comb_logic:contar[1]~3_combout\);

-- Location: LCCOMB_X6_Y53_N8
\comb_logic:contar[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[1]~5_combout\ = (!\comb_logic:contar[31]~q\ & (!\comb_logic:contar[1]~3_combout\ & ((!\comb_logic:contar[1]~4_combout\) # (!\estado.encender~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \comb_logic:contar[31]~q\,
	datac => \comb_logic:contar[1]~4_combout\,
	datad => \comb_logic:contar[1]~3_combout\,
	combout => \comb_logic:contar[1]~5_combout\);

-- Location: FF_X7_Y52_N1
\comb_logic:contar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[0]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[0]~q\);

-- Location: LCCOMB_X7_Y52_N2
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

-- Location: FF_X7_Y52_N3
\comb_logic:contar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[1]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[1]~q\);

-- Location: LCCOMB_X7_Y52_N4
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

-- Location: FF_X7_Y52_N5
\comb_logic:contar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[2]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[2]~q\);

-- Location: LCCOMB_X7_Y52_N6
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

-- Location: FF_X7_Y52_N7
\comb_logic:contar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[3]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[3]~q\);

-- Location: LCCOMB_X7_Y52_N8
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

-- Location: FF_X7_Y52_N9
\comb_logic:contar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[4]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[4]~q\);

-- Location: LCCOMB_X7_Y52_N10
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

-- Location: FF_X7_Y52_N11
\comb_logic:contar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[5]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[5]~q\);

-- Location: LCCOMB_X7_Y52_N12
\comb_logic:contar[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[6]~1_combout\ = (\comb_logic:contar[6]~q\ & (\comb_logic:contar[5]~2\ $ (GND))) # (!\comb_logic:contar[6]~q\ & (!\comb_logic:contar[5]~2\ & VCC))
-- \comb_logic:contar[6]~2\ = CARRY((\comb_logic:contar[6]~q\ & !\comb_logic:contar[5]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[6]~q\,
	datad => VCC,
	cin => \comb_logic:contar[5]~2\,
	combout => \comb_logic:contar[6]~1_combout\,
	cout => \comb_logic:contar[6]~2\);

-- Location: FF_X7_Y52_N13
\comb_logic:contar[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[6]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[6]~q\);

-- Location: LCCOMB_X7_Y52_N14
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

-- Location: FF_X7_Y52_N15
\comb_logic:contar[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[7]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[7]~q\);

-- Location: LCCOMB_X7_Y52_N16
\comb_logic:contar[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[8]~1_combout\ = (\comb_logic:contar[8]~q\ & (\comb_logic:contar[7]~2\ $ (GND))) # (!\comb_logic:contar[8]~q\ & (!\comb_logic:contar[7]~2\ & VCC))
-- \comb_logic:contar[8]~2\ = CARRY((\comb_logic:contar[8]~q\ & !\comb_logic:contar[7]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[8]~q\,
	datad => VCC,
	cin => \comb_logic:contar[7]~2\,
	combout => \comb_logic:contar[8]~1_combout\,
	cout => \comb_logic:contar[8]~2\);

-- Location: FF_X7_Y52_N17
\comb_logic:contar[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[8]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[8]~q\);

-- Location: LCCOMB_X7_Y52_N18
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

-- Location: FF_X7_Y52_N19
\comb_logic:contar[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[9]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[9]~q\);

-- Location: LCCOMB_X7_Y52_N20
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

-- Location: FF_X7_Y52_N21
\comb_logic:contar[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[10]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[10]~q\);

-- Location: LCCOMB_X7_Y52_N22
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

-- Location: FF_X7_Y52_N23
\comb_logic:contar[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[11]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[11]~q\);

-- Location: LCCOMB_X7_Y52_N24
\comb_logic:contar[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[12]~1_combout\ = (\comb_logic:contar[12]~q\ & (\comb_logic:contar[11]~2\ $ (GND))) # (!\comb_logic:contar[12]~q\ & (!\comb_logic:contar[11]~2\ & VCC))
-- \comb_logic:contar[12]~2\ = CARRY((\comb_logic:contar[12]~q\ & !\comb_logic:contar[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[12]~q\,
	datad => VCC,
	cin => \comb_logic:contar[11]~2\,
	combout => \comb_logic:contar[12]~1_combout\,
	cout => \comb_logic:contar[12]~2\);

-- Location: FF_X7_Y52_N25
\comb_logic:contar[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[12]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[12]~q\);

-- Location: LCCOMB_X7_Y52_N26
\comb_logic:contar[13]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[13]~1_combout\ = (\comb_logic:contar[13]~q\ & (!\comb_logic:contar[12]~2\)) # (!\comb_logic:contar[13]~q\ & ((\comb_logic:contar[12]~2\) # (GND)))
-- \comb_logic:contar[13]~2\ = CARRY((!\comb_logic:contar[12]~2\) # (!\comb_logic:contar[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[13]~q\,
	datad => VCC,
	cin => \comb_logic:contar[12]~2\,
	combout => \comb_logic:contar[13]~1_combout\,
	cout => \comb_logic:contar[13]~2\);

-- Location: FF_X7_Y52_N27
\comb_logic:contar[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[13]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[13]~q\);

-- Location: LCCOMB_X7_Y52_N28
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

-- Location: FF_X7_Y52_N29
\comb_logic:contar[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[14]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[14]~q\);

-- Location: FF_X7_Y52_N31
\comb_logic:contar[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[15]~1_combout\,
	sclr => \comb_logic:contar[1]~5_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[15]~q\);

-- Location: LCCOMB_X6_Y52_N12
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!\comb_logic:contar[7]~q\ & !\comb_logic:contar[6]~q\)) # (!\comb_logic:contar[9]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[7]~q\,
	datab => \comb_logic:contar[6]~q\,
	datad => \comb_logic:contar[9]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X6_Y52_N16
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\Equal0~1_combout\ & ((\LessThan1~0_combout\) # ((\Equal0~0_combout\) # (!\comb_logic:contar[8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \comb_logic:contar[8]~q\,
	datad => \Equal0~1_combout\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X6_Y52_N22
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (\Equal0~5_combout\ & (((\LessThan1~1_combout\) # (!\comb_logic:contar[14]~q\)) # (!\comb_logic:contar[15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[15]~q\,
	datab => \comb_logic:contar[14]~q\,
	datac => \Equal0~5_combout\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X6_Y52_N24
\estado~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado~11_combout\ = (!\comb_logic:contar[31]~q\ & (!\Equal0~9_combout\ & ((!\Equal0~10_combout\) # (!\LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~2_combout\,
	datab => \Equal0~10_combout\,
	datac => \comb_logic:contar[31]~q\,
	datad => \Equal0~9_combout\,
	combout => \estado~11_combout\);

-- Location: LCCOMB_X4_Y54_N28
\Selector38~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~1_combout\ = (\comb_logic:num[3]~q\ & (\comb_logic:num[5]~q\ & (\Selector38~0_combout\ & \Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[3]~q\,
	datab => \comb_logic:num[5]~q\,
	datac => \Selector38~0_combout\,
	datad => \Equal2~9_combout\,
	combout => \Selector38~1_combout\);

-- Location: LCCOMB_X5_Y52_N28
\Selector38~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector38~2_combout\ = (\Selector38~1_combout\) # ((!\estado~11_combout\ & \estado.home~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado~11_combout\,
	datac => \estado.home~q\,
	datad => \Selector38~1_combout\,
	combout => \Selector38~2_combout\);

-- Location: FF_X5_Y52_N29
\estado.home\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector38~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.home~q\);

-- Location: LCCOMB_X5_Y52_N6
\comb_logic:num[25]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[25]~3_combout\ = (\estado.home~q\) # (\estado.fin~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.home~q\,
	datad => \estado.fin~q\,
	combout => \comb_logic:num[25]~3_combout\);

-- Location: FF_X5_Y54_N1
\comb_logic:num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[0]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[0]~q\);

-- Location: LCCOMB_X5_Y54_N2
\comb_logic:num[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[1]~1_combout\ = (\comb_logic:num[1]~q\ & (!\comb_logic:num[0]~2\)) # (!\comb_logic:num[1]~q\ & ((\comb_logic:num[0]~2\) # (GND)))
-- \comb_logic:num[1]~2\ = CARRY((!\comb_logic:num[0]~2\) # (!\comb_logic:num[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[1]~q\,
	datad => VCC,
	cin => \comb_logic:num[0]~2\,
	combout => \comb_logic:num[1]~1_combout\,
	cout => \comb_logic:num[1]~2\);

-- Location: FF_X5_Y54_N3
\comb_logic:num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[1]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[1]~q\);

-- Location: LCCOMB_X5_Y54_N4
\comb_logic:num[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:num[2]~1_combout\ = (\comb_logic:num[2]~q\ & (\comb_logic:num[1]~2\ $ (GND))) # (!\comb_logic:num[2]~q\ & (!\comb_logic:num[1]~2\ & VCC))
-- \comb_logic:num[2]~2\ = CARRY((\comb_logic:num[2]~q\ & !\comb_logic:num[1]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:num[2]~q\,
	datad => VCC,
	cin => \comb_logic:num[1]~2\,
	combout => \comb_logic:num[2]~1_combout\,
	cout => \comb_logic:num[2]~2\);

-- Location: FF_X5_Y54_N5
\comb_logic:num[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[2]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[2]~q\);

-- Location: FF_X5_Y54_N7
\comb_logic:num[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:num[3]~1_combout\,
	sclr => \comb_logic:num[25]~3_combout\,
	ena => \comb_logic:num[25]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:num[3]~q\);

-- Location: LCCOMB_X4_Y54_N18
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\Selector38~0_combout\ & ((\comb_logic:num[3]~q\ $ (\comb_logic:num[5]~q\)) # (!\Equal2~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:num[3]~q\,
	datab => \comb_logic:num[5]~q\,
	datac => \Selector38~0_combout\,
	datad => \Equal2~9_combout\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X5_Y50_N0
\Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~0_combout\ = (\reset~input_o\ & \estado.fin~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \estado.fin~q\,
	combout => \Selector34~0_combout\);

-- Location: LCCOMB_X6_Y54_N16
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (!\comb_logic:contar[31]~q\ & (!\estado.encender~q\ & ((!\LessThan0~5_combout\) # (!\Equal0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[31]~q\,
	datab => \Equal0~10_combout\,
	datac => \estado.encender~q\,
	datad => \LessThan0~5_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X6_Y54_N24
\Selector32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\Selector32~0_combout\) # ((!\estado~11_combout\ & \estado.configpantalla~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado~11_combout\,
	datac => \estado.configpantalla~q\,
	datad => \Selector32~0_combout\,
	combout => \Selector32~1_combout\);

-- Location: FF_X6_Y54_N25
\estado.configpantalla\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector32~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.configpantalla~q\);

-- Location: FF_X5_Y50_N1
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
	ena => \estado~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.encenderdisplay~q\);

-- Location: LCCOMB_X5_Y50_N26
\Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector34~1_combout\ = (\Selector34~0_combout\) # ((\estado~11_combout\ & (\estado.encenderdisplay~q\)) # (!\estado~11_combout\ & ((\estado.limpiardisplay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector34~0_combout\,
	datab => \estado.encenderdisplay~q\,
	datac => \estado.limpiardisplay~q\,
	datad => \estado~11_combout\,
	combout => \Selector34~1_combout\);

-- Location: FF_X5_Y50_N27
\estado.limpiardisplay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector34~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.limpiardisplay~q\);

-- Location: FF_X5_Y50_N15
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
	ena => \estado~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.configcursor~q\);

-- Location: LCCOMB_X5_Y50_N16
\Selector50~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~5_combout\ = (!\estado.configcursor~q\ & !\estado.home~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.configcursor~q\,
	datad => \estado.home~q\,
	combout => \Selector50~5_combout\);

-- Location: LCCOMB_X6_Y54_N10
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\estado.listo~q\ & ((\LessThan1~3_combout\) # ((!\Selector50~5_combout\ & \estado~11_combout\)))) # (!\estado.listo~q\ & (((!\Selector50~5_combout\ & \estado~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.listo~q\,
	datab => \LessThan1~3_combout\,
	datac => \Selector50~5_combout\,
	datad => \estado~11_combout\,
	combout => \Selector36~0_combout\);

-- Location: LCCOMB_X6_Y54_N30
\Selector36~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~1_combout\ = (\Selector40~0_combout\) # ((\Selector36~0_combout\) # ((\Selector37~0_combout\ & !\Equal4~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~0_combout\,
	datab => \Selector37~0_combout\,
	datac => \Equal4~9_combout\,
	datad => \Selector36~0_combout\,
	combout => \Selector36~1_combout\);

-- Location: FF_X6_Y54_N31
\estado.listo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector36~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.listo~q\);

-- Location: LCCOMB_X6_Y53_N2
\Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~0_combout\ = (\estado.listo~q\ & (\Equal0~9_combout\ & (\letDif~q\ & \comb_logic~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.listo~q\,
	datab => \Equal0~9_combout\,
	datac => \letDif~q\,
	datad => \comb_logic~0_combout\,
	combout => \Selector40~0_combout\);

-- Location: LCCOMB_X5_Y50_N30
\Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~0_combout\ = (\Equal0~9_combout\ & ((\estado.encenderdisplay~q\) # ((\estado.limpiardisplay~q\)))) # (!\Equal0~9_combout\ & (\lcd[0]~reg0_q\ & ((\estado.encenderdisplay~q\) # (\estado.limpiardisplay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \estado.encenderdisplay~q\,
	datac => \estado.limpiardisplay~q\,
	datad => \lcd[0]~reg0_q\,
	combout => \Selector50~0_combout\);

-- Location: LCCOMB_X5_Y50_N14
\Selector50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~1_combout\ = (\estado.configpantalla~q\) # ((\estado.saltoLinea~q\) # ((\estado.configcursor~q\) # (\estado.home~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.configpantalla~q\,
	datab => \estado.saltoLinea~q\,
	datac => \estado.configcursor~q\,
	datad => \estado.home~q\,
	combout => \Selector50~1_combout\);

-- Location: LCCOMB_X5_Y50_N24
\WideOr8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~0_combout\ = (!\estado.fin~q\ & \estado.encender~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.fin~q\,
	datad => \estado.encender~q\,
	combout => \WideOr8~0_combout\);

-- Location: LCCOMB_X5_Y50_N20
\Selector50~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~2_combout\ = (\lcd[0]~reg0_q\ & (((\Selector50~1_combout\ & !\Equal0~9_combout\)) # (!\WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[0]~reg0_q\,
	datab => \Selector50~1_combout\,
	datac => \Equal0~9_combout\,
	datad => \WideOr8~0_combout\,
	combout => \Selector50~2_combout\);

-- Location: LCCOMB_X5_Y50_N2
\Selector50~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~3_combout\ = (\Selector50~0_combout\) # ((\Selector50~2_combout\) # ((\lcd[0]~reg0_q\ & \Selector42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector50~0_combout\,
	datab => \lcd[0]~reg0_q\,
	datac => \Selector42~0_combout\,
	datad => \Selector50~2_combout\,
	combout => \Selector50~3_combout\);

-- Location: LCCOMB_X5_Y50_N6
\Selector50~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector50~4_combout\ = (\Selector50~3_combout\) # ((char(0) & \Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char(0),
	datac => \Selector40~0_combout\,
	datad => \Selector50~3_combout\,
	combout => \Selector50~4_combout\);

-- Location: FF_X5_Y50_N7
\lcd[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector50~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[0]~reg0_q\);

-- Location: LCCOMB_X5_Y50_N10
\Selector49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~1_combout\ = (\estado.limpiardisplay~q\) # ((\estado.saltoLinea~q\) # ((\estado.configcursor~q\) # (\estado.configpantalla~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.limpiardisplay~q\,
	datab => \estado.saltoLinea~q\,
	datac => \estado.configcursor~q\,
	datad => \estado.configpantalla~q\,
	combout => \Selector49~1_combout\);

-- Location: LCCOMB_X5_Y52_N8
\Selector49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~2_combout\ = (\lcd[1]~reg0_q\ & (((!\Equal0~9_combout\ & \Selector49~1_combout\)) # (!\WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[1]~reg0_q\,
	datab => \WideOr8~0_combout\,
	datac => \Equal0~9_combout\,
	datad => \Selector49~1_combout\,
	combout => \Selector49~2_combout\);

-- Location: LCCOMB_X5_Y52_N2
\Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~0_combout\ = (\lcd[1]~reg0_q\ & ((\estado.home~q\) # ((\estado.encenderdisplay~q\)))) # (!\lcd[1]~reg0_q\ & (\Equal0~9_combout\ & ((\estado.home~q\) # (\estado.encenderdisplay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[1]~reg0_q\,
	datab => \estado.home~q\,
	datac => \Equal0~9_combout\,
	datad => \estado.encenderdisplay~q\,
	combout => \Selector49~0_combout\);

-- Location: LCCOMB_X5_Y52_N10
\Selector49~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~3_combout\ = (\Selector49~2_combout\) # ((\Selector49~0_combout\) # ((\lcd[1]~reg0_q\ & \Selector42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[1]~reg0_q\,
	datab => \Selector49~2_combout\,
	datac => \Selector49~0_combout\,
	datad => \Selector42~0_combout\,
	combout => \Selector49~3_combout\);

-- Location: LCCOMB_X5_Y52_N12
\Selector49~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector49~4_combout\ = (\Selector49~3_combout\) # ((char(1) & \Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char(1),
	datac => \Selector40~0_combout\,
	datad => \Selector49~3_combout\,
	combout => \Selector49~4_combout\);

-- Location: FF_X5_Y52_N13
\lcd[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector49~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[1]~reg0_q\);

-- Location: LCCOMB_X5_Y50_N12
\WideOr8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~1_combout\ = (!\estado.configcursor~q\ & !\estado.encenderdisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.configcursor~q\,
	datad => \estado.encenderdisplay~q\,
	combout => \WideOr8~1_combout\);

-- Location: LCCOMB_X5_Y50_N4
\Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~1_combout\ = (\estado.configpantalla~q\) # ((\estado.home~q\) # ((\estado.limpiardisplay~q\) # (\estado.saltoLinea~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.configpantalla~q\,
	datab => \estado.home~q\,
	datac => \estado.limpiardisplay~q\,
	datad => \estado.saltoLinea~q\,
	combout => \Selector48~1_combout\);

-- Location: LCCOMB_X6_Y53_N26
\Selector48~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~2_combout\ = (\Equal0~9_combout\ & (((!\WideOr8~1_combout\)))) # (!\Equal0~9_combout\ & (\lcd[2]~reg0_q\ & ((\Selector48~1_combout\) # (!\WideOr8~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[2]~reg0_q\,
	datab => \WideOr8~1_combout\,
	datac => \Selector48~1_combout\,
	datad => \Equal0~9_combout\,
	combout => \Selector48~2_combout\);

-- Location: LCCOMB_X6_Y53_N16
\Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~0_combout\ = (\lcd[2]~reg0_q\ & ((\Selector42~0_combout\) # ((\Selector40~0_combout\ & char(2))))) # (!\lcd[2]~reg0_q\ & (\Selector40~0_combout\ & (char(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[2]~reg0_q\,
	datab => \Selector40~0_combout\,
	datac => char(2),
	datad => \Selector42~0_combout\,
	combout => \Selector48~0_combout\);

-- Location: LCCOMB_X6_Y53_N12
\Selector48~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~3_combout\ = (\Selector48~2_combout\) # ((\Selector48~0_combout\) # ((!\WideOr8~0_combout\ & \lcd[2]~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~2_combout\,
	datab => \WideOr8~0_combout\,
	datac => \lcd[2]~reg0_q\,
	datad => \Selector48~0_combout\,
	combout => \Selector48~3_combout\);

-- Location: FF_X6_Y53_N13
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

-- Location: LCCOMB_X5_Y50_N18
\Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (!\estado.limpiardisplay~q\ & (!\estado.saltoLinea~q\ & (!\estado.configcursor~q\ & !\estado.home~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.limpiardisplay~q\,
	datab => \estado.saltoLinea~q\,
	datac => \estado.configcursor~q\,
	datad => \estado.home~q\,
	combout => \Selector47~1_combout\);

-- Location: LCCOMB_X6_Y54_N22
\Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~2_combout\ = (\lcd[3]~reg0_q\ & (((!\Selector47~1_combout\ & !\Equal0~9_combout\)) # (!\WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~0_combout\,
	datab => \lcd[3]~reg0_q\,
	datac => \Selector47~1_combout\,
	datad => \Equal0~9_combout\,
	combout => \Selector47~2_combout\);

-- Location: LCCOMB_X6_Y54_N4
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\estado.encenderdisplay~q\ & ((\lcd[3]~reg0_q\) # ((\Equal0~9_combout\)))) # (!\estado.encenderdisplay~q\ & (\estado.configpantalla~q\ & ((\lcd[3]~reg0_q\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encenderdisplay~q\,
	datab => \lcd[3]~reg0_q\,
	datac => \estado.configpantalla~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X6_Y54_N8
\Selector47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~3_combout\ = (\Selector47~2_combout\) # ((\Selector47~0_combout\) # ((\lcd[3]~reg0_q\ & \Selector42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~2_combout\,
	datab => \lcd[3]~reg0_q\,
	datac => \Selector47~0_combout\,
	datad => \Selector42~0_combout\,
	combout => \Selector47~3_combout\);

-- Location: LCCOMB_X6_Y54_N0
\Selector47~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~4_combout\ = (\Selector47~3_combout\) # ((char(3) & \Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char(3),
	datac => \Selector47~3_combout\,
	datad => \Selector40~0_combout\,
	combout => \Selector47~4_combout\);

-- Location: FF_X6_Y54_N1
\lcd[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector47~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[3]~reg0_q\);

-- Location: LCCOMB_X5_Y50_N22
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (!\estado.limpiardisplay~q\ & (!\estado.encenderdisplay~q\ & (!\estado.configcursor~q\ & !\estado.home~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.limpiardisplay~q\,
	datab => \estado.encenderdisplay~q\,
	datac => \estado.configcursor~q\,
	datad => \estado.home~q\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X6_Y50_N6
\Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = (!\estado.saltoLinea~q\ & \Selector46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \estado.saltoLinea~q\,
	datad => \Selector46~0_combout\,
	combout => \Selector46~1_combout\);

-- Location: LCCOMB_X6_Y50_N4
\Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~2_combout\ = (\estado.configpantalla~q\ & (((\Equal0~9_combout\)))) # (!\estado.configpantalla~q\ & (\WideOr8~0_combout\ & ((\Selector46~1_combout\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~1_combout\,
	datab => \WideOr8~0_combout\,
	datac => \estado.configpantalla~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector46~2_combout\);

-- Location: LCCOMB_X6_Y50_N10
\Selector46~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~3_combout\ = (\Selector46~2_combout\ & ((\estado.configpantalla~q\) # ((\lcd[4]~reg0_q\ & \Selector42~0_combout\)))) # (!\Selector46~2_combout\ & (\lcd[4]~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[4]~reg0_q\,
	datab => \Selector46~2_combout\,
	datac => \estado.configpantalla~q\,
	datad => \Selector42~0_combout\,
	combout => \Selector46~3_combout\);

-- Location: LCCOMB_X6_Y50_N12
\Selector46~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~4_combout\ = (\Selector46~3_combout\) # ((char(4) & \Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char(4),
	datac => \Selector40~0_combout\,
	datad => \Selector46~3_combout\,
	combout => \Selector46~4_combout\);

-- Location: FF_X6_Y50_N13
\lcd[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector46~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[4]~reg0_q\);

-- Location: LCCOMB_X6_Y50_N8
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\estado.configpantalla~q\ & (((\lcd[5]~reg0_q\) # (\Equal0~9_combout\)))) # (!\estado.configpantalla~q\ & (\estado.saltoLinea~q\ & ((\lcd[5]~reg0_q\) # (\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.configpantalla~q\,
	datab => \estado.saltoLinea~q\,
	datac => \lcd[5]~reg0_q\,
	datad => \Equal0~9_combout\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X6_Y50_N22
\Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (\lcd[5]~reg0_q\ & (((!\Selector46~0_combout\ & !\Equal0~9_combout\)) # (!\WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector46~0_combout\,
	datab => \WideOr8~0_combout\,
	datac => \lcd[5]~reg0_q\,
	datad => \Equal0~9_combout\,
	combout => \Selector45~1_combout\);

-- Location: LCCOMB_X6_Y50_N24
\Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~2_combout\ = (\Selector45~0_combout\) # ((\Selector45~1_combout\) # ((\lcd[5]~reg0_q\ & \Selector42~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[5]~reg0_q\,
	datab => \Selector45~0_combout\,
	datac => \Selector45~1_combout\,
	datad => \Selector42~0_combout\,
	combout => \Selector45~2_combout\);

-- Location: LCCOMB_X6_Y50_N30
\Selector45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~3_combout\ = (\Selector45~2_combout\) # ((char(5) & \Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => char(5),
	datac => \Selector40~0_combout\,
	datad => \Selector45~2_combout\,
	combout => \Selector45~3_combout\);

-- Location: FF_X6_Y50_N31
\lcd[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector45~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[5]~reg0_q\);

-- Location: LCCOMB_X6_Y50_N26
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (!\Equal0~9_combout\ & ((\estado.configpantalla~q\) # ((\estado.saltoLinea~q\) # (!\Selector46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.configpantalla~q\,
	datab => \Selector46~0_combout\,
	datac => \estado.saltoLinea~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X6_Y50_N16
\Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\lcd[6]~reg0_q\ & (((\Selector44~0_combout\) # (\Selector42~0_combout\)) # (!\WideOr8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \lcd[6]~reg0_q\,
	datab => \WideOr8~0_combout\,
	datac => \Selector44~0_combout\,
	datad => \Selector42~0_combout\,
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X6_Y50_N20
\Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (\Selector44~1_combout\) # ((char(6) & \Selector40~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(6),
	datac => \Selector40~0_combout\,
	datad => \Selector44~1_combout\,
	combout => \Selector44~2_combout\);

-- Location: FF_X6_Y50_N21
\lcd[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector44~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[6]~reg0_q\);

-- Location: LCCOMB_X6_Y50_N18
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\lcd[7]~reg0_q\ & ((\Selector44~0_combout\) # ((\Selector42~0_combout\) # (!\WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector44~0_combout\,
	datab => \WideOr8~0_combout\,
	datac => \lcd[7]~reg0_q\,
	datad => \Selector42~0_combout\,
	combout => \Selector43~0_combout\);

-- Location: FF_X6_Y50_N19
\lcd[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[7]~reg0_q\);

-- Location: LCCOMB_X6_Y50_N2
\Selector40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~2_combout\ = (!\estado.saltoLinea~q\ & (!\estado.configpantalla~q\ & \Selector46~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.saltoLinea~q\,
	datac => \estado.configpantalla~q\,
	datad => \Selector46~0_combout\,
	combout => \Selector40~2_combout\);

-- Location: LCCOMB_X6_Y54_N12
\Selector40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~3_combout\ = (\estado.fin~q\) # ((\LessThan1~3_combout\ & ((\estado.listo~q\) # (!\Selector40~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.listo~q\,
	datab => \estado.fin~q\,
	datac => \Selector40~2_combout\,
	datad => \LessThan1~3_combout\,
	combout => \Selector40~3_combout\);

-- Location: LCCOMB_X6_Y54_N6
\Selector40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~4_combout\ = (\Selector40~0_combout\) # ((\Equal0~9_combout\ & !\Selector40~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datac => \Selector40~2_combout\,
	datad => \Selector40~0_combout\,
	combout => \Selector40~4_combout\);

-- Location: LCCOMB_X6_Y54_N26
\Selector40~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector40~5_combout\ = (\Selector40~4_combout\) # ((\enviar~reg0_q\ & ((\Selector40~3_combout\) # (!\Selector40~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector40~3_combout\,
	datab => \Selector40~1_combout\,
	datac => \enviar~reg0_q\,
	datad => \Selector40~4_combout\,
	combout => \Selector40~5_combout\);

-- Location: FF_X6_Y54_N27
\enviar~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector40~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \enviar~reg0_q\);

-- Location: LCCOMB_X5_Y50_N8
\Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\estado.configpantalla~q\) # ((\estado.home~q\) # (\estado.limpiardisplay~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.configpantalla~q\,
	datab => \estado.home~q\,
	datac => \estado.limpiardisplay~q\,
	combout => \Selector41~1_combout\);

-- Location: LCCOMB_X5_Y50_N28
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = ((\estado.saltoLinea~q\) # ((\estado.listo~q\) # (!\WideOr8~0_combout\))) # (!\WideOr8~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr8~1_combout\,
	datab => \estado.saltoLinea~q\,
	datac => \estado.listo~q\,
	datad => \WideOr8~0_combout\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X6_Y50_N0
\Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~2_combout\ = (\rs~reg0_q\ & ((\Selector41~0_combout\) # ((\Selector41~1_combout\ & !\Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector41~1_combout\,
	datab => \rs~reg0_q\,
	datac => \Selector41~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \Selector41~2_combout\);

-- Location: LCCOMB_X6_Y50_N28
\Selector41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~3_combout\ = (\Selector40~0_combout\) # ((\Selector41~2_combout\) # ((\estado.saltoLinea~q\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.saltoLinea~q\,
	datab => \Equal0~9_combout\,
	datac => \Selector40~0_combout\,
	datad => \Selector41~2_combout\,
	combout => \Selector41~3_combout\);

-- Location: FF_X6_Y50_N29
\rs~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector41~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs~reg0_q\);

-- Location: LCCOMB_X5_Y52_N20
\Selector48~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector48~4_combout\ = (!\Equal0~9_combout\ & \Selector48~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~9_combout\,
	datad => \Selector48~1_combout\,
	combout => \Selector48~4_combout\);

-- Location: LCCOMB_X5_Y52_N18
WideOr8 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr8~combout\ = (\estado.fin~q\) # ((\estado.configcursor~q\) # ((\estado.encenderdisplay~q\) # (!\estado.encender~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.fin~q\,
	datab => \estado.configcursor~q\,
	datac => \estado.encender~q\,
	datad => \estado.encenderdisplay~q\,
	combout => \WideOr8~combout\);

-- Location: LCCOMB_X5_Y52_N14
\Selector42~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~1_combout\ = (\rw~reg0_q\ & ((\Selector48~4_combout\) # ((\WideOr8~combout\) # (\Selector42~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector48~4_combout\,
	datab => \WideOr8~combout\,
	datac => \rw~reg0_q\,
	datad => \Selector42~0_combout\,
	combout => \Selector42~1_combout\);

-- Location: FF_X5_Y52_N15
\rw~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector42~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rw~reg0_q\);

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


