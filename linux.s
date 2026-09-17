	.file	"benchmark.cpp"
	.intel_syntax noprefix
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNKSt5ctypeIcE8do_widenEc,"axG",@progbits,_ZNKSt5ctypeIcE8do_widenEc,comdat
	.align 2
	.p2align 4
	.weak	_ZNKSt5ctypeIcE8do_widenEc
	.type	_ZNKSt5ctypeIcE8do_widenEc, @function
_ZNKSt5ctypeIcE8do_widenEc:
.LFB1805:
	.cfi_startproc
	mov	eax, esi
	xor	esi, esi
	ret
	.cfi_endproc
.LFE1805:
	.size	_ZNKSt5ctypeIcE8do_widenEc, .-_ZNKSt5ctypeIcE8do_widenEc
	.section	.text._ZNSt6thread24_M_thread_deps_never_runEv,"axG",@progbits,_ZNSt6thread24_M_thread_deps_never_runEv,comdat
	.p2align 4
	.weak	_ZNSt6thread24_M_thread_deps_never_runEv
	.type	_ZNSt6thread24_M_thread_deps_never_runEv, @function
_ZNSt6thread24_M_thread_deps_never_runEv:
.LFB2507:
	.cfi_startproc
	ret
	.cfi_endproc
.LFE2507:
	.size	_ZNSt6thread24_M_thread_deps_never_runEv, .-_ZNSt6thread24_M_thread_deps_never_runEv
	.text
	.align 2
	.p2align 4
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED2Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED2Ev:
.LFB4222:
	.cfi_startproc
	lea	rax, _ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE[rip+16]
	mov	QWORD PTR [rdi], rax
	jmp	_ZNSt6thread6_StateD2Ev@PLT
	.cfi_endproc
.LFE4222:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED2Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED2Ev
	.set	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED1Ev,_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED2Ev
	.align 2
	.p2align 4
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED0Ev, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED0Ev:
.LFB4224:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	lea	rax, _ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE[rip+16]
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	QWORD PTR [rdi], rax
	mov	QWORD PTR -8[rbp], rdi
	call	_ZNSt6thread6_StateD2Ev@PLT
	mov	rdi, QWORD PTR -8[rbp]
	mov	esi, 16
	leave
	.cfi_def_cfa 7, 8
	jmp	_ZdlPvm@PLT
	.cfi_endproc
.LFE4224:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED0Ev, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED0Ev
	.section	.text.unlikely,"ax",@progbits
.LCOLDB0:
	.text
.LHOTB0:
	.p2align 4
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0:
.LFB4241:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	.cfi_offset 3, -24
	mov	rbx, rdi
	sub	rsp, 24
	mov	rax, QWORD PTR [rdi]
	mov	rax, QWORD PTR -24[rax]
	mov	rdi, QWORD PTR 240[rdi+rax]
	test	rdi, rdi
	je	.L12
	cmp	BYTE PTR 56[rdi], 0
	je	.L9
	movsx	esi, BYTE PTR 67[rdi]
.L10:
	mov	rdi, rbx
	call	_ZNSo3putEc@PLT
	add	rsp, 24
	pop	rbx
	mov	rdi, rax
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	jmp	_ZNSo5flushEv@PLT
.L9:
	.cfi_restore_state
	mov	QWORD PTR -24[rbp], rdi
	call	_ZNKSt5ctypeIcE13_M_widen_initEv@PLT
	mov	rdi, QWORD PTR -24[rbp]
	mov	esi, 10
	mov	rax, QWORD PTR [rdi]
	mov	rax, QWORD PTR 48[rax]
	cmp	rax, QWORD PTR _ZNKSt5ctypeIcE8do_widenEc@GOTPCREL[rip]
	je	.L10
	mov	esi, 10
	call	rax
	movsx	esi, al
	jmp	.L10
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.type	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold, @function
_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold:
.LFSB4241:
.L12:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -24
	.cfi_offset 6, -16
	call	_ZSt16__throw_bad_castv@PLT
	.cfi_endproc
