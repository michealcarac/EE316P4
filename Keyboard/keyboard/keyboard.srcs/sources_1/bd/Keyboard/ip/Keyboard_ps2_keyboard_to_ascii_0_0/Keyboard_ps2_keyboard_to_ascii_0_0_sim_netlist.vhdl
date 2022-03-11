-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
-- Date        : Thu Mar 10 15:10:41 2022
-- Host        : fedora running 64-bit Fedora release 35 (Thirty Five)
-- Command     : write_vhdl -force -mode funcsim
--               /home/spixy/Documents/College/EE316/EE316P4/Keyboard/keyboard/keyboard.srcs/sources_1/bd/Keyboard/ip/Keyboard_ps2_keyboard_to_ascii_0_0/Keyboard_ps2_keyboard_to_ascii_0_0_sim_netlist.vhdl
-- Design      : Keyboard_ps2_keyboard_to_ascii_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keyboard_ps2_keyboard_to_ascii_0_0_debounce is
  port (
    CLK : out STD_LOGIC;
    clear : out STD_LOGIC;
    \^clk\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Keyboard_ps2_keyboard_to_ascii_0_0_debounce : entity is "debounce";
end Keyboard_ps2_keyboard_to_ascii_0_0_debounce;

architecture STRUCTURE of Keyboard_ps2_keyboard_to_ascii_0_0_debounce is
  signal \^clk_1\ : STD_LOGIC;
  signal \counter_out[8]_i_4_n_0\ : STD_LOGIC;
  signal counter_out_reg : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \counter_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[7]\ : STD_LOGIC;
  signal counter_set : STD_LOGIC;
  signal \flipflops_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal result_i_1_n_0 : STD_LOGIC;
  signal sel : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \count_idle[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \counter_out[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_out[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \counter_out[2]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \counter_out[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter_out[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \counter_out[7]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_out[8]_i_3\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \counter_out[8]_i_4\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of result_i_1 : label is "soft_lutpair3";
begin
  CLK <= \^clk_1\;
\count_idle[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^clk_1\,
      O => clear
    );
\counter_out[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      O => plusOp(0)
    );
\counter_out[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      I1 => \counter_out_reg_n_0_[1]\,
      O => plusOp(1)
    );
\counter_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_out_reg_n_0_[2]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[1]\,
      O => plusOp(2)
    );
\counter_out[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_out_reg_n_0_[1]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[2]\,
      I3 => \counter_out_reg_n_0_[3]\,
      O => plusOp(3)
    );
\counter_out[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[4]\,
      I1 => \counter_out_reg_n_0_[1]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[2]\,
      I4 => \counter_out_reg_n_0_[3]\,
      O => plusOp(4)
    );
\counter_out[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[5]\,
      I1 => \counter_out_reg_n_0_[3]\,
      I2 => \counter_out_reg_n_0_[2]\,
      I3 => \counter_out_reg_n_0_[0]\,
      I4 => \counter_out_reg_n_0_[1]\,
      I5 => \counter_out_reg_n_0_[4]\,
      O => plusOp(5)
    );
\counter_out[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[6]\,
      I1 => \counter_out_reg_n_0_[4]\,
      I2 => \counter_out[8]_i_4_n_0\,
      I3 => \counter_out_reg_n_0_[5]\,
      O => plusOp(6)
    );
\counter_out[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[7]\,
      I1 => \counter_out_reg_n_0_[5]\,
      I2 => \counter_out[8]_i_4_n_0\,
      I3 => \counter_out_reg_n_0_[4]\,
      I4 => \counter_out_reg_n_0_[6]\,
      O => plusOp(7)
    );
\counter_out[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \flipflops_reg_n_0_[0]\,
      I1 => p_0_in,
      O => counter_set
    );
\counter_out[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_out_reg(8),
      O => sel
    );
\counter_out[8]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[6]\,
      I1 => \counter_out_reg_n_0_[4]\,
      I2 => \counter_out[8]_i_4_n_0\,
      I3 => \counter_out_reg_n_0_[5]\,
      I4 => \counter_out_reg_n_0_[7]\,
      O => plusOp(8)
    );
\counter_out[8]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[3]\,
      I1 => \counter_out_reg_n_0_[2]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[1]\,
      O => \counter_out[8]_i_4_n_0\
    );
\counter_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(0),
      Q => \counter_out_reg_n_0_[0]\,
      R => counter_set
    );
\counter_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(1),
      Q => \counter_out_reg_n_0_[1]\,
      R => counter_set
    );
\counter_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(2),
      Q => \counter_out_reg_n_0_[2]\,
      R => counter_set
    );
\counter_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(3),
      Q => \counter_out_reg_n_0_[3]\,
      R => counter_set
    );
\counter_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(4),
      Q => \counter_out_reg_n_0_[4]\,
      R => counter_set
    );
\counter_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(5),
      Q => \counter_out_reg_n_0_[5]\,
      R => counter_set
    );
\counter_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(6),
      Q => \counter_out_reg_n_0_[6]\,
      R => counter_set
    );
\counter_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(7),
      Q => \counter_out_reg_n_0_[7]\,
      R => counter_set
    );
\counter_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => \^clk\,
      CE => sel,
      D => plusOp(8),
      Q => counter_out_reg(8),
      R => counter_set
    );
\flipflops_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => Q(0),
      Q => \flipflops_reg_n_0_[0]\,
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => \flipflops_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
result_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD80"
    )
        port map (
      I0 => counter_out_reg(8),
      I1 => p_0_in,
      I2 => \flipflops_reg_n_0_[0]\,
      I3 => \^clk_1\,
      O => result_i_1_n_0
    );
result_reg: unisim.vcomponents.FDRE
     port map (
      C => \^clk\,
      CE => '1',
      D => result_i_1_n_0,
      Q => \^clk_1\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keyboard_ps2_keyboard_to_ascii_0_0_debounce_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Keyboard_ps2_keyboard_to_ascii_0_0_debounce_0 : entity is "debounce";
end Keyboard_ps2_keyboard_to_ascii_0_0_debounce_0;

architecture STRUCTURE of Keyboard_ps2_keyboard_to_ascii_0_0_debounce_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \counter_out[8]_i_2__0_n_0\ : STD_LOGIC;
  signal \counter_out[8]_i_4__0_n_0\ : STD_LOGIC;
  signal counter_out_reg : STD_LOGIC_VECTOR ( 8 to 8 );
  signal \counter_out_reg_n_0_[0]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[2]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[3]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[4]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[5]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[6]\ : STD_LOGIC;
  signal \counter_out_reg_n_0_[7]\ : STD_LOGIC;
  signal counter_set : STD_LOGIC;
  signal \flipflops_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal \result_i_1__0_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \counter_out[0]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_out[1]_i_1__0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \counter_out[2]_i_1__0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \counter_out[3]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_out[4]_i_1__0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \counter_out[7]_i_1__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_out[8]_i_3__0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \counter_out[8]_i_4__0\ : label is "soft_lutpair7";
begin
  D(0) <= \^d\(0);
\counter_out[0]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      O => \plusOp__0\(0)
    );
\counter_out[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \counter_out_reg_n_0_[0]\,
      I1 => \counter_out_reg_n_0_[1]\,
      O => \plusOp__0\(1)
    );
