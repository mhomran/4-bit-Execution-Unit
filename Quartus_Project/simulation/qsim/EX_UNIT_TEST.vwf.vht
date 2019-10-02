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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "10/03/2019 00:52:38"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Execution_Unit
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Execution_Unit_vhd_vec_tst IS
END Execution_Unit_vhd_vec_tst;
ARCHITECTURE Execution_Unit_arch OF Execution_Unit_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_OUTPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL B_OUTPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL C_OUTPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL CLK : STD_LOGIC;
SIGNAL INST : STD_LOGIC_VECTOR(8 DOWNTO 0);
COMPONENT Execution_Unit
	PORT (
	A_OUTPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	B_OUTPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	C_OUTPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	CLK : IN STD_LOGIC;
	INST : IN STD_LOGIC_VECTOR(8 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Execution_Unit
	PORT MAP (
-- list connections between master ports and signals
	A_OUTPUT => A_OUTPUT,
	B_OUTPUT => B_OUTPUT,
	C_OUTPUT => C_OUTPUT,
	CLK => CLK,
	INST => INST
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;
-- INST[8]
t_prcs_INST_8: PROCESS
BEGIN
	INST(8) <= '0';
	WAIT FOR 30000 ps;
	INST(8) <= '1';
	WAIT FOR 20000 ps;
	INST(8) <= '0';
	WAIT FOR 20000 ps;
	INST(8) <= '1';
	WAIT FOR 60000 ps;
	INST(8) <= '0';
WAIT;
END PROCESS t_prcs_INST_8;
-- INST[7]
t_prcs_INST_7: PROCESS
BEGIN
	INST(7) <= '0';
	WAIT FOR 70000 ps;
	INST(7) <= '1';
	WAIT FOR 20000 ps;
	INST(7) <= '0';
	WAIT FOR 20000 ps;
	INST(7) <= '1';
	WAIT FOR 20000 ps;
	INST(7) <= '0';
WAIT;
END PROCESS t_prcs_INST_7;
-- INST[6]
t_prcs_INST_6: PROCESS
BEGIN
	INST(6) <= '0';
	WAIT FOR 30000 ps;
	INST(6) <= '1';
	WAIT FOR 60000 ps;
	INST(6) <= '0';
WAIT;
END PROCESS t_prcs_INST_6;
-- INST[5]
t_prcs_INST_5: PROCESS
BEGIN
	INST(5) <= '0';
WAIT;
END PROCESS t_prcs_INST_5;
-- INST[4]
t_prcs_INST_4: PROCESS
BEGIN
	INST(4) <= '1';
	WAIT FOR 30000 ps;
	INST(4) <= '0';
WAIT;
END PROCESS t_prcs_INST_4;
-- INST[3]
t_prcs_INST_3: PROCESS
BEGIN
	INST(3) <= '0';
	WAIT FOR 70000 ps;
	INST(3) <= '1';
	WAIT FOR 40000 ps;
	INST(3) <= '0';
WAIT;
END PROCESS t_prcs_INST_3;
-- INST[2]
t_prcs_INST_2: PROCESS
BEGIN
	INST(2) <= '1';
	WAIT FOR 10000 ps;
	INST(2) <= '0';
	WAIT FOR 40000 ps;
	INST(2) <= '1';
	WAIT FOR 20000 ps;
	INST(2) <= '0';
WAIT;
END PROCESS t_prcs_INST_2;
-- INST[1]
t_prcs_INST_1: PROCESS
BEGIN
	INST(1) <= '0';
	WAIT FOR 50000 ps;
	INST(1) <= '1';
	WAIT FOR 20000 ps;
	INST(1) <= '0';
	WAIT FOR 20000 ps;
	INST(1) <= '1';
	WAIT FOR 40000 ps;
	INST(1) <= '0';
WAIT;
END PROCESS t_prcs_INST_1;
-- INST[0]
t_prcs_INST_0: PROCESS
BEGIN
	INST(0) <= '0';
	WAIT FOR 10000 ps;
	INST(0) <= '1';
	WAIT FOR 40000 ps;
	INST(0) <= '0';
WAIT;
END PROCESS t_prcs_INST_0;
END Execution_Unit_arch;
