a1: DW 1,2,3,4,5

main:
	add 	t0, x0, x0
	addi 	t1, x0, 42
	ecall	x0, t1, 0
	sw 	t1, 0(t0) //store the num 42 as integer whic takes 4 bytes between 0-3
	addi 	t1, x0, 65
	ecall	x0, t1, 3
	sb 	t1, 4(t0) //store 65 as char which is 'a' at mem location 4.
	addi 	t1, x0, 66
	ecall	x0, t1, 3
	sb 	t1, 5(t0) //store 66 whihc is 'b' in mem location 5.
	addi 	t1, x0, 67
	ecall	x0, t1, 3
	sb 	t1, 6(t0) //store 67 which is 'c' in mem location 6.