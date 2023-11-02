lui	x6, (8000 >> 12) + 1
addi	x6, x6, (8000 & 0xFFF)
addi	x5, x6, -10

//Another way to solve for better understanding
//b20:	EQU	8000 >> 12
//b12:	EQU	8000 & 0xfff

//lui	x6, 2
//addi	x6, x6, 0xf40
//addi	x6, x6, -10

