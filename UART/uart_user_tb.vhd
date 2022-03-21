library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.Common.all;


entity Uart_User_tb is
--  Port ( );
end Uart_User_tb;

architecture Behavioral of Uart_User_tb is

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
        -- TX --
        data_i        :  IN   STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data to transmit
        transcieve_tx :  OUT  STD_LOGIC;  -- Transmit Pin
        -- RX --
        data_o        :  OUT  STD_LOGIC_VECTOR(d_width-1 DOWNTO 0);  --data received
        transcieve_rx :  IN   STD_LOGIC);  -- Recieve Pin 
end component;

signal clk        : std_logic := '0';
signal reset_n    : std_logic := '1';
signal data_i     : std_logic_vector(7 downto 0);
signal data_o     : std_logic_vector(7 downto 0);
signal inter      : std_logic;
begin

DUT: Uart_User
  PORT MAP(
        clk_i => clk, 
        reset_n => reset_n, 
        data_i => data_i,
        transcieve_tx => inter, 
        data_o => data_o,
        transcieve_rx => inter); 

clk <= not clk after 4 ns; -- 8ns clock period
 	
process
begin

    reset_n <= '0';
    data_i  <= x"53";
    wait for 10 us;
    reset_n <= '1';
    wait for 400 us;
    reset_n <= '0';
    wait;
end process;

end Behavioral;
