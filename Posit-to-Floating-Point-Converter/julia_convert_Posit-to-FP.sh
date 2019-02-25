#!/bin/bash

if ARGS[1] == "--help"
	println("Usgae: julia julia_convert_Posit-to-FP.sh N<size of operands> es<Exp size>")
else
      using SigmoidNumbers
      N = parse(ARGS[1])
       es = parse(ARGS[2])
       PS=Posit{N,es}
       f=open("Posit32_in.txt")
       lines = readlines(f)
       for l = 1:65536
       	x="0x"lines[l]
       	y=parse(x)
       	P=PS(y)
       	F=Float32(P)
       	println(num2hex(F))
       end
end


