vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vcom -work xil_defaultlib -64 -93 \
"../../../../keyboard.srcs/sources_1/bd/Keyboard/ip/Keyboard_ps2_keyboard_to_ascii_0_0/sim/Keyboard_ps2_keyboard_to_ascii_0_0.vhd" \
"../../../../keyboard.srcs/sources_1/bd/Keyboard/ip/Keyboard_i2c_user_lcd_0_0/sim/Keyboard_i2c_user_lcd_0_0.vhd" \
"../../../../keyboard.srcs/sources_1/bd/Keyboard/ip/Keyboard_main_0_0/sim/Keyboard_main_0_0.vhd" \
"../../../../keyboard.srcs/sources_1/bd/Keyboard/sim/Keyboard.vhd" \