.LFE4241:
	.text
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	.section	.text.unlikely
	.size	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold, .-_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0.cold
.LCOLDE0:
	.text
.LHOTE0:
	.p2align 4
	.globl	_Z7do_workx
	.type	_Z7do_workx, @function
_Z7do_workx:
.LFB3289:
	.cfi_startproc
	test	rdi, rdi
	jle	.L20
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pxor	xmm1, xmm1
	mov	eax, 1
	movapd	xmm2, xmm1
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	.p2align 5
	.p2align 4
	.p2align 3
.L19:
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	ucomisd	xmm2, xmm0
	ja	.L22
	sqrtsd	xmm0, xmm0
	add	rax, 1
	addsd	xmm1, xmm0
	cmp	rdi, rax
	jge	.L19
.L14:
	leave
	.cfi_def_cfa 7, 8
	movapd	xmm0, xmm1
	xor	eax, eax
	xor	edi, edi
	ret
	.p2align 4,,10
	.p2align 3
.L20:
	.cfi_restore 6
	pxor	xmm1, xmm1
	movapd	xmm0, xmm1
	xor	eax, eax
	xor	edi, edi
	ret
.L22:
	.cfi_def_cfa 6, 16
	.cfi_offset 6, -16
	mov	QWORD PTR -24[rbp], rdi
	mov	QWORD PTR -8[rbp], rax
	movsd	QWORD PTR -16[rbp], xmm1
	call	sqrt@PLT
	mov	rax, QWORD PTR -8[rbp]
	mov	rdi, QWORD PTR -24[rbp]
	pxor	xmm2, xmm2
	movsd	xmm1, QWORD PTR -16[rbp]
	add	rax, 1
	cmp	rax, rdi
	addsd	xmm1, xmm0
	jle	.L19
	jmp	.L14
	.cfi_endproc
.LFE3289:
	.size	_Z7do_workx, .-_Z7do_workx
	.align 2
	.p2align 4
	.type	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEE6_M_runEv, @function
_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEE6_M_runEv:
.LFB4225:
	.cfi_startproc
	mov	rdi, QWORD PTR 8[rdi]
	jmp	_Z7do_workx@PLT
	.cfi_endproc
.LFE4225:
	.size	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEE6_M_runEv, .-_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEE6_M_runEv
	.section	.rodata._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_.str1.8,"aMS",@progbits,1
	.align 8
.LC2:
	.string	"basic_string: construction from null is not valid"
	.section	.text._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_,"axG",@progbits,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC5IS3_EEPKcRKS3_,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.type	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, @function
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_:
.LFB3650:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r13
	push	r12
	push	rbx
	sub	rsp, 40
	.cfi_offset 13, -24
	.cfi_offset 12, -32
	.cfi_offset 3, -40
	mov	r12, QWORD PTR fs:40
	mov	QWORD PTR -40[rbp], r12
	lea	r12, 16[rdi]
	mov	QWORD PTR [rdi], r12
	test	rsi, rsi
	je	.L41
	mov	rbx, rdi
	mov	rdi, rsi
	mov	r13, rsi
	call	strlen@PLT
	mov	QWORD PTR -48[rbp], rax
	mov	rcx, rax
	cmp	rax, 15
	ja	.L42
	cmp	rax, 1
	jne	.L33
	movzx	edx, BYTE PTR 0[r13]
	mov	BYTE PTR 16[rbx], dl
