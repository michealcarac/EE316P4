
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:062default:default2
00:00:072default:default2
378.2972default:default2
83.8442default:defaultZ17-268h px? 
v
Command: %s
53*	vivadotcl2E
1synth_design -top top_level -part xc7z010clg400-12default:defaultZ4-113h px? 
:
Starting synth_design
149*	vivadotclZ4-321h px? 
?
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-347h px? 
?
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7z0102default:defaultZ17-349h px? 
V
Loading part %s157*device2#
xc7z010clg400-12default:defaultZ21-403h px? 
?
%s*synth2?
xStarting RTL Elaboration : Time (s): cpu = 00:00:08 ; elapsed = 00:00:09 . Memory (MB): peak = 818.582 ; gain = 177.312
2default:defaulth px? 
?
synthesizing module '%s'638*oasys2
	top_level2default:default2I
3C:/Users/sixpe/Documents/EE316P4/UART/top_level.vhd2default:default2
152default:default8@Z8-638h px? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
i2c_user_lcd2default:default2J
6C:/Users/sixpe/Documents/EE316P4/UART/i2c_user_lcd.vhd2default:default2
62default:default2"
Inst_top_level2default:default2 
I2C_User_LCD2default:default2I
3C:/Users/sixpe/Documents/EE316P4/UART/top_level.vhd2default:default2
952default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
i2c_user_lcd2default:default2L
6C:/Users/sixpe/Documents/EE316P4/UART/i2c_user_lcd.vhd2default:default2
222default:default8@Z8-638h px? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2

i2c_master2default:default2H
4C:/Users/sixpe/Documents/EE316P4/UART/I2C_Master.vhd2default:default2
362default:default2#
Inst_i2c_master2default:default2

i2c_master2default:default2L
6C:/Users/sixpe/Documents/EE316P4/UART/i2c_user_lcd.vhd2default:default2
692default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2

i2c_master2default:default2J
4C:/Users/sixpe/Documents/EE316P4/UART/I2C_Master.vhd2default:default2
542default:default8@Z8-638h px? 
f
%s
*synth2N
:	Parameter input_clk bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter bus_clk bound to: 100000 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2

i2c_master2default:default2
12default:default2
12default:default2J
4C:/Users/sixpe/Documents/EE316P4/UART/I2C_Master.vhd2default:default2
542default:default8@Z8-256h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2

first_line2default:default2L
6C:/Users/sixpe/Documents/EE316P4/UART/i2c_user_lcd.vhd2default:default2
1872default:default8@Z8-614h px? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
second_line2default:default2L
6C:/Users/sixpe/Documents/EE316P4/UART/i2c_user_lcd.vhd2default:default2
1872default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
i2c_user_lcd2default:default2
22default:default2
12default:default2L
6C:/Users/sixpe/Documents/EE316P4/UART/i2c_user_lcd.vhd2default:default2
222default:default8@Z8-256h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter ps2_debounce_counter_size bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2)
ps2_keyboard_to_ascii2default:default2W
CC:/Users/sixpe/Documents/EE316P4/Keyboard/ps2_keyboard_to_ascii.vhd2default:default2
262default:default2!
Inst_keyboard2default:default2)
ps2_keyboard_to_ascii2default:default2I
3C:/Users/sixpe/Documents/EE316P4/UART/top_level.vhd2default:default2
1042default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2)
ps2_keyboard_to_ascii2default:default2Y
CC:/Users/sixpe/Documents/EE316P4/Keyboard/ps2_keyboard_to_ascii.vhd2default:default2
382default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
n
%s
*synth2V
B	Parameter ps2_debounce_counter_size bound to: 9 - type: integer 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter debounce_counter_size bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2 
ps2_keyboard2default:default2N
:C:/Users/sixpe/Documents/EE316P4/Keyboard/ps2_keyboard.vhd2default:default2
262default:default2"
ps2_keyboard_02default:default2 
ps2_keyboard2default:default2Y
CC:/Users/sixpe/Documents/EE316P4/Keyboard/ps2_keyboard_to_ascii.vhd2default:default2
692default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2 
ps2_keyboard2default:default2P
:C:/Users/sixpe/Documents/EE316P4/Keyboard/ps2_keyboard.vhd2default:default2
382default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
j
%s
*synth2R
>	Parameter debounce_counter_size bound to: 9 - type: integer 
2default:defaulth p
x
? 
a
%s
*synth2I
5	Parameter counter_size bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
debounce2default:default2J
6C:/Users/sixpe/Documents/EE316P4/Keyboard/debounce.vhd2default:default2
272default:default2$
debounce_ps2_clk2default:default2
debounce2default:default2P
:C:/Users/sixpe/Documents/EE316P4/Keyboard/ps2_keyboard.vhd2default:default2
672default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
debounce2default:default2L
6C:/Users/sixpe/Documents/EE316P4/Keyboard/debounce.vhd2default:default2
362default:default8@Z8-638h px? 
a
%s
*synth2I
5	Parameter counter_size bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
debounce2default:default2
32default:default2
12default:default2L
6C:/Users/sixpe/Documents/EE316P4/Keyboard/debounce.vhd2default:default2
362default:default8@Z8-256h px? 
a
%s
*synth2I
5	Parameter counter_size bound to: 9 - type: integer 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
debounce2default:default2J
6C:/Users/sixpe/Documents/EE316P4/Keyboard/debounce.vhd2default:default2
272default:default2%
debounce_ps2_data2default:default2
debounce2default:default2P
:C:/Users/sixpe/Documents/EE316P4/Keyboard/ps2_keyboard.vhd2default:default2
702default:default8@Z8-3491h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2 
ps2_keyboard2default:default2
42default:default2
12default:default2P
:C:/Users/sixpe/Documents/EE316P4/Keyboard/ps2_keyboard.vhd2default:default2
382default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2)
ps2_keyboard_to_ascii2default:default2
52default:default2
12default:default2Y
CC:/Users/sixpe/Documents/EE316P4/Keyboard/ps2_keyboard_to_ascii.vhd2default:default2
382default:default8@Z8-256h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter baud_rate bound to: 115200 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter os_rate bound to: 16 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter d_width bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter parity bound to: 0 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter parity_eo bound to: 1'b0 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
	uart_user2default:default2G
