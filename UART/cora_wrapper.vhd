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
        transcieve_rx :  IN   STD_LOGIC);  -- Recieve Pin 
end component;

signal btn_n : std_logic;

signal ascii_code : std_logic_vector(6 downto 0);

signal prev_ascii_new_pulse : std_logic;
signal ascii_new_pulse : std_logic;

signal uart_en : std_logic;
signal uart_data : std_logic_vector(7 downto 0);

begin


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
            data_o => open,
            transcieve_rx => jb(1)
        ); 

btn_n <= not btn(0);  -- to active low
uart_data <= '0' & ascii_code;

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
