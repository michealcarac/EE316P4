// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Mar 10 15:10:41 2022
// Host        : fedora running 64-bit Fedora release 35 (Thirty Five)
// Command     : write_verilog -force -mode synth_stub
//               /home/spixy/Documents/College/EE316/EE316P4/Keyboard/keyboard/keyboard.srcs/sources_1/bd/Keyboard/ip/Keyboard_ps2_keyboard_to_ascii_0_0/Keyboard_ps2_keyboard_to_ascii_0_0_stub.v
// Design      : Keyboard_ps2_keyboard_to_ascii_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "ps2_keyboard_to_ascii,Vivado 2019.1" *)
module Keyboard_ps2_keyboard_to_ascii_0_0(clk, ps2_clk, ps2_data, ascii_new, ascii_code)
/* synthesis syn_black_box black_box_pad_pin="clk,ps2_clk,ps2_data,ascii_new,ascii_code[6:0]" */;
  input clk;
  input ps2_clk;
  input ps2_data;
  output ascii_new;
  output [6:0]ascii_code;
endmodule
