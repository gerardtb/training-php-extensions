	.section	__TEXT,__text,regular,pure_instructions
	.section	__DWARF,__debug_info,regular,debug
Lsection_info:
	.section	__DWARF,__debug_abbrev,regular,debug
Lsection_abbrev:
	.section	__DWARF,__debug_aranges,regular,debug
	.section	__DWARF,__debug_macinfo,regular,debug
	.section	__DWARF,__debug_line,regular,debug
Lsection_line:
	.section	__DWARF,__debug_loc,regular,debug
	.section	__DWARF,__debug_str,regular,debug
Linfo_string:
	.section	__DWARF,__debug_ranges,regular,debug
Ldebug_range:
	.section	__DWARF,__debug_loc,regular,debug
Lsection_debug_loc:
	.section	__TEXT,__text,regular,pure_instructions
Ltext_begin:
	.section	__DATA,__data
	.file	1 "test2.c"
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
Lfunc_begin0:
	.loc	1 9 0                   ## test2.c:9:0
## BB#0:
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp6:
	.cfi_offset %rbx, -48
Ltmp7:
	.cfi_offset %r12, -40
Ltmp8:
	.cfi_offset %r14, -32
Ltmp9:
	.cfi_offset %r15, -24
	##DEBUG_VALUE: main:argc <- EDI
	##DEBUG_VALUE: main:argv <- RSI
	movq	%rsi, %r15
Ltmp10:
	##DEBUG_VALUE: main:argv <- R15
	movl	%edi, %ebx
Ltmp11:
	##DEBUG_VALUE: main:numIter <- 100
	##DEBUG_VALUE: main:numElements <- 1000000
	##DEBUG_VALUE: main:argc <- EBX
	movl	$100, %r14d
	movl	$1000000, %r12d         ## imm = 0xF4240
	cmpl	$2, %ebx
	jl	LBB0_3
## BB#1:
Ltmp12:
	##DEBUG_VALUE: main:argc <- EBX
	##DEBUG_VALUE: main:argv <- R15
	##DEBUG_VALUE: main:numElements <- 1000000
	##DEBUG_VALUE: main:numIter <- 100
	.loc	1 13 0 prologue_end     ## test2.c:13:0
	movq	8(%r15), %rdi
	callq	_atoi
	movl	%eax, %r12d
Ltmp13:
	##DEBUG_VALUE: main:numElements <- R12D
	.loc	1 14 0                  ## test2.c:14:0
	cmpl	$3, %ebx
	jl	LBB0_3
Ltmp14:
## BB#2:
	##DEBUG_VALUE: main:argv <- R15
	##DEBUG_VALUE: main:numElements <- R12D
	##DEBUG_VALUE: main:numIter <- 100
	.loc	1 14 0                  ## test2.c:14:0
	movq	16(%r15), %rdi
	callq	_atoi
	movl	%eax, %r14d
Ltmp15:
	##DEBUG_VALUE: main:numIter <- R14D
LBB0_3:                                 ## %.thread
	##DEBUG_VALUE: main:numElements <- 1000000
	##DEBUG_VALUE: main:numIter <- 100
	.loc	1 16 0                  ## test2.c:16:0
	movl	%r14d, %edi
	movl	%r12d, %esi
	callq	_test2_suma
	xorl	%eax, %eax
	.loc	1 18 0                  ## test2.c:18:0
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	ret
Ltmp16:
Lfunc_end0:
	.cfi_endproc

	.section	__TEXT,__const
	.align	4
LCPI1_0:
	.long	1127219200              ## 0x43300000
	.long	1160773632              ## 0x45300000
	.long	0                       ## 0x0
	.long	0                       ## 0x0
LCPI1_1:
	.quad	4841369599423283200     ## double 4.503600e+15
	.quad	4985484787499139072     ## double 1.934281e+25
	.section	__TEXT,__literal8,8byte_literals
	.align	3
LCPI1_2:
	.quad	4696837146684686336     ## double 1.0E+6
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_test2_suma
	.align	4, 0x90
_test2_suma:                            ## @test2_suma
	.cfi_startproc
Lfunc_begin1:
	.loc	1 22 0                  ## test2.c:22:0
## BB#0:
	pushq	%rbp
Ltmp20:
	.cfi_def_cfa_offset 16
Ltmp21:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp22:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
Ltmp23:
	.cfi_offset %rbx, -48
Ltmp24:
	.cfi_offset %r12, -40
Ltmp25:
	.cfi_offset %r14, -32
Ltmp26:
	.cfi_offset %r15, -24
	##DEBUG_VALUE: test2_suma:numIter <- EDI
	##DEBUG_VALUE: test2_suma:numElements <- ESI
	movl	%esi, %r12d
Ltmp27:
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	movl	%edi, %r14d
Ltmp28:
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	.loc	1 23 0 prologue_end     ## test2.c:23:0
	callq	_clock
	movq	%rax, %r15
Ltmp29:
	##DEBUG_VALUE: initData:size <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	.loc	1 50 0                  ## test2.c:50:0
	movslq	%r12d, %rbx
	leaq	(,%rbx,8), %rdi
	callq	_malloc
	movq	%rax, %rcx
	testl	%ebx, %ebx
Ltmp30:
	##DEBUG_VALUE: i <- 0
	jle	LBB1_3
Ltmp31:
## BB#1:                                ## %.lr.ph.i.preheader
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	movl	%r12d, %eax
	xorl	%edx, %edx
	.align	4, 0x90
