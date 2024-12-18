	.intel_syntax noprefix
	.text
	.def	scanf;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf
scanf:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR 56[rbp], r9
	lea	rax, 40[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rbx, QWORD PTR -16[rbp]
	mov	ecx, 0
	mov	rax, QWORD PTR __imp___acrt_iob_func[rip]
	call	rax
	mov	rcx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rbx
	mov	rdx, rax
	call	__mingw_vfscanf
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	lea	rbp, 48[rsp]
	.seh_setframe	rbp, 48
	.seh_endprologue
	mov	QWORD PTR 32[rbp], rcx
	mov	QWORD PTR 40[rbp], rdx
	mov	QWORD PTR 48[rbp], r8
	mov	QWORD PTR 56[rbp], r9
	lea	rax, 40[rbp]
	mov	QWORD PTR -16[rbp], rax
	mov	rbx, QWORD PTR -16[rbp]
	mov	ecx, 1
	mov	rax, QWORD PTR __imp___acrt_iob_func[rip]
	call	rax
	mov	rcx, rax
	mov	rax, QWORD PTR 32[rbp]
	mov	r8, rbx
	mov	rdx, rax
	call	__mingw_vfprintf
	mov	DWORD PTR -4[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	add	rsp, 56
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.def	time;	.scl	3;	.type	32;	.endef
	.seh_proc	time
time:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	mov	rax, QWORD PTR __imp__time64[rip]
	call	rax
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	difftime;	.scl	3;	.type	32;	.endef
	.seh_proc	difftime
difftime:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	QWORD PTR 24[rbp], rdx
	mov	rdx, QWORD PTR 24[rbp]
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	mov	rax, QWORD PTR __imp__difftime64[rip]
	call	rax
	movq	rax, xmm0
	movq	xmm0, rax
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	localtime;	.scl	3;	.type	32;	.endef
	.seh_proc	localtime
localtime:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	mov	rax, QWORD PTR __imp__localtime64[rip]
	call	rax
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	mktime;	.scl	3;	.type	32;	.endef
	.seh_proc	mktime
mktime:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	QWORD PTR 16[rbp], rcx
	mov	rax, QWORD PTR 16[rbp]
	mov	rcx, rax
	mov	rax, QWORD PTR __imp__mktime64[rip]
	call	rax
	add	rsp, 32
	pop	rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC0:
	.ascii "Clock Application\12\0"
	.align 8
.LC1:
	.ascii "1. Clock\12"
	.ascii "2. Timer\12"
	.ascii "3. Alarm\12"
	.ascii "4. Stopwatch\12"
	.ascii "5. Exit\12\0"
.LC2:
	.ascii "Enter your choice: \0"
.LC3:
	.ascii "%d\0"
.LC4:
	.ascii "Enter duration in seconds: \0"
.LC5:
	.ascii "Enter alarm time (HH MM): \0"
.LC6:
	.ascii "%d %d\0"
	.align 8
.LC7:
	.ascii "Program terminated. Exiting now.\12\0"
.LC8:
	.ascii "cls\0"
.LC9:
	.ascii "Invalid choice!\12\0"
.LC10:
	.ascii "Press any key to continue...\0"
	.text
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
.L23:
	lea	rax, .LC0[rip]
	mov	rcx, rax
	call	printf
	lea	rax, .LC1[rip]
	mov	rcx, rax
	call	printf
	lea	rax, .LC2[rip]
	mov	rcx, rax
	call	printf
	lea	rax, -4[rbp]
	mov	rdx, rax
	lea	rax, .LC3[rip]
	mov	rcx, rax
	call	scanf
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, 5
	ja	.L14
	mov	eax, eax
	lea	rdx, 0[0+rax*4]
	lea	rax, .L16[rip]
	mov	eax, DWORD PTR [rdx+rax]
	cdqe
	lea	rdx, .L16[rip]
	add	rax, rdx
	jmp	rax
	.section .rdata,"dr"
	.align 4
.L16:
	.long	.L14-.L16
	.long	.L20-.L16
	.long	.L19-.L16
	.long	.L18-.L16
	.long	.L17-.L16
	.long	.L15-.L16
	.text
.L20:
	call	Clock
	jmp	.L21
.L19:
	lea	rax, .LC4[rip]
	mov	rcx, rax
	call	printf
	lea	rax, -8[rbp]
	mov	rdx, rax
	lea	rax, .LC3[rip]
	mov	rcx, rax
	call	scanf
	mov	eax, DWORD PTR -8[rbp]
	mov	ecx, eax
	call	Timer
	jmp	.L21
.L18:
	lea	rax, .LC5[rip]
	mov	rcx, rax
	call	printf
	lea	rdx, -16[rbp]
	lea	rax, -12[rbp]
	mov	r8, rdx
	mov	rdx, rax
	lea	rax, .LC6[rip]
	mov	rcx, rax
	call	scanf
	mov	edx, DWORD PTR -16[rbp]
	mov	eax, DWORD PTR -12[rbp]
	mov	ecx, eax
	call	Alarm
	jmp	.L21
.L17:
	call	StopWatch
	jmp	.L21
.L15:
	lea	rax, .LC7[rip]
	mov	rcx, rax
	call	printf
	mov	ecx, 1
	call	sleep
	lea	rax, .LC8[rip]
	mov	rcx, rax
	call	system
	mov	eax, 0
	jmp	.L24
.L14:
	lea	rax, .LC9[rip]
	mov	rcx, rax
	call	printf
.L21:
	lea	rax, .LC10[rip]
	mov	rcx, rax
	call	printf
	mov	rax, QWORD PTR __imp__getch[rip]
	call	rax
	lea	rax, .LC8[rip]
	mov	rcx, rax
	call	system
	jmp	.L23
.L24:
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC11:
	.ascii "Press 'q' to stop the clock.\12\0"
.LC12:
	.ascii "Current time: %s\0"
.LC13:
	.ascii "Clock stopped by user.\12\0"
	.text
	.globl	Clock
	.def	Clock;	.scl	2;	.type	32;	.endef
	.seh_proc	Clock
Clock:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	lea	rax, .LC8[rip]
	mov	rcx, rax
	call	system
.L29:
	mov	ecx, 0
	call	time
	mov	QWORD PTR -24[rbp], rax
	lea	rax, -24[rbp]
	mov	rcx, rax
	call	localtime
	mov	QWORD PTR -8[rbp], rax
	lea	rax, .LC11[rip]
	mov	rcx, rax
	call	printf
	mov	rax, QWORD PTR -8[rbp]
	mov	rcx, rax
	call	asctime
	mov	rdx, rax
	lea	rax, .LC12[rip]
	mov	rcx, rax
	call	printf
	mov	ecx, 1
	call	sleep
	mov	rax, QWORD PTR __imp__kbhit[rip]
	call	rax
	test	eax, eax
	je	.L26
	mov	rax, QWORD PTR __imp__getch[rip]
	call	rax
	mov	BYTE PTR -9[rbp], al
	cmp	BYTE PTR -9[rbp], 113
	je	.L27
	cmp	BYTE PTR -9[rbp], 81
	jne	.L26
.L27:
	lea	rax, .LC13[rip]
	mov	rcx, rax
	call	printf
	jmp	.L31
.L26:
	lea	rax, .LC8[rip]
	mov	rcx, rax
	call	system
	jmp	.L29
.L31:
	mov	eax, 0
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC14:
	.ascii "Press 'q' to stop the timer.\12\0"
.LC15:
	.ascii "Timer stopped by user.\12\0"
	.align 8
.LC16:
	.ascii "Time remaining: %02d hr : %02d min : %02d sec\12\0"
.LC17:
	.ascii "Time's up!\12\0"
	.text
	.globl	Timer
	.def	Timer;	.scl	2;	.type	32;	.endef
	.seh_proc	Timer
Timer:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 48
	.seh_stackalloc	48
	.seh_endprologue
	mov	DWORD PTR 16[rbp], ecx
	lea	rax, .LC8[rip]
	mov	rcx, rax
	call	system
	lea	rax, .LC14[rip]
	mov	rcx, rax
	call	printf
	jmp	.L33
.L37:
	mov	rax, QWORD PTR __imp__kbhit[rip]
	call	rax
	test	eax, eax
	je	.L34
	mov	rax, QWORD PTR __imp__getch[rip]
	call	rax
	mov	BYTE PTR -1[rbp], al
	cmp	BYTE PTR -1[rbp], 113
	je	.L35
	cmp	BYTE PTR -1[rbp], 81
	jne	.L34
.L35:
	lea	rax, .LC15[rip]
	mov	rcx, rax
	call	printf
	mov	eax, 0
	jmp	.L36
.L34:
	mov	eax, DWORD PTR 16[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1851608123
	shr	rdx, 32
	add	edx, eax
	mov	ecx, edx
	sar	ecx, 11
	cdq
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR 16[rbp]
	movsx	rax, edx
	imul	rax, rax, -1851608123
	shr	rax, 32
	add	eax, edx
	sar	eax, 11
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 3600
	mov	eax, edx
	sub	eax, ecx
	movsx	rdx, eax
	imul	rdx, rdx, -2004318071
	shr	rdx, 32
	add	edx, eax
	mov	ecx, edx
	sar	ecx, 5
	cdq
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR 16[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -2004318071
	shr	rdx, 32
	add	edx, eax
	mov	ecx, edx
	sar	ecx, 5
	cdq
	sub	ecx, edx
	imul	edx, ecx, 60
	sub	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	ecx, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	r9d, ecx
	mov	r8d, edx
	mov	edx, eax
	lea	rax, .LC16[rip]
	mov	rcx, rax
	call	printf
	mov	ecx, 1
	call	sleep
	sub	DWORD PTR 16[rbp], 1
.L33:
	cmp	DWORD PTR 16[rbp], 0
	jg	.L37
	lea	rax, .LC17[rip]
	mov	rcx, rax
	call	printf
	mov	eax, 0
.L36:
	add	rsp, 48
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC19:
	.ascii "The specified time has already passed today.\12\0"
.LC20:
	.ascii "Alarm set for %02d:%02d\12\0"
.LC21:
	.ascii "Press 'q' to stop the alarm.\12\0"
.LC22:
	.ascii "Alarm stopped by user.\12\0"
	.align 8
.LC24:
	.ascii "Alarm! Time elapsed: %02d:%02d\12\0"
	.text
	.globl	Alarm
	.def	Alarm;	.scl	2;	.type	32;	.endef
	.seh_proc	Alarm
Alarm:
	push	rbp
	.seh_pushreg	rbp
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 120
	.seh_stackalloc	120
	lea	rbp, 112[rsp]
	.seh_setframe	rbp, 112
	.seh_endprologue
	mov	DWORD PTR 32[rbp], ecx
	mov	DWORD PTR 40[rbp], edx
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	time
	lea	rax, -32[rbp]
	mov	rcx, rax
	call	localtime
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	mov	rcx, QWORD PTR [rax]
	mov	rbx, QWORD PTR 8[rax]
	mov	QWORD PTR -80[rbp], rcx
	mov	QWORD PTR -72[rbp], rbx
	mov	rcx, QWORD PTR 16[rax]
	mov	rbx, QWORD PTR 24[rax]
	mov	QWORD PTR -64[rbp], rcx
	mov	QWORD PTR -56[rbp], rbx
	mov	eax, DWORD PTR 32[rax]
	mov	DWORD PTR -48[rbp], eax
	mov	eax, DWORD PTR 32[rbp]
	mov	DWORD PTR -72[rbp], eax
	mov	eax, DWORD PTR 40[rbp]
	mov	DWORD PTR -76[rbp], eax
	mov	DWORD PTR -80[rbp], 0
	mov	rbx, QWORD PTR -32[rbp]
	lea	rax, -80[rbp]
	mov	rcx, rax
	call	mktime
	mov	rdx, rbx
	mov	rcx, rax
	call	difftime
	movq	rax, xmm0
	mov	QWORD PTR -8[rbp], rax
	pxor	xmm0, xmm0
	comisd	xmm0, QWORD PTR -8[rbp]
	jbe	.L48
	lea	rax, .LC19[rip]
	mov	rcx, rax
	call	printf
	mov	eax, 0
	jmp	.L46
.L48:
	lea	rax, .LC8[rip]
	mov	rcx, rax
	call	system
	mov	edx, DWORD PTR 40[rbp]
	mov	eax, DWORD PTR 32[rbp]
	mov	r8d, edx
	mov	edx, eax
	lea	rax, .LC20[rip]
	mov	rcx, rax
	call	printf
	lea	rax, .LC21[rip]
	mov	rcx, rax
	call	printf
	jmp	.L42
.L45:
	mov	rax, QWORD PTR __imp__kbhit[rip]
	call	rax
	test	eax, eax
	je	.L43
	mov	rax, QWORD PTR __imp__getch[rip]
	call	rax
	mov	BYTE PTR -17[rbp], al
	cmp	BYTE PTR -17[rbp], 113
	je	.L44
	cmp	BYTE PTR -17[rbp], 81
	jne	.L43
.L44:
	lea	rax, .LC22[rip]
	mov	rcx, rax
	call	printf
	mov	eax, 0
	jmp	.L46
.L43:
	mov	ecx, 1
	call	sleep
	movsd	xmm0, QWORD PTR -8[rbp]
	movsd	xmm1, QWORD PTR .LC23[rip]
	subsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
.L42:
	movsd	xmm0, QWORD PTR -8[rbp]
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	ja	.L45
	mov	edx, DWORD PTR 40[rbp]
	mov	eax, DWORD PTR 32[rbp]
	mov	r8d, edx
	mov	edx, eax
	lea	rax, .LC24[rip]
	mov	rcx, rax
	call	printf
	mov	eax, 0
.L46:
	add	rsp, 120
	pop	rbx
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC25:
	.ascii "Press 'q' to stop the stopwatch.\12\0"
	.align 8
.LC26:
	.ascii "Time elapsed: %02d hr : %02d min : %02d sec\12\0"
.LC27:
	.ascii "Stopwatch stopped!\12\0"
	.text
	.globl	StopWatch
	.def	StopWatch;	.scl	2;	.type	32;	.endef
	.seh_proc	StopWatch
StopWatch:
	push	rbp
	.seh_pushreg	rbp
	mov	rbp, rsp
	.seh_setframe	rbp, 0
	sub	rsp, 64
	.seh_stackalloc	64
	.seh_endprologue
	mov	DWORD PTR -4[rbp], 0
	lea	rax, .LC25[rip]
	mov	rcx, rax
	call	printf
.L52:
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -1851608123
	shr	rdx, 32
	add	edx, eax
	mov	ecx, edx
	sar	ecx, 11
	cdq
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -8[rbp], eax
	mov	edx, DWORD PTR -4[rbp]
	movsx	rax, edx
	imul	rax, rax, -1851608123
	shr	rax, 32
	add	eax, edx
	sar	eax, 11
	mov	ecx, edx
	sar	ecx, 31
	sub	eax, ecx
	imul	ecx, eax, 3600
	mov	eax, edx
	sub	eax, ecx
	movsx	rdx, eax
	imul	rdx, rdx, -2004318071
	shr	rdx, 32
	add	edx, eax
	mov	ecx, edx
	sar	ecx, 5
	cdq
	mov	eax, ecx
	sub	eax, edx
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -4[rbp]
	movsx	rdx, eax
	imul	rdx, rdx, -2004318071
	shr	rdx, 32
	add	edx, eax
	mov	ecx, edx
	sar	ecx, 5
	cdq
	sub	ecx, edx
	imul	edx, ecx, 60
	sub	eax, edx
	mov	DWORD PTR -16[rbp], eax
	mov	ecx, DWORD PTR -16[rbp]
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -8[rbp]
	mov	r9d, ecx
	mov	r8d, edx
	mov	edx, eax
	lea	rax, .LC26[rip]
	mov	rcx, rax
	call	printf
	mov	ecx, 1
	call	sleep
	add	DWORD PTR -4[rbp], 1
	mov	rax, QWORD PTR __imp__kbhit[rip]
	call	rax
	test	eax, eax
	je	.L52
	mov	rax, QWORD PTR __imp__getch[rip]
	call	rax
	mov	BYTE PTR -17[rbp], al
	cmp	BYTE PTR -17[rbp], 113
	je	.L51
	cmp	BYTE PTR -17[rbp], 81
	je	.L51
	jmp	.L52
.L51:
	lea	rax, .LC27[rip]
	mov	rcx, rax
	call	printf
	mov	eax, 0
	add	rsp, 64
	pop	rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 8
.LC23:
	.long	0
	.long	1072693248
	.ident	"GCC: (Rev3, Built by MSYS2 project) 13.2.0"
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	sleep;	.scl	2;	.type	32;	.endef
	.def	system;	.scl	2;	.type	32;	.endef
	.def	asctime;	.scl	2;	.type	32;	.endef
