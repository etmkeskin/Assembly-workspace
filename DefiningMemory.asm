DD	0b010			//takes all 64bit(8 bytes), 1 constant per double-word	
DW	0b010, 17			//takes 32bits(4 bytes), 2 constants per double-word
DH	0b010, 010, 017, 10			//takes	16bits(2 bytes), 4 constants per double-word
DB 	0b010, 010, 017, 10, 17, 0x010, -0b10, -010 // takes 8bits(1 byte), 8 constants per double-word
DC 	"0123456789\0"			//1(byte), 8 charcters per double-word



//All define directives constants are in little endian format. 
//All starts at double-word boundry, and padded with 0s if necessary.
//DC constants must be a sequence of characters enclosed in double quotes.

lw	x5, 12(x0)
ecall	x0, x5, 0