LBB1_2:                                 ## %.lr.ph.i
                                        ## =>This Inner Loop Header: Depth=1
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	.loc	1 51 0                  ## test2.c:51:0
	movslq	%edx, %rsi
	imulq	$274877907, %rsi, %rdi  ## imm = 0x10624DD3
	movq	%rdi, %rbx
	shrq	$63, %rbx
	sarq	$38, %rdi
	addl	%ebx, %edi
	imull	$1000, %edi, %edi       ## imm = 0x3E8
	subl	%edi, %esi
	movslq	%esi, %rsi
	movq	%rsi, (%rcx,%rdx,8)
	.loc	1 51 0                  ## test2.c:51:0
	incq	%rdx
	cmpl	%edx, %eax
	jne	LBB1_2
Ltmp32:
LBB1_3:                                 ## %initData.exit.preheader
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	xorl	%esi, %esi
	.loc	1 28 0                  ## test2.c:28:0
Ltmp33:
	testl	%r14d, %r14d
	movl	$0, %ebx
	jle	LBB1_13
## BB#4:                                ## %.preheader.preheader
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	.loc	1 31 0                  ## test2.c:31:0
Ltmp34:
	leal	-1(%r12), %r10d
	incq	%r10
	movabsq	$8589934588, %r8        ## imm = 0x1FFFFFFFC
	movabsq	$3868559914774873017, %r9 ## imm = 0x35AFE2BEF878C3B9
	xorl	%r11d, %r11d
	.align	4, 0x90
LBB1_5:                                 ## %.preheader
                                        ## =>This Loop Header: Depth=1
                                        ##     Child Loop BB1_7 Depth 2
                                        ##     Child Loop BB1_11 Depth 2
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	testl	%r12d, %r12d
	movl	$0, %ebx
	jle	LBB1_12
## BB#6:                                ## %.lr.ph.preheader
                                        ##   in Loop: Header=BB1_5 Depth=1
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	movq	%r10, %rdx
	andq	%r8, %rdx
	pxor	%xmm0, %xmm0
	movl	$0, %ebx
	pxor	%xmm1, %xmm1
	movl	$0, %edi
	je	LBB1_9
	.align	4, 0x90
LBB1_7:                                 ## %vector.body
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	movdqa	%xmm1, %xmm2
	movdqa	%xmm0, %xmm3
	.loc	1 33 0                  ## test2.c:33:0
Ltmp35:
	movdqu	(%rcx,%rbx,8), %xmm0
	movdqu	16(%rcx,%rbx,8), %xmm1
	paddq	%xmm3, %xmm0
	paddq	%xmm2, %xmm1
Ltmp36:
	.loc	1 31 0                  ## test2.c:31:0
	addq	$4, %rbx
	cmpq	%rbx, %rdx
	jne	LBB1_7
## BB#8:                                ##   in Loop: Header=BB1_5 Depth=1
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	movq	%rdx, %rdi
LBB1_9:                                 ## %middle.block
                                        ##   in Loop: Header=BB1_5 Depth=1
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	.loc	1 33 0                  ## test2.c:33:0
Ltmp37:
	paddq	%xmm1, %xmm0
	movdqa	%xmm0, %xmm1
	punpckhqdq	%xmm1, %xmm1    ## xmm1 = xmm1[1,1]
	paddq	%xmm0, %xmm1
	movd	%xmm1, %rbx
	cmpq	%rdi, %r10
	je	LBB1_12
## BB#10:                               ## %.lr.ph.preheader19
                                        ##   in Loop: Header=BB1_5 Depth=1
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	leaq	(%rcx,%rdi,8), %rdx
	movl	%r12d, %eax
	subl	%edi, %eax
	.align	4, 0x90
LBB1_11:                                ## %.lr.ph
                                        ##   Parent Loop BB1_5 Depth=1
                                        ## =>  This Inner Loop Header: Depth=2
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	addq	(%rdx), %rbx
Ltmp38:
	.loc	1 31 0                  ## test2.c:31:0
	addq	$8, %rdx
	decl	%eax
	jne	LBB1_11
Ltmp39:
LBB1_12:                                ## %initData.exit
                                        ##   in Loop: Header=BB1_5 Depth=1
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	.loc	1 35 0                  ## test2.c:35:0
	addq	%r11, %rbx
Ltmp40:
	##DEBUG_VALUE: test2_suma:accum <- RBX
	.loc	1 36 0                  ## test2.c:36:0
	movq	%rbx, %rax
	imulq	%r9
	movq	%rdx, %rax
	shrq	$63, %rax
	sarq	$21, %rdx
	addq	%rax, %rdx
	imulq	$10000007, %rdx, %rax   ## imm = 0x989687
	subq	%rax, %rbx
Ltmp41:
	.loc	1 28 0                  ## test2.c:28:0
	incl	%esi
Ltmp42:
	##DEBUG_VALUE: j <- ESI
	cmpl	%r14d, %esi
	movq	%rbx, %r11
	jne	LBB1_5
Ltmp43:
LBB1_13:                                ## %initData.exit._crit_edge
	##DEBUG_VALUE: test2_suma:numIter <- R14D
	##DEBUG_VALUE: test2_suma:numElements <- R12D
	##DEBUG_VALUE: test2_suma:ckini <- R15
	.loc	1 39 0                  ## test2.c:39:0
	movq	%rcx, %rdi
	callq	_free
	.loc	1 41 0                  ## test2.c:41:0
	callq	_clock
Ltmp44:
	##DEBUG_VALUE: test2_suma:ckend <- RAX
	.loc	1 43 0                  ## test2.c:43:0
	subq	%r15, %rax
