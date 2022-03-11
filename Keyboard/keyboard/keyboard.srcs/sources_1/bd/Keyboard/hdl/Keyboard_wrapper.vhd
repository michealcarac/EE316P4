--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Thu Mar 10 20:22:33 2022
--Host        : fedora running 64-bit Fedora release 35 (Thirty Five)
--Command     : generate_target Keyboard_wrapper.bd
--Design      : Keyboard_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keyboard_wrapper is
  port (
    clk_0 : in STD_LOGIC;
    ps2_clk_0 : in STD_LOGIC;
    ps2_data_0 : in STD_LOGIC
  );
end Keyboard_wrapper;

architecture STRUCTURE of Keyboard_wrapper is
  component Keyboard is
  port (
    clk_0 : in STD_LOGIC;
    ps2_clk_0 : in STD_LOGIC;
    ps2_data_0 : in STD_LOGIC
  );
  end component Keyboard;
begin
Keyboard_i: component Keyboard
     port map (
      clk_0 => clk_0,
      ps2_clk_0 => ps2_clk_0,
      ps2_data_0 => ps2_data_0
    );
end STRUCTURE;
