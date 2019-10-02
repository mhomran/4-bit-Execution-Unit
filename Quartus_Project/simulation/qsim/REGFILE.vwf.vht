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
-- Generated on "10/02/2019 20:27:15"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          BUSMAX_4x1_4Width
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY BUSMAX_4x1_4Width_vhd_vec_tst IS
END BUSMAX_4x1_4Width_vhd_vec_tst;
ARCHITECTURE BUSMAX_4x1_4Width_arch OF BUSMAX_4x1_4Width_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL B0 : STD_LOGIC;
SIGNAL B1 : STD_LOGIC;
SIGNAL B2 : STD_LOGIC;
SIGNAL B3 : STD_LOGIC;
SIGNAL F : STD_LOGIC;
SIGNAL S0 : STD_LOGIC;
SIGNAL S1 : STD_LOGIC;
COMPONENT BUSMAX_4x1_4Width
	PORT (
	B0 : IN STD_LOGIC;
	B1 : IN STD_LOGIC;
	B2 : IN STD_LOGIC;
	B3 : IN STD_LOGIC;
	F : OUT STD_LOGIC;
	S0 : IN STD_LOGIC;
	S1 : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : BUSMAX_4x1_4Width
	PORT MAP (
-- list connections between master ports and signals
	B0 => B0,
	B1 => B1,
	B2 => B2,
	B3 => B3,
	F => F,
	S0 => S0,
	S1 => S1
	);

-- B0
t_prcs_B0: PROCESS
BEGIN
	B0 <= '1';
	WAIT FOR 30000 ps;
	B0 <= '0';
WAIT;
END PROCESS t_prcs_B0;

-- B1
t_prcs_B1: PROCESS
BEGIN
	B1 <= '0';
WAIT;
END PROCESS t_prcs_B1;

-- B2
t_prcs_B2: PROCESS
BEGIN
	B2 <= '0';
	WAIT FOR 30000 ps;
	B2 <= '1';
	WAIT FOR 80000 ps;
	B2 <= '0';
WAIT;
END PROCESS t_prcs_B2;

-- B3
t_prcs_B3: PROCESS
BEGIN
	B3 <= '0';
	WAIT FOR 30000 ps;
	B3 <= '1';
	WAIT FOR 80000 ps;
	B3 <= '0';
WAIT;
END PROCESS t_prcs_B3;

-- S0
t_prcs_S0: PROCESS
BEGIN
	S0 <= '0';
	WAIT FOR 70000 ps;
	S0 <= '1';
	WAIT FOR 40000 ps;
	S0 <= '0';
WAIT;
END PROCESS t_prcs_S0;

-- S1
t_prcs_S1: PROCESS
BEGIN
	S1 <= '0';
	WAIT FOR 30000 ps;
	S1 <= '1';
	WAIT FOR 80000 ps;
	S1 <= '0';
WAIT;
END PROCESS t_prcs_S1;
END BUSMAX_4x1_4Width_arch;
