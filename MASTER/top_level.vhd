library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.Common.all;

entity top_level is
    port(
    jb       : inout std_logic_vector(7 downto 0);
    ja       : inout std_logic_vector(7 downto 0);
    btn      : in std_logic_vector(1 downto 0);
    clk      : in std_logic);
end top_level;

architecture Behavioral of top_level is

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

component Uart_User is
    GENERIC(
        clk_freq  :  INTEGER    := CLOCK_SPEED;     -- frequency of system clock in Hertz
        baud_rate :  INTEGER    := UART_BAUD;       -- data link baud rate in bits/second
        os_rate   :  INTEGER    := UART_os_rate;    -- oversampling rate to find center of receive bits (in samples per baud period)
        d_width   :  INTEGER    := UART_d_width;    -- data bus width
        parity    :  INTEGER    := UART_parity;     -- 0 for no parity, 1 for parity
        parity_eo :  STD_LOGIC  := UART_parity_eo); -- '0' for even, '1' for odd parity
    PORT(
        -- IN --
        clk_i         :  IN   STD_LOGIC;                             --system clock
        reset_n       :  IN   STD_LOGIC;                             --ascynchronous reset
        en            :  IN   STD_LOGIC;
        -- TX --
        data_i        :  IN   STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
        transcieve_tx :  OUT  STD_LOGIC;  -- Transmit Pin
        -- RX --
        data_o        :  OUT  STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data received
        transcieve_rx :  IN   STD_LOGIC;  -- Recieve Pin 
        rx_new        :  OUT  STD_LOGIC); -- Pulse when new data comes
end component;

component I2C_User_LCD is
    generic(
        input_clk : integer := CLOCK_SPEED;  -- System Clock Speed
        bus_clk   : integer := LCD_BUS_CLK); 
    port(
    clk_i       : in  std_logic; --Clock In
    reset_n     : in  std_logic; --Asynchronous Reset Active Low  
    data_i      : in  std_logic_vector(255 downto 0); -- To be displayed (In ASCII format already)

    SDA         : inout std_logic;   --Data/Address Line
    SCL         : inout std_logic    --Clock Line
  );
end component;

-- Read Buffer Array --
TYPE UART_Read_32Letters is array(0 to 31) of std_logic_vector(7 downto 0);
signal UART_Buffer : UART_Read_32Letters := (x"20",x"20",x"20",x"20",x"20",x"20",x"20",x"20"
                                             ,x"20",x"20",x"20",x"20",x"20",x"20",x"20",x"20"
                                             ,x"20",x"20",x"20",x"20",x"20",x"20",x"20",x"20"
                                             ,x"20",x"20",x"20",x"20",x"20",x"20",x"20",x"20");
signal LCD_Data    : std_logic_vector(255 downto 0);
-- Read Buffer Count --
signal bytesel  : integer range 0 to 32 := 0;

-- To set active Low Button --
signal btn_n : std_logic;

-- Ascii -- 
signal ascii_code : std_logic_vector(6 downto 0);
signal prev_ascii_new_pulse : std_logic;
signal ascii_new_pulse : std_logic;

-- TX --
signal uart_en : std_logic;
signal uart_data : std_logic_vector(7 downto 0);

-- RX --
signal uart_received : std_logic_vector(7 downto 0);
signal rx_new   : std_logic;


begin

Inst_top_level: I2C_User_LCD
    port map (
        reset_n	=> btn_n,
        clk_i   => clk, 
        data_i   => LCD_Data,
        SDA     => ja(3),
        SCL     => ja(2)
); 

Inst_keyboard: ps2_keyboard_to_ascii
    port map (
        clk        => clk,
        ps2_clk    => ja(0),
        ps2_data   => ja(1),
        ascii_new  => prev_ascii_new_pulse,
        ascii_code => ascii_code
);

Inst_Uart: Uart_User
    PORT MAP(
        clk_i => clk, 
        reset_n => btn_n, 
        data_i => uart_data,
        en     => uart_en,
        transcieve_tx => jb(0), 
        data_o => uart_received,
        transcieve_rx => jb(1),
        rx_new => rx_new
); 

btn_n <= not btn(0);  -- to active low
uart_data <= '0' & ascii_code;
LCD_Data <= UART_Buffer(0) & UART_Buffer(1)   -- 32 Character
            & UART_Buffer(2) & UART_Buffer(3) 
            & UART_Buffer(4) & UART_Buffer(5) 
            & UART_Buffer(6) & UART_Buffer(7) 
            & UART_Buffer(8) & UART_Buffer(9) 
            & UART_Buffer(10) & UART_Buffer(11) 
            & UART_Buffer(12) & UART_Buffer(13) 
            & UART_Buffer(14) & UART_Buffer(15)
            & UART_Buffer(16) & UART_Buffer(17) 
            & UART_Buffer(18) & UART_Buffer(19) 
            & UART_Buffer(20) & UART_Buffer(21) 
            & UART_Buffer(22) & UART_Buffer(23) 
            & UART_Buffer(24) & UART_Buffer(25) 
            & UART_Buffer(26) & UART_Buffer(27) 
            & UART_Buffer(28) & UART_Buffer(29)
            & UART_Buffer(30) & UART_Buffer(31);
-- Reading Buffer --
process (clk)
begin
    if rising_edge(clk) then
        if btn_n = '0' then 
            UART_Buffer <= (x"20",x"20",x"20",x"20",x"20",x"20",x"20",x"20" -- Reset Buffer
                            ,x"20",x"20",x"20",x"20",x"20",x"20",x"20",x"20"
                            ,x"20",x"20",x"20",x"20",x"20",x"20",x"20",x"20"
                            ,x"20",x"20",x"20",x"20",x"20",x"20",x"20",x"20");
            bytesel <= 0;
        elsif rx_new = '1' then
            UART_Buffer(bytesel) <= uart_received; -- Fill buffer 
            bytesel <= bytesel + 1;
        else
            UART_Buffer <= UART_Buffer;
            if bytesel = 32 then
                bytesel <= 0;
            end if;
        end if;
    end if;
end process;

-- ENABLE UART for sending --
process(clk)
begin
    if rising_edge(clk) then
        ascii_new_pulse <= prev_ascii_new_pulse;
        if prev_ascii_new_pulse = '0' AND ascii_new_pulse = '1'  then
            uart_en <= '1'; -- one transaction
        else
            uart_en <= '0'; -- disable uart
        end if;
    end if;
end process;



end Behavioral;
