-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Mar 10 20:25:15 2022
-- Host        : fedora running 64-bit Fedora release 35 (Thirty Five)
-- Command     : write_vhdl -force -mode synth_stub
--               /home/spixy/Documents/College/EE316/EE316P4/Keyboard/keyboard/keyboard.srcs/sources_1/bd/Keyboard/ip/Keyboard_system_ila_0_1/Keyboard_system_ila_0_1_stub.vhdl
-- Design      : Keyboard_system_ila_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Keyboard_system_ila_0_1 is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end Keyboard_system_ila_0_1;

architecture stub of Keyboard_system_ila_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[6:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_0ffa,Vivado 2019.1";
begin
end;
