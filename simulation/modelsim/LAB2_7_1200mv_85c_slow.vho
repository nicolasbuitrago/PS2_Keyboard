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

-- DATE "09/03/2018 11:09:38"

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
	clkLED : OUT std_logic;
	ps2_data : IN std_logic;
	ps2_clock : IN std_logic;
	x : OUT std_logic;
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
-- clkLED	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- x	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL ww_clkLED : std_logic;
SIGNAL ww_ps2_data : std_logic;
SIGNAL ww_ps2_clock : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_key : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_lcd : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_enviar : std_logic;
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkLED~output_o\ : std_logic;
SIGNAL \x~output_o\ : std_logic;
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
SIGNAL \x~reg0feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add1~0_combout\ : std_logic;
SIGNAL \i~0_combout\ : std_logic;
SIGNAL \Add1~1\ : std_logic;
SIGNAL \Add1~2_combout\ : std_logic;
SIGNAL \i~2_combout\ : std_logic;
SIGNAL \Add1~3\ : std_logic;
SIGNAL \Add1~4_combout\ : std_logic;
SIGNAL \Add1~5\ : std_logic;
SIGNAL \Add1~6_combout\ : std_logic;
SIGNAL \i~1_combout\ : std_logic;
SIGNAL \Add1~7\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \Add1~19\ : std_logic;
SIGNAL \Add1~20_combout\ : std_logic;
SIGNAL \Add1~21\ : std_logic;
SIGNAL \Add1~22_combout\ : std_logic;
SIGNAL \Add1~23\ : std_logic;
SIGNAL \Add1~24_combout\ : std_logic;
SIGNAL \Add1~25\ : std_logic;
SIGNAL \Add1~26_combout\ : std_logic;
SIGNAL \Add1~27\ : std_logic;
SIGNAL \Add1~28_combout\ : std_logic;
SIGNAL \Add1~29\ : std_logic;
SIGNAL \Add1~30_combout\ : std_logic;
SIGNAL \Add1~31\ : std_logic;
SIGNAL \Add1~32_combout\ : std_logic;
SIGNAL \Add1~33\ : std_logic;
SIGNAL \Add1~34_combout\ : std_logic;
SIGNAL \Add1~35\ : std_logic;
SIGNAL \Add1~36_combout\ : std_logic;
SIGNAL \Add1~37\ : std_logic;
SIGNAL \Add1~38_combout\ : std_logic;
SIGNAL \Add1~39\ : std_logic;
SIGNAL \Add1~40_combout\ : std_logic;
SIGNAL \Add1~41\ : std_logic;
SIGNAL \Add1~42_combout\ : std_logic;
SIGNAL \Add1~43\ : std_logic;
SIGNAL \Add1~44_combout\ : std_logic;
SIGNAL \Add1~45\ : std_logic;
SIGNAL \Add1~46_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Add1~47\ : std_logic;
SIGNAL \Add1~48_combout\ : std_logic;
SIGNAL \Add1~49\ : std_logic;
SIGNAL \Add1~50_combout\ : std_logic;
SIGNAL \Add1~51\ : std_logic;
SIGNAL \Add1~52_combout\ : std_logic;
SIGNAL \Add1~53\ : std_logic;
SIGNAL \Add1~54_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \x~reg0_q\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \ps2_data~input_o\ : std_logic;
SIGNAL \code[0]~0_combout\ : std_logic;
SIGNAL \key[0]~reg0feeder_combout\ : std_logic;
SIGNAL \key[0]~reg0_q\ : std_logic;
SIGNAL \code[1]~1_combout\ : std_logic;
SIGNAL \code[1]~2_combout\ : std_logic;
SIGNAL \key[1]~reg0_q\ : std_logic;
SIGNAL \code[2]~3_combout\ : std_logic;
SIGNAL \key[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~1_combout\ : std_logic;
SIGNAL \code[3]~4_combout\ : std_logic;
SIGNAL \key[3]~reg0feeder_combout\ : std_logic;
SIGNAL \key[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~2_combout\ : std_logic;
SIGNAL \code[4]~5_combout\ : std_logic;
SIGNAL \key[4]~reg0feeder_combout\ : std_logic;
SIGNAL \key[4]~reg0_q\ : std_logic;
SIGNAL \Decoder0~3_combout\ : std_logic;
SIGNAL \code[5]~6_combout\ : std_logic;
SIGNAL \key[5]~reg0_q\ : std_logic;
SIGNAL \code[6]~7_combout\ : std_logic;
SIGNAL \key[6]~reg0_q\ : std_logic;
SIGNAL \code[7]~8_combout\ : std_logic;
SIGNAL \key[7]~reg0feeder_combout\ : std_logic;
SIGNAL \key[7]~reg0_q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \code[8]~9_combout\ : std_logic;
SIGNAL \key[8]~reg0_q\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \code[9]~10_combout\ : std_logic;
SIGNAL \key[9]~reg0feeder_combout\ : std_logic;
SIGNAL \key[9]~reg0_q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \code[10]~11_combout\ : std_logic;
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
SIGNAL \comb_logic:contar[0]~1_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \Selector35~0_combout\ : std_logic;
SIGNAL \comb_logic:contar[3]~3_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \Equal0~11_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Equal0~10_combout\ : std_logic;
SIGNAL \Selector32~0_combout\ : std_logic;
SIGNAL \Selector32~1_combout\ : std_logic;
SIGNAL \estado.configpantalla~q\ : std_logic;
SIGNAL \estado.encenderdisplay~q\ : std_logic;
SIGNAL \estado.limpiardisplay~q\ : std_logic;
SIGNAL \estado.configcursor~q\ : std_logic;
SIGNAL \Selector36~0_combout\ : std_logic;
SIGNAL \estado.listo~q\ : std_logic;
SIGNAL \estado~9_combout\ : std_logic;
SIGNAL \estado.fin~q\ : std_logic;
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
SIGNAL \comb_logic:contar[30]~2\ : std_logic;
SIGNAL \comb_logic:contar[31]~1_combout\ : std_logic;
SIGNAL \comb_logic:contar[31]~q\ : std_logic;
SIGNAL \Selector37~1_combout\ : std_logic;
SIGNAL \estado.encender~q\ : std_logic;
SIGNAL \Selector47~0_combout\ : std_logic;
SIGNAL \Equal0~9_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \char[0]~feeder_combout\ : std_logic;
SIGNAL \char[0]~0_combout\ : std_logic;
SIGNAL \Selector47~1_combout\ : std_logic;
SIGNAL \Selector47~2_combout\ : std_logic;
SIGNAL \Selector47~3_combout\ : std_logic;
SIGNAL \lcd[0]~reg0_q\ : std_logic;
SIGNAL \Selector46~0_combout\ : std_logic;
SIGNAL \Selector46~1_combout\ : std_logic;
SIGNAL \Selector46~2_combout\ : std_logic;
SIGNAL \lcd[1]~reg0_q\ : std_logic;
SIGNAL \Selector45~1_combout\ : std_logic;
SIGNAL \Selector45~0_combout\ : std_logic;
SIGNAL \Selector45~2_combout\ : std_logic;
SIGNAL \Selector45~3_combout\ : std_logic;
SIGNAL \lcd[2]~reg0_q\ : std_logic;
SIGNAL \Selector44~2_combout\ : std_logic;
SIGNAL \Selector44~1_combout\ : std_logic;
SIGNAL \Selector44~0_combout\ : std_logic;
SIGNAL \Selector44~3_combout\ : std_logic;
SIGNAL \lcd[3]~reg0_q\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Selector43~0_combout\ : std_logic;
SIGNAL \lcd[4]~0_combout\ : std_logic;
SIGNAL \lcd[4]~reg0_q\ : std_logic;
SIGNAL \char[5]~1_combout\ : std_logic;
SIGNAL \Selector42~0_combout\ : std_logic;
SIGNAL \lcd[5]~reg0_q\ : std_logic;
SIGNAL \Selector41~0_combout\ : std_logic;
SIGNAL \Selector41~1_combout\ : std_logic;
SIGNAL \Selector41~2_combout\ : std_logic;
SIGNAL \lcd[6]~reg0_q\ : std_logic;
SIGNAL \Selector41~3_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \Selector37~0_combout\ : std_logic;
SIGNAL \Selector37~2_combout\ : std_logic;
SIGNAL \enviar~reg0_q\ : std_logic;
SIGNAL \rs~0_combout\ : std_logic;
SIGNAL \rs~reg0_q\ : std_logic;
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
clkLED <= ww_clkLED;
ww_ps2_data <= ps2_data;
ww_ps2_clock <= ps2_clock;
x <= ww_x;
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

-- Location: IOOBUF_X69_Y73_N16
\clkLED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \clkLED~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\x~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \x~reg0_q\,
	devoe => ww_devoe,
	o => \x~output_o\);

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
	i => GND,
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

-- Location: LCCOMB_X24_Y65_N0
\x~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \x~reg0feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \x~reg0feeder_combout\);

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