3C:/Users/sixpe/Documents/EE316P4/UART/uart_user.vhd2default:default2
42default:default2
	Inst_Uart2default:default2
	Uart_User2default:default2I
3C:/Users/sixpe/Documents/EE316P4/UART/top_level.vhd2default:default2
1132default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
	uart_user2default:default2I
3C:/Users/sixpe/Documents/EE316P4/UART/uart_user.vhd2default:default2
262default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter baud_rate bound to: 115200 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter os_rate bound to: 16 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter d_width bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter parity bound to: 0 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter parity_eo bound to: 1'b0 
2default:defaulth p
x
? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter baud_rate bound to: 115200 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter os_rate bound to: 16 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter d_width bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter parity bound to: 0 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter parity_eo bound to: 1'b0 
2default:defaulth p
x
? 
?
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
uart2default:default2B
.C:/Users/sixpe/Documents/EE316P4/UART/uart.vhd2default:default2
282default:default2$
Inst_uart_master2default:default2
uart2default:default2I
3C:/Users/sixpe/Documents/EE316P4/UART/uart_user.vhd2default:default2
682default:default8@Z8-3491h px? 
?
synthesizing module '%s'638*oasys2
uart2default:default2D
.C:/Users/sixpe/Documents/EE316P4/UART/uart.vhd2default:default2
492default:default8@Z8-638h px? 
e
%s
*synth2M
9	Parameter clk_freq bound to: 125000000 - type: integer 
2default:defaulth p
x
? 
c
%s
*synth2K
7	Parameter baud_rate bound to: 115200 - type: integer 
2default:defaulth p
x
? 
]
%s
*synth2E
1	Parameter os_rate bound to: 16 - type: integer 
2default:defaulth p
x
? 
\
%s
*synth2D
0	Parameter d_width bound to: 8 - type: integer 
2default:defaulth p
x
? 
[
%s
*synth2C
/	Parameter parity bound to: 0 - type: integer 
2default:defaulth p
x
? 
Q
%s
*synth29
%	Parameter parity_eo bound to: 1'b0 
2default:defaulth p
x
? 
?
Esignal '%s' is read in the process but is not in the sensitivity list614*oasys2
os_pulse2default:default2D
.C:/Users/sixpe/Documents/EE316P4/UART/uart.vhd2default:default2
952default:default8@Z8-614h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
uart2default:default2
62default:default2
12default:default2D
.C:/Users/sixpe/Documents/EE316P4/UART/uart.vhd2default:default2
492default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	uart_user2default:default2
72default:default2
12default:default2I
3C:/Users/sixpe/Documents/EE316P4/UART/uart_user.vhd2default:default2
262default:default8@Z8-256h px? 
?
%done synthesizing module '%s' (%s#%s)256*oasys2
	top_level2default:default2
82default:default2
12default:default2I
3C:/Users/sixpe/Documents/EE316P4/UART/top_level.vhd2default:default2
152default:default8@Z8-256h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[7]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[6]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[5]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[4]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[3]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[2]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
ja[7]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
ja[6]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
ja[5]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
ja[4]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
btn[1]2default:defaultZ8-3331h px? 
?
%s*synth2?
xFinished RTL Elaboration : Time (s): cpu = 00:00:11 ; elapsed = 00:00:13 . Memory (MB): peak = 883.090 ; gain = 241.820
2default:defaulth px? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 883.090 ; gain = 241.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:12 ; elapsed = 00:00:13 . Memory (MB): peak = 883.090 ; gain = 241.820
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
>

Processing XDC Constraints
244*projectZ1-262h px? 
=
Initializing timing engine
348*projectZ1-569h px? 
?
Parsing XDC File [%s]
179*designutils2Q
;C:/Users/sixpe/Documents/EE316P4/UART/Cora-Z7-10-Master.xdc2default:default8Z20-179h px? 
?
Finished Parsing XDC File [%s]
178*designutils2Q
;C:/Users/sixpe/Documents/EE316P4/UART/Cora-Z7-10-Master.xdc2default:default8Z20-178h px? 
?
?Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2O
;C:/Users/sixpe/Documents/EE316P4/UART/Cora-Z7-10-Master.xdc2default:default2/
.Xil/top_level_propImpl.xdc2default:defaultZ1-236h px? 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1013.9732default:default2
0.0002default:defaultZ17-268h px? 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0352default:default2
1013.9732default:default2
0.0002default:defaultZ17-268h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
Finished Constraint Validation : Time (s): cpu = 00:00:27 ; elapsed = 00:00:30 . Memory (MB): peak = 1013.973 ; gain = 372.703
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Loading part: xc7z010clg400-1
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Loading Part and Timing Information : Time (s): cpu = 00:00:27 ; elapsed = 00:00:30 . Memory (MB): peak = 1013.973 ; gain = 372.703
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:27 ; elapsed = 00:00:30 . Memory (MB): peak = 1013.973 ; gain = 372.703
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2

i2c_master2default:defaultZ8-802h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2)
ps2_keyboard_to_ascii2default:defaultZ8-802h px? 
u
8ROM "%s" won't be mapped to RAM because it is too sparse3998*oasys2
ascii2default:defaultZ8-5546h px? 
?
3inferred FSM for state register '%s' in module '%s'802*oasys2"
next_state_reg2default:default2
	uart_user2default:defaultZ8-802h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   ready |                        000000001 |                             0000
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                        000000010 |                             0001
2default:defaulth p
x
? 
?
%s
*synth2s
_                 command |                        000000100 |                             0010
2default:defaulth p
x
? 
?
%s
*synth2s
_                slv_ack1 |                        000001000 |                             0011
2default:defaulth p
x
? 
?
%s
*synth2s
_                      wr |                        000010000 |                             0100
2default:defaulth p
x
? 
?
%s
*synth2s
_                slv_ack2 |                        000100000 |                             0110
2default:defaulth p
x
? 
?
%s
*synth2s
_                      rd |                        001000000 |                             0101
2default:defaulth p
x
? 
?
%s
*synth2s
_                mstr_ack |                        010000000 |                             0111
2default:defaulth p
x
? 
?
%s
*synth2s
_                    stop |                        100000000 |                             1000
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2
one-hot2default:default2

i2c_master2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   ready |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                new_code |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_               translate |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2s
_                  output |                               11 |                               11
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2)
ps2_keyboard_to_ascii2default:defaultZ8-3354h px? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2s
_                   start |                               00 |                               00
2default:defaulth p
x
? 
?
%s
*synth2s
_                   ready |                               01 |                               01
2default:defaulth p
x
? 
?
%s
*synth2s
_                 write_0 |                               10 |                               10
2default:defaulth p
x
? 
?
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2"
next_state_reg2default:default2

