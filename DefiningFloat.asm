//Defining float examples

//DF 	2.0, 2., 0.5, .5
//DF 	2.0e2, 2.e+3, 0.5E-2, .5e+02, 1e3
//DF 	0b010, 0b10, 010, 017, 10, 17, 0x010, 0x10, -0b10, -010, -10, -0x10

DF 	2, 4
DF 	0b10, 2.4
fld 	f1, 0(x0)
fld 	f2, 8(x0)
fld 	f3, 16(x0)
fld 	f4, 24(x0)
fadd.d 	f4, f4, f2