Ltmp45:
	movd	%rax, %xmm0
	punpckldq	LCPI1_0(%rip), %xmm0 ## xmm0 = xmm0[0],mem[0],xmm0[1],mem[1]
	subpd	LCPI1_1(%rip), %xmm0
	haddpd	%xmm0, %xmm0
	divsd	LCPI1_2(%rip), %xmm0
	leaq	L_.str(%rip), %rdi
	movb	$1, %al
	movl	%r14d, %edx
	movq	%rbx, %rcx
	movl	%r12d, %esi
	popq	%rbx
	popq	%r12
Ltmp46:
	popq	%r14
Ltmp47:
	popq	%r15
Ltmp48:
	popq	%rbp
	jmp	_printf                 ## TAILCALL
Ltmp49:
Lfunc_end1:
	.cfi_endproc

	.globl	_initData
	.align	4, 0x90
_initData:                              ## @initData
	.cfi_startproc
Lfunc_begin2:
	.loc	1 49 0                  ## test2.c:49:0
## BB#0:
	pushq	%rbp
Ltmp53:
	.cfi_def_cfa_offset 16
Ltmp54:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp55:
	.cfi_def_cfa_register %rbp
	pushq	%r14
	pushq	%rbx
Ltmp56:
	.cfi_offset %rbx, -32
Ltmp57:
	.cfi_offset %r14, -24
	##DEBUG_VALUE: initData:size <- EDI
	movl	%edi, %r14d
Ltmp58:
	##DEBUG_VALUE: initData:size <- R14D
	.loc	1 50 0 prologue_end     ## test2.c:50:0
	movslq	%r14d, %rbx
	leaq	(,%rbx,8), %rdi
	callq	_malloc
	testl	%ebx, %ebx
Ltmp59:
	##DEBUG_VALUE: i <- 0
	jle	LBB2_3
## BB#1:                                ## %.lr.ph.preheader
Ltmp60:
	##DEBUG_VALUE: initData:size <- R14D
	movl	%r14d, %ecx
	xorl	%edx, %edx
Ltmp61:
	.align	4, 0x90
LBB2_2:                                 ## %.lr.ph
                                        ## =>This Inner Loop Header: Depth=1
	.loc	1 51 0                  ## test2.c:51:0
	movslq	%edx, %rsi
	imulq	$274877907, %rsi, %rdi  ## imm = 0x10624DD3
	movq	%rdi, %rbx
	shrq	$63, %rbx
	sarq	$38, %rdi
	addl	%ebx, %edi
	imull	$1000, %edi, %edi       ## imm = 0x3E8
	subl	%edi, %esi
	movslq	%esi, %rsi
	movq	%rsi, (%rax,%rdx,8)
Ltmp62:
	.loc	1 51 0                  ## test2.c:51:0
	incq	%rdx
	cmpl	%edx, %ecx
	jne	LBB2_2
Ltmp63:
LBB2_3:                                 ## %._crit_edge
	.loc	1 52 0                  ## test2.c:52:0
	popq	%rbx
	popq	%r14
	popq	%rbp
	ret
Ltmp64:
Lfunc_end2:
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"Done, added %d elements %d times in %f secs, accum %ld\n"

	.section	__TEXT,__text,regular,pure_instructions
Ldebug_end0:
	.section	__DWARF,__debug_str,regular,debug
Linfo_string0:
	.asciz	"Apple LLVM version 5.1 (clang-503.0.40) (based on LLVM 3.4svn)"
Linfo_string1:
	.asciz	"test2.c"
Linfo_string2:
	.asciz	"/Users/gtortajada/gerard/unrelated_projects/testextensions/formacio01/test2/en_c_pur"
Linfo_string3:
	.asciz	"main"
Linfo_string4:
	.asciz	"int"
Linfo_string5:
	.asciz	"test2_suma"
Linfo_string6:
	.asciz	"initData"
Linfo_string7:
	.asciz	"long int"
Linfo_string8:
	.asciz	"argc"
Linfo_string9:
	.asciz	"argv"
Linfo_string10:
	.asciz	"char"
Linfo_string11:
	.asciz	"numIter"
Linfo_string12:
	.asciz	"numElements"
Linfo_string13:
	.asciz	"size"
Linfo_string14:
	.asciz	"data"
Linfo_string15:
	.asciz	"i"
Linfo_string16:
	.asciz	"ckini"
Linfo_string17:
	.asciz	"long unsigned int"
Linfo_string18:
	.asciz	"__darwin_clock_t"
Linfo_string19:
	.asciz	"clock_t"
Linfo_string20:
	.asciz	"accum"
Linfo_string21:
	.asciz	"ckend"
Linfo_string22:
	.asciz	"j"
Linfo_string23:
	.asciz	"sum"
	.section	__DWARF,__debug_info,regular,debug
L__DWARF__debug_info_begin0:
	.long	570                     ## Length of Unit
	.short	2                       ## DWARF version number
Lset0 = L__DWARF__debug_abbrev_begin-Lsection_abbrev ## Offset Into Abbrev. Section
	.long	Lset0
	.byte	8                       ## Address Size (in bytes)
	.byte	1                       ## Abbrev [1] 0xb:0x233 DW_TAG_compile_unit
Lset1 = Linfo_string0-Linfo_string      ## DW_AT_producer
	.long	Lset1
	.short	12                      ## DW_AT_language
Lset2 = Linfo_string1-Linfo_string      ## DW_AT_name
	.long	Lset2
	.quad	0                       ## DW_AT_low_pc
	.long	0                       ## DW_AT_stmt_list
Lset3 = Linfo_string2-Linfo_string      ## DW_AT_comp_dir
	.long	Lset3
	.byte	1                       ## DW_AT_APPLE_optimized
	.byte	2                       ## Abbrev [2] 0x27:0x5d DW_TAG_subprogram
