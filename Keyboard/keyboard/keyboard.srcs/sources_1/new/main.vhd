library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity main is
  Port ( 
    clk_i : in std_logic;
    reset : in std_logic;
    keyboard_ASCII : in std_logic_vector(6 downto 0); -- 7 bit ASCII

    reset_n : out std_logic;
    selectMode : out std_logic_vector(3 downto 0);
    clockOutput : out std_logic;
    data_o : out std_logic_vector(127 downto 0) -- 16 Characters
    
  );
end main;

architecture Behavioral of main is

begin

data_o <= x"20202020202020" & '0' & keyboard_ASCII  & x"2020202020202020";
reset_n <= NOT reset;
selectMode <= "0001";
clockOutput <= '1';

end Behavioral;
