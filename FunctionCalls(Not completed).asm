sum:	add	x10, x10, x11 //use x10 for return value for simplicity and optimization 	
	jalr	x0, 0(x1) //returning to return address x0 is dummy to complete jalr instruction

dif:	sub	x10, x10, x11
	jalr	x0, 0(x1)



main:	addi	x8, x0, 3 //assign values in registers
	addi	x9, x0, 5

	add	x10, x8, x0 //registers are put in argument regs
	add	x11, x9, x0 // x10-x17 args registers

	jal	x1, sum //function call(jump and link), x1 is return address 
	add	x18, x10, x0

	jal	x1, dif
	add	x19, x10, x0 