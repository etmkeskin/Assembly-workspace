s1: DC "sum(1..n-1) Enter n:\0" 
s2: DC "sum(1.." 
s3: DC ")=" 
s4: DC "(n*(n-1))/2=\0"  	
 
	addi 	x5, x0, s1  	
	ecall 	x1, x5, 4  ;out question  	
	ecall 	x5, x0, 5 	;inp n  	
	addi 	x5, x5, -1  	
	add 	x6, x0, x5  ;counter 
 	add 	x7, x0, x5 	;sum 
loop: 
	addi 	x6, x6, -1 
	bge 	x0, x6, end                 
	add 	x7, x7, x6  	
	beq 	x0, x0, loop 

end:  
	ld 	x8, s2(x0) 
	ecall 	x1, x8, 3 
	ecall 	x1, x5, 0  
   
	ld 	x8, s3(x0)  	
	ecall 	x1, x8, 3 
	ecall 	x0, x7, 0     
	addi 	x8, x0, s4  	
	ecall 	x1, x8, 4  ;out expr  	
	addi  	x6, x5, 1  	
	mul 	x5, x5, x6  	
	srli 	x5, x5, 1  	
	ecall 	x1, x5, 0 
