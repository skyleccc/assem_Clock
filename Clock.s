	.file	"Clock.c"
	.text
	.def	scanf;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf
scanf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$0, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rdx
	call	__mingw_vfscanf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	leaq	48(%rsp), %rbp
	.seh_setframe	%rbp, 48
	.seh_endprologue
	movq	%rcx, 32(%rbp)
	movq	%rdx, 40(%rbp)
	movq	%r8, 48(%rbp)
	movq	%r9, 56(%rbp)
	leaq	40(%rbp), %rax
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rbx
	movl	$1, %ecx
	movq	__imp___acrt_iob_func(%rip), %rax
	call	*%rax
	movq	%rax, %rcx
	movq	32(%rbp), %rax
	movq	%rbx, %r8
	movq	%rax, %rdx
	call	__mingw_vfprintf
	movl	%eax, -4(%rbp)
	movl	-4(%rbp), %eax
	addq	$56, %rsp
	popq	%rbx
	popq	%rbp
	ret
	.seh_endproc
	.def	time;	.scl	3;	.type	32;	.endef
	.seh_proc	time
time:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__time64(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	difftime;	.scl	3;	.type	32;	.endef
	.seh_proc	difftime
difftime:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	movq	24(%rbp), %rdx
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__difftime64(%rip), %rax
	call	*%rax
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	localtime;	.scl	3;	.type	32;	.endef
	.seh_proc	localtime
localtime:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__localtime64(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.def	mktime;	.scl	3;	.type	32;	.endef
	.seh_proc	mktime
mktime:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rcx
	movq	__imp__mktime64(%rip), %rax
	call	*%rax
	addq	$32, %rsp
	popq	%rbp
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
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
.L23:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-4(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-4(%rbp), %eax
	cmpl	$5, %eax
	ja	.L14
	movl	%eax, %eax
	leaq	0(,%rax,4), %rdx
	leaq	.L16(%rip), %rax
	movl	(%rdx,%rax), %eax
	cltq
	leaq	.L16(%rip), %rdx
	addq	%rdx, %rax
	jmp	*%rax
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
	leaq	.LC4(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-8(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-8(%rbp), %eax
	movl	%eax, %ecx
	call	Timer
	jmp	.L21
.L18:
	leaq	.LC5(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	-16(%rbp), %rdx
	leaq	-12(%rbp), %rax
	movq	%rdx, %r8
	movq	%rax, %rdx
	leaq	.LC6(%rip), %rax
	movq	%rax, %rcx
	call	scanf
	movl	-16(%rbp), %edx
	movl	-12(%rbp), %eax
	movl	%eax, %ecx
	call	Alarm
	jmp	.L21
.L17:
	call	StopWatch
	jmp	.L21
.L15:
	leaq	.LC7(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$1, %ecx
	call	sleep
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	system
	movl	$0, %eax
	jmp	.L24
.L14:
	leaq	.LC9(%rip), %rax
	movq	%rax, %rcx
	call	printf
.L21:
	leaq	.LC10(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	__imp__getch(%rip), %rax
	call	*%rax
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	system
	jmp	.L23
.L24:
	addq	$48, %rsp
	popq	%rbp
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
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	system
.L29:
	movl	$0, %ecx
	call	time
	movq	%rax, -24(%rbp)
	leaq	-24(%rbp), %rax
	movq	%rax, %rcx
	call	localtime
	movq	%rax, -8(%rbp)
	leaq	.LC11(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movq	-8(%rbp), %rax
	movq	%rax, %rcx
	call	asctime
	movq	%rax, %rdx
	leaq	.LC12(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$1, %ecx
	call	sleep
	movq	__imp__kbhit(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L26
	movq	__imp__getch(%rip), %rax
	call	*%rax
	movb	%al, -9(%rbp)
	cmpb	$113, -9(%rbp)
	je	.L27
	cmpb	$81, -9(%rbp)
	jne	.L26
.L27:
	leaq	.LC13(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L31
.L26:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	system
	jmp	.L29
.L31:
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
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
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	system
	leaq	.LC14(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L33
.L37:
	movq	__imp__kbhit(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L34
	movq	__imp__getch(%rip), %rax
	call	*%rax
	movb	%al, -1(%rbp)
	cmpb	$113, -1(%rbp)
	je	.L35
	cmpb	$81, -1(%rbp)
	jne	.L34
.L35:
	leaq	.LC15(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
	jmp	.L36
.L34:
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-1851608123, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$11, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	16(%rbp), %edx
	movslq	%edx, %rax
	imulq	$-1851608123, %rax, %rax
	shrq	$32, %rax
	addl	%edx, %eax
	sarl	$11, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$3600, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	16(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	subl	%edx, %ecx
	imull	$60, %ecx, %edx
	subl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC16(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$1, %ecx
	call	sleep
	subl	$1, 16(%rbp)
.L33:
	cmpl	$0, 16(%rbp)
	jg	.L37
	leaq	.LC17(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
.L36:
	addq	$48, %rsp
	popq	%rbp
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
	.ascii "Alarm! Time elapsed: %02d hr : %02d min : %02d sec\12\0"
	.text
	.globl	Alarm
	.def	Alarm;	.scl	2;	.type	32;	.endef
	.seh_proc	Alarm
Alarm:
	pushq	%rbp
	.seh_pushreg	%rbp
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$120, %rsp
	.seh_stackalloc	120
	leaq	112(%rsp), %rbp
	.seh_setframe	%rbp, 112
	.seh_endprologue
	movl	%ecx, 32(%rbp)
	movl	%edx, 40(%rbp)
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	time
	leaq	-32(%rbp), %rax
	movq	%rax, %rcx
	call	localtime
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rcx
	movq	8(%rax), %rbx
	movq	%rcx, -80(%rbp)
	movq	%rbx, -72(%rbp)
	movq	16(%rax), %rcx
	movq	24(%rax), %rbx
	movq	%rcx, -64(%rbp)
	movq	%rbx, -56(%rbp)
	movl	32(%rax), %eax
	movl	%eax, -48(%rbp)
	movl	32(%rbp), %eax
	movl	%eax, -72(%rbp)
	movl	40(%rbp), %eax
	movl	%eax, -76(%rbp)
	movl	$0, -80(%rbp)
	movq	-32(%rbp), %rbx
	leaq	-80(%rbp), %rax
	movq	%rax, %rcx
	call	mktime
	movq	%rbx, %rdx
	movq	%rax, %rcx
	call	difftime
	movq	%xmm0, %rax
	movq	%rax, -8(%rbp)
	pxor	%xmm0, %xmm0
	comisd	-8(%rbp), %xmm0
	jbe	.L48
	leaq	.LC19(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
	jmp	.L46
.L48:
	leaq	.LC8(%rip), %rax
	movq	%rax, %rcx
	call	system
	movl	40(%rbp), %edx
	movl	32(%rbp), %eax
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC20(%rip), %rax
	movq	%rax, %rcx
	call	printf
	leaq	.LC21(%rip), %rax
	movq	%rax, %rcx
	call	printf
	jmp	.L42
.L45:
	movq	__imp__kbhit(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L43
	movq	__imp__getch(%rip), %rax
	call	*%rax
	movb	%al, -17(%rbp)
	cmpb	$113, -17(%rbp)
	je	.L44
	cmpb	$81, -17(%rbp)
	jne	.L43
.L44:
	leaq	.LC22(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
	jmp	.L46
.L43:
	movl	$1, %ecx
	call	sleep
	movsd	-8(%rbp), %xmm0
	movsd	.LC23(%rip), %xmm1
	subsd	%xmm1, %xmm0
	movsd	%xmm0, -8(%rbp)
.L42:
	movsd	-8(%rbp), %xmm0
	pxor	%xmm1, %xmm1
	comisd	%xmm1, %xmm0
	ja	.L45
	movl	40(%rbp), %edx
	movl	32(%rbp), %eax
	movl	$0, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC24(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
.L46:
	addq	$120, %rsp
	popq	%rbx
	popq	%rbp
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
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$64, %rsp
	.seh_stackalloc	64
	.seh_endprologue
	movl	$0, -4(%rbp)
	leaq	.LC25(%rip), %rax
	movq	%rax, %rcx
	call	printf
.L52:
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-1851608123, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$11, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -8(%rbp)
	movl	-4(%rbp), %edx
	movslq	%edx, %rax
	imulq	$-1851608123, %rax, %rax
	shrq	$32, %rax
	addl	%edx, %eax
	sarl	$11, %eax
	movl	%edx, %ecx
	sarl	$31, %ecx
	subl	%ecx, %eax
	imull	$3600, %eax, %ecx
	movl	%edx, %eax
	subl	%ecx, %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	movl	%ecx, %eax
	subl	%edx, %eax
	movl	%eax, -12(%rbp)
	movl	-4(%rbp), %eax
	movslq	%eax, %rdx
	imulq	$-2004318071, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	subl	%edx, %ecx
	imull	$60, %ecx, %edx
	subl	%edx, %eax
	movl	%eax, -16(%rbp)
	movl	-16(%rbp), %ecx
	movl	-12(%rbp), %edx
	movl	-8(%rbp), %eax
	movl	%ecx, %r9d
	movl	%edx, %r8d
	movl	%eax, %edx
	leaq	.LC26(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$1, %ecx
	call	sleep
	addl	$1, -4(%rbp)
	movq	__imp__kbhit(%rip), %rax
	call	*%rax
	testl	%eax, %eax
	je	.L52
	movq	__imp__getch(%rip), %rax
	call	*%rax
	movb	%al, -17(%rbp)
	cmpb	$113, -17(%rbp)
	je	.L51
	cmpb	$81, -17(%rbp)
	je	.L51
	jmp	.L52
.L51:
	leaq	.LC27(%rip), %rax
	movq	%rax, %rcx
	call	printf
	movl	$0, %eax
	addq	$64, %rsp
	popq	%rbp
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
