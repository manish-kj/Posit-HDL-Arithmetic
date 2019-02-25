vlib work

#Path to Xilinx glbl.v file"
vlog "/opt/Xilinx13.2/ISE_DS/ISE/verilog/src/glbl.v"

#List of Verilog files
vlog "FP_to_posit.v" 
vlog "FP_to_posit_tb.v"
vlog "DSR_right_N_S.v" 
vlog "LOD_N.v" 
vlog "DSR_left_N_S.v"

vsim -t ps work.FP_to_posit_tb_v  work.glbl
view wave
add wave *
run -all
