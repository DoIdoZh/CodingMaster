	.file	"16Bits_Add.c"
	.intel_syntax noprefix
	.text
	.def	__main;	.scl	2;	.type	32;	.endef
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	mov	WORD PTR -2[rbp], 1
	mov	WORD PTR -4[rbp], 1
	movzx	edx, WORD PTR -2[rbp]
	movzx	eax, WORD PTR -4[rbp]
	add	eax, edx
	mov	WORD PTR -6[rbp], ax
	mov	eax, 0
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.ident	"GCC: (x86_64-posix-seh-rev0, Built by MinGW-W64 project) 8.1.0"