\counter_out[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \counter_out_reg_n_0_[2]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[1]\,
      O => \plusOp__0\(2)
    );
\counter_out[3]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \counter_out_reg_n_0_[1]\,
      I1 => \counter_out_reg_n_0_[0]\,
      I2 => \counter_out_reg_n_0_[2]\,
      I3 => \counter_out_reg_n_0_[3]\,
      O => \plusOp__0\(3)
    );
\counter_out[4]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[4]\,
      I1 => \counter_out_reg_n_0_[1]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[2]\,
      I4 => \counter_out_reg_n_0_[3]\,
      O => \plusOp__0\(4)
    );
\counter_out[5]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAAAAAAAAAAAAAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[5]\,
      I1 => \counter_out_reg_n_0_[3]\,
      I2 => \counter_out_reg_n_0_[2]\,
      I3 => \counter_out_reg_n_0_[0]\,
      I4 => \counter_out_reg_n_0_[1]\,
      I5 => \counter_out_reg_n_0_[4]\,
      O => \plusOp__0\(5)
    );
\counter_out[6]_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[6]\,
      I1 => \counter_out_reg_n_0_[4]\,
      I2 => \counter_out[8]_i_4__0_n_0\,
      I3 => \counter_out_reg_n_0_[5]\,
      O => \plusOp__0\(6)
    );
\counter_out[7]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \counter_out_reg_n_0_[7]\,
      I1 => \counter_out_reg_n_0_[5]\,
      I2 => \counter_out[8]_i_4__0_n_0\,
      I3 => \counter_out_reg_n_0_[4]\,
      I4 => \counter_out_reg_n_0_[6]\,
      O => \plusOp__0\(7)
    );
\counter_out[8]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \flipflops_reg_n_0_[0]\,
      I1 => p_0_in,
      O => counter_set
    );
\counter_out[8]_i_2__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => counter_out_reg(8),
      O => \counter_out[8]_i_2__0_n_0\
    );
\counter_out[8]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[6]\,
      I1 => \counter_out_reg_n_0_[4]\,
      I2 => \counter_out[8]_i_4__0_n_0\,
      I3 => \counter_out_reg_n_0_[5]\,
      I4 => \counter_out_reg_n_0_[7]\,
      O => \plusOp__0\(8)
    );
\counter_out[8]_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \counter_out_reg_n_0_[3]\,
      I1 => \counter_out_reg_n_0_[2]\,
      I2 => \counter_out_reg_n_0_[0]\,
      I3 => \counter_out_reg_n_0_[1]\,
      O => \counter_out[8]_i_4__0_n_0\
    );
\counter_out_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_out[8]_i_2__0_n_0\,
      D => \plusOp__0\(0),
      Q => \counter_out_reg_n_0_[0]\,
      R => counter_set
    );
\counter_out_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_out[8]_i_2__0_n_0\,
      D => \plusOp__0\(1),
      Q => \counter_out_reg_n_0_[1]\,
      R => counter_set
    );
\counter_out_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_out[8]_i_2__0_n_0\,
      D => \plusOp__0\(2),
      Q => \counter_out_reg_n_0_[2]\,
      R => counter_set
    );
\counter_out_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_out[8]_i_2__0_n_0\,
      D => \plusOp__0\(3),
      Q => \counter_out_reg_n_0_[3]\,
      R => counter_set
    );
\counter_out_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_out[8]_i_2__0_n_0\,
      D => \plusOp__0\(4),
      Q => \counter_out_reg_n_0_[4]\,
      R => counter_set
    );
\counter_out_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_out[8]_i_2__0_n_0\,
      D => \plusOp__0\(5),
      Q => \counter_out_reg_n_0_[5]\,
      R => counter_set
    );
\counter_out_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_out[8]_i_2__0_n_0\,
      D => \plusOp__0\(6),
      Q => \counter_out_reg_n_0_[6]\,
      R => counter_set
    );
\counter_out_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_out[8]_i_2__0_n_0\,
      D => \plusOp__0\(7),
      Q => \counter_out_reg_n_0_[7]\,
      R => counter_set
    );
\counter_out_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => \counter_out[8]_i_2__0_n_0\,
      D => \plusOp__0\(8),
      Q => counter_out_reg(8),
      R => counter_set
    );
\flipflops_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => Q(0),
      Q => \flipflops_reg_n_0_[0]\,
      R => '0'
    );
\flipflops_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \flipflops_reg_n_0_[0]\,
      Q => p_0_in,
      R => '0'
    );
\result_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FD80"
    )
        port map (
      I0 => counter_out_reg(8),
      I1 => p_0_in,
      I2 => \flipflops_reg_n_0_[0]\,
      I3 => \^d\(0),
      O => \result_i_1__0_n_0\
    );
result_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \result_i_1__0_n_0\,
      Q => \^d\(0),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keyboard_ps2_keyboard_to_ascii_0_0_ps2_keyboard is
  port (
    ps2_code_new : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 6 downto 0 );
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    control_l_reg : out STD_LOGIC;
    \FSM_sequential_state_reg[0]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ps2_code_reg[7]_0\ : out STD_LOGIC;
    break_reg : out STD_LOGIC;
    break_reg_0 : out STD_LOGIC;
    break_reg_1 : out STD_LOGIC;
    break_reg_2 : out STD_LOGIC;
    \ascii_reg[7]\ : out STD_LOGIC;
    break_reg_3 : out STD_LOGIC;
    e0_code_reg : out STD_LOGIC;
    \FSM_sequential_state_reg[0]_0\ : out STD_LOGIC;
    clk : in STD_LOGIC;
    control_r_reg : in STD_LOGIC;
    control_l_reg_0 : in STD_LOGIC;
    shift_r_reg : in STD_LOGIC;
    shift_l_reg : in STD_LOGIC;
    caps_lock_reg : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    e0_code : in STD_LOGIC;
    shift_l_reg_0 : in STD_LOGIC;
    prev_ps2_code_new : in STD_LOGIC;
    ascii_new_reg : in STD_LOGIC;
    ascii_new : in STD_LOGIC;
    \sync_ffs_reg[1]_0\ : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Keyboard_ps2_keyboard_to_ascii_0_0_ps2_keyboard : entity is "ps2_keyboard";
end Keyboard_ps2_keyboard_to_ascii_0_0_ps2_keyboard;

