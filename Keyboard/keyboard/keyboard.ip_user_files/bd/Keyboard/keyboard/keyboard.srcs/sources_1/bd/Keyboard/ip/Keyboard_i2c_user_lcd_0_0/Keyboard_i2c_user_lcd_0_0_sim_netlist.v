// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.1 (lin64) Build 2552052 Fri May 24 14:47:09 MDT 2019
// Date        : Thu Mar 10 17:18:27 2022
// Host        : fedora running 64-bit Fedora release 35 (Thirty Five)
// Command     : write_verilog -force -mode funcsim
//               /home/spixy/Documents/College/EE316/EE316P4/Keyboard/keyboard/keyboard.srcs/sources_1/bd/Keyboard/ip/Keyboard_i2c_user_lcd_0_0/Keyboard_i2c_user_lcd_0_0_sim_netlist.v
// Design      : Keyboard_i2c_user_lcd_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "Keyboard_i2c_user_lcd_0_0,i2c_user_lcd,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "module_ref" *) 
(* x_core_info = "i2c_user_lcd,Vivado 2019.1" *) 
(* NotValidForBitStream *)
module Keyboard_i2c_user_lcd_0_0
   (clk_i,
    reset_n,
    selectMode,
    clockOutput,
    data_i,
    sda,
    scl);
  input clk_i;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 reset_n RST" *) (* x_interface_parameter = "XIL_INTERFACENAME reset_n, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input reset_n;
  input [3:0]selectMode;
  input clockOutput;
  input [127:0]data_i;
  inout sda;
  inout scl;

  wire clk_i;
  wire clockOutput;
  wire [127:0]data_i;
  wire reset_n;
  wire scl;
  wire sda;
  wire [3:0]selectMode;

  Keyboard_i2c_user_lcd_0_0_i2c_user_lcd U0
       (.clk_i(clk_i),
        .clockOutput(clockOutput),
        .data_i(data_i),
        .reset_n(reset_n),
        .scl(scl),
        .sda(sda),
        .selectMode(selectMode[1:0]));
endmodule

