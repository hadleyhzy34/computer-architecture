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
![xor_gates]()


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