Lset4 = Linfo_string3-Linfo_string      ## DW_AT_name
	.long	Lset4
	.byte	1                       ## DW_AT_decl_file
	.byte	8                       ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	132                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.quad	Lfunc_begin0            ## DW_AT_low_pc
	.quad	Lfunc_end0              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	3                       ## Abbrev [3] 0x47:0xf DW_TAG_formal_parameter
Lset5 = Linfo_string8-Linfo_string      ## DW_AT_name
	.long	Lset5
	.byte	1                       ## DW_AT_decl_file
	.byte	8                       ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
Lset6 = Ldebug_loc0-Lsection_debug_loc  ## DW_AT_location
	.long	Lset6
	.byte	3                       ## Abbrev [3] 0x56:0xf DW_TAG_formal_parameter
Lset7 = Linfo_string9-Linfo_string      ## DW_AT_name
	.long	Lset7
	.byte	1                       ## DW_AT_decl_file
	.byte	8                       ## DW_AT_decl_line
	.long	447                     ## DW_AT_type
Lset8 = Ldebug_loc4-Lsection_debug_loc  ## DW_AT_location
	.long	Lset8
	.byte	4                       ## Abbrev [4] 0x65:0xf DW_TAG_variable
Lset9 = Linfo_string11-Linfo_string     ## DW_AT_name
	.long	Lset9
	.byte	1                       ## DW_AT_decl_file
	.byte	11                      ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
Lset10 = Ldebug_loc8-Lsection_debug_loc ## DW_AT_location
	.long	Lset10
	.byte	4                       ## Abbrev [4] 0x74:0xf DW_TAG_variable
Lset11 = Linfo_string12-Linfo_string    ## DW_AT_name
	.long	Lset11
	.byte	1                       ## DW_AT_decl_file
	.byte	10                      ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
Lset12 = Ldebug_loc12-Lsection_debug_loc ## DW_AT_location
	.long	Lset12
	.byte	0                       ## End Of Children Mark
	.byte	5                       ## Abbrev [5] 0x84:0x7 DW_TAG_base_type
Lset13 = Linfo_string4-Linfo_string     ## DW_AT_name
	.long	Lset13
	.byte	5                       ## DW_AT_encoding
	.byte	4                       ## DW_AT_byte_size
	.byte	6                       ## Abbrev [6] 0x8b:0xf5 DW_TAG_subprogram
Lset14 = Linfo_string5-Linfo_string     ## DW_AT_name
	.long	Lset14
	.byte	1                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.quad	Lfunc_begin1            ## DW_AT_low_pc
	.quad	Lfunc_end1              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	3                       ## Abbrev [3] 0xa7:0xf DW_TAG_formal_parameter
Lset15 = Linfo_string11-Linfo_string    ## DW_AT_name
	.long	Lset15
	.byte	1                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
Lset16 = Ldebug_loc16-Lsection_debug_loc ## DW_AT_location
	.long	Lset16
	.byte	3                       ## Abbrev [3] 0xb6:0xf DW_TAG_formal_parameter
Lset17 = Linfo_string12-Linfo_string    ## DW_AT_name
	.long	Lset17
	.byte	1                       ## DW_AT_decl_file
	.byte	21                      ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
Lset18 = Ldebug_loc20-Lsection_debug_loc ## DW_AT_location
	.long	Lset18
	.byte	4                       ## Abbrev [4] 0xc5:0xf DW_TAG_variable
Lset19 = Linfo_string16-Linfo_string    ## DW_AT_name
	.long	Lset19
	.byte	1                       ## DW_AT_decl_file
	.byte	23                      ## DW_AT_decl_line
	.long	464                     ## DW_AT_type
Lset20 = Ldebug_loc26-Lsection_debug_loc ## DW_AT_location
	.long	Lset20
	.byte	4                       ## Abbrev [4] 0xd4:0xf DW_TAG_variable
Lset21 = Linfo_string20-Linfo_string    ## DW_AT_name
	.long	Lset21
	.byte	1                       ## DW_AT_decl_file
	.byte	27                      ## DW_AT_decl_line
	.long	440                     ## DW_AT_type
Lset22 = Ldebug_loc29-Lsection_debug_loc ## DW_AT_location
	.long	Lset22
	.byte	4                       ## Abbrev [4] 0xe3:0xf DW_TAG_variable
Lset23 = Linfo_string21-Linfo_string    ## DW_AT_name
	.long	Lset23
	.byte	1                       ## DW_AT_decl_file
	.byte	41                      ## DW_AT_decl_line
	.long	464                     ## DW_AT_type
Lset24 = Ldebug_loc33-Lsection_debug_loc ## DW_AT_location
	.long	Lset24
	.byte	7                       ## Abbrev [7] 0xf2:0xb DW_TAG_variable
Lset25 = Linfo_string14-Linfo_string    ## DW_AT_name
	.long	Lset25
	.byte	1                       ## DW_AT_decl_file
	.byte	25                      ## DW_AT_decl_line
	.long	435                     ## DW_AT_type
	.byte	8                       ## Abbrev [8] 0xfd:0x27 DW_TAG_inlined_subroutine
	.long	384                     ## DW_AT_abstract_origin
	.quad	Ltmp29                  ## DW_AT_low_pc
	.quad	Ltmp32                  ## DW_AT_high_pc
	.byte	1                       ## DW_AT_call_file
	.byte	25                      ## DW_AT_call_line
	.byte	9                       ## Abbrev [9] 0x114:0x9 DW_TAG_formal_parameter
	.long	399                     ## DW_AT_abstract_origin