(* ORIG_REF_NAME = "i2c_master" *) 
module Keyboard_i2c_user_lcd_0_0_i2c_master
   (reset_n_0,
    \byteSel_reg[5] ,
    sda,
    \lcd_count_reg[1] ,
    \next_state_reg[1] ,
    \lcd_count_reg[1]_0 ,
    \byteSel_reg[4] ,
    reset_n_1,
    scl,
    clk_i,
    \data_tx_reg[6]_0 ,
    data_i,
    selectMode,
    Q,
    \next_state_reg[2] ,
    CO,
    state,
    ena,
    reset_n,
    clockOutput,
    D);
  output reset_n_0;
  output \byteSel_reg[5] ;
  output sda;
  output \lcd_count_reg[1] ;
  output \next_state_reg[1] ;
  output \lcd_count_reg[1]_0 ;
  output \byteSel_reg[4] ;
  output reset_n_1;
  inout scl;
  input clk_i;
  input \data_tx_reg[6]_0 ;
  input [127:0]data_i;
  input [1:0]selectMode;
  input [5:0]Q;
  input \next_state_reg[2] ;
  input [0:0]CO;
  input [2:0]state;
  input ena;
  input reset_n;
  input clockOutput;
  input [1:0]D;

  wire [0:0]CO;
  wire [1:0]D;
  wire \FSM_onehot_state[0]_i_1_n_0 ;
  wire \FSM_onehot_state[1]_i_1_n_0 ;
  wire \FSM_onehot_state[2]_i_1_n_0 ;
  wire \FSM_onehot_state[3]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_1_n_0 ;
  wire \FSM_onehot_state[4]_i_2_n_0 ;
  wire \FSM_onehot_state[5]_i_1_n_0 ;
  wire \FSM_onehot_state[8]_i_2_n_0 ;
  wire \FSM_onehot_state_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_n_0_[1] ;
  wire \FSM_onehot_state_reg_n_0_[2] ;
  wire \FSM_onehot_state_reg_n_0_[3] ;
  wire \FSM_onehot_state_reg_n_0_[4] ;
  wire \FSM_onehot_state_reg_n_0_[5] ;
  wire \FSM_onehot_state_reg_n_0_[8] ;
  wire [5:0]Q;
  wire addr_rw0;
  wire \bit_cnt[0]_i_1_n_0 ;
  wire \bit_cnt[1]_i_1_n_0 ;
  wire \bit_cnt[2]_i_1_n_0 ;
  wire [2:0]bit_cnt__0;
  wire busy1;
  wire busy_i_1_n_0;
  wire busy_i_2_n_0;
  wire busy_i_3_n_0;
  wire \byteSel_reg[4] ;
  wire \byteSel_reg[5] ;
  wire clk_i;
  wire clockOutput;
  wire [11:0]count;
  wire \count[11]_i_2_n_0 ;
  wire \count[11]_i_4_n_0 ;
  wire \count[11]_i_5_n_0 ;
  wire \count[3]_i_3_n_0 ;
  wire \count_reg[11]_i_3_n_1 ;
  wire \count_reg[11]_i_3_n_2 ;
  wire \count_reg[11]_i_3_n_3 ;
  wire \count_reg[3]_i_2_n_0 ;
  wire \count_reg[3]_i_2_n_1 ;
  wire \count_reg[3]_i_2_n_2 ;
  wire \count_reg[3]_i_2_n_3 ;
  wire \count_reg[7]_i_2_n_0 ;
  wire \count_reg[7]_i_2_n_1 ;
  wire \count_reg[7]_i_2_n_2 ;
  wire \count_reg[7]_i_2_n_3 ;
  wire \count_reg_n_0_[0] ;
  wire \count_reg_n_0_[10] ;
  wire \count_reg_n_0_[11] ;
  wire \count_reg_n_0_[1] ;
  wire \count_reg_n_0_[2] ;
  wire \count_reg_n_0_[3] ;
  wire \count_reg_n_0_[4] ;
  wire \count_reg_n_0_[5] ;
  wire \count_reg_n_0_[6] ;
  wire \count_reg_n_0_[7] ;
  wire \count_reg_n_0_[8] ;
  wire \count_reg_n_0_[9] ;
  wire [11:0]data0;
  wire data_clk;
  wire data_clk_i_1_n_0;
  wire data_clk_i_2_n_0;
  wire data_clk_i_3_n_0;
  wire data_clk_i_4_n_0;
  wire data_clk_i_5_n_0;
  wire data_clk_i_6_n_0;
  wire data_clk_i_7_n_0;
  wire data_clk_prev;
  wire data_clk_prev_i_1_n_0;
  wire [127:0]data_i;
  wire [7:0]data_tx;
  wire \data_tx[4]_i_10_n_0 ;
  wire \data_tx[4]_i_11_n_0 ;
  wire \data_tx[4]_i_12_n_0 ;
  wire \data_tx[4]_i_13_n_0 ;
  wire \data_tx[4]_i_14_n_0 ;
  wire \data_tx[4]_i_15_n_0 ;
  wire \data_tx[4]_i_16_n_0 ;
  wire \data_tx[4]_i_17_n_0 ;
  wire \data_tx[4]_i_18_n_0 ;
  wire \data_tx[4]_i_19_n_0 ;
  wire \data_tx[4]_i_20_n_0 ;
  wire \data_tx[4]_i_21_n_0 ;
  wire \data_tx[4]_i_22_n_0 ;
  wire \data_tx[4]_i_23_n_0 ;
  wire \data_tx[4]_i_24_n_0 ;
  wire \data_tx[4]_i_25_n_0 ;
  wire \data_tx[4]_i_26_n_0 ;
  wire \data_tx[4]_i_27_n_0 ;
  wire \data_tx[4]_i_28_n_0 ;
  wire \data_tx[4]_i_29_n_0 ;
  wire \data_tx[4]_i_2_n_0 ;
  wire \data_tx[4]_i_30_n_0 ;
  wire \data_tx[4]_i_31_n_0 ;
  wire \data_tx[4]_i_32_n_0 ;
  wire \data_tx[4]_i_33_n_0 ;
  wire \data_tx[4]_i_34_n_0 ;
  wire \data_tx[4]_i_35_n_0 ;
  wire \data_tx[4]_i_36_n_0 ;
  wire \data_tx[4]_i_37_n_0 ;
  wire \data_tx[4]_i_3_n_0 ;
  wire \data_tx[4]_i_4_n_0 ;
  wire \data_tx[4]_i_5_n_0 ;
  wire \data_tx[4]_i_6_n_0 ;
  wire \data_tx[4]_i_7_n_0 ;
  wire \data_tx[4]_i_8_n_0 ;
  wire \data_tx[4]_i_9_n_0 ;
  wire \data_tx[5]_i_10_n_0 ;
  wire \data_tx[5]_i_11_n_0 ;
  wire \data_tx[5]_i_12_n_0 ;
  wire \data_tx[5]_i_13_n_0 ;
  wire \data_tx[5]_i_14_n_0 ;
  wire \data_tx[5]_i_15_n_0 ;
  wire \data_tx[5]_i_16_n_0 ;
  wire \data_tx[5]_i_17_n_0 ;
  wire \data_tx[5]_i_18_n_0 ;
  wire \data_tx[5]_i_19_n_0 ;
  wire \data_tx[5]_i_20_n_0 ;
  wire \data_tx[5]_i_21_n_0 ;
  wire \data_tx[5]_i_22_n_0 ;
  wire \data_tx[5]_i_23_n_0 ;
  wire \data_tx[5]_i_24_n_0 ;
  wire \data_tx[5]_i_25_n_0 ;
  wire \data_tx[5]_i_26_n_0 ;
  wire \data_tx[5]_i_3_n_0 ;
  wire \data_tx[5]_i_4_n_0 ;
  wire \data_tx[5]_i_5_n_0 ;
  wire \data_tx[5]_i_6_n_0 ;
  wire \data_tx[5]_i_7_n_0 ;
  wire \data_tx[5]_i_8_n_0 ;
  wire \data_tx[5]_i_9_n_0 ;
  wire \data_tx[6]_i_10_n_0 ;
  wire \data_tx[6]_i_11_n_0 ;
  wire \data_tx[6]_i_13_n_0 ;
  wire \data_tx[6]_i_14_n_0 ;
  wire \data_tx[6]_i_15_n_0 ;
  wire \data_tx[6]_i_16_n_0 ;
  wire \data_tx[6]_i_17_n_0 ;
  wire \data_tx[6]_i_18_n_0 ;
  wire \data_tx[6]_i_19_n_0 ;
  wire \data_tx[6]_i_20_n_0 ;
  wire \data_tx[6]_i_21_n_0 ;
  wire \data_tx[6]_i_22_n_0 ;
  wire \data_tx[6]_i_23_n_0 ;
  wire \data_tx[6]_i_24_n_0 ;
  wire \data_tx[6]_i_25_n_0 ;
  wire \data_tx[6]_i_26_n_0 ;
  wire \data_tx[6]_i_27_n_0 ;
  wire \data_tx[6]_i_28_n_0 ;
  wire \data_tx[6]_i_29_n_0 ;
  wire \data_tx[6]_i_30_n_0 ;
  wire \data_tx[6]_i_31_n_0 ;
  wire \data_tx[6]_i_32_n_0 ;
  wire \data_tx[6]_i_33_n_0 ;
  wire \data_tx[6]_i_34_n_0 ;
  wire \data_tx[6]_i_35_n_0 ;
  wire \data_tx[6]_i_36_n_0 ;
  wire \data_tx[6]_i_37_n_0 ;
  wire \data_tx[6]_i_38_n_0 ;
  wire \data_tx[6]_i_39_n_0 ;
  wire \data_tx[6]_i_3_n_0 ;
  wire \data_tx[6]_i_40_n_0 ;
  wire \data_tx[6]_i_41_n_0 ;
  wire \data_tx[6]_i_42_n_0 ;
  wire \data_tx[6]_i_43_n_0 ;
  wire \data_tx[6]_i_44_n_0 ;
  wire \data_tx[6]_i_4_n_0 ;
  wire \data_tx[6]_i_6_n_0 ;
  wire \data_tx[6]_i_7_n_0 ;
  wire \data_tx[7]_i_10_n_0 ;
  wire \data_tx[7]_i_11_n_0 ;
  wire \data_tx[7]_i_12_n_0 ;
  wire \data_tx[7]_i_13_n_0 ;
  wire \data_tx[7]_i_14_n_0 ;
  wire \data_tx[7]_i_15_n_0 ;
  wire \data_tx[7]_i_16_n_0 ;
  wire \data_tx[7]_i_17_n_0 ;
  wire \data_tx[7]_i_18_n_0 ;
  wire \data_tx[7]_i_19_n_0 ;
  wire \data_tx[7]_i_20_n_0 ;
  wire \data_tx[7]_i_21_n_0 ;
  wire \data_tx[7]_i_22_n_0 ;
  wire \data_tx[7]_i_23_n_0 ;
  wire \data_tx[7]_i_24_n_0 ;
  wire \data_tx[7]_i_25_n_0 ;
  wire \data_tx[7]_i_26_n_0 ;
  wire \data_tx[7]_i_27_n_0 ;
  wire \data_tx[7]_i_28_n_0 ;
  wire \data_tx[7]_i_29_n_0 ;
  wire \data_tx[7]_i_30_n_0 ;
  wire \data_tx[7]_i_31_n_0 ;
  wire \data_tx[7]_i_32_n_0 ;
  wire \data_tx[7]_i_33_n_0 ;
  wire \data_tx[7]_i_34_n_0 ;
  wire \data_tx[7]_i_35_n_0 ;
  wire \data_tx[7]_i_36_n_0 ;
  wire \data_tx[7]_i_37_n_0 ;
  wire \data_tx[7]_i_38_n_0 ;
  wire \data_tx[7]_i_39_n_0 ;
  wire \data_tx[7]_i_3_n_0 ;
  wire \data_tx[7]_i_40_n_0 ;
  wire \data_tx[7]_i_41_n_0 ;
  wire \data_tx[7]_i_42_n_0 ;
  wire \data_tx[7]_i_43_n_0 ;
  wire \data_tx[7]_i_44_n_0 ;
  wire \data_tx[7]_i_45_n_0 ;
  wire \data_tx[7]_i_4_n_0 ;
  wire \data_tx[7]_i_5_n_0 ;
  wire \data_tx[7]_i_6_n_0 ;
  wire \data_tx[7]_i_7_n_0 ;
  wire \data_tx[7]_i_8_n_0 ;
  wire \data_tx[7]_i_9_n_0 ;
  wire \data_tx_reg[5]_i_2_n_0 ;
  wire \data_tx_reg[6]_0 ;
  wire \data_tx_reg[6]_i_12_n_0 ;
  wire \data_tx_reg[6]_i_2_n_0 ;
  wire \data_tx_reg[6]_i_5_n_0 ;
  wire \data_tx_reg[6]_i_8_n_0 ;
  wire \data_tx_reg[6]_i_9_n_0 ;
  wire [7:4]data_wr;
  wire ena;
  wire i2c_busy;
  wire \lcd_count_reg[1] ;
  wire \lcd_count_reg[1]_0 ;
  wire \next_state_reg[1] ;
  wire \next_state_reg[2] ;
  wire p_2_in;
  wire reset_n;
  wire reset_n_0;
  wire reset_n_1;
  wire scl;
  wire scl_clk;
  wire scl_clk_i_1_n_0;
  wire scl_clk_i_2_n_0;
  wire scl_clk_i_3_n_0;
  wire scl_clk_i_4_n_0;
  wire scl_ena_i_1_n_0;
  wire scl_ena_reg_n_0;
  wire scl_reg0;
  wire sda;
  wire sda_INST_0_i_2_n_0;
  wire sda_ena_n;
  wire sda_int4_out;
  wire sda_int_i_10_n_0;
  wire sda_int_i_11_n_0;
  wire sda_int_i_12_n_0;
  wire sda_int_i_1_n_0;
  wire sda_int_i_2_n_0;
  wire sda_int_i_3_n_0;
  wire sda_int_i_4_n_0;
  wire sda_int_i_5_n_0;
  wire sda_int_i_7_n_0;
  wire sda_int_i_8_n_0;
  wire sda_int_i_9_n_0;
  wire sda_int_reg_n_0;
  wire [1:0]selectMode;
  wire [2:0]state;
  wire stretch;
  wire stretch_i_1_n_0;
  wire stretch_i_2_n_0;
  wire stretch_i_3_n_0;
  wire stretch_i_4_n_0;
  wire stretch_i_5_n_0;
  wire stretch_i_6_n_0;
  wire [3:3]\NLW_count_reg[11]_i_3_CO_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hBA)) 
    \FSM_onehot_state[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[8] ),
        .I1(ena),
        .I2(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_state[1]_i_1 
       (.I0(ena),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .O(\FSM_onehot_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'hFFFEAAAA)) 
    \FSM_onehot_state[2]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(bit_cnt__0[0]),
        .I2(bit_cnt__0[1]),
        .I3(bit_cnt__0[2]),
        .I4(\FSM_onehot_state_reg_n_0_[2] ),
        .O(\FSM_onehot_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \FSM_onehot_state[3]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[2] ),
        .I1(bit_cnt__0[2]),
        .I2(bit_cnt__0[1]),
        .I3(bit_cnt__0[0]),
        .O(\FSM_onehot_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFFFF444)) 
    \FSM_onehot_state[4]_i_1 
       (.I0(\FSM_onehot_state[4]_i_2_n_0 ),
        .I1(\FSM_onehot_state_reg_n_0_[4] ),
        .I2(ena),
        .I3(\FSM_onehot_state_reg_n_0_[5] ),
        .I4(\FSM_onehot_state_reg_n_0_[3] ),
        .O(\FSM_onehot_state[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \FSM_onehot_state[4]_i_2 
       (.I0(bit_cnt__0[0]),
        .I1(bit_cnt__0[1]),
        .I2(bit_cnt__0[2]),
        .O(\FSM_onehot_state[4]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    \FSM_onehot_state[5]_i_1 
       (.I0(bit_cnt__0[2]),
        .I1(bit_cnt__0[1]),
        .I2(bit_cnt__0[0]),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .O(\FSM_onehot_state[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_state[8]_i_1 
       (.I0(data_clk),
        .I1(data_clk_prev),
        .O(busy1));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h4)) 
    \FSM_onehot_state[8]_i_2 
       (.I0(ena),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(\FSM_onehot_state[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_state[8]_i_3 
       (.I0(reset_n),
        .O(reset_n_0));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg[0] 
       (.C(clk_i),
        .CE(busy1),
        .D(\FSM_onehot_state[0]_i_1_n_0 ),
        .PRE(reset_n_0),
        .Q(\FSM_onehot_state_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[1] 
       (.C(clk_i),
        .CE(busy1),
        .CLR(reset_n_0),
        .D(\FSM_onehot_state[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[2] 
       (.C(clk_i),
        .CE(busy1),
        .CLR(reset_n_0),
        .D(\FSM_onehot_state[2]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[2] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[3] 
       (.C(clk_i),
        .CE(busy1),
        .CLR(reset_n_0),
        .D(\FSM_onehot_state[3]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[3] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[4] 
       (.C(clk_i),
        .CE(busy1),
        .CLR(reset_n_0),
        .D(\FSM_onehot_state[4]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[4] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[5] 
       (.C(clk_i),
        .CE(busy1),
        .CLR(reset_n_0),
        .D(\FSM_onehot_state[5]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[5] ));
  (* FSM_ENCODED_STATES = "slv_ack1:000001000,wr:000010000,command:000000100,start:000000010,ready:000000001,mstr_ack:010000000,slv_ack2:000100000,stop:100000000,rd:001000000" *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg[8] 
       (.C(clk_i),
        .CE(busy1),
        .CLR(reset_n_0),
        .D(\FSM_onehot_state[8]_i_2_n_0 ),
        .Q(\FSM_onehot_state_reg_n_0_[8] ));
  LUT5 #(
    .INIT(32'hFF1F00E0)) 
    \bit_cnt[0]_i_1 
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(data_clk),
        .I3(data_clk_prev),
        .I4(bit_cnt__0[0]),
        .O(\bit_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFFF10101000)) 
    \bit_cnt[1]_i_1 
       (.I0(bit_cnt__0[0]),
        .I1(data_clk_prev),
        .I2(data_clk),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(bit_cnt__0[1]),
        .O(\bit_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEFEFEFFF10101000)) 
    \bit_cnt[2]_i_1 
       (.I0(bit_cnt__0[1]),
        .I1(bit_cnt__0[0]),
        .I2(busy1),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(\FSM_onehot_state_reg_n_0_[4] ),
        .I5(bit_cnt__0[2]),
        .O(\bit_cnt[2]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\bit_cnt[0]_i_1_n_0 ),
        .PRE(reset_n_0),
        .Q(bit_cnt__0[0]));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\bit_cnt[1]_i_1_n_0 ),
        .PRE(reset_n_0),
        .Q(bit_cnt__0[1]));
  FDPE #(
    .INIT(1'b1)) 
    \bit_cnt_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\bit_cnt[2]_i_1_n_0 ),
        .PRE(reset_n_0),
        .Q(bit_cnt__0[2]));
  LUT6 #(
    .INIT(64'hFFFFEAFF0000EA00)) 
    busy_i_1
       (.I0(busy_i_2_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(ena),
        .I3(busy1),
        .I4(busy_i_3_n_0),
        .I5(i2c_busy),
        .O(busy_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    busy_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[3] ),
        .I1(\FSM_onehot_state_reg_n_0_[2] ),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(busy_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100010001)) 
    busy_i_3
       (.I0(\FSM_onehot_state_reg_n_0_[4] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[1] ),
        .I3(\FSM_onehot_state_reg_n_0_[8] ),
        .I4(\FSM_onehot_state_reg_n_0_[5] ),
        .I5(ena),
        .O(busy_i_3_n_0));
  FDPE busy_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(busy_i_1_n_0),
        .PRE(reset_n_0),
        .Q(i2c_busy));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[0]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[0]),
        .O(count[0]));
  LUT2 #(
    .INIT(4'h8)) 
    \count[10]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[10]),
        .O(count[10]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[11]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[11]),
        .O(count[11]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    \count[11]_i_2 
       (.I0(\count[11]_i_4_n_0 ),
        .I1(\count_reg_n_0_[5] ),
        .I2(\count_reg_n_0_[4] ),
        .I3(\count_reg_n_0_[7] ),
        .I4(\count_reg_n_0_[6] ),
        .I5(\count[11]_i_5_n_0 ),
        .O(\count[11]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \count[11]_i_4 
       (.I0(\count_reg_n_0_[8] ),
        .I1(\count_reg_n_0_[9] ),
        .I2(\count_reg_n_0_[11] ),
        .I3(\count_reg_n_0_[10] ),
        .O(\count[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \count[11]_i_5 
       (.I0(\count_reg_n_0_[1] ),
        .I1(\count_reg_n_0_[0] ),
        .I2(\count_reg_n_0_[3] ),
        .I3(\count_reg_n_0_[2] ),
        .O(\count[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[1]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[1]),
        .O(count[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[2]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[2]),
        .O(count[2]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[3]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[3]),
        .O(count[3]));
  LUT2 #(
    .INIT(4'h9)) 
    \count[3]_i_3 
       (.I0(\count_reg_n_0_[0] ),
        .I1(stretch),
        .O(\count[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[4]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[4]),
        .O(count[4]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[5]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[5]),
        .O(count[5]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[6]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[6]),
        .O(count[6]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[7]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[7]),
        .O(count[7]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[8]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[8]),
        .O(count[8]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count[9]_i_1 
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[9]),
        .O(count[9]));
  FDCE \count_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[0]),
        .Q(\count_reg_n_0_[0] ));
  FDCE \count_reg[10] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[10]),
        .Q(\count_reg_n_0_[10] ));
  FDCE \count_reg[11] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[11]),
        .Q(\count_reg_n_0_[11] ));
  CARRY4 \count_reg[11]_i_3 
       (.CI(\count_reg[7]_i_2_n_0 ),
        .CO({\NLW_count_reg[11]_i_3_CO_UNCONNECTED [3],\count_reg[11]_i_3_n_1 ,\count_reg[11]_i_3_n_2 ,\count_reg[11]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[11:8]),
        .S({\count_reg_n_0_[11] ,\count_reg_n_0_[10] ,\count_reg_n_0_[9] ,\count_reg_n_0_[8] }));
  FDCE \count_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[1]),
        .Q(\count_reg_n_0_[1] ));
  FDCE \count_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[2]),
        .Q(\count_reg_n_0_[2] ));
  FDCE \count_reg[3] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[3]),
        .Q(\count_reg_n_0_[3] ));
  CARRY4 \count_reg[3]_i_2 
       (.CI(1'b0),
        .CO({\count_reg[3]_i_2_n_0 ,\count_reg[3]_i_2_n_1 ,\count_reg[3]_i_2_n_2 ,\count_reg[3]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\count_reg_n_0_[0] }),
        .O(data0[3:0]),
        .S({\count_reg_n_0_[3] ,\count_reg_n_0_[2] ,\count_reg_n_0_[1] ,\count[3]_i_3_n_0 }));
  FDCE \count_reg[4] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[4]),
        .Q(\count_reg_n_0_[4] ));
  FDCE \count_reg[5] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[5]),
        .Q(\count_reg_n_0_[5] ));
  FDCE \count_reg[6] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[6]),
        .Q(\count_reg_n_0_[6] ));
  FDCE \count_reg[7] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[7]),
        .Q(\count_reg_n_0_[7] ));
  CARRY4 \count_reg[7]_i_2 
       (.CI(\count_reg[3]_i_2_n_0 ),
        .CO({\count_reg[7]_i_2_n_0 ,\count_reg[7]_i_2_n_1 ,\count_reg[7]_i_2_n_2 ,\count_reg[7]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[7:4]),
        .S({\count_reg_n_0_[7] ,\count_reg_n_0_[6] ,\count_reg_n_0_[5] ,\count_reg_n_0_[4] }));
  FDCE \count_reg[8] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[8]),
        .Q(\count_reg_n_0_[8] ));
  FDCE \count_reg[9] 
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(count[9]),
        .Q(\count_reg_n_0_[9] ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hEFE0)) 
    data_clk_i_1
       (.I0(data_clk_i_2_n_0),
        .I1(data_clk_i_3_n_0),
        .I2(reset_n),
        .I3(data_clk),
        .O(data_clk_i_1_n_0));
  LUT6 #(
    .INIT(64'hAFFF0000AAEA0000)) 
    data_clk_i_2
       (.I0(data_clk_i_4_n_0),
        .I1(data0[7]),
        .I2(data0[9]),
        .I3(data0[8]),
        .I4(data_clk_i_5_n_0),
        .I5(data0[10]),
        .O(data_clk_i_2_n_0));
  LUT6 #(
    .INIT(64'h0080008080800080)) 
    data_clk_i_3
       (.I0(data0[8]),
        .I1(data0[9]),
        .I2(data_clk_i_5_n_0),
        .I3(data0[10]),
        .I4(stretch_i_5_n_0),
        .I5(data0[7]),
        .O(data_clk_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000800080000000)) 
    data_clk_i_4
       (.I0(data_clk_i_6_n_0),
        .I1(data0[6]),
        .I2(data0[5]),
        .I3(data0[4]),
        .I4(data0[0]),
        .I5(data_clk_i_7_n_0),
        .O(data_clk_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data_clk_i_5
       (.I0(\count[11]_i_2_n_0 ),
        .I1(data0[11]),
        .O(data_clk_i_5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h2)) 
    data_clk_i_6
       (.I0(data0[9]),
        .I1(data0[8]),
        .O(data_clk_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    data_clk_i_7
       (.I0(data0[3]),
        .I1(data0[2]),
        .I2(data0[1]),
        .O(data_clk_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    data_clk_prev_i_1
       (.I0(data_clk),
        .I1(reset_n),
        .I2(data_clk_prev),
        .O(data_clk_prev_i_1_n_0));
  FDRE data_clk_prev_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(data_clk_prev_i_1_n_0),
        .Q(data_clk_prev),
        .R(1'b0));
  FDRE data_clk_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(data_clk_i_1_n_0),
        .Q(data_clk),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \data_tx[4]_i_1 
       (.I0(\data_tx[4]_i_2_n_0 ),
        .O(data_wr[4]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h4F7F)) 
    \data_tx[4]_i_10 
       (.I0(\data_tx[7]_i_26_n_0 ),
        .I1(\data_tx[7]_i_9_n_0 ),
        .I2(clockOutput),
        .I3(\data_tx[7]_i_21_n_0 ),
        .O(\data_tx[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[4]_i_11 
       (.I0(\data_tx[4]_i_29_n_0 ),
        .I1(\data_tx[4]_i_30_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[4]_i_31_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[4]_i_32_n_0 ),
        .O(\data_tx[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFCFFFCF5FC05FCF)) 
    \data_tx[4]_i_12 
       (.I0(data_i[8]),
        .I1(\data_tx[4]_i_33_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[7]_i_26_n_0 ),
        .I4(data_i[0]),
        .I5(\data_tx[7]_i_37_n_0 ),
        .O(\data_tx[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h0300000002000200)) 
    \data_tx[4]_i_13 
       (.I0(data_i[116]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .I3(\data_tx[7]_i_21_n_0 ),
        .I4(data_i[108]),
        .I5(\data_tx[7]_i_26_n_0 ),
        .O(\data_tx[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h4444005144440040)) 
    \data_tx[4]_i_14 
       (.I0(\data_tx[7]_i_21_n_0 ),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(data_i[92]),
        .I3(selectMode[1]),
        .I4(selectMode[0]),
        .I5(data_i[100]),
        .O(\data_tx[4]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[4]_i_15 
       (.I0(\data_tx[4]_i_34_n_0 ),
        .I1(\data_tx[4]_i_35_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[4]_i_36_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[4]_i_37_n_0 ),
        .O(\data_tx[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'h00FFFFFFFFEFFFFF)) 
    \data_tx[4]_i_16 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[124]),
        .I3(\data_tx[7]_i_21_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[7]_i_9_n_0 ),
        .O(\data_tx[4]_i_16_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h4F)) 
    \data_tx[4]_i_17 
       (.I0(\data_tx[7]_i_26_n_0 ),
        .I1(\data_tx[7]_i_21_n_0 ),
        .I2(clockOutput),
        .O(\data_tx[4]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'h000000000303CEC2)) 
    \data_tx[4]_i_18 
       (.I0(data_i[36]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[1]),
        .I3(data_i[28]),
        .I4(selectMode[0]),
        .I5(\data_tx[7]_i_21_n_0 ),
        .O(\data_tx[4]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hA008000AA0080000)) 
    \data_tx[4]_i_19 
       (.I0(\data_tx[7]_i_21_n_0 ),
        .I1(data_i[44]),
        .I2(selectMode[1]),
        .I3(selectMode[0]),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(data_i[52]),
        .O(\data_tx[4]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[4]_i_2 
       (.I0(\data_tx[4]_i_3_n_0 ),
        .I1(\data_tx[4]_i_4_n_0 ),
        .I2(\data_tx_reg[6]_0 ),
        .I3(\data_tx[4]_i_5_n_0 ),
        .I4(\byteSel_reg[5] ),
        .I5(\data_tx[4]_i_6_n_0 ),
        .O(\data_tx[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5F5FFFFF303F)) 
    \data_tx[4]_i_20 
       (.I0(data_i[12]),
        .I1(data_i[20]),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(data_i[4]),
        .I4(\data_tx[7]_i_37_n_0 ),
        .I5(\data_tx[7]_i_26_n_0 ),
        .O(\data_tx[4]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[4]_i_21 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[104]),
        .O(\data_tx[4]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[4]_i_22 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[112]),
        .O(\data_tx[4]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[4]_i_23 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[88]),
        .O(\data_tx[4]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[4]_i_24 
       (.I0(selectMode[0]),
        .I1(data_i[96]),
        .I2(selectMode[1]),
        .O(\data_tx[4]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[4]_i_25 
       (.I0(selectMode[1]),
        .I1(data_i[72]),
        .I2(selectMode[0]),
        .O(\data_tx[4]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \data_tx[4]_i_26 
       (.I0(data_i[80]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .O(\data_tx[4]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[4]_i_27 
       (.I0(selectMode[0]),
        .I1(data_i[56]),
        .I2(selectMode[1]),
        .O(\data_tx[4]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[4]_i_28 
       (.I0(selectMode[0]),
        .I1(data_i[64]),
        .I2(selectMode[1]),
        .O(\data_tx[4]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \data_tx[4]_i_29 
       (.I0(selectMode[0]),
        .I1(selectMode[1]),
        .I2(data_i[40]),
        .O(\data_tx[4]_i_29_n_0 ));
  LUT5 #(
    .INIT(32'hAFCFAFC0)) 
    \data_tx[4]_i_3 
       (.I0(\data_tx[4]_i_7_n_0 ),
        .I1(\data_tx[4]_i_8_n_0 ),
        .I2(\byteSel_reg[4] ),
        .I3(\data_tx[7]_i_9_n_0 ),
        .I4(\data_tx[4]_i_9_n_0 ),
        .O(\data_tx[4]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \data_tx[4]_i_30 
       (.I0(selectMode[0]),
        .I1(selectMode[1]),
        .I2(data_i[48]),
        .O(\data_tx[4]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[4]_i_31 
       (.I0(selectMode[1]),
        .I1(data_i[24]),
        .I2(selectMode[0]),
        .O(\data_tx[4]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \data_tx[4]_i_32 
       (.I0(data_i[32]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .O(\data_tx[4]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[4]_i_33 
       (.I0(selectMode[0]),
        .I1(data_i[16]),
        .I2(selectMode[1]),
        .O(\data_tx[4]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \data_tx[4]_i_34 
       (.I0(selectMode[0]),
        .I1(selectMode[1]),
        .I2(data_i[76]),
        .O(\data_tx[4]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[4]_i_35 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[84]),
        .O(\data_tx[4]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[4]_i_36 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[60]),
        .O(\data_tx[4]_i_36_n_0 ));
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[4]_i_37 
       (.I0(selectMode[1]),
        .I1(data_i[68]),
        .I2(selectMode[0]),
        .O(\data_tx[4]_i_37_n_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \data_tx[4]_i_4 
       (.I0(\data_tx[4]_i_10_n_0 ),
        .I1(\byteSel_reg[4] ),
        .I2(\data_tx[4]_i_11_n_0 ),
        .I3(\data_tx[7]_i_9_n_0 ),
        .I4(\data_tx[4]_i_12_n_0 ),
        .O(\data_tx[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h1F10FFFF1F100000)) 
    \data_tx[4]_i_5 
       (.I0(\data_tx[4]_i_13_n_0 ),
        .I1(\data_tx[4]_i_14_n_0 ),
        .I2(\data_tx[7]_i_9_n_0 ),
        .I3(\data_tx[4]_i_15_n_0 ),
        .I4(\byteSel_reg[4] ),
        .I5(\data_tx[4]_i_16_n_0 ),
        .O(\data_tx[4]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hCCCFBBBBCCCF8888)) 
    \data_tx[4]_i_6 
       (.I0(\data_tx[4]_i_17_n_0 ),
        .I1(\byteSel_reg[4] ),
        .I2(\data_tx[4]_i_18_n_0 ),
        .I3(\data_tx[4]_i_19_n_0 ),
        .I4(\data_tx[7]_i_9_n_0 ),
        .I5(\data_tx[4]_i_20_n_0 ),
        .O(\data_tx[4]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[4]_i_7 
       (.I0(\data_tx[4]_i_21_n_0 ),
        .I1(\data_tx[4]_i_22_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[4]_i_23_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[4]_i_24_n_0 ),
        .O(\data_tx[4]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[4]_i_8 
       (.I0(\data_tx[4]_i_25_n_0 ),
        .I1(\data_tx[4]_i_26_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[4]_i_27_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[4]_i_28_n_0 ),
        .O(\data_tx[4]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'h00FFFD00)) 
    \data_tx[4]_i_9 
       (.I0(data_i[120]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .I3(\data_tx[7]_i_26_n_0 ),
        .I4(\data_tx[7]_i_21_n_0 ),
        .O(\data_tx[4]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_tx[5]_i_1 
       (.I0(\data_tx_reg[5]_i_2_n_0 ),
        .O(data_wr[5]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT4 #(
    .INIT(16'h3FF7)) 
    \data_tx[5]_i_10 
       (.I0(\data_tx[7]_i_21_n_0 ),
        .I1(clockOutput),
        .I2(\data_tx[7]_i_26_n_0 ),
        .I3(\data_tx[7]_i_9_n_0 ),
        .O(\data_tx[5]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_tx[5]_i_11 
       (.I0(\data_tx[5]_i_24_n_0 ),
        .I1(\data_tx[7]_i_21_n_0 ),
        .I2(\data_tx[5]_i_25_n_0 ),
        .I3(\data_tx[7]_i_9_n_0 ),
        .I4(\data_tx[5]_i_26_n_0 ),
        .O(\data_tx[5]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'h00000407)) 
    \data_tx[5]_i_12 
       (.I0(data_i[109]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[1]),
        .I3(data_i[117]),
        .I4(selectMode[0]),
        .O(\data_tx[5]_i_12_n_0 ));
  LUT5 #(
    .INIT(32'hFFF300F5)) 
    \data_tx[5]_i_13 
       (.I0(data_i[101]),
        .I1(data_i[93]),
        .I2(selectMode[1]),
        .I3(selectMode[0]),
        .I4(\data_tx[7]_i_26_n_0 ),
        .O(\data_tx[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDFFFFFFFDFF)) 
    \data_tx[5]_i_14 
       (.I0(\data_tx[7]_i_21_n_0 ),
        .I1(selectMode[0]),
        .I2(selectMode[1]),
        .I3(data_i[85]),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(data_i[77]),
        .O(\data_tx[5]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'h0F340F37)) 
    \data_tx[5]_i_15 
       (.I0(data_i[61]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[0]),
        .I3(selectMode[1]),
        .I4(data_i[69]),
        .O(\data_tx[5]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h33CC0047)) 
    \data_tx[5]_i_16 
       (.I0(data_i[45]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(data_i[53]),
        .I3(selectMode[1]),
        .I4(selectMode[0]),
        .O(\data_tx[5]_i_16_n_0 ));
  LUT5 #(
    .INIT(32'h03040307)) 
    \data_tx[5]_i_17 
       (.I0(data_i[29]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[0]),
        .I3(selectMode[1]),
        .I4(data_i[37]),
        .O(\data_tx[5]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'h00000407)) 
    \data_tx[5]_i_18 
       (.I0(data_i[13]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[1]),
        .I3(data_i[21]),
        .I4(selectMode[0]),
        .O(\data_tx[5]_i_18_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'hAAAB)) 
    \data_tx[5]_i_19 
       (.I0(\data_tx[7]_i_26_n_0 ),
        .I1(selectMode[0]),
        .I2(selectMode[1]),
        .I3(data_i[5]),
        .O(\data_tx[5]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000E200)) 
    \data_tx[5]_i_20 
       (.I0(data_i[113]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(data_i[105]),
        .I3(\data_tx[7]_i_21_n_0 ),
        .I4(selectMode[0]),
        .I5(selectMode[1]),
        .O(\data_tx[5]_i_20_n_0 ));
  LUT5 #(
    .INIT(32'hFF34FF37)) 
    \data_tx[5]_i_21 
       (.I0(data_i[89]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[1]),
        .I3(selectMode[0]),
        .I4(data_i[97]),
        .O(\data_tx[5]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hCFF4CFF7)) 
    \data_tx[5]_i_22 
       (.I0(data_i[73]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[0]),
        .I3(selectMode[1]),
        .I4(data_i[81]),
        .O(\data_tx[5]_i_22_n_0 ));
  LUT5 #(
    .INIT(32'hF0F0F4F7)) 
    \data_tx[5]_i_23 
       (.I0(data_i[57]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[0]),
        .I3(data_i[65]),
        .I4(selectMode[1]),
        .O(\data_tx[5]_i_23_n_0 ));
  LUT5 #(
    .INIT(32'h3FF43FF7)) 
    \data_tx[5]_i_24 
       (.I0(data_i[41]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[1]),
        .I3(selectMode[0]),
        .I4(data_i[49]),
        .O(\data_tx[5]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hFF34FF37)) 
    \data_tx[5]_i_25 
       (.I0(data_i[25]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[1]),
        .I3(selectMode[0]),
        .I4(data_i[33]),
        .O(\data_tx[5]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5F5FFFFF303F)) 
    \data_tx[5]_i_26 
       (.I0(data_i[9]),
        .I1(data_i[17]),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(data_i[1]),
        .I4(\data_tx[7]_i_37_n_0 ),
        .I5(\data_tx[7]_i_26_n_0 ),
        .O(\data_tx[5]_i_26_n_0 ));
  LUT6 #(
    .INIT(64'hA0AFCFCFA0AFC0C0)) 
    \data_tx[5]_i_3 
       (.I0(\data_tx[5]_i_5_n_0 ),
        .I1(\data_tx[5]_i_6_n_0 ),
        .I2(\byteSel_reg[5] ),
        .I3(\data_tx[6]_i_7_n_0 ),
        .I4(\byteSel_reg[4] ),
        .I5(\data_tx[5]_i_7_n_0 ),
        .O(\data_tx[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[5]_i_4 
       (.I0(\data_tx[5]_i_8_n_0 ),
        .I1(\data_tx[5]_i_9_n_0 ),
        .I2(\byteSel_reg[5] ),
        .I3(\data_tx[5]_i_10_n_0 ),
        .I4(\byteSel_reg[4] ),
        .I5(\data_tx[5]_i_11_n_0 ),
        .O(\data_tx[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0AFA0CFC0C0C0)) 
    \data_tx[5]_i_5 
       (.I0(\data_tx[5]_i_12_n_0 ),
        .I1(\data_tx[5]_i_13_n_0 ),
        .I2(\data_tx[7]_i_9_n_0 ),
        .I3(\data_tx[5]_i_14_n_0 ),
        .I4(\data_tx[5]_i_15_n_0 ),
        .I5(\data_tx[7]_i_21_n_0 ),
        .O(\data_tx[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000FF00FF01FFFF)) 
    \data_tx[5]_i_6 
       (.I0(data_i[125]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .I3(\data_tx[7]_i_21_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[7]_i_9_n_0 ),
        .O(\data_tx[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[5]_i_7 
       (.I0(\data_tx[5]_i_16_n_0 ),
        .I1(\data_tx[5]_i_17_n_0 ),
        .I2(\data_tx[7]_i_9_n_0 ),
        .I3(\data_tx[5]_i_18_n_0 ),
        .I4(\data_tx[7]_i_21_n_0 ),
        .I5(\data_tx[5]_i_19_n_0 ),
        .O(\data_tx[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h5F504F4F5F504040)) 
    \data_tx[5]_i_8 
       (.I0(\data_tx[5]_i_20_n_0 ),
        .I1(\data_tx[5]_i_21_n_0 ),
        .I2(\data_tx[7]_i_9_n_0 ),
        .I3(\data_tx[5]_i_22_n_0 ),
        .I4(\data_tx[7]_i_21_n_0 ),
        .I5(\data_tx[5]_i_23_n_0 ),
        .O(\data_tx[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFEFAAAAAAAA)) 
    \data_tx[5]_i_9 
       (.I0(\data_tx[7]_i_9_n_0 ),
        .I1(\data_tx[7]_i_21_n_0 ),
        .I2(data_i[121]),
        .I3(selectMode[0]),
        .I4(selectMode[1]),
        .I5(\data_tx[7]_i_26_n_0 ),
        .O(\data_tx[5]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_tx[6]_i_1 
       (.I0(\data_tx_reg[6]_i_2_n_0 ),
        .O(data_wr[6]));
  LUT6 #(
    .INIT(64'hFFFF5555FFFB0000)) 
    \data_tx[6]_i_10 
       (.I0(\data_tx[7]_i_21_n_0 ),
        .I1(data_i[122]),
        .I2(selectMode[1]),
        .I3(selectMode[0]),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[7]_i_9_n_0 ),
        .O(\data_tx[6]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'hB7F3)) 
    \data_tx[6]_i_11 
       (.I0(\data_tx[7]_i_9_n_0 ),
        .I1(clockOutput),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[7]_i_26_n_0 ),
        .O(\data_tx[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[6]_i_13 
       (.I0(\data_tx[6]_i_21_n_0 ),
        .I1(\data_tx[6]_i_22_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[6]_i_23_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[6]_i_24_n_0 ),
        .O(\data_tx[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[6]_i_14 
       (.I0(\data_tx[6]_i_25_n_0 ),
        .I1(\data_tx[6]_i_26_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[6]_i_27_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[6]_i_28_n_0 ),
        .O(\data_tx[6]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF5030F0FF503F)) 
    \data_tx[6]_i_15 
       (.I0(data_i[14]),
        .I1(data_i[22]),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[7]_i_26_n_0 ),
        .I4(\data_tx[7]_i_37_n_0 ),
        .I5(data_i[6]),
        .O(\data_tx[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[6]_i_16 
       (.I0(\data_tx[6]_i_29_n_0 ),
        .I1(\data_tx[6]_i_30_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[6]_i_31_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[6]_i_32_n_0 ),
        .O(\data_tx[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[6]_i_17 
       (.I0(\data_tx[6]_i_33_n_0 ),
        .I1(\data_tx[6]_i_34_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[6]_i_35_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[6]_i_36_n_0 ),
        .O(\data_tx[6]_i_17_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[6]_i_18 
       (.I0(\data_tx[6]_i_37_n_0 ),
        .I1(\data_tx[6]_i_38_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[6]_i_39_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[6]_i_40_n_0 ),
        .O(\data_tx[6]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5F5FFFFF303F)) 
    \data_tx[6]_i_19 
       (.I0(data_i[10]),
        .I1(data_i[18]),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(data_i[2]),
        .I4(\data_tx[7]_i_37_n_0 ),
        .I5(\data_tx[7]_i_26_n_0 ),
        .O(\data_tx[6]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[6]_i_20 
       (.I0(\data_tx[6]_i_41_n_0 ),
        .I1(\data_tx[6]_i_42_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[6]_i_43_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[6]_i_44_n_0 ),
        .O(\data_tx[6]_i_20_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \data_tx[6]_i_21 
       (.I0(data_i[78]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .O(\data_tx[6]_i_21_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \data_tx[6]_i_22 
       (.I0(data_i[86]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .O(\data_tx[6]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[6]_i_23 
       (.I0(selectMode[0]),
        .I1(data_i[62]),
        .I2(selectMode[1]),
        .O(\data_tx[6]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    \data_tx[6]_i_24 
       (.I0(data_i[70]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .O(\data_tx[6]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[6]_i_25 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[110]),
        .O(\data_tx[6]_i_25_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[6]_i_26 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[118]),
        .O(\data_tx[6]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \data_tx[6]_i_27 
       (.I0(data_i[94]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .O(\data_tx[6]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[6]_i_28 
       (.I0(selectMode[0]),
        .I1(data_i[102]),
        .I2(selectMode[1]),
        .O(\data_tx[6]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[6]_i_29 
       (.I0(selectMode[1]),
        .I1(data_i[46]),
        .I2(selectMode[0]),
        .O(\data_tx[6]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[6]_i_3 
       (.I0(\data_tx_reg[6]_i_5_n_0 ),
        .I1(\data_tx[6]_i_6_n_0 ),
        .I2(\byteSel_reg[5] ),
        .I3(\data_tx[6]_i_7_n_0 ),
        .I4(\byteSel_reg[4] ),
        .I5(\data_tx_reg[6]_i_8_n_0 ),
        .O(\data_tx[6]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \data_tx[6]_i_30 
       (.I0(selectMode[0]),
        .I1(selectMode[1]),
        .I2(data_i[54]),
        .O(\data_tx[6]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[6]_i_31 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[30]),
        .O(\data_tx[6]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[6]_i_32 
       (.I0(selectMode[0]),
        .I1(data_i[38]),
        .I2(selectMode[1]),
        .O(\data_tx[6]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \data_tx[6]_i_33 
       (.I0(data_i[74]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .O(\data_tx[6]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h45)) 
    \data_tx[6]_i_34 
       (.I0(selectMode[0]),
        .I1(selectMode[1]),
        .I2(data_i[82]),
        .O(\data_tx[6]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[6]_i_35 
       (.I0(selectMode[0]),
        .I1(data_i[58]),
        .I2(selectMode[1]),
        .O(\data_tx[6]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[6]_i_36 
       (.I0(selectMode[0]),
        .I1(data_i[66]),
        .I2(selectMode[1]),
        .O(\data_tx[6]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[6]_i_37 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[106]),
        .O(\data_tx[6]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[6]_i_38 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[114]),
        .O(\data_tx[6]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    \data_tx[6]_i_39 
       (.I0(data_i[90]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .O(\data_tx[6]_i_39_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[6]_i_4 
       (.I0(\data_tx_reg[6]_i_9_n_0 ),
        .I1(\data_tx[6]_i_10_n_0 ),
        .I2(\byteSel_reg[5] ),
        .I3(\data_tx[6]_i_11_n_0 ),
        .I4(\byteSel_reg[4] ),
        .I5(\data_tx_reg[6]_i_12_n_0 ),
        .O(\data_tx[6]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[6]_i_40 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[98]),
        .O(\data_tx[6]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[6]_i_41 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[42]),
        .O(\data_tx[6]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[6]_i_42 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[50]),
        .O(\data_tx[6]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[6]_i_43 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[26]),
        .O(\data_tx[6]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[6]_i_44 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[34]),
        .O(\data_tx[6]_i_44_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFBFFFF)) 
    \data_tx[6]_i_6 
       (.I0(\data_tx[7]_i_9_n_0 ),
        .I1(data_i[126]),
        .I2(selectMode[0]),
        .I3(selectMode[1]),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[7]_i_21_n_0 ),
        .O(\data_tx[6]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h20FF)) 
    \data_tx[6]_i_7 
       (.I0(\data_tx[7]_i_9_n_0 ),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(clockOutput),
        .O(\data_tx[6]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000A80000000000)) 
    \data_tx[7]_i_1 
       (.I0(ena),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_n_0_[5] ),
        .I3(data_clk),
        .I4(data_clk_prev),
        .I5(reset_n),
        .O(addr_rw0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[7]_i_10 
       (.I0(\data_tx[7]_i_28_n_0 ),
        .I1(\data_tx[7]_i_29_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[7]_i_30_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[7]_i_31_n_0 ),
        .O(\data_tx[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hDDDDDDCD66666666)) 
    \data_tx[7]_i_11 
       (.I0(\data_tx[7]_i_9_n_0 ),
        .I1(\data_tx[7]_i_21_n_0 ),
        .I2(data_i[123]),
        .I3(selectMode[1]),
        .I4(selectMode[0]),
        .I5(\data_tx[7]_i_26_n_0 ),
        .O(\data_tx[7]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \data_tx[7]_i_12 
       (.I0(clockOutput),
        .I1(\data_tx[7]_i_21_n_0 ),
        .I2(\data_tx[7]_i_9_n_0 ),
        .O(\data_tx[7]_i_12_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \data_tx[7]_i_13 
       (.I0(\data_tx[7]_i_26_n_0 ),
        .I1(\data_tx[7]_i_21_n_0 ),
        .I2(clockOutput),
        .I3(\data_tx[7]_i_9_n_0 ),
        .O(\data_tx[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[7]_i_14 
       (.I0(\data_tx[7]_i_32_n_0 ),
        .I1(\data_tx[7]_i_33_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[7]_i_34_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[7]_i_35_n_0 ),
        .O(\data_tx[7]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5F5FCFCFC0CF)) 
    \data_tx[7]_i_15 
       (.I0(data_i[11]),
        .I1(\data_tx[7]_i_36_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(data_i[3]),
        .I4(\data_tx[7]_i_37_n_0 ),
        .I5(\data_tx[7]_i_26_n_0 ),
        .O(\data_tx[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[7]_i_16 
       (.I0(\data_tx[7]_i_38_n_0 ),
        .I1(\data_tx[7]_i_39_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[7]_i_40_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[7]_i_41_n_0 ),
        .O(\data_tx[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[7]_i_17 
       (.I0(\data_tx[7]_i_42_n_0 ),
        .I1(\data_tx[7]_i_43_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[7]_i_44_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[7]_i_45_n_0 ),
        .O(\data_tx[7]_i_17_n_0 ));
  LUT5 #(
    .INIT(32'hFFFBFFFF)) 
    \data_tx[7]_i_18 
       (.I0(\data_tx[7]_i_21_n_0 ),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[1]),
        .I3(selectMode[0]),
        .I4(data_i[127]),
        .O(\data_tx[7]_i_18_n_0 ));
  LUT6 #(
    .INIT(64'hF0FF5030F0FF503F)) 
    \data_tx[7]_i_19 
       (.I0(data_i[15]),
        .I1(data_i[23]),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[7]_i_26_n_0 ),
        .I4(\data_tx[7]_i_37_n_0 ),
        .I5(data_i[7]),
        .O(\data_tx[7]_i_19_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \data_tx[7]_i_2 
       (.I0(\data_tx[7]_i_3_n_0 ),
        .O(data_wr[7]));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \data_tx[7]_i_20 
       (.I0(data_i[31]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[1]),
        .I3(selectMode[0]),
        .I4(data_i[39]),
        .O(\data_tx[7]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'h451311B14446444F)) 
    \data_tx[7]_i_21 
       (.I0(Q[5]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[4]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\data_tx[7]_i_21_n_0 ));
  LUT5 #(
    .INIT(32'hFFF4FFF7)) 
    \data_tx[7]_i_22 
       (.I0(data_i[47]),
        .I1(\data_tx[7]_i_26_n_0 ),
        .I2(selectMode[1]),
        .I3(selectMode[0]),
        .I4(data_i[55]),
        .O(\data_tx[7]_i_22_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_23 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[107]),
        .O(\data_tx[7]_i_23_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_24 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[115]),
        .O(\data_tx[7]_i_24_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[7]_i_25 
       (.I0(selectMode[0]),
        .I1(data_i[91]),
        .I2(selectMode[1]),
        .O(\data_tx[7]_i_25_n_0 ));
  LUT6 #(
    .INIT(64'hBEAAA80BEBFFFD7D)) 
    \data_tx[7]_i_26 
       (.I0(Q[5]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .I4(Q[4]),
        .I5(Q[0]),
        .O(\data_tx[7]_i_26_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_27 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[99]),
        .O(\data_tx[7]_i_27_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hC1)) 
    \data_tx[7]_i_28 
       (.I0(data_i[75]),
        .I1(selectMode[1]),
        .I2(selectMode[0]),
        .O(\data_tx[7]_i_28_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \data_tx[7]_i_29 
       (.I0(selectMode[0]),
        .I1(selectMode[1]),
        .I2(data_i[83]),
        .O(\data_tx[7]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[7]_i_3 
       (.I0(\data_tx[7]_i_4_n_0 ),
        .I1(\data_tx[7]_i_5_n_0 ),
        .I2(\data_tx_reg[6]_0 ),
        .I3(\data_tx[7]_i_6_n_0 ),
        .I4(\byteSel_reg[5] ),
        .I5(\data_tx[7]_i_7_n_0 ),
        .O(\data_tx[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \data_tx[7]_i_30 
       (.I0(selectMode[0]),
        .I1(selectMode[1]),
        .I2(data_i[59]),
        .O(\data_tx[7]_i_30_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[7]_i_31 
       (.I0(selectMode[0]),
        .I1(data_i[67]),
        .I2(selectMode[1]),
        .O(\data_tx[7]_i_31_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[7]_i_32 
       (.I0(selectMode[0]),
        .I1(data_i[43]),
        .I2(selectMode[1]),
        .O(\data_tx[7]_i_32_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[7]_i_33 
       (.I0(selectMode[1]),
        .I1(data_i[51]),
        .I2(selectMode[0]),
        .O(\data_tx[7]_i_33_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[7]_i_34 
       (.I0(selectMode[1]),
        .I1(data_i[27]),
        .I2(selectMode[0]),
        .O(\data_tx[7]_i_34_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h67)) 
    \data_tx[7]_i_35 
       (.I0(selectMode[0]),
        .I1(selectMode[1]),
        .I2(data_i[35]),
        .O(\data_tx[7]_i_35_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT3 #(
    .INIT(8'hAB)) 
    \data_tx[7]_i_36 
       (.I0(selectMode[0]),
        .I1(data_i[19]),
        .I2(selectMode[1]),
        .O(\data_tx[7]_i_36_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \data_tx[7]_i_37 
       (.I0(selectMode[0]),
        .I1(selectMode[1]),
        .O(\data_tx[7]_i_37_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_38 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[111]),
        .O(\data_tx[7]_i_38_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_39 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[119]),
        .O(\data_tx[7]_i_39_n_0 ));
  LUT5 #(
    .INIT(32'hB8FFB800)) 
    \data_tx[7]_i_4 
       (.I0(\data_tx[7]_i_8_n_0 ),
        .I1(\data_tx[7]_i_9_n_0 ),
        .I2(\data_tx[7]_i_10_n_0 ),
        .I3(\byteSel_reg[4] ),
        .I4(\data_tx[7]_i_11_n_0 ),
        .O(\data_tx[7]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_40 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[95]),
        .O(\data_tx[7]_i_40_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_41 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[103]),
        .O(\data_tx[7]_i_41_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_42 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[79]),
        .O(\data_tx[7]_i_42_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_43 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[87]),
        .O(\data_tx[7]_i_43_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_44 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[63]),
        .O(\data_tx[7]_i_44_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hEF)) 
    \data_tx[7]_i_45 
       (.I0(selectMode[1]),
        .I1(selectMode[0]),
        .I2(data_i[71]),
        .O(\data_tx[7]_i_45_n_0 ));
  LUT6 #(
    .INIT(64'h2F202F2F2F202020)) 
    \data_tx[7]_i_5 
       (.I0(\data_tx[7]_i_12_n_0 ),
        .I1(\data_tx[7]_i_13_n_0 ),
        .I2(\byteSel_reg[4] ),
        .I3(\data_tx[7]_i_14_n_0 ),
        .I4(\data_tx[7]_i_9_n_0 ),
        .I5(\data_tx[7]_i_15_n_0 ),
        .O(\data_tx[7]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hAFCFAFC0)) 
    \data_tx[7]_i_6 
       (.I0(\data_tx[7]_i_16_n_0 ),
        .I1(\data_tx[7]_i_17_n_0 ),
        .I2(\byteSel_reg[4] ),
        .I3(\data_tx[7]_i_9_n_0 ),
        .I4(\data_tx[7]_i_18_n_0 ),
        .O(\data_tx[7]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hFEFEFEAEAEAEFEAE)) 
    \data_tx[7]_i_7 
       (.I0(\byteSel_reg[4] ),
        .I1(\data_tx[7]_i_19_n_0 ),
        .I2(\data_tx[7]_i_9_n_0 ),
        .I3(\data_tx[7]_i_20_n_0 ),
        .I4(\data_tx[7]_i_21_n_0 ),
        .I5(\data_tx[7]_i_22_n_0 ),
        .O(\data_tx[7]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \data_tx[7]_i_8 
       (.I0(\data_tx[7]_i_23_n_0 ),
        .I1(\data_tx[7]_i_24_n_0 ),
        .I2(\data_tx[7]_i_21_n_0 ),
        .I3(\data_tx[7]_i_25_n_0 ),
        .I4(\data_tx[7]_i_26_n_0 ),
        .I5(\data_tx[7]_i_27_n_0 ),
        .O(\data_tx[7]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFA8DFEFFA8DDB)) 
    \data_tx[7]_i_9 
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[3]),
        .I5(Q[0]),
        .O(\data_tx[7]_i_9_n_0 ));
  FDRE \data_tx_reg[0] 
       (.C(clk_i),
        .CE(addr_rw0),
        .D(D[0]),
        .Q(data_tx[0]),
        .R(1'b0));
  FDRE \data_tx_reg[2] 
       (.C(clk_i),
        .CE(addr_rw0),
        .D(D[1]),
        .Q(data_tx[2]),
        .R(1'b0));
  FDRE \data_tx_reg[4] 
       (.C(clk_i),
        .CE(addr_rw0),
        .D(data_wr[4]),
        .Q(data_tx[4]),
        .R(1'b0));
  FDRE \data_tx_reg[5] 
       (.C(clk_i),
        .CE(addr_rw0),
        .D(data_wr[5]),
        .Q(data_tx[5]),
        .R(1'b0));
  MUXF7 \data_tx_reg[5]_i_2 
       (.I0(\data_tx[5]_i_3_n_0 ),
        .I1(\data_tx[5]_i_4_n_0 ),
        .O(\data_tx_reg[5]_i_2_n_0 ),
        .S(\data_tx_reg[6]_0 ));
  FDRE \data_tx_reg[6] 
       (.C(clk_i),
        .CE(addr_rw0),
        .D(data_wr[6]),
        .Q(data_tx[6]),
        .R(1'b0));
  MUXF7 \data_tx_reg[6]_i_12 
       (.I0(\data_tx[6]_i_19_n_0 ),
        .I1(\data_tx[6]_i_20_n_0 ),
        .O(\data_tx_reg[6]_i_12_n_0 ),
        .S(\data_tx[7]_i_9_n_0 ));
  MUXF7 \data_tx_reg[6]_i_2 
       (.I0(\data_tx[6]_i_3_n_0 ),
        .I1(\data_tx[6]_i_4_n_0 ),
        .O(\data_tx_reg[6]_i_2_n_0 ),
        .S(\data_tx_reg[6]_0 ));
  MUXF7 \data_tx_reg[6]_i_5 
       (.I0(\data_tx[6]_i_13_n_0 ),
        .I1(\data_tx[6]_i_14_n_0 ),
        .O(\data_tx_reg[6]_i_5_n_0 ),
        .S(\data_tx[7]_i_9_n_0 ));
  MUXF7 \data_tx_reg[6]_i_8 
       (.I0(\data_tx[6]_i_15_n_0 ),
        .I1(\data_tx[6]_i_16_n_0 ),
        .O(\data_tx_reg[6]_i_8_n_0 ),
        .S(\data_tx[7]_i_9_n_0 ));
  MUXF7 \data_tx_reg[6]_i_9 
       (.I0(\data_tx[6]_i_17_n_0 ),
        .I1(\data_tx[6]_i_18_n_0 ),
        .O(\data_tx_reg[6]_i_9_n_0 ),
        .S(\data_tx[7]_i_9_n_0 ));
  FDRE \data_tx_reg[7] 
       (.C(clk_i),
        .CE(addr_rw0),
        .D(data_wr[7]),
        .Q(data_tx[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFDFDD00000008)) 
    i2c_enable_i_1
       (.I0(reset_n),
        .I1(state[0]),
        .I2(i2c_busy),
        .I3(state[1]),
        .I4(state[2]),
        .I5(ena),
        .O(reset_n_1));
  LUT6 #(
    .INIT(64'hBBBBBBB99999999D)) 
    lcd_RS_i_2
       (.I0(Q[5]),
        .I1(Q[4]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(Q[3]),
        .O(\byteSel_reg[5] ));
  LUT6 #(
    .INIT(64'h00015555FFFC0002)) 
    lcd_RS_i_3
       (.I0(Q[4]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(Q[5]),
        .O(\byteSel_reg[4] ));
  LUT6 #(
    .INIT(64'hAAFFCCFFAA00CC0F)) 
    \next_state[0]_i_1 
       (.I0(CO),
        .I1(\next_state_reg[2] ),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(i2c_busy),
        .O(\lcd_count_reg[1]_0 ));
  LUT4 #(
    .INIT(16'h2212)) 
    \next_state[1]_i_1 
       (.I0(state[1]),
        .I1(state[2]),
        .I2(state[0]),
        .I3(i2c_busy),
        .O(\next_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFC00AA00FCF0AA00)) 
    \next_state[2]_i_1 
       (.I0(\next_state_reg[2] ),
        .I1(CO),
        .I2(state[1]),
        .I3(state[2]),
        .I4(state[0]),
        .I5(i2c_busy),
        .O(\lcd_count_reg[1] ));
  LUT1 #(
    .INIT(2'h1)) 
    p_0_out
       (.I0(scl),
        .O(p_2_in));
  LUT6 #(
    .INIT(64'hFFFFF888F888F888)) 
    scl_INST_0
       (.I0(1'b0),
        .I1(scl_reg0),
        .I2(1'b0),
        .I3(1'b0),
        .I4(1'b0),
        .I5(1'b0),
        .O(scl));
  LUT2 #(
    .INIT(4'h2)) 
    scl_INST_0_i_1
       (.I0(scl_ena_reg_n_0),
        .I1(scl_clk),
        .O(scl_reg0));
  LUT6 #(
    .INIT(64'hFFA8FFFFFFA80000)) 
    scl_clk_i_1
       (.I0(count[10]),
        .I1(data0[9]),
        .I2(data0[8]),
        .I3(scl_clk_i_2_n_0),
        .I4(reset_n),
        .I5(scl_clk),
        .O(scl_clk_i_1_n_0));
  LUT6 #(
    .INIT(64'hC888888888888888)) 
    scl_clk_i_2
       (.I0(data0[11]),
        .I1(\count[11]_i_2_n_0 ),
        .I2(data0[7]),
        .I3(data0[10]),
        .I4(scl_clk_i_3_n_0),
        .I5(scl_clk_i_4_n_0),
        .O(scl_clk_i_2_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    scl_clk_i_3
       (.I0(data0[5]),
        .I1(data0[6]),
        .O(scl_clk_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    scl_clk_i_4
       (.I0(data0[1]),
        .I1(data0[2]),
        .I2(data0[3]),
        .I3(data0[4]),
        .O(scl_clk_i_4_n_0));
  FDRE scl_clk_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(scl_clk_i_1_n_0),
        .Q(scl_clk),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFF44BF00)) 
    scl_ena_i_1
       (.I0(data_clk),
        .I1(data_clk_prev),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(scl_ena_reg_n_0),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .O(scl_ena_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    scl_ena_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(scl_ena_i_1_n_0),
        .Q(scl_ena_reg_n_0));
  LUT2 #(
    .INIT(4'h8)) 
    sda_INST_0
       (.I0(sda_ena_n),
        .I1(sda_INST_0_i_2_n_0),
        .O(sda));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'hBDB8)) 
    sda_INST_0_i_1
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(data_clk_prev),
        .I2(\FSM_onehot_state_reg_n_0_[8] ),
        .I3(sda_int_reg_n_0),
        .O(sda_ena_n));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h03D1)) 
    sda_INST_0_i_2
       (.I0(sda_int_reg_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[8] ),
        .I2(data_clk_prev),
        .I3(\FSM_onehot_state_reg_n_0_[1] ),
        .O(sda_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'hFF54FFFFFF540000)) 
    sda_int_i_1
       (.I0(sda_int_i_2_n_0),
        .I1(sda_int_i_3_n_0),
        .I2(sda_int_i_4_n_0),
        .I3(sda_int_i_5_n_0),
        .I4(sda_int4_out),
        .I5(sda_int_reg_n_0),
        .O(sda_int_i_1_n_0));
  LUT6 #(
    .INIT(64'h1F5F0F0F1FFF0F0F)) 
    sda_int_i_10
       (.I0(bit_cnt__0[2]),
        .I1(data_tx[2]),
        .I2(\FSM_onehot_state_reg_n_0_[4] ),
        .I3(bit_cnt__0[0]),
        .I4(bit_cnt__0[1]),
        .I5(data_tx[5]),
        .O(sda_int_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h8)) 
    sda_int_i_11
       (.I0(ena),
        .I1(\FSM_onehot_state_reg_n_0_[5] ),
        .O(sda_int_i_11_n_0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    sda_int_i_12
       (.I0(data_tx[7]),
        .I1(data_tx[6]),
        .I2(bit_cnt__0[1]),
        .I3(data_tx[5]),
        .I4(bit_cnt__0[0]),
        .I5(data_tx[4]),
        .O(sda_int_i_12_n_0));
  LUT6 #(
    .INIT(64'h555555555F5F757F)) 
    sda_int_i_2
       (.I0(\FSM_onehot_state_reg_n_0_[5] ),
        .I1(D[1]),
        .I2(bit_cnt__0[1]),
        .I3(D[0]),
        .I4(bit_cnt__0[0]),
        .I5(bit_cnt__0[2]),
        .O(sda_int_i_2_n_0));
  LUT6 #(
    .INIT(64'h00004700FFFFFFFF)) 
    sda_int_i_3
       (.I0(\data_tx[5]_i_4_n_0 ),
        .I1(\data_tx_reg[6]_0 ),
        .I2(\data_tx[5]_i_3_n_0 ),
        .I3(bit_cnt__0[0]),
        .I4(bit_cnt__0[1]),
        .I5(bit_cnt__0[2]),
        .O(sda_int_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h0131C1F1)) 
    sda_int_i_4
       (.I0(\data_tx[4]_i_2_n_0 ),
        .I1(bit_cnt__0[0]),
        .I2(bit_cnt__0[1]),
        .I3(\data_tx_reg[6]_i_2_n_0 ),
        .I4(\data_tx[7]_i_3_n_0 ),
        .O(sda_int_i_4_n_0));
  LUT5 #(
    .INIT(32'hF8F8FFF8)) 
    sda_int_i_5
       (.I0(sda_int_i_7_n_0),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(sda_int_i_8_n_0),
        .I3(sda_int_i_9_n_0),
        .I4(sda_int_i_10_n_0),
        .O(sda_int_i_5_n_0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
    sda_int_i_6
       (.I0(busy1),
        .I1(\FSM_onehot_state_reg_n_0_[3] ),
        .I2(\FSM_onehot_state_reg_n_0_[2] ),
        .I3(\FSM_onehot_state_reg_n_0_[4] ),
        .I4(\FSM_onehot_state_reg_n_0_[1] ),
        .I5(sda_int_i_11_n_0),
        .O(sda_int4_out));
  LUT6 #(
    .INIT(64'hBB88BB88B8BBB888)) 
    sda_int_i_7
       (.I0(sda_int_i_12_n_0),
        .I1(bit_cnt__0[2]),
        .I2(data_tx[2]),
        .I3(bit_cnt__0[1]),
        .I4(data_tx[0]),
        .I5(bit_cnt__0[0]),
        .O(sda_int_i_7_n_0));
  LUT6 #(
    .INIT(64'hFFCEEFEECECEFFCC)) 
    sda_int_i_8
       (.I0(\FSM_onehot_state_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg_n_0_[0] ),
        .I2(bit_cnt__0[2]),
        .I3(\FSM_onehot_state_reg_n_0_[2] ),
        .I4(bit_cnt__0[0]),
        .I5(bit_cnt__0[1]),
        .O(sda_int_i_8_n_0));
  LUT6 #(
    .INIT(64'hFB3BF838FFFFFFFF)) 
    sda_int_i_9
       (.I0(data_tx[4]),
        .I1(bit_cnt__0[2]),
        .I2(bit_cnt__0[1]),
        .I3(data_tx[6]),
        .I4(data_tx[0]),
        .I5(bit_cnt__0[0]),
        .O(sda_int_i_9_n_0));
  FDPE #(
    .INIT(1'b1)) 
    sda_int_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(sda_int_i_1_n_0),
        .PRE(reset_n_0),
        .Q(sda_int_reg_n_0));
  LUT4 #(
    .INIT(16'hABA8)) 
    stretch_i_1
       (.I0(p_2_in),
        .I1(stretch_i_2_n_0),
        .I2(stretch_i_3_n_0),
        .I3(stretch),
        .O(stretch_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h00280000)) 
    stretch_i_2
       (.I0(data0[10]),
        .I1(data0[8]),
        .I2(data0[9]),
        .I3(data0[11]),
        .I4(\count[11]_i_2_n_0 ),
        .O(stretch_i_2_n_0));
  LUT6 #(
    .INIT(64'h88888C8888888888)) 
    stretch_i_3
       (.I0(stretch_i_4_n_0),
        .I1(count[10]),
        .I2(data0[7]),
        .I3(data0[9]),
        .I4(data0[11]),
        .I5(stretch_i_5_n_0),
        .O(stretch_i_3_n_0));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    stretch_i_4
       (.I0(data0[9]),
        .I1(data0[11]),
        .I2(data0[7]),
        .I3(data0[6]),
        .I4(data0[5]),
        .I5(scl_clk_i_4_n_0),
        .O(stretch_i_4_n_0));
  LUT6 #(
    .INIT(64'h11111555FFFFFFFF)) 
    stretch_i_5
       (.I0(data0[5]),
        .I1(data0[4]),
        .I2(data0[0]),
        .I3(data0[1]),
        .I4(stretch_i_6_n_0),
        .I5(data0[6]),
        .O(stretch_i_5_n_0));
  LUT2 #(
    .INIT(4'hE)) 
    stretch_i_6
       (.I0(data0[2]),
        .I1(data0[3]),
        .O(stretch_i_6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    stretch_reg
       (.C(clk_i),
        .CE(1'b1),
        .CLR(reset_n_0),
        .D(stretch_i_1_n_0),
        .Q(stretch));
endmodule

(* ORIG_REF_NAME = "i2c_user_lcd" *) 
module Keyboard_i2c_user_lcd_0_0_i2c_user_lcd
   (sda,
    scl,
    data_i,
    selectMode,
    reset_n,
    clk_i,
    clockOutput);
  output sda;
  inout scl;
  input [127:0]data_i;
  input [1:0]selectMode;
  input reset_n;
  input clk_i;
  input clockOutput;

  wire Inst_i2c_master_n_0;
  wire Inst_i2c_master_n_1;
  wire Inst_i2c_master_n_3;
  wire Inst_i2c_master_n_4;
  wire Inst_i2c_master_n_5;
  wire Inst_i2c_master_n_6;
  wire Inst_i2c_master_n_7;
  wire [5:0]byteSel;
  wire \byteSel[0]_i_1_n_0 ;
  wire \byteSel[1]_i_1_n_0 ;
  wire \byteSel[2]_i_1_n_0 ;
  wire \byteSel[3]_i_1_n_0 ;
  wire \byteSel[4]_i_1_n_0 ;
  wire \byteSel[5]_i_1_n_0 ;
  wire \byteSel[5]_i_2_n_0 ;
  wire clk_i;
  wire clockOutput;
  wire [127:0]data_i;
  wire ena;
  wire lcd_EN;
  wire lcd_EN_i_1_n_0;
  wire lcd_RS;
  wire lcd_RS_i_1_n_0;
  wire lcd_RS_i_4_n_0;
  wire lcd_RS_i_5_n_0;
  wire \lcd_count[0]_i_1_n_0 ;
  wire \lcd_count[1]_i_1_n_0 ;
  wire \lcd_count_reg_n_0_[0] ;
  wire \lcd_count_reg_n_0_[1] ;
  wire [31:1]lcd_delay0;
  wire \lcd_delay[31]_i_1_n_0 ;
  wire \lcd_delay_cnst[12]_i_1_n_0 ;
  wire \lcd_delay_cnst[13]_i_1_n_0 ;
  wire \lcd_delay_cnst[14]_i_1_n_0 ;
  wire \lcd_delay_cnst[15]_i_1_n_0 ;
  wire \lcd_delay_cnst[16]_i_1_n_0 ;
  wire \lcd_delay_cnst[19]_i_1_n_0 ;
  wire \lcd_delay_cnst[24]_i_1_n_0 ;
  wire \lcd_delay_cnst[24]_i_2_n_0 ;
  wire \lcd_delay_cnst[7]_i_1_n_0 ;
  wire \lcd_delay_cnst[8]_i_1_n_0 ;
  wire \lcd_delay_cnst_reg_n_0_[12] ;
  wire \lcd_delay_cnst_reg_n_0_[13] ;
  wire \lcd_delay_cnst_reg_n_0_[14] ;
  wire \lcd_delay_cnst_reg_n_0_[15] ;
  wire \lcd_delay_cnst_reg_n_0_[16] ;
  wire \lcd_delay_cnst_reg_n_0_[19] ;
  wire \lcd_delay_cnst_reg_n_0_[24] ;
  wire \lcd_delay_cnst_reg_n_0_[7] ;
  wire \lcd_delay_cnst_reg_n_0_[8] ;
  wire \lcd_delay_reg[12]_i_2_n_0 ;
  wire \lcd_delay_reg[12]_i_2_n_1 ;
  wire \lcd_delay_reg[12]_i_2_n_2 ;
  wire \lcd_delay_reg[12]_i_2_n_3 ;
  wire \lcd_delay_reg[16]_i_2_n_0 ;
  wire \lcd_delay_reg[16]_i_2_n_1 ;
  wire \lcd_delay_reg[16]_i_2_n_2 ;
  wire \lcd_delay_reg[16]_i_2_n_3 ;
  wire \lcd_delay_reg[20]_i_2_n_0 ;
  wire \lcd_delay_reg[20]_i_2_n_1 ;
  wire \lcd_delay_reg[20]_i_2_n_2 ;
  wire \lcd_delay_reg[20]_i_2_n_3 ;
  wire \lcd_delay_reg[24]_i_2_n_0 ;
  wire \lcd_delay_reg[24]_i_2_n_1 ;
  wire \lcd_delay_reg[24]_i_2_n_2 ;
  wire \lcd_delay_reg[24]_i_2_n_3 ;
  wire \lcd_delay_reg[28]_i_2_n_0 ;
  wire \lcd_delay_reg[28]_i_2_n_1 ;
  wire \lcd_delay_reg[28]_i_2_n_2 ;
  wire \lcd_delay_reg[28]_i_2_n_3 ;
  wire \lcd_delay_reg[31]_i_3_n_2 ;
  wire \lcd_delay_reg[31]_i_3_n_3 ;
  wire \lcd_delay_reg[4]_i_2_n_0 ;
  wire \lcd_delay_reg[4]_i_2_n_1 ;
  wire \lcd_delay_reg[4]_i_2_n_2 ;
  wire \lcd_delay_reg[4]_i_2_n_3 ;
  wire \lcd_delay_reg[8]_i_2_n_0 ;
  wire \lcd_delay_reg[8]_i_2_n_1 ;
  wire \lcd_delay_reg[8]_i_2_n_2 ;
  wire \lcd_delay_reg[8]_i_2_n_3 ;
  wire \lcd_delay_reg_n_0_[0] ;
  wire \lcd_delay_reg_n_0_[10] ;
  wire \lcd_delay_reg_n_0_[11] ;
  wire \lcd_delay_reg_n_0_[12] ;
  wire \lcd_delay_reg_n_0_[13] ;
  wire \lcd_delay_reg_n_0_[14] ;
  wire \lcd_delay_reg_n_0_[15] ;
  wire \lcd_delay_reg_n_0_[16] ;
  wire \lcd_delay_reg_n_0_[17] ;
  wire \lcd_delay_reg_n_0_[18] ;
  wire \lcd_delay_reg_n_0_[19] ;
  wire \lcd_delay_reg_n_0_[1] ;
  wire \lcd_delay_reg_n_0_[20] ;
  wire \lcd_delay_reg_n_0_[21] ;
  wire \lcd_delay_reg_n_0_[22] ;
  wire \lcd_delay_reg_n_0_[23] ;
  wire \lcd_delay_reg_n_0_[24] ;
  wire \lcd_delay_reg_n_0_[25] ;
  wire \lcd_delay_reg_n_0_[26] ;
  wire \lcd_delay_reg_n_0_[27] ;
  wire \lcd_delay_reg_n_0_[28] ;
  wire \lcd_delay_reg_n_0_[29] ;
  wire \lcd_delay_reg_n_0_[2] ;
  wire \lcd_delay_reg_n_0_[30] ;
  wire \lcd_delay_reg_n_0_[31] ;
  wire \lcd_delay_reg_n_0_[3] ;
  wire \lcd_delay_reg_n_0_[4] ;
  wire \lcd_delay_reg_n_0_[5] ;
  wire \lcd_delay_reg_n_0_[6] ;
  wire \lcd_delay_reg_n_0_[7] ;
  wire \lcd_delay_reg_n_0_[8] ;
  wire \lcd_delay_reg_n_0_[9] ;
  wire next_state1_carry__0_i_1_n_0;
  wire next_state1_carry__0_i_2_n_0;
  wire next_state1_carry__0_i_3_n_0;
  wire next_state1_carry__0_i_4_n_0;
  wire next_state1_carry__0_i_5_n_0;
  wire next_state1_carry__0_i_6_n_0;
  wire next_state1_carry__0_i_7_n_0;
  wire next_state1_carry__0_i_8_n_0;
  wire next_state1_carry__0_n_0;
  wire next_state1_carry__0_n_1;
  wire next_state1_carry__0_n_2;
  wire next_state1_carry__0_n_3;
  wire next_state1_carry__1_i_1_n_0;
  wire next_state1_carry__1_i_2_n_0;
  wire next_state1_carry__1_i_3_n_0;
  wire next_state1_carry__1_i_4_n_0;
  wire next_state1_carry__1_i_5_n_0;
  wire next_state1_carry__1_i_6_n_0;
  wire next_state1_carry__1_i_7_n_0;
  wire next_state1_carry__1_i_8_n_0;
  wire next_state1_carry__1_n_0;
  wire next_state1_carry__1_n_1;
  wire next_state1_carry__1_n_2;
  wire next_state1_carry__1_n_3;
  wire next_state1_carry__2_i_1_n_0;
  wire next_state1_carry__2_i_2_n_0;
  wire next_state1_carry__2_i_3_n_0;
  wire next_state1_carry__2_n_1;
  wire next_state1_carry__2_n_2;
  wire next_state1_carry__2_n_3;
  wire next_state1_carry_i_1_n_0;
  wire next_state1_carry_i_2_n_0;
  wire next_state1_carry_i_3_n_0;
  wire next_state1_carry_i_4_n_0;
  wire next_state1_carry_i_5_n_0;
  wire next_state1_carry_i_6_n_0;
  wire next_state1_carry_i_7_n_0;
  wire next_state1_carry_i_8_n_0;
  wire next_state1_carry_n_0;
  wire next_state1_carry_n_1;
  wire next_state1_carry_n_2;
  wire next_state1_carry_n_3;
  wire nibble_sel_i_1_n_0;
  wire nibble_sel_reg_n_0;
  wire [31:0]p_2_in;
  wire reset_n;
  wire scl;
  wire sda;
  wire [1:0]selectMode;
  wire skip_nibble_i_1_n_0;
  wire skip_nibble_reg_n_0;
  wire [2:0]state;
  wire [3:2]\NLW_lcd_delay_reg[31]_i_3_CO_UNCONNECTED ;
  wire [3:3]\NLW_lcd_delay_reg[31]_i_3_O_UNCONNECTED ;
  wire [3:0]NLW_next_state1_carry_O_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry__1_O_UNCONNECTED;
  wire [3:3]NLW_next_state1_carry__2_CO_UNCONNECTED;
  wire [3:0]NLW_next_state1_carry__2_O_UNCONNECTED;

  Keyboard_i2c_user_lcd_0_0_i2c_master Inst_i2c_master
       (.CO(next_state1_carry__2_n_1),
        .D({lcd_EN,lcd_RS}),
        .Q(byteSel),
        .\byteSel_reg[4] (Inst_i2c_master_n_6),
        .\byteSel_reg[5] (Inst_i2c_master_n_1),
        .clk_i(clk_i),
        .clockOutput(clockOutput),
        .data_i(data_i),
        .\data_tx_reg[6]_0 (nibble_sel_reg_n_0),
        .ena(ena),
        .\lcd_count_reg[1] (Inst_i2c_master_n_3),
        .\lcd_count_reg[1]_0 (Inst_i2c_master_n_5),
        .\next_state_reg[1] (Inst_i2c_master_n_4),
        .\next_state_reg[2] (\lcd_count_reg_n_0_[1] ),
        .reset_n(reset_n),
        .reset_n_0(Inst_i2c_master_n_0),
        .reset_n_1(Inst_i2c_master_n_7),
        .scl(scl),
        .sda(sda),
        .selectMode(selectMode),
        .state(state));
  LUT6 #(
    .INIT(64'h0001111133333333)) 
    \byteSel[0]_i_1 
       (.I0(byteSel[4]),
        .I1(byteSel[0]),
        .I2(byteSel[1]),
        .I3(byteSel[2]),
        .I4(byteSel[3]),
        .I5(byteSel[5]),
        .O(\byteSel[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFA00FFFFFFFFEA00)) 
    \byteSel[1]_i_1 
       (.I0(byteSel[4]),
        .I1(byteSel[2]),
        .I2(byteSel[3]),
        .I3(byteSel[5]),
        .I4(byteSel[1]),
        .I5(byteSel[0]),
        .O(\byteSel[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hE0FFFFFFFFE0E0A0)) 
    \byteSel[2]_i_1 
       (.I0(byteSel[4]),
        .I1(byteSel[3]),
        .I2(byteSel[5]),
        .I3(byteSel[0]),
        .I4(byteSel[1]),
        .I5(byteSel[2]),
        .O(\byteSel[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000140003FFFC000)) 
    \byteSel[3]_i_1 
       (.I0(byteSel[4]),
        .I1(byteSel[0]),
        .I2(byteSel[1]),
        .I3(byteSel[2]),
        .I4(byteSel[3]),
        .I5(byteSel[5]),
        .O(\byteSel[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \byteSel[4]_i_1 
       (.I0(byteSel[4]),
        .I1(byteSel[0]),
        .I2(byteSel[1]),
        .I3(byteSel[2]),
        .I4(byteSel[3]),
        .I5(byteSel[5]),
        .O(\byteSel[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h40404000)) 
    \byteSel[5]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(state[0]),
        .I2(state[2]),
        .I3(nibble_sel_reg_n_0),
        .I4(skip_nibble_reg_n_0),
        .O(\byteSel[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000001FF80000000)) 
    \byteSel[5]_i_2 
       (.I0(byteSel[0]),
        .I1(byteSel[1]),
        .I2(byteSel[2]),
        .I3(byteSel[3]),
        .I4(byteSel[4]),
        .I5(byteSel[5]),
        .O(\byteSel[5]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \byteSel_reg[0] 
       (.C(clk_i),
        .CE(\byteSel[5]_i_1_n_0 ),
        .D(\byteSel[0]_i_1_n_0 ),
        .Q(byteSel[0]),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \byteSel_reg[1] 
       (.C(clk_i),
        .CE(\byteSel[5]_i_1_n_0 ),
        .D(\byteSel[1]_i_1_n_0 ),
        .Q(byteSel[1]),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \byteSel_reg[2] 
       (.C(clk_i),
        .CE(\byteSel[5]_i_1_n_0 ),
        .D(\byteSel[2]_i_1_n_0 ),
        .Q(byteSel[2]),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \byteSel_reg[3] 
       (.C(clk_i),
        .CE(\byteSel[5]_i_1_n_0 ),
        .D(\byteSel[3]_i_1_n_0 ),
        .Q(byteSel[3]),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \byteSel_reg[4] 
       (.C(clk_i),
        .CE(\byteSel[5]_i_1_n_0 ),
        .D(\byteSel[4]_i_1_n_0 ),
        .Q(byteSel[4]),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \byteSel_reg[5] 
       (.C(clk_i),
        .CE(\byteSel[5]_i_1_n_0 ),
        .D(\byteSel[5]_i_2_n_0 ),
        .Q(byteSel[5]),
        .R(Inst_i2c_master_n_0));
  FDRE i2c_enable_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(Inst_i2c_master_n_7),
        .Q(ena),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT4 #(
    .INIT(16'hF304)) 
    lcd_EN_i_1
       (.I0(\lcd_count_reg_n_0_[1] ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(lcd_EN),
        .O(lcd_EN_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lcd_EN_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(lcd_EN_i_1_n_0),
        .Q(lcd_EN),
        .R(Inst_i2c_master_n_0));
  LUT6 #(
    .INIT(64'hFFFFEDFF0000ED00)) 
    lcd_RS_i_1
       (.I0(Inst_i2c_master_n_1),
        .I1(Inst_i2c_master_n_6),
        .I2(lcd_RS_i_4_n_0),
        .I3(lcd_RS_i_5_n_0),
        .I4(state[2]),
        .I5(lcd_RS),
        .O(lcd_RS_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000001000050004)) 
    lcd_RS_i_4
       (.I0(byteSel[0]),
        .I1(byteSel[3]),
        .I2(byteSel[2]),
        .I3(byteSel[1]),
        .I4(byteSel[4]),
        .I5(byteSel[5]),
        .O(lcd_RS_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h1)) 
    lcd_RS_i_5
       (.I0(state[0]),
        .I1(state[1]),
        .O(lcd_RS_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    lcd_RS_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(lcd_RS_i_1_n_0),
        .Q(lcd_RS),
        .R(Inst_i2c_master_n_0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF304)) 
    \lcd_count[0]_i_1 
       (.I0(\lcd_count_reg_n_0_[1] ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\lcd_count_reg_n_0_[0] ),
        .O(\lcd_count[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'hF308)) 
    \lcd_count[1]_i_1 
       (.I0(\lcd_count_reg_n_0_[0] ),
        .I1(state[2]),
        .I2(state[0]),
        .I3(\lcd_count_reg_n_0_[1] ),
        .O(\lcd_count[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_count_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\lcd_count[0]_i_1_n_0 ),
        .Q(\lcd_count_reg_n_0_[0] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_count_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(\lcd_count[1]_i_1_n_0 ),
        .Q(\lcd_count_reg_n_0_[1] ),
        .R(Inst_i2c_master_n_0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \lcd_delay[0]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(\lcd_delay_reg_n_0_[0] ),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[10]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[10]),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[11]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[11]),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[12]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[12]),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[13]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[13]),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[14]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[14]),
        .O(p_2_in[14]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[15]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[15]),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[16]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[16]),
        .O(p_2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[17]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[17]),
        .O(p_2_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[18]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[18]),
        .O(p_2_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[19]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[19]),
        .O(p_2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[1]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[20]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[20]),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[21]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[21]),
        .O(p_2_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[22]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[22]),
        .O(p_2_in[22]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[23]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[23]),
        .O(p_2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[24]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[24]),
        .O(p_2_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[25]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[25]),
        .O(p_2_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[26]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[26]),
        .O(p_2_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[27]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[27]),
        .O(p_2_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[28]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[28]),
        .O(p_2_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[29]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[29]),
        .O(p_2_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[2]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[2]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[30]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[30]),
        .O(p_2_in[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[31]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .O(\lcd_delay[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[31]_i_2 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[31]),
        .O(p_2_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[3]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[4]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[5]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[6]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[6]),
        .O(p_2_in[6]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[7]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[7]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[8]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[8]),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \lcd_delay[9]_i_1 
       (.I0(next_state1_carry__2_n_1),
        .I1(lcd_delay0[9]),
        .O(p_2_in[9]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \lcd_delay_cnst[12]_i_1 
       (.I0(byteSel[2]),
        .I1(byteSel[4]),
        .I2(byteSel[3]),
        .I3(byteSel[5]),
        .O(\lcd_delay_cnst[12]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \lcd_delay_cnst[13]_i_1 
       (.I0(byteSel[0]),
        .I1(byteSel[1]),
        .I2(byteSel[5]),
        .I3(byteSel[3]),
        .I4(byteSel[4]),
        .I5(byteSel[2]),
        .O(\lcd_delay_cnst[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100090000)) 
    \lcd_delay_cnst[14]_i_1 
       (.I0(byteSel[5]),
        .I1(byteSel[3]),
        .I2(byteSel[4]),
        .I3(byteSel[2]),
        .I4(byteSel[0]),
        .I5(byteSel[1]),
        .O(\lcd_delay_cnst[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \lcd_delay_cnst[15]_i_1 
       (.I0(byteSel[5]),
        .I1(byteSel[3]),
        .I2(byteSel[4]),
        .I3(byteSel[2]),
        .O(\lcd_delay_cnst[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000100090001)) 
    \lcd_delay_cnst[16]_i_1 
       (.I0(byteSel[5]),
        .I1(byteSel[3]),
        .I2(byteSel[4]),
        .I3(byteSel[2]),
        .I4(byteSel[0]),
        .I5(byteSel[1]),
        .O(\lcd_delay_cnst[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002001)) 
    \lcd_delay_cnst[19]_i_1 
       (.I0(byteSel[0]),
        .I1(byteSel[1]),
        .I2(byteSel[5]),
        .I3(byteSel[3]),
        .I4(byteSel[4]),
        .I5(byteSel[2]),
        .O(\lcd_delay_cnst[19]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h40)) 
    \lcd_delay_cnst[24]_i_1 
       (.I0(state[0]),
        .I1(state[2]),
        .I2(reset_n),
        .O(\lcd_delay_cnst[24]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002000)) 
    \lcd_delay_cnst[24]_i_2 
       (.I0(byteSel[5]),
        .I1(byteSel[4]),
        .I2(byteSel[3]),
        .I3(byteSel[0]),
        .I4(byteSel[2]),
        .I5(byteSel[1]),
        .O(\lcd_delay_cnst[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFBFFFFFFFFFFF0)) 
    \lcd_delay_cnst[7]_i_1 
       (.I0(byteSel[1]),
        .I1(byteSel[0]),
        .I2(byteSel[2]),
        .I3(byteSel[4]),
        .I4(byteSel[3]),
        .I5(byteSel[5]),
        .O(\lcd_delay_cnst[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \lcd_delay_cnst[8]_i_1 
       (.I0(byteSel[2]),
        .I1(byteSel[4]),
        .I2(byteSel[3]),
        .I3(byteSel[5]),
        .I4(byteSel[1]),
        .I5(byteSel[0]),
        .O(\lcd_delay_cnst[8]_i_1_n_0 ));
  FDRE \lcd_delay_cnst_reg[12] 
       (.C(clk_i),
        .CE(\lcd_delay_cnst[24]_i_1_n_0 ),
        .D(\lcd_delay_cnst[12]_i_1_n_0 ),
        .Q(\lcd_delay_cnst_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \lcd_delay_cnst_reg[13] 
       (.C(clk_i),
        .CE(\lcd_delay_cnst[24]_i_1_n_0 ),
        .D(\lcd_delay_cnst[13]_i_1_n_0 ),
        .Q(\lcd_delay_cnst_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \lcd_delay_cnst_reg[14] 
       (.C(clk_i),
        .CE(\lcd_delay_cnst[24]_i_1_n_0 ),
        .D(\lcd_delay_cnst[14]_i_1_n_0 ),
        .Q(\lcd_delay_cnst_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \lcd_delay_cnst_reg[15] 
       (.C(clk_i),
        .CE(\lcd_delay_cnst[24]_i_1_n_0 ),
        .D(\lcd_delay_cnst[15]_i_1_n_0 ),
        .Q(\lcd_delay_cnst_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \lcd_delay_cnst_reg[16] 
       (.C(clk_i),
        .CE(\lcd_delay_cnst[24]_i_1_n_0 ),
        .D(\lcd_delay_cnst[16]_i_1_n_0 ),
        .Q(\lcd_delay_cnst_reg_n_0_[16] ),
        .R(1'b0));
  FDRE \lcd_delay_cnst_reg[19] 
       (.C(clk_i),
        .CE(\lcd_delay_cnst[24]_i_1_n_0 ),
        .D(\lcd_delay_cnst[19]_i_1_n_0 ),
        .Q(\lcd_delay_cnst_reg_n_0_[19] ),
        .R(1'b0));
  FDRE \lcd_delay_cnst_reg[24] 
       (.C(clk_i),
        .CE(\lcd_delay_cnst[24]_i_1_n_0 ),
        .D(\lcd_delay_cnst[24]_i_2_n_0 ),
        .Q(\lcd_delay_cnst_reg_n_0_[24] ),
        .R(1'b0));
  FDRE \lcd_delay_cnst_reg[7] 
       (.C(clk_i),
        .CE(\lcd_delay_cnst[24]_i_1_n_0 ),
        .D(\lcd_delay_cnst[7]_i_1_n_0 ),
        .Q(\lcd_delay_cnst_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \lcd_delay_cnst_reg[8] 
       (.C(clk_i),
        .CE(\lcd_delay_cnst[24]_i_1_n_0 ),
        .D(\lcd_delay_cnst[8]_i_1_n_0 ),
        .Q(\lcd_delay_cnst_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[0] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(\lcd_delay_reg_n_0_[0] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[10] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(\lcd_delay_reg_n_0_[10] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[11] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(\lcd_delay_reg_n_0_[11] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[12] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(\lcd_delay_reg_n_0_[12] ),
        .R(Inst_i2c_master_n_0));
  CARRY4 \lcd_delay_reg[12]_i_2 
       (.CI(\lcd_delay_reg[8]_i_2_n_0 ),
        .CO({\lcd_delay_reg[12]_i_2_n_0 ,\lcd_delay_reg[12]_i_2_n_1 ,\lcd_delay_reg[12]_i_2_n_2 ,\lcd_delay_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(lcd_delay0[12:9]),
        .S({\lcd_delay_reg_n_0_[12] ,\lcd_delay_reg_n_0_[11] ,\lcd_delay_reg_n_0_[10] ,\lcd_delay_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[13] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(\lcd_delay_reg_n_0_[13] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[14] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(\lcd_delay_reg_n_0_[14] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[15] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(\lcd_delay_reg_n_0_[15] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[16] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(\lcd_delay_reg_n_0_[16] ),
        .R(Inst_i2c_master_n_0));
  CARRY4 \lcd_delay_reg[16]_i_2 
       (.CI(\lcd_delay_reg[12]_i_2_n_0 ),
        .CO({\lcd_delay_reg[16]_i_2_n_0 ,\lcd_delay_reg[16]_i_2_n_1 ,\lcd_delay_reg[16]_i_2_n_2 ,\lcd_delay_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(lcd_delay0[16:13]),
        .S({\lcd_delay_reg_n_0_[16] ,\lcd_delay_reg_n_0_[15] ,\lcd_delay_reg_n_0_[14] ,\lcd_delay_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[17] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(\lcd_delay_reg_n_0_[17] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[18] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(\lcd_delay_reg_n_0_[18] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[19] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(\lcd_delay_reg_n_0_[19] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[1] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(\lcd_delay_reg_n_0_[1] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[20] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(\lcd_delay_reg_n_0_[20] ),
        .R(Inst_i2c_master_n_0));
  CARRY4 \lcd_delay_reg[20]_i_2 
       (.CI(\lcd_delay_reg[16]_i_2_n_0 ),
        .CO({\lcd_delay_reg[20]_i_2_n_0 ,\lcd_delay_reg[20]_i_2_n_1 ,\lcd_delay_reg[20]_i_2_n_2 ,\lcd_delay_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(lcd_delay0[20:17]),
        .S({\lcd_delay_reg_n_0_[20] ,\lcd_delay_reg_n_0_[19] ,\lcd_delay_reg_n_0_[18] ,\lcd_delay_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[21] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(\lcd_delay_reg_n_0_[21] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[22] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(\lcd_delay_reg_n_0_[22] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[23] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(\lcd_delay_reg_n_0_[23] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[24] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(\lcd_delay_reg_n_0_[24] ),
        .R(Inst_i2c_master_n_0));
  CARRY4 \lcd_delay_reg[24]_i_2 
       (.CI(\lcd_delay_reg[20]_i_2_n_0 ),
        .CO({\lcd_delay_reg[24]_i_2_n_0 ,\lcd_delay_reg[24]_i_2_n_1 ,\lcd_delay_reg[24]_i_2_n_2 ,\lcd_delay_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(lcd_delay0[24:21]),
        .S({\lcd_delay_reg_n_0_[24] ,\lcd_delay_reg_n_0_[23] ,\lcd_delay_reg_n_0_[22] ,\lcd_delay_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[25] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(\lcd_delay_reg_n_0_[25] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[26] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(\lcd_delay_reg_n_0_[26] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[27] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(\lcd_delay_reg_n_0_[27] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[28] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(\lcd_delay_reg_n_0_[28] ),
        .R(Inst_i2c_master_n_0));
  CARRY4 \lcd_delay_reg[28]_i_2 
       (.CI(\lcd_delay_reg[24]_i_2_n_0 ),
        .CO({\lcd_delay_reg[28]_i_2_n_0 ,\lcd_delay_reg[28]_i_2_n_1 ,\lcd_delay_reg[28]_i_2_n_2 ,\lcd_delay_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(lcd_delay0[28:25]),
        .S({\lcd_delay_reg_n_0_[28] ,\lcd_delay_reg_n_0_[27] ,\lcd_delay_reg_n_0_[26] ,\lcd_delay_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[29] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(\lcd_delay_reg_n_0_[29] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[2] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(\lcd_delay_reg_n_0_[2] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[30] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(\lcd_delay_reg_n_0_[30] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[31] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[31]),
        .Q(\lcd_delay_reg_n_0_[31] ),
        .R(Inst_i2c_master_n_0));
  CARRY4 \lcd_delay_reg[31]_i_3 
       (.CI(\lcd_delay_reg[28]_i_2_n_0 ),
        .CO({\NLW_lcd_delay_reg[31]_i_3_CO_UNCONNECTED [3:2],\lcd_delay_reg[31]_i_3_n_2 ,\lcd_delay_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_lcd_delay_reg[31]_i_3_O_UNCONNECTED [3],lcd_delay0[31:29]}),
        .S({1'b0,\lcd_delay_reg_n_0_[31] ,\lcd_delay_reg_n_0_[30] ,\lcd_delay_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[3] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(\lcd_delay_reg_n_0_[3] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[4] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(\lcd_delay_reg_n_0_[4] ),
        .R(Inst_i2c_master_n_0));
  CARRY4 \lcd_delay_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\lcd_delay_reg[4]_i_2_n_0 ,\lcd_delay_reg[4]_i_2_n_1 ,\lcd_delay_reg[4]_i_2_n_2 ,\lcd_delay_reg[4]_i_2_n_3 }),
        .CYINIT(\lcd_delay_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(lcd_delay0[4:1]),
        .S({\lcd_delay_reg_n_0_[4] ,\lcd_delay_reg_n_0_[3] ,\lcd_delay_reg_n_0_[2] ,\lcd_delay_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[5] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(\lcd_delay_reg_n_0_[5] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[6] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(\lcd_delay_reg_n_0_[6] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[7] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(\lcd_delay_reg_n_0_[7] ),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[8] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(\lcd_delay_reg_n_0_[8] ),
        .R(Inst_i2c_master_n_0));
  CARRY4 \lcd_delay_reg[8]_i_2 
       (.CI(\lcd_delay_reg[4]_i_2_n_0 ),
        .CO({\lcd_delay_reg[8]_i_2_n_0 ,\lcd_delay_reg[8]_i_2_n_1 ,\lcd_delay_reg[8]_i_2_n_2 ,\lcd_delay_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(lcd_delay0[8:5]),
        .S({\lcd_delay_reg_n_0_[8] ,\lcd_delay_reg_n_0_[7] ,\lcd_delay_reg_n_0_[6] ,\lcd_delay_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \lcd_delay_reg[9] 
       (.C(clk_i),
        .CE(\lcd_delay[31]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(\lcd_delay_reg_n_0_[9] ),
        .R(Inst_i2c_master_n_0));
  CARRY4 next_state1_carry
       (.CI(1'b0),
        .CO({next_state1_carry_n_0,next_state1_carry_n_1,next_state1_carry_n_2,next_state1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({next_state1_carry_i_1_n_0,next_state1_carry_i_2_n_0,next_state1_carry_i_3_n_0,next_state1_carry_i_4_n_0}),
        .O(NLW_next_state1_carry_O_UNCONNECTED[3:0]),
        .S({next_state1_carry_i_5_n_0,next_state1_carry_i_6_n_0,next_state1_carry_i_7_n_0,next_state1_carry_i_8_n_0}));
  CARRY4 next_state1_carry__0
       (.CI(next_state1_carry_n_0),
        .CO({next_state1_carry__0_n_0,next_state1_carry__0_n_1,next_state1_carry__0_n_2,next_state1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({next_state1_carry__0_i_1_n_0,next_state1_carry__0_i_2_n_0,next_state1_carry__0_i_3_n_0,next_state1_carry__0_i_4_n_0}),
        .O(NLW_next_state1_carry__0_O_UNCONNECTED[3:0]),
        .S({next_state1_carry__0_i_5_n_0,next_state1_carry__0_i_6_n_0,next_state1_carry__0_i_7_n_0,next_state1_carry__0_i_8_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    next_state1_carry__0_i_1
       (.I0(\lcd_delay_reg_n_0_[17] ),
        .I1(\lcd_delay_cnst_reg_n_0_[16] ),
        .I2(\lcd_delay_reg_n_0_[16] ),
        .O(next_state1_carry__0_i_1_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    next_state1_carry__0_i_2
       (.I0(\lcd_delay_cnst_reg_n_0_[15] ),
        .I1(\lcd_delay_reg_n_0_[15] ),
        .I2(\lcd_delay_cnst_reg_n_0_[14] ),
        .I3(\lcd_delay_reg_n_0_[14] ),
        .O(next_state1_carry__0_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    next_state1_carry__0_i_3
       (.I0(\lcd_delay_cnst_reg_n_0_[13] ),
        .I1(\lcd_delay_reg_n_0_[13] ),
        .I2(\lcd_delay_cnst_reg_n_0_[12] ),
        .I3(\lcd_delay_reg_n_0_[12] ),
        .O(next_state1_carry__0_i_3_n_0));
  LUT2 #(
    .INIT(4'h2)) 
    next_state1_carry__0_i_4
       (.I0(\lcd_delay_cnst_reg_n_0_[16] ),
        .I1(\lcd_delay_reg_n_0_[11] ),
        .O(next_state1_carry__0_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    next_state1_carry__0_i_5
       (.I0(\lcd_delay_reg_n_0_[17] ),
        .I1(\lcd_delay_reg_n_0_[16] ),
        .I2(\lcd_delay_cnst_reg_n_0_[16] ),
        .O(next_state1_carry__0_i_5_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state1_carry__0_i_6
       (.I0(\lcd_delay_reg_n_0_[15] ),
        .I1(\lcd_delay_cnst_reg_n_0_[15] ),
        .I2(\lcd_delay_reg_n_0_[14] ),
        .I3(\lcd_delay_cnst_reg_n_0_[14] ),
        .O(next_state1_carry__0_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state1_carry__0_i_7
       (.I0(\lcd_delay_reg_n_0_[13] ),
        .I1(\lcd_delay_cnst_reg_n_0_[13] ),
        .I2(\lcd_delay_reg_n_0_[12] ),
        .I3(\lcd_delay_cnst_reg_n_0_[12] ),
        .O(next_state1_carry__0_i_7_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    next_state1_carry__0_i_8
       (.I0(\lcd_delay_reg_n_0_[10] ),
        .I1(\lcd_delay_reg_n_0_[11] ),
        .I2(\lcd_delay_cnst_reg_n_0_[16] ),
        .O(next_state1_carry__0_i_8_n_0));
  CARRY4 next_state1_carry__1
       (.CI(next_state1_carry__0_n_0),
        .CO({next_state1_carry__1_n_0,next_state1_carry__1_n_1,next_state1_carry__1_n_2,next_state1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({next_state1_carry__1_i_1_n_0,next_state1_carry__1_i_2_n_0,next_state1_carry__1_i_3_n_0,next_state1_carry__1_i_4_n_0}),
        .O(NLW_next_state1_carry__1_O_UNCONNECTED[3:0]),
        .S({next_state1_carry__1_i_5_n_0,next_state1_carry__1_i_6_n_0,next_state1_carry__1_i_7_n_0,next_state1_carry__1_i_8_n_0}));
  LUT3 #(
    .INIT(8'h04)) 
    next_state1_carry__1_i_1
       (.I0(\lcd_delay_reg_n_0_[25] ),
        .I1(\lcd_delay_cnst_reg_n_0_[24] ),
        .I2(\lcd_delay_reg_n_0_[24] ),
        .O(next_state1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    next_state1_carry__1_i_2
       (.I0(\lcd_delay_reg_n_0_[23] ),
        .I1(\lcd_delay_cnst_reg_n_0_[24] ),
        .I2(\lcd_delay_reg_n_0_[22] ),
        .O(next_state1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h2A)) 
    next_state1_carry__1_i_3
       (.I0(\lcd_delay_cnst_reg_n_0_[24] ),
        .I1(\lcd_delay_reg_n_0_[21] ),
        .I2(\lcd_delay_reg_n_0_[20] ),
        .O(next_state1_carry__1_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    next_state1_carry__1_i_4
       (.I0(\lcd_delay_cnst_reg_n_0_[19] ),
        .I1(\lcd_delay_reg_n_0_[19] ),
        .I2(\lcd_delay_cnst_reg_n_0_[24] ),
        .I3(\lcd_delay_reg_n_0_[18] ),
        .O(next_state1_carry__1_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    next_state1_carry__1_i_5
       (.I0(\lcd_delay_reg_n_0_[25] ),
        .I1(\lcd_delay_reg_n_0_[24] ),
        .I2(\lcd_delay_cnst_reg_n_0_[24] ),
        .O(next_state1_carry__1_i_5_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    next_state1_carry__1_i_6
       (.I0(\lcd_delay_reg_n_0_[23] ),
        .I1(\lcd_delay_reg_n_0_[22] ),
        .I2(\lcd_delay_cnst_reg_n_0_[24] ),
        .O(next_state1_carry__1_i_6_n_0));
  LUT3 #(
    .INIT(8'h81)) 
    next_state1_carry__1_i_7
       (.I0(\lcd_delay_reg_n_0_[21] ),
        .I1(\lcd_delay_reg_n_0_[20] ),
        .I2(\lcd_delay_cnst_reg_n_0_[24] ),
        .O(next_state1_carry__1_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state1_carry__1_i_8
       (.I0(\lcd_delay_reg_n_0_[19] ),
        .I1(\lcd_delay_cnst_reg_n_0_[19] ),
        .I2(\lcd_delay_reg_n_0_[18] ),
        .I3(\lcd_delay_cnst_reg_n_0_[24] ),
        .O(next_state1_carry__1_i_8_n_0));
  CARRY4 next_state1_carry__2
       (.CI(next_state1_carry__1_n_0),
        .CO({NLW_next_state1_carry__2_CO_UNCONNECTED[3],next_state1_carry__2_n_1,next_state1_carry__2_n_2,next_state1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\lcd_delay_reg_n_0_[31] ,1'b0,1'b0}),
        .O(NLW_next_state1_carry__2_O_UNCONNECTED[3:0]),
        .S({1'b0,next_state1_carry__2_i_1_n_0,next_state1_carry__2_i_2_n_0,next_state1_carry__2_i_3_n_0}));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__2_i_1
       (.I0(\lcd_delay_reg_n_0_[31] ),
        .I1(\lcd_delay_reg_n_0_[30] ),
        .O(next_state1_carry__2_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__2_i_2
       (.I0(\lcd_delay_reg_n_0_[29] ),
        .I1(\lcd_delay_reg_n_0_[28] ),
        .O(next_state1_carry__2_i_2_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    next_state1_carry__2_i_3
       (.I0(\lcd_delay_reg_n_0_[27] ),
        .I1(\lcd_delay_reg_n_0_[26] ),
        .O(next_state1_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h04)) 
    next_state1_carry_i_1
       (.I0(\lcd_delay_reg_n_0_[9] ),
        .I1(\lcd_delay_cnst_reg_n_0_[8] ),
        .I2(\lcd_delay_reg_n_0_[8] ),
        .O(next_state1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h2B)) 
    next_state1_carry_i_2
       (.I0(\lcd_delay_cnst_reg_n_0_[7] ),
        .I1(\lcd_delay_reg_n_0_[7] ),
        .I2(\lcd_delay_reg_n_0_[6] ),
        .O(next_state1_carry_i_2_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    next_state1_carry_i_3
       (.I0(\lcd_delay_cnst_reg_n_0_[8] ),
        .I1(\lcd_delay_reg_n_0_[5] ),
        .I2(\lcd_delay_cnst_reg_n_0_[7] ),
        .I3(\lcd_delay_reg_n_0_[4] ),
        .O(next_state1_carry_i_3_n_0));
  LUT4 #(
    .INIT(16'h22B2)) 
    next_state1_carry_i_4
       (.I0(\lcd_delay_cnst_reg_n_0_[15] ),
        .I1(\lcd_delay_reg_n_0_[3] ),
        .I2(\lcd_delay_cnst_reg_n_0_[7] ),
        .I3(\lcd_delay_reg_n_0_[2] ),
        .O(next_state1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h41)) 
    next_state1_carry_i_5
       (.I0(\lcd_delay_reg_n_0_[9] ),
        .I1(\lcd_delay_reg_n_0_[8] ),
        .I2(\lcd_delay_cnst_reg_n_0_[8] ),
        .O(next_state1_carry_i_5_n_0));
  LUT3 #(
    .INIT(8'h82)) 
    next_state1_carry_i_6
       (.I0(\lcd_delay_reg_n_0_[6] ),
        .I1(\lcd_delay_reg_n_0_[7] ),
        .I2(\lcd_delay_cnst_reg_n_0_[7] ),
        .O(next_state1_carry_i_6_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state1_carry_i_7
       (.I0(\lcd_delay_reg_n_0_[5] ),
        .I1(\lcd_delay_cnst_reg_n_0_[8] ),
        .I2(\lcd_delay_reg_n_0_[4] ),
        .I3(\lcd_delay_cnst_reg_n_0_[7] ),
        .O(next_state1_carry_i_7_n_0));
  LUT4 #(
    .INIT(16'h9009)) 
    next_state1_carry_i_8
       (.I0(\lcd_delay_reg_n_0_[3] ),
        .I1(\lcd_delay_cnst_reg_n_0_[15] ),
        .I2(\lcd_delay_reg_n_0_[2] ),
        .I3(\lcd_delay_cnst_reg_n_0_[7] ),
        .O(next_state1_carry_i_8_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[0] 
       (.C(clk_i),
        .CE(1'b1),
        .D(Inst_i2c_master_n_5),
        .Q(state[0]),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[1] 
       (.C(clk_i),
        .CE(1'b1),
        .D(Inst_i2c_master_n_4),
        .Q(state[1]),
        .R(Inst_i2c_master_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \next_state_reg[2] 
       (.C(clk_i),
        .CE(1'b1),
        .D(Inst_i2c_master_n_3),
        .Q(state[2]),
        .R(Inst_i2c_master_n_0));
  LUT5 #(
    .INIT(32'hFF3F0040)) 
    nibble_sel_i_1
       (.I0(skip_nibble_reg_n_0),
        .I1(state[2]),
        .I2(state[0]),
        .I3(next_state1_carry__2_n_1),
        .I4(nibble_sel_reg_n_0),
        .O(nibble_sel_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    nibble_sel_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(nibble_sel_i_1_n_0),
        .Q(nibble_sel_reg_n_0),
        .R(Inst_i2c_master_n_0));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    skip_nibble_i_1
       (.I0(\lcd_delay_cnst[15]_i_1_n_0 ),
        .I1(state[0]),
        .I2(state[2]),
        .I3(\lcd_delay_cnst[24]_i_2_n_0 ),
        .I4(skip_nibble_reg_n_0),
        .O(skip_nibble_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    skip_nibble_reg
       (.C(clk_i),
        .CE(1'b1),
        .D(skip_nibble_i_1_n_0),
        .Q(skip_nibble_reg_n_0),
        .R(Inst_i2c_master_n_0));
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
