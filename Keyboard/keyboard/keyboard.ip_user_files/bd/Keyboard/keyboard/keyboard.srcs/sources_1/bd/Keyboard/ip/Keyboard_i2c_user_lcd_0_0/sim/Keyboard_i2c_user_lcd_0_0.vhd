-- (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:module_ref:i2c_user_lcd:1.0
-- IP Revision: 1

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Keyboard_i2c_user_lcd_0_0 IS
  PORT (
    clk_i : IN STD_LOGIC;
    reset_n : IN STD_LOGIC;
    selectMode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    clockOutput : IN STD_LOGIC;
    data_i : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
    sda : INOUT STD_LOGIC;
    scl : INOUT STD_LOGIC
  );
END Keyboard_i2c_user_lcd_0_0;

ARCHITECTURE Keyboard_i2c_user_lcd_0_0_arch OF Keyboard_i2c_user_lcd_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF Keyboard_i2c_user_lcd_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT i2c_user_lcd IS
    GENERIC (
      input_clk : INTEGER;
      bus_clk : INTEGER
    );
    PORT (
      clk_i : IN STD_LOGIC;
      reset_n : IN STD_LOGIC;
      selectMode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      clockOutput : IN STD_LOGIC;
      data_i : IN STD_LOGIC_VECTOR(127 DOWNTO 0);
      sda : INOUT STD_LOGIC;
      scl : INOUT STD_LOGIC
    );
  END COMPONENT i2c_user_lcd;
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF Keyboard_i2c_user_lcd_0_0_arch: ARCHITECTURE IS "module_ref";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF reset_n: SIGNAL IS "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF reset_n: SIGNAL IS "xilinx.com:signal:reset:1.0 reset_n RST";
BEGIN
  U0 : i2c_user_lcd
    GENERIC MAP (
      input_clk => 125000000,
      bus_clk => 50000
    )
    PORT MAP (
      clk_i => clk_i,
      reset_n => reset_n,
      selectMode => selectMode,
      clockOutput => clockOutput,
      data_i => data_i,
      sda => sda,
      scl => scl
    );
END Keyboard_i2c_user_lcd_0_0_arch;