architecture STRUCTURE of Keyboard_ps2_keyboard_to_ascii_0_0_ps2_keyboard is
  signal \FSM_sequential_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_11_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_12_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[0]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_2_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_8_n_0\ : STD_LOGIC;
  signal \ascii[1]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_11_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_12_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[2]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_11_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_12_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[3]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_2_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_3_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_8_n_0\ : STD_LOGIC;
  signal \ascii[4]_i_9_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_11_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_12_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_13_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_14_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_15_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_16_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_17_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_2_n_0\ : STD_LOGIC;
  signal \ascii[5]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_10_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_11_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_12_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_13_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_14_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_15_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_16_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_17_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_18_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_4_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_5_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_6_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_7_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_8_n_0\ : STD_LOGIC;
  signal \ascii[6]_i_9_n_0\ : STD_LOGIC;
  signal \ascii_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \ascii_reg[0]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_reg[1]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_reg[2]_i_2_n_0\ : STD_LOGIC;
  signal \ascii_reg[2]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_reg[2]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_reg[3]_i_2_n_0\ : STD_LOGIC;
  signal \ascii_reg[3]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_reg[3]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_reg[4]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \ascii_reg[5]_i_5_n_0\ : STD_LOGIC;
  signal \ascii_reg[5]_i_6_n_0\ : STD_LOGIC;
  signal \ascii_reg[5]_i_7_n_0\ : STD_LOGIC;
  signal \ascii_reg[5]_i_8_n_0\ : STD_LOGIC;
  signal \ascii_reg[5]_i_9_n_0\ : STD_LOGIC;
  signal break_i_2_n_0 : STD_LOGIC;
  signal caps_lock_i_2_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal control_l_i_2_n_0 : STD_LOGIC;
  signal \^control_l_reg\ : STD_LOGIC;
  signal control_r_i_2_n_0 : STD_LOGIC;
  signal control_r_i_3_n_0 : STD_LOGIC;
  signal \count_idle[0]_i_2_n_0\ : STD_LOGIC;
  signal \count_idle[0]_i_4_n_0\ : STD_LOGIC;
  signal \count_idle[0]_i_5_n_0\ : STD_LOGIC;
  signal \count_idle[0]_i_6_n_0\ : STD_LOGIC;
  signal count_idle_reg : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal \count_idle_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \count_idle_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \count_idle_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \count_idle_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal debounce_ps2_data_n_0 : STD_LOGIC;
  signal e0_code_i_2_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal ps2_code : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^ps2_code_new\ : STD_LOGIC;
  signal ps2_code_new0 : STD_LOGIC;
  signal ps2_code_new_i_2_n_0 : STD_LOGIC;
  signal ps2_code_new_i_3_n_0 : STD_LOGIC;
  signal \^ps2_code_reg[7]_0\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[0]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[10]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[8]\ : STD_LOGIC;
  signal \ps2_word_reg_n_0_[9]\ : STD_LOGIC;
  signal result : STD_LOGIC;
  signal shift_l_i_2_n_0 : STD_LOGIC;
  signal shift_l_i_3_n_0 : STD_LOGIC;
  signal shift_r_i_2_n_0 : STD_LOGIC;
  signal shift_r_i_3_n_0 : STD_LOGIC;
  signal sync_ffs : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_count_idle_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_state[1]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ascii[0]_i_7\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ascii[2]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ascii[3]_i_7\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \ascii[5]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ascii[5]_i_4\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \ascii[6]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \ascii[6]_i_15\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \ascii[6]_i_2\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \ascii[6]_i_4\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of control_r_i_3 : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of shift_l_i_3 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of shift_r_i_3 : label is "soft_lutpair15";
begin
  control_l_reg <= \^control_l_reg\;
  ps2_code_new <= \^ps2_code_new\;
  \ps2_code_reg[7]_0\ <= \^ps2_code_reg[7]_0\;
\FSM_sequential_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000004F4"
    )
        port map (
      I0 => prev_ps2_code_new,
      I1 => \^ps2_code_new\,
      I2 => Q(1),
      I3 => shift_l_reg_0,
      I4 => Q(0),
      O => \FSM_sequential_state_reg[0]\(0)
    );
\FSM_sequential_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"88B8"
    )
        port map (
      I0 => \^ps2_code_reg[7]_0\,
      I1 => Q(0),
      I2 => Q(1),
      I3 => shift_l_reg_0,
      O => \FSM_sequential_state_reg[0]\(1)
    );
\FSM_sequential_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFF7FF"
    )
        port map (
      I0 => ps2_code(7),
      I1 => ps2_code(6),
      I2 => \FSM_sequential_state[1]_i_3_n_0\,
      I3 => ps2_code(5),
      I4 => ps2_code(0),
      I5 => Q(1),
      O => \^ps2_code_reg[7]_0\
    );
\FSM_sequential_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => ps2_code(1),
      I1 => ps2_code(2),
      I2 => ps2_code(3),
      O => \FSM_sequential_state[1]_i_3_n_0\
    );
\ascii[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii_reg[0]_i_2_n_0\,
      I2 => control_l_reg_0,
      I3 => \ascii[0]_i_3_n_0\,
      O => D(0)
    );
\ascii[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F009F9BBB9B0B04"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(3),
      I3 => ps2_code(4),
      I4 => ps2_code(1),
      I5 => ps2_code(2),
      O => \ascii[0]_i_10_n_0\
    );
\ascii[0]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B66FFBFEBBB0F00"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(3),
      I3 => ps2_code(4),
      I4 => ps2_code(1),
      I5 => ps2_code(2),
      O => \ascii[0]_i_11_n_0\
    );
\ascii[0]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F00DF99BB9B0B04"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(3),
      I3 => ps2_code(4),
      I4 => ps2_code(1),
      I5 => ps2_code(2),
      O => \ascii[0]_i_12_n_0\
    );
\ascii[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CDCDFF00C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii_reg[0]_i_6_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[0]_i_7_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[0]_i_8_n_0\,
      O => \ascii[0]_i_3_n_0\
    );
\ascii[0]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CC3355003333F0FF"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(2),
      I3 => ps2_code(4),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[0]_i_4_n_0\
    );
\ascii[0]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"353500003F303F3F"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(1),
      I3 => ps2_code(2),
      I4 => ps2_code(4),
      I5 => ps2_code(3),
      O => \ascii[0]_i_5_n_0\
    );
\ascii[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4FF4"
    )
        port map (
      I0 => ps2_code(3),
      I1 => ps2_code(4),
      I2 => ps2_code(1),
      I3 => ps2_code(2),
      O => \ascii[0]_i_7_n_0\
    );
\ascii[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0B64FF9FE9BB0F00"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(3),
      I3 => ps2_code(4),
      I4 => ps2_code(1),
      I5 => ps2_code(2),
      O => \ascii[0]_i_9_n_0\
    );
\ascii[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii[1]_i_2_n_0\,
      I2 => control_l_reg_0,
      I3 => \ascii[1]_i_3_n_0\,
      O => D(1)
    );
\ascii[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0550FB8F04420004"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(2),
      I3 => ps2_code(1),
      I4 => ps2_code(3),
      I5 => ps2_code(4),
      O => \ascii[1]_i_10_n_0\
    );
\ascii[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5703FFFF57030000"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(2),
      I2 => ps2_code(1),
      I3 => ps2_code(3),
      I4 => ps2_code(0),
      I5 => \ascii[1]_i_4_n_0\,
      O => \ascii[1]_i_2_n_0\
    );
\ascii[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii[1]_i_5_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[4]_i_5_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[1]_i_6_n_0\,
      O => \ascii[1]_i_3_n_0\
    );
\ascii[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF1C5D5D5D"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(4),
      I2 => ps2_code(3),
      I3 => ps2_code(5),
      I4 => ps2_code(1),
      I5 => ps2_code(6),
      O => \ascii[1]_i_4_n_0\
    );
\ascii[1]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(3),
      I2 => ps2_code(7),
      I3 => \ascii[1]_i_7_n_0\,
      I4 => ps2_code(0),
      I5 => \ascii[1]_i_8_n_0\,
      O => \ascii[1]_i_5_n_0\
    );
