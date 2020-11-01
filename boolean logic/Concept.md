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

x Or y = 


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