-- Location: LCCOMB_X24_Y64_N0
\Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~0_combout\ = i(0) $ (VCC)
-- \Add1~1\ = CARRY(i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datad => VCC,
	combout => \Add1~0_combout\,
	cout => \Add1~1\);

-- Location: LCCOMB_X25_Y64_N2
\i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~0_combout\ = (\Add1~0_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \i~0_combout\);

-- Location: FF_X25_Y64_N3
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

-- Location: LCCOMB_X24_Y64_N2
\Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~2_combout\ = (i(1) & (!\Add1~1\)) # (!i(1) & ((\Add1~1\) # (GND)))
-- \Add1~3\ = CARRY((!\Add1~1\) # (!i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datad => VCC,
	cin => \Add1~1\,
	combout => \Add1~2_combout\,
	cout => \Add1~3\);

-- Location: LCCOMB_X25_Y63_N20
\i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~2_combout\ = (\Add1~2_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~2_combout\,
	datad => \Equal1~10_combout\,
	combout => \i~2_combout\);

-- Location: FF_X24_Y64_N1
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \i~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LCCOMB_X24_Y64_N4
\Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~4_combout\ = (i(2) & (\Add1~3\ $ (GND))) # (!i(2) & (!\Add1~3\ & VCC))
-- \Add1~5\ = CARRY((i(2) & !\Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datad => VCC,
	cin => \Add1~3\,
	combout => \Add1~4_combout\,
	cout => \Add1~5\);

-- Location: FF_X24_Y64_N5
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: LCCOMB_X24_Y64_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (i(3) & (!\Add1~5\)) # (!i(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X25_Y64_N10
\i~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~1_combout\ = (\Add1~6_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~6_combout\,
	datad => \Equal1~10_combout\,
	combout => \i~1_combout\);

-- Location: FF_X25_Y64_N11
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

-- Location: LCCOMB_X24_Y64_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = (i(4) & (\Add1~7\ $ (GND))) # (!i(4) & (!\Add1~7\ & VCC))
-- \Add1~9\ = CARRY((i(4) & !\Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(4),
	datad => VCC,
	cin => \Add1~7\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: FF_X24_Y64_N9
\i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(4));

-- Location: LCCOMB_X24_Y64_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (i(5) & (!\Add1~9\)) # (!i(5) & ((\Add1~9\) # (GND)))
-- \Add1~11\ = CARRY((!\Add1~9\) # (!i(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: FF_X24_Y64_N11
\i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(5));

-- Location: LCCOMB_X24_Y64_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = (i(6) & (\Add1~11\ $ (GND))) # (!i(6) & (!\Add1~11\ & VCC))
-- \Add1~13\ = CARRY((i(6) & !\Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: FF_X24_Y64_N13
\i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(6));

-- Location: LCCOMB_X24_Y64_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (i(7) & (!\Add1~13\)) # (!i(7) & ((\Add1~13\) # (GND)))
-- \Add1~15\ = CARRY((!\Add1~13\) # (!i(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: FF_X24_Y64_N15
\i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(7));

-- Location: LCCOMB_X24_Y64_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = (i(8) & (\Add1~15\ $ (GND))) # (!i(8) & (!\Add1~15\ & VCC))
-- \Add1~17\ = CARRY((i(8) & !\Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(8),
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: FF_X24_Y64_N17
\i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(8));

-- Location: LCCOMB_X24_Y64_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = (i(9) & (!\Add1~17\)) # (!i(9) & ((\Add1~17\) # (GND)))
-- \Add1~19\ = CARRY((!\Add1~17\) # (!i(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(9),
	datad => VCC,
	cin => \Add1~17\,
	combout => \Add1~18_combout\,
	cout => \Add1~19\);

-- Location: FF_X24_Y64_N19
\i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(9));

-- Location: LCCOMB_X24_Y64_N20
\Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~20_combout\ = (i(10) & (\Add1~19\ $ (GND))) # (!i(10) & (!\Add1~19\ & VCC))
-- \Add1~21\ = CARRY((i(10) & !\Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(10),
	datad => VCC,
	cin => \Add1~19\,
	combout => \Add1~20_combout\,
	cout => \Add1~21\);

-- Location: FF_X24_Y64_N21
\i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(10));

-- Location: LCCOMB_X24_Y64_N22
\Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~22_combout\ = (i(11) & (!\Add1~21\)) # (!i(11) & ((\Add1~21\) # (GND)))
-- \Add1~23\ = CARRY((!\Add1~21\) # (!i(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(11),
	datad => VCC,
	cin => \Add1~21\,
	combout => \Add1~22_combout\,
	cout => \Add1~23\);

-- Location: FF_X24_Y64_N23
\i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(11));

-- Location: LCCOMB_X24_Y64_N24
\Add1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~24_combout\ = (i(12) & (\Add1~23\ $ (GND))) # (!i(12) & (!\Add1~23\ & VCC))
-- \Add1~25\ = CARRY((i(12) & !\Add1~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(12),
	datad => VCC,
	cin => \Add1~23\,
	combout => \Add1~24_combout\,
	cout => \Add1~25\);

-- Location: FF_X24_Y64_N25
\i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~24_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(12));

-- Location: LCCOMB_X24_Y64_N26
\Add1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~26_combout\ = (i(13) & (!\Add1~25\)) # (!i(13) & ((\Add1~25\) # (GND)))
-- \Add1~27\ = CARRY((!\Add1~25\) # (!i(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(13),
	datad => VCC,
	cin => \Add1~25\,
	combout => \Add1~26_combout\,
	cout => \Add1~27\);

-- Location: FF_X24_Y64_N27
\i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~26_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(13));

-- Location: LCCOMB_X24_Y64_N28
\Add1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~28_combout\ = (i(14) & (\Add1~27\ $ (GND))) # (!i(14) & (!\Add1~27\ & VCC))
-- \Add1~29\ = CARRY((i(14) & !\Add1~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(14),
	datad => VCC,
	cin => \Add1~27\,
	combout => \Add1~28_combout\,
	cout => \Add1~29\);

-- Location: FF_X24_Y64_N29
\i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~28_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(14));

-- Location: LCCOMB_X24_Y64_N30
\Add1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~30_combout\ = (i(15) & (!\Add1~29\)) # (!i(15) & ((\Add1~29\) # (GND)))
-- \Add1~31\ = CARRY((!\Add1~29\) # (!i(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(15),
	datad => VCC,
	cin => \Add1~29\,
	combout => \Add1~30_combout\,
	cout => \Add1~31\);

-- Location: FF_X24_Y64_N31
\i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(15));

-- Location: LCCOMB_X24_Y63_N0
\Add1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~32_combout\ = (i(16) & (\Add1~31\ $ (GND))) # (!i(16) & (!\Add1~31\ & VCC))
-- \Add1~33\ = CARRY((i(16) & !\Add1~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(16),
	datad => VCC,
	cin => \Add1~31\,
	combout => \Add1~32_combout\,
	cout => \Add1~33\);

-- Location: FF_X24_Y63_N1
\i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(16));

-- Location: LCCOMB_X24_Y63_N2
\Add1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~34_combout\ = (i(17) & (!\Add1~33\)) # (!i(17) & ((\Add1~33\) # (GND)))
-- \Add1~35\ = CARRY((!\Add1~33\) # (!i(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(17),
	datad => VCC,
	cin => \Add1~33\,
	combout => \Add1~34_combout\,
	cout => \Add1~35\);

-- Location: FF_X24_Y63_N3
\i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(17));