\ascii[1]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0550FBAF04420004"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(2),
      I3 => ps2_code(1),
      I4 => ps2_code(3),
      I5 => ps2_code(4),
      O => \ascii[1]_i_7_n_0\
    );
\ascii[1]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43021600E4F2F2F0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(3),
      O => \ascii[1]_i_8_n_0\
    );
\ascii[1]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1100EFFF06204220"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(2),
      I3 => ps2_code(1),
      I4 => ps2_code(3),
      I5 => ps2_code(4),
      O => \ascii[1]_i_9_n_0\
    );
\ascii[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii_reg[2]_i_2_n_0\,
      I2 => control_l_reg_0,
      I3 => \ascii[2]_i_3_n_0\,
      O => D(2)
    );
\ascii[2]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A6700200BD0DF2"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[2]_i_10_n_0\
    );
\ascii[2]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"06E6440040B94FF0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[2]_i_11_n_0\
    );
\ascii[2]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00A6700200BD2DF2"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[2]_i_12_n_0\
    );
\ascii[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CDCDFF00C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii_reg[2]_i_6_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[2]_i_7_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[2]_i_8_n_0\,
      O => \ascii[2]_i_3_n_0\
    );
\ascii[2]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCC8CCCCFFF0CCFC"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(2),
      I3 => ps2_code(3),
      I4 => ps2_code(1),
      I5 => ps2_code(4),
      O => \ascii[2]_i_4_n_0\
    );
\ascii[2]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3FF03FAF2FF02CF0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(1),
      I4 => ps2_code(3),
      I5 => ps2_code(2),
      O => \ascii[2]_i_5_n_0\
    );
\ascii[2]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2036"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(2),
      I2 => ps2_code(1),
      I3 => ps2_code(3),
      O => \ascii[2]_i_7_n_0\
    );
\ascii[2]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0740444FE69900F0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(3),
      I4 => ps2_code(1),
      I5 => ps2_code(2),
      O => \ascii[2]_i_9_n_0\
    );
\ascii[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii_reg[3]_i_2_n_0\,
      I2 => control_l_reg_0,
      I3 => \ascii[3]_i_3_n_0\,
      O => D(3)
    );
\ascii[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EBA9F2FFFBEBFB"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[3]_i_10_n_0\
    );
\ascii[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"42FBABF0AB9FBBFF"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[3]_i_11_n_0\
    );
\ascii[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00EBA9F2FFFBE9FB"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[3]_i_12_n_0\
    );
\ascii[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CDCDFF00C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii_reg[3]_i_6_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[3]_i_7_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[3]_i_8_n_0\,
      O => \ascii[3]_i_3_n_0\
    );
\ascii[3]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22FF2222F32FF32F"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(3),
      I4 => ps2_code(1),
      I5 => ps2_code(2),
      O => \ascii[3]_i_4_n_0\
    );
\ascii[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E0FFE0E0E3E3E3E3"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(3),
      I4 => ps2_code(1),
      I5 => ps2_code(2),
      O => \ascii[3]_i_5_n_0\
    );
\ascii[3]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3EFF"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(2),
      I2 => ps2_code(1),
      I3 => ps2_code(3),
      O => \ascii[3]_i_7_n_0\
    );
\ascii[3]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"43ABFBF0EBBB9FFF"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(3),
      O => \ascii[3]_i_9_n_0\
    );
\ascii[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii[4]_i_2_n_0\,
      I2 => control_l_reg_0,
      I3 => \ascii[4]_i_3_n_0\,
      O => D(4)
    );
\ascii[4]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F7F3B0B00660000"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(3),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(4),
      O => \ascii[4]_i_10_n_0\
    );
\ascii[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EFEF3535FFBA0404"
    )
        port map (
      I0 => ps2_code(0),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(3),
      O => \ascii[4]_i_2_n_0\
    );
\ascii[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CDC8CDCDCDC8C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii[4]_i_4_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[4]_i_5_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[4]_i_6_n_0\,
      O => \ascii[4]_i_3_n_0\
    );
\ascii[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(3),
      I2 => ps2_code(7),
      I3 => \ascii[4]_i_7_n_0\,
      I4 => ps2_code(0),
      I5 => \ascii[4]_i_8_n_0\,
      O => \ascii[4]_i_4_n_0\
    );
\ascii[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(3),
      O => \ascii[4]_i_5_n_0\
    );
\ascii[4]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F3D3B0B00600022"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(3),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(4),
      O => \ascii[4]_i_7_n_0\
    );
\ascii[4]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"03461600E0B094F0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(3),
      O => \ascii[4]_i_8_n_0\
    );
\ascii[4]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"45ED40BF50584800"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(2),
      I2 => ps2_code(5),
      I3 => ps2_code(3),
      I4 => ps2_code(1),
      I5 => ps2_code(4),
      O => \ascii[4]_i_9_n_0\
    );
\ascii[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii[6]_i_4_n_0\,
      I2 => control_l_reg_0,
      I3 => \ascii[5]_i_2_n_0\,
      O => D(5)
    );
\ascii[5]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED02020F162020F0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[5]_i_10_n_0\
    );
\ascii[5]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF20600F000026B2"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[5]_i_11_n_0\
    );
\ascii[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"ED56560F166666F0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[5]_i_12_n_0\
    );
\ascii[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF76760F004676F6"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[5]_i_13_n_0\
    );
\ascii[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF56560F566646F0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[5]_i_14_n_0\
    );
\ascii[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF56560F004676F6"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[5]_i_15_n_0\
    );
\ascii[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF02020F562000F0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[5]_i_16_n_0\
    );
\ascii[5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00400F000026B2"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(3),
      O => \ascii[5]_i_17_n_0\
    );
\ascii[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00CDCDFF00C8C8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii_reg[5]_i_3_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[5]_i_4_n_0\,
      I4 => ps2_code(7),
      I5 => \ascii_reg[5]_i_5_n_0\,
      O => \ascii[5]_i_2_n_0\
    );
\ascii[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C102"
    )
        port map (
      I0 => ps2_code(4),
      I1 => ps2_code(2),
      I2 => ps2_code(1),
      I3 => ps2_code(3),
      O => \ascii[5]_i_4_n_0\
    );
\ascii[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^control_l_reg\,
      I1 => Q(0),
      O => E(0)
    );
\ascii[6]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"57567600DE666600"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(3),
      O => \ascii[6]_i_10_n_0\
    );
\ascii[6]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0077760600764646"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(3),
      O => \ascii[6]_i_11_n_0\
    );
\ascii[6]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00777606007646C6"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(3),
      O => \ascii[6]_i_12_n_0\
    );
\ascii[6]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1454560020664600"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(3),
      I3 => ps2_code(2),
      I4 => ps2_code(1),
      I5 => ps2_code(4),
      O => \ascii[6]_i_13_n_0\
    );
\ascii[6]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0370054406600064"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(1),
      I3 => ps2_code(2),
      I4 => ps2_code(3),
      I5 => ps2_code(4),
      O => \ascii[6]_i_14_n_0\
    );
\ascii[6]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(3),
      O => \ascii[6]_i_15_n_0\
    );
