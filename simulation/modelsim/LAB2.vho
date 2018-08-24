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

-- DATE "08/24/2018 11:05:29"

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
	disp2 : OUT std_logic_vector(6 DOWNTO 0)
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
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ps2_clock	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \prescaler~12_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \prescaler~11_combout\ : std_logic;
SIGNAL \Add0~15\ : std_logic;
SIGNAL \Add0~16_combout\ : std_logic;
SIGNAL \Add0~17\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~21\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Equal0~5_combout\ : std_logic;
SIGNAL \Add0~23\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \prescaler~10_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \prescaler~9_combout\ : std_logic;
SIGNAL \Add0~27\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \prescaler~8_combout\ : std_logic;
SIGNAL \Add0~29\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \prescaler~7_combout\ : std_logic;
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \prescaler~6_combout\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \prescaler~5_combout\ : std_logic;
SIGNAL \Add0~39\ : std_logic;
SIGNAL \Add0~40_combout\ : std_logic;
SIGNAL \prescaler~4_combout\ : std_logic;
SIGNAL \Add0~41\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \prescaler~3_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \prescaler~2_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \prescaler~1_combout\ : std_logic;
SIGNAL \Add0~47\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \prescaler~0_combout\ : std_logic;
SIGNAL \Add0~51\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~2_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~7_combout\ : std_logic;
SIGNAL \Equal0~6_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \clk_2Hz_i~0_combout\ : std_logic;
SIGNAL \clk_2Hz_i~q\ : std_logic;
SIGNAL \ps2_clock~input_o\ : std_logic;
SIGNAL \x~reg0feeder_combout\ : std_logic;
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
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \Add1~55\ : std_logic;
SIGNAL \Add1~56_combout\ : std_logic;
SIGNAL \Add1~57\ : std_logic;
SIGNAL \Add1~58_combout\ : std_logic;
SIGNAL \Add1~59\ : std_logic;
SIGNAL \Add1~60_combout\ : std_logic;
SIGNAL \Add1~61\ : std_logic;
SIGNAL \Add1~62_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
SIGNAL \x~reg0_q\ : std_logic;
SIGNAL \ps2_data~input_o\ : std_logic;
SIGNAL \Decoder0~0_combout\ : std_logic;
SIGNAL \code[0]~0_combout\ : std_logic;
SIGNAL \key[0]~reg0feeder_combout\ : std_logic;
SIGNAL \key[0]~reg0_q\ : std_logic;
SIGNAL \code[1]~1_combout\ : std_logic;
SIGNAL \code[1]~2_combout\ : std_logic;
SIGNAL \key[1]~reg0feeder_combout\ : std_logic;
SIGNAL \key[1]~reg0_q\ : std_logic;
SIGNAL \code[2]~3_combout\ : std_logic;
SIGNAL \key[2]~reg0feeder_combout\ : std_logic;
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
SIGNAL \key[5]~reg0feeder_combout\ : std_logic;
SIGNAL \key[5]~reg0_q\ : std_logic;
SIGNAL \code[6]~7_combout\ : std_logic;
SIGNAL \key[6]~reg0feeder_combout\ : std_logic;
SIGNAL \key[6]~reg0_q\ : std_logic;
SIGNAL \code[7]~8_combout\ : std_logic;
SIGNAL \key[7]~reg0feeder_combout\ : std_logic;
SIGNAL \key[7]~reg0_q\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \code[8]~9_combout\ : std_logic;
SIGNAL \key[8]~reg0feeder_combout\ : std_logic;
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
SIGNAL prescaler : std_logic_vector(27 DOWNTO 0);
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL code : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_ps2_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
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
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_ps2_clock~input_o\ <= NOT \ps2_clock~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
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
	i => \clk_2Hz_i~q\,
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