Lset26 = Ldebug_loc24-Lsection_debug_loc ## DW_AT_location
	.long	Lset26
	.byte	10                      ## Abbrev [10] 0x11d:0x6 DW_TAG_variable
	.long	422                     ## DW_AT_abstract_origin
	.byte	0                       ## DW_AT_const_value
	.byte	0                       ## End Of Children Mark
	.byte	11                      ## Abbrev [11] 0x124:0x5b DW_TAG_lexical_block
	.quad	Ltmp33                  ## DW_AT_low_pc
	.quad	Ltmp43                  ## DW_AT_high_pc
	.byte	4                       ## Abbrev [4] 0x135:0xf DW_TAG_variable
Lset27 = Linfo_string22-Linfo_string    ## DW_AT_name
	.long	Lset27
	.byte	1                       ## DW_AT_decl_file
	.byte	28                      ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
Lset28 = Ldebug_loc31-Lsection_debug_loc ## DW_AT_location
	.long	Lset28
	.byte	11                      ## Abbrev [11] 0x144:0x3a DW_TAG_lexical_block
	.quad	Ltmp34                  ## DW_AT_low_pc
	.quad	Ltmp41                  ## DW_AT_high_pc
	.byte	7                       ## Abbrev [7] 0x155:0xb DW_TAG_variable
Lset29 = Linfo_string23-Linfo_string    ## DW_AT_name
	.long	Lset29
	.byte	1                       ## DW_AT_decl_file
	.byte	30                      ## DW_AT_decl_line
	.long	440                     ## DW_AT_type
	.byte	11                      ## Abbrev [11] 0x160:0x1d DW_TAG_lexical_block
	.quad	Ltmp34                  ## DW_AT_low_pc
	.quad	Ltmp39                  ## DW_AT_high_pc
	.byte	7                       ## Abbrev [7] 0x171:0xb DW_TAG_variable
Lset30 = Linfo_string15-Linfo_string    ## DW_AT_name
	.long	Lset30
	.byte	1                       ## DW_AT_decl_file
	.byte	31                      ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	12                      ## Abbrev [12] 0x180:0x33 DW_TAG_subprogram
Lset31 = Linfo_string6-Linfo_string     ## DW_AT_name
	.long	Lset31
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.byte	1                       ## DW_AT_prototyped
	.long	435                     ## DW_AT_type
	.byte	1                       ## DW_AT_external
	.byte	1                       ## DW_AT_accessibility
                                        ## DW_ACCESS_public
	.byte	1                       ## DW_AT_inline
	.byte	13                      ## Abbrev [13] 0x18f:0xb DW_TAG_formal_parameter
Lset32 = Linfo_string13-Linfo_string    ## DW_AT_name
	.long	Lset32
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
	.byte	7                       ## Abbrev [7] 0x19a:0xb DW_TAG_variable
Lset33 = Linfo_string14-Linfo_string    ## DW_AT_name
	.long	Lset33
	.byte	1                       ## DW_AT_decl_file
	.byte	50                      ## DW_AT_decl_line
	.long	435                     ## DW_AT_type
	.byte	14                      ## Abbrev [14] 0x1a5:0xd DW_TAG_lexical_block
	.byte	7                       ## Abbrev [7] 0x1a6:0xb DW_TAG_variable
Lset34 = Linfo_string15-Linfo_string    ## DW_AT_name
	.long	Lset34
	.byte	1                       ## DW_AT_decl_file
	.byte	51                      ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	15                      ## Abbrev [15] 0x1b3:0x5 DW_TAG_pointer_type
	.long	440                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x1b8:0x7 DW_TAG_base_type
Lset35 = Linfo_string7-Linfo_string     ## DW_AT_name
	.long	Lset35
	.byte	5                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	15                      ## Abbrev [15] 0x1bf:0x5 DW_TAG_pointer_type
	.long	452                     ## DW_AT_type
	.byte	15                      ## Abbrev [15] 0x1c4:0x5 DW_TAG_pointer_type
	.long	457                     ## DW_AT_type
	.byte	5                       ## Abbrev [5] 0x1c9:0x7 DW_TAG_base_type
Lset36 = Linfo_string10-Linfo_string    ## DW_AT_name
	.long	Lset36
	.byte	6                       ## DW_AT_encoding
	.byte	1                       ## DW_AT_byte_size
	.byte	16                      ## Abbrev [16] 0x1d0:0xb DW_TAG_typedef
	.long	475                     ## DW_AT_type
Lset37 = Linfo_string19-Linfo_string    ## DW_AT_name
	.long	Lset37
	.byte	1                       ## DW_AT_decl_file
	.byte	77                      ## DW_AT_decl_line
	.byte	16                      ## Abbrev [16] 0x1db:0xb DW_TAG_typedef
	.long	486                     ## DW_AT_type
Lset38 = Linfo_string18-Linfo_string    ## DW_AT_name
	.long	Lset38
	.byte	1                       ## DW_AT_decl_file
	.byte	115                     ## DW_AT_decl_line
	.byte	5                       ## Abbrev [5] 0x1e6:0x7 DW_TAG_base_type
Lset39 = Linfo_string17-Linfo_string    ## DW_AT_name
	.long	Lset39
	.byte	7                       ## DW_AT_encoding
	.byte	8                       ## DW_AT_byte_size
	.byte	17                      ## Abbrev [17] 0x1ed:0x50 DW_TAG_subprogram
	.long	384                     ## DW_AT_abstract_origin
	.quad	Lfunc_begin2            ## DW_AT_low_pc
	.quad	Lfunc_end2              ## DW_AT_high_pc
	.byte	1                       ## DW_AT_frame_base
	.byte	86
	.byte	3                       ## Abbrev [3] 0x204:0xf DW_TAG_formal_parameter
