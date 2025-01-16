// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, 
// the screen should be cleared.

// White loop doesn't clear

(START)
    @KBD
    D=M
    @BLACK_INIT
    D;JNE // if not equal to 0, then fill black, else white
    @WHITE_INIT
    0;JMP

(BLACK_INIT)
    @SCREEN
    D=A
    @INDEX
    M=D // Wrote initial value here
    
(BLACK_LOOP)
    // ROM[0] is the counter
    @INDEX
    A=M // get address from index into A, which now represents address for M
    M=-1 // Set the current screen location to black
    @INDEX
    M=M+1
    
    // check that index doesn't out of bounds, or that @INDEX < @SCREEN_END
    @SCREEN
    D=A
    @INDEX
    D=M-D
    @BLACK_LOOP
    D;JNE // Continue until all screen locations are set
    // Check if D == SCREEN_END, if so, then jump back to loop, else, jump back to black
    @START
    0;JMP    

(WHITE_INIT)
    @SCREEN
    D=A
    @INDEX
    M=D // Wrote initial value here

(WHITE_LOOP)
    @INDEX
    A=M // get address from index into A, which now represents address for M
    M=0 // Set the current screen location to black
    @INDEX
    M=M+1
    @SCREEN_END
    D=A
    @INDEX
    D=D-M
    @WHITE_LOOP
    D;JGT
    @START
    0;JMP

(END)
    @END
    0;JMP
(SCREEN_END)
    @24575
(INDEX)
    @0