s0:	DC	"Find all divisor\0"
s1:	DC	"Enter i: "
s2:	DC	"Divisors: "


	addi	x5, x0, s0
	ecall	x0, x5, 4
	addi	x5, x0, s1
	ecall	x1, x5, 4
	ecall	x6, x0, 5
	addi	x5, x0, s2
	ecall	x0, x5, 4 
	addi	x7, x0, 1 //start with 1  
	
loop:	rem	x8, x6, x7
	bne	x0, x8, next
	ecall	x0, x7, 0
	

next:	addi	x7, x7, 1
	bne	x6, x7, loop
	ecall	x0, x7, 0 //print integer

	 