\ascii[6]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"07300F5F06600604"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(2),
      I3 => ps2_code(1),
      I4 => ps2_code(3),
      I5 => ps2_code(4),
      O => \ascii[6]_i_16_n_0\
    );
\ascii[6]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"135454004066D6F0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(3),
      O => \ascii[6]_i_17_n_0\
    );
\ascii[6]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"015454000066D6F0"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(5),
      I2 => ps2_code(4),
      I3 => ps2_code(1),
      I4 => ps2_code(2),
      I5 => ps2_code(3),
      O => \ascii[6]_i_18_n_0\
    );
\ascii[6]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => control_r_reg,
      I1 => \ascii[6]_i_4_n_0\,
      I2 => control_l_reg_0,
      I3 => \ascii[6]_i_5_n_0\,
      O => D(6)
    );
\ascii[6]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0E20000"
    )
        port map (
      I0 => \ascii[6]_i_6_n_0\,
      I1 => control_l_reg_0,
      I2 => \ascii[6]_i_7_n_0\,
      I3 => control_r_reg,
      I4 => Q(1),
      O => \^control_l_reg\
    );
\ascii[6]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(3),
      I2 => ps2_code(2),
      I3 => ps2_code(0),
      O => \ascii[6]_i_4_n_0\
    );
\ascii[6]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"CDC8"
    )
        port map (
      I0 => shift_r_reg,
      I1 => \ascii[6]_i_8_n_0\,
      I2 => shift_l_reg,
      I3 => \ascii[6]_i_9_n_0\,
      O => \ascii[6]_i_5_n_0\
    );
\ascii[6]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000EEE222E2"
    )
        port map (
      I0 => \ascii[6]_i_10_n_0\,
      I1 => ps2_code(0),
      I2 => \ascii[6]_i_11_n_0\,
      I3 => e0_code,
      I4 => \ascii[6]_i_12_n_0\,
      I5 => ps2_code(7),
      O => \ascii[6]_i_6_n_0\
    );
\ascii[6]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E2"
    )
        port map (
      I0 => \ascii[6]_i_13_n_0\,
      I1 => ps2_code(0),
      I2 => \ascii[6]_i_14_n_0\,
      I3 => ps2_code(7),
      O => \ascii[6]_i_7_n_0\
    );
\ascii[6]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \ascii[6]_i_15_n_0\,
      I1 => ps2_code(4),
      I2 => ps2_code(7),
      I3 => \ascii[6]_i_16_n_0\,
      I4 => ps2_code(0),
      I5 => \ascii[6]_i_17_n_0\,
      O => \ascii[6]_i_8_n_0\
    );
\ascii[6]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8F808F8F8F808080"
    )
        port map (
      I0 => \ascii[6]_i_15_n_0\,
      I1 => ps2_code(4),
      I2 => ps2_code(7),
      I3 => \ascii[6]_i_16_n_0\,
      I4 => ps2_code(0),
      I5 => \ascii[6]_i_18_n_0\,
      O => \ascii[6]_i_9_n_0\
    );
ascii_new_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFCFF44440000"
    )
        port map (
      I0 => ascii_new_reg,
      I1 => Q(0),
      I2 => prev_ps2_code_new,
      I3 => \^ps2_code_new\,
      I4 => Q(1),
      I5 => ascii_new,
      O => \ascii_reg[7]\
    );
\ascii_reg[0]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[0]_i_4_n_0\,
      I1 => \ascii[0]_i_5_n_0\,
      O => \ascii_reg[0]_i_2_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[0]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[0]_i_9_n_0\,
      I1 => \ascii[0]_i_10_n_0\,
      O => \ascii_reg[0]_i_6_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[0]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[0]_i_11_n_0\,
      I1 => \ascii[0]_i_12_n_0\,
      O => \ascii_reg[0]_i_8_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[1]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[1]_i_9_n_0\,
      I1 => \ascii[1]_i_10_n_0\,
      O => \ascii_reg[1]_i_6_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[2]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[2]_i_4_n_0\,
      I1 => \ascii[2]_i_5_n_0\,
      O => \ascii_reg[2]_i_2_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[2]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[2]_i_9_n_0\,
      I1 => \ascii[2]_i_10_n_0\,
      O => \ascii_reg[2]_i_6_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[2]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[2]_i_11_n_0\,
      I1 => \ascii[2]_i_12_n_0\,
      O => \ascii_reg[2]_i_8_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[3]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[3]_i_4_n_0\,
      I1 => \ascii[3]_i_5_n_0\,
      O => \ascii_reg[3]_i_2_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[3]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[3]_i_9_n_0\,
      I1 => \ascii[3]_i_10_n_0\,
      O => \ascii_reg[3]_i_6_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[3]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[3]_i_11_n_0\,
      I1 => \ascii[3]_i_12_n_0\,
      O => \ascii_reg[3]_i_8_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[4]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[4]_i_9_n_0\,
      I1 => \ascii[4]_i_10_n_0\,
      O => \ascii_reg[4]_i_6_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[5]_i_3\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ascii_reg[5]_i_6_n_0\,
      I1 => \ascii_reg[5]_i_7_n_0\,
      O => \ascii_reg[5]_i_3_n_0\,
      S => caps_lock_reg
    );
\ascii_reg[5]_i_5\: unisim.vcomponents.MUXF8
     port map (
      I0 => \ascii_reg[5]_i_8_n_0\,
      I1 => \ascii_reg[5]_i_9_n_0\,
      O => \ascii_reg[5]_i_5_n_0\,
      S => caps_lock_reg
    );
\ascii_reg[5]_i_6\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[5]_i_10_n_0\,
      I1 => \ascii[5]_i_11_n_0\,
      O => \ascii_reg[5]_i_6_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[5]_i_7\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[5]_i_12_n_0\,
      I1 => \ascii[5]_i_13_n_0\,
      O => \ascii_reg[5]_i_7_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[5]_i_8\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[5]_i_14_n_0\,
      I1 => \ascii[5]_i_15_n_0\,
      O => \ascii_reg[5]_i_8_n_0\,
      S => ps2_code(0)
    );
\ascii_reg[5]_i_9\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ascii[5]_i_16_n_0\,
      I1 => \ascii[5]_i_17_n_0\,
      O => \ascii_reg[5]_i_9_n_0\,
      S => ps2_code(0)
    );
break_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000BAAAAAAA"
    )
        port map (
      I0 => shift_l_reg_0,
      I1 => ps2_code(0),
      I2 => break_i_2_n_0,
      I3 => ps2_code(7),
      I4 => Q(0),
      I5 => Q(1),
      O => break_reg_3
    );
break_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => ps2_code(5),
      I1 => ps2_code(3),
      I2 => ps2_code(1),
      I3 => ps2_code(2),
      I4 => ps2_code(4),
      I5 => ps2_code(6),
      O => break_i_2_n_0
    );
caps_lock_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFF00100000"
    )
        port map (
      I0 => Q(0),
      I1 => ps2_code(7),
      I2 => caps_lock_i_2_n_0,
      I3 => shift_l_reg_0,
      I4 => Q(1),
      I5 => caps_lock_reg,
      O => \FSM_sequential_state_reg[0]_0\
    );
