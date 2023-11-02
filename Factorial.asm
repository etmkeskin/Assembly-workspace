s1:	DC	"Enter n: \0"
s2:	DC	"! = "

	addi	x5, x0, s1
	ecall	x1, x5, 4
	ecall	x5, x0, 5
	add	x7, x0, x5 // to keep 
	addi	x6, x0, 1 //counter

loop:	
	beq	x0, x5, end
	mul	x6, x6, x5
	addi	x5, x5, -1
	beq	x0, x0, loop
end:	
	ld	x8, s2(x0)
	ecall	x1, x7, 0
	ecall	x1, x8, 3
	ecall	x1, x6, 0