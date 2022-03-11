--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Command: generate_target bd_0ffa_wrapper.bd
--Design : bd_0ffa_wrapper
--Purpose: IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity bd_0ffa_wrapper is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end bd_0ffa_wrapper;

architecture STRUCTURE of bd_0ffa_wrapper is
  component bd_0ffa is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component bd_0ffa;
begin
bd_0ffa_i: component bd_0ffa
     port map (
      clk => clk,
      probe0(6 downto 0) => probe0(6 downto 0)
    );
end STRUCTURE;
