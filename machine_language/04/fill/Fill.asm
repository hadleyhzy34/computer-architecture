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

@SCREEN
D=A
@Position
M=D-1


(CHECK)
@KBD
D=M 	//read keyboard input
@BLACKEN //if key value is gt 0, go to blacken
D;JGT
@WHITEN   //else go to whiten
0;JMP  

//blacken screen
(BLACKEN)
//if position is at max of the screen, do nothing
@24576
D=M
@Position
D=D-M
@CHECK
D;JEQ

//else start blacken
@Position
A=M
M=-1

//go to next position
@Position
D=M+1
@Position
M=D


//go to check if user is still hold the key
@CHECK
0;JMP

//start whiten the screen
(WHITEN)
@SCREEN
D=A-1
@Position
D=D-M
@check
D;JEQ

//else start whiten
@Position
A=M
M=0

//draw back position
@Position
D=M-1
@Position
M=D

//check if there's any key pressed by user
@CHECK
0;JMP