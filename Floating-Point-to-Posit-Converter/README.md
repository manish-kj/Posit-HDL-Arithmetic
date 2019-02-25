
Here, we can find the Floating-Point to Posit converter module. It includes following files.

1. FP_to_Posit.v        :       Top-module which takes N (posit word size), E (FP exponent size) and es (posit exponent size) as parameter.
2. DSR_right_N_S.v      :       Dynamic right shifter sub-module.
3. DSR_left_N_S.v       :       Dynamic left shifter sub-module.
4. LOD_N.v              :       Leading-One-Detector sub-module.

Below are the files for test-module with N=32, E=8 and es=4 (User can test for other options).

5. FP_to_Posit_tb.v             : Test-bench module. (Input range is selected to avoid julia exceptional interupt)
6. FP_to_Posit.sh               : A bash script to invoke and run modelsim simulator to run the test-bench.
*. FP_to_posit_out.txt          : It will be generated after simlulation which contains FP input and corresponding Posit output.


7. julia_convert_FP-to-Posit.sh : This is a bash shell script for FP to posit conversion using julia posit package which currently takes FP32_in.txt as input file. Modify accordingly for specific parameters. Julia posit package can be downloaded from https://github.com/interplanetary-robot/SigmoidNumbers

8. FP32_in.txt                  : 32-bit FP Input
