a:	DD	c
a1:	DD	e
	ORG	0x1000100010001000
c:	DD	0x2222333344445555
	ORG	0x1000100010001100
e:	DD	0x1111222233334444


ld	x6, a(x0)
ld	x5, 0(x6)

ld	x8, a1(x0)
ld	x7, 0(x8)

add	x28, x5, x7
sub	x29, x5, x7
or	x30, x5, x7
xor	x31, x5, x7