Lset40 = Linfo_string13-Linfo_string    ## DW_AT_name
	.long	Lset40
	.byte	1                       ## DW_AT_decl_file
	.byte	48                      ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
Lset41 = Ldebug_loc35-Lsection_debug_loc ## DW_AT_location
	.long	Lset41
	.byte	7                       ## Abbrev [7] 0x213:0xb DW_TAG_variable
Lset42 = Linfo_string14-Linfo_string    ## DW_AT_name
	.long	Lset42
	.byte	1                       ## DW_AT_decl_file
	.byte	50                      ## DW_AT_decl_line
	.long	435                     ## DW_AT_type
	.byte	11                      ## Abbrev [11] 0x21e:0x1e DW_TAG_lexical_block
	.quad	Ltmp61                  ## DW_AT_low_pc
	.quad	Ltmp63                  ## DW_AT_high_pc
	.byte	18                      ## Abbrev [18] 0x22f:0xc DW_TAG_variable
Lset43 = Linfo_string15-Linfo_string    ## DW_AT_name
	.long	Lset43
	.byte	1                       ## DW_AT_decl_file
	.byte	51                      ## DW_AT_decl_line
	.long	132                     ## DW_AT_type
	.byte	0                       ## DW_AT_const_value
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
	.byte	0                       ## End Of Children Mark
L__DWARF__debug_info_end0:
	.section	__DWARF,__debug_abbrev,regular,debug
L__DWARF__debug_abbrev_begin:
	.byte	1                       ## Abbreviation Code
	.byte	17                      ## DW_TAG_compile_unit
	.byte	1                       ## DW_CHILDREN_yes
	.byte	37                      ## DW_AT_producer
	.byte	14                      ## DW_FORM_strp
	.byte	19                      ## DW_AT_language
	.byte	5                       ## DW_FORM_data2
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	16                      ## DW_AT_stmt_list
	.byte	6                       ## DW_FORM_data4
	.byte	27                      ## DW_AT_comp_dir
	.byte	14                      ## DW_FORM_strp
	.ascii	"\341\177"              ## DW_AT_APPLE_optimized
	.byte	12                      ## DW_FORM_flag
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	2                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	3                       ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	2                       ## DW_AT_location
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	4                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	2                       ## DW_AT_location
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	5                       ## Abbreviation Code
	.byte	36                      ## DW_TAG_base_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	62                      ## DW_AT_encoding
	.byte	11                      ## DW_FORM_data1
	.byte	11                      ## DW_AT_byte_size
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	6                       ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	7                       ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	8                       ## Abbreviation Code
	.byte	29                      ## DW_TAG_inlined_subroutine
	.byte	1                       ## DW_CHILDREN_yes
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	88                      ## DW_AT_call_file
	.byte	11                      ## DW_FORM_data1
	.byte	89                      ## DW_AT_call_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	9                       ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	2                       ## DW_AT_location
	.byte	6                       ## DW_FORM_data4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	10                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	28                      ## DW_AT_const_value
	.byte	13                      ## DW_FORM_sdata
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	11                      ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	12                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	39                      ## DW_AT_prototyped
	.byte	12                      ## DW_FORM_flag
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	63                      ## DW_AT_external
	.byte	12                      ## DW_FORM_flag
	.byte	50                      ## DW_AT_accessibility
	.byte	11                      ## DW_FORM_data1
	.byte	32                      ## DW_AT_inline
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	13                      ## Abbreviation Code
	.byte	5                       ## DW_TAG_formal_parameter
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	14                      ## Abbreviation Code
	.byte	11                      ## DW_TAG_lexical_block
	.byte	1                       ## DW_CHILDREN_yes
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	15                      ## Abbreviation Code
	.byte	15                      ## DW_TAG_pointer_type
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	16                      ## Abbreviation Code
	.byte	22                      ## DW_TAG_typedef
	.byte	0                       ## DW_CHILDREN_no
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	17                      ## Abbreviation Code
	.byte	46                      ## DW_TAG_subprogram
	.byte	1                       ## DW_CHILDREN_yes
	.byte	49                      ## DW_AT_abstract_origin
	.byte	19                      ## DW_FORM_ref4
	.byte	17                      ## DW_AT_low_pc
	.byte	1                       ## DW_FORM_addr
	.byte	18                      ## DW_AT_high_pc
	.byte	1                       ## DW_FORM_addr
	.byte	64                      ## DW_AT_frame_base
	.byte	10                      ## DW_FORM_block1
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	18                      ## Abbreviation Code
	.byte	52                      ## DW_TAG_variable
	.byte	0                       ## DW_CHILDREN_no
	.byte	3                       ## DW_AT_name
	.byte	14                      ## DW_FORM_strp
	.byte	58                      ## DW_AT_decl_file
	.byte	11                      ## DW_FORM_data1
	.byte	59                      ## DW_AT_decl_line
	.byte	11                      ## DW_FORM_data1
	.byte	73                      ## DW_AT_type
	.byte	19                      ## DW_FORM_ref4
	.byte	28                      ## DW_AT_const_value
	.byte	13                      ## DW_FORM_sdata
	.byte	0                       ## EOM(1)
	.byte	0                       ## EOM(2)
	.byte	0                       ## EOM(3)
L__DWARF__debug_abbrev_end:
	.section	__DWARF,__debug_loc,regular,debug
Ldebug_loc0:
	.quad	Lfunc_begin0
	.quad	Ltmp11
Lset44 = Ltmp66-Ltmp65                  ## Loc expr size
	.short	Lset44
