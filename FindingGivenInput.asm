dir:	DC "John"
	DC "11111"
	DC "Nick"
	DC "22222"
	DC "Sara"
	DC "11111"
	DC "Nick"
	DC "33333"
	DD 0
s1:	DC "Enter a phone number or a name\nto search for:\0"

loop:	addi	x8, x0, dir
	addi	x5, x0, s1
	ecall	x1, x5, 4 //x1 doesnt put new line.
	ecall	x5, x0, 8 //input phone or phone num as char

loop1:	ld	x6, 0(x8) //read from dir address 0 name
	beq	x6, x0, end
	ld	x7, 8(x8)
	beq	x6, x5, find
	bne	x7, x5, next

find:	ecall	x1, x6, 3 //print char
	addi	x9, x0, ' ' //add emptyh char
	ecall	x1, x9, 3
	ecall	x0, x7, 3

next:	addi	x8, x8, 16
	beq	x0, x0, loop1
	
end:	beq	x0, x0, loop	