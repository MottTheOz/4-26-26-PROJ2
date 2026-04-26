**Assembly Doubler Program**

This program is written in x86-64 assembly using GAS (GNU Assembler) syntax. It reads an integer from standard input (stdin), doubles its value, and prints the result to standard output (stdout) using standard C library functions (scanf and printf).

_Prerequisites_

To compile and run this code, you must be in a Linux environment (like the course's gl-server) with the gcc compiler installed.

How to Compile (Assemble and Link)

To compile the assembly source code into an executable file, use the GNU C Compiler (gcc). gcc will automatically handle assembling the .s file and linking it with the necessary C standard libraries.

Run the following command in your terminal:

gcc double.s -o double


- double.s is your source file.

- -o double tells the compiler to output an executable named double.

_How to Execute and Test_

Once compiled, you can run the executable from your terminal by using ./ to point to the current directory:

./double


Testing the Program:

Execute the program using ./double.

The program will wait for your input. Type an integer (e.g., 5 or 12) and press Enter.

The program will immediately output the doubled value.

Example Output:

$ ./double
5
The double is: 10


$ ./double
-4
The double is: -8
