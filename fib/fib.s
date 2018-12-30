	.text
	.intel_syntax noprefix
	.def	 "?fib@@YAHH@Z";
	.scl	2;
	.type	32;
	.endef
	.globl	"?fib@@YAHH@Z"          # -- Begin function ?fib@@YAHH@Z
	.p2align	4, 0x90
"?fib@@YAHH@Z":                         # @"?fib@@YAHH@Z"
.seh_proc "?fib@@YAHH@Z"
# %bb.0:
    mov eax, 1
    sub ecx, eax
    jle f

    push rdi
    mov edi, ecx
    sub ecx, eax
    call "?fib@@YAHH@Z"
    mov ecx, edi
    mov edi, eax
    call "?fib@@YAHH@Z"
    add eax, edi
    pop rdi
	ret
f:
	add eax, ecx
    ret
	.text
	.seh_endproc
                                        # -- End function
	.def	 main;
	.scl	2;
	.type	32;
	.endef
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
main:                                   # @main
.seh_proc main
# %bb.0:
	push	rsi
	.seh_pushreg 6
	sub	rsp, 48
	.seh_stackalloc 48
	.seh_endprologue
	call	clock
	movsxd	rsi, eax
	mov	ecx, 42
	call	"?fib@@YAHH@Z"
	mov	dword ptr [rsp + 44], eax
	call	clock
	movsxd	r8, eax
	sub	r8, rsi
	mov	edx, dword ptr [rsp + 44]
	lea	rcx, [rip + "??_C@_0CA@PPOMKJLO@c?$CL?$CL?5fib?$CI42?$CJ?$DN?$CFd?0?5elapsed?$DN?$CFlldms?6?$AA@"]
	call	printf
	xor	eax, eax
	add	rsp, 48
	pop	rsi
	ret
	.seh_handlerdata
	.text
	.seh_endproc
                                        # -- End function
	.def	 printf;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,printf
	.globl	printf                  # -- Begin function printf
	.p2align	4, 0x90
printf:                                 # @printf
.seh_proc printf
# %bb.0:
	push	rsi
	.seh_pushreg 6
	push	rdi
	.seh_pushreg 7
	push	rbx
	.seh_pushreg 3
	sub	rsp, 48
	.seh_stackalloc 48
	.seh_endprologue
	mov	rsi, rcx
	mov	qword ptr [rsp + 104], r9
	mov	qword ptr [rsp + 96], r8
	mov	qword ptr [rsp + 88], rdx
	lea	rbx, [rsp + 88]
	mov	qword ptr [rsp + 40], rbx
	mov	ecx, 1
	call	__acrt_iob_func
	mov	rdi, rax
	call	__local_stdio_printf_options
	mov	rcx, qword ptr [rax]
	mov	qword ptr [rsp + 32], rbx
	xor	r9d, r9d
	mov	rdx, rdi
	mov	r8, rsi
	call	__stdio_common_vfprintf
	nop
	add	rsp, 48
	pop	rbx
	pop	rdi
	pop	rsi
	ret
	.seh_handlerdata
	.section	.text,"xr",discard,printf
	.seh_endproc
                                        # -- End function
	.def	 __local_stdio_printf_options;
	.scl	2;
	.type	32;
	.endef
	.section	.text,"xr",discard,__local_stdio_printf_options
	.globl	__local_stdio_printf_options # -- Begin function __local_stdio_printf_options
	.p2align	4, 0x90
__local_stdio_printf_options:           # @__local_stdio_printf_options
# %bb.0:
	lea	rax, [rip + "?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"]
	ret
                                        # -- End function
	.section	.rdata,"dr",discard,"??_C@_0CA@PPOMKJLO@c?$CL?$CL?5fib?$CI42?$CJ?$DN?$CFd?0?5elapsed?$DN?$CFlldms?6?$AA@"
	.globl	"??_C@_0CA@PPOMKJLO@c?$CL?$CL?5fib?$CI42?$CJ?$DN?$CFd?0?5elapsed?$DN?$CFlldms?6?$AA@" # @"??_C@_0CA@PPOMKJLO@c?$CL?$CL?5fib?$CI42?$CJ?$DN?$CFd?0?5elapsed?$DN?$CFlldms?6?$AA@"
"??_C@_0CA@PPOMKJLO@c?$CL?$CL?5fib?$CI42?$CJ?$DN?$CFd?0?5elapsed?$DN?$CFlldms?6?$AA@":
	.asciz	"x64asm fib(42)=%d, elapsed=%lldms\n"

	.section	.bss,"bw",discard,"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.globl	"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA" # @"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA"
	.p2align	3
"?_OptionsStorage@?1??__local_stdio_printf_options@@9@4_KA":
	.quad	0                       # 0x0

	.section	.drectve,"yn"
	.ascii	" /FAILIFMISMATCH:\"_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\""

