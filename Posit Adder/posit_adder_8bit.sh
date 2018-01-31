vlib work

#PATH for Xilinx glbl.v file. Edit it for correct location in your system.
vlog "/opt/Xilinx13.2/ISE_DS/ISE/verilog/src/glbl.v"

#All the verilog modules
vlog "posit_adder_8bit_tb.v" 
vlog "posit_adder.v"
vlog "DSR_right_N_S.v" 
vlog "LOD_N.v" 
vlog "LZD_N.v" 
vlog "DSR_left_N_S.v"

vsim -t ps work.posit_adder_8bit_tb_v  work.glbl
view wave
add wave *
run -all
