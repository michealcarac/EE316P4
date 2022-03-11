library ieee;
use ieee.std_logic_1164.all;
use IEEE.numeric_std.all;


entity i2c_user_lcd is
    generic(
        input_clk : integer := 125_000_000; -- System Clock Speed
        bus_clk   : integer := 50_000);     -- bus_clk/9 = I2C_ADC Sampling Rate (9 bits per read) (1 start (Low), 7 data, 1 stop (High))
	port(
		-- IN
		clk_i      	: in    std_logic;                     	--clock input
		reset_n     : in    std_logic;                     	--active-low reset
		selectMode	: in    std_logic_vector(3 downto 0); 	-- 00 = LDR, 01 = TEMP, 10 = ANALOG, 11 = POT
		clockOutput : in    std_logic;   					-- 0 = Blank, 1 = Display "Clock Output"
		data_i      : in    std_logic_vector(127 downto 0); -- To be displayed (In ASCII format already)

		-- INOUT
		sda      	: inout std_logic;                     	--i2c data
		scl      	: inout std_logic                      	--i2c clock
	);
end i2c_user_lcd;

architecture behavioral of i2c_user_lcd is
	component i2c_master is
		GENERIC(
			input_clk : integer := 125_000_000;	 			 --input clock speed from user logic in Hz
			bus_clk   : integer := 50_000);    			     --speed the i2c bus (scl) will run at in Hz
		PORT(
			clk       : in     std_logic;                    --system clock
			reset_n   : in     std_logic;                    --active low reset
			ena       : in     std_logic;                    --latch in command
			addr      : in     std_logic_vector(6 downto 0); --address of target slave
			rw        : in     std_logic;         	 		 --'0' is write, '1' is read
			data_wr   : in     std_logic_vector(7 downto 0); --data to write to slave
			busy      : out    std_logic;         	 		 --indicates transaction in progress
			data_rd   : out    std_logic_vector(7 downto 0); --data read from slave
			ack_error : buffer std_logic;                    --flag if improper acknowledge from slave
			sda       : inout  std_logic;                    --serial data output of i2c bus
			scl       : inout  std_logic);                   --serial clock output of i2c bus
	end component;

	--general signals
	type stateType is (start, ready, data_valid, busy_high, repeat, pause);
	signal state, next_state  : stateType := start;            --state machine vars
	signal byteSel            : integer range 0 to 41 := 0;    --current byte to send
	signal nibble_sel         : std_logic := '0';

	--i2c master signals
	signal i2c_enable  : std_logic;                    --enable/start the i2c_master component
	signal i2c_address : std_logic_vector(7 downto 0); --i2c address, MSB will be ignored
	signal i2c_data    : std_logic_vector(7 downto 0); --data to write
	signal i2c_busy    : std_logic;                    --is the i2c component busy?
	
	-- LCD DATA SIGNALS 
	TYPE LCD_FirstLine is array(0 to 3) of std_logic_vector(127 downto 0);
	signal first_line : LCD_FirstLine := (others => (others => '0'));

	TYPE LCD_SecondLine is array(0 to 1) of std_logic_vector(127 downto 0);
	signal second_line : LCD_SecondLine := (others => (others => '0'));
    
	signal lcd_backlight : std_logic := '1'; -- Always 1 for backlight on
	signal lcd_EN        : std_logic := '0'; -- Default 0
	signal lcd_RW        : std_logic := '0'; -- Always 0 for writing
	signal lcd_RS        : std_logic := '0'; -- Default 0
	signal lcd_data      : std_logic_vector(8 downto 0); -- 9 bits, MSB is RS
	signal lcd_count     : integer range 0 to 2 := 0;
	signal skip_nibble    : std_logic := '0';
	signal lcd_delay     : integer   := 0;
	signal lcd_delay_cnst: integer;

    -- Simple std_logic to integer function
    function std_to_integer( s : std_logic ) return natural is
    begin
        if s = '1' then
            return 1;
        else
            return 0;
        end if;
    end function;
    
	begin

	Inst_i2c_master : i2c_master
	    GENERIC MAP(
			input_clk => input_clk,	 			 --input clock speed from user logic in Hz
			bus_clk   => bus_clk)    			 --speed the i2c bus (scl) will run at in Hz
		port map(
			clk       => clk_i,
			reset_n   => reset_n,
			ena       => i2c_enable,
			addr      => i2c_address(6 downto 0),
			rw        => '0',          --we're only writing
			data_wr   => i2c_data,
			busy      => i2c_busy,
			data_rd   => open,         --we're only writing
			ack_error => open,         --we're only writing
			sda       => sda,
			scl       => scl
		);
	

	
	-- Data Out Mux (For Nibble Writing)
	i2c_data <= lcd_data(7 downto 4) & lcd_backlight & lcd_EN & lcd_RW & lcd_RS when nibble_sel = '0' else
				lcd_data(3 downto 0) & lcd_backlight & lcd_EN & lcd_RW & lcd_RS when nibble_sel = '1' else
				(others => '0');

	-- Main State Machine
	state <= next_state;
	process(clk_i) 
	begin
		if rising_edge(clk_i) then
			if reset_n = '0' then
				next_state  <= start; -- Initial: FSM State = start
				byteSel     <=  0;    -- Initial: Byte Counter  = 0
				nibble_sel  <= '0';   -- Initial: Nibble Select = 0
				lcd_RS      <= '0';   -- Initial: LCD RS = 0
				lcd_EN      <= '0';   -- Initial: LCD EN = 0
				lcd_count   <=  0;    -- Initial: LCD Count = 0
				lcd_delay   <=  0;    -- Initial: LCD Delay = 0
				skip_nibble <= '0';   -- Initial: Skip Nibble = 0
			else
				case(state) is 
					when start =>
						i2c_enable <= '0';     --don't start the i2c transaction
						next_state <= ready;   -- move to next state
						lcd_RS <= lcd_data(8); -- 9th bit of lcd data is the RS bit
						
					when ready =>
						if i2c_busy = '0' then       --if we can go to the next transaction
							i2c_enable <= '1';       --enable the i2c controller
							next_state <= data_valid;--and move to the next state
						end if;
						
					when data_valid =>
						if i2c_busy = '1' then       --if the transaction has started
							i2c_enable <= '0';       --reset the enable signal
							next_state <= busy_high; --and move to the next state
						end if;
						
					when busy_high => 
						if i2c_busy = '0' then       --once the i2c transaction has completed
							next_state <= repeat;    --move to the next state
						end if;
						
					when repeat =>
						if lcd_count < 2 then      -- If not done writing 3 bytes of nibble
                            lcd_en <= NOT lcd_en;  -- Used to pulse EN
                            lcd_count <= lcd_count +1; -- Increment
                            next_state <= start;       -- Progress to start
                        else
                            next_state <= pause;       -- Go to pause
                            lcd_count <= 0;            -- Initialization
                            lcd_en    <= '0';          -- Hold low for next nibble
                        end if;
                         
                        -- Create Appropriate Delays, this is here for appropriate timing. 
                        if bytesel < 1 then  -- This is to decide delay for pause state
                            lcd_delay_cnst <= input_clk/200; -- 5 ms delay
                            skip_nibble <= '1'; -- These writes dont have a lower nibble
                        elsif bytesel >= 1 AND bytesel <= 3  then
                            lcd_delay_cnst <= input_clk/1000; -- 1 ms delay
                            skip_nibble <= '1'; -- These writes dont have a lower nibble
                        elsif bytesel = 41 then
                            lcd_delay_cnst <= input_clk/5;      -- 200 ms delay (Before resetting screen)
                        else 
                            lcd_delay_cnst <= input_clk/10000;  -- 100 us delay
                            skip_nibble <= '0';
                        end if;
                        
                    when pause =>
                        if lcd_delay < lcd_delay_cnst then     -- Delay for specificied time depending on the command
                            lcd_delay <= lcd_delay + 1;
                            next_state <= pause;               -- Stay in Pause State
                        else
							-- If at lower nibble or skipping the nibble, increment the bytesel, else invert nibble selection
                            if nibble_sel = '1' or skip_nibble = '1' then
								-- Incrementing Stage 
                                if byteSel < 41 then             --If we're not at the top
                                    byteSel <= byteSel + 1;      --increment 
                                else                             --otherwise, this is a normal repeat
                                    byteSel <= 6;                --so go back to the repeating bytes
                                end if;
                                nibble_sel <= '0';               -- Progress to high nibble write
                            else
                                nibble_sel <= NOT nibble_sel;    -- Not the nibble select 
                            end if;
                            lcd_delay <= 0;                      -- Reset counter
                            next_state <= start;
                        end if;
				end case;
			end if;
		end if;
	end process;
	
    -- LCD DATA --

	i2c_address <= x"27"; -- (0x) 20, 21, 22, 23, 24, 25, 26, 27

	-- First Line  --
	-- This part is editable for custom messages --
	-- Text: "----LDR-(A0)----", - = space
	--first_line(0)     <= x"20" & x"20" & x"20" & x"20" & x"4C" & x"44" & x"52" & x"20" & x"28" & x"41" & x"30" & x"29" & x"20" & x"20" & x"20" & x"20";
	first_line(0)     <= data_i;
	-- Text: "----TEMP-(A1)---", - = space
	first_line(1)     <= x"20" & x"20" & x"20" & x"20" & x"54" & x"45" & x"4D" & x"50" & x"20" & x"28" & x"41" & x"31" & x"29" & x"20" & x"20" & x"20";
	-- Text: "---ANALOG-(A2)--", - = space
	first_line(2)     <= x"20" & x"20" & x"20" & x"41" & x"4E" & x"41" & x"4C" & x"4F" & x"47" & x"20" & x"28" & x"41" & x"32" & x"29" & x"20" & x"20";
	-- Text: "----POT-(A3)----", - = space
	first_line(3)     <= x"20" & x"20" & x"20" & x"20" & x"50" & x"4F" & x"54" & x"20" & x"28" & x"41" & x"33" & x"29" & x"20" & x"20" & x"20" & x"20";

	-- Second Line --
	-- Text: "----------------", - = space
	second_line(0)    <= x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20" & x"20";
	-- Text: "--CLOCK-OUTPUT--", - = space
	second_line(1)    <= x"20" & x"20" & x"43" & x"4C" & x"4F" & x"43" & x"4B" & x"20" & x"4F" & x"55" & x"54" & x"50" & x"55" & x"54" & x"20" & x"20";

	process(byteSel)
	 begin
	    case byteSel is
	       when 0  => lcd_data  <= '0'& X"30"; -- Initialization Start
	       when 1  => lcd_data  <= '0'& X"30"; -- 8 bit mode
	       when 2  => lcd_data  <= '0'& X"30"; -- 8 bit mode
	       when 3  => lcd_data  <= '0'& X"20"; -- 4 bit mode
	       when 4  => lcd_data  <= '0'& X"28"; -- 4 bit, 2 lines
	       when 5  => lcd_data  <= '0'& X"06"; -- Move cursor right
	       when 6  => lcd_data  <= '0'& X"01"; -- clear screen, move cursor home
	       when 7  => lcd_data  <= '0'& X"0F"; -- turn on display, cursor blinking
	       when 8  => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(127 downto 120);
	       when 9  => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(119 downto 112);
       	   when 10 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(111 downto 104);
       	   when 11 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(103 downto  96);
       	   when 12 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(95  downto  88);
       	   when 13 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(87  downto  80);
       	   when 14 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(79  downto  72); 
       	   when 15 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(71  downto  64);
       	   when 16 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(63  downto  56);
       	   when 17 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(55  downto  48);
       	   when 18 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(47  downto  40);
       	   when 19 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(39  downto  32);
       	   when 20 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(31  downto  24);
       	   when 21 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(23  downto  16);
       	   when 22 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(15  downto   8);
       	   when 23 => lcd_data  <= '1'& first_line(to_integer(unsigned(selectMode)))(7   downto   0);
       	   when 24 => lcd_data  <= '0'& X"C0"; -- Change address to bottom left of screen--
       	   when 25 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(127 downto 120);
       	   when 26 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(119 downto 112);
       	   when 27 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(111 downto 104);
       	   when 28 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(103 downto  96);
       	   when 29 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(95  downto  88);
       	   when 30 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(87  downto  80);
       	   when 31 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(79  downto  72); 
       	   when 32 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(71  downto  64);
       	   when 33 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(63  downto  56);
       	   when 34 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(55  downto  48);
       	   when 35 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(47  downto  40);
       	   when 36 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(39  downto  32);
       	   when 37 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(31  downto  24);
       	   when 38 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(23  downto  16);
       	   when 39 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(15  downto   8);
       	   when 40 => lcd_data  <= '1'& second_line(std_to_integer(clockOutput))(7   downto   0);
       	   when 41 => lcd_data  <= '0'& x"0C"; -- Turn Cursor Off
	       when others => lcd_data <= '0'& X"28"; 
	   end case;
	end process;

end behavioral;