// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
(START)
    @KBD
    D=M;

    @BLACKEN
    D;JNE

    @LIGHTEN
    D;JEQ

    
    @START // EVEN MORE SAFTEY LOL
    0;JMP

(BLACKEN)

    @SCREEN
    D=A;

    @addr
    M=D;

    (LOOPB)
        
        @addr
        D=M;
        
        @KBD
        D=D-A;
        @START
        D;JEQ

        @addr
        A=M;
        M=-1;
        @addr
        M=M+1;

        @LOOPB
        0;JMP


(LIGHTEN)

    @SCREEN
    D=A;

    @addr
    M=D;

    (LOOPD)
        
        @addr
        D=M;
        
        @KBD
        D=D-A;
        @START
        D;JEQ

        @addr
        A=M;
        M=0;
        @addr
        M=M+1;

        @LOOPD
        0;JMP

(UNREACHABLE)
    @UNREACHABLE
    0;JMP