MakePatch 0xB4F8
0:
	mfspr %r8, LR
	lhz %r3, 6(%r0)
	li %r4, 0x21
	andc %r3, %r3, %r4
	sth %r3, 6(%r0)
	mtspr LR, %r8
	.long 0x480002DA # ba 0x2DA
9:
