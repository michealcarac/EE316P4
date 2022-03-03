library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.Common.all;

entity cora_wrapper is
    port(
    user_dio : inout std_logic_vector(11 downto 0);
    jb       : inout std_logic_vector(7 downto 0);
    ja       : inout std_logic_vector(7 downto 0);
    btn      : in std_logic_vector(1 downto 0);
    clk      : in std_logic);
end cora_wrapper;

architecture Behavioral of cora_wrapper is

component I2C_User_LCD is
        generic(
            input_clk : integer := CLOCK_SPEED;  -- System Clock Speed
            bus_clk   : integer := LCD_BUS_CLK); 
		port(
        clk_i       : in  std_logic; --Clock In
        reset_n     : in  std_logic; --Asynchronous Reset Active Low  
        selectMode	: in  std_logic_vector(3 downto 0); -- 00 = LDR, 01 = TEMP, 10 = ANALOG, 11 = POT
		clockOutput : in  std_logic;   					-- 0 = Blank, 1 = Display "Clock Output"
		
        SDA         : inout std_logic;   --Data/Address Line
        SCL         : inout std_logic    --Clock Line
	  );
end component;
signal btn_n : std_logic;
signal r0    : std_logic;
signal r1    : std_logic;
signal pulse : std_logic;
signal selectMode_test : std_logic_vector(3 downto 0);
signal clockOutput_test: std_logic;
signal count : integer range 0 to 6 := 0;
begin

btn_n <= not btn(0);
Inst_top_level: I2C_User_LCD
        generic map(
            input_clk => CLOCK_SPEED,   -- System Clock Speed
            bus_clk   => LCD_BUS_CLK) 
		port map (
			reset_n	=> btn_n,
			clk_i   => clk, 
			selectMode 	=> selectMode_test,	
			clockOutput	=> clockOutput_test,
			SDA     => jb(1),
			SCL     => jb(0)
		);

rising_edge_detector : process(clk)
begin
   if rising_edge(clk) then
        r0  <= btn(1);
        r1  <= r0;
   end if;
end process;

pulse <= (not r1 and r0); 

process(clk)
begin
    if btn_n = '0' then
        count <= 0;
        selectMode_test <= x"0";
        clockOutput_test<= '0';
    elsif rising_edge(clk) then 
        if pulse = '1' then
            if count < 6 then
                count <= count + 1;
            else
                selectMode_test <= x"0";
                count <= 0;
            end if;
        else
            case (count) is
                when 0 =>
                    selectMode_test <= x"0";
                    clockOutput_test <= '0';
                when 1 =>
                    selectMode_test <= x"0";
                    clockOutput_test <= '1';
                when 2 =>
                    selectMode_test <= x"1";
                    clockOutput_test <= '0';
                when 3 =>
                    selectMode_test <= x"1";
                    clockOutput_test <= '1';
                when 4 =>
                    selectMode_test <= x"2";
                    clockOutput_test <= '0';
                when 5 =>
                    selectMode_test <= x"3";
                    clockOutput_test <= '0';
                when 6 =>
                    selectMode_test <= x"3";
                    clockOutput_test <= '1';
            end case;
        end if;
    end if;
end process;
    


end Behavioral;
