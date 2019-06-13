********************************************
**IMPORTANT NOTE:
An improved version of "Posit Adder and Multiplier" HDL Generator is provided 
at https://github.com/manish-kj/PACoGen . It also supports "rounding to nearest" method 
along with some other hardware optimizations. It also inlcudes a "posit division generator" 
using Newton-Raphson method. It also provide a set of pipelined architecture HDL code 
for posit adder, multiplier and division.**
********************************************


# Posit-HDL-Arithmetic
"Universal number (Unum) Posit HDL Arithmetic Architecture Generator"

Universal number system is proposed by Prof. Gustafson, which gone through 
a set of advancement as type-1, type-2 and type-3 unum. Posit is proposed 
under type-3 unum system. 

More details on Unum can be sought from http://www.johngustafson.net/unums.html

Here, a parameterized Verilog HDL for Unum Posit number system arithmetic is
under progress. At present, it includes the basic arithmetic of Floating-Point 
to Posit conversion, Posit to Floating-Point conversion, Posit addition/subtraction, 
Posit Multiplication. Addition module can also be used for subtraction, just by
negating second operand.

At current, round-to-zero rounding method is incorporated in these units, which
will be updated for other rounding methods soon.

The Infinity and Not-A-Number (NaN) cases are handled as per the exact Posit
standards as provided in its original paper. According to it, Posit format does
not support/include NaN, which is considered as Infinity in current HDL
generation.

Posit standards are followed from the developer's paper which can be find at
http://www.johngustafson.net/pdfs/BeatingFloatingPoint.pdf


This work is based on following papers. Please refer/cite them if you find this work useful for your research.
1. Manish Kumar Jaiswal and Hayden K.-H. So, "Architecture Generator for Type-3 Unum Posit Adder/Subtractor", IEEE International Symposium on Circuits and Systems (ISCAS 2018), pp. 1-5, Florence, Italy, May 2018.
2. Manish Kumar Jaiswal and Hayden K.-H. So, "Universal Number Posit Arithmetic Generator on FPGA", Design Automation and Test (DATE 2018), pp. 1159-1162, Dresden, Germany, Mar 2018.
