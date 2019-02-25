vlib work

#All Verilog files
vlog "Posit_to_FP.v" 
vlog "Posit_to_FP_tb.v"
vlog "data_extract.v"
vlog "DSR_left_N_S.v"
vlog "DSR_right_N_S.v" 
vlog "LOD_N.v" 
vlog "LZD_N.v" 

vsim -t ps work.Posit_to_FP_tb_v
view wave
add wave *
run -all
