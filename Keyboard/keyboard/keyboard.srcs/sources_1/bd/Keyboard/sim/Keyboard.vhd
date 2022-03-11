--Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
--Date        : Thu Mar 10 20:22:33 2022
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
    ps2_data_0 : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of Keyboard : entity is "Keyboard,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=Keyboard,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_clkrst_cnt=5,synth_mode=OOC_per_IP}";
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
  component Keyboard_system_ila_0_1 is
  port (
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component Keyboard_system_ila_0_1;
  signal ascii_code : STD_LOGIC_VECTOR ( 6 downto 0 );
  attribute DEBUG : string;
  attribute DEBUG of ascii_code : signal is "true";
  attribute MARK_DEBUG : boolean;
  attribute MARK_DEBUG of ascii_code : signal is std.standard.true;
  signal ascii_new : STD_LOGIC;
  signal clk_0_1 : STD_LOGIC;
  signal ps2_clk_0_1 : STD_LOGIC;
  signal ps2_data_0_1 : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of clk_0 : signal is "XIL_INTERFACENAME CLK.CLK_0, CLK_DOMAIN Keyboard_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
  attribute X_INTERFACE_INFO of ps2_clk_0 : signal is "xilinx.com:signal:clock:1.0 CLK.PS2_CLK_0 CLK";
  attribute X_INTERFACE_PARAMETER of ps2_clk_0 : signal is "XIL_INTERFACENAME CLK.PS2_CLK_0, CLK_DOMAIN Keyboard_ps2_clk_0, FREQ_HZ 100000000, INSERT_VIP 0, PHASE 0.000";
begin
  clk_0_1 <= clk_0;
  ps2_clk_0_1 <= ps2_clk_0;
  ps2_data_0_1 <= ps2_data_0;
ps2_keyboard_to_ascii_0: component Keyboard_ps2_keyboard_to_ascii_0_0
     port map (
      ascii_code(6 downto 0) => ascii_code(6 downto 0),
      ascii_new => ascii_new,
      clk => clk_0_1,
      ps2_clk => ps2_clk_0_1,
      ps2_data => ps2_data_0_1
    );
system_ila_0: component Keyboard_system_ila_0_1
     port map (
      clk => clk_0_1,
      probe0(6 downto 0) => ascii_code(6 downto 0)
    );
end STRUCTURE;
