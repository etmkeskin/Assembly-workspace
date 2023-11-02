n:	EQU	0x1234587811223344

lui	x6, (n & 0xffffffff) >> 12
addi	x6, x6, n & 0xfff
lui	x7, n >> 44 
addi	x7, x7, (n & 0xfff00000000) >> 32
slli	x7, x7, 32
add	x5, x7, x6

