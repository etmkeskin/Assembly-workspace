lui	x6, (-(8000) >> 12)
addi	x6, x6, (-(8000) & 0xFFF)
addi	x5, x6, 10


//Another way to understand better 
//b20:	EQU	8000 >> 12
//b12:	EQU	8000 & 0xfff

//lui	x6, 2		//adding 8000(upper 20bits) to the register 
//addi	x6, x6, 0xf40		//ading remaning (12bits) to register 
//xori	x6, x6, -1		//calculating its negative value with 2's complement 
//addi	x6, x6, 1		//after taking 1's complement add 1 to complete the 2's complement
//addi	x5, x6, 10



