onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+ANC_PROJ_BD -L xilinx_vip -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xil_defaultlib -L xlconstant_v1_1_7 -L jtag_axi -L i2s_receiver_v1_0_5 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_24 -L fifo_generator_v13_2_5 -L axi_data_fifo_v2_1_23 -L axi_crossbar_v2_1_25 -L axi_protocol_converter_v2_1_24 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.ANC_PROJ_BD xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {ANC_PROJ_BD.udo}

run -all

endsim

quit -force
