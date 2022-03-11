-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Keyboard_ps2_keyboard_to_ascii_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    ascii_new : out STD_LOGIC;
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end Keyboard_ps2_keyboard_to_ascii_0_0;

architecture stub of Keyboard_ps2_keyboard_to_ascii_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "ps2_keyboard_to_ascii,Vivado 2019.1";
begin
end;
