//Mult.asm (example of an arithmetic task): The inputs of this program are the values stored in R0
//and R1 (RAM[0] and RAM[1]). The program computes the product R0 * R1 and stores the result in
//R2 (RAM[2]). Assume that R0 ≥ 0, R1 ≥ 0, and R0 * R1 < 32768 (your program need not test these 
//conditions). Your code should not change the values of R0 and R1. The supplied Mult.test script
//and Mult.cmp compare file are designed to test your program on the CPU emulator, using some
//representative R0 and R1 values.

// Store intermediate value in R2
// Store the iterator in M3

// Edgecase: if either R0 or R1 is 0


@1
D=M
@3
M=D
@2
M=0

@0
D=M
@100
D;JEQ
@1
D=M
@100
D;JEQ


@0
D=M
@2
M=D+M

@3
M=M-1 // jump back to beginning of loop and add to R2 if R3 != 0
D=M
@6
D;JNE

//(zero)
    //@2
    //M=0

//(end)
    //@end
    //0;JMP
