library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.Common.all;

entity wrapper is
    port(
    jb       : inout std_logic_vector(7 downto 0);
    ja       : inout std_logic_vector(7 downto 0);
    btn      : in std_logic_vector(1 downto 0);
    clk      : in std_logic);
end wrapper;

architecture Behavioral of wrapper is

component I2C_User_LCD is
        generic(
            input_clk : integer := CLOCK_SPEED;  -- System Clock Speed
            bus_clk   : integer := LCD_BUS_CLK); 
		port(
        clk_i       : in  std_logic; --Clock In
        reset_n     : in  std_logic; --Asynchronous Reset Active Low  
        selectMode	: in  std_logic_vector(3 downto 0); -- 00 = LDR, 01 = TEMP, 10 = ANALOG, 11 = POT
		clockOutput : in  std_logic;   					-- 0 = Blank, 1 = Display "Clock Output"
		data_i      : in    std_logic_vector(127 downto 0); -- To be displayed (In ASCII format already)
		
        SDA         : inout std_logic;   --Data/Address Line
        SCL         : inout std_logic    --Clock Line
	  );
end component;
component ps2_keyboard_to_ascii is
  GENERIC(
        clk_freq                  : INTEGER := CLOCK_SPEED; --system clock frequency in Hz
        ps2_debounce_counter_size : INTEGER := PS2_DEBOUNCE_SIZE);         --set such that 2^size/clk_freq = 5us (size = 8 for 50MHz)
  PORT(
          clk        : IN  STD_LOGIC;                     --system clock input
          ps2_clk    : IN  STD_LOGIC;                     --clock signal from PS2 keyboard
          ps2_data   : IN  STD_LOGIC;                     --data signal from PS2 keyboard
          ascii_new  : OUT STD_LOGIC;                     --output flag indicating new ASCII value
          ascii_code : OUT STD_LOGIC_VECTOR(6 DOWNTO 0)   --ASCII value
	  );
end component;

signal btn_n : std_logic;
signal r0    : std_logic;
signal r1    : std_logic;
signal pulse : std_logic;
signal selectMode_test : std_logic_vector(3 downto 0);
signal clockOutput_test: std_logic;
signal count : integer range 0 to 6 := 0;
signal ascii_code_test : std_logic_vector(6 downto 0);
signal ascii128_code_test: std_logic_vector(127 downto 0) := x"20202020202020202020202020202020";
signal ascii8_code_test: std_logic_vector(7 downto 0);
signal prev_ascii_new_pulse : std_logic;
signal ascii_new_pulse : std_logic;
signal count_ascii : integer range 0 to 127 := 127;
begin

Inst_i2c: I2C_User_LCD
		port map (
			reset_n	    => btn_n,
			clk_i       => clk, 
			selectMode 	=> selectMode_test,	
			clockOutput	=> clockOutput_test,
			data_i      => ascii128_code_test,
			SDA         => ja(3),
			SCL         => ja(2)
		);

Inst_keyboard: ps2_keyboard_to_ascii
		port map (
            clk        => clk,
            ps2_clk    => ja(0),
            ps2_data   => ja(1),
            ascii_new  => prev_ascii_new_pulse,
            ascii_code => ascii_code_test
		);

btn_n <= not btn(0);  -- to active low

ascii8_code_test <= '0' & ascii_code_test; -- 7 bit to 8 bit without changing character

-- Process for printing keyboard inputs to LCD, one character at a time
process(clk)
begin
    if btn_n = '0' then
        ascii128_code_test <= x"20202020202020202020202020202020";
        count_ascii <= 127; -- count range
    elsif rising_edge(clk) then
        ascii_new_pulse <= prev_ascii_new_pulse;
        if prev_ascii_new_pulse = '0' AND ascii_new_pulse = '1'  then
            ascii128_code_test(count_ascii downto count_ascii-7) <= ascii8_code_test;
            if count_ascii > 7 then -- 8 bits
                count_ascii <= count_ascii - 8;
            else
                count_ascii <= 127; -- count range
                ascii128_code_test <= x"20202020202020202020202020202020";
            end if;
        end if;
    end if;
end process;



rising_edge_detector : process(clk)
begin
   if rising_edge(clk) then
        r0  <= btn(1);
        r1  <= r0;
   end if;
end process;

pulse <= (not r1 and r0); 

-- changing modes
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
