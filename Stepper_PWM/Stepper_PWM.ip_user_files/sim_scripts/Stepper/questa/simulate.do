onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib Stepper_opt

do {wave.do}

view wave
view structure
view signals

do {Stepper.udo}

run -all

quit -force
