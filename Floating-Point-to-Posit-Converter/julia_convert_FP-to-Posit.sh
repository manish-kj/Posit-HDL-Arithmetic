#!/bin/bash

#Convert Single Precision Floating Point to Posit
#Usage: julia julia_convert_FP-to-Posit.sh N<word size> es<exponent size> 

function FP_to_posit(y)
	z1=hex2num(y)
	z2=Float32(z1)
	println(PS(z2))
end

typealias Float Float32
using SigmoidNumbers
N = parse(ARGS[1])
es = parse(ARGS[2])
PS = Posit{N,es}
f=open("FP32_in.txt")
lines = readlines(f)
for l = 1:32512
	x1="0x"lines[l]
	x2=parse(UInt32, x1)
	FP_to_posit(hex(x2))
end


