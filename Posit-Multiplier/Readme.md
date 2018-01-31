# Posit Multiplier HDL Arithmetic:

Here, we can find the Posit Multiplier module. It includes following files.

1. posit_mult.v         :       Top-module which takes N (posit word size) and es (posit exponent size).
2. data_extract.v       :       Posit data extract sub-module.
3. DSR_right_N_S.v      :       Dynamic right shifter sub-module.
4. DSR_left_N_S.v       :       Dynamic left shifter sub-module.
5. LOD_N.v              :       Leading-One-Detector sub-module.
6. LZD_N.v              :       Leading-Zero-Detector sub-module.

Below are the files for test-module for posit mult with N=8, ES=4 (User can test for other options).
It is an all exhaustive test for 8-bit operands (excluding Infinity multiplications to avoid comparision with julia pachage interupts for them).

7. posit_mult_8bit_tb.v : Test-bench module.
8. posit_mult_8bit.sh           : A bash script to invoke and run modelsim simulator to run the test-bench.
9. Pin1_8bit.txt                : Input-1 8-bit (Infinity multiplications are removed to avoid interupt from corresponding julia result comparisions)
10. Pin2_8bit.txt               : Input-2 8-bit (Infinity multiplications are removed to avoid interupt from corresponding julia result comparisions)
11. Pout_8bit_ES4.txt           : Pre-stored posit multiplication results for comparison purpose.

**. error_8bit.txt              : File will be generated during simulation which contains the difference of
                                result produce by the Verilog module with pre-stored posit addition results.


12. julia_posit8_mult.sh        : This is a bash shell script for posit addition using julia posit package. It is currently using 8-bit inputs.
                                  Julia posit package can be downloaded from https://github.com/interplanetary-robot/SigmoidNumbers
