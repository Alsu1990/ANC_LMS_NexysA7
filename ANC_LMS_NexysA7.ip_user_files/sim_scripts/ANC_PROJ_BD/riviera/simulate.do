onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+ANC_PROJ_BD -L xilinx_vip -L xpm -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L i2s_receiver_v1_0_5 -L xlconstant_v1_1_7 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ANC_PROJ_BD xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {ANC_PROJ_BD.udo}

run -all

endsim

quit -force
