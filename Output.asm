;output data
d0: 	DD 2 ;integer
 	DF 2.0 ;float
	DD 0x1234 ;hexadecimal
 	DC "chars" ;characters
d4: 	DC "a longer string¥0" ;string
;output instructions
	ld 	x1, d0(x0)
	ecall 	x0, x1, 0 ;int
	fld 	f1, 8(x0)
	ecall 	x0, f1, 1 ;float
	ld	x1, 16(x0)
	ecall 	x0, x1, 2 ;hexadecimal
	ld 	x1, 24(x0)
	ecall 	x0, x1, 3 ;chars
	addi 	x1, x0, d4
	ecall 	x0, x1, 4 ;string