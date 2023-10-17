	addi	t0, t0, 5 
	addi	t1, t1, 7

	beq	t0, t1,true
else:	addi	t1, t1, -1
	beq	x0, x0, end  //jump statament we are jumping to end to pass true part as long as it is false.
true:	addi	t0, t0, 1
end:	ebreak	x0, x0, 0	