-- Location: LCCOMB_X62_Y67_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = prescaler(0) $ (VCC)
-- \Add0~1\ = CARRY(prescaler(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => prescaler(0),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X62_Y67_N2
\prescaler~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~12_combout\ = (\Add0~0_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~0_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~12_combout\);

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

-- Location: FF_X62_Y67_N3
\prescaler[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(0));

-- Location: LCCOMB_X62_Y67_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (prescaler(1) & (!\Add0~1\)) # (!prescaler(1) & ((\Add0~1\) # (GND)))
-- \Add0~3\ = CARRY((!\Add0~1\) # (!prescaler(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(1),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: FF_X62_Y67_N7
\prescaler[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(1));

-- Location: LCCOMB_X62_Y67_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (prescaler(2) & (\Add0~3\ $ (GND))) # (!prescaler(2) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((prescaler(2) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(2),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: FF_X62_Y67_N9
\prescaler[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(2));

-- Location: LCCOMB_X62_Y67_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (prescaler(3) & (!\Add0~5\)) # (!prescaler(3) & ((\Add0~5\) # (GND)))
-- \Add0~7\ = CARRY((!\Add0~5\) # (!prescaler(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(3),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: FF_X62_Y67_N11
\prescaler[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(3));

-- Location: LCCOMB_X62_Y67_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (prescaler(4) & (\Add0~7\ $ (GND))) # (!prescaler(4) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((prescaler(4) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(4),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: FF_X62_Y67_N13
\prescaler[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(4));

-- Location: LCCOMB_X62_Y67_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (prescaler(5) & (!\Add0~9\)) # (!prescaler(5) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!prescaler(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(5),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: FF_X62_Y67_N15
\prescaler[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(5));

-- Location: LCCOMB_X62_Y67_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (prescaler(6) & (\Add0~11\ $ (GND))) # (!prescaler(6) & (!\Add0~11\ & VCC))
-- \Add0~13\ = CARRY((prescaler(6) & !\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(6),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: FF_X62_Y67_N17
\prescaler[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~12_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(6));

-- Location: LCCOMB_X62_Y67_N18
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (prescaler(7) & (!\Add0~13\)) # (!prescaler(7) & ((\Add0~13\) # (GND)))
-- \Add0~15\ = CARRY((!\Add0~13\) # (!prescaler(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(7),
	datad => VCC,
	cin => \Add0~13\,
	combout => \Add0~14_combout\,
	cout => \Add0~15\);

-- Location: LCCOMB_X62_Y67_N0
\prescaler~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~11_combout\ = (\Add0~14_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~14_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~11_combout\);

-- Location: FF_X62_Y67_N1
\prescaler[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(7));

-- Location: LCCOMB_X62_Y67_N20
\Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~16_combout\ = (prescaler(8) & (\Add0~15\ $ (GND))) # (!prescaler(8) & (!\Add0~15\ & VCC))
-- \Add0~17\ = CARRY((prescaler(8) & !\Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(8),
	datad => VCC,
	cin => \Add0~15\,
	combout => \Add0~16_combout\,
	cout => \Add0~17\);

-- Location: FF_X62_Y67_N21
\prescaler[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(8));

-- Location: LCCOMB_X62_Y67_N22
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (prescaler(9) & (!\Add0~17\)) # (!prescaler(9) & ((\Add0~17\) # (GND)))
-- \Add0~19\ = CARRY((!\Add0~17\) # (!prescaler(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(9),
	datad => VCC,
	cin => \Add0~17\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: FF_X62_Y67_N23
\prescaler[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(9));

-- Location: LCCOMB_X62_Y67_N24
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (prescaler(10) & (\Add0~19\ $ (GND))) # (!prescaler(10) & (!\Add0~19\ & VCC))
-- \Add0~21\ = CARRY((prescaler(10) & !\Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(10),
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~20_combout\,
	cout => \Add0~21\);

-- Location: FF_X62_Y67_N25
\prescaler[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(10));

-- Location: LCCOMB_X62_Y67_N26
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (prescaler(11) & (!\Add0~21\)) # (!prescaler(11) & ((\Add0~21\) # (GND)))
-- \Add0~23\ = CARRY((!\Add0~21\) # (!prescaler(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(11),
	datad => VCC,
	cin => \Add0~21\,
	combout => \Add0~22_combout\,
	cout => \Add0~23\);

-- Location: FF_X62_Y67_N27
\prescaler[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~22_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(11));

-- Location: LCCOMB_X63_Y67_N30
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!prescaler(10) & (!prescaler(9) & (!prescaler(11) & !prescaler(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(10),
	datab => prescaler(9),
	datac => prescaler(11),
	datad => prescaler(8),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X62_Y67_N28
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (prescaler(12) & (\Add0~23\ $ (GND))) # (!prescaler(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((prescaler(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X63_Y66_N0
\prescaler~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~10_combout\ = (\Add0~24_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~24_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~10_combout\);

-- Location: FF_X63_Y66_N1
\prescaler[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(12));

-- Location: LCCOMB_X62_Y67_N30
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (prescaler(13) & (!\Add0~25\)) # (!prescaler(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!prescaler(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X63_Y66_N14
\prescaler~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~9_combout\ = (!\Equal0~8_combout\ & \Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~26_combout\,
	combout => \prescaler~9_combout\);

-- Location: FF_X63_Y66_N15
\prescaler[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(13));

-- Location: LCCOMB_X62_Y66_N0
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (prescaler(14) & (\Add0~27\ $ (GND))) # (!prescaler(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((prescaler(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X63_Y66_N12
\prescaler~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~8_combout\ = (\Add0~28_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~28_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~8_combout\);

-- Location: FF_X63_Y66_N13
\prescaler[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(14));

-- Location: LCCOMB_X62_Y66_N2
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (prescaler(15) & (!\Add0~29\)) # (!prescaler(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!prescaler(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X63_Y66_N6
\prescaler~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~7_combout\ = (!\Equal0~8_combout\ & \Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~30_combout\,
	combout => \prescaler~7_combout\);

-- Location: FF_X63_Y66_N7
\prescaler[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(15));

-- Location: LCCOMB_X63_Y66_N22
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (prescaler(15) & (prescaler(12) & (prescaler(13) & prescaler(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(15),
	datab => prescaler(12),
	datac => prescaler(13),
	datad => prescaler(14),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X62_Y66_N4
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (prescaler(16) & (\Add0~31\ $ (GND))) # (!prescaler(16) & (!\Add0~31\ & VCC))
-- \Add0~33\ = CARRY((prescaler(16) & !\Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(16),
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~32_combout\,
	cout => \Add0~33\);

-- Location: FF_X62_Y66_N5
\prescaler[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~32_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(16));

-- Location: LCCOMB_X62_Y66_N6
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = (prescaler(17) & (!\Add0~33\)) # (!prescaler(17) & ((\Add0~33\) # (GND)))
-- \Add0~35\ = CARRY((!\Add0~33\) # (!prescaler(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(17),
	datad => VCC,
	cin => \Add0~33\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X63_Y66_N30
\prescaler~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~6_combout\ = (\Add0~34_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~34_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~6_combout\);

-- Location: FF_X63_Y66_N31
\prescaler[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(17));

-- Location: LCCOMB_X62_Y66_N8
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (prescaler(18) & (\Add0~35\ $ (GND))) # (!prescaler(18) & (!\Add0~35\ & VCC))
-- \Add0~37\ = CARRY((prescaler(18) & !\Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(18),
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: FF_X62_Y66_N9
\prescaler[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~36_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(18));

-- Location: LCCOMB_X62_Y66_N10
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = (prescaler(19) & (!\Add0~37\)) # (!prescaler(19) & ((\Add0~37\) # (GND)))
-- \Add0~39\ = CARRY((!\Add0~37\) # (!prescaler(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(19),
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~38_combout\,
	cout => \Add0~39\);

-- Location: LCCOMB_X63_Y66_N4
\prescaler~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~5_combout\ = (!\Equal0~8_combout\ & \Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~38_combout\,
	combout => \prescaler~5_combout\);

-- Location: FF_X63_Y66_N5
\prescaler[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(19));

-- Location: LCCOMB_X62_Y66_N12
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (prescaler(20) & (\Add0~39\ $ (GND))) # (!prescaler(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((prescaler(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X63_Y66_N28
\prescaler~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~4_combout\ = (!\Equal0~8_combout\ & \Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~40_combout\,
	combout => \prescaler~4_combout\);

-- Location: FF_X63_Y66_N29
\prescaler[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(20));

-- Location: LCCOMB_X62_Y66_N14
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (prescaler(21) & (!\Add0~41\)) # (!prescaler(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!prescaler(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X62_Y66_N30
\prescaler~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~3_combout\ = (\Add0~42_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~42_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~3_combout\);

-- Location: FF_X62_Y66_N31
\prescaler[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(21));

-- Location: LCCOMB_X62_Y66_N16
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = (prescaler(22) & (\Add0~43\ $ (GND))) # (!prescaler(22) & (!\Add0~43\ & VCC))
-- \Add0~45\ = CARRY((prescaler(22) & !\Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(22),
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X62_Y66_N28
\prescaler~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~2_combout\ = (!\Equal0~8_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~44_combout\,
	combout => \prescaler~2_combout\);

-- Location: FF_X62_Y66_N29
\prescaler[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(22));

-- Location: LCCOMB_X62_Y66_N18
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (prescaler(23) & (!\Add0~45\)) # (!prescaler(23) & ((\Add0~45\) # (GND)))
-- \Add0~47\ = CARRY((!\Add0~45\) # (!prescaler(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(23),
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~46_combout\,
	cout => \Add0~47\);

-- Location: LCCOMB_X63_Y66_N2
\prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~1_combout\ = (!\Equal0~8_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~46_combout\,
	combout => \prescaler~1_combout\);

-- Location: FF_X63_Y66_N3
\prescaler[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(23));

-- Location: LCCOMB_X62_Y66_N20
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (prescaler(24) & (\Add0~47\ $ (GND))) # (!prescaler(24) & (!\Add0~47\ & VCC))
-- \Add0~49\ = CARRY((prescaler(24) & !\Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(24),
	datad => VCC,
	cin => \Add0~47\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: FF_X62_Y66_N21
\prescaler[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~48_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(24));

-- Location: LCCOMB_X62_Y66_N22
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = (prescaler(25) & (!\Add0~49\)) # (!prescaler(25) & ((\Add0~49\) # (GND)))
-- \Add0~51\ = CARRY((!\Add0~49\) # (!prescaler(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(25),
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~50_combout\,
	cout => \Add0~51\);

-- Location: LCCOMB_X63_Y66_N26
\prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~0_combout\ = (!\Equal0~8_combout\ & \Add0~50_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~8_combout\,
	datad => \Add0~50_combout\,
	combout => \prescaler~0_combout\);

-- Location: FF_X63_Y66_N27
\prescaler[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \prescaler~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(25));

-- Location: LCCOMB_X62_Y66_N24
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (prescaler(26) & (\Add0~51\ $ (GND))) # (!prescaler(26) & (!\Add0~51\ & VCC))
-- \Add0~53\ = CARRY((prescaler(26) & !\Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(26),
	datad => VCC,
	cin => \Add0~51\,
	combout => \Add0~52_combout\,
	cout => \Add0~53\);

-- Location: FF_X62_Y66_N25
\prescaler[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~52_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(26));

-- Location: LCCOMB_X62_Y66_N26
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = prescaler(27) $ (\Add0~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(27),
	cin => \Add0~53\,
	combout => \Add0~54_combout\);

-- Location: FF_X62_Y66_N27
\prescaler[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Add0~54_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => prescaler(27));

-- Location: LCCOMB_X63_Y66_N16
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!prescaler(27) & (!prescaler(24) & (prescaler(25) & !prescaler(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(27),
	datab => prescaler(24),
	datac => prescaler(25),
	datad => prescaler(26),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X63_Y66_N8
\Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~2_combout\ = (prescaler(17) & (prescaler(19) & (!prescaler(16) & !prescaler(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(17),
	datab => prescaler(19),
	datac => prescaler(16),
	datad => prescaler(18),
	combout => \Equal0~2_combout\);

-- Location: LCCOMB_X63_Y66_N10
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (prescaler(20) & (prescaler(21) & (prescaler(23) & prescaler(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(20),
	datab => prescaler(21),
	datac => prescaler(23),
	datad => prescaler(22),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X63_Y66_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~3_combout\ & (\Equal0~0_combout\ & (\Equal0~2_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~3_combout\,
	datab => \Equal0~0_combout\,
	datac => \Equal0~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X63_Y67_N10
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!prescaler(2) & (!prescaler(1) & (!prescaler(0) & !prescaler(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(2),
	datab => prescaler(1),
	datac => prescaler(0),
	datad => prescaler(3),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X63_Y67_N20
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (prescaler(7) & (!prescaler(4) & (!prescaler(6) & !prescaler(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(7),
	datab => prescaler(4),
	datac => prescaler(6),
	datad => prescaler(5),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X63_Y66_N18
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

-- Location: LCCOMB_X63_Y66_N20
\clk_2Hz_i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \clk_2Hz_i~0_combout\ = \clk_2Hz_i~q\ $ (\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \clk_2Hz_i~q\,
	datad => \Equal0~8_combout\,
	combout => \clk_2Hz_i~0_combout\);

-- Location: FF_X63_Y66_N21
clk_2Hz_i : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \clk_2Hz_i~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \clk_2Hz_i~q\);

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

-- Location: LCCOMB_X63_Y67_N24
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

-- Location: LCCOMB_X59_Y67_N0
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

-- Location: LCCOMB_X58_Y67_N16
\i~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~0_combout\ = (\Add1~0_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add1~0_combout\,
	datad => \Equal1~10_combout\,
	combout => \i~0_combout\);

-- Location: FF_X58_Y67_N17
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

-- Location: LCCOMB_X59_Y67_N2
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

-- Location: LCCOMB_X58_Y67_N6
\i~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \i~2_combout\ = (\Add1~2_combout\ & !\Equal1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~2_combout\,
	datad => \Equal1~10_combout\,
	combout => \i~2_combout\);

-- Location: FF_X58_Y67_N7
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

-- Location: LCCOMB_X59_Y67_N4
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

-- Location: FF_X59_Y67_N5
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

-- Location: LCCOMB_X59_Y67_N6
\Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~6_combout\ = (i(3) & (!\Add1~5\)) # (!i(3) & ((\Add1~5\) # (GND)))
-- \Add1~7\ = CARRY((!\Add1~5\) # (!i(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datad => VCC,
	cin => \Add1~5\,
	combout => \Add1~6_combout\,
	cout => \Add1~7\);

-- Location: LCCOMB_X58_Y67_N0
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

-- Location: FF_X58_Y67_N1
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

-- Location: LCCOMB_X59_Y67_N8
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

-- Location: FF_X59_Y67_N9
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

-- Location: LCCOMB_X59_Y67_N10
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

-- Location: FF_X59_Y67_N11
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

-- Location: LCCOMB_X59_Y67_N12
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

-- Location: FF_X59_Y67_N13
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

-- Location: LCCOMB_X59_Y67_N14
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

-- Location: FF_X59_Y67_N15
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

-- Location: LCCOMB_X59_Y67_N16
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

-- Location: FF_X59_Y67_N17
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

-- Location: LCCOMB_X59_Y67_N18
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

-- Location: FF_X59_Y67_N19
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

-- Location: LCCOMB_X59_Y67_N20
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

-- Location: FF_X59_Y67_N21
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

-- Location: LCCOMB_X59_Y67_N22
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

-- Location: FF_X59_Y67_N23
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

-- Location: LCCOMB_X59_Y67_N24
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

-- Location: FF_X59_Y67_N25
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

-- Location: LCCOMB_X59_Y67_N26
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

-- Location: FF_X59_Y67_N27
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

-- Location: LCCOMB_X59_Y67_N28
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

-- Location: FF_X59_Y67_N29
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

-- Location: LCCOMB_X59_Y67_N30
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

-- Location: FF_X59_Y67_N31
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

-- Location: LCCOMB_X59_Y66_N0
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

-- Location: FF_X59_Y66_N1
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

-- Location: LCCOMB_X59_Y66_N2
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

-- Location: FF_X59_Y66_N3
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

-- Location: LCCOMB_X59_Y66_N4
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

-- Location: FF_X59_Y66_N5
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

-- Location: LCCOMB_X59_Y66_N6
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

-- Location: FF_X59_Y66_N7
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

-- Location: LCCOMB_X59_Y66_N8
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

-- Location: FF_X59_Y66_N9
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

-- Location: LCCOMB_X59_Y66_N10
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

-- Location: FF_X59_Y66_N11
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

-- Location: LCCOMB_X59_Y66_N12
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

-- Location: FF_X59_Y66_N13
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

-- Location: LCCOMB_X59_Y66_N14
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

-- Location: FF_X59_Y66_N15
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

-- Location: LCCOMB_X58_Y66_N14
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!i(22) & (!i(21) & (!i(20) & !i(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(22),
	datab => i(21),
	datac => i(20),
	datad => i(23),
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X59_Y66_N16
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

-- Location: FF_X59_Y66_N17
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

-- Location: LCCOMB_X59_Y66_N18
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

-- Location: FF_X59_Y66_N19
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

-- Location: LCCOMB_X59_Y66_N20
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

-- Location: FF_X59_Y66_N21
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

-- Location: LCCOMB_X59_Y66_N22
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

-- Location: FF_X59_Y66_N23
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

-- Location: LCCOMB_X58_Y66_N0
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!i(26) & (!i(25) & (!i(27) & !i(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(26),
	datab => i(25),
	datac => i(27),
	datad => i(24),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X58_Y67_N30
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!i(14) & (!i(12) & (!i(13) & !i(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(14),
	datab => i(12),
	datac => i(13),
	datad => i(15),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X58_Y67_N20
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!i(10) & (!i(9) & (!i(11) & !i(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(10),
	datab => i(9),
	datac => i(11),
	datad => i(8),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X58_Y67_N22
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!i(6) & (!i(5) & (!i(4) & !i(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datab => i(5),
	datac => i(4),
	datad => i(7),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X58_Y67_N24
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!i(18) & (!i(16) & (!i(17) & !i(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(18),
	datab => i(16),
	datac => i(17),
	datad => i(19),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X58_Y67_N8
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~6_combout\ & (\Equal1~7_combout\ & (\Equal1~8_combout\ & \Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~6_combout\,
	datab => \Equal1~7_combout\,
	datac => \Equal1~8_combout\,
	datad => \Equal1~5_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X58_Y67_N14
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!i(0) & !i(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(0),
	datad => i(2),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X59_Y66_N24
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

-- Location: FF_X59_Y66_N25
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

-- Location: LCCOMB_X59_Y66_N26
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

-- Location: FF_X59_Y66_N27
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

-- Location: LCCOMB_X59_Y66_N28
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

-- Location: FF_X59_Y66_N29
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

-- Location: LCCOMB_X59_Y66_N30
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

-- Location: FF_X59_Y66_N31
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

-- Location: LCCOMB_X58_Y67_N12
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!i(28) & (!i(31) & (!i(29) & !i(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(28),
	datab => i(31),
	datac => i(29),
	datad => i(30),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X58_Y67_N2
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (i(1) & (i(3) & (\Equal1~0_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(3),
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X58_Y67_N10
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

-- Location: FF_X63_Y67_N25
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

-- Location: LCCOMB_X56_Y67_N16
\Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~0_combout\ = (!i(0) & (!\reset~input_o\ & (!i(3) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \reset~input_o\,
	datac => i(3),
	datad => i(2),
	combout => \Decoder0~0_combout\);

-- Location: LCCOMB_X56_Y67_N24
\code[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[0]~0_combout\ = (i(1) & (((code(0))))) # (!i(1) & ((\Decoder0~0_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~0_combout\ & ((code(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \ps2_data~input_o\,
	datac => code(0),
	datad => \Decoder0~0_combout\,
	combout => \code[0]~0_combout\);

-- Location: FF_X56_Y67_N25
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

-- Location: LCCOMB_X57_Y67_N8
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

-- Location: FF_X57_Y67_N9
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

-- Location: LCCOMB_X56_Y67_N10
\code[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[1]~1_combout\ = (!i(1) & (i(0) & (!i(3) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(0),
	datac => i(3),
	datad => i(2),
	combout => \code[1]~1_combout\);

-- Location: LCCOMB_X56_Y67_N30
\code[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[1]~2_combout\ = (\reset~input_o\ & (((code(1))))) # (!\reset~input_o\ & ((\code[1]~1_combout\ & (\ps2_data~input_o\)) # (!\code[1]~1_combout\ & ((code(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datab => \reset~input_o\,
	datac => code(1),
	datad => \code[1]~1_combout\,
	combout => \code[1]~2_combout\);

-- Location: FF_X56_Y67_N31
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

-- Location: LCCOMB_X57_Y67_N18
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

-- Location: FF_X57_Y67_N19
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[1]~reg0_q\);

-- Location: LCCOMB_X56_Y67_N8
\code[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[2]~3_combout\ = (i(1) & ((\Decoder0~0_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~0_combout\ & ((code(2)))))) # (!i(1) & (((code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \ps2_data~input_o\,
	datac => code(2),
	datad => \Decoder0~0_combout\,
	combout => \code[2]~3_combout\);

-- Location: FF_X56_Y67_N9
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

-- Location: LCCOMB_X57_Y67_N24
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

-- Location: FF_X57_Y67_N25
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[2]~reg0_q\);

-- Location: LCCOMB_X56_Y67_N20
\Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~1_combout\ = (i(1) & (!\reset~input_o\ & (!i(3) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \reset~input_o\,
	datac => i(3),
	datad => i(2),
	combout => \Decoder0~1_combout\);

-- Location: LCCOMB_X56_Y67_N22
\code[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[3]~4_combout\ = (i(0) & ((\Decoder0~1_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~1_combout\ & ((code(3)))))) # (!i(0) & (((code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \ps2_data~input_o\,
	datac => code(3),
	datad => \Decoder0~1_combout\,
	combout => \code[3]~4_combout\);

-- Location: FF_X56_Y67_N23
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

-- Location: LCCOMB_X57_Y67_N6
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

-- Location: FF_X57_Y67_N7
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

-- Location: LCCOMB_X56_Y67_N18
\Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~2_combout\ = (!i(0) & (!\reset~input_o\ & (!i(3) & i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \reset~input_o\,
	datac => i(3),
	datad => i(2),
	combout => \Decoder0~2_combout\);

-- Location: LCCOMB_X56_Y67_N28
\code[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[4]~5_combout\ = (i(1) & (((code(4))))) # (!i(1) & ((\Decoder0~2_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~2_combout\ & ((code(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \ps2_data~input_o\,
	datac => code(4),
	datad => \Decoder0~2_combout\,
	combout => \code[4]~5_combout\);

-- Location: FF_X56_Y67_N29
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

-- Location: LCCOMB_X57_Y67_N0
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

-- Location: FF_X57_Y67_N1
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

-- Location: LCCOMB_X56_Y67_N0
\Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~3_combout\ = (i(0) & (!\reset~input_o\ & (!i(3) & i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \reset~input_o\,
	datac => i(3),
	datad => i(2),
	combout => \Decoder0~3_combout\);

-- Location: LCCOMB_X56_Y67_N6
\code[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[5]~6_combout\ = (i(1) & (((code(5))))) # (!i(1) & ((\Decoder0~3_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~3_combout\ & ((code(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \ps2_data~input_o\,
	datac => code(5),
	datad => \Decoder0~3_combout\,
	combout => \code[5]~6_combout\);

-- Location: FF_X56_Y67_N7
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

-- Location: LCCOMB_X63_Y67_N14
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

-- Location: FF_X63_Y67_N15
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[5]~reg0_q\);

-- Location: LCCOMB_X56_Y67_N4
\code[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[6]~7_combout\ = (i(1) & ((\Decoder0~2_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~2_combout\ & ((code(6)))))) # (!i(1) & (((code(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \ps2_data~input_o\,
	datac => code(6),
	datad => \Decoder0~2_combout\,
	combout => \code[6]~7_combout\);

-- Location: FF_X56_Y67_N5
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

-- Location: LCCOMB_X63_Y67_N4
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

-- Location: FF_X63_Y67_N5
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[6]~reg0_q\);

-- Location: LCCOMB_X56_Y67_N26
\code[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[7]~8_combout\ = (i(1) & ((\Decoder0~3_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~3_combout\ & ((code(7)))))) # (!i(1) & (((code(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => \ps2_data~input_o\,
	datac => code(7),
	datad => \Decoder0~3_combout\,
	combout => \code[7]~8_combout\);

-- Location: FF_X56_Y67_N27
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

-- Location: LCCOMB_X57_Y67_N10
\key[7]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[7]~reg0feeder_combout\ = code(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => code(7),
	combout => \key[7]~reg0feeder_combout\);

-- Location: FF_X57_Y67_N11
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

-- Location: LCCOMB_X56_Y67_N2
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!i(0) & (!\reset~input_o\ & (i(3) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => \reset~input_o\,
	datac => i(3),
	datad => i(2),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X56_Y67_N12
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

-- Location: FF_X56_Y67_N13
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

-- Location: LCCOMB_X63_Y67_N26
\key[8]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[8]~reg0feeder_combout\ = code(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => code(8),
	combout => \key[8]~reg0feeder_combout\);

-- Location: FF_X63_Y67_N27
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[8]~reg0_q\);

-- Location: LCCOMB_X58_Y67_N28
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!i(1) & (i(3) & (i(0) & !i(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(3),
	datac => i(0),
	datad => i(2),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X56_Y67_N14
\code[9]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[9]~10_combout\ = (\reset~input_o\ & (((code(9))))) # (!\reset~input_o\ & ((\Decoder0~5_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~5_combout\ & ((code(9))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datab => \reset~input_o\,
	datac => code(9),
	datad => \Decoder0~5_combout\,
	combout => \code[9]~10_combout\);

-- Location: FF_X56_Y67_N15
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

-- Location: LCCOMB_X57_Y67_N4
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

-- Location: FF_X57_Y67_N5
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

-- Location: LCCOMB_X58_Y67_N26
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (i(1) & (i(3) & (\Equal1~0_combout\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(3),
	datac => \Equal1~0_combout\,
	datad => \reset~input_o\,
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X57_Y67_N26
\code[10]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[10]~11_combout\ = (\Decoder0~6_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~6_combout\ & ((code(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datac => code(10),
	datad => \Decoder0~6_combout\,
	combout => \code[10]~11_combout\);

-- Location: FF_X57_Y67_N27
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

-- Location: LCCOMB_X57_Y67_N22
\key[10]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[10]~reg0feeder_combout\ = code(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => code(10),
	combout => \key[10]~reg0feeder_combout\);

-- Location: FF_X57_Y67_N23
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

-- Location: LCCOMB_X57_Y67_N16
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

-- Location: FF_X57_Y67_N17
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

-- Location: LCCOMB_X57_Y67_N14
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (code(2) & ((code(1) & ((code(4)))) # (!code(1) & (code(3))))) # (!code(2) & (code(3) & (code(4) $ (code(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(3),
	datac => code(4),
	datad => code(1),
	combout => \Mux5~0_combout\);

-- Location: FF_X57_Y67_N15
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

-- Location: LCCOMB_X57_Y67_N20
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (code(3) & (code(4) & ((code(2)) # (!code(1))))) # (!code(3) & (code(2) & (!code(4) & !code(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(2),
	datab => code(3),
	datac => code(4),
	datad => code(1),
	combout => \Mux4~0_combout\);

-- Location: FF_X57_Y67_N21
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

-- Location: LCCOMB_X57_Y67_N30
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

-- Location: FF_X57_Y67_N31
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

-- Location: LCCOMB_X57_Y67_N28
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

-- Location: FF_X57_Y67_N29
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

-- Location: LCCOMB_X57_Y67_N2
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

-- Location: FF_X57_Y67_N3
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

-- Location: LCCOMB_X57_Y67_N12
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

-- Location: FF_X57_Y67_N13
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

-- Location: LCCOMB_X63_Y67_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (code(8) & (code(5) & (code(6) $ (code(7))))) # (!code(8) & (!code(6) & (code(7) $ (code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(8),
	datac => code(7),
	datad => code(5),
	combout => \Mux13~0_combout\);

-- Location: FF_X63_Y67_N29
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

-- Location: LCCOMB_X63_Y67_N18
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (code(6) & ((code(5) & (code(8))) # (!code(5) & ((code(7)))))) # (!code(6) & (code(7) & (code(8) $ (code(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(8),
	datac => code(7),
	datad => code(5),
	combout => \Mux12~0_combout\);

-- Location: FF_X63_Y67_N19
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

-- Location: LCCOMB_X63_Y67_N8
\Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~0_combout\ = (code(8) & (code(7) & ((code(6)) # (!code(5))))) # (!code(8) & (code(6) & (!code(7) & !code(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(8),
	datac => code(7),
	datad => code(5),
	combout => \Mux11~0_combout\);

-- Location: FF_X63_Y67_N9
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

-- Location: LCCOMB_X63_Y67_N22
\Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~0_combout\ = (code(5) & (code(6) $ (((!code(7)))))) # (!code(5) & ((code(6) & (code(8) & !code(7))) # (!code(6) & (!code(8) & code(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(8),
	datac => code(7),
	datad => code(5),
	combout => \Mux10~0_combout\);

-- Location: FF_X63_Y67_N23
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

-- Location: LCCOMB_X63_Y67_N12
\Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~0_combout\ = (code(6) & (!code(8) & ((code(5))))) # (!code(6) & ((code(7) & (!code(8))) # (!code(7) & ((code(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(8),
	datac => code(7),
	datad => code(5),
	combout => \Mux9~0_combout\);

-- Location: FF_X63_Y67_N13
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

-- Location: LCCOMB_X63_Y67_N6
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (code(6) & (!code(8) & ((code(5)) # (!code(7))))) # (!code(6) & (code(5) & (code(8) $ (!code(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(8),
	datac => code(7),
	datad => code(5),
	combout => \Mux8~0_combout\);

-- Location: FF_X63_Y67_N7
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
	ena => \Equal1~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \disp2[5]~reg0_q\);

-- Location: LCCOMB_X63_Y67_N0
\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (code(5) & ((code(8)) # (code(6) $ (code(7))))) # (!code(5) & ((code(6)) # (code(8) $ (code(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(6),
	datab => code(8),
	datac => code(7),
	datad => code(5),
	combout => \Mux7~0_combout\);

-- Location: FF_X63_Y67_N1
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
END structure;


