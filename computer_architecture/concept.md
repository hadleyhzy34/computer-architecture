## Von Neumann Architecture

### ALU

### fetch-execute cycle 

### CPU

1. CPU interface

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




