// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

    @R0
    D=M; // D now holds one of the inputs
    @i
    M=D-1; // initialize a counter with the input; itni baar loop krenge and R2 ka content sum mei add krenge
    @R2
    M=0;
(LOOP)
    
    @i
    D=M;   // idhar i ko 
    M=D-1; // reduce krkr check kr rhe

    @END
    D;JLT

    @R1     // Is part mei 
    D=M;    //  add kr rhe hai R2
    @R2     // mei R1 ki values
    M=M+D;  // 
    
    @LOOP
    0;JMP

(END)
    @END
    0;JMP // Infinite loop !