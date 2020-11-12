## Von Neumann Architecture

### ALU

### fetch-execute cycle 

### CPU

1. CPU interface

Input:
inM:
from data memory, data value

instruction:
from instruction memory

reset:
from user

output:

to data memory:
* outM
data value

* writeM
wrtie to memory(yes/no)

* addressM
memory address

to instruction memory:
* pc
address of next instruction


2. CPU Implementation

* instruction handling

1. A instruction

2. C instruction

op-code
alu control bits
destination load bits


3. ALU operation

ALU data input:
D-register
A-register/M-register

ALU control inputs:
control bits

ALU data output:
* result of ALU calculation, fed simultaneously to: D-register, A-register, M-register

* which register actually received the incoming value is determined by the instruction's destination bits.

* output control bits

Reset



Control(abstraction)

PC abstraction
* Emits the address of the next instruction(PC=0)
* no jump: PC++
* goto: PC=A
* conditional goto: PC=A else PC++

PC logic
if(reset==1) PC=0
else
	//current instruction
	load=f(jump bits, ALU control outputs)
	if(load==1)PC=A
	else PC++


Hack CPU Operation

## The Hack Computer
Abstraction:
A computer capable of running programs written in the Hack machine language

Implementation:
build from the hack chip-set

### CPU

* CPU input, output interface

![cpu_interface](https://github.com/hadleyhzy34/computer-architecture/blob/main/source/cpu_interface.png)

* CPU implementation

![cpu_implementation](https://raw.githubusercontent.com/hadleyhzy34/computer-architecture/main/source/cpu_implementation.png)


* Hack CPU Operation

input: inM, instruction, reset
output: outM, writeM, addressM, pc

* jump situation

![control_bits](https://raw.githubusercontent.com/hadleyhzy34/computer-architecture/main/source/control_bits.png)


@100
D=D-1;JEQ

if(reset==0)
	the CPU logic uses the instruction's jump bits and the ALU's output to decide if there should be a jump
	if jump: pc is set to the value of the A-register
	else: pc++
	the updated pc value is emitted by pc
if(reset==1)
	pc is set to 0, pc emits 0(causing a program restart)


### data memory

![memory_implementation](https://raw.githubusercontent.com/hadleyhzy34/computer-architecture/main/source/memory_implementation.png)

address_size = 15
address bits(3bits abstraction map+12 bits address contents)

abstraction:
address 0 to 16383(3FFF): data memory
address 16384(4000) to 24575(5FFF): screen memory map
address 24576(6000): keyboard map




Memory->RAM, Screen(8K memory map), Keyboard

* reset
1. load the program into the ROM
2. press "reset"
3. the program starts running

hardware implementation: plug-and-play ROM chips
hardware simulation: programs are stored in text files; program loading is emulated by the built-in ROM chip

### ROM interface

read only
connect it to pc


### Hack Computer implementation

![ppt_hack](https://raw.githubusercontent.com/hadleyhzy34/computer-architecture/main/source/computer_implementation.png)


































