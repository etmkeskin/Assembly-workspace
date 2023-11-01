str1:	DC	"Enter a number: "
	
	addi	x7, x0, str1 //this is how to print a string 
	ecall	x1, x7, 4  //x0 new line, x1 no new line
	ecall	x5, x0, 5
	addi	x6, x6, 1
fact:	mul	x6, x6, x5
	addi	x5, x5, -1
	bne	x0, x5, fact
	ecall	x0, x6, 0