fib:
(__TEXT,__text) section
_fibonacci:
0000000100003e18	sub	sp, sp, #0x20
0000000100003e1c	stp	x29, x30, [sp, #0x10]
0000000100003e20	add	x29, sp, #0x10
0000000100003e24	str	w0, [sp, #0x8]
0000000100003e28	ldr	w8, [sp, #0x8]
0000000100003e2c	subs	w8, w8, #0x1
0000000100003e30	cset	w8, gt
0000000100003e34	tbnz	w8, #0x0, 0x100003e48
0000000100003e38	b	0x100003e3c
0000000100003e3c	ldr	w8, [sp, #0x8]
0000000100003e40	stur	w8, [x29, #-0x4]
0000000100003e44	b	0x100003e78
0000000100003e48	ldr	w8, [sp, #0x8]
0000000100003e4c	subs	w0, w8, #0x1
0000000100003e50	bl	_fibonacci
0000000100003e54	str	w0, [sp, #0x4]
0000000100003e58	ldr	w8, [sp, #0x8]
0000000100003e5c	subs	w0, w8, #0x2
0000000100003e60	bl	_fibonacci
0000000100003e64	mov	x8, x0
0000000100003e68	ldr	w0, [sp, #0x4]
0000000100003e6c	add	w8, w0, w8
0000000100003e70	stur	w8, [x29, #-0x4]
0000000100003e74	b	0x100003e78
0000000100003e78	ldur	w0, [x29, #-0x4]
0000000100003e7c	ldp	x29, x30, [sp, #0x10]
0000000100003e80	add	sp, sp, #0x20
0000000100003e84	ret
_main:
0000000100003e88	sub	sp, sp, #0x20
0000000100003e8c	stp	x29, x30, [sp, #0x10]
0000000100003e90	add	x29, sp, #0x10
0000000100003e94	stur	wzr, [x29, #-0x4]
0000000100003e98	adrp	x0, 0 ; 0x100003000
0000000100003e9c	add	x0, x0, #0xf2c ; literal pool for: "Enter the number to find the fibonacci number: "
0000000100003ea0	bl	0x100003f14 ; symbol stub for: _printf
0000000100003ea4	mov	x9, sp
0000000100003ea8	add	x8, sp, #0x8
0000000100003eac	str	x8, [x9]
0000000100003eb0	adrp	x0, 0 ; 0x100003000
0000000100003eb4	add	x0, x0, #0xf5c ; literal pool for: "%d"
0000000100003eb8	bl	0x100003f20 ; symbol stub for: _scanf
0000000100003ebc	ldr	w8, [sp, #0x8]
0000000100003ec0	subs	w8, w8, #0x0
0000000100003ec4	cset	w8, ge
0000000100003ec8	tbnz	w8, #0x0, 0x100003ee0
0000000100003ecc	b	0x100003ed0
0000000100003ed0	adrp	x0, 0 ; 0x100003000
0000000100003ed4	add	x0, x0, #0xf5f ; literal pool for: "Fibonacci of negative number is not possible.\n"
0000000100003ed8	bl	0x100003f14 ; symbol stub for: _printf
0000000100003edc	b	0x100003f04
0000000100003ee0	ldr	w0, [sp, #0x8]
0000000100003ee4	bl	_fibonacci
0000000100003ee8	mov	x9, sp
0000000100003eec	mov	x8, x0
0000000100003ef0	str	x8, [x9]
0000000100003ef4	adrp	x0, 0 ; 0x100003000
0000000100003ef8	add	x0, x0, #0xf8e ; literal pool for: "Fibonacci number is: %d\n"
0000000100003efc	bl	0x100003f14 ; symbol stub for: _printf
0000000100003f00	b	0x100003f04
0000000100003f04	mov	w0, #0x0
0000000100003f08	ldp	x29, x30, [sp, #0x10]
0000000100003f0c	add	sp, sp, #0x20
0000000100003f10	ret