sequential2default:default2
	uart_user2default:defaultZ8-3354h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:30 ; elapsed = 00:00:33 . Memory (MB): peak = 1013.973 ; gain = 372.703
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 39    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 38    
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 16    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  22 Input      8 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  35 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  27 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  34 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  33 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 10    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 32    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 39    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Y
%s
*synth2A
-Start RTL Hierarchical Component Statistics 
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Hierarchical RTL Component report 
2default:defaulth p
x
? 
>
%s
*synth2&
Module top_level 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 32    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 2     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 32    
2default:defaulth p
x
? 
?
%s
*synth2'
Module i2c_master 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   6 Input      1 Bit        Muxes := 3     
2default:defaulth p
x
? 
A
%s
*synth2)
Module i2c_user_lcd 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit       Adders := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               32 Bit    Registers := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                6 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                3 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 5     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input     32 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     32 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      6 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      1 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   8 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  10 Input      1 Bit        Muxes := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
Module debounce 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit       Adders := 1     
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
A
%s
*synth2)
Module ps2_keyboard 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   9 Input      1 Bit         XORs := 1     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                2 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 1     
2default:defaulth p
x
? 
J
%s
*synth22
Module ps2_keyboard_to_ascii 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 9     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      8 Bit        Muxes := 11    
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  22 Input      8 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  35 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      8 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  27 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      8 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  34 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   7 Input      3 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	  33 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   5 Input      1 Bit        Muxes := 5     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 9     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 4     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   4 Input      1 Bit        Muxes := 7     
2default:defaulth p
x
? 
9
%s
*synth2!
Module uart 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit       Adders := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit       Adders := 4     
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               11 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	               10 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                9 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                8 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                7 Bit    Registers := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                4 Bit    Registers := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 8     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     11 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input     10 Bit        Muxes := 3     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      9 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      7 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      4 Bit        Muxes := 6     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      1 Bit        Muxes := 12    
2default:defaulth p
x
? 
>
%s
*synth2&
Module uart_user 
2default:defaulth p
x
? 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
? 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	                1 Bit    Registers := 3     
2default:defaulth p
x
? 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      2 Bit        Muxes := 1     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   2 Input      2 Bit        Muxes := 2     
2default:defaulth p
x
? 
Z
%s
*synth2B
.	   3 Input      1 Bit        Muxes := 2     
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
[
%s
*synth2C
/Finished RTL Hierarchical Component Statistics
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2j
VPart Resources:
DSPs: 80 (col length:40)
BRAMs: 120 (col length: RAMB18 40 RAMB36 20)
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
]
%s
*synth2E
1Warning: Parallel synthesis criteria is not met 
2default:defaulth p
x
? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[7]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[6]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[5]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[4]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[3]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
jb[2]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
ja[7]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
ja[6]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
ja[5]2default:defaultZ8-3331h px? 
}
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
ja[4]2default:defaultZ8-3331h px? 
~
!design %s has unconnected port %s3331*oasys2
	top_level2default:default2
