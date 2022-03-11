// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Mar 10 20:25:15 2022
// Host        : fedora running 64-bit Fedora release 35 (Thirty Five)
// Command     : write_verilog -force -mode synth_stub
//               /home/spixy/Documents/College/EE316/EE316P4/Keyboard/keyboard/keyboard.srcs/sources_1/bd/Keyboard/ip/Keyboard_system_ila_0_1/Keyboard_system_ila_0_1_stub.v
// Design      : Keyboard_system_ila_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "bd_0ffa,Vivado 2019.1" *)
module Keyboard_system_ila_0_1(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[6:0]" */;
  input clk;
  input [6:0]probe0;
endmodule
