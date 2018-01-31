vlib work

vlog "posit_mult.v" 
vlog "posit_mult_8bit_tb.v"
vlog "DSR_right_N_S.v" 
vlog "LOD_N.v" 
vlog "LZD_N.v" 
vlog "DSR_left_N_S.v"
vlog "data_extract.v"

vsim -t ps work.posit_mult_8bit_tb_v
view wave
add wave *
run -all
