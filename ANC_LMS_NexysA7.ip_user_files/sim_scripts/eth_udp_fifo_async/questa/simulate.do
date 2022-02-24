onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib eth_udp_fifo_async_opt

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {eth_udp_fifo_async.udo}

run -all

quit -force
