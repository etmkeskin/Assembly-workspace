array0: DW	3, 4, 6, 42  //last mem location 12
	DW 56           //16 is location of 56
	DW 75		//24 is for 75
	DW 89		//32 is 89
lw	x5, 32(x0)
ecall	x0, x5, 0

//DW stores values in 4 bytes storage and that
//is why index goes 0, 4, 8, 12,.... 
//this example finds index 12 value whic is 42.
//This is how we create arrays in assemnly 
//when you write DD, DW, DC just like array0 then DW memory locations go as 0-4-8-12-16...

//In array, DD offset(0-8-16-24-32...)
//In array, DW offset(0-4-8-12-16....)
//In array, DH offset(0-2-4-6-8-10...)
//In array, DB/DC offset(0-1-2-3-4...)

array1:	DW 4
	DW 5
	DW 9
	DW 45

lw	x5, 8(x0)
ecall	x0, x5, 0

//But when you write them like this then our assemler takes 8 bytes to store them
//So alligns according to the doubleWord boundries.
//Memory locations in this case are same for all DD, DW, DH, DB, DC(0-8-16-24...)