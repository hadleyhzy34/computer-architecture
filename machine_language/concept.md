# Machine Language

high-level language->compiler->machine language

assembly program ->(assembler)-> binary code

assembly program ->(cpu emulator) -> machine language

## difference between machine language, assembly language and high-level language

## Memory Hierarchy->whole sequence of memory

## Register

### register type

### register operation

### register to hardware

### register flow control


## Hack Computer

A-instructions
Syntax: `@value`
Semantics:
* sets the A register to value
* RAM[value] becomes the selected RAM register

c-instructions

M-registers


## input/output

screen memory map

Keyboard memory map


## Hack programming

### Working with registers and memory

```
//D=10
@10
D=A

//D++
D=D+1

//D=RAM[17]
@17
D=M

//RAM[17]=0
@17
M=0

//RAM[17]=10
@10
D=A
@17
M=D

//RAM[5]=RAM[3]
@3
D=M
@5
M=D
```

### Branching

### Variable

```
//temp = R1
//R1 = R0
//R0 = temp

@R1
D=M        //get state from memory register R1
@temp
M=D        //assign D value to memory register temp

@R0
D=M
@R1
M=D         //R1=R0

@temp      
D=M
@R0
M=D         //R0=temp
```

### Iteration

```
//declare and initialize variable
	@R0
	D=M
	@n
	M=D         //n=R0
	@i
	M=1
	@sum
	M=0

//loop
	(loop)

//condition to check if i-n>0, then go to STOP
	@i
	D=M
	@n
	D=D-M
	@STOP
	D;JGT


//sum=sum+i
	@sum
	D=M
	@i
	D=D+M
	@sum
	M=D
	@i
	M=M+1
	@LOOP
	0;JMP

(STOP)
	@sum
	D=M
	@R1
	M=D       //assign sum value to RAM[1]

(END)
	@END
	0;JMP
```

### Pointers

```
//assign value 100 to variable arr
@100
D=A
@arr
M=D

//assign value 10 to variable n
@10
D=A
@n
M=D

//initialize i=0
@i
M=0

//code continues
(LOOP)
	//if(i==n)goto END
	@i
	D=M
	@n
	D=D-M
	@END
	D;JEQ

	//RAM[arr+i]=-1
	@arr
	D=M
	@i
	A=D+M//set current A register to arr+i, which also selected RAM[arr+i]
	M=-1

	//i++
	@i
	M=M+1

	@LOOP
	0;JMP

(END)
	@END
	0;JMP
```

### Input/output

I/O example: draw a rectangle

* Handling the screen
```

```

* Handling the Keyboard

1. Read the contents of RAM[24576](address  KBD)
2. If the register contains 0, no key is pressed
3. Otherwise, the register contains the scan code of the currently pressed key




