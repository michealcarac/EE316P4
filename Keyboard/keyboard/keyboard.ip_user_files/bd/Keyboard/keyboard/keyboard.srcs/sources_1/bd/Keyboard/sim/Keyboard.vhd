--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Thu Mar 10 17:51:35 2022
--Host        : fedora running 64-bit Fedora release 35 (Thirty Five)
--Command     : generate_target Keyboard.bd
--Design      : Keyboard
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keyboard is
  port (
    clk_0 : in STD_LOGIC;
    ps2_clk_0 : in STD_LOGIC;
    ps2_data_0 : in STD_LOGIC;
    reset_0 : in STD_LOGIC;
    scl_0 : inout STD_LOGIC;
    sda_0 : inout STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Keyboard : entity is "Keyboard,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Keyboard,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=5,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of Keyboard : entity is "Keyboard.hwdef";
end Keyboard;

architecture STRUCTURE of Keyboard is
  component Keyboard_ps2_keyboard_to_ascii_0_0 is
  port (
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    ascii_new : out STD_LOGIC;
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component Keyboard_ps2_keyboard_to_ascii_0_0;
  component Keyboard_i2c_user_lcd_0_0 is
  port (
    clk_i : in STD_LOGIC;
    reset_n : in STD_LOGIC;
    selectMode : in STD_LOGIC_VECTOR ( 3 downto 0 );
    clockOutput : in STD_LOGIC;
    data_i : in STD_LOGIC_VECTOR ( 127 downto 0 );
    sda : inout STD_LOGIC;
    scl : inout STD_LOGIC
  );
  end component Keyboard_i2c_user_lcd_0_0;
  component Keyboard_main_0_0 is
  port (
    clk_i : in STD_LOGIC;
    reset : in STD_LOGIC;
    keyboard_ASCII : in STD_LOGIC_VECTOR ( 6 downto 0 );
    reset_n : out STD_LOGIC;
    selectMode : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clockOutput : out STD_LOGIC;
    data_o : out STD_LOGIC_VECTOR ( 127 downto 0 )
  );
  end component Keyboard_main_0_0;
  signal Net : STD_LOGIC;
  signal Net1 : STD_LOGIC;
  signal ascii_new : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal main_0_clockOutput : STD_LOGIC;
  signal main_0_data_o : STD_LOGIC_VECTOR ( 127 downto 0 );
  signal main_0_reset_n : STD_LOGIC;
  signal main_0_selectMode : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal ps2_clk_0_1 : STD_LOGIC;
  signal ps2_data_0_1 : STD_LOGIC;
  signal ps2_keyboard_to_ascii_0_ascii_code : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal reset_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN Keyboard_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ps2_clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.PS2_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER of ps2_clk_0 : signal is "XIL_INTERFACENAME CLK.PS2_CLK_0, CLK_DOMAIN Keyboard_ps2_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of reset_0 : signal is "xilinx.com:signal:reset:1.0 RST.RESET_0 RST";
  attribute X_INTERFACE_PARAMETER of reset_0 : signal is "XIL_INTERFACENAME RST.RESET_0, INSERT_VIP 0, POLARITY ACTIVE_LOW";
begin
  clk_0_1 <= clk_0;
  ps2_clk_0_1 <= ps2_clk_0;
  ps2_data_0_1 <= ps2_data_0;
  reset_0_1 <= reset_0;
i2c_user_lcd_0: component Keyboard_i2c_user_lcd_0_0
     port map (
      clk_i => clk_0_1,
      clockOutput => main_0_clockOutput,
      data_i(127 downto 0) => main_0_data_o(127 downto 0),
      reset_n => main_0_reset_n,
      scl => scl_0,
      sda => sda_0,
      selectMode(3 downto 0) => main_0_selectMode(3 downto 0)
    );
main_0: component Keyboard_main_0_0
     port map (
      clk_i => clk_0_1,
      clockOutput => main_0_clockOutput,
      data_o(127 downto 0) => main_0_data_o(127 downto 0),
      keyboard_ASCII(6 downto 0) => ps2_keyboard_to_ascii_0_ascii_code(6 downto 0),
      reset => reset_0_1,
      reset_n => main_0_reset_n,
      selectMode(3 downto 0) => main_0_selectMode(3 downto 0)
    );
ps2_keyboard_to_ascii_0: component Keyboard_ps2_keyboard_to_ascii_0_0
     port map (
      ascii_code(6 downto 0) => ps2_keyboard_to_ascii_0_ascii_code(6 downto 0),
      ascii_new => ascii_new,
      clk => clk_0_1,
      ps2_clk => ps2_clk_0_1,
      ps2_data => ps2_data_0_1
    );
end STRUCTURE;
