vector1:	DF	1.21, 5.85, -7.3, 23.1, -5.55
vector2:	DF	3.14, -2.1, 44.2, 11.0, -7.77
result:	 DF	0.0

	fld	f1, 0(x0)
	fld	f2, 40(x0)
	fmul.d	f1, f1, f2	
	
	fld	f3, 8(x0)
	fld	f4, 48(x0)
	fmul.d	f3, f3, f4

	fld	f5, 16(x0)
	fld	f6, 52(x0)
	fmul.d	f5, f5, f6

	fld	f7, 24(x0)
	fld	f8, 60(x0)
	fmul.d	f7, f7, f8

	fld	f9, 32(x0)
	fld	f10, 68(x0)
	fmul.d	f9, f9, f10

	fadd.d	f1, f1, f3
	fadd.d	f1, f1, f5
	fadd.d	f1, f1, f7
	fadd.d	f1, f1, f9
	

