onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -L xilinx_vip -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xil_defaultlib -L i2s_receiver_v1_0_5 -L xlconstant_v1_1_7 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.ANC_PROJ_BD xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure
view signals

do {ANC_PROJ_BD.udo}

run -all

quit -force