-- Location: LCCOMB_X24_Y63_N4
\Add1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~36_combout\ = (i(18) & (\Add1~35\ $ (GND))) # (!i(18) & (!\Add1~35\ & VCC))
-- \Add1~37\ = CARRY((i(18) & !\Add1~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(18),
	datad => VCC,
	cin => \Add1~35\,
	combout => \Add1~36_combout\,
	cout => \Add1~37\);

-- Location: FF_X24_Y63_N5
\i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(18));

-- Location: LCCOMB_X24_Y63_N6
\Add1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~38_combout\ = (i(19) & (!\Add1~37\)) # (!i(19) & ((\Add1~37\) # (GND)))
-- \Add1~39\ = CARRY((!\Add1~37\) # (!i(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(19),
	datad => VCC,
	cin => \Add1~37\,
	combout => \Add1~38_combout\,
	cout => \Add1~39\);

-- Location: FF_X24_Y63_N7
\i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~38_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(19));

-- Location: LCCOMB_X24_Y63_N8
\Add1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~40_combout\ = (i(20) & (\Add1~39\ $ (GND))) # (!i(20) & (!\Add1~39\ & VCC))
-- \Add1~41\ = CARRY((i(20) & !\Add1~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(20),
	datad => VCC,
	cin => \Add1~39\,
	combout => \Add1~40_combout\,
	cout => \Add1~41\);

-- Location: FF_X24_Y63_N9
\i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~40_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(20));

-- Location: LCCOMB_X24_Y63_N10
\Add1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~42_combout\ = (i(21) & (!\Add1~41\)) # (!i(21) & ((\Add1~41\) # (GND)))
-- \Add1~43\ = CARRY((!\Add1~41\) # (!i(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(21),
	datad => VCC,
	cin => \Add1~41\,
	combout => \Add1~42_combout\,
	cout => \Add1~43\);

-- Location: FF_X24_Y63_N11
\i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~42_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(21));

-- Location: LCCOMB_X24_Y63_N12
\Add1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~44_combout\ = (i(22) & (\Add1~43\ $ (GND))) # (!i(22) & (!\Add1~43\ & VCC))
-- \Add1~45\ = CARRY((i(22) & !\Add1~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(22),
	datad => VCC,
	cin => \Add1~43\,
	combout => \Add1~44_combout\,
	cout => \Add1~45\);

-- Location: FF_X24_Y63_N13
\i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~44_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(22));

-- Location: LCCOMB_X24_Y63_N14
\Add1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~46_combout\ = (i(23) & (!\Add1~45\)) # (!i(23) & ((\Add1~45\) # (GND)))
-- \Add1~47\ = CARRY((!\Add1~45\) # (!i(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(23),
	datad => VCC,
	cin => \Add1~45\,
	combout => \Add1~46_combout\,
	cout => \Add1~47\);

-- Location: FF_X24_Y63_N15
\i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(23));

