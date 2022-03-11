-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
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
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "bd_0ffa,Vivado 2019.1";
begin
end;
