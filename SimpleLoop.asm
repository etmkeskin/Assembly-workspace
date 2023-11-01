I1: 	DD 	4
I2: 	DD 	12, 22	

Sum:	ld 	x1, I1(x0)
	ld 	x2, I2(x0)
	ld 	x3, I2 + 8(x0)
	add 	x4, x3, x2	
	ecall	x0, x4, 0
	ebreak	x0, x0, 0

START:	addi	x2, x2, 6
	addi	x3, x3, 7
	beq	x0, x0, Sum