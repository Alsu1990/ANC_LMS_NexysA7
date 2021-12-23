onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+proc_sys_reset_0 -L xilinx_vip -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.proc_sys_reset_0 xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {proc_sys_reset_0.udo}

run -all

endsim

quit -force