Ltmp65:
	.byte	85                      ## DW_OP_reg5
Ltmp66:
	.quad	Ltmp11
	.quad	Ltmp14
Lset45 = Ltmp68-Ltmp67                  ## Loc expr size
	.short	Lset45
Ltmp67:
	.byte	83                      ## DW_OP_reg3
Ltmp68:
	.quad	0
	.quad	0
Ldebug_loc4:
	.quad	Lfunc_begin0
	.quad	Ltmp10
Lset46 = Ltmp70-Ltmp69                  ## Loc expr size
	.short	Lset46
Ltmp69:
	.byte	84                      ## DW_OP_reg4
Ltmp70:
	.quad	Ltmp10
	.quad	Ltmp15
Lset47 = Ltmp72-Ltmp71                  ## Loc expr size
	.short	Lset47
Ltmp71:
	.byte	95                      ## DW_OP_reg15
Ltmp72:
	.quad	0
	.quad	0
Ldebug_loc8:
	.quad	Ltmp11
	.quad	Ltmp15
Lset48 = Ltmp74-Ltmp73                  ## Loc expr size
	.short	Lset48
Ltmp73:
	.byte	16                      ## DW_OP_constu
	.byte	100
Ltmp74:
	.quad	Ltmp15
	.quad	Ltmp15
Lset49 = Ltmp76-Ltmp75                  ## Loc expr size
	.short	Lset49
Ltmp75:
	.byte	94                      ## DW_OP_reg14
Ltmp76:
	.quad	Ltmp15
	.quad	Lfunc_end0
Lset50 = Ltmp78-Ltmp77                  ## Loc expr size
	.short	Lset50
Ltmp77:
	.byte	16                      ## DW_OP_constu
	.byte	100
Ltmp78:
	.quad	0
	.quad	0
Ldebug_loc12:
	.quad	Ltmp11
	.quad	Ltmp13
Lset51 = Ltmp80-Ltmp79                  ## Loc expr size
	.short	Lset51
Ltmp79:
	.byte	16                      ## DW_OP_constu
	.ascii	"\300\204="
Ltmp80:
	.quad	Ltmp13
	.quad	Ltmp15
Lset52 = Ltmp82-Ltmp81                  ## Loc expr size
	.short	Lset52
Ltmp81:
	.byte	92                      ## DW_OP_reg12
Ltmp82:
	.quad	Ltmp15
	.quad	Lfunc_end0
Lset53 = Ltmp84-Ltmp83                  ## Loc expr size
	.short	Lset53
Ltmp83:
	.byte	16                      ## DW_OP_constu
	.ascii	"\300\204="
Ltmp84:
	.quad	0
	.quad	0
Ldebug_loc16:
	.quad	Lfunc_begin1
	.quad	Ltmp28
Lset54 = Ltmp86-Ltmp85                  ## Loc expr size
	.short	Lset54
Ltmp85:
	.byte	85                      ## DW_OP_reg5
Ltmp86:
	.quad	Ltmp28
	.quad	Ltmp47
Lset55 = Ltmp88-Ltmp87                  ## Loc expr size
	.short	Lset55
Ltmp87:
	.byte	94                      ## DW_OP_reg14
Ltmp88:
	.quad	0
	.quad	0
Ldebug_loc20:
	.quad	Lfunc_begin1
	.quad	Ltmp27
Lset56 = Ltmp90-Ltmp89                  ## Loc expr size
	.short	Lset56
Ltmp89:
	.byte	84                      ## DW_OP_reg4
Ltmp90:
	.quad	Ltmp27
	.quad	Ltmp46
Lset57 = Ltmp92-Ltmp91                  ## Loc expr size
	.short	Lset57
Ltmp91:
	.byte	92                      ## DW_OP_reg12
Ltmp92:
	.quad	0
	.quad	0
Ldebug_loc24:
	.quad	Ltmp29
	.quad	Ltmp31
Lset58 = Ltmp94-Ltmp93                  ## Loc expr size
	.short	Lset58
Ltmp93:
	.byte	92                      ## DW_OP_reg12
Ltmp94:
	.quad	0
	.quad	0
Ldebug_loc26:
	.quad	Ltmp29
	.quad	Ltmp48
Lset59 = Ltmp96-Ltmp95                  ## Loc expr size
	.short	Lset59
Ltmp95:
	.byte	95                      ## DW_OP_reg15
Ltmp96:
	.quad	0
	.quad	0
Ldebug_loc29:
	.quad	Ltmp40
	.quad	Ltmp41
Lset60 = Ltmp98-Ltmp97                  ## Loc expr size
	.short	Lset60
Ltmp97:
	.byte	83                      ## DW_OP_reg3
Ltmp98:
	.quad	0
	.quad	0
Ldebug_loc31:
	.quad	Ltmp42
	.quad	Ltmp43
Lset61 = Ltmp100-Ltmp99                 ## Loc expr size
	.short	Lset61
Ltmp99:
	.byte	84                      ## DW_OP_reg4
Ltmp100:
	.quad	0
	.quad	0
Ldebug_loc33:
	.quad	Ltmp44
	.quad	Ltmp45
Lset62 = Ltmp102-Ltmp101                ## Loc expr size
	.short	Lset62
Ltmp101:
	.byte	80                      ## DW_OP_reg0
Ltmp102:
	.quad	0
	.quad	0
Ldebug_loc35:
	.quad	Lfunc_begin2
	.quad	Ltmp58
Lset63 = Ltmp104-Ltmp103                ## Loc expr size
	.short	Lset63
Ltmp103:
	.byte	85                      ## DW_OP_reg5
