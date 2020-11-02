# Boolean logic

## Boolean Identities for `AND` and `OR`

* commutative laws
* associative laws
* distributive laws
* De Morgan Laws
NOT(x AND y) = NOT(x) OR NOT(y)
NOT(x OR y) = NOT(x) AND NOT(y)



* Boolean Algebra Pratice:

NOT(NOT(x)AND NOT(x OR y))=
NOT(NOT(x)AND (NOT(x)AND NOT(y)))=
NOT(NOT(x)AND NOT(x) AND NOT(y))=
NOT(NOT(x)AND NOT(y))=
NOT(NOT(x)) OR NOT(NOT(y))=
x OR y = NOT(NOT(x)) OR NOT(NOT(y))=NOT(NOT(x) AND NOT(y))
=NOT(NOT(x OR y))



* Theorem:
Any Boolean fcuntion can be represented usign an expression containing `AND` , `OR` and `NOT` expression.

-> `AND` and `NOT` expression by using De Morgan Laws  

NAND(x,y) is defined to be NOT(x AND y)

* Theorem:
Any boolean function can be represented using an expression containing only NAND operations.

1) NOT(x)=(x NAND x)=NOT(x AND x)
2) (x AND y)=NOT(x NAND y)=NOT(NOT(x AND y))

## logic gates

To implement boolean functions
1. Elementary(Nand, And, Or, Not, ...)
2. Composite(Mux, Adder, ...)


Elementary logic gates: NAND

gate diagram:

functional specification: 
if(a==1 and b==1)
then out=0 else out=1

truth table:

| a | b |out|
|---|---|---|
| 0 | 0 | 1 |  
| 0 | 1 | 1 |   
| 1 | 0 | 0 |
| 1 | 1 | 0 |

Gate Interface/Gate Implementation


XOR gates:
truth table

| a | b |out|
|---|---|---|
| 0 | 0 | 0 |  
| 0 | 1 | 1 |   
| 1 | 0 | 1 |
| 1 | 1 | 0 |

general idea:  
out=1 when:
a And NOT(b)
Or
b And NOT(a)

generate diagram/gate interface:
![xor_gates](https://raw.githubusercontent.com/hadleyhzy34/computer-architecture/main/source/xor_gates.png)


HDL interface:
```hdl
CHIP Xor{                      //interface:unique
	IN a,b;
	OUT out;

	PARTS:						//implementation:varies
	Not(in=a,out=nota);
	Not(in=b,out=notb);
	And(a=a,b=notb,out=aAndNotb);
	And(a=nota,b=b,out=notaAndb);
	Or(a=aAndNotb,b=notaAndb,out=out); 
}
```

## Hardware Simulator
```bash
~/Desktop/nand2tetris/tools/HardwareSimulator.sh
```
check and test `Xor.hdl`

## Script-based simulation

check `Xor.tst`

Benefits:
* `automatic` testign
* replicable testing

Hardware construction projects:

* system architects
For each chip, the architect creates
1. a chip API
2. a test script
3. a compare file

* given these resources, the develoeprs can build the chips

## Multi-bit Buses

<!-- adds three 16-bit values -->
Add16(a=first, b=second, out=temp);
Add16(a=temp, b=third, out=out);

<!-- Ands together all 4 bits of the input -->

AND(a=a[0], b=a[1], out=t01);
AND(a=t01, b=a[2], out=t02);
AND(a=t02, b=a[3], out=t03);


<!-- computes a bit-wise and of its two 4-bit  -->
AND(a=a[0], b=b[0], out=out[0]);
AND(a=a[1], b=b[1], out=out[1]);
AND(a=a[2], b=b[2], out=out[2]);

Practice:
This is the interface declaration for an example chip named Example16, which we haven't discussed before:
```
IN c, Bus1[16], Bus2[16];

OUT out, out2[16];
```

Which of these lines are valid in HDL, when implementing the Example16 chip?


1. Add16(a=Bus1[0..15], b=Bus2[0..15], out=out2[0..14]);

Un-selected is correct 
Add16(a=Bus1[0..15], b=Bus2[0..15], out=out2[0..14]);

is not selected.This is correct.

2. Add16(a=Bus1[0..15], b=Bus2[0..15], out[0..14]=out2[0..14]);

Correct 
out[0..14]=out2[0..14] means that we're discarding the most significant bit of Add16's out, and using the rest to connect to the 15 least significant bits of Example16's out2.

3. Add16(a=Bus1[0..15], b=Bus2[0..15], out[0..14]=out2[0..14]);

is selected.This is correct.
out[0..14]=out2[0..14] means that we're discarding the most significant bit of Add16's out, and using the rest to connect to the 15 least significant bits of Example16's out2.


4. Add16(a=true, b=false, out=out2);

Correct 
As was mentioned previously in the lecture, true and false can represent a bus with constant signal of arbitrary width.

Add16(a=true, b=false, out=out2);

is selected.This is correct.
As was mentioned previously in the lecture, true and false can represent a bus with constant signal of arbitrary width.


5. Add16(a=c, b=Bus2[0..15], out=out2);

Un-selected is correct 
Add16(a=c, b=Bus2[0..15], out=out2);

is not selected.This is correct.

And(a=c, b=Bus2[7], out=out);

Correct 
This works, because And expects single bits as input 'a' and 'b'.


## Project
Elementary logic gates:

16-bit variants:

Multi-way variants:


* Multiplexor
input: a, b
output: out

```
if(sel==0)
	out=a
else
	out=b
```

* Demultiplexor

if(sel==0)
	{a,b}={in,0}
else
	{a,b}={0,in}



| in  | sel |  a  |  b  |
| --- | --- | --- | --- |
|  0  |  0  |  0  |  0  |
|  0  |  1  |  0  |  0  | 
|  1  |  0  |  1  |  0  |
|  1  |  1  |  0  |  1  |


Examples:


![mux](https://raw.githubusercontent.com/hadleyhzy34/computer-architecture/main/source/mux_etc.png)

* And16


![and16](https://raw.githubusercontent.com/hadleyhzy34/computer-architecture/main/source/add16.png)

Chip Implementation Notes:
Multi-bit busses are indexed right to left:
If A is a 16-bit bus, then A[0] is the right-most bit, and A[15] is the left-most bit



	