caps_lock_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000800"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(4),
      I2 => shift_r_i_3_n_0,
      I3 => ps2_code(3),
      I4 => ps2_code(5),
      I5 => ps2_code(0),
      O => caps_lock_i_2_n_0
    );
control_l_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => shift_l_reg_0,
      I1 => Q(1),
      I2 => control_l_i_2_n_0,
      I3 => ps2_code(7),
      I4 => Q(0),
      I5 => control_l_reg_0,
      O => break_reg_2
    );
control_l_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000001000"
    )
        port map (
      I0 => ps2_code(0),
      I1 => ps2_code(5),
      I2 => control_r_i_3_n_0,
      I3 => ps2_code(4),
      I4 => ps2_code(6),
      I5 => e0_code,
      O => control_l_i_2_n_0
    );
control_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => shift_l_reg_0,
      I1 => Q(1),
      I2 => control_r_i_2_n_0,
      I3 => ps2_code(7),
      I4 => Q(0),
      I5 => control_r_reg,
      O => break_reg_1
    );
control_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000100000000000"
    )
        port map (
      I0 => ps2_code(0),
      I1 => ps2_code(5),
      I2 => control_r_i_3_n_0,
      I3 => ps2_code(4),
      I4 => ps2_code(6),
      I5 => e0_code,
      O => control_r_i_2_n_0
    );
control_r_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => ps2_code(1),
      I1 => ps2_code(2),
      I2 => ps2_code(3),
      O => control_r_i_3_n_0
    );
\count_idle[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFBFF"
    )
        port map (
      I0 => count_idle_reg(8),
      I1 => count_idle_reg(3),
      I2 => count_idle_reg(10),
      I3 => count_idle_reg(4),
      I4 => \count_idle[0]_i_4_n_0\,
      I5 => \count_idle[0]_i_5_n_0\,
      O => \count_idle[0]_i_2_n_0\
    );
\count_idle[0]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => count_idle_reg(6),
      I1 => count_idle_reg(1),
      I2 => count_idle_reg(2),
      I3 => count_idle_reg(5),
      O => \count_idle[0]_i_4_n_0\
    );
\count_idle[0]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => count_idle_reg(11),
      I1 => count_idle_reg(0),
      I2 => count_idle_reg(7),
      I3 => count_idle_reg(9),
      O => \count_idle[0]_i_5_n_0\
    );
\count_idle[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => count_idle_reg(0),
      O => \count_idle[0]_i_6_n_0\
    );
\count_idle_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_7\,
      Q => count_idle_reg(0),
      R => clear
    );
\count_idle_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \count_idle_reg[0]_i_3_n_0\,
      CO(2) => \count_idle_reg[0]_i_3_n_1\,
      CO(1) => \count_idle_reg[0]_i_3_n_2\,
      CO(0) => \count_idle_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \count_idle_reg[0]_i_3_n_4\,
      O(2) => \count_idle_reg[0]_i_3_n_5\,
      O(1) => \count_idle_reg[0]_i_3_n_6\,
      O(0) => \count_idle_reg[0]_i_3_n_7\,
      S(3 downto 1) => count_idle_reg(3 downto 1),
      S(0) => \count_idle[0]_i_6_n_0\
    );
\count_idle_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_5\,
      Q => count_idle_reg(10),
      R => clear
    );
\count_idle_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_4\,
      Q => count_idle_reg(11),
      R => clear
    );
\count_idle_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_6\,
      Q => count_idle_reg(1),
      R => clear
    );
\count_idle_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_5\,
      Q => count_idle_reg(2),
      R => clear
    );
\count_idle_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[0]_i_3_n_4\,
      Q => count_idle_reg(3),
      R => clear
    );
\count_idle_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_7\,
      Q => count_idle_reg(4),
      R => clear
    );
\count_idle_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_idle_reg[0]_i_3_n_0\,
      CO(3) => \count_idle_reg[4]_i_1_n_0\,
      CO(2) => \count_idle_reg[4]_i_1_n_1\,
      CO(1) => \count_idle_reg[4]_i_1_n_2\,
      CO(0) => \count_idle_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_idle_reg[4]_i_1_n_4\,
      O(2) => \count_idle_reg[4]_i_1_n_5\,
      O(1) => \count_idle_reg[4]_i_1_n_6\,
      O(0) => \count_idle_reg[4]_i_1_n_7\,
      S(3 downto 0) => count_idle_reg(7 downto 4)
    );
\count_idle_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_6\,
      Q => count_idle_reg(5),
      R => clear
    );
\count_idle_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_5\,
      Q => count_idle_reg(6),
      R => clear
    );
\count_idle_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[4]_i_1_n_4\,
      Q => count_idle_reg(7),
      R => clear
    );
\count_idle_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_7\,
      Q => count_idle_reg(8),
      R => clear
    );
\count_idle_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \count_idle_reg[4]_i_1_n_0\,
      CO(3) => \NLW_count_idle_reg[8]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \count_idle_reg[8]_i_1_n_1\,
      CO(1) => \count_idle_reg[8]_i_1_n_2\,
      CO(0) => \count_idle_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \count_idle_reg[8]_i_1_n_4\,
      O(2) => \count_idle_reg[8]_i_1_n_5\,
      O(1) => \count_idle_reg[8]_i_1_n_6\,
      O(0) => \count_idle_reg[8]_i_1_n_7\,
      S(3 downto 0) => count_idle_reg(11 downto 8)
    );
\count_idle_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \count_idle[0]_i_2_n_0\,
      D => \count_idle_reg[8]_i_1_n_6\,
      Q => count_idle_reg(9),
      R => clear
    );
debounce_ps2_clk: entity work.Keyboard_ps2_keyboard_to_ascii_0_0_debounce
     port map (
      CLK => result,
      Q(0) => sync_ffs(0),
      clear => clear,
      \^clk\ => clk
    );
debounce_ps2_data: entity work.Keyboard_ps2_keyboard_to_ascii_0_0_debounce_0
     port map (
      D(0) => debounce_ps2_data_n_0,
      Q(0) => sync_ffs(1),
      clk => clk
    );
e0_code_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAA0000BAAAAAAA"
    )
        port map (
      I0 => e0_code,
      I1 => ps2_code(0),
      I2 => e0_code_i_2_n_0,
      I3 => ps2_code(7),
      I4 => Q(0),
      I5 => Q(1),
      O => e0_code_reg
    );
e0_code_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => ps2_code(5),
      I1 => ps2_code(3),
      I2 => ps2_code(1),
      I3 => ps2_code(2),
      I4 => ps2_code(4),
      I5 => ps2_code(6),
      O => e0_code_i_2_n_0
    );
ps2_code_new_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => ps2_code_new_i_2_n_0,
      I1 => \ps2_word_reg_n_0_[0]\,
      I2 => \ps2_word_reg_n_0_[10]\,
      I3 => \count_idle[0]_i_2_n_0\,
      O => ps2_code_new0
    );
ps2_code_new_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6996966996696996"
    )
        port map (
      I0 => \ps2_word_reg_n_0_[8]\,
      I1 => ps2_code_new_i_3_n_0,
      I2 => p_0_in,
      I3 => \ps2_word_reg_n_0_[9]\,
      I4 => p_5_in,
      I5 => p_6_in,
      O => ps2_code_new_i_2_n_0
    );
