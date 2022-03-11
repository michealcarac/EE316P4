onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Keyboard_opt

do {wave.do}

view wave
view structure
view signals

do {Keyboard.udo}

run -all

quit -force
