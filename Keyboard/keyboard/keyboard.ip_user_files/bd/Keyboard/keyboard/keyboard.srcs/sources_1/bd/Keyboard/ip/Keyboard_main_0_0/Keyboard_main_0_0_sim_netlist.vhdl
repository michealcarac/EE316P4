-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Mar 10 17:30:44 2022
-- Host        : fedora running 64-bit Fedora release 35 (Thirty Five)
-- Command     : write_vhdl -force -mode funcsim
--               /home/spixy/Documents/College/EE316/EE316P4/Keyboard/keyboard/keyboard.srcs/sources_1/bd/Keyboard/ip/Keyboard_main_0_0/Keyboard_main_0_0_sim_netlist.vhdl
-- Design      : Keyboard_main_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keyboard_main_0_0 is
  port (
    clk_i : in STD_LOGIC;
    reset : in STD_LOGIC;
    keyboard_ASCII : in STD_LOGIC_VECTOR ( 6 downto 0 );
    reset_n : out STD_LOGIC;
    selectMode : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clockOutput : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Keyboard_main_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Keyboard_main_0_0 : entity is "Keyboard_main_0_0,main,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Keyboard_main_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Keyboard_main_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Keyboard_main_0_0 : entity is "main,Vivado 2019.1";
end Keyboard_main_0_0;

architecture STRUCTURE of Keyboard_main_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^keyboard_ascii\ : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute x_interface_info : string;
  attribute x_interface_info of reset : signal is "xilinx.com:signal:reset:1.0 reset RST";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of reset : signal is "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of reset_n : signal is "xilinx.com:signal:reset:1.0 reset_n RST";
  attribute x_interface_parameter of reset_n : signal is "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
begin
  \^keyboard_ascii\(6 downto 0) <= keyboard_ASCII(6 downto 0);
  clockOutput <= \<const1>\;
  data_o(127) <= \<const0>\;
  data_o(126) <= \<const0>\;
  data_o(125) <= \<const1>\;
  data_o(124) <= \<const0>\;
  data_o(123) <= \<const0>\;
  data_o(122) <= \<const0>\;
  data_o(121) <= \<const0>\;
  data_o(120) <= \<const0>\;
  data_o(119) <= \<const0>\;
  data_o(118) <= \<const0>\;
  data_o(117) <= \<const1>\;
  data_o(116) <= \<const0>\;
  data_o(115) <= \<const0>\;
  data_o(114) <= \<const0>\;
  data_o(113) <= \<const0>\;
  data_o(112) <= \<const0>\;
  data_o(111) <= \<const0>\;
  data_o(110) <= \<const0>\;
  data_o(109) <= \<const1>\;
  data_o(108) <= \<const0>\;
  data_o(107) <= \<const0>\;
  data_o(106) <= \<const0>\;
  data_o(105) <= \<const0>\;
  data_o(104) <= \<const0>\;
  data_o(103) <= \<const0>\;
  data_o(102) <= \<const0>\;
  data_o(101) <= \<const1>\;
  data_o(100) <= \<const0>\;
  data_o(99) <= \<const0>\;
  data_o(98) <= \<const0>\;
  data_o(97) <= \<const0>\;
  data_o(96) <= \<const0>\;
  data_o(95) <= \<const0>\;
  data_o(94) <= \<const0>\;
  data_o(93) <= \<const1>\;
  data_o(92) <= \<const0>\;
  data_o(91) <= \<const0>\;
  data_o(90) <= \<const0>\;
  data_o(89) <= \<const0>\;
  data_o(88) <= \<const0>\;
  data_o(87) <= \<const0>\;
  data_o(86) <= \<const0>\;
  data_o(85) <= \<const1>\;
  data_o(84) <= \<const0>\;
  data_o(83) <= \<const0>\;
  data_o(82) <= \<const0>\;
  data_o(81) <= \<const0>\;
  data_o(80) <= \<const0>\;
  data_o(79) <= \<const0>\;
  data_o(78) <= \<const0>\;
  data_o(77) <= \<const1>\;
  data_o(76) <= \<const0>\;
  data_o(75) <= \<const0>\;
  data_o(74) <= \<const0>\;
  data_o(73) <= \<const0>\;
  data_o(72) <= \<const0>\;
  data_o(71) <= \<const0>\;
  data_o(70 downto 64) <= \^keyboard_ascii\(6 downto 0);
  data_o(63) <= \<const0>\;
  data_o(62) <= \<const0>\;
  data_o(61) <= \<const1>\;
  data_o(60) <= \<const0>\;
  data_o(59) <= \<const0>\;
  data_o(58) <= \<const0>\;
  data_o(57) <= \<const0>\;
  data_o(56) <= \<const0>\;
  data_o(55) <= \<const0>\;
  data_o(54) <= \<const0>\;
  data_o(53) <= \<const1>\;
  data_o(52) <= \<const0>\;
  data_o(51) <= \<const0>\;
  data_o(50) <= \<const0>\;
  data_o(49) <= \<const0>\;
  data_o(48) <= \<const0>\;
  data_o(47) <= \<const0>\;
  data_o(46) <= \<const0>\;
  data_o(45) <= \<const1>\;
  data_o(44) <= \<const0>\;
  data_o(43) <= \<const0>\;
  data_o(42) <= \<const0>\;
  data_o(41) <= \<const0>\;
  data_o(40) <= \<const0>\;
  data_o(39) <= \<const0>\;
  data_o(38) <= \<const0>\;
  data_o(37) <= \<const1>\;
  data_o(36) <= \<const0>\;
  data_o(35) <= \<const0>\;
  data_o(34) <= \<const0>\;
  data_o(33) <= \<const0>\;
  data_o(32) <= \<const0>\;
  data_o(31) <= \<const0>\;
  data_o(30) <= \<const0>\;
  data_o(29) <= \<const1>\;
  data_o(28) <= \<const0>\;
  data_o(27) <= \<const0>\;
  data_o(26) <= \<const0>\;
  data_o(25) <= \<const0>\;
  data_o(24) <= \<const0>\;
  data_o(23) <= \<const0>\;
  data_o(22) <= \<const0>\;
  data_o(21) <= \<const1>\;
  data_o(20) <= \<const0>\;
  data_o(19) <= \<const0>\;
  data_o(18) <= \<const0>\;
  data_o(17) <= \<const0>\;
  data_o(16) <= \<const0>\;
  data_o(15) <= \<const0>\;
  data_o(14) <= \<const0>\;
  data_o(13) <= \<const1>\;
  data_o(12) <= \<const0>\;
  data_o(11) <= \<const0>\;
  data_o(10) <= \<const0>\;
  data_o(9) <= \<const0>\;
  data_o(8) <= \<const0>\;
  data_o(7) <= \<const0>\;
  data_o(6) <= \<const0>\;
  data_o(5) <= \<const1>\;
  data_o(4) <= \<const0>\;
  data_o(3) <= \<const0>\;
  data_o(2) <= \<const0>\;
  data_o(1) <= \<const0>\;
  data_o(0) <= \<const0>\;
  selectMode(3) <= \<const0>\;
  selectMode(2) <= \<const0>\;
  selectMode(1) <= \<const0>\;
  selectMode(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
reset_n_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => reset,
      O => reset_n
    );
end STRUCTURE;
