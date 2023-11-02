s1: 	DC 	"Enter unsigned integer:\0"
	addi 	x30, x0, s1
	ecall 	x1, x30, 4		;out info string 
	ecall 	x5, x0, 5 		;in integer

loop:
 	beq 	x5, x0, out 		;out result
	andi 	x6, x5, 1 		;last bit
	addi 	sp, sp, -8
	sd 	x6, 0(sp) 		;push
	srli 	x5, x5, 1
	beq 	x0, x0, loop

out:	beq 	sp, x0, end
	ld 	x5, 0(sp) 		;pop
	addi 	sp, sp, 8
	ecall 	x1, x5, 0 		;out binary digit
	bne 	sp, x0, out

end: 	ebreak 	x0, x0, 0
