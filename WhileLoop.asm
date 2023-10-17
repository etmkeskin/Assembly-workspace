	addi	x5, x5, -1
	addi	x6, x6, 5
loop:	beq	x5, x6, end
	addi 	x5, x5, 1
	ecall	x0, x5, 0
	beq	x0, x0, loop
end:	ebreak	x0, x0, 0