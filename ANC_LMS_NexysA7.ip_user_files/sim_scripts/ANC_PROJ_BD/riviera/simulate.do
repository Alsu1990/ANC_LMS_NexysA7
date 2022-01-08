onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+ANC_PROJ_BD -L xilinx_vip -L xpm -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xil_defaultlib -L i2s_receiver_v1_0_5 -L xlconstant_v1_1_7 -L mii_to_rmii_v2_0_21 -L axi_lite_ipif_v3_0_4 -L blk_mem_gen_v8_4_4 -L lib_bmg_v1_0_13 -L fifo_generator_v13_2_5 -L lib_fifo_v1_0_14 -L axi_ethernetlite_v3_0_23 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ANC_PROJ_BD xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {ANC_PROJ_BD.udo}

run -all

endsim

quit -force
