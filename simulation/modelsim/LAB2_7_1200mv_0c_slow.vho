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

-- DATE "08/24/2018 09:52:13"

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
	reset : IN std_logic;
	key : OUT std_logic_vector(10 DOWNTO 0);
	disp1 : OUT std_logic_vector(6 DOWNTO 0);
	disp2 : OUT std_logic_vector(6 DOWNTO 0)
	);
END LAB2;

-- Design Ports Information
-- clkLED	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
-- ps2_data	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ps2_clock	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_reset : std_logic;
SIGNAL ww_key : std_logic_vector(10 DOWNTO 0);
SIGNAL ww_disp1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_disp2 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clkLED~output_o\ : std_logic;
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
SIGNAL \Equal0~7_combout\ : std_logic;
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
SIGNAL \Equal0~6_combout\ : std_logic;
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
SIGNAL \Equal0~3_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Equal0~4_combout\ : std_logic;
SIGNAL \Equal0~8_combout\ : std_logic;
SIGNAL \clk_2Hz_i~0_combout\ : std_logic;
SIGNAL \clk_2Hz_i~q\ : std_logic;
SIGNAL \ps2_clock~input_o\ : std_logic;
SIGNAL \ps2_data~input_o\ : std_logic;
SIGNAL \i[0]~93_combout\ : std_logic;
SIGNAL \i[1]~31_combout\ : std_logic;
SIGNAL \i[1]~32\ : std_logic;
SIGNAL \i[2]~33_combout\ : std_logic;
SIGNAL \i[2]~34\ : std_logic;
SIGNAL \i[3]~35_combout\ : std_logic;
SIGNAL \Decoder0~4_combout\ : std_logic;
SIGNAL \Decoder0~5_combout\ : std_logic;
SIGNAL \key[0]~0_combout\ : std_logic;
SIGNAL \key[0]~reg0_q\ : std_logic;
SIGNAL \Decoder0~6_combout\ : std_logic;
SIGNAL \Decoder0~16_combout\ : std_logic;
SIGNAL \key[1]~reg0_q\ : std_logic;
SIGNAL \Decoder0~7_combout\ : std_logic;
SIGNAL \key[2]~reg0_q\ : std_logic;
SIGNAL \Decoder0~8_combout\ : std_logic;
SIGNAL \key[3]~reg0_q\ : std_logic;
SIGNAL \Decoder0~9_combout\ : std_logic;
SIGNAL \key[4]~reg0_q\ : std_logic;
SIGNAL \Decoder0~10_combout\ : std_logic;
SIGNAL \key[5]~reg0_q\ : std_logic;
SIGNAL \key[6]~reg0feeder_combout\ : std_logic;
SIGNAL \Decoder0~11_combout\ : std_logic;
SIGNAL \key[6]~reg0_q\ : std_logic;
SIGNAL \Decoder0~12_combout\ : std_logic;
SIGNAL \key[7]~reg0_q\ : std_logic;
SIGNAL \Decoder0~13_combout\ : std_logic;
SIGNAL \Decoder0~14_combout\ : std_logic;
SIGNAL \key[8]~reg0_q\ : std_logic;
SIGNAL \Decoder0~15_combout\ : std_logic;
SIGNAL \key[9]~1_combout\ : std_logic;
SIGNAL \key[9]~reg0_q\ : std_logic;
SIGNAL \Equal1~0_combout\ : std_logic;
SIGNAL \key[10]~2_combout\ : std_logic;
SIGNAL \key[10]~reg0_q\ : std_logic;
SIGNAL \code[4]~feeder_combout\ : std_logic;
SIGNAL \code[3]~feeder_combout\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \i[3]~36\ : std_logic;
SIGNAL \i[4]~37_combout\ : std_logic;
SIGNAL \i[4]~38\ : std_logic;
SIGNAL \i[5]~39_combout\ : std_logic;
SIGNAL \i[5]~40\ : std_logic;
SIGNAL \i[6]~41_combout\ : std_logic;
SIGNAL \i[6]~42\ : std_logic;
SIGNAL \i[7]~43_combout\ : std_logic;
SIGNAL \i[7]~44\ : std_logic;
SIGNAL \i[8]~45_combout\ : std_logic;
SIGNAL \i[8]~46\ : std_logic;
SIGNAL \i[9]~47_combout\ : std_logic;
SIGNAL \i[9]~48\ : std_logic;
SIGNAL \i[10]~49_combout\ : std_logic;
SIGNAL \i[10]~50\ : std_logic;
SIGNAL \i[11]~51_combout\ : std_logic;
SIGNAL \i[11]~52\ : std_logic;
SIGNAL \i[12]~53_combout\ : std_logic;
SIGNAL \i[12]~54\ : std_logic;
SIGNAL \i[13]~55_combout\ : std_logic;
SIGNAL \i[13]~56\ : std_logic;
SIGNAL \i[14]~57_combout\ : std_logic;
SIGNAL \i[14]~58\ : std_logic;
SIGNAL \i[15]~59_combout\ : std_logic;
SIGNAL \i[15]~60\ : std_logic;
SIGNAL \i[16]~61_combout\ : std_logic;
SIGNAL \i[16]~62\ : std_logic;
SIGNAL \i[17]~63_combout\ : std_logic;
SIGNAL \i[17]~64\ : std_logic;
SIGNAL \i[18]~65_combout\ : std_logic;
SIGNAL \i[18]~66\ : std_logic;
SIGNAL \i[19]~67_combout\ : std_logic;
SIGNAL \Equal1~5_combout\ : std_logic;
SIGNAL \i[19]~68\ : std_logic;
SIGNAL \i[20]~69_combout\ : std_logic;
SIGNAL \i[20]~70\ : std_logic;
SIGNAL \i[21]~71_combout\ : std_logic;
SIGNAL \i[21]~72\ : std_logic;
SIGNAL \i[22]~73_combout\ : std_logic;
SIGNAL \i[22]~74\ : std_logic;
SIGNAL \i[23]~75_combout\ : std_logic;
SIGNAL \Equal1~6_combout\ : std_logic;
SIGNAL \i[23]~76\ : std_logic;
SIGNAL \i[24]~77_combout\ : std_logic;
SIGNAL \i[24]~78\ : std_logic;
SIGNAL \i[25]~79_combout\ : std_logic;
SIGNAL \i[25]~80\ : std_logic;
SIGNAL \i[26]~81_combout\ : std_logic;
SIGNAL \i[26]~82\ : std_logic;
SIGNAL \i[27]~83_combout\ : std_logic;
SIGNAL \Equal1~7_combout\ : std_logic;
SIGNAL \i[27]~84\ : std_logic;
SIGNAL \i[28]~85_combout\ : std_logic;
SIGNAL \i[28]~86\ : std_logic;
SIGNAL \i[29]~87_combout\ : std_logic;
SIGNAL \i[29]~88\ : std_logic;
SIGNAL \i[30]~89_combout\ : std_logic;
SIGNAL \i[30]~90\ : std_logic;
SIGNAL \i[31]~91_combout\ : std_logic;
SIGNAL \Equal1~8_combout\ : std_logic;
SIGNAL \Equal1~9_combout\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Equal1~1_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Equal1~10_combout\ : std_logic;
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
SIGNAL \code[7]~feeder_combout\ : std_logic;
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
SIGNAL i : std_logic_vector(31 DOWNTO 0);
SIGNAL prescaler : std_logic_vector(27 DOWNTO 0);
SIGNAL code : std_logic_vector(10 DOWNTO 0);
SIGNAL \ALT_INV_disp2[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_disp1[6]~reg0_q\ : std_logic;
SIGNAL \ALT_INV_ps2_clock~input_o\ : std_logic;
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

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
ww_reset <= reset;
key <= ww_key;
disp1 <= ww_disp1;
disp2 <= ww_disp2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_disp2[6]~reg0_q\ <= NOT \disp2[6]~reg0_q\;
\ALT_INV_disp1[6]~reg0_q\ <= NOT \disp1[6]~reg0_q\;
\ALT_INV_ps2_clock~input_o\ <= NOT \ps2_clock~input_o\;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
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

-- Location: LCCOMB_X19_Y63_N4
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

-- Location: LCCOMB_X19_Y63_N2
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

-- Location: FF_X19_Y63_N3
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

-- Location: LCCOMB_X19_Y63_N6
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

-- Location: FF_X19_Y63_N7
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

-- Location: LCCOMB_X19_Y63_N8
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

-- Location: FF_X19_Y63_N9
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

-- Location: LCCOMB_X19_Y63_N10
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

-- Location: FF_X19_Y63_N11
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

-- Location: LCCOMB_X18_Y63_N8
\Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~7_combout\ = (!prescaler(1) & (!prescaler(3) & (!prescaler(2) & !prescaler(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(1),
	datab => prescaler(3),
	datac => prescaler(2),
	datad => prescaler(0),
	combout => \Equal0~7_combout\);

-- Location: LCCOMB_X19_Y63_N12
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

-- Location: FF_X19_Y63_N13
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

-- Location: LCCOMB_X19_Y63_N14
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

-- Location: FF_X19_Y63_N15
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

-- Location: LCCOMB_X19_Y63_N16
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

-- Location: FF_X19_Y63_N17
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

-- Location: LCCOMB_X19_Y63_N18
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

-- Location: LCCOMB_X19_Y63_N0
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

-- Location: FF_X19_Y63_N1
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

-- Location: LCCOMB_X19_Y63_N20
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

-- Location: FF_X19_Y63_N21
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

-- Location: LCCOMB_X19_Y63_N22
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

-- Location: FF_X19_Y63_N23
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

-- Location: LCCOMB_X19_Y63_N24
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

-- Location: FF_X19_Y63_N25
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

-- Location: LCCOMB_X19_Y63_N26
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

-- Location: FF_X19_Y63_N27
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

-- Location: LCCOMB_X18_Y63_N4
\Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~5_combout\ = (!prescaler(8) & (!prescaler(9) & (!prescaler(10) & !prescaler(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(8),
	datab => prescaler(9),
	datac => prescaler(10),
	datad => prescaler(11),
	combout => \Equal0~5_combout\);

-- Location: LCCOMB_X18_Y63_N30
\Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~6_combout\ = (!prescaler(5) & (prescaler(7) & (!prescaler(4) & !prescaler(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(5),
	datab => prescaler(7),
	datac => prescaler(4),
	datad => prescaler(6),
	combout => \Equal0~6_combout\);

-- Location: LCCOMB_X19_Y63_N28
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (prescaler(12) & (\Add0~23\ $ (GND))) # (!prescaler(12) & (!\Add0~23\ & VCC))
-- \Add0~25\ = CARRY((prescaler(12) & !\Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(12),
	datad => VCC,
	cin => \Add0~23\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X18_Y62_N0
\prescaler~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~10_combout\ = (!\Equal0~8_combout\ & \Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~24_combout\,
	combout => \prescaler~10_combout\);

-- Location: FF_X18_Y62_N1
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

-- Location: LCCOMB_X19_Y63_N30
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (prescaler(13) & (!\Add0~25\)) # (!prescaler(13) & ((\Add0~25\) # (GND)))
-- \Add0~27\ = CARRY((!\Add0~25\) # (!prescaler(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(13),
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~26_combout\,
	cout => \Add0~27\);

-- Location: LCCOMB_X18_Y62_N2
\prescaler~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~9_combout\ = (\Add0~26_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~26_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~9_combout\);

-- Location: FF_X18_Y62_N3
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

-- Location: LCCOMB_X19_Y62_N0
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = (prescaler(14) & (\Add0~27\ $ (GND))) # (!prescaler(14) & (!\Add0~27\ & VCC))
-- \Add0~29\ = CARRY((prescaler(14) & !\Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(14),
	datad => VCC,
	cin => \Add0~27\,
	combout => \Add0~28_combout\,
	cout => \Add0~29\);

-- Location: LCCOMB_X18_Y62_N12
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

-- Location: FF_X18_Y62_N13
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

-- Location: LCCOMB_X19_Y62_N2
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (prescaler(15) & (!\Add0~29\)) # (!prescaler(15) & ((\Add0~29\) # (GND)))
-- \Add0~31\ = CARRY((!\Add0~29\) # (!prescaler(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(15),
	datad => VCC,
	cin => \Add0~29\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X18_Y62_N22
\prescaler~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~7_combout\ = (\Add0~30_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~30_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~7_combout\);

-- Location: FF_X18_Y62_N23
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

-- Location: LCCOMB_X19_Y62_N4
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

-- Location: FF_X19_Y62_N5
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

-- Location: LCCOMB_X19_Y62_N6
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

-- Location: LCCOMB_X18_Y62_N26
\prescaler~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~6_combout\ = (\Add0~34_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~34_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~6_combout\);

-- Location: FF_X18_Y62_N27
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

-- Location: LCCOMB_X19_Y62_N8
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

-- Location: FF_X19_Y62_N9
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

-- Location: LCCOMB_X19_Y62_N10
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

-- Location: LCCOMB_X18_Y62_N8
\prescaler~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~5_combout\ = (\Add0~38_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~38_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~5_combout\);

-- Location: FF_X18_Y62_N9
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

-- Location: LCCOMB_X19_Y62_N12
\Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~40_combout\ = (prescaler(20) & (\Add0~39\ $ (GND))) # (!prescaler(20) & (!\Add0~39\ & VCC))
-- \Add0~41\ = CARRY((prescaler(20) & !\Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(20),
	datad => VCC,
	cin => \Add0~39\,
	combout => \Add0~40_combout\,
	cout => \Add0~41\);

-- Location: LCCOMB_X18_Y62_N16
\prescaler~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~4_combout\ = (\Add0~40_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~40_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~4_combout\);

-- Location: FF_X18_Y62_N17
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

-- Location: LCCOMB_X19_Y62_N14
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (prescaler(21) & (!\Add0~41\)) # (!prescaler(21) & ((\Add0~41\) # (GND)))
-- \Add0~43\ = CARRY((!\Add0~41\) # (!prescaler(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => prescaler(21),
	datad => VCC,
	cin => \Add0~41\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X18_Y62_N6
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

-- Location: FF_X18_Y62_N7
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

-- Location: LCCOMB_X19_Y62_N16
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

-- Location: LCCOMB_X18_Y62_N4
\prescaler~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~2_combout\ = (!\Equal0~8_combout\ & \Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~44_combout\,
	combout => \prescaler~2_combout\);

-- Location: FF_X18_Y62_N5
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

-- Location: LCCOMB_X19_Y62_N18
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

-- Location: LCCOMB_X19_Y62_N30
\prescaler~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~1_combout\ = (!\Equal0~8_combout\ & \Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~8_combout\,
	datad => \Add0~46_combout\,
	combout => \prescaler~1_combout\);

-- Location: FF_X19_Y62_N31
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

-- Location: LCCOMB_X19_Y62_N20
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

-- Location: FF_X19_Y62_N21
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

-- Location: LCCOMB_X19_Y62_N22
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

-- Location: LCCOMB_X19_Y62_N28
\prescaler~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \prescaler~0_combout\ = (\Add0~50_combout\ & !\Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add0~50_combout\,
	datad => \Equal0~8_combout\,
	combout => \prescaler~0_combout\);

-- Location: FF_X19_Y62_N29
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

-- Location: LCCOMB_X19_Y62_N24
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

-- Location: FF_X19_Y62_N25
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

-- Location: LCCOMB_X19_Y62_N26
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

-- Location: FF_X19_Y62_N27
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

-- Location: LCCOMB_X18_Y62_N30
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!prescaler(24) & (prescaler(25) & (!prescaler(27) & !prescaler(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(24),
	datab => prescaler(25),
	datac => prescaler(27),
	datad => prescaler(26),
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X18_Y62_N20
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

-- Location: LCCOMB_X18_Y62_N14
\Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~3_combout\ = (prescaler(14) & (prescaler(12) & (prescaler(15) & prescaler(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(14),
	datab => prescaler(12),
	datac => prescaler(15),
	datad => prescaler(13),
	combout => \Equal0~3_combout\);

-- Location: LCCOMB_X18_Y62_N18
\Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (prescaler(23) & (prescaler(20) & (prescaler(22) & prescaler(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => prescaler(23),
	datab => prescaler(20),
	datac => prescaler(22),
	datad => prescaler(21),
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X18_Y62_N24
\Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~4_combout\ = (\Equal0~0_combout\ & (\Equal0~2_combout\ & (\Equal0~3_combout\ & \Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \Equal0~2_combout\,
	datac => \Equal0~3_combout\,
	datad => \Equal0~1_combout\,
	combout => \Equal0~4_combout\);

-- Location: LCCOMB_X18_Y62_N10
\Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~8_combout\ = (\Equal0~7_combout\ & (\Equal0~5_combout\ & (\Equal0~6_combout\ & \Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~7_combout\,
	datab => \Equal0~5_combout\,
	datac => \Equal0~6_combout\,
	datad => \Equal0~4_combout\,
	combout => \Equal0~8_combout\);

-- Location: LCCOMB_X18_Y62_N28
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

-- Location: FF_X18_Y62_N29
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

-- Location: LCCOMB_X14_Y64_N20
\i[0]~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[0]~93_combout\ = !i(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i(0),
	combout => \i[0]~93_combout\);

-- Location: FF_X14_Y64_N21
\i[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[0]~93_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(0));

-- Location: LCCOMB_X13_Y64_N2
\i[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[1]~31_combout\ = (i(0) & (i(1) $ (VCC))) # (!i(0) & (i(1) & VCC))
-- \i[1]~32\ = CARRY((i(0) & i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(1),
	datad => VCC,
	combout => \i[1]~31_combout\,
	cout => \i[1]~32\);

-- Location: FF_X13_Y64_N3
\i[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[1]~31_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(1));

-- Location: LCCOMB_X13_Y64_N4
\i[2]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[2]~33_combout\ = (i(2) & (!\i[1]~32\)) # (!i(2) & ((\i[1]~32\) # (GND)))
-- \i[2]~34\ = CARRY((!\i[1]~32\) # (!i(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(2),
	datad => VCC,
	cin => \i[1]~32\,
	combout => \i[2]~33_combout\,
	cout => \i[2]~34\);

-- Location: FF_X13_Y64_N5
\i[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[2]~33_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(2));

-- Location: LCCOMB_X13_Y64_N6
\i[3]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[3]~35_combout\ = (i(3) & (\i[2]~34\ $ (GND))) # (!i(3) & (!\i[2]~34\ & VCC))
-- \i[3]~36\ = CARRY((i(3) & !\i[2]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(3),
	datad => VCC,
	cin => \i[2]~34\,
	combout => \i[3]~35_combout\,
	cout => \i[3]~36\);

-- Location: FF_X13_Y64_N7
\i[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[3]~35_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(3));

-- Location: LCCOMB_X14_Y64_N14
\Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~4_combout\ = (!\reset~input_o\ & (!i(3) & !i(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => i(3),
	datad => i(0),
	combout => \Decoder0~4_combout\);

-- Location: LCCOMB_X14_Y64_N28
\Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~5_combout\ = (!i(2) & !i(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i(2),
	datad => i(1),
	combout => \Decoder0~5_combout\);

-- Location: LCCOMB_X14_Y64_N4
\key[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[0]~0_combout\ = (\Decoder0~4_combout\ & ((\Decoder0~5_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~5_combout\ & ((\key[0]~reg0_q\))))) # (!\Decoder0~4_combout\ & (((\key[0]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datab => \Decoder0~4_combout\,
	datac => \key[0]~reg0_q\,
	datad => \Decoder0~5_combout\,
	combout => \key[0]~0_combout\);

-- Location: FF_X14_Y64_N5
\key[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[0]~reg0_q\);

-- Location: LCCOMB_X14_Y64_N26
\Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~6_combout\ = (!\reset~input_o\ & (!i(3) & i(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => i(3),
	datad => i(0),
	combout => \Decoder0~6_combout\);

-- Location: LCCOMB_X12_Y64_N4
\Decoder0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~16_combout\ = (!i(1) & (!i(2) & \Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(2),
	datad => \Decoder0~6_combout\,
	combout => \Decoder0~16_combout\);

-- Location: FF_X12_Y64_N5
\key[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[1]~reg0_q\);

-- Location: LCCOMB_X12_Y64_N26
\Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~7_combout\ = (i(1) & (!i(2) & \Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(2),
	datad => \Decoder0~4_combout\,
	combout => \Decoder0~7_combout\);

-- Location: FF_X12_Y64_N27
\key[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[2]~reg0_q\);

-- Location: LCCOMB_X16_Y64_N28
\Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~8_combout\ = (\Decoder0~6_combout\ & (i(1) & !i(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~6_combout\,
	datab => i(1),
	datad => i(2),
	combout => \Decoder0~8_combout\);

-- Location: FF_X16_Y64_N29
\key[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[3]~reg0_q\);

-- Location: LCCOMB_X16_Y64_N30
\Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~9_combout\ = (i(2) & (!i(1) & \Decoder0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(1),
	datad => \Decoder0~4_combout\,
	combout => \Decoder0~9_combout\);

-- Location: FF_X16_Y64_N31
\key[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[4]~reg0_q\);

-- Location: LCCOMB_X11_Y64_N4
\Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~10_combout\ = (\Decoder0~6_combout\ & (!i(1) & i(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Decoder0~6_combout\,
	datab => i(1),
	datad => i(2),
	combout => \Decoder0~10_combout\);

-- Location: FF_X11_Y64_N5
\key[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[5]~reg0_q\);

-- Location: LCCOMB_X14_Y64_N10
\key[6]~reg0feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[6]~reg0feeder_combout\ = \ps2_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_data~input_o\,
	combout => \key[6]~reg0feeder_combout\);

-- Location: LCCOMB_X14_Y64_N12
\Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~11_combout\ = (i(2) & (\Decoder0~4_combout\ & i(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => \Decoder0~4_combout\,
	datad => i(1),
	combout => \Decoder0~11_combout\);

-- Location: FF_X14_Y64_N11
\key[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[6]~reg0feeder_combout\,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[6]~reg0_q\);

-- Location: LCCOMB_X13_Y65_N8
\Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~12_combout\ = (i(2) & (i(1) & \Decoder0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(2),
	datab => i(1),
	datad => \Decoder0~6_combout\,
	combout => \Decoder0~12_combout\);

-- Location: FF_X13_Y65_N9
\key[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[7]~reg0_q\);

-- Location: LCCOMB_X14_Y64_N22
\Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~13_combout\ = (!i(0) & (!\reset~input_o\ & (i(3) & !i(2))))

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
	combout => \Decoder0~13_combout\);

-- Location: LCCOMB_X11_Y64_N26
\Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~14_combout\ = (!i(1) & \Decoder0~13_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => i(1),
	datad => \Decoder0~13_combout\,
	combout => \Decoder0~14_combout\);

-- Location: FF_X11_Y64_N27
\key[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[8]~reg0_q\);

-- Location: LCCOMB_X14_Y64_N16
\Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Decoder0~15_combout\ = (!i(1) & (!i(2) & (!\reset~input_o\ & i(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(1),
	datab => i(2),
	datac => \reset~input_o\,
	datad => i(0),
	combout => \Decoder0~15_combout\);

-- Location: LCCOMB_X14_Y64_N0
\key[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[9]~1_combout\ = (i(3) & ((\Decoder0~15_combout\ & (\ps2_data~input_o\)) # (!\Decoder0~15_combout\ & ((\key[9]~reg0_q\))))) # (!i(3) & (((\key[9]~reg0_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datab => i(3),
	datac => \key[9]~reg0_q\,
	datad => \Decoder0~15_combout\,
	combout => \key[9]~1_combout\);

-- Location: FF_X14_Y64_N1
\key[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[9]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[9]~reg0_q\);

-- Location: LCCOMB_X14_Y64_N2
\Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~0_combout\ = (!i(0) & (i(3) & (!i(2) & i(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(0),
	datab => i(3),
	datac => i(2),
	datad => i(1),
	combout => \Equal1~0_combout\);

-- Location: LCCOMB_X14_Y64_N18
\key[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \key[10]~2_combout\ = (\reset~input_o\ & (((\key[10]~reg0_q\)))) # (!\reset~input_o\ & ((\Equal1~0_combout\ & (\ps2_data~input_o\)) # (!\Equal1~0_combout\ & ((\key[10]~reg0_q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ps2_data~input_o\,
	datab => \reset~input_o\,
	datac => \key[10]~reg0_q\,
	datad => \Equal1~0_combout\,
	combout => \key[10]~2_combout\);

-- Location: FF_X14_Y64_N19
\key[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \key[10]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \key[10]~reg0_q\);

-- Location: FF_X12_Y64_N29
\code[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(1));

-- Location: LCCOMB_X16_Y64_N14
\code[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[4]~feeder_combout\ = \ps2_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_data~input_o\,
	combout => \code[4]~feeder_combout\);

-- Location: FF_X16_Y64_N15
\code[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[4]~feeder_combout\,
	ena => \Decoder0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(4));

-- Location: FF_X12_Y64_N7
\code[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(2));

-- Location: LCCOMB_X16_Y64_N20
\code[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[3]~feeder_combout\ = \ps2_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_data~input_o\,
	combout => \code[3]~feeder_combout\);

-- Location: FF_X16_Y64_N21
\code[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[3]~feeder_combout\,
	ena => \Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(3));

-- Location: LCCOMB_X17_Y63_N12
\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (code(4) & (code(1) & (code(2) $ (code(3))))) # (!code(4) & (!code(2) & (code(1) $ (code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(2),
	datad => code(3),
	combout => \Mux6~0_combout\);

-- Location: LCCOMB_X13_Y64_N8
\i[4]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[4]~37_combout\ = (i(4) & (!\i[3]~36\)) # (!i(4) & ((\i[3]~36\) # (GND)))
-- \i[4]~38\ = CARRY((!\i[3]~36\) # (!i(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(4),
	datad => VCC,
	cin => \i[3]~36\,
	combout => \i[4]~37_combout\,
	cout => \i[4]~38\);

-- Location: FF_X13_Y64_N9
\i[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[4]~37_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(4));

-- Location: LCCOMB_X13_Y64_N10
\i[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[5]~39_combout\ = (i(5) & (\i[4]~38\ $ (GND))) # (!i(5) & (!\i[4]~38\ & VCC))
-- \i[5]~40\ = CARRY((i(5) & !\i[4]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(5),
	datad => VCC,
	cin => \i[4]~38\,
	combout => \i[5]~39_combout\,
	cout => \i[5]~40\);

-- Location: FF_X13_Y64_N11
\i[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[5]~39_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(5));

-- Location: LCCOMB_X13_Y64_N12
\i[6]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[6]~41_combout\ = (i(6) & (!\i[5]~40\)) # (!i(6) & ((\i[5]~40\) # (GND)))
-- \i[6]~42\ = CARRY((!\i[5]~40\) # (!i(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(6),
	datad => VCC,
	cin => \i[5]~40\,
	combout => \i[6]~41_combout\,
	cout => \i[6]~42\);

-- Location: FF_X13_Y64_N13
\i[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[6]~41_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(6));

-- Location: LCCOMB_X13_Y64_N14
\i[7]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[7]~43_combout\ = (i(7) & (\i[6]~42\ $ (GND))) # (!i(7) & (!\i[6]~42\ & VCC))
-- \i[7]~44\ = CARRY((i(7) & !\i[6]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(7),
	datad => VCC,
	cin => \i[6]~42\,
	combout => \i[7]~43_combout\,
	cout => \i[7]~44\);

-- Location: FF_X13_Y64_N15
\i[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[7]~43_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(7));

-- Location: LCCOMB_X13_Y64_N16
\i[8]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[8]~45_combout\ = (i(8) & (!\i[7]~44\)) # (!i(8) & ((\i[7]~44\) # (GND)))
-- \i[8]~46\ = CARRY((!\i[7]~44\) # (!i(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(8),
	datad => VCC,
	cin => \i[7]~44\,
	combout => \i[8]~45_combout\,
	cout => \i[8]~46\);

-- Location: FF_X13_Y64_N17
\i[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[8]~45_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(8));

-- Location: LCCOMB_X13_Y64_N18
\i[9]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[9]~47_combout\ = (i(9) & (\i[8]~46\ $ (GND))) # (!i(9) & (!\i[8]~46\ & VCC))
-- \i[9]~48\ = CARRY((i(9) & !\i[8]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(9),
	datad => VCC,
	cin => \i[8]~46\,
	combout => \i[9]~47_combout\,
	cout => \i[9]~48\);

-- Location: FF_X13_Y64_N19
\i[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[9]~47_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(9));

-- Location: LCCOMB_X13_Y64_N20
\i[10]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[10]~49_combout\ = (i(10) & (!\i[9]~48\)) # (!i(10) & ((\i[9]~48\) # (GND)))
-- \i[10]~50\ = CARRY((!\i[9]~48\) # (!i(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(10),
	datad => VCC,
	cin => \i[9]~48\,
	combout => \i[10]~49_combout\,
	cout => \i[10]~50\);

-- Location: FF_X13_Y64_N21
\i[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[10]~49_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(10));

-- Location: LCCOMB_X13_Y64_N22
\i[11]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[11]~51_combout\ = (i(11) & (\i[10]~50\ $ (GND))) # (!i(11) & (!\i[10]~50\ & VCC))
-- \i[11]~52\ = CARRY((i(11) & !\i[10]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(11),
	datad => VCC,
	cin => \i[10]~50\,
	combout => \i[11]~51_combout\,
	cout => \i[11]~52\);

-- Location: FF_X13_Y64_N23
\i[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[11]~51_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(11));

-- Location: LCCOMB_X13_Y64_N24
\i[12]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[12]~53_combout\ = (i(12) & (!\i[11]~52\)) # (!i(12) & ((\i[11]~52\) # (GND)))
-- \i[12]~54\ = CARRY((!\i[11]~52\) # (!i(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(12),
	datad => VCC,
	cin => \i[11]~52\,
	combout => \i[12]~53_combout\,
	cout => \i[12]~54\);

-- Location: FF_X13_Y64_N25
\i[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[12]~53_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(12));

-- Location: LCCOMB_X13_Y64_N26
\i[13]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[13]~55_combout\ = (i(13) & (\i[12]~54\ $ (GND))) # (!i(13) & (!\i[12]~54\ & VCC))
-- \i[13]~56\ = CARRY((i(13) & !\i[12]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(13),
	datad => VCC,
	cin => \i[12]~54\,
	combout => \i[13]~55_combout\,
	cout => \i[13]~56\);

-- Location: FF_X13_Y64_N27
\i[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[13]~55_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(13));

-- Location: LCCOMB_X13_Y64_N28
\i[14]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[14]~57_combout\ = (i(14) & (!\i[13]~56\)) # (!i(14) & ((\i[13]~56\) # (GND)))
-- \i[14]~58\ = CARRY((!\i[13]~56\) # (!i(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(14),
	datad => VCC,
	cin => \i[13]~56\,
	combout => \i[14]~57_combout\,
	cout => \i[14]~58\);

-- Location: FF_X13_Y64_N29
\i[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[14]~57_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(14));

-- Location: LCCOMB_X13_Y64_N30
\i[15]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[15]~59_combout\ = (i(15) & (\i[14]~58\ $ (GND))) # (!i(15) & (!\i[14]~58\ & VCC))
-- \i[15]~60\ = CARRY((i(15) & !\i[14]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(15),
	datad => VCC,
	cin => \i[14]~58\,
	combout => \i[15]~59_combout\,
	cout => \i[15]~60\);

-- Location: FF_X13_Y64_N31
\i[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[15]~59_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(15));

-- Location: LCCOMB_X13_Y63_N0
\i[16]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[16]~61_combout\ = (i(16) & (!\i[15]~60\)) # (!i(16) & ((\i[15]~60\) # (GND)))
-- \i[16]~62\ = CARRY((!\i[15]~60\) # (!i(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(16),
	datad => VCC,
	cin => \i[15]~60\,
	combout => \i[16]~61_combout\,
	cout => \i[16]~62\);

-- Location: FF_X13_Y63_N1
\i[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[16]~61_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(16));

-- Location: LCCOMB_X13_Y63_N2
\i[17]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[17]~63_combout\ = (i(17) & (\i[16]~62\ $ (GND))) # (!i(17) & (!\i[16]~62\ & VCC))
-- \i[17]~64\ = CARRY((i(17) & !\i[16]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(17),
	datad => VCC,
	cin => \i[16]~62\,
	combout => \i[17]~63_combout\,
	cout => \i[17]~64\);

-- Location: FF_X13_Y63_N3
\i[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[17]~63_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(17));

-- Location: LCCOMB_X13_Y63_N4
\i[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[18]~65_combout\ = (i(18) & (!\i[17]~64\)) # (!i(18) & ((\i[17]~64\) # (GND)))
-- \i[18]~66\ = CARRY((!\i[17]~64\) # (!i(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(18),
	datad => VCC,
	cin => \i[17]~64\,
	combout => \i[18]~65_combout\,
	cout => \i[18]~66\);

-- Location: FF_X13_Y63_N5
\i[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[18]~65_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(18));

-- Location: LCCOMB_X13_Y63_N6
\i[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[19]~67_combout\ = (i(19) & (\i[18]~66\ $ (GND))) # (!i(19) & (!\i[18]~66\ & VCC))
-- \i[19]~68\ = CARRY((i(19) & !\i[18]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(19),
	datad => VCC,
	cin => \i[18]~66\,
	combout => \i[19]~67_combout\,
	cout => \i[19]~68\);

-- Location: FF_X13_Y63_N7
\i[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[19]~67_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(19));

-- Location: LCCOMB_X14_Y63_N28
\Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~5_combout\ = (!i(16) & (!i(18) & (!i(19) & !i(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(16),
	datab => i(18),
	datac => i(19),
	datad => i(17),
	combout => \Equal1~5_combout\);

-- Location: LCCOMB_X13_Y63_N8
\i[20]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[20]~69_combout\ = (i(20) & (!\i[19]~68\)) # (!i(20) & ((\i[19]~68\) # (GND)))
-- \i[20]~70\ = CARRY((!\i[19]~68\) # (!i(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(20),
	datad => VCC,
	cin => \i[19]~68\,
	combout => \i[20]~69_combout\,
	cout => \i[20]~70\);

-- Location: FF_X13_Y63_N9
\i[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[20]~69_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(20));

-- Location: LCCOMB_X13_Y63_N10
\i[21]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[21]~71_combout\ = (i(21) & (\i[20]~70\ $ (GND))) # (!i(21) & (!\i[20]~70\ & VCC))
-- \i[21]~72\ = CARRY((i(21) & !\i[20]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(21),
	datad => VCC,
	cin => \i[20]~70\,
	combout => \i[21]~71_combout\,
	cout => \i[21]~72\);

-- Location: FF_X13_Y63_N11
\i[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[21]~71_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(21));

-- Location: LCCOMB_X13_Y63_N12
\i[22]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[22]~73_combout\ = (i(22) & (!\i[21]~72\)) # (!i(22) & ((\i[21]~72\) # (GND)))
-- \i[22]~74\ = CARRY((!\i[21]~72\) # (!i(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(22),
	datad => VCC,
	cin => \i[21]~72\,
	combout => \i[22]~73_combout\,
	cout => \i[22]~74\);

-- Location: FF_X13_Y63_N13
\i[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[22]~73_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(22));

-- Location: LCCOMB_X13_Y63_N14
\i[23]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[23]~75_combout\ = (i(23) & (\i[22]~74\ $ (GND))) # (!i(23) & (!\i[22]~74\ & VCC))
-- \i[23]~76\ = CARRY((i(23) & !\i[22]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(23),
	datad => VCC,
	cin => \i[22]~74\,
	combout => \i[23]~75_combout\,
	cout => \i[23]~76\);

-- Location: FF_X13_Y63_N15
\i[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[23]~75_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(23));

-- Location: LCCOMB_X14_Y63_N6
\Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~6_combout\ = (!i(21) & (!i(23) & (!i(20) & !i(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(21),
	datab => i(23),
	datac => i(20),
	datad => i(22),
	combout => \Equal1~6_combout\);

-- Location: LCCOMB_X13_Y63_N16
\i[24]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[24]~77_combout\ = (i(24) & (!\i[23]~76\)) # (!i(24) & ((\i[23]~76\) # (GND)))
-- \i[24]~78\ = CARRY((!\i[23]~76\) # (!i(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(24),
	datad => VCC,
	cin => \i[23]~76\,
	combout => \i[24]~77_combout\,
	cout => \i[24]~78\);

-- Location: FF_X13_Y63_N17
\i[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[24]~77_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(24));

-- Location: LCCOMB_X13_Y63_N18
\i[25]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[25]~79_combout\ = (i(25) & (\i[24]~78\ $ (GND))) # (!i(25) & (!\i[24]~78\ & VCC))
-- \i[25]~80\ = CARRY((i(25) & !\i[24]~78\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(25),
	datad => VCC,
	cin => \i[24]~78\,
	combout => \i[25]~79_combout\,
	cout => \i[25]~80\);

-- Location: FF_X13_Y63_N19
\i[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[25]~79_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(25));

-- Location: LCCOMB_X13_Y63_N20
\i[26]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[26]~81_combout\ = (i(26) & (!\i[25]~80\)) # (!i(26) & ((\i[25]~80\) # (GND)))
-- \i[26]~82\ = CARRY((!\i[25]~80\) # (!i(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(26),
	datad => VCC,
	cin => \i[25]~80\,
	combout => \i[26]~81_combout\,
	cout => \i[26]~82\);

-- Location: FF_X13_Y63_N21
\i[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[26]~81_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(26));

-- Location: LCCOMB_X13_Y63_N22
\i[27]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[27]~83_combout\ = (i(27) & (\i[26]~82\ $ (GND))) # (!i(27) & (!\i[26]~82\ & VCC))
-- \i[27]~84\ = CARRY((i(27) & !\i[26]~82\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(27),
	datad => VCC,
	cin => \i[26]~82\,
	combout => \i[27]~83_combout\,
	cout => \i[27]~84\);

-- Location: FF_X13_Y63_N23
\i[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[27]~83_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(27));

-- Location: LCCOMB_X16_Y63_N12
\Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~7_combout\ = (!i(26) & !i(27))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => i(26),
	datad => i(27),
	combout => \Equal1~7_combout\);

-- Location: LCCOMB_X13_Y63_N24
\i[28]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[28]~85_combout\ = (i(28) & (!\i[27]~84\)) # (!i(28) & ((\i[27]~84\) # (GND)))
-- \i[28]~86\ = CARRY((!\i[27]~84\) # (!i(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(28),
	datad => VCC,
	cin => \i[27]~84\,
	combout => \i[28]~85_combout\,
	cout => \i[28]~86\);

-- Location: FF_X13_Y63_N25
\i[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[28]~85_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(28));

-- Location: LCCOMB_X13_Y63_N26
\i[29]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[29]~87_combout\ = (i(29) & (\i[28]~86\ $ (GND))) # (!i(29) & (!\i[28]~86\ & VCC))
-- \i[29]~88\ = CARRY((i(29) & !\i[28]~86\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datad => VCC,
	cin => \i[28]~86\,
	combout => \i[29]~87_combout\,
	cout => \i[29]~88\);

-- Location: FF_X13_Y63_N27
\i[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[29]~87_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(29));

-- Location: LCCOMB_X13_Y63_N28
\i[30]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[30]~89_combout\ = (i(30) & (!\i[29]~88\)) # (!i(30) & ((\i[29]~88\) # (GND)))
-- \i[30]~90\ = CARRY((!\i[29]~88\) # (!i(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => i(30),
	datad => VCC,
	cin => \i[29]~88\,
	combout => \i[30]~89_combout\,
	cout => \i[30]~90\);

-- Location: FF_X13_Y63_N29
\i[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[30]~89_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(30));

-- Location: LCCOMB_X13_Y63_N30
\i[31]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \i[31]~91_combout\ = i(31) $ (!\i[30]~90\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => i(31),
	cin => \i[30]~90\,
	combout => \i[31]~91_combout\);

-- Location: FF_X13_Y63_N31
\i[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \i[31]~91_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => i(31));

-- Location: LCCOMB_X14_Y63_N8
\Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~8_combout\ = (!i(29) & (!i(30) & (!i(28) & !i(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(29),
	datab => i(30),
	datac => i(28),
	datad => i(31),
	combout => \Equal1~8_combout\);

-- Location: LCCOMB_X16_Y63_N6
\Equal1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~9_combout\ = (\Equal1~7_combout\ & (!i(24) & (!i(25) & \Equal1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~7_combout\,
	datab => i(24),
	datac => i(25),
	datad => \Equal1~8_combout\,
	combout => \Equal1~9_combout\);

-- Location: LCCOMB_X13_Y64_N0
\Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (!i(11) & (!i(9) & (!i(10) & !i(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(11),
	datab => i(9),
	datac => i(10),
	datad => i(8),
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X14_Y64_N30
\Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!i(13) & (!i(14) & (!i(15) & !i(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(13),
	datab => i(14),
	datac => i(15),
	datad => i(12),
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X14_Y64_N24
\Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~1_combout\ = (!i(4) & (!i(5) & (!i(7) & !i(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => i(4),
	datab => i(5),
	datac => i(7),
	datad => i(6),
	combout => \Equal1~1_combout\);

-- Location: LCCOMB_X17_Y63_N28
\Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (\Equal1~2_combout\ & (\Equal1~3_combout\ & (\Equal1~0_combout\ & \Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~2_combout\,
	datab => \Equal1~3_combout\,
	datac => \Equal1~0_combout\,
	datad => \Equal1~1_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X17_Y63_N10
\Equal1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal1~10_combout\ = (\Equal1~5_combout\ & (\Equal1~6_combout\ & (\Equal1~9_combout\ & \Equal1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal1~5_combout\,
	datab => \Equal1~6_combout\,
	datac => \Equal1~9_combout\,
	datad => \Equal1~4_combout\,
	combout => \Equal1~10_combout\);

-- Location: FF_X17_Y63_N13
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

-- Location: LCCOMB_X17_Y63_N6
\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (code(4) & ((code(1) & (code(2))) # (!code(1) & ((code(3)))))) # (!code(4) & (code(3) & (code(1) $ (code(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(2),
	datad => code(3),
	combout => \Mux5~0_combout\);

-- Location: FF_X17_Y63_N7
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

-- Location: LCCOMB_X17_Y63_N24
\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (code(4) & (code(3) & ((code(2)) # (!code(1))))) # (!code(4) & (!code(1) & (code(2) & !code(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(2),
	datad => code(3),
	combout => \Mux4~0_combout\);

-- Location: FF_X17_Y63_N25
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

-- Location: LCCOMB_X17_Y63_N18
\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (code(1) & ((code(2) $ (!code(3))))) # (!code(1) & ((code(4) & (code(2) & !code(3))) # (!code(4) & (!code(2) & code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(2),
	datad => code(3),
	combout => \Mux3~0_combout\);

-- Location: FF_X17_Y63_N19
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

-- Location: LCCOMB_X17_Y63_N0
\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (code(2) & (code(1) & (!code(4)))) # (!code(2) & ((code(3) & ((!code(4)))) # (!code(3) & (code(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(2),
	datad => code(3),
	combout => \Mux2~0_combout\);

-- Location: FF_X17_Y63_N1
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

-- Location: LCCOMB_X17_Y63_N26
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (code(1) & (code(4) $ (((code(2)) # (!code(3)))))) # (!code(1) & (!code(4) & (code(2) & !code(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(2),
	datad => code(3),
	combout => \Mux1~0_combout\);

-- Location: FF_X17_Y63_N27
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

-- Location: LCCOMB_X17_Y63_N8
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (code(1) & ((code(4)) # (code(2) $ (code(3))))) # (!code(1) & ((code(2)) # (code(4) $ (code(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(1),
	datab => code(4),
	datac => code(2),
	datad => code(3),
	combout => \Mux0~0_combout\);

-- Location: FF_X17_Y63_N9
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

-- Location: FF_X11_Y64_N29
\code[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(5));

-- Location: LCCOMB_X13_Y65_N18
\code[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \code[7]~feeder_combout\ = \ps2_data~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \ps2_data~input_o\,
	combout => \code[7]~feeder_combout\);

-- Location: FF_X13_Y65_N19
\code[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	d => \code[7]~feeder_combout\,
	ena => \Decoder0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(7));

-- Location: FF_X11_Y64_N31
\code[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(8));

-- Location: FF_X14_Y64_N13
\code[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_ps2_clock~input_o\,
	asdata => \ps2_data~input_o\,
	sload => VCC,
	ena => \Decoder0~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => code(6));

-- Location: LCCOMB_X17_Y63_N30
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

-- Location: FF_X17_Y63_N31
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

-- Location: LCCOMB_X17_Y63_N20
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

-- Location: FF_X17_Y63_N21
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

-- Location: LCCOMB_X17_Y63_N14
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

-- Location: FF_X17_Y63_N15
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

-- Location: LCCOMB_X17_Y63_N16
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

-- Location: FF_X17_Y63_N17
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

-- Location: LCCOMB_X17_Y63_N2
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

-- Location: FF_X17_Y63_N3
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

-- Location: LCCOMB_X17_Y63_N4
\Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~0_combout\ = (code(5) & (code(8) $ (((code(6)) # (!code(7)))))) # (!code(5) & (!code(7) & (!code(8) & code(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => code(5),
	datab => code(7),
	datac => code(8),
	datad => code(6),
	combout => \Mux8~0_combout\);

-- Location: FF_X17_Y63_N5
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

-- Location: LCCOMB_X17_Y63_N22
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

-- Location: FF_X17_Y63_N23
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