Ltmp104:
	.quad	Ltmp58
	.quad	Ltmp61
Lset64 = Ltmp106-Ltmp105                ## Loc expr size
	.short	Lset64
Ltmp105:
	.byte	94                      ## DW_OP_reg14
Ltmp106:
	.quad	0
	.quad	0
Ldebug_loc39:
	.section	__DWARF,__debug_aranges,regular,debug
	.long	44                      ## Length of ARange Set
	.short	2                       ## DWARF Arange version number
Lset65 = L__DWARF__debug_info_begin0-Lsection_info ## Offset Into Debug Info Section
	.long	Lset65
	.byte	8                       ## Address Size (in bytes)
	.byte	0                       ## Segment Size (in bytes)
	.byte	255
	.byte	255
	.byte	255
	.byte	255
	.quad	Lfunc_begin0
Lset66 = Ldebug_end0-Lfunc_begin0
	.quad	Lset66
	.quad	0                       ## ARange terminator
	.quad	0
	.section	__DWARF,__debug_ranges,regular,debug
	.section	__DWARF,__debug_macinfo,regular,debug
	.section	__DWARF,__apple_names,regular,debug
Lnames_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	3                       ## Header Bucket Count
	.long	3                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	0                       ## Bucket 0
	.long	1                       ## Bucket 1
	.long	2                       ## Bucket 2
	.long	2116056876              ## Hash in Bucket 0
	.long	2090499946              ## Hash in Bucket 1
	.long	1937862515              ## Hash in Bucket 2
	.long	LNames1-Lnames_begin    ## Offset in Bucket 0
	.long	LNames0-Lnames_begin    ## Offset in Bucket 1
	.long	LNames2-Lnames_begin    ## Offset in Bucket 2
LNames1:
Lset67 = Linfo_string5-Linfo_string     ## test2_suma
	.long	Lset67
	.long	1                       ## Num DIEs
	.long	139
	.long	0
LNames0:
Lset68 = Linfo_string3-Linfo_string     ## main
	.long	Lset68
	.long	1                       ## Num DIEs
	.long	39
	.long	0
LNames2:
Lset69 = Linfo_string6-Linfo_string     ## initData
	.long	Lset69
	.long	2                       ## Num DIEs
	.long	253
	.long	493
	.long	0
	.section	__DWARF,__apple_objc,regular,debug
Lobjc_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_namespac,regular,debug
Lnamespac_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	1                       ## Header Bucket Count
	.long	0                       ## Header Hash Count
	.long	12                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	1                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.long	-1                      ## Bucket 0
	.section	__DWARF,__apple_types,regular,debug
Ltypes_begin:
	.long	1212240712              ## Header Magic
	.short	1                       ## Header Version
	.short	0                       ## Header Hash Function
	.long	6                       ## Header Bucket Count
	.long	6                       ## Header Hash Count
	.long	20                      ## Header Data Length
	.long	0                       ## HeaderData Die Offset Base
	.long	3                       ## HeaderData Atom Count
	.short	1                       ## DW_ATOM_die_offset
	.short	6                       ## DW_FORM_data4
	.short	3                       ## DW_ATOM_die_tag
	.short	5                       ## DW_FORM_data2
	.short	4                       ## DW_ATOM_type_flags
	.short	11                      ## DW_FORM_data1
	.long	0                       ## Bucket 0
	.long	-1                      ## Bucket 1
	.long	2                       ## Bucket 2
	.long	-1                      ## Bucket 3
	.long	3                       ## Bucket 4
	.long	4                       ## Bucket 5
	.long	177647526               ## Hash in Bucket 0
	.long	-1880351968             ## Hash in Bucket 0
	.long	193495088               ## Hash in Bucket 2
	.long	-863830716              ## Hash in Bucket 4
	.long	-80380739               ## Hash in Bucket 5
	.long	2090147939              ## Hash in Bucket 5
	.long	Ltypes0-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes3-Ltypes_begin    ## Offset in Bucket 0
	.long	Ltypes2-Ltypes_begin    ## Offset in Bucket 2
	.long	Ltypes5-Ltypes_begin    ## Offset in Bucket 4
	.long	Ltypes1-Ltypes_begin    ## Offset in Bucket 5
	.long	Ltypes4-Ltypes_begin    ## Offset in Bucket 5
Ltypes0:
Lset70 = Linfo_string18-Linfo_string    ## __darwin_clock_t
	.long	Lset70
	.long	1                       ## Num DIEs
	.long	475
	.short	22
	.byte	0
	.long	0
Ltypes3:
Lset71 = Linfo_string7-Linfo_string     ## long int
	.long	Lset71
	.long	1                       ## Num DIEs
	.long	440
	.short	36
	.byte	0
	.long	0
Ltypes2:
Lset72 = Linfo_string4-Linfo_string     ## int
	.long	Lset72
	.long	1                       ## Num DIEs
	.long	132
	.short	36
	.byte	0
	.long	0
Ltypes5:
Lset73 = Linfo_string19-Linfo_string    ## clock_t
	.long	Lset73
	.long	1                       ## Num DIEs
	.long	464
	.short	22
	.byte	0
	.long	0
Ltypes1:
Lset74 = Linfo_string17-Linfo_string    ## long unsigned int
	.long	Lset74
	.long	1                       ## Num DIEs
	.long	486
	.short	36
	.byte	0
	.long	0
Ltypes4:
Lset75 = Linfo_string10-Linfo_string    ## char
	.long	Lset75
	.long	1                       ## Num DIEs
	.long	457
	.short	36
	.byte	0
	.long	0

.subsections_via_symbols
