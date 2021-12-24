onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib ANC_PROJ_BD_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ANC_PROJ_BD.udo}

run -all

quit -force
