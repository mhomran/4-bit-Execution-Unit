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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "10/03/2019 00:35:49"

-- 
-- Device: Altera 5M80ZM68C4 Package MBGA68
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Execution_Unit IS
    PORT (
	A_OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	INST : IN std_logic_vector(8 DOWNTO 0);
	CLK : IN std_logic;
	B_OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	C_OUTPUT : OUT std_logic_vector(3 DOWNTO 0)
	);
END Execution_Unit;

-- Design Ports Information


ARCHITECTURE structure OF Execution_Unit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INST : std_logic_vector(8 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_B_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \RG|inst|inst1~0_combout\ : std_logic;
SIGNAL \RG|B|inst3~regout\ : std_logic;
SIGNAL \RG|inst|inst1~1_combout\ : std_logic;
SIGNAL \RG|OP2|inst2|6~0\ : std_logic;
SIGNAL \ALU|inst3|inst|6~1_combout\ : std_logic;
SIGNAL \BM4|inst3|7~combout\ : std_logic;
SIGNAL \BM4|inst2|7~combout\ : std_logic;
SIGNAL \RG|OP2|inst2|4~0_combout\ : std_logic;
SIGNAL \RG|A|inst~regout\ : std_logic;
SIGNAL \RG|C|inst~regout\ : std_logic;
SIGNAL \BM4|inst|5~0\ : std_logic;
SIGNAL \BM4|inst|5~1\ : std_logic;
SIGNAL \ALU|inst|inst|6~0_combout\ : std_logic;
SIGNAL \RG|OP2|inst6|6~0\ : std_logic;
SIGNAL \RG|B|inst~regout\ : std_logic;
SIGNAL \RG|OP2|inst6|6~1_combout\ : std_logic;
SIGNAL \ALU|inst1|inst|6~2_combout\ : std_logic;
SIGNAL \RG|B|inst1~regout\ : std_logic;
SIGNAL \RG|C|inst1~regout\ : std_logic;
SIGNAL \RG|A|inst1~regout\ : std_logic;
SIGNAL \BM4|inst2|6~0\ : std_logic;
SIGNAL \BM4|inst2|6~1_combout\ : std_logic;
SIGNAL \ALU|inst1|inst|6~4_combout\ : std_logic;
SIGNAL \ALU|inst1|inst|6~3\ : std_logic;
SIGNAL \RG|OP2|inst|6~0\ : std_logic;
SIGNAL \RG|OP2|inst|6~1_combout\ : std_logic;
SIGNAL \ALU|inst|inst10|inst2~combout\ : std_logic;
SIGNAL \ALU|inst1|inst10|inst4~0_combout\ : std_logic;
SIGNAL \ALU|inst4|inst|6~2_combout\ : std_logic;
SIGNAL \RG|A|inst2~regout\ : std_logic;
SIGNAL \RG|C|inst2~regout\ : std_logic;
SIGNAL \BM4|inst3|6~0\ : std_logic;
SIGNAL \BM4|inst3|6~1_combout\ : std_logic;
SIGNAL \ALU|inst4|inst|6~4_combout\ : std_logic;
SIGNAL \ALU|inst4|inst|6~3\ : std_logic;
SIGNAL \RG|B|inst2~regout\ : std_logic;
SIGNAL \RG|OP2|inst1|6~0\ : std_logic;
SIGNAL \RG|OP2|inst1|6~1_combout\ : std_logic;
SIGNAL \ALU|inst4|inst10|inst4~0_combout\ : std_logic;
SIGNAL \ALU|inst3|inst|6~2_combout\ : std_logic;
SIGNAL \ALU|inst3|inst|6~3\ : std_logic;
SIGNAL \BM4|inst4|5~1\ : std_logic;
SIGNAL \RG|C|inst3~regout\ : std_logic;
SIGNAL \BM4|inst4|5~0_combout\ : std_logic;
SIGNAL \ALU|inst3|inst|6~0_combout\ : std_logic;
SIGNAL \RG|A|inst3~regout\ : std_logic;
SIGNAL \INST~combout\ : std_logic_vector(8 DOWNTO 0);

BEGIN

A_OUTPUT <= ww_A_OUTPUT;
ww_INST <= INST;
ww_CLK <= CLK;
B_OUTPUT <= ww_B_OUTPUT;
C_OUTPUT <= ww_C_OUTPUT;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_E1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INST[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INST(8),
	combout => \INST~combout\(8));

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INST[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INST(7),
	combout => \INST~combout\(7));

-- Location: PIN_H9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INST[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INST(6),
	combout => \INST~combout\(6));

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INST[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INST(5),
	combout => \INST~combout\(5));

-- Location: PIN_F9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INST[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INST(2),
	combout => \INST~combout\(2));

-- Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INST[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INST(3),
	combout => \INST~combout\(3));

-- Location: PIN_E9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INST[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INST(0),
	combout => \INST~combout\(0));

-- Location: PIN_J9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INST[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INST(1),
	combout => \INST~combout\(1));

-- Location: LC_X7_Y2_N7
\RG|inst|inst1~0\ : maxv_lcell
-- Equation(s):
-- \RG|inst|inst1~0_combout\ = (((!\INST~combout\(1) & \INST~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \INST~combout\(1),
	datad => \INST~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RG|inst|inst1~0_combout\);

-- Location: LC_X6_Y2_N0
\RG|B|inst3\ : maxv_lcell
-- Equation(s):
-- \BM4|inst4|5~1\ = (\INST~combout\(2) & ((\INST~combout\(3)) # ((J2_inst3)))) # (!\INST~combout\(2) & (!\INST~combout\(3) & ((\RG|A|inst3~regout\))))
-- \RG|B|inst3~regout\ = DFFEAS(\BM4|inst4|5~1\, GLOBAL(\CLK~combout\), VCC, , \RG|inst|inst1~0_combout\, \ALU|inst3|inst|6~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(2),
	datab => \INST~combout\(3),
	datac => \ALU|inst3|inst|6~3\,
	datad => \RG|A|inst3~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RG|inst|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BM4|inst4|5~1\,
	regout => \RG|B|inst3~regout\);

-- Location: LC_X7_Y2_N4
\RG|inst|inst1~1\ : maxv_lcell
-- Equation(s):
-- \RG|inst|inst1~1_combout\ = (((\INST~combout\(1) & !\INST~combout\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \INST~combout\(1),
	datad => \INST~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RG|inst|inst1~1_combout\);

-- Location: LC_X7_Y2_N5
\RG|C|inst3\ : maxv_lcell
-- Equation(s):
-- \RG|OP2|inst2|6~0\ = (\INST~combout\(0) & (\INST~combout\(1))) # (!\INST~combout\(0) & ((\INST~combout\(1) & (J3_inst3)) # (!\INST~combout\(1) & ((\RG|A|inst3~regout\)))))
-- \RG|C|inst3~regout\ = DFFEAS(\RG|OP2|inst2|6~0\, GLOBAL(\CLK~combout\), VCC, , \RG|inst|inst1~1_combout\, \ALU|inst3|inst|6~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(0),
	datab => \INST~combout\(1),
	datac => \ALU|inst3|inst|6~3\,
	datad => \RG|A|inst3~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RG|inst|inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RG|OP2|inst2|6~0\,
	regout => \RG|C|inst3~regout\);

-- Location: LC_X7_Y2_N6
\ALU|inst3|inst|6~1\ : maxv_lcell
-- Equation(s):
-- \ALU|inst3|inst|6~1_combout\ = ((\RG|OP2|inst2|6~0\) # ((\INST~combout\(0) & \RG|B|inst3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(0),
	datac => \RG|B|inst3~regout\,
	datad => \RG|OP2|inst2|6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst3|inst|6~1_combout\);

-- Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\INST[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_INST(4),
	combout => \INST~combout\(4));

-- Location: LC_X7_Y2_N0
\BM4|inst3|7\ : maxv_lcell
-- Equation(s):
-- \BM4|inst3|7~combout\ = (((\INST~combout\(4) & !\INST~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \INST~combout\(4),
	datad => \INST~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BM4|inst3|7~combout\);

-- Location: LC_X6_Y2_N7
\BM4|inst2|7\ : maxv_lcell
-- Equation(s):
-- \BM4|inst2|7~combout\ = (!\INST~combout\(6) & (((\INST~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(6),
	datad => \INST~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BM4|inst2|7~combout\);

-- Location: LC_X5_Y2_N7
\RG|OP2|inst2|4~0\ : maxv_lcell
-- Equation(s):
-- \RG|OP2|inst2|4~0_combout\ = (((!\INST~combout\(0) & !\INST~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \INST~combout\(0),
	datad => \INST~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RG|OP2|inst2|4~0_combout\);

-- Location: LC_X5_Y2_N3
\RG|A|inst\ : maxv_lcell
-- Equation(s):
-- \BM4|inst|5~0\ = (\INST~combout\(2) & (\INST~combout\(3))) # (!\INST~combout\(2) & ((\INST~combout\(3) & ((\RG|C|inst~regout\))) # (!\INST~combout\(3) & (J1_inst))))
-- \RG|A|inst~regout\ = DFFEAS(\BM4|inst|5~0\, GLOBAL(\CLK~combout\), VCC, , \RG|OP2|inst2|4~0_combout\, \ALU|inst|inst|6~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(2),
	datab => \INST~combout\(3),
	datac => \ALU|inst|inst|6~0_combout\,
	datad => \RG|C|inst~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RG|OP2|inst2|4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BM4|inst|5~0\,
	regout => \RG|A|inst~regout\);

-- Location: LC_X5_Y2_N9
\RG|C|inst\ : maxv_lcell
-- Equation(s):
-- \RG|OP2|inst6|6~0\ = (\INST~combout\(0) & (\INST~combout\(1))) # (!\INST~combout\(0) & ((\INST~combout\(1) & (J3_inst)) # (!\INST~combout\(1) & ((\RG|A|inst~regout\)))))
-- \RG|C|inst~regout\ = DFFEAS(\RG|OP2|inst6|6~0\, GLOBAL(\CLK~combout\), VCC, , \RG|inst|inst1~1_combout\, \ALU|inst|inst|6~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(0),
	datab => \INST~combout\(1),
	datac => \ALU|inst|inst|6~0_combout\,
	datad => \RG|A|inst~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RG|inst|inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RG|OP2|inst6|6~0\,
	regout => \RG|C|inst~regout\);

-- Location: LC_X6_Y2_N1
\RG|B|inst\ : maxv_lcell
-- Equation(s):
-- \BM4|inst|5~1\ = (\INST~combout\(6) & ((\BM4|inst|5~0\) # ((\INST~combout\(2) & J2_inst)))) # (!\INST~combout\(6) & (\INST~combout\(2)))
-- \RG|B|inst~regout\ = DFFEAS(\BM4|inst|5~1\, GLOBAL(\CLK~combout\), VCC, , \RG|inst|inst1~0_combout\, \ALU|inst|inst|6~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eea2",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(2),
	datab => \INST~combout\(6),
	datac => \ALU|inst|inst|6~0_combout\,
	datad => \BM4|inst|5~0\,
	aclr => GND,
	sload => VCC,
	ena => \RG|inst|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BM4|inst|5~1\,
	regout => \RG|B|inst~regout\);

-- Location: LC_X5_Y2_N5
\ALU|inst|inst|6~0\ : maxv_lcell
-- Equation(s):
-- \ALU|inst|inst|6~0_combout\ = (\INST~combout\(7) & (\RG|OP2|inst6|6~1_combout\ & ((\BM4|inst|5~1\) # (!\INST~combout\(8))))) # (!\INST~combout\(7) & (\BM4|inst|5~1\ $ (((\INST~combout\(8) & \RG|OP2|inst6|6~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d360",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(8),
	datab => \INST~combout\(7),
	datac => \RG|OP2|inst6|6~1_combout\,
	datad => \BM4|inst|5~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst|inst|6~0_combout\);

-- Location: LC_X5_Y2_N4
\RG|OP2|inst6|6~1\ : maxv_lcell
-- Equation(s):
-- \RG|OP2|inst6|6~1_combout\ = ((\RG|OP2|inst6|6~0\) # ((\INST~combout\(0) & \RG|B|inst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(0),
	datac => \RG|OP2|inst6|6~0\,
	datad => \RG|B|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RG|OP2|inst6|6~1_combout\);

-- Location: LC_X4_Y2_N8
\ALU|inst1|inst|6~2\ : maxv_lcell
-- Equation(s):
-- \ALU|inst1|inst|6~2_combout\ = \RG|OP2|inst|6~1_combout\ $ (((!\INST~combout\(7) & (\RG|OP2|inst6|6~1_combout\ & \BM4|inst|5~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(7),
	datab => \RG|OP2|inst6|6~1_combout\,
	datac => \RG|OP2|inst|6~1_combout\,
	datad => \BM4|inst|5~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst1|inst|6~2_combout\);

-- Location: LC_X4_Y2_N9
\RG|B|inst1\ : maxv_lcell
-- Equation(s):
-- \ALU|inst1|inst|6~3\ = (\INST~combout\(7) & (\ALU|inst1|inst|6~2_combout\ & ((!\ALU|inst1|inst|6~4_combout\) # (!\INST~combout\(8))))) # (!\INST~combout\(7) & (\ALU|inst1|inst|6~4_combout\ $ (((!\ALU|inst1|inst|6~2_combout\) # (!\INST~combout\(8))))))
-- \RG|B|inst1~regout\ = DFFEAS(\ALU|inst1|inst|6~3\, GLOBAL(\CLK~combout\), VCC, , \RG|inst|inst1~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6b05",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(7),
	datab => \INST~combout\(8),
	datac => \ALU|inst1|inst|6~4_combout\,
	datad => \ALU|inst1|inst|6~2_combout\,
	aclr => GND,
	ena => \RG|inst|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst1|inst|6~3\,
	regout => \RG|B|inst1~regout\);

-- Location: LC_X5_Y2_N8
\RG|C|inst1\ : maxv_lcell
-- Equation(s):
-- \BM4|inst2|6~0\ = (\INST~combout\(2) & (\INST~combout\(3))) # (!\INST~combout\(2) & ((\INST~combout\(3) & (J3_inst1)) # (!\INST~combout\(3) & ((\RG|A|inst1~regout\)))))
-- \RG|C|inst1~regout\ = DFFEAS(\BM4|inst2|6~0\, GLOBAL(\CLK~combout\), VCC, , \RG|inst|inst1~1_combout\, \ALU|inst1|inst|6~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(2),
	datab => \INST~combout\(3),
	datac => \ALU|inst1|inst|6~3\,
	datad => \RG|A|inst1~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RG|inst|inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BM4|inst2|6~0\,
	regout => \RG|C|inst1~regout\);

-- Location: LC_X5_Y2_N0
\RG|A|inst1\ : maxv_lcell
-- Equation(s):
-- \RG|OP2|inst|6~0\ = (\INST~combout\(0) & (\INST~combout\(1))) # (!\INST~combout\(0) & ((\INST~combout\(1) & ((\RG|C|inst1~regout\))) # (!\INST~combout\(1) & (J1_inst1))))
-- \RG|A|inst1~regout\ = DFFEAS(\RG|OP2|inst|6~0\, GLOBAL(\CLK~combout\), VCC, , \RG|OP2|inst2|4~0_combout\, \ALU|inst1|inst|6~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc98",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(0),
	datab => \INST~combout\(1),
	datac => \ALU|inst1|inst|6~3\,
	datad => \RG|C|inst1~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RG|OP2|inst2|4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RG|OP2|inst|6~0\,
	regout => \RG|A|inst1~regout\);

-- Location: LC_X5_Y2_N1
\BM4|inst2|6~1\ : maxv_lcell
-- Equation(s):
-- \BM4|inst2|6~1_combout\ = (\INST~combout\(6) & ((\BM4|inst2|6~0\) # ((\INST~combout\(2) & \RG|B|inst1~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(2),
	datab => \INST~combout\(6),
	datac => \RG|B|inst1~regout\,
	datad => \BM4|inst2|6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BM4|inst2|6~1_combout\);

-- Location: LC_X5_Y2_N2
\ALU|inst1|inst|6~4\ : maxv_lcell
-- Equation(s):
-- \ALU|inst1|inst|6~4_combout\ = ((!\BM4|inst2|6~1_combout\ & ((\INST~combout\(6)) # (!\INST~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00af",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(6),
	datac => \INST~combout\(3),
	datad => \BM4|inst2|6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst1|inst|6~4_combout\);

-- Location: LC_X5_Y2_N6
\RG|OP2|inst|6~1\ : maxv_lcell
-- Equation(s):
-- \RG|OP2|inst|6~1_combout\ = ((\RG|OP2|inst|6~0\) # ((\INST~combout\(0) & \RG|B|inst1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(0),
	datac => \RG|OP2|inst|6~0\,
	datad => \RG|B|inst1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RG|OP2|inst|6~1_combout\);

-- Location: LC_X6_Y2_N2
\ALU|inst|inst10|inst2\ : maxv_lcell
-- Equation(s):
-- \ALU|inst|inst10|inst2~combout\ = (\BM4|inst|5~1\ & ((\RG|OP2|inst6|6~0\) # ((\INST~combout\(0) & \RG|B|inst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f800",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(0),
	datab => \RG|B|inst~regout\,
	datac => \RG|OP2|inst6|6~0\,
	datad => \BM4|inst|5~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst|inst10|inst2~combout\);

-- Location: LC_X6_Y2_N3
\ALU|inst1|inst10|inst4~0\ : maxv_lcell
-- Equation(s):
-- \ALU|inst1|inst10|inst4~0_combout\ = (\RG|OP2|inst|6~1_combout\ & ((\BM4|inst2|7~combout\) # ((\BM4|inst2|6~1_combout\) # (\ALU|inst|inst10|inst2~combout\)))) # (!\RG|OP2|inst|6~1_combout\ & (\ALU|inst|inst10|inst2~combout\ & ((\BM4|inst2|7~combout\) # 
-- (\BM4|inst2|6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BM4|inst2|7~combout\,
	datab => \RG|OP2|inst|6~1_combout\,
	datac => \BM4|inst2|6~1_combout\,
	datad => \ALU|inst|inst10|inst2~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst1|inst10|inst4~0_combout\);

-- Location: LC_X6_Y2_N8
\ALU|inst4|inst|6~2\ : maxv_lcell
-- Equation(s):
-- \ALU|inst4|inst|6~2_combout\ = (\RG|OP2|inst1|6~1_combout\ $ (((!\INST~combout\(7) & \ALU|inst1|inst10|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \INST~combout\(7),
	datac => \RG|OP2|inst1|6~1_combout\,
	datad => \ALU|inst1|inst10|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst4|inst|6~2_combout\);

-- Location: LC_X6_Y2_N9
\RG|A|inst2\ : maxv_lcell
-- Equation(s):
-- \ALU|inst4|inst|6~3\ = (\INST~combout\(7) & (\ALU|inst4|inst|6~2_combout\ & ((!\ALU|inst4|inst|6~4_combout\) # (!\INST~combout\(8))))) # (!\INST~combout\(7) & (\ALU|inst4|inst|6~4_combout\ $ (((!\ALU|inst4|inst|6~2_combout\) # (!\INST~combout\(8))))))
-- \RG|A|inst2~regout\ = DFFEAS(\ALU|inst4|inst|6~3\, GLOBAL(\CLK~combout\), VCC, , \RG|OP2|inst2|4~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6d03",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(8),
	datab => \INST~combout\(7),
	datac => \ALU|inst4|inst|6~4_combout\,
	datad => \ALU|inst4|inst|6~2_combout\,
	aclr => GND,
	ena => \RG|OP2|inst2|4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst4|inst|6~3\,
	regout => \RG|A|inst2~regout\);

-- Location: LC_X7_Y2_N1
\RG|C|inst2\ : maxv_lcell
-- Equation(s):
-- \RG|OP2|inst1|6~0\ = (\INST~combout\(0) & (\INST~combout\(1))) # (!\INST~combout\(0) & ((\INST~combout\(1) & (J3_inst2)) # (!\INST~combout\(1) & ((\RG|A|inst2~regout\)))))
-- \RG|C|inst2~regout\ = DFFEAS(\RG|OP2|inst1|6~0\, GLOBAL(\CLK~combout\), VCC, , \RG|inst|inst1~1_combout\, \ALU|inst4|inst|6~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d9c8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(0),
	datab => \INST~combout\(1),
	datac => \ALU|inst4|inst|6~3\,
	datad => \RG|A|inst2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RG|inst|inst1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RG|OP2|inst1|6~0\,
	regout => \RG|C|inst2~regout\);

-- Location: LC_X7_Y2_N8
\RG|B|inst2\ : maxv_lcell
-- Equation(s):
-- \BM4|inst3|6~0\ = (\INST~combout\(2) & ((\INST~combout\(3)) # ((J2_inst2)))) # (!\INST~combout\(2) & (!\INST~combout\(3) & ((\RG|A|inst2~regout\))))
-- \RG|B|inst2~regout\ = DFFEAS(\BM4|inst3|6~0\, GLOBAL(\CLK~combout\), VCC, , \RG|inst|inst1~0_combout\, \ALU|inst4|inst|6~3\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(2),
	datab => \INST~combout\(3),
	datac => \ALU|inst4|inst|6~3\,
	datad => \RG|A|inst2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \RG|inst|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BM4|inst3|6~0\,
	regout => \RG|B|inst2~regout\);

-- Location: LC_X7_Y2_N3
\BM4|inst3|6~1\ : maxv_lcell
-- Equation(s):
-- \BM4|inst3|6~1_combout\ = (\INST~combout\(6) & ((\BM4|inst3|6~0\) # ((\INST~combout\(3) & \RG|C|inst2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(6),
	datab => \INST~combout\(3),
	datac => \RG|C|inst2~regout\,
	datad => \BM4|inst3|6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BM4|inst3|6~1_combout\);

-- Location: LC_X7_Y2_N9
\ALU|inst4|inst|6~4\ : maxv_lcell
-- Equation(s):
-- \ALU|inst4|inst|6~4_combout\ = ((!\BM4|inst3|6~1_combout\ & ((\INST~combout\(6)) # (!\INST~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \INST~combout\(6),
	datac => \INST~combout\(4),
	datad => \BM4|inst3|6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst4|inst|6~4_combout\);

-- Location: LC_X7_Y2_N2
\RG|OP2|inst1|6~1\ : maxv_lcell
-- Equation(s):
-- \RG|OP2|inst1|6~1_combout\ = ((\RG|OP2|inst1|6~0\) # ((\INST~combout\(0) & \RG|B|inst2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(0),
	datab => \RG|B|inst2~regout\,
	datad => \RG|OP2|inst1|6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \RG|OP2|inst1|6~1_combout\);

-- Location: LC_X6_Y2_N4
\ALU|inst4|inst10|inst4~0\ : maxv_lcell
-- Equation(s):
-- \ALU|inst4|inst10|inst4~0_combout\ = (\RG|OP2|inst1|6~1_combout\ & ((\BM4|inst3|7~combout\) # ((\BM4|inst3|6~1_combout\) # (\ALU|inst1|inst10|inst4~0_combout\)))) # (!\RG|OP2|inst1|6~1_combout\ & (\ALU|inst1|inst10|inst4~0_combout\ & 
-- ((\BM4|inst3|7~combout\) # (\BM4|inst3|6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fec8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \BM4|inst3|7~combout\,
	datab => \RG|OP2|inst1|6~1_combout\,
	datac => \BM4|inst3|6~1_combout\,
	datad => \ALU|inst1|inst10|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst4|inst10|inst4~0_combout\);

-- Location: LC_X6_Y2_N5
\ALU|inst3|inst|6~2\ : maxv_lcell
-- Equation(s):
-- \ALU|inst3|inst|6~2_combout\ = (\ALU|inst3|inst|6~1_combout\ $ (((!\INST~combout\(7) & \ALU|inst4|inst10|inst4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c3f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \INST~combout\(7),
	datac => \ALU|inst3|inst|6~1_combout\,
	datad => \ALU|inst4|inst10|inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst3|inst|6~2_combout\);

-- Location: LC_X6_Y2_N6
\RG|A|inst3\ : maxv_lcell
-- Equation(s):
-- \ALU|inst3|inst|6~3\ = (\INST~combout\(7) & (\ALU|inst3|inst|6~2_combout\ & ((\ALU|inst3|inst|6~0_combout\) # (!\INST~combout\(8))))) # (!\INST~combout\(7) & (\ALU|inst3|inst|6~0_combout\ $ (((\INST~combout\(8) & \ALU|inst3|inst|6~2_combout\)))))
-- \RG|A|inst3~regout\ = DFFEAS(\ALU|inst3|inst|6~3\, GLOBAL(\CLK~combout\), VCC, , \RG|OP2|inst2|4~0_combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d630",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \CLK~combout\,
	dataa => \INST~combout\(8),
	datab => \INST~combout\(7),
	datac => \ALU|inst3|inst|6~0_combout\,
	datad => \ALU|inst3|inst|6~2_combout\,
	aclr => GND,
	ena => \RG|OP2|inst2|4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst3|inst|6~3\,
	regout => \RG|A|inst3~regout\);

-- Location: LC_X6_Y1_N2
\BM4|inst4|5~0\ : maxv_lcell
-- Equation(s):
-- \BM4|inst4|5~0_combout\ = (((\INST~combout\(3) & \RG|C|inst3~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \INST~combout\(3),
	datad => \RG|C|inst3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \BM4|inst4|5~0_combout\);

-- Location: LC_X6_Y1_N0
\ALU|inst3|inst|6~0\ : maxv_lcell
-- Equation(s):
-- \ALU|inst3|inst|6~0_combout\ = (\INST~combout\(6) & (((\BM4|inst4|5~1\) # (\BM4|inst4|5~0_combout\)))) # (!\INST~combout\(6) & (\INST~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \INST~combout\(6),
	datab => \INST~combout\(5),
	datac => \BM4|inst4|5~1\,
	datad => \BM4|inst4|5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \ALU|inst3|inst|6~0_combout\);

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A_OUTPUT[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|A|inst3~regout\,
	oe => VCC,
	padio => ww_A_OUTPUT(3));

-- Location: PIN_H7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A_OUTPUT[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|A|inst2~regout\,
	oe => VCC,
	padio => ww_A_OUTPUT(2));

-- Location: PIN_A6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A_OUTPUT[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|A|inst1~regout\,
	oe => VCC,
	padio => ww_A_OUTPUT(1));

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\A_OUTPUT[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|A|inst~regout\,
	oe => VCC,
	padio => ww_A_OUTPUT(0));

-- Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B_OUTPUT[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|B|inst3~regout\,
	oe => VCC,
	padio => ww_B_OUTPUT(3));

-- Location: PIN_D9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B_OUTPUT[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|B|inst2~regout\,
	oe => VCC,
	padio => ww_B_OUTPUT(2));

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B_OUTPUT[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|B|inst1~regout\,
	oe => VCC,
	padio => ww_B_OUTPUT(1));

-- Location: PIN_A8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\B_OUTPUT[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|B|inst~regout\,
	oe => VCC,
	padio => ww_B_OUTPUT(0));

-- Location: PIN_G9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C_OUTPUT[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|C|inst3~regout\,
	oe => VCC,
	padio => ww_C_OUTPUT(3));

-- Location: PIN_E8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C_OUTPUT[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|C|inst2~regout\,
	oe => VCC,
	padio => ww_C_OUTPUT(2));

-- Location: PIN_A7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C_OUTPUT[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|C|inst1~regout\,
	oe => VCC,
	padio => ww_C_OUTPUT(1));

-- Location: PIN_B7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\C_OUTPUT[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \RG|C|inst~regout\,
	oe => VCC,
	padio => ww_C_OUTPUT(0));
END structure;


