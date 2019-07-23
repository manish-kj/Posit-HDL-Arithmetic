Here, we can find the Posit to Floating-Point converter module. It includes following files.

1. Posit_to_FP.v 	:	Top-module which takes N (posit word size), E (FP exponent size) and es (posit exponent size) as parameter.
2. DSR_right_N_S.v	:	Dynamic right shifter sub-module.
3. DSR_left_N_S.v	:	Dynamic left shifter sub-module.
4. LOD_N.v		:	Leading-One-Detector sub-module.
4. LZD_N.v		:	Leading-One-Detector sub-module.
5. data_extract.v	: 	Posit data extraction sub-module.

Below are the files for test-module with N=32, E=8 and es=3 (User can test for other options). 
5. Posit_to_FP_tb.v		: Test-bench module. (Input range is selected to avoid julia exceptional interupt)
6. Posit_to_FP.sh		: A bash script to invoke and run modelsim simulator to run the test-bench.
*. Posit_to_FP_out.txt		: It will be generated after simlulation which contains 32-bit Posit input and corresponding 32-bit Floating-Point output.


7. julia_convert_Posit-to-FP.sh	: This is a bash shell script for FP to posit conversion using julia posit package which currently takes "Posit32_in.txt" as posit input file. 
				 Modify accordingly for specific parameters.
				 Julia posit package can be downloaded from https://github.com/interplanetary-robot/SigmoidNumbers
8. Posit32_in.txt		: 32-bit Posit Inputs
