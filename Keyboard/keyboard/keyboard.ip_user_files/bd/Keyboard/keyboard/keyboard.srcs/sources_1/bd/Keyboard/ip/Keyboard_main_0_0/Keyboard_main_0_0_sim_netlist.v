// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Mar 10 17:30:44 2022
// Host        : fedora running 64-bit Fedora release 35 (Thirty Five)
// Command     : write_verilog -force -mode funcsim
//               /home/spixy/Documents/College/EE316/EE316P4/Keyboard/keyboard/keyboard.srcs/sources_1/bd/Keyboard/ip/Keyboard_main_0_0/Keyboard_main_0_0_sim_netlist.v
// Design      : Keyboard_main_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Keyboard_main_0_0,main,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "main,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Keyboard_main_0_0
   (clk_i,
    reset,
    keyboard_ASCII,
    reset_n,
    selectMode,
    clockOutput,
    data_o);
  input clk_i;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset;
  input [6:0]keyboard_ASCII;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) output reset_n;
  output [3:0]selectMode;
  output clockOutput;
  output [127:0]data_o;

  wire \<const0> ;
  wire \<const1> ;
  wire [6:0]keyboard_ASCII;
  wire reset;
  wire reset_n;

  assign clockOutput = \<const1> ;
  assign data_o[127] = \<const0> ;
  assign data_o[126] = \<const0> ;
  assign data_o[125] = \<const1> ;
  assign data_o[124] = \<const0> ;
  assign data_o[123] = \<const0> ;
  assign data_o[122] = \<const0> ;
  assign data_o[121] = \<const0> ;
  assign data_o[120] = \<const0> ;
  assign data_o[119] = \<const0> ;
  assign data_o[118] = \<const0> ;
  assign data_o[117] = \<const1> ;
  assign data_o[116] = \<const0> ;
  assign data_o[115] = \<const0> ;
  assign data_o[114] = \<const0> ;
  assign data_o[113] = \<const0> ;
  assign data_o[112] = \<const0> ;
  assign data_o[111] = \<const0> ;
  assign data_o[110] = \<const0> ;
  assign data_o[109] = \<const1> ;
  assign data_o[108] = \<const0> ;
  assign data_o[107] = \<const0> ;
  assign data_o[106] = \<const0> ;
  assign data_o[105] = \<const0> ;
  assign data_o[104] = \<const0> ;
  assign data_o[103] = \<const0> ;
  assign data_o[102] = \<const0> ;
  assign data_o[101] = \<const1> ;
  assign data_o[100] = \<const0> ;
  assign data_o[99] = \<const0> ;
  assign data_o[98] = \<const0> ;
  assign data_o[97] = \<const0> ;
  assign data_o[96] = \<const0> ;
  assign data_o[95] = \<const0> ;
  assign data_o[94] = \<const0> ;
  assign data_o[93] = \<const1> ;
  assign data_o[92] = \<const0> ;
  assign data_o[91] = \<const0> ;
  assign data_o[90] = \<const0> ;
  assign data_o[89] = \<const0> ;
  assign data_o[88] = \<const0> ;
  assign data_o[87] = \<const0> ;
  assign data_o[86] = \<const0> ;
  assign data_o[85] = \<const1> ;
  assign data_o[84] = \<const0> ;
  assign data_o[83] = \<const0> ;
  assign data_o[82] = \<const0> ;
  assign data_o[81] = \<const0> ;
  assign data_o[80] = \<const0> ;
  assign data_o[79] = \<const0> ;
  assign data_o[78] = \<const0> ;
  assign data_o[77] = \<const1> ;
  assign data_o[76] = \<const0> ;
  assign data_o[75] = \<const0> ;
  assign data_o[74] = \<const0> ;
  assign data_o[73] = \<const0> ;
  assign data_o[72] = \<const0> ;
  assign data_o[71] = \<const0> ;
  assign data_o[70:64] = keyboard_ASCII;
  assign data_o[63] = \<const0> ;
  assign data_o[62] = \<const0> ;
  assign data_o[61] = \<const1> ;
  assign data_o[60] = \<const0> ;
  assign data_o[59] = \<const0> ;
  assign data_o[58] = \<const0> ;
  assign data_o[57] = \<const0> ;
  assign data_o[56] = \<const0> ;
  assign data_o[55] = \<const0> ;
  assign data_o[54] = \<const0> ;
  assign data_o[53] = \<const1> ;
  assign data_o[52] = \<const0> ;
  assign data_o[51] = \<const0> ;
  assign data_o[50] = \<const0> ;
  assign data_o[49] = \<const0> ;
  assign data_o[48] = \<const0> ;
  assign data_o[47] = \<const0> ;
  assign data_o[46] = \<const0> ;
  assign data_o[45] = \<const1> ;
  assign data_o[44] = \<const0> ;
  assign data_o[43] = \<const0> ;
  assign data_o[42] = \<const0> ;
  assign data_o[41] = \<const0> ;
  assign data_o[40] = \<const0> ;
  assign data_o[39] = \<const0> ;
  assign data_o[38] = \<const0> ;
  assign data_o[37] = \<const1> ;
  assign data_o[36] = \<const0> ;
  assign data_o[35] = \<const0> ;
  assign data_o[34] = \<const0> ;
  assign data_o[33] = \<const0> ;
  assign data_o[32] = \<const0> ;
  assign data_o[31] = \<const0> ;
  assign data_o[30] = \<const0> ;
  assign data_o[29] = \<const1> ;
  assign data_o[28] = \<const0> ;
  assign data_o[27] = \<const0> ;
  assign data_o[26] = \<const0> ;
  assign data_o[25] = \<const0> ;
  assign data_o[24] = \<const0> ;
  assign data_o[23] = \<const0> ;
  assign data_o[22] = \<const0> ;
  assign data_o[21] = \<const1> ;
  assign data_o[20] = \<const0> ;
  assign data_o[19] = \<const0> ;
  assign data_o[18] = \<const0> ;
  assign data_o[17] = \<const0> ;
  assign data_o[16] = \<const0> ;
  assign data_o[15] = \<const0> ;
  assign data_o[14] = \<const0> ;
  assign data_o[13] = \<const1> ;
  assign data_o[12] = \<const0> ;
  assign data_o[11] = \<const0> ;
  assign data_o[10] = \<const0> ;
  assign data_o[9] = \<const0> ;
  assign data_o[8] = \<const0> ;
  assign data_o[7] = \<const0> ;
  assign data_o[6] = \<const0> ;
  assign data_o[5] = \<const1> ;
  assign data_o[4] = \<const0> ;
  assign data_o[3] = \<const0> ;
  assign data_o[2] = \<const0> ;
  assign data_o[1] = \<const0> ;
  assign data_o[0] = \<const0> ;
  assign selectMode[3] = \<const0> ;
  assign selectMode[2] = \<const0> ;
  assign selectMode[1] = \<const0> ;
  assign selectMode[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  LUT1 #(
    .INIT(2'h1)) 
    reset_n_INST_0
       (.I0(reset),
        .O(reset_n));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
