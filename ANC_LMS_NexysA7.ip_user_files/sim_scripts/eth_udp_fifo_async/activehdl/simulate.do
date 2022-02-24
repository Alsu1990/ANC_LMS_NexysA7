onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+eth_udp_fifo_async -L xilinx_vip -L xpm -L fifo_generator_v13_2_5 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.eth_udp_fifo_async xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {eth_udp_fifo_async.udo}

run -all

endsim

quit -force