-- Location: LCCOMB_X25_Y63_N22
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!i(23) & (!i(22) & (!i(21) & !i(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(23),
	datab => i(22),
	datac => i(21),
	datad => i(20),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X24_Y63_N16
\Add1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~48_combout\ = (i(24) & (\Add1~47\ $ (GND))) # (!i(24) & (!\Add1~47\ & VCC))
-- \Add1~49\ = CARRY((i(24) & !\Add1~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(24),
	datad => VCC,
	cin => \Add1~47\,
	combout => \Add1~48_combout\,
	cout => \Add1~49\);

-- Location: FF_X24_Y63_N17
\i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(24));

-- Location: LCCOMB_X24_Y63_N18
\Add1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~50_combout\ = (i(25) & (!\Add1~49\)) # (!i(25) & ((\Add1~49\) # (GND)))
-- \Add1~51\ = CARRY((!\Add1~49\) # (!i(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(25),
	datad => VCC,
	cin => \Add1~49\,
	combout => \Add1~50_combout\,
	cout => \Add1~51\);

-- Location: FF_X24_Y63_N19
\i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~50_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(25));

-- Location: LCCOMB_X24_Y63_N20
\Add1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~52_combout\ = (i(26) & (\Add1~51\ $ (GND))) # (!i(26) & (!\Add1~51\ & VCC))
-- \Add1~53\ = CARRY((i(26) & !\Add1~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(26),
	datad => VCC,
	cin => \Add1~51\,
	combout => \Add1~52_combout\,
	cout => \Add1~53\);

-- Location: FF_X24_Y63_N21
\i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(26));

-- Location: LCCOMB_X24_Y63_N22
\Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~54_combout\ = (i(27) & (!\Add1~53\)) # (!i(27) & ((\Add1~53\) # (GND)))
-- \Add1~55\ = CARRY((!\Add1~53\) # (!i(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(27),
	datad => VCC,
	cin => \Add1~53\,
	combout => \Add1~54_combout\,
	cout => \Add1~55\);

-- Location: FF_X24_Y63_N23
\i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(27));

-- Location: LCCOMB_X25_Y63_N16
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!i(26) & (!i(25) & (!i(24) & !i(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(26),
	datab => i(25),
	datac => i(24),
	datad => i(27),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X25_Y63_N30
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!i(13) & (!i(14) & (!i(12) & !i(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(13),
	datab => i(14),
	datac => i(12),
	datad => i(15),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X25_Y63_N0
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!i(16) & (!i(17) & (!i(18) & !i(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(16),
	datab => i(17),
	datac => i(18),
	datad => i(19),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X25_Y63_N14
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!i(4) & (!i(7) & (!i(5) & !i(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(4),
	datab => i(7),
	datac => i(5),
	datad => i(6),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X25_Y63_N24
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!i(9) & (!i(10) & (!i(8) & !i(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(9),
	datab => i(10),
	datac => i(8),
	datad => i(11),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X25_Y63_N8
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~6_combout\ & (\Equal1~5_combout\ & (\Equal1~8_combout\ & \Equal1~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Equal1~5_combout\,
	datac => \Equal1~8_combout\,
	datad => \Equal1~7_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X24_Y63_N24
\Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~56_combout\ = (i(28) & (\Add1~55\ $ (GND))) # (!i(28) & (!\Add1~55\ & VCC))
-- \Add1~57\ = CARRY((i(28) & !\Add1~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(28),
	datad => VCC,
	cin => \Add1~55\,
	combout => \Add1~56_combout\,
	cout => \Add1~57\);

-- Location: FF_X24_Y63_N25
\i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~56_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(28));

-- Location: LCCOMB_X24_Y63_N26
\Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~58_combout\ = (i(29) & (!\Add1~57\)) # (!i(29) & ((\Add1~57\) # (GND)))
-- \Add1~59\ = CARRY((!\Add1~57\) # (!i(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datad => VCC,
	cin => \Add1~57\,
	combout => \Add1~58_combout\,
	cout => \Add1~59\);

-- Location: FF_X24_Y63_N27
\i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~58_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(29));

-- Location: LCCOMB_X24_Y63_N28
\Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~60_combout\ = (i(30) & (\Add1~59\ $ (GND))) # (!i(30) & (!\Add1~59\ & VCC))
-- \Add1~61\ = CARRY((i(30) & !\Add1~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(30),
	datad => VCC,
	cin => \Add1~59\,
	combout => \Add1~60_combout\,
	cout => \Add1~61\);

-- Location: FF_X24_Y63_N29
\i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~60_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(30));

-- Location: LCCOMB_X24_Y63_N30
\Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~62_combout\ = i(31) $ (\Add1~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(31),
	cin => \Add1~61\,
	combout => \Add1~62_combout\);

-- Location: FF_X24_Y63_N31
\i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Add1~62_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(31));

-- Location: LCCOMB_X25_Y63_N4
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!i(29) & (!i(31) & (!i(30) & !i(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datab => i(31),
	datac => i(30),
	datad => i(28),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X25_Y64_N8
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!i(2) & !i(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i(2),
	datad => i(0),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X25_Y63_N10
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (i(1) & (i(3) & (\Equal1~1_combout\ & \Equal1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(3),
	datac => \Equal1~1_combout\,
	datad => \Equal1~0_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X25_Y63_N6
\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~4_combout\ & (\Equal1~3_combout\ & (\Equal1~9_combout\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~4_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~9_combout\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~10_combout\);

-- Location: FF_X24_Y65_N1
\x~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \x~reg0feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \x~reg0_q\);

-- Location: LCCOMB_X25_Y64_N26
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!\reset~input_o\ & (!i(0) & (!i(2) & !i(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i(0),
	datac => i(2),
	datad => i(3),
	combout => \Decoder0~0_combout\);

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

-- Location: LCCOMB_X24_Y65_N10
\code[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[0]~0_combout\ = (\Decoder0~0_combout\ & ((i(1) & ((code(0)))) # (!i(1) & (\ps2_data~input_o\)))) # (!\Decoder0~0_combout\ & (((code(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \ps2_data~input_o\,
	datac => code(0),
	datad => i(1),
	combout => \code[0]~0_combout\);

-- Location: FF_X24_Y65_N11
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

-- Location: LCCOMB_X24_Y65_N6
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

-- Location: FF_X24_Y65_N7
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[0]~reg0_q\);

-- Location: LCCOMB_X25_Y64_N28
\code[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[1]~1_combout\ = (!i(3) & (!i(2) & (!i(1) & i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datab => i(2),
	datac => i(1),
	datad => i(0),
	combout => \code[1]~1_combout\);

-- Location: LCCOMB_X25_Y64_N20
\code[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[1]~2_combout\ = (\reset~input_o\ & (((code(1))))) # (!\reset~input_o\ & ((\code[1]~1_combout\ & (\ps2_data~input_o\)) # (!\code[1]~1_combout\ & ((code(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \ps2_data~input_o\,
	datac => code(1),
	datad => \code[1]~1_combout\,
	combout => \code[1]~2_combout\);

-- Location: FF_X25_Y64_N21
\code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[1]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(1));

-- Location: FF_X24_Y65_N19
\key[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => code(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[1]~reg0_q\);

-- Location: LCCOMB_X24_Y65_N22
\code[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[2]~3_combout\ = (\Decoder0~0_combout\ & ((i(1) & (\ps2_data~input_o\)) # (!i(1) & ((code(2)))))) # (!\Decoder0~0_combout\ & (((code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~0_combout\,
	datab => \ps2_data~input_o\,
	datac => code(2),
	datad => i(1),
	combout => \code[2]~3_combout\);

-- Location: FF_X24_Y65_N23
\code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[2]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(2));

-- Location: FF_X24_Y65_N29
\key[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => code(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[2]~reg0_q\);

-- Location: LCCOMB_X25_Y64_N6
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (!i(3) & (!i(2) & (i(1) & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datab => i(2),
	datac => i(1),
	datad => \reset~input_o\,
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X25_Y64_N30
\code[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[3]~4_combout\ = (i(0) & ((\Decoder0~1_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~1_combout\ & ((code(3)))))) # (!i(0) & (((code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datab => i(0),
	datac => code(3),
	datad => \Decoder0~1_combout\,
	combout => \code[3]~4_combout\);

-- Location: FF_X25_Y64_N31
\code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[3]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(3));

-- Location: LCCOMB_X26_Y63_N24
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

-- Location: FF_X26_Y63_N25
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[3]~reg0_q\);

-- Location: LCCOMB_X25_Y64_N12
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!i(3) & (!\reset~input_o\ & (i(2) & !i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datab => \reset~input_o\,
	datac => i(2),
	datad => i(0),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X24_Y65_N24
\code[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[4]~5_combout\ = (\Decoder0~2_combout\ & ((i(1) & ((code(4)))) # (!i(1) & (\ps2_data~input_o\)))) # (!\Decoder0~2_combout\ & (((code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \ps2_data~input_o\,
	datac => code(4),
	datad => i(1),
	combout => \code[4]~5_combout\);

-- Location: FF_X24_Y65_N25
\code[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[4]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(4));

-- Location: LCCOMB_X24_Y65_N26
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

-- Location: FF_X24_Y65_N27
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[4]~reg0_q\);

-- Location: LCCOMB_X25_Y64_N14
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (!\reset~input_o\ & (i(0) & (i(2) & !i(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i(0),
	datac => i(2),
	datad => i(3),
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X24_Y65_N4
\code[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[5]~6_combout\ = (\Decoder0~3_combout\ & ((i(1) & ((code(5)))) # (!i(1) & (\ps2_data~input_o\)))) # (!\Decoder0~3_combout\ & (((code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => \ps2_data~input_o\,
	datac => code(5),
	datad => i(1),
	combout => \code[5]~6_combout\);

-- Location: FF_X24_Y65_N5
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

-- Location: FF_X24_Y65_N3
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[5]~reg0_q\);

-- Location: LCCOMB_X24_Y65_N20
\code[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[6]~7_combout\ = (\Decoder0~2_combout\ & ((i(1) & (\ps2_data~input_o\)) # (!i(1) & ((code(6)))))) # (!\Decoder0~2_combout\ & (((code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~2_combout\,
	datab => \ps2_data~input_o\,
	datac => code(6),
	datad => i(1),
	combout => \code[6]~7_combout\);

-- Location: FF_X24_Y65_N21
\code[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[6]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(6));

-- Location: FF_X24_Y64_N3
\key[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => code(6),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[6]~reg0_q\);

-- Location: LCCOMB_X24_Y65_N12
\code[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[7]~8_combout\ = (\Decoder0~3_combout\ & ((i(1) & (\ps2_data~input_o\)) # (!i(1) & ((code(7)))))) # (!\Decoder0~3_combout\ & (((code(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~3_combout\,
	datab => \ps2_data~input_o\,
	datac => code(7),
	datad => i(1),
	combout => \code[7]~8_combout\);

-- Location: FF_X24_Y65_N13
\code[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(7));

-- Location: LCCOMB_X24_Y65_N8
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

-- Location: FF_X24_Y65_N9
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[7]~reg0_q\);

-- Location: LCCOMB_X25_Y64_N0
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\reset~input_o\ & (!i(0) & (!i(2) & i(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => i(0),
	datac => i(2),
	datad => i(3),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X23_Y63_N24
\code[8]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[8]~9_combout\ = (i(1) & (((code(8))))) # (!i(1) & ((\Decoder0~4_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~4_combout\ & ((code(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \ps2_data~input_o\,
	datac => code(8),
	datad => \Decoder0~4_combout\,
	combout => \code[8]~9_combout\);

-- Location: FF_X23_Y63_N25
\code[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[8]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(8));

-- Location: FF_X24_Y65_N31
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[8]~reg0_q\);

-- Location: LCCOMB_X25_Y64_N18
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (i(3) & (!i(2) & (!i(1) & i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datab => i(2),
	datac => i(1),
	datad => i(0),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X25_Y64_N24
\code[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[9]~10_combout\ = (\Decoder0~5_combout\ & ((\reset~input_o\ & ((code(9)))) # (!\reset~input_o\ & (\ps2_data~input_o\)))) # (!\Decoder0~5_combout\ & (((code(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~5_combout\,
	datab => \ps2_data~input_o\,
	datac => code(9),
	datad => \reset~input_o\,
	combout => \code[9]~10_combout\);

-- Location: FF_X25_Y64_N25
\code[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[9]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(9));

-- Location: LCCOMB_X25_Y64_N16
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

-- Location: FF_X25_Y64_N17
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[9]~reg0_q\);

-- Location: LCCOMB_X25_Y64_N4
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\reset~input_o\ & (\Equal1~0_combout\ & (i(1) & i(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \Equal1~0_combout\,
	datac => i(1),
	datad => i(3),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X23_Y63_N26
\code[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[10]~11_combout\ = (\Decoder0~6_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~6_combout\ & ((code(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ps2_data~input_o\,
	datac => code(10),
	datad => \Decoder0~6_combout\,
	combout => \code[10]~11_combout\);

-- Location: FF_X23_Y63_N27
\code[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[10]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(10));

-- Location: LCCOMB_X26_Y63_N18
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

-- Location: FF_X26_Y63_N19
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[10]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N4
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (code(3) & (!code(2) & (code(4) $ (!code(1))))) # (!code(3) & (code(1) & (code(2) $ (!code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(3),
	datac => code(4),
	datad => code(1),
	combout => \Mux6~0_combout\);

-- Location: FF_X26_Y63_N5
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[0]~reg0_q\);

-- Location: LCCOMB_X24_Y65_N16
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (code(2) & ((code(1) & (code(4))) # (!code(1) & ((code(3)))))) # (!code(2) & (code(3) & (code(4) $ (code(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(4),
	datac => code(1),
	datad => code(3),
	combout => \Mux5~0_combout\);

-- Location: FF_X24_Y65_N17
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[1]~reg0_q\);

-- Location: LCCOMB_X24_Y65_N14
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (code(4) & (code(3) & ((code(2)) # (!code(1))))) # (!code(4) & (code(2) & (!code(1) & !code(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(4),
	datac => code(1),
	datad => code(3),
	combout => \Mux4~0_combout\);

-- Location: FF_X24_Y65_N15
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[2]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N30
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (code(1) & (code(2) $ ((!code(3))))) # (!code(1) & ((code(2) & (!code(3) & code(4))) # (!code(2) & (code(3) & !code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(3),
	datac => code(4),
	datad => code(1),
	combout => \Mux3~0_combout\);

-- Location: FF_X26_Y63_N31
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[3]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (code(2) & (((!code(4) & code(1))))) # (!code(2) & ((code(3) & (!code(4))) # (!code(3) & ((code(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(3),
	datac => code(4),
	datad => code(1),
	combout => \Mux2~0_combout\);

-- Location: FF_X26_Y63_N1
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[4]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N22
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (code(2) & (!code(4) & ((code(1)) # (!code(3))))) # (!code(2) & (code(1) & (code(3) $ (!code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(3),
	datac => code(4),
	datad => code(1),
	combout => \Mux1~0_combout\);

-- Location: FF_X26_Y63_N23
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[5]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N12
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (code(1) & ((code(4)) # (code(2) $ (code(3))))) # (!code(1) & ((code(2)) # (code(3) $ (code(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(3),
	datac => code(4),
	datad => code(1),
	combout => \Mux0~0_combout\);

-- Location: FF_X26_Y63_N13
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp1[6]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N6
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (code(7) & (!code(6) & (code(5) $ (!code(8))))) # (!code(7) & (code(5) & (code(8) $ (!code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(8),
	datad => code(6),
	combout => \Mux13~0_combout\);

-- Location: FF_X26_Y63_N7
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[0]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N28
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (code(8) & ((code(5) & ((code(6)))) # (!code(5) & (code(7))))) # (!code(8) & (code(7) & (code(5) $ (code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(8),
	datad => code(6),
	combout => \Mux12~0_combout\);

-- Location: FF_X26_Y63_N29
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[1]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N10
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (code(7) & (code(8) & ((code(6)) # (!code(5))))) # (!code(7) & (!code(5) & (!code(8) & code(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(8),
	datad => code(6),
	combout => \Mux11~0_combout\);

-- Location: FF_X26_Y63_N11
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[2]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N16
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (code(5) & (code(7) $ (((!code(6)))))) # (!code(5) & ((code(7) & (!code(8) & !code(6))) # (!code(7) & (code(8) & code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(8),
	datad => code(6),
	combout => \Mux10~0_combout\);

-- Location: FF_X26_Y63_N17
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[3]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N26
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (code(6) & (code(5) & ((!code(8))))) # (!code(6) & ((code(7) & ((!code(8)))) # (!code(7) & (code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(8),
	datad => code(6),
	combout => \Mux9~0_combout\);

-- Location: FF_X26_Y63_N27
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[4]~reg0_q\);

-- Location: LCCOMB_X24_Y65_N30
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (code(7) & (code(5) & (code(8) $ (code(6))))) # (!code(7) & (!code(8) & ((code(5)) # (code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(5),
	datac => code(8),
	datad => code(6),
	combout => \Mux8~0_combout\);

-- Location: FF_X24_Y64_N7
\disp2[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \Mux8~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[5]~reg0_q\);

-- Location: LCCOMB_X26_Y63_N20
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (code(5) & ((code(8)) # (code(7) $ (code(6))))) # (!code(5) & ((code(6)) # (code(7) $ (code(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(8),
	datad => code(6),
	combout => \Mux7~0_combout\);

-- Location: FF_X26_Y63_N21
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
	ena => \Equal1~10_combout\,
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

-- Location: LCCOMB_X5_Y57_N0
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

-- Location: LCCOMB_X6_Y57_N22
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!\comb_logic:contar[19]~q\ & (!\comb_logic:contar[16]~q\ & !\comb_logic:contar[20]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[19]~q\,
	datab => \comb_logic:contar[16]~q\,
	datad => \comb_logic:contar[20]~q\,
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X6_Y57_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\comb_logic:contar[23]~q\ & (!\comb_logic:contar[25]~q\ & (!\comb_logic:contar[22]~q\ & !\comb_logic:contar[24]~q\)))

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
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X6_Y57_N14
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\comb_logic:contar[28]~q\ & (!\comb_logic:contar[29]~q\ & (!\comb_logic:contar[26]~q\ & !\comb_logic:contar[27]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[28]~q\,
	datab => \comb_logic:contar[29]~q\,
	datac => \comb_logic:contar[26]~q\,
	datad => \comb_logic:contar[27]~q\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X6_Y57_N6
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (!\comb_logic:contar[17]~q\ & (!\comb_logic:contar[30]~q\ & (!\comb_logic:contar[18]~q\ & !\comb_logic:contar[21]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[17]~q\,
	datab => \comb_logic:contar[30]~q\,
	datac => \comb_logic:contar[18]~q\,
	datad => \comb_logic:contar[21]~q\,
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X6_Y57_N26
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (\LessThan0~0_combout\ & (\Equal0~0_combout\ & (\Equal0~1_combout\ & \Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~2_combout\,
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X7_Y57_N8
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (!\comb_logic:contar[11]~q\ & (!\comb_logic:contar[12]~q\ & (!\comb_logic:contar[13]~q\ & !\comb_logic:contar[10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[11]~q\,
	datab => \comb_logic:contar[12]~q\,
	datac => \comb_logic:contar[13]~q\,
	datad => \comb_logic:contar[10]~q\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X7_Y57_N26
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!\comb_logic:contar[4]~q\ & (!\comb_logic:contar[7]~q\ & !\comb_logic:contar[5]~q\))) # (!\comb_logic:contar[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[8]~q\,
	datab => \comb_logic:contar[4]~q\,
	datac => \comb_logic:contar[7]~q\,
	datad => \comb_logic:contar[5]~q\,
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X7_Y57_N16
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (\LessThan1~0_combout\) # (((!\comb_logic:contar[6]~q\ & !\comb_logic:contar[7]~q\)) # (!\comb_logic:contar[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[6]~q\,
	datab => \comb_logic:contar[7]~q\,
	datac => \LessThan1~0_combout\,
	datad => \comb_logic:contar[9]~q\,
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X7_Y57_N14
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (((\Equal0~4_combout\ & \LessThan1~1_combout\)) # (!\comb_logic:contar[14]~q\)) # (!\comb_logic:contar[15]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[15]~q\,
	datab => \Equal0~4_combout\,
	datac => \comb_logic:contar[14]~q\,
	datad => \LessThan1~1_combout\,
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X7_Y57_N6
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!\comb_logic:contar[5]~q\ & (!\comb_logic:contar[7]~q\ & (!\comb_logic:contar[0]~q\ & !\comb_logic:contar[4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[5]~q\,
	datab => \comb_logic:contar[7]~q\,
	datac => \comb_logic:contar[0]~q\,
	datad => \comb_logic:contar[4]~q\,
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X7_Y57_N30
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!\comb_logic:contar[8]~q\ & (!\comb_logic:contar[6]~q\ & (!\comb_logic:contar[3]~q\ & !\comb_logic:contar[9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[8]~q\,
	datab => \comb_logic:contar[6]~q\,
	datac => \comb_logic:contar[3]~q\,
	datad => \comb_logic:contar[9]~q\,
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X7_Y57_N0
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!\comb_logic:contar[14]~q\ & (!\comb_logic:contar[1]~q\ & (!\comb_logic:contar[15]~q\ & !\comb_logic:contar[2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[14]~q\,
	datab => \comb_logic:contar[1]~q\,
	datac => \comb_logic:contar[15]~q\,
	datad => \comb_logic:contar[2]~q\,
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X7_Y57_N4
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~5_combout\ & (\Equal0~4_combout\ & (\Equal0~7_combout\ & \Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~5_combout\,
	datab => \Equal0~4_combout\,
	datac => \Equal0~7_combout\,
	datad => \Equal0~6_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X6_Y57_N10
\Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector35~0_combout\ = (!\comb_logic:contar[31]~q\ & (((!\LessThan1~2_combout\ & !\Equal0~8_combout\)) # (!\Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \comb_logic:contar[31]~q\,
	datac => \LessThan1~2_combout\,
	datad => \Equal0~8_combout\,
	combout => \Selector35~0_combout\);

-- Location: LCCOMB_X6_Y57_N0
\comb_logic:contar[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[3]~3_combout\ = (\Selector37~1_combout\ & ((\Selector35~0_combout\) # (!\estado.encender~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector35~0_combout\,
	datab => \estado.encender~q\,
	datad => \Selector37~1_combout\,
	combout => \comb_logic:contar[3]~3_combout\);

-- Location: LCCOMB_X6_Y57_N12
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (!\comb_logic:contar[19]~q\ & (!\comb_logic:contar[20]~q\ & ((!\comb_logic:contar[17]~q\) # (!\comb_logic:contar[18]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[19]~q\,
	datab => \comb_logic:contar[18]~q\,
	datac => \comb_logic:contar[17]~q\,
	datad => \comb_logic:contar[20]~q\,
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X6_Y57_N28
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

-- Location: LCCOMB_X6_Y57_N8
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!\comb_logic:contar[5]~q\ & !\comb_logic:contar[6]~q\)) # (!\comb_logic:contar[7]~q\)) # (!\comb_logic:contar[8]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[5]~q\,
	datab => \comb_logic:contar[8]~q\,
	datac => \comb_logic:contar[7]~q\,
	datad => \comb_logic:contar[6]~q\,
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X6_Y57_N30
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\comb_logic:contar[11]~q\) # ((\comb_logic:contar[10]~q\ & ((\comb_logic:contar[9]~q\) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[11]~q\,
	datab => \comb_logic:contar[10]~q\,
	datac => \LessThan0~2_combout\,
	datad => \comb_logic:contar[9]~q\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X6_Y57_N2
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (\LessThan0~0_combout\ & (((!\LessThan0~3_combout\ & !\comb_logic:contar[12]~q\)) # (!\comb_logic:contar[13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~0_combout\,
	datab => \comb_logic:contar[13]~q\,
	datac => \LessThan0~3_combout\,
	datad => \comb_logic:contar[12]~q\,
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X6_Y57_N20
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (\LessThan0~1_combout\) # (((\Equal0~11_combout\ & \LessThan0~4_combout\)) # (!\comb_logic:contar[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~1_combout\,
	datab => \Equal0~11_combout\,
	datac => \comb_logic:contar[21]~q\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X6_Y57_N24
\Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~10_combout\ = (!\comb_logic:contar[30]~q\ & (\Equal0~1_combout\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_logic:contar[30]~q\,
	datac => \Equal0~1_combout\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~10_combout\);

-- Location: LCCOMB_X7_Y57_N22
\Selector32~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~0_combout\ = (!\estado.encender~q\ & (!\comb_logic:contar[31]~q\ & ((!\Equal0~10_combout\) # (!\LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \LessThan0~5_combout\,
	datac => \comb_logic:contar[31]~q\,
	datad => \Equal0~10_combout\,
	combout => \Selector32~0_combout\);

-- Location: LCCOMB_X7_Y57_N2
\Selector32~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector32~1_combout\ = (\Selector32~0_combout\) # ((\estado.configpantalla~q\ & !\Selector35~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector32~0_combout\,
	datac => \estado.configpantalla~q\,
	datad => \Selector35~0_combout\,
	combout => \Selector32~1_combout\);

-- Location: FF_X7_Y57_N3
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

-- Location: FF_X6_Y57_N23
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
	ena => \Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.encenderdisplay~q\);

-- Location: FF_X6_Y57_N5
\estado.limpiardisplay\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \estado.encenderdisplay~q\,
	sload => VCC,
	ena => \Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.limpiardisplay~q\);

-- Location: FF_X6_Y57_N1
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
	ena => \Selector35~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.configcursor~q\);

-- Location: LCCOMB_X8_Y57_N2
\Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector36~0_combout\ = (\estado.fin~q\) # ((\Selector35~0_combout\ & (\estado.configcursor~q\)) # (!\Selector35~0_combout\ & ((\estado.listo~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.configcursor~q\,
	datab => \estado.fin~q\,
	datac => \estado.listo~q\,
	datad => \Selector35~0_combout\,
	combout => \Selector36~0_combout\);

-- Location: FF_X8_Y57_N3
\estado.listo\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector36~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.listo~q\);

-- Location: LCCOMB_X8_Y57_N24
\estado~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \estado~9_combout\ = (\estado.listo~q\ & \Selector35~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.listo~q\,
	datad => \Selector35~0_combout\,
	combout => \estado~9_combout\);

-- Location: FF_X8_Y57_N25
\estado.fin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \estado~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.fin~q\);

-- Location: FF_X5_Y57_N1
\comb_logic:contar[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[0]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[0]~q\);

-- Location: LCCOMB_X5_Y57_N2
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

-- Location: FF_X5_Y57_N3
\comb_logic:contar[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[1]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[1]~q\);

-- Location: LCCOMB_X5_Y57_N4
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

-- Location: FF_X5_Y57_N5
\comb_logic:contar[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[2]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[2]~q\);

-- Location: LCCOMB_X5_Y57_N6
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

-- Location: FF_X5_Y57_N7
\comb_logic:contar[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[3]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[3]~q\);

-- Location: LCCOMB_X5_Y57_N8
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

-- Location: FF_X5_Y57_N9
\comb_logic:contar[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[4]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[4]~q\);

-- Location: LCCOMB_X5_Y57_N10
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

-- Location: FF_X5_Y57_N11
\comb_logic:contar[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[5]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[5]~q\);

-- Location: LCCOMB_X5_Y57_N12
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

-- Location: FF_X5_Y57_N13
\comb_logic:contar[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[6]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[6]~q\);

-- Location: LCCOMB_X5_Y57_N14
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

-- Location: FF_X5_Y57_N15
\comb_logic:contar[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[7]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[7]~q\);

-- Location: LCCOMB_X5_Y57_N16
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

-- Location: FF_X7_Y57_N19
\comb_logic:contar[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[8]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[8]~q\);

-- Location: LCCOMB_X5_Y57_N18
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

-- Location: FF_X5_Y57_N19
\comb_logic:contar[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[9]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[9]~q\);

-- Location: LCCOMB_X5_Y57_N20
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

-- Location: FF_X5_Y57_N21
\comb_logic:contar[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[10]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[10]~q\);

-- Location: LCCOMB_X5_Y57_N22
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

-- Location: FF_X5_Y57_N23
\comb_logic:contar[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[11]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[11]~q\);

-- Location: LCCOMB_X5_Y57_N24
\comb_logic:contar[12]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_logic:contar[12]~1_combout\ = (\comb_logic:contar[12]~q\ & (\comb_logic:contar[11]~2\ $ (GND))) # (!\comb_logic:contar[12]~q\ & (!\comb_logic:contar[11]~2\ & VCC))
-- \comb_logic:contar[12]~2\ = CARRY((\comb_logic:contar[12]~q\ & !\comb_logic:contar[11]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_logic:contar[12]~q\,
	datad => VCC,
	cin => \comb_logic:contar[11]~2\,
	combout => \comb_logic:contar[12]~1_combout\,
	cout => \comb_logic:contar[12]~2\);

-- Location: FF_X7_Y57_N25
\comb_logic:contar[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \comb_logic:contar[12]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	sload => VCC,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[12]~q\);

-- Location: LCCOMB_X5_Y57_N26
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

-- Location: FF_X5_Y57_N27
\comb_logic:contar[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[13]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[13]~q\);

-- Location: LCCOMB_X5_Y57_N28
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

-- Location: FF_X5_Y57_N29
\comb_logic:contar[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[14]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[14]~q\);

-- Location: LCCOMB_X5_Y57_N30
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

-- Location: FF_X5_Y57_N31
\comb_logic:contar[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[15]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[15]~q\);

-- Location: LCCOMB_X5_Y56_N0
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

-- Location: FF_X5_Y56_N1
\comb_logic:contar[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[16]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[16]~q\);

-- Location: LCCOMB_X5_Y56_N2
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

-- Location: FF_X5_Y56_N3
\comb_logic:contar[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[17]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[17]~q\);

-- Location: LCCOMB_X5_Y56_N4
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

-- Location: FF_X5_Y56_N5
\comb_logic:contar[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[18]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[18]~q\);

-- Location: LCCOMB_X5_Y56_N6
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

-- Location: FF_X5_Y56_N7
\comb_logic:contar[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[19]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[19]~q\);

-- Location: LCCOMB_X5_Y56_N8
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

-- Location: FF_X5_Y56_N9
\comb_logic:contar[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[20]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[20]~q\);

-- Location: LCCOMB_X5_Y56_N10
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

-- Location: FF_X5_Y56_N11
\comb_logic:contar[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[21]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[21]~q\);

-- Location: LCCOMB_X5_Y56_N12
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

-- Location: FF_X5_Y56_N13
\comb_logic:contar[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[22]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[22]~q\);

-- Location: LCCOMB_X5_Y56_N14
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

-- Location: FF_X5_Y56_N15
\comb_logic:contar[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[23]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[23]~q\);

-- Location: LCCOMB_X5_Y56_N16
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

-- Location: FF_X5_Y56_N17
\comb_logic:contar[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[24]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[24]~q\);

-- Location: LCCOMB_X5_Y56_N18
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

-- Location: FF_X5_Y56_N19
\comb_logic:contar[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[25]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[25]~q\);

-- Location: LCCOMB_X5_Y56_N20
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

-- Location: FF_X5_Y56_N21
\comb_logic:contar[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[26]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[26]~q\);

-- Location: LCCOMB_X5_Y56_N22
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

-- Location: FF_X5_Y56_N23
\comb_logic:contar[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[27]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[27]~q\);

-- Location: LCCOMB_X5_Y56_N24
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

-- Location: FF_X5_Y56_N25
\comb_logic:contar[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[28]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[28]~q\);

-- Location: LCCOMB_X5_Y56_N26
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

-- Location: FF_X5_Y56_N27
\comb_logic:contar[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[29]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[29]~q\);

-- Location: LCCOMB_X5_Y56_N28
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

-- Location: FF_X5_Y56_N29
\comb_logic:contar[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[30]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[30]~q\);

-- Location: LCCOMB_X5_Y56_N30
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

-- Location: FF_X5_Y56_N31
\comb_logic:contar[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_logic:contar[31]~1_combout\,
	sclr => \comb_logic:contar[3]~3_combout\,
	ena => \ALT_INV_estado.fin~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_logic:contar[31]~q\);

-- Location: LCCOMB_X6_Y57_N18
\Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~1_combout\ = (\estado.encender~q\) # ((!\comb_logic:contar[31]~q\ & ((!\LessThan0~5_combout\) # (!\Equal0~10_combout\))))

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
	combout => \Selector37~1_combout\);

-- Location: FF_X6_Y57_N19
\estado.encender\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector37~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \estado.encender~q\);

-- Location: LCCOMB_X11_Y57_N26
\Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~0_combout\ = (\lcd[0]~reg0_q\ & (\estado.encender~q\ & (!\estado.fin~q\ & !\estado.limpiardisplay~q\))) # (!\lcd[0]~reg0_q\ & (((\estado.limpiardisplay~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \estado.fin~q\,
	datac => \lcd[0]~reg0_q\,
	datad => \estado.limpiardisplay~q\,
	combout => \Selector47~0_combout\);

-- Location: LCCOMB_X6_Y57_N4
\Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~9_combout\ = (\Equal0~3_combout\ & (!\comb_logic:contar[31]~q\ & \Equal0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \comb_logic:contar[31]~q\,
	datad => \Equal0~8_combout\,
	combout => \Equal0~9_combout\);

-- Location: LCCOMB_X24_Y65_N2
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (!code(7) & (!code(1) & (code(5) & code(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(1),
	datac => code(5),
	datad => code(4),
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X24_Y65_N28
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (!code(6) & (!code(8) & (!code(2) & code(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(8),
	datac => code(2),
	datad => code(3),
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X24_Y57_N28
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux16~1_combout\ & \Mux16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux16~1_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X24_Y57_N4
\char[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \char[0]~feeder_combout\ = \Mux16~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux16~2_combout\,
	combout => \char[0]~feeder_combout\);

-- Location: LCCOMB_X24_Y57_N2
\char[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \char[0]~0_combout\ = (!\reset~input_o\ & \Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \Equal1~10_combout\,
	combout => \char[0]~0_combout\);

-- Location: FF_X24_Y57_N5
\char[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \char[0]~feeder_combout\,
	ena => \char[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(0));

-- Location: LCCOMB_X11_Y57_N28
\Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~1_combout\ = (\estado.listo~q\ & (((char(0))))) # (!\estado.listo~q\ & ((\estado.configcursor~q\) # ((\estado.configpantalla~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.listo~q\,
	datab => \estado.configcursor~q\,
	datac => \estado.configpantalla~q\,
	datad => char(0),
	combout => \Selector47~1_combout\);

-- Location: LCCOMB_X11_Y57_N10
\Selector47~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~2_combout\ = (\estado.encenderdisplay~q\) # ((\Equal0~9_combout\ & (\estado.listo~q\ & \Selector47~1_combout\)) # (!\Equal0~9_combout\ & ((\estado.listo~q\) # (\Selector47~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \estado.listo~q\,
	datac => \estado.encenderdisplay~q\,
	datad => \Selector47~1_combout\,
	combout => \Selector47~2_combout\);

-- Location: LCCOMB_X11_Y57_N12
\Selector47~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector47~3_combout\ = (\lcd[0]~reg0_q\ & (((\Selector47~2_combout\)) # (!\Selector47~0_combout\))) # (!\lcd[0]~reg0_q\ & (\Equal0~9_combout\ & ((\Selector47~0_combout\) # (\Selector47~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector47~0_combout\,
	datab => \Equal0~9_combout\,
	datac => \lcd[0]~reg0_q\,
	datad => \Selector47~2_combout\,
	combout => \Selector47~3_combout\);

-- Location: FF_X11_Y57_N13
\lcd[0]~reg0\ : dffeas
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
	q => \lcd[0]~reg0_q\);

-- Location: LCCOMB_X11_Y57_N16
\Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~0_combout\ = (!\estado.limpiardisplay~q\ & (!\estado.configcursor~q\ & (!\estado.configpantalla~q\ & !\estado.listo~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.limpiardisplay~q\,
	datab => \estado.configcursor~q\,
	datac => \estado.configpantalla~q\,
	datad => \estado.listo~q\,
	combout => \Selector46~0_combout\);

-- Location: LCCOMB_X7_Y57_N20
\Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~1_combout\ = (\Equal0~9_combout\ & (\estado.encenderdisplay~q\)) # (!\Equal0~9_combout\ & (\lcd[1]~reg0_q\ & ((\estado.encenderdisplay~q\) # (!\Selector46~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encenderdisplay~q\,
	datab => \Selector46~0_combout\,
	datac => \Equal0~9_combout\,
	datad => \lcd[1]~reg0_q\,
	combout => \Selector46~1_combout\);

-- Location: LCCOMB_X7_Y57_N28
\Selector46~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector46~2_combout\ = (\Selector46~1_combout\) # ((\lcd[1]~reg0_q\ & ((\estado.fin~q\) # (!\estado.encender~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \estado.fin~q\,
	datac => \lcd[1]~reg0_q\,
	datad => \Selector46~1_combout\,
	combout => \Selector46~2_combout\);

-- Location: FF_X7_Y57_N29
\lcd[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector46~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[1]~reg0_q\);

-- Location: LCCOMB_X10_Y57_N16
\Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~1_combout\ = (!\estado.configcursor~q\ & !\estado.encenderdisplay~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.configcursor~q\,
	datac => \estado.encenderdisplay~q\,
	combout => \Selector45~1_combout\);

-- Location: LCCOMB_X11_Y57_N30
\Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~0_combout\ = (\lcd[2]~reg0_q\ & ((\estado.limpiardisplay~q\) # ((\estado.listo~q\) # (\estado.configpantalla~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.limpiardisplay~q\,
	datab => \estado.listo~q\,
	datac => \estado.configpantalla~q\,
	datad => \lcd[2]~reg0_q\,
	combout => \Selector45~0_combout\);

-- Location: LCCOMB_X11_Y57_N20
\Selector45~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~2_combout\ = (\Equal0~9_combout\ & (!\Selector45~1_combout\)) # (!\Equal0~9_combout\ & ((\Selector45~0_combout\) # ((!\Selector45~1_combout\ & \lcd[2]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Selector45~1_combout\,
	datab => \lcd[2]~reg0_q\,
	datac => \Selector45~0_combout\,
	datad => \Equal0~9_combout\,
	combout => \Selector45~2_combout\);

-- Location: LCCOMB_X11_Y57_N2
\Selector45~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector45~3_combout\ = (\Selector45~2_combout\) # ((\lcd[2]~reg0_q\ & ((\estado.fin~q\) # (!\estado.encender~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \estado.fin~q\,
	datac => \lcd[2]~reg0_q\,
	datad => \Selector45~2_combout\,
	combout => \Selector45~3_combout\);

-- Location: FF_X11_Y57_N3
\lcd[2]~reg0\ : dffeas
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
	q => \lcd[2]~reg0_q\);

-- Location: LCCOMB_X11_Y57_N14
\Selector44~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~2_combout\ = (\lcd[3]~reg0_q\ & ((\estado.limpiardisplay~q\) # ((\estado.listo~q\) # (\estado.configcursor~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.limpiardisplay~q\,
	datab => \lcd[3]~reg0_q\,
	datac => \estado.listo~q\,
	datad => \estado.configcursor~q\,
	combout => \Selector44~2_combout\);

-- Location: LCCOMB_X11_Y57_N8
\Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~1_combout\ = (\estado.encenderdisplay~q\ & ((\lcd[3]~reg0_q\) # ((\Equal0~9_combout\)))) # (!\estado.encenderdisplay~q\ & (\estado.configpantalla~q\ & ((\lcd[3]~reg0_q\) # (\Equal0~9_combout\))))

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
	combout => \Selector44~1_combout\);

-- Location: LCCOMB_X11_Y57_N18
\Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~0_combout\ = (\lcd[3]~reg0_q\ & ((\estado.fin~q\) # (!\estado.encender~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \estado.fin~q\,
	datad => \lcd[3]~reg0_q\,
	combout => \Selector44~0_combout\);

-- Location: LCCOMB_X11_Y57_N24
\Selector44~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector44~3_combout\ = (\Selector44~1_combout\) # ((\Selector44~0_combout\) # ((!\Equal0~9_combout\ & \Selector44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~9_combout\,
	datab => \Selector44~2_combout\,
	datac => \Selector44~1_combout\,
	datad => \Selector44~0_combout\,
	combout => \Selector44~3_combout\);

-- Location: FF_X11_Y57_N25
\lcd[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector44~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[3]~reg0_q\);

-- Location: LCCOMB_X24_Y65_N18
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (code(7) & (!code(5) & (code(1) & !code(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(7),
	datab => code(5),
	datac => code(1),
	datad => code(4),
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X24_Y57_N6
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux15~0_combout\ & \Mux16~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Mux15~0_combout\,
	datad => \Mux16~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: FF_X24_Y57_N7
\char[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \Mux15~1_combout\,
	ena => \char[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(4));

-- Location: LCCOMB_X24_Y57_N20
\Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector43~0_combout\ = (\estado.listo~q\ & ((char(4)))) # (!\estado.listo~q\ & (\estado.configpantalla~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.listo~q\,
	datac => \estado.configpantalla~q\,
	datad => char(4),
	combout => \Selector43~0_combout\);

-- Location: LCCOMB_X24_Y57_N8
\lcd[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \lcd[4]~0_combout\ = (\estado.encender~q\ & (!\estado.fin~q\ & \Equal0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.encender~q\,
	datac => \estado.fin~q\,
	datad => \Equal0~9_combout\,
	combout => \lcd[4]~0_combout\);

-- Location: FF_X24_Y57_N21
\lcd[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector43~0_combout\,
	ena => \lcd[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[4]~reg0_q\);

-- Location: LCCOMB_X24_Y57_N18
\char[5]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \char[5]~1_combout\ = !\Mux16~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \Mux16~2_combout\,
	combout => \char[5]~1_combout\);

-- Location: FF_X24_Y57_N19
\char[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \char[5]~1_combout\,
	ena => \char[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => char(5));

-- Location: LCCOMB_X24_Y57_N14
\Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector42~0_combout\ = (\estado.listo~q\ & ((char(5)))) # (!\estado.listo~q\ & (\estado.configpantalla~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.listo~q\,
	datac => \estado.configpantalla~q\,
	datad => char(5),
	combout => \Selector42~0_combout\);

-- Location: FF_X24_Y57_N15
\lcd[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector42~0_combout\,
	ena => \lcd[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[5]~reg0_q\);

-- Location: LCCOMB_X11_Y57_N0
\Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~0_combout\ = ((!\Equal0~9_combout\ & ((\estado.encenderdisplay~q\) # (!\Selector46~0_combout\)))) # (!\estado.encender~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.encender~q\,
	datab => \Selector46~0_combout\,
	datac => \estado.encenderdisplay~q\,
	datad => \Equal0~9_combout\,
	combout => \Selector41~0_combout\);

-- Location: LCCOMB_X11_Y57_N6
\Selector41~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~1_combout\ = (\lcd[6]~reg0_q\ & ((\estado.fin~q\) # (\Selector41~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.fin~q\,
	datac => \lcd[6]~reg0_q\,
	datad => \Selector41~0_combout\,
	combout => \Selector41~1_combout\);

-- Location: LCCOMB_X11_Y57_N22
\Selector41~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~2_combout\ = (\Selector41~1_combout\) # ((char(0) & (\estado.listo~q\ & \Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => char(0),
	datab => \estado.listo~q\,
	datac => \Equal0~9_combout\,
	datad => \Selector41~1_combout\,
	combout => \Selector41~2_combout\);

-- Location: FF_X11_Y57_N23
\lcd[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector41~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \lcd[6]~reg0_q\);

-- Location: LCCOMB_X7_Y57_N24
\Selector41~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector41~3_combout\ = (\estado.encenderdisplay~q\) # (!\Selector46~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \estado.encenderdisplay~q\,
	datad => \Selector46~0_combout\,
	combout => \Selector41~3_combout\);

-- Location: LCCOMB_X7_Y57_N18
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (\comb_logic:contar[31]~q\) # ((\Equal0~3_combout\ & \LessThan1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \LessThan1~2_combout\,
	datad => \comb_logic:contar[31]~q\,
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X7_Y57_N12
\Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~0_combout\ = (\Selector41~3_combout\ & ((\Equal0~9_combout\) # ((\enviar~reg0_q\ & \LessThan1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \enviar~reg0_q\,
	datab => \Selector41~3_combout\,
	datac => \Equal0~9_combout\,
	datad => \LessThan1~3_combout\,
	combout => \Selector37~0_combout\);

-- Location: LCCOMB_X7_Y57_N10
\Selector37~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Selector37~2_combout\ = (\Selector37~0_combout\) # ((\enviar~reg0_q\ & ((\estado.fin~q\) # (!\Selector37~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.fin~q\,
	datab => \Selector37~1_combout\,
	datac => \enviar~reg0_q\,
	datad => \Selector37~0_combout\,
	combout => \Selector37~2_combout\);

-- Location: FF_X7_Y57_N11
\enviar~reg0\ : dffeas
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
	q => \enviar~reg0_q\);

-- Location: LCCOMB_X11_Y57_N4
\rs~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rs~0_combout\ = (\Equal0~9_combout\ & ((\estado.listo~q\) # ((!\estado.configpantalla~q\ & \rs~reg0_q\)))) # (!\Equal0~9_combout\ & (((\rs~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \estado.listo~q\,
	datab => \estado.configpantalla~q\,
	datac => \rs~reg0_q\,
	datad => \Equal0~9_combout\,
	combout => \rs~0_combout\);

-- Location: FF_X11_Y57_N5
\rs~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rs~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs~reg0_q\);

ww_clkLED <= \clkLED~output_o\;

ww_x <= \x~output_o\;

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


