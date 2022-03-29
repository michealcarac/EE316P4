-- This package is a collection of constants used throughout Project 4.
-- Using a package like this, global constants can be changed all from
-- one location.
--
-- To include the package in a vhd file, use the following statements:
--   library work;
--   use work.Common.all;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

library work;

package Common is
  constant CLOCK_SPEED        : integer := 125_000_000;        -- input clock speed in Hz
  constant UART_BAUD          : integer := 115_200;            -- UART baud rate
  constant UART_os_rate       : integer := 16;                 -- oversampling rate to find center of receive bits (in samples per baud period)
  constant UART_d_width       : integer := 8;                  -- data bus width
  constant UART_parity        : integer := 0;                  -- 0 for no parity, 1 for parity
  constant UART_parity_eo     : std_logic := '0';              -- '0' for even, '1' for odd parity
  constant PS2_DEBOUNCE_SIZE  : integer := 9;                  -- set such that 2^size/clk_freq = 5us (size = 8 for 50MHz) ?
  constant LCD_BUS_CLK        : integer := 100_000;            -- lcd clock speed
end Common;

package body Common is
end Common;