ps2_code_new_i_3: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6996"
    )
        port map (
      I0 => p_3_in,
      I1 => p_4_in,
      I2 => p_1_in,
      I3 => p_2_in,
      O => ps2_code_new_i_3_n_0
    );
ps2_code_new_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps2_code_new0,
      Q => \^ps2_code_new\,
      R => '0'
    );
\ps2_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_0_in,
      Q => ps2_code(0),
      R => '0'
    );
\ps2_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_6_in,
      Q => ps2_code(1),
      R => '0'
    );
\ps2_code_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_5_in,
      Q => ps2_code(2),
      R => '0'
    );
\ps2_code_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_4_in,
      Q => ps2_code(3),
      R => '0'
    );
\ps2_code_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_3_in,
      Q => ps2_code(4),
      R => '0'
    );
\ps2_code_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_2_in,
      Q => ps2_code(5),
      R => '0'
    );
\ps2_code_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => p_1_in,
      Q => ps2_code(6),
      R => '0'
    );
\ps2_code_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => ps2_code_new0,
      D => \ps2_word_reg_n_0_[8]\,
      Q => ps2_code(7),
      R => '0'
    );
\ps2_word_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_0_in,
      Q => \ps2_word_reg_n_0_[0]\,
      R => '0'
    );
\ps2_word_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => debounce_ps2_data_n_0,
      Q => \ps2_word_reg_n_0_[10]\,
      R => '0'
    );
\ps2_word_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_6_in,
      Q => p_0_in,
      R => '0'
    );
\ps2_word_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_5_in,
      Q => p_6_in,
      R => '0'
    );
\ps2_word_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_4_in,
      Q => p_5_in,
      R => '0'
    );
\ps2_word_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_3_in,
      Q => p_4_in,
      R => '0'
    );
\ps2_word_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_2_in,
      Q => p_3_in,
      R => '0'
    );
\ps2_word_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => p_1_in,
      Q => p_2_in,
      R => '0'
    );
\ps2_word_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => \ps2_word_reg_n_0_[8]\,
      Q => p_1_in,
      R => '0'
    );
\ps2_word_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => \ps2_word_reg_n_0_[9]\,
      Q => \ps2_word_reg_n_0_[8]\,
      R => '0'
    );
\ps2_word_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      IS_C_INVERTED => '1'
    )
        port map (
      C => result,
      CE => '1',
      D => \ps2_word_reg_n_0_[10]\,
      Q => \ps2_word_reg_n_0_[9]\,
      R => '0'
    );
shift_l_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => shift_l_reg_0,
      I1 => Q(1),
      I2 => shift_l_i_2_n_0,
      I3 => ps2_code(7),
      I4 => Q(0),
      I5 => shift_l_reg,
      O => break_reg
    );
shift_l_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000040"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(4),
      I2 => shift_l_i_3_n_0,
      I3 => ps2_code(3),
      I4 => ps2_code(5),
      I5 => ps2_code(0),
      O => shift_l_i_2_n_0
    );
shift_l_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ps2_code(1),
      I1 => ps2_code(2),
      O => shift_l_i_3_n_0
    );
shift_r_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF7F00000040"
    )
        port map (
      I0 => shift_l_reg_0,
      I1 => Q(1),
      I2 => shift_r_i_2_n_0,
      I3 => ps2_code(7),
      I4 => Q(0),
      I5 => shift_r_reg,
      O => break_reg_0
    );
shift_r_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000080000000000"
    )
        port map (
      I0 => ps2_code(6),
      I1 => ps2_code(4),
      I2 => shift_r_i_3_n_0,
      I3 => ps2_code(3),
      I4 => ps2_code(5),
      I5 => ps2_code(0),
      O => shift_r_i_2_n_0
    );
shift_r_i_3: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => ps2_code(2),
      I1 => ps2_code(1),
      O => shift_r_i_3_n_0
    );
\sync_ffs_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_ffs_reg[1]_0\(0),
      Q => sync_ffs(0),
      R => '0'
    );
\sync_ffs_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => \sync_ffs_reg[1]_0\(1),
      Q => sync_ffs(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keyboard_ps2_keyboard_to_ascii_0_0_ps2_keyboard_to_ascii is
  port (
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 );
    ascii_new : out STD_LOGIC;
    clk : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of Keyboard_ps2_keyboard_to_ascii_0_0_ps2_keyboard_to_ascii : entity is "ps2_keyboard_to_ascii";
end Keyboard_ps2_keyboard_to_ascii_0_0_ps2_keyboard_to_ascii;

architecture STRUCTURE of Keyboard_ps2_keyboard_to_ascii_0_0_ps2_keyboard_to_ascii is
  signal \FSM_sequential_state_reg_n_0_[1]\ : STD_LOGIC;
  signal ascii : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \ascii[7]_i_1_n_0\ : STD_LOGIC;
  signal \ascii_code[6]_i_1_n_0\ : STD_LOGIC;
  signal \^ascii_new\ : STD_LOGIC;
  signal \ascii_reg_n_0_[0]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[1]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[2]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[3]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[4]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[5]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[6]\ : STD_LOGIC;
  signal \ascii_reg_n_0_[7]\ : STD_LOGIC;
  signal break_reg_n_0 : STD_LOGIC;
  signal caps_lock_reg_n_0 : STD_LOGIC;
  signal control_l_reg_n_0 : STD_LOGIC;
  signal control_r_reg_n_0 : STD_LOGIC;
  signal e0_code : STD_LOGIC;
  signal prev_ps2_code_new : STD_LOGIC;
  signal ps2_code_new : STD_LOGIC;
  signal ps2_keyboard_0_n_10 : STD_LOGIC;
  signal ps2_keyboard_0_n_11 : STD_LOGIC;
  signal ps2_keyboard_0_n_12 : STD_LOGIC;
  signal ps2_keyboard_0_n_13 : STD_LOGIC;
  signal ps2_keyboard_0_n_14 : STD_LOGIC;
  signal ps2_keyboard_0_n_15 : STD_LOGIC;
  signal ps2_keyboard_0_n_16 : STD_LOGIC;
  signal ps2_keyboard_0_n_17 : STD_LOGIC;
  signal ps2_keyboard_0_n_18 : STD_LOGIC;
  signal ps2_keyboard_0_n_19 : STD_LOGIC;
  signal ps2_keyboard_0_n_20 : STD_LOGIC;
  signal ps2_keyboard_0_n_8 : STD_LOGIC;
  signal ps2_keyboard_0_n_9 : STD_LOGIC;
  signal shift_l_reg_n_0 : STD_LOGIC;
  signal shift_r_reg_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[0]\ : label is "new_code:01,translate:10,ready:00,output:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_state_reg[1]\ : label is "new_code:01,translate:10,ready:00,output:11";
begin
  ascii_new <= \^ascii_new\;
\FSM_sequential_state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_11,
      Q => state(0),
      R => '0'
    );
\FSM_sequential_state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_10,
      Q => \FSM_sequential_state_reg_n_0_[1]\,
      R => '0'
    );
