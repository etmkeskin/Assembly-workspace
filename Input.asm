;reserve memory for the input string
s: 	DM 	3 ;3*8=24 bytes

;input prompts
p5: 	DC 	"int:"
p6: 	DC 	"float:"
p7: 	DC 	"hex:"
p8: 	DC 	"chars:"
p9: 	DC 	"string:"

	;load prompts in registers
	ld 	x5, p5(x0)
	ld 	x6, p6(x0)
	ld 	x7, p7(x0)
	ld 	x8, p8(x0)
	ld 	x9, p9(x0)

	;input instructions
	ecall 	x10, x5, 5 ;integer
	ecall 	f11, x6, 6 ;float
	ecall 	x12, x7, 7 ;hexadecimal
	ecall 	x13, x8, 8 ;chars
	addi 	x14, x0, s
	ecall 	x14, x9, 9 ;string