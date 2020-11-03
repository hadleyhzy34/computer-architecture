# ALU

## Binary numbers Representation

## Binary Addition


1. Half Adder, two bits addition
![half_adder]()

2. Full Adder, three bits addition
![full_adder]()


3. Implementation multi-bit adder using full adder

## Negative Number
1. First bit is -/+, all other bits represent a positive number

2. 2's Complement

| Binary | Decimal |
|--------|---------|
|  0000  |    0    |
|  0001  |    1    |   
|  0010  |    2    |
|  0011  |    3    |
|  0100  |    4    |
|  0101  |    5    |
|  0110  |    6    |
|  0111  |    7    |
|  1000  |   -8    |
|  1001  |   -7    |
|  1010  |   -6    |
|  1011  |   -5    |
|  1100  |   -4    |
|  1101  |   -3    |
|  1110  |   -2    |
|  1111  |   -1    |

3. Negative Number addition

Addition is Modulo <img src="https://latex.codecogs.com/svg.latex? 2^{n}" title="x_{ij}" />

4. How to compute -x
<img src="https://latex.codecogs.com/svg.latex? 2^{n}-x= 1+((2^{n}-1)-x)=1+(-x)" title="x_{ij}" />


## Arithmetic Logic Unit
![alu]()

