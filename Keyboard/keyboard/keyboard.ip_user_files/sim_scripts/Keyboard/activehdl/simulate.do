onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+Keyboard -L xil_defaultlib -L secureip -O5 xil_defaultlib.Keyboard

do {wave.do}

view wave
view structure

do {Keyboard.udo}

run -all

endsim

quit -force