.L34:
	mov	QWORD PTR 8[rbx], rax
	mov	BYTE PTR [r12+rax], 0
	mov	rax, QWORD PTR -40[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L40
	add	rsp, 40
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	xor	eax, eax
	xor	edx, edx
	xor	ecx, ecx
	xor	esi, esi
	xor	edi, edi
	ret
	.p2align 4,,10
	.p2align 3
.L33:
	.cfi_restore_state
	test	rax, rax
	je	.L34
	jmp	.L32
	.p2align 4,,10
	.p2align 3
.L42:
	lea	rsi, -48[rbp]
	xor	edx, edx
	mov	rdi, rbx
	mov	QWORD PTR -56[rbp], rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm@PLT
	mov	rcx, QWORD PTR -56[rbp]
	mov	QWORD PTR [rbx], rax
	mov	r12, rax
	mov	rax, QWORD PTR -48[rbp]
	mov	QWORD PTR 16[rbx], rax
.L32:
	mov	rdi, r12
	mov	rdx, rcx
	mov	rsi, r13
	call	memcpy@PLT
	mov	rax, QWORD PTR -48[rbp]
	mov	r12, QWORD PTR [rbx]
	jmp	.L34
.L41:
	mov	rax, QWORD PTR -40[rbp]
	sub	rax, QWORD PTR fs:40
	je	.L30
.L40:
	call	__stack_chk_fail@PLT
.L30:
	lea	rdi, .LC2[rip]
	call	_ZSt19__throw_logic_errorPKc@PLT
	.cfi_endproc
.LFE3650:
	.size	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_, .-_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.weak	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_
	.set	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_,_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEPKcRKS3_
	.section	.text._ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,"axG",@progbits,_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_,comdat
	.p2align 4
	.weak	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.type	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, @function
_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_:
.LFB3652:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r13
	.cfi_offset 13, -24
	mov	r13, rdi
	push	r12
	.cfi_offset 12, -32
	mov	r12, rsi
	push	rbx
	sub	rsp, 8
	.cfi_offset 3, -40
	mov	rbx, QWORD PTR 8[rdi]
	mov	rdi, rsi
	call	strlen@PLT
	cmp	rbx, rax
	mov	eax, 0
	je	.L49
.L43:
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	xor	edx, edx
	xor	esi, esi
	xor	edi, edi
	ret
	.p2align 4,,10
	.p2align 3
.L49:
	.cfi_restore_state
	mov	eax, 1
	test	rbx, rbx
	je	.L43
	mov	rdi, QWORD PTR 0[r13]
	mov	rdx, rbx
	mov	rsi, r12
	call	memcmp@PLT
	test	eax, eax
	sete	al
	add	rsp, 8
	pop	rbx
	pop	r12
	pop	r13
	pop	rbp
	.cfi_def_cfa 7, 8
	xor	edx, edx
	xor	esi, esi
	xor	edi, edi
	ret
	.cfi_endproc
.LFE3652:
	.size	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_, .-_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_
	.section	.text._ZNSt6vectorISt6threadSaIS0_EED2Ev,"axG",@progbits,_ZNSt6vectorISt6threadSaIS0_EED5Ev,comdat
	.align 2
	.p2align 4
	.weak	_ZNSt6vectorISt6threadSaIS0_EED2Ev
	.type	_ZNSt6vectorISt6threadSaIS0_EED2Ev, @function
_ZNSt6vectorISt6threadSaIS0_EED2Ev:
.LFB3663:
	.cfi_startproc
	mov	rdx, QWORD PTR 8[rdi]
	mov	rcx, rdi
	mov	rdi, QWORD PTR [rdi]
	cmp	rdx, rdi
	je	.L51
	mov	rax, rdi
	.p2align 4
	.p2align 4
	.p2align 3
.L53:
	cmp	QWORD PTR [rax], 0
	jne	.L59
	add	rax, 8
	cmp	rdx, rax
	jne	.L53
.L51:
	test	rdi, rdi
	je	.L50
	mov	rsi, QWORD PTR 16[rcx]
	sub	rsi, rdi
	jmp	_ZdlPvm@PLT
	.p2align 4,,10
	.p2align 3
.L50:
	xor	eax, eax
	xor	edx, edx
	xor	ecx, ecx
	xor	esi, esi
	xor	edi, edi
	ret
.L59:
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	call	_ZSt9terminatev@PLT
	.cfi_endproc
.LFE3663:
	.size	_ZNSt6vectorISt6threadSaIS0_EED2Ev, .-_ZNSt6vectorISt6threadSaIS0_EED2Ev
	.weak	_ZNSt6vectorISt6threadSaIS0_EED1Ev
	.set	_ZNSt6vectorISt6threadSaIS0_EED1Ev,_ZNSt6vectorISt6threadSaIS0_EED2Ev
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC3:
	.string	"Usage: "
.LC4:
	.string	" <iterations> <single|multi>\n"
.LC5:
	.string	"stoll"
.LC6:
	.string	"single"
.LC7:
	.string	"multi"
.LC8:
	.string	"vector::_M_realloc_append"
.LC9:
	.string	"nproc"
	.section	.rodata.str1.8,"aMS",@progbits,1
	.align 8
.LC10:
	.string	"Invalid mode. Use 'single' or 'multi'.\n"
	.section	.text.unlikely
.LCOLDB12:
	.section	.text.startup,"ax",@progbits
.LHOTB12:
	.p2align 4
	.globl	main
	.type	main, @function
main:
.LFB3290:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA3290
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	r15
	push	r14
	push	r13
	push	r12
	push	rbx
	sub	rsp, 168
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	mov	r13, QWORD PTR fs:40
	mov	QWORD PTR -56[rbp], r13
	mov	r13, rsi
	cmp	edi, 2
	jle	.L138
	mov	rsi, QWORD PTR 8[r13]
	lea	rbx, -96[rbp]
	lea	rdx, -129[rbp]
	mov	rdi, rbx
.LEHB0:
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_@PLT
	mov	r14, QWORD PTR -96[rbp]
	call	__errno_location@PLT
	xor	ecx, ecx
	mov	edx, 10
	lea	rsi, -128[rbp]
	mov	r12, rax
	mov	eax, DWORD PTR [rax]
	mov	rdi, r14
	mov	DWORD PTR [r12], ecx
	mov	DWORD PTR -160[rbp], eax
	call	__isoc23_strtoll@PLT
	mov	QWORD PTR -152[rbp], rax
	cmp	r14, QWORD PTR -128[rbp]
	je	.L130
	mov	eax, DWORD PTR [r12]
	cmp	eax, 34
	je	.L131
	test	eax, eax
	jne	.L67
	mov	eax, DWORD PTR -160[rbp]
	mov	DWORD PTR [r12], eax
.L67:
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rsi, QWORD PTR 16[r13]
	mov	rdi, rbx
	lea	rdx, -128[rbp]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_@PLT
.LEHE0:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	lea	rsi, .LC6[rip]
	mov	rdi, rbx
	mov	QWORD PTR -184[rbp], rax
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_@PLT
	test	al, al
	jne	.L139
	lea	rsi, .LC7[rip]
	mov	rdi, rbx
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_@PLT
	test	al, al
	jne	.L140
	lea	rsi, .LC9[rip]
	mov	rdi, rbx
	call	_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_@PLT
	test	al, al
	je	.L95
	call	_ZNSt6thread20hardware_concurrencyEv@PLT
	mov	r12, QWORD PTR _ZSt4cout@GOTPCREL[rip]
	mov	esi, eax
	mov	rdi, r12
.LEHB1:
	call	_ZNSo9_M_insertImEERSoT_@PLT
	mov	rdi, rax
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
	jmp	.L94
.L139:
	mov	rdi, QWORD PTR -152[rbp]
	call	_Z7do_workx@PLT
.L137:
	mov	r12, QWORD PTR _ZSt4cout@GOTPCREL[rip]
.L94:
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	pxor	xmm0, xmm0
	mov	rdi, r12
	sub	rax, QWORD PTR -184[rbp]
	cvtsi2sd	xmm0, rax
	divsd	xmm0, QWORD PTR .LC11[rip]
	call	_ZNSo9_M_insertIdEERSoT_@PLT
	mov	rdi, rax
	call	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_.isra.0
.LEHE1:
	xor	r12d, r12d
.L96:
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
.L60:
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L141
	add	rsp, 168
	mov	eax, r12d
	pop	rbx
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	pop	rbp
	.cfi_remember_state
	.cfi_def_cfa 7, 8
	ret
.L138:
	.cfi_restore_state
	mov	rdi, QWORD PTR _ZSt4cerr@GOTPCREL[rip]
	mov	edx, 7
	lea	rsi, .LC3[rip]
	mov	r12d, 1
.LEHB2:
	call	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l@PLT
	mov	rsi, QWORD PTR 0[r13]
	mov	rdi, QWORD PTR _ZSt4cerr@GOTPCREL[rip]
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	lea	rsi, .LC4[rip]
	mov	rdi, rax
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE2:
	jmp	.L60
.L95:
	mov	rdi, QWORD PTR _ZSt4cerr@GOTPCREL[rip]
	lea	rsi, .LC10[rip]
.LEHB3:
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
.LEHE3:
	mov	r12d, 1
	jmp	.L96
.L140:
	call	_ZNSt6thread20hardware_concurrencyEv@PLT
	mov	edx, 4
	test	eax, eax
	cmovne	edx, eax
	xor	r12d, r12d
	xor	r14d, r14d
	xor	r13d, r13d
	mov	DWORD PTR -172[rbp], edx
	xor	edx, edx
	mov	QWORD PTR -160[rbp], rdx
	jmp	.L91
	.p2align 4,,10
	.p2align 3
.L143:
	mov	QWORD PTR [r12], 0
	mov	edi, 16
.LEHB4:
	call	_Znwm@PLT
.LEHE4:
	mov	rsi, QWORD PTR -152[rbp]
	lea	rcx, _ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE[rip+16]
	mov	rdi, r12
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR [rax], rcx
	mov	rdx, QWORD PTR _ZNSt6thread24_M_thread_deps_never_runEv@GOTPCREL[rip]
	mov	QWORD PTR 8[rax], rsi
	lea	rsi, -128[rbp]
.LEHB5:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@PLT
.LEHE5:
	mov	rdi, QWORD PTR -128[rbp]
	test	rdi, rdi
	je	.L77
	mov	rax, QWORD PTR [rdi]
	call	[QWORD PTR 8[rax]]
.L77:
	add	r12, 8
.L78:
	add	r13d, 1
	cmp	DWORD PTR -172[rbp], r13d
	je	.L142
.L91:
	cmp	r12, QWORD PTR -160[rbp]
	jne	.L143
	movabs	rax, 1152921504606846975
	mov	rcx, r12
	sub	rcx, r14
	mov	rdx, rcx
	sar	rdx, 3
	cmp	rdx, rax
	je	.L132
	test	rdx, rdx
	mov	eax, 1
	mov	QWORD PTR -200[rbp], rcx
	cmovne	rax, rdx
	add	rax, rdx
	movabs	rdx, 1152921504606846975
	cmp	rax, rdx
	cmova	rax, rdx
	sal	rax, 3
	mov	rdi, rax
	mov	QWORD PTR -192[rbp], rax
.LEHB6:
	call	_Znwm@PLT
.LEHE6:
	mov	rcx, QWORD PTR -200[rbp]
	mov	QWORD PTR -168[rbp], rax
	mov	edi, 16
	add	rcx, rax
	xor	eax, eax
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR -200[rbp], rcx
.LEHB7:
	call	_Znwm@PLT
.LEHE7:
	lea	rsi, _ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE[rip+16]
	mov	rdx, QWORD PTR _ZNSt6thread24_M_thread_deps_never_runEv@GOTPCREL[rip]
	mov	rdi, QWORD PTR -200[rbp]
	mov	QWORD PTR -128[rbp], rax
	mov	QWORD PTR [rax], rsi
	mov	rsi, QWORD PTR -152[rbp]
	mov	QWORD PTR 8[rax], rsi
	lea	rsi, -128[rbp]
.LEHB8:
	call	_ZNSt6thread15_M_start_threadESt10unique_ptrINS_6_StateESt14default_deleteIS1_EEPFvvE@PLT
.LEHE8:
	mov	rdi, QWORD PTR -128[rbp]
	test	rdi, rdi
	je	.L84
	mov	rax, QWORD PTR [rdi]
	call	[QWORD PTR 8[rax]]
.L84:
	mov	rdx, QWORD PTR -168[rbp]
	mov	rax, r14
	cmp	r12, r14
	je	.L144
	.p2align 5
	.p2align 4
	.p2align 3
.L85:
	mov	rcx, QWORD PTR [rax]
	add	rax, 8
	add	rdx, 8
	mov	QWORD PTR -8[rdx], rcx
	cmp	r12, rax
	jne	.L85
	sub	r12, r14
	add	r12, QWORD PTR -168[rbp]
.L86:
	add	r12, 8
	test	r14, r14
	je	.L90
	mov	rsi, QWORD PTR -160[rbp]
	mov	rdi, r14
	sub	rsi, r14
	call	_ZdlPvm@PLT
.L90:
	mov	rax, QWORD PTR -192[rbp]
	mov	r14, QWORD PTR -168[rbp]
	add	rax, r14
	mov	QWORD PTR -160[rbp], rax
	jmp	.L78
.L142:
	cmp	r12, r14
	je	.L92
	mov	r13, r14
	.p2align 4
	.p2align 3
.L93:
	mov	rdi, r13
.LEHB9:
	call	_ZNSt6thread4joinEv@PLT
.LEHE9:
	add	r13, 8
	cmp	r12, r13
	jne	.L93
.L92:
	mov	rax, QWORD PTR -160[rbp]
	lea	rdi, -128[rbp]
	mov	QWORD PTR -128[rbp], r14
	mov	QWORD PTR -120[rbp], r12
	mov	QWORD PTR -112[rbp], rax
	call	_ZNSt6vectorISt6threadSaIS0_EED1Ev@PLT
	jmp	.L137
.L144:
	mov	r12, rdx
	jmp	.L86
.L141:
	call	__stack_chk_fail@PLT
.L108:
	mov	r13, rax
	jmp	.L87
.L107:
	mov	r13, rax
	jmp	.L89
.L103:
	mov	r13, rax
	jmp	.L97
.L106:
	mov	r13, rax
	jmp	.L79
.L128:
	jmp	.L129
	.section	.gcc_except_table,"a",@progbits
.LLSDA3290:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE3290-.LLSDACSB3290
.LLSDACSB3290:
	.uleb128 .LEHB0-.LFB3290
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB3290
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L103-.LFB3290
	.uleb128 0
	.uleb128 .LEHB2-.LFB3290
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB3290
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L103-.LFB3290
	.uleb128 0
	.uleb128 .LEHB4-.LFB3290
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L128-.LFB3290
	.uleb128 0
	.uleb128 .LEHB5-.LFB3290
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L106-.LFB3290
	.uleb128 0
	.uleb128 .LEHB6-.LFB3290
	.uleb128 .LEHE6-.LEHB6
	.uleb128 .L128-.LFB3290
	.uleb128 0
	.uleb128 .LEHB7-.LFB3290
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L107-.LFB3290
	.uleb128 0
	.uleb128 .LEHB8-.LFB3290
	.uleb128 .LEHE8-.LEHB8
	.uleb128 .L108-.LFB3290
	.uleb128 0
	.uleb128 .LEHB9-.LFB3290
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L128-.LFB3290
	.uleb128 0
.LLSDACSE3290:
	.section	.text.startup
	.cfi_endproc
	.section	.text.unlikely
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDAC3290
	.type	main.cold, @function
main.cold:
.LFSB3290:
.L131:
	.cfi_def_cfa 6, 16
	.cfi_offset 3, -56
	.cfi_offset 6, -16
	.cfi_offset 12, -48
	.cfi_offset 13, -40
	.cfi_offset 14, -32
	.cfi_offset 15, -24
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L145
	lea	rdi, .LC5[rip]
.LEHB10:
	call	_ZSt20__throw_out_of_rangePKc@PLT
.LEHE10:
.L87:
	mov	rdi, QWORD PTR -128[rbp]
	test	rdi, rdi
	je	.L89
	mov	rax, QWORD PTR [rdi]
	call	[QWORD PTR 8[rax]]
.L89:
	mov	rsi, QWORD PTR -192[rbp]
	mov	rdi, QWORD PTR -168[rbp]
	call	_ZdlPvm@PLT
.L81:
	mov	rax, QWORD PTR -160[rbp]
	lea	rdi, -128[rbp]
	mov	QWORD PTR -128[rbp], r14
	mov	QWORD PTR -120[rbp], r12
	mov	QWORD PTR -112[rbp], rax
	call	_ZNSt6vectorISt6threadSaIS0_EED1Ev@PLT
.L97:
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L146
	mov	rdi, r13
.LEHB11:
	call	_Unwind_Resume@PLT
.LEHE11:
.L145:
	call	__stack_chk_fail@PLT
.L130:
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L147
	lea	rdi, .LC5[rip]
.LEHB12:
	call	_ZSt24__throw_invalid_argumentPKc@PLT
.LEHE12:
.L147:
	call	__stack_chk_fail@PLT
.L79:
	mov	rdi, QWORD PTR -128[rbp]
	test	rdi, rdi
	je	.L81
	mov	rax, QWORD PTR [rdi]
	call	[QWORD PTR 8[rax]]
	jmp	.L81
.L104:
.L129:
	mov	r13, rax
	jmp	.L81
.L146:
	call	__stack_chk_fail@PLT
.L132:
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L148
	lea	rdi, .LC8[rip]
.LEHB13:
	call	_ZSt20__throw_length_errorPKc@PLT
.LEHE13:
.L105:
	mov	r13, rax
	cmp	DWORD PTR [r12], 0
	jne	.L71
	mov	eax, DWORD PTR -160[rbp]
	mov	DWORD PTR [r12], eax
.L71:
	mov	rdi, rbx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_disposeEv@PLT
	mov	rax, QWORD PTR -56[rbp]
	sub	rax, QWORD PTR fs:40
	jne	.L149
	mov	rdi, r13
.LEHB14:
	call	_Unwind_Resume@PLT
.LEHE14:
.L148:
	call	__stack_chk_fail@PLT
.L149:
	call	__stack_chk_fail@PLT
	.cfi_endproc
.LFE3290:
	.section	.gcc_except_table
.LLSDAC3290:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSEC3290-.LLSDACSBC3290
.LLSDACSBC3290:
	.uleb128 .LEHB10-.LCOLDB12
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L105-.LCOLDB12
	.uleb128 0
	.uleb128 .LEHB11-.LCOLDB12
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB12-.LCOLDB12
	.uleb128 .LEHE12-.LEHB12
	.uleb128 .L105-.LCOLDB12
	.uleb128 0
	.uleb128 .LEHB13-.LCOLDB12
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L104-.LCOLDB12
	.uleb128 0
	.uleb128 .LEHB14-.LCOLDB12
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSEC3290:
	.section	.text.unlikely
	.section	.text.startup
	.size	main, .-main
	.section	.text.unlikely
	.size	main.cold, .-main.cold
.LCOLDE12:
	.section	.text.startup
.LHOTE12:
	.section	.data.rel.ro,"aw"
	.align 8
	.type	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, @object
	.size	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, 24
_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE:
	.quad	_ZTVN10__cxxabiv120__si_class_type_infoE+16
	.quad	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE
	.quad	_ZTINSt6thread6_StateE
	.section	.rodata
	.align 32
	.type	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, @object
	.size	_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, 67
_ZTSNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE:
	.string	"*NSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE"
	.section	.data.rel.ro.local,"aw"
	.align 8
	.type	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, @object
	.size	_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE, 40
_ZTVNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE:
	.quad	0
	.quad	_ZTINSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEEE
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED1Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEED0Ev
	.quad	_ZNSt6thread11_State_implINS_8_InvokerISt5tupleIJZ4mainEUlvE_EEEEE6_M_runEv
	.section	.rodata.cst8,"aM",@progbits,8
	.align 8
.LC11:
	.long	0
	.long	1104006501
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.globl	__gxx_personality_v0
	.ident	"GCC: (GNU) 15.2.0"
	.section	.note.GNU-stack,"",@progbits