btn[1]2default:defaultZ8-3331h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$Inst_top_level/lcd_delay_cnst_reg[0]2default:default2
FDE2default:default28
$Inst_top_level/lcd_delay_cnst_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$Inst_top_level/lcd_delay_cnst_reg[1]2default:default2
FDE2default:default28
$Inst_top_level/lcd_delay_cnst_reg[9]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$Inst_top_level/lcd_delay_cnst_reg[2]2default:default2
FDE2default:default28
$Inst_top_level/lcd_delay_cnst_reg[4]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$Inst_top_level/lcd_delay_cnst_reg[3]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[15]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$Inst_top_level/lcd_delay_cnst_reg[4]2default:default2
FDE2default:default28
$Inst_top_level/lcd_delay_cnst_reg[7]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$Inst_top_level/lcd_delay_cnst_reg[5]2default:default2
FDE2default:default28
$Inst_top_level/lcd_delay_cnst_reg[8]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2:
&\Inst_top_level/lcd_delay_cnst_reg[6] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys28
$Inst_top_level/lcd_delay_cnst_reg[9]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[10]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[10]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[17]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[11]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[16]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[17]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[23]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[18]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[20]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[20]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[21]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[21]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[22]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[22]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[24]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[23]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[25]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[25]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[26]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[26]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[27]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[27]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[28]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[28]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[29]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[29]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[30]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys29
%Inst_top_level/lcd_delay_cnst_reg[30]2default:default2
FDE2default:default29
%Inst_top_level/lcd_delay_cnst_reg[31]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2;
'\Inst_top_level/lcd_delay_cnst_reg[31] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-Inst_top_level/Inst_i2c_master/data_tx_reg[3]2default:default2
FDE2default:default2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[1]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-Inst_top_level/Inst_i2c_master/data_tx_reg[1]2default:default2
FDE2default:default2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[5]2default:default2
FDE2default:default2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[7]2default:default2
FDE2default:default2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[0]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[0]2default:default2
FDE2default:default2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[4]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
02default:default2C
/\Inst_top_level/Inst_i2c_master/addr_rw_reg[4] 2default:defaultZ8-3333h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[1]2default:default2
FDE2default:default2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[2]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[2]2default:default2
FDE2default:default2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[3]2default:defaultZ8-3886h px? 
?
"merging instance '%s' (%s) to '%s'3436*oasys2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[3]2default:default2
FDE2default:default2A
-Inst_top_level/Inst_i2c_master/addr_rw_reg[6]2default:defaultZ8-3886h px? 
?
6propagating constant %s across sequential element (%s)3333*oasys2
12default:default2C
/\Inst_top_level/Inst_i2c_master/addr_rw_reg[6] 2default:defaultZ8-3333h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:46 ; elapsed = 00:00:49 . Memory (MB): peak = 1013.973 ; gain = 372.703
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:04 ; elapsed = 00:01:09 . Memory (MB): peak = 1013.973 ; gain = 372.703
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
}Finished Timing Optimization : Time (s): cpu = 00:01:10 ; elapsed = 00:01:14 . Memory (MB): peak = 1027.887 ; gain = 386.617
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2J
6Inst_top_level/Inst_i2c_master/FSM_onehot_state_reg[7]2default:default2
	top_level2default:defaultZ8-3332h px? 
