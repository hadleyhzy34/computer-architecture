# ALU

## Binary numbers Representation

## Binary Addition


1. Half Adder, two bits addition


![half_adder](https://raw.githubusercontent.com/hadleyhzy34/computer-architecture/main/source/Half_adder.png)


2. Full Adder, three bits addition


![full_adder](https://raw.githubusercontent.com/hadleyhzy34/computer-architecture/main/source/full_adder.png)


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

Addition is Modulo <img src="http://www.sciweavers.org/tex2img.php?eq=%202%5E%7Bn%7D%20&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0" align="center" border="0" alt=" 2^{n} " width="24" height="17" />

4. How to compute -x

<img src="http://www.sciweavers.org/tex2img.php?eq=2%5E%7Bn%7D-x%3D%201%2B%28%282%5E%7Bn%7D-1%29-x%29%3D1%2B%28-x%29&bc=White&fc=Black&im=jpg&fs=12&ff=arev&edit=0" align="center" border="0" alt="2^{n}-x= 1+((2^{n}-1)-x)=1+(-x)" width="307" height="19" />


## Arithmetic Logic Unit


![alu](https://raw.githubusercontent.com/hadleyhzy34/computer-architecture/main/source/hack_alu.png)