\ascii[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"757F4540"
    )
        port map (
      I0 => \FSM_sequential_state_reg_n_0_[1]\,
      I1 => ps2_keyboard_0_n_12,
      I2 => state(0),
      I3 => ps2_keyboard_0_n_9,
      I4 => \ascii_reg_n_0_[7]\,
      O => \ascii[7]_i_1_n_0\
    );
\ascii_code[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \ascii_reg_n_0_[7]\,
      I1 => \FSM_sequential_state_reg_n_0_[1]\,
      I2 => state(0),
      O => \ascii_code[6]_i_1_n_0\
    );
\ascii_code_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[0]\,
      Q => ascii_code(0),
      R => '0'
    );
\ascii_code_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[1]\,
      Q => ascii_code(1),
      R => '0'
    );
\ascii_code_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[2]\,
      Q => ascii_code(2),
      R => '0'
    );
\ascii_code_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[3]\,
      Q => ascii_code(3),
      R => '0'
    );
\ascii_code_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[4]\,
      Q => ascii_code(4),
      R => '0'
    );
\ascii_code_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[5]\,
      Q => ascii_code(5),
      R => '0'
    );
\ascii_code_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \ascii_code[6]_i_1_n_0\,
      D => \ascii_reg_n_0_[6]\,
      Q => ascii_code(6),
      R => '0'
    );
ascii_new_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_17,
      Q => \^ascii_new\,
      R => '0'
    );
\ascii_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ps2_keyboard_0_n_8,
      D => ascii(0),
      Q => \ascii_reg_n_0_[0]\,
      R => '0'
    );
\ascii_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ps2_keyboard_0_n_8,
      D => ascii(1),
      Q => \ascii_reg_n_0_[1]\,
      R => '0'
    );
\ascii_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ps2_keyboard_0_n_8,
      D => ascii(2),
      Q => \ascii_reg_n_0_[2]\,
      R => '0'
    );
\ascii_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ps2_keyboard_0_n_8,
      D => ascii(3),
      Q => \ascii_reg_n_0_[3]\,
      R => '0'
    );
\ascii_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ps2_keyboard_0_n_8,
      D => ascii(4),
      Q => \ascii_reg_n_0_[4]\,
      R => '0'
    );
\ascii_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ps2_keyboard_0_n_8,
      D => ascii(5),
      Q => \ascii_reg_n_0_[5]\,
      R => '0'
    );
\ascii_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => ps2_keyboard_0_n_8,
      D => ascii(6),
      Q => \ascii_reg_n_0_[6]\,
      R => '0'
    );
\ascii_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => \ascii[7]_i_1_n_0\,
      Q => \ascii_reg_n_0_[7]\,
      R => '0'
    );
break_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_18,
      Q => break_reg_n_0,
      R => '0'
    );
caps_lock_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_20,
      Q => caps_lock_reg_n_0,
      R => '0'
    );
control_l_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_16,
      Q => control_l_reg_n_0,
      R => '0'
    );
control_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_15,
      Q => control_r_reg_n_0,
      R => '0'
    );
e0_code_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_19,
      Q => e0_code,
      R => '0'
    );
prev_ps2_code_new_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '1'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_code_new,
      Q => prev_ps2_code_new,
      R => '0'
    );
ps2_keyboard_0: entity work.Keyboard_ps2_keyboard_to_ascii_0_0_ps2_keyboard
     port map (
      D(6 downto 0) => ascii(6 downto 0),
      E(0) => ps2_keyboard_0_n_8,
      \FSM_sequential_state_reg[0]\(1) => ps2_keyboard_0_n_10,
      \FSM_sequential_state_reg[0]\(0) => ps2_keyboard_0_n_11,
      \FSM_sequential_state_reg[0]_0\ => ps2_keyboard_0_n_20,
      Q(1) => \FSM_sequential_state_reg_n_0_[1]\,
      Q(0) => state(0),
      ascii_new => \^ascii_new\,
      ascii_new_reg => \ascii_reg_n_0_[7]\,
      \ascii_reg[7]\ => ps2_keyboard_0_n_17,
      break_reg => ps2_keyboard_0_n_13,
      break_reg_0 => ps2_keyboard_0_n_14,
      break_reg_1 => ps2_keyboard_0_n_15,
      break_reg_2 => ps2_keyboard_0_n_16,
      break_reg_3 => ps2_keyboard_0_n_18,
      caps_lock_reg => caps_lock_reg_n_0,
      clk => clk,
      control_l_reg => ps2_keyboard_0_n_9,
      control_l_reg_0 => control_l_reg_n_0,
      control_r_reg => control_r_reg_n_0,
      e0_code => e0_code,
      e0_code_reg => ps2_keyboard_0_n_19,
      prev_ps2_code_new => prev_ps2_code_new,
      ps2_code_new => ps2_code_new,
      \ps2_code_reg[7]_0\ => ps2_keyboard_0_n_12,
      shift_l_reg => shift_l_reg_n_0,
      shift_l_reg_0 => break_reg_n_0,
      shift_r_reg => shift_r_reg_n_0,
      \sync_ffs_reg[1]_0\(1 downto 0) => D(1 downto 0)
    );
shift_l_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_13,
      Q => shift_l_reg_n_0,
      R => '0'
    );
shift_r_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => ps2_keyboard_0_n_14,
      Q => shift_r_reg_n_0,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity Keyboard_ps2_keyboard_to_ascii_0_0 is
  port (
    clk : in STD_LOGIC;
    ps2_clk : in STD_LOGIC;
    ps2_data : in STD_LOGIC;
    ascii_new : out STD_LOGIC;
    ascii_code : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of Keyboard_ps2_keyboard_to_ascii_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of Keyboard_ps2_keyboard_to_ascii_0_0 : entity is "Keyboard_ps2_keyboard_to_ascii_0_0,ps2_keyboard_to_ascii,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of Keyboard_ps2_keyboard_to_ascii_0_0 : entity is "yes";
  attribute ip_definition_source : string;
  attribute ip_definition_source of Keyboard_ps2_keyboard_to_ascii_0_0 : entity is "module_ref";
  attribute x_core_info : string;
  attribute x_core_info of Keyboard_ps2_keyboard_to_ascii_0_0 : entity is "ps2_keyboard_to_ascii,Vivado 2019.1";
end Keyboard_ps2_keyboard_to_ascii_0_0;

architecture STRUCTURE of Keyboard_ps2_keyboard_to_ascii_0_0 is
  attribute x_interface_info : string;
  attribute x_interface_info of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of clk : signal is "XIL_INTERFACENAME clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Keyboard_clk_0, INSERT_VIP 0";
  attribute x_interface_info of ps2_clk : signal is "xilinx.com:signal:clock:1.0 ps2_clk CLK";
  attribute x_interface_parameter of ps2_clk : signal is "XIL_INTERFACENAME ps2_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN Keyboard_ps2_clk_0, INSERT_VIP 0";
begin
U0: entity work.Keyboard_ps2_keyboard_to_ascii_0_0_ps2_keyboard_to_ascii
     port map (
      D(1) => ps2_data,
      D(0) => ps2_clk,
      ascii_code(6 downto 0) => ascii_code(6 downto 0),
      ascii_new => ascii_new,
      clk => clk
    );
end STRUCTURE;
