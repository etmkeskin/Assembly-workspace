L01: EQU 1 				;0x0000000000000001 is 1 
L02: EQU 0xfff 				;0x0000000000000fff is 4095 (unsigned) 
L03: EQU 0xffffffffffffffff 				;it is the biggest 64-bit unsigned integer
L04: EQU -1 				;0xffffffffffffffff is the biggest 64-bit unsigned integer 
L05: EQU L04>>16 				;0x0fffffffffffffff ;>> works as a logical shift

L06: EQU 0x0123456789abcdef 
L07: EQU L06&0xfff 				;bits [11:0] 	12 bits 
L08: EQU (L06>>12)&0xfffff 				;bits [31:12] 20 bits
L09: EQU (L06>>32)&0xfff 				;bits [43:32] 12 bits
L10: EQU (L06>>44)&0xfffff 				;bits [63:44] 20 bits

ORG 0x1000 
L20: DD 0,1,2,3,4,5 				;the beginning memory address of the array 
L2E: 				;the end memory address of the array 
L21: EQU L20+8 				;the memory address of the array element #1 
L24: EQU L20+8*4 				;the memory address of the array element #4 
L2N: EQU (L2E-L20)/8 				;the size of the array in double words


//When a negative value is assigned to a label the value is sign-extended to fit in 64bits.
//However, the assembler operators e.g. shift right(>>)treat the label values as unsigned
//Large integers can be split into suitably sized immediate constants and assigned to labels with EQU: