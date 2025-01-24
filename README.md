# Assembly Code Bug: Potential Buffer Overflow

This repository demonstrates a potential buffer overflow bug in a short assembly code snippet.  The code attempts to access memory using an address calculation based on the values in EBX and ECX registers.  If the value of ECX is sufficiently large, this calculation can result in an address that is outside the bounds of allocated memory. This will lead to a segmentation fault or other memory access violation.

The bug is in the lack of any bounds checking on the ECX register before performing the memory access.  The solution demonstrates a corrected version of the code which incorporates a check to prevent out-of-bounds access.

## How to Reproduce

1. Assemble and link the code in `bug.asm`. 
2. Run the resulting executable.  You may need to provide test values for EBX and ECX that will trigger the overflow.  (Note:  The exact values that cause an error will be dependent on your system's memory allocation and architecture.)

## Solution

The solution provided in `bugSolution.asm` incorporates a check to ensure that the calculated address remains within valid boundaries. This check prevents the program from attempting to access memory outside its permitted space.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.