s0: 	DC	"What is your name?\0"
s1:	DC	"Hello "
s2: 	DC	"n! Enter n: \0"

	addi	x5, x0, s0 //load s0 to x5
	ecall	x0, x5, 4	 //print x5 with new line
	ecall	x6, x0, 9	 //take the name input from user
	addi	x5, x0, s1	
	ecall	x1, x5, 4
	ecall	x0, x6, 4
	addi	x5, x0, s2
	ecall	x1, x5, 4 //print string 
	ecall	x6, x0, 5 //take integer input
	addi	x7, x0, 1 //initialize result to 1

loop:	beq	x6, x0, exit 
	mul	x7, x7, x6
	addi	x6, x6, -1
	beq	x0, x0, loop


exit:	ecall	x0, x7, 0 //print integer	