?
ESequential element (%s) is unused and will be removed from module %s.3332*oasys2J
6Inst_top_level/Inst_i2c_master/FSM_onehot_state_reg[6]2default:default2
	top_level2default:defaultZ8-3332h px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
|Finished Technology Mapping : Time (s): cpu = 00:01:11 ; elapsed = 00:01:16 . Memory (MB): peak = 1036.949 ; gain = 395.680
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
vFinished IO Insertion : Time (s): cpu = 00:01:16 ; elapsed = 00:01:21 . Memory (MB): peak = 1038.762 ; gain = 397.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
D
%s
*synth2,

Report Check Netlist: 
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|      |Item              |Errors |Warnings |Status |Description       |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
u
%s
*synth2]
I|1     |multi_driven_nets |      0|        0|Passed |Multi driven nets |
2default:defaulth p
x
? 
u
%s
*synth2]
I+------+------------------+-------+---------+-------+------------------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Instances : Time (s): cpu = 00:01:16 ; elapsed = 00:01:21 . Memory (MB): peak = 1038.762 ; gain = 397.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
E
%s
*synth2-

Report RTL Partitions: 
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
+| |RTL Partition |Replication |Instances |
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
W
%s
*synth2?
++-+--------------+------------+----------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:16 ; elapsed = 00:01:21 . Memory (MB): peak = 1038.762 ; gain = 397.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Ports : Time (s): cpu = 00:01:16 ; elapsed = 00:01:22 . Memory (MB): peak = 1038.762 ; gain = 397.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Handling Custom Attributes : Time (s): cpu = 00:01:16 ; elapsed = 00:01:22 . Memory (MB): peak = 1038.762 ; gain = 397.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Renaming Generated Nets : Time (s): cpu = 00:01:16 ; elapsed = 00:01:22 . Memory (MB): peak = 1038.762 ; gain = 397.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
? 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px? 
D
%s*synth2,
|2     |CARRY4 |    19|
2default:defaulth px? 
D
%s*synth2,
|3     |LUT1   |    14|
2default:defaulth px? 
D
%s*synth2,
|4     |LUT2   |    83|
2default:defaulth px? 
D
%s*synth2,
|5     |LUT3   |    45|
2default:defaulth px? 
D
%s*synth2,
|6     |LUT4   |    65|
2default:defaulth px? 
D
%s*synth2,
|7     |LUT5   |    53|
2default:defaulth px? 
D
%s*synth2,
|8     |LUT6   |   252|
2default:defaulth px? 
D
%s*synth2,
|9     |MUXF7  |    21|
2default:defaulth px? 
D
%s*synth2,
|10    |MUXF8  |     5|
2default:defaulth px? 
D
%s*synth2,
|11    |FDCE   |    62|
2default:defaulth px? 
D
%s*synth2,
|12    |FDPE   |     8|
2default:defaulth px? 
D
%s*synth2,
|13    |FDRE   |   408|
2default:defaulth px? 
D
%s*synth2,
|14    |FDSE   |    32|
2default:defaulth px? 
D
%s*synth2,
|15    |IBUF   |     5|
2default:defaulth px? 
D
%s*synth2,
|16    |IOBUF  |     1|
2default:defaulth px? 
D
%s*synth2,
|17    |OBUF   |     1|
2default:defaulth px? 
D
%s*synth2,
|18    |OBUFT  |     1|
2default:defaulth px? 
D
%s*synth2,
+------+-------+------+
2default:defaulth px? 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
? 
l
%s
*synth2T
@+------+------------------------+----------------------+------+
2default:defaulth p
x
? 
l
%s
*synth2T
@|      |Instance                |Module                |Cells |
2default:defaulth p
x
? 
l
%s
*synth2T
@+------+------------------------+----------------------+------+
2default:defaulth p
x
? 
l
%s
*synth2T
@|1     |top                     |                      |  1076|
2default:defaulth p
x
? 
l
%s
*synth2T
@|2     |  Inst_Uart             |uart_user             |   169|
2default:defaulth p
x
? 
l
%s
*synth2T
@|3     |    Inst_uart_master    |uart                  |   126|
2default:defaulth p
x
? 
l
%s
*synth2T
@|4     |  Inst_keyboard         |ps2_keyboard_to_ascii |   247|
2default:defaulth p
x
? 
l
%s
*synth2T
@|5     |    ps2_keyboard_0      |ps2_keyboard          |   218|
2default:defaulth p
x
? 
l
%s
*synth2T
@|6     |      debounce_ps2_clk  |debounce              |    28|
2default:defaulth p
x
? 
l
%s
*synth2T
@|7     |      debounce_ps2_data |debounce_0            |    27|
2default:defaulth p
x
? 
l
%s
*synth2T
@|8     |  Inst_top_level        |i2c_user_lcd          |   374|
2default:defaulth p
x
? 
l
%s
*synth2T
@|9     |    Inst_i2c_master     |i2c_master            |   217|
2default:defaulth p
x
? 
l
%s
*synth2T
@+------+------------------------+----------------------+------+
2default:defaulth p
x
? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
?
%s*synth2?
?Finished Writing Synthesis Report : Time (s): cpu = 00:01:16 ; elapsed = 00:01:22 . Memory (MB): peak = 1038.762 ; gain = 397.492
2default:defaulth px? 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
? 
s
%s
*synth2[
GSynthesis finished with 0 errors, 0 critical warnings and 13 warnings.
2default:defaulth p
x
? 
?
%s
*synth2?
Synthesis Optimization Runtime : Time (s): cpu = 00:00:59 ; elapsed = 00:01:14 . Memory (MB): peak = 1038.762 ; gain = 266.609
2default:defaulth p
x
? 
?
%s
*synth2?
?Synthesis Optimization Complete : Time (s): cpu = 00:01:17 ; elapsed = 00:01:22 . Memory (MB): peak = 1038.762 ; gain = 397.492
2default:defaulth p
x
? 
B
 Translating synthesized netlist
350*projectZ1-571h px? 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
462default:defaultZ29-17h px? 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px? 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px? 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1039.0312default:default2
0.0002default:defaultZ17-268h px? 
?
!Unisim Transformation Summary:
%s111*project2k
W  A total of 1 instances were transformed.
  IOBUF => IOBUF (IBUF, OBUFT): 1 instances
2default:defaultZ1-111h px? 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px? 
?
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
762default:default2
272default:default2
02default:default2
02default:defaultZ4-41h px? 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:292default:default2
00:01:502default:default2
1039.0312default:default2
660.7342default:defaultZ17-268h px? 
?
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1039.0312default:default2
0.0002default:defaultZ17-268h px? 
K
"No constraints selected for write.1103*constraintsZ18-5210h px? 
?
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2^
JC:/Users/sixpe/Documents/EE316P4/UART/UART/UART.runs/synth_1/top_level.dcp2default:defaultZ17-1381h px? 
?
%s4*runtcl2|
hExecuting : report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pb
2default:defaulth px? 
?
Exiting %s at %s...
206*common2
Vivado2default:default2,
Tue Mar 22 15:21:56 20222default:defaultZ17-206h px? 


End Record