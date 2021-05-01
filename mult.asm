// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

	@R1
	D=M
	@i
	M=D		// RAM[i]=RAM[1]
	
(LOOP)
	@i
	D=M
	@POSITIVE
	D;JEQ	// if RAM[i]=0 goto POSITIVE
	
	@R0
	D=M
	@sum
	M=M+D	// RAM[sum]=RAM[sum]+RAM[0]
	
	@i
	M=M-1	// RAM[i]=RAM[i]-1
	@LOOP
	0;JMP
	
(POSITIVE)
	@sum
	D=M
	@R2
	M=D		// RAM[2]=RAM[sum]
	
(END)
	@END
	0;JMP