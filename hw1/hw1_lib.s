	.file	"hw1_lib.c"
	.text
.Ltext0:
	.p2align 4,,15
	.globl	gray_to_binary
	.type	gray_to_binary, @function
gray_to_binary:
.LFB24:
	.file 1 "hw1_lib.c"
	.loc 1 10 0
	.cfi_startproc
.LVL0:
	.loc 1 15 0
	movl	%edi, %eax
	.loc 1 20 0
	movl	%edi, %ecx
	.loc 1 15 0
	andw	$-32768, %ax
.LVL1:
	.loc 1 20 0
	andw	$16384, %cx
	movl	%eax, %esi
	.loc 1 22 0
	movl	%eax, %edx
	.loc 1 20 0
	shrw	%si
	.loc 1 22 0
	orb	$64, %dh
.LVL2:
	cmpw	%cx, %si
	.loc 1 20 0
	movl	%edi, %esi
	cmovne	%edx, %eax
.LVL3:
	andw	$8192, %si
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andw	$16384, %dx
	.loc 1 22 0
	orb	$32, %ch
.LVL4:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL5:
	andw	$4096, %si
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andw	$8192, %dx
	.loc 1 22 0
	orb	$16, %ch
.LVL6:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL7:
	andw	$2048, %si
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andw	$4096, %dx
	.loc 1 22 0
	orb	$8, %ch
.LVL8:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL9:
	andw	$1024, %si
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andw	$2048, %dx
	.loc 1 22 0
	orb	$4, %ch
.LVL10:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL11:
	andw	$512, %si
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andw	$1024, %dx
	.loc 1 22 0
	orb	$2, %ch
.LVL12:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL13:
	andw	$256, %si
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andw	$512, %dx
	.loc 1 22 0
	orb	$1, %ch
.LVL14:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL15:
	andw	$128, %si
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andw	$256, %dx
	.loc 1 22 0
	orb	$-128, %cl
.LVL16:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL17:
	andl	$64, %esi
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andw	$128, %dx
	.loc 1 22 0
	orl	$64, %ecx
.LVL18:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL19:
	andl	$32, %esi
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andl	$64, %edx
	.loc 1 22 0
	orl	$32, %ecx
.LVL20:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL21:
	andl	$16, %esi
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andl	$32, %edx
	.loc 1 22 0
	orl	$16, %ecx
.LVL22:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL23:
	andl	$8, %esi
	movl	%eax, %edx
	.loc 1 22 0
	movl	%eax, %ecx
	.loc 1 20 0
	andl	$16, %edx
	.loc 1 22 0
	orl	$8, %ecx
.LVL24:
	.loc 1 20 0
	shrw	%dx
	cmpw	%si, %dx
	movl	%edi, %esi
	cmovne	%ecx, %eax
.LVL25:
	andl	$4, %esi
	movl	%eax, %ecx
	.loc 1 22 0
	movl	%eax, %edx
	.loc 1 20 0
	andl	$8, %ecx
	.loc 1 22 0
	orl	$4, %edx
.LVL26:
	.loc 1 20 0
	shrw	%cx
	cmpw	%si, %cx
	movl	%edi, %esi
	cmovne	%edx, %eax
.LVL27:
	andl	$2, %esi
	movl	%eax, %ecx
	.loc 1 22 0
	movl	%eax, %edx
	.loc 1 20 0
	andl	$4, %ecx
	.loc 1 22 0
	orl	$2, %edx
.LVL28:
	.loc 1 20 0
	shrw	%cx
	cmpw	%si, %cx
	cmove	%eax, %edx
.LVL29:
	andl	$1, %edi
	movl	%edx, %ecx
	.loc 1 22 0
	movl	%edx, %eax
	.loc 1 20 0
	andl	$2, %ecx
	.loc 1 22 0
	orl	$1, %eax
	.loc 1 20 0
	shrw	%cx
.LVL30:
	.loc 1 30 0
	cmpw	%di, %cx
	cmove	%edx, %eax
.LVL31:
	.loc 1 31 0
	ret
	.cfi_endproc
.LFE24:
	.size	gray_to_binary, .-gray_to_binary
	.p2align 4,,15
	.globl	binary_to_gray
	.type	binary_to_gray, @function
binary_to_gray:
.LFB25:
	.loc 1 34 0
	.cfi_startproc
.LVL32:
	.loc 1 39 0
	movl	%edi, %eax
	.loc 1 44 0
	movl	%edi, %edx
	.loc 1 39 0
	andw	$-32768, %ax
.LVL33:
	.loc 1 44 0
	andw	$16384, %dx
	movl	%eax, %esi
	.loc 1 46 0
	movl	%eax, %ecx
	.loc 1 44 0
	shrw	%si
	.loc 1 46 0
	orb	$64, %ch
.LVL34:
	cmpw	%si, %dx
	cmovne	%ecx, %eax
.LVL35:
	.loc 1 44 0
	movl	%edi, %ecx
	shrw	%dx
	andw	$8192, %cx
	.loc 1 46 0
	movl	%eax, %esi
	orw	$8192, %si
.LVL36:
	cmpw	%cx, %dx
	.loc 1 44 0
	movl	%edi, %edx
	cmovne	%esi, %eax
.LVL37:
	andw	$4096, %dx
	shrw	%cx
	.loc 1 46 0
	movl	%eax, %esi
	orw	$4096, %si
.LVL38:
	cmpw	%dx, %cx
	.loc 1 44 0
	movl	%edi, %ecx
	cmovne	%esi, %eax
.LVL39:
	andw	$2048, %cx
	shrw	%dx
	.loc 1 46 0
	movl	%eax, %esi
	orw	$2048, %si
.LVL40:
	cmpw	%cx, %dx
	.loc 1 44 0
	movl	%edi, %edx
	cmovne	%esi, %eax
.LVL41:
	andw	$1024, %dx
	shrw	%cx
	.loc 1 46 0
	movl	%eax, %esi
	orw	$1024, %si
.LVL42:
	cmpw	%dx, %cx
	.loc 1 44 0
	movl	%edi, %ecx
	cmovne	%esi, %eax
.LVL43:
	andw	$512, %cx
	shrw	%dx
	.loc 1 46 0
	movl	%eax, %esi
	orw	$512, %si
.LVL44:
	cmpw	%cx, %dx
	.loc 1 44 0
	movl	%edi, %edx
	cmovne	%esi, %eax
.LVL45:
	andw	$256, %dx
	shrw	%cx
	.loc 1 46 0
	movl	%eax, %esi
	orw	$256, %si
.LVL46:
	cmpw	%dx, %cx
	.loc 1 44 0
	movl	%edi, %ecx
	cmovne	%esi, %eax
.LVL47:
	andw	$128, %cx
	shrw	%dx
	.loc 1 46 0
	movl	%eax, %esi
	orb	$-128, %sil
.LVL48:
	cmpw	%cx, %dx
	.loc 1 44 0
	movl	%edi, %edx
	cmovne	%esi, %eax
.LVL49:
	andl	$64, %edx
	shrw	%cx
	.loc 1 46 0
	movl	%eax, %esi
	orl	$64, %esi
.LVL50:
	cmpw	%dx, %cx
	.loc 1 44 0
	movl	%edi, %ecx
	cmovne	%esi, %eax
.LVL51:
	andl	$32, %ecx
	shrw	%dx
	.loc 1 46 0
	movl	%eax, %esi
	orl	$32, %esi
.LVL52:
	cmpw	%cx, %dx
	.loc 1 44 0
	movl	%edi, %edx
	cmovne	%esi, %eax
.LVL53:
	andl	$16, %edx
	shrw	%cx
	.loc 1 46 0
	movl	%eax, %esi
	orl	$16, %esi
.LVL54:
	cmpw	%dx, %cx
	.loc 1 44 0
	movl	%edi, %ecx
	cmovne	%esi, %eax
.LVL55:
	andl	$8, %ecx
	shrw	%dx
	.loc 1 46 0
	movl	%eax, %esi
	orl	$8, %esi
.LVL56:
	cmpw	%cx, %dx
	cmovne	%esi, %eax
.LVL57:
	.loc 1 44 0
	movl	%edi, %esi
	shrw	%cx
	andl	$4, %esi
	.loc 1 46 0
	movl	%eax, %edx
	orl	$4, %edx
.LVL58:
	cmpw	%si, %cx
	.loc 1 44 0
	movl	%edi, %ecx
	cmovne	%edx, %eax
.LVL59:
	andl	$2, %ecx
	shrw	%si
	.loc 1 46 0
	movl	%eax, %edx
	orl	$2, %edx
.LVL60:
	cmpw	%cx, %si
	cmove	%eax, %edx
.LVL61:
	.loc 1 44 0
	andl	$1, %edi
	shrw	%cx
	.loc 1 46 0
	movl	%edx, %eax
	orl	$1, %eax
.LVL62:
	.loc 1 54 0
	cmpw	%di, %cx
	cmove	%edx, %eax
	.loc 1 55 0
	ret
	.cfi_endproc
.LFE25:
	.size	binary_to_gray, .-binary_to_gray
.Letext0:
	.file 2 "/usr/lib/gcc/x86_64-linux-gnu/4.7/include/stddef.h"
	.file 3 "/usr/include/x86_64-linux-gnu/bits/types.h"
	.file 4 "/usr/include/libio.h"
	.file 5 "/usr/include/stdint.h"
	.file 6 "/usr/include/stdio.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0x3d3
	.value	0x2
	.long	.Ldebug_abbrev0
	.byte	0x8
	.uleb128 0x1
	.long	.LASF56
	.byte	0x1
	.long	.LASF57
	.long	.LASF58
	.quad	.Ltext0
	.quad	.Letext0
	.long	.Ldebug_line0
	.uleb128 0x2
	.long	.LASF7
	.byte	0x2
	.byte	0xd5
	.long	0x38
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.long	.LASF2
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.long	.LASF3
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF4
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.long	.LASF5
	.uleb128 0x4
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.long	.LASF6
	.uleb128 0x2
	.long	.LASF8
	.byte	0x3
	.byte	0x8c
	.long	0x69
	.uleb128 0x2
	.long	.LASF9
	.byte	0x3
	.byte	0x8d
	.long	0x69
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x5
	.byte	0x8
	.uleb128 0x6
	.byte	0x8
	.long	0x95
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.long	.LASF11
	.uleb128 0x7
	.long	.LASF41
	.byte	0xd8
	.byte	0x4
	.byte	0xf6
	.long	0x263
	.uleb128 0x8
	.long	.LASF12
	.byte	0x4
	.byte	0xf7
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF13
	.byte	0x4
	.byte	0xfc
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF14
	.byte	0x4
	.byte	0xfd
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.long	.LASF15
	.byte	0x4
	.byte	0xfe
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.long	.LASF16
	.byte	0x4
	.byte	0xff
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x9
	.long	.LASF17
	.byte	0x4
	.value	0x100
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x9
	.long	.LASF18
	.byte	0x4
	.value	0x101
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x9
	.long	.LASF19
	.byte	0x4
	.value	0x102
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x9
	.long	.LASF20
	.byte	0x4
	.value	0x103
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x9
	.long	.LASF21
	.byte	0x4
	.value	0x105
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x9
	.long	.LASF22
	.byte	0x4
	.value	0x106
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x9
	.long	.LASF23
	.byte	0x4
	.value	0x107
	.long	0x8f
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x9
	.long	.LASF24
	.byte	0x4
	.value	0x109
	.long	0x2a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x9
	.long	.LASF25
	.byte	0x4
	.value	0x10b
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x9
	.long	.LASF26
	.byte	0x4
	.value	0x10d
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x9
	.long	.LASF27
	.byte	0x4
	.value	0x111
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x9
	.long	.LASF28
	.byte	0x4
	.value	0x113
	.long	0x70
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x9
	.long	.LASF29
	.byte	0x4
	.value	0x117
	.long	0x46
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x9
	.long	.LASF30
	.byte	0x4
	.value	0x118
	.long	0x54
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF31
	.byte	0x4
	.value	0x119
	.long	0x2ad
	.byte	0x3
	.byte	0x23
	.uleb128 0x83
	.uleb128 0x9
	.long	.LASF32
	.byte	0x4
	.value	0x11d
	.long	0x2bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x9
	.long	.LASF33
	.byte	0x4
	.value	0x126
	.long	0x7b
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x9
	.long	.LASF34
	.byte	0x4
	.value	0x12f
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x9
	.long	.LASF35
	.byte	0x4
	.value	0x130
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x9
	.long	.LASF36
	.byte	0x4
	.value	0x131
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x9
	.long	.LASF37
	.byte	0x4
	.value	0x132
	.long	0x8d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x9
	.long	.LASF38
	.byte	0x4
	.value	0x133
	.long	0x2d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb8
	.uleb128 0x9
	.long	.LASF39
	.byte	0x4
	.value	0x135
	.long	0x62
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x9
	.long	.LASF40
	.byte	0x4
	.value	0x137
	.long	0x2c3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.byte	0
	.uleb128 0xa
	.long	.LASF59
	.byte	0x4
	.byte	0x9b
	.uleb128 0x7
	.long	.LASF42
	.byte	0x18
	.byte	0x4
	.byte	0xa1
	.long	0x2a1
	.uleb128 0x8
	.long	.LASF43
	.byte	0x4
	.byte	0xa2
	.long	0x2a1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.long	.LASF44
	.byte	0x4
	.byte	0xa3
	.long	0x2a7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.long	.LASF45
	.byte	0x4
	.byte	0xa7
	.long	0x62
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x26a
	.uleb128 0x6
	.byte	0x8
	.long	0x9c
	.uleb128 0xb
	.long	0x95
	.long	0x2bd
	.uleb128 0xc
	.long	0x86
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x8
	.long	0x263
	.uleb128 0xb
	.long	0x95
	.long	0x2d3
	.uleb128 0xc
	.long	0x86
	.byte	0x13
	.byte	0
	.uleb128 0x2
	.long	.LASF46
	.byte	0x5
	.byte	0x31
	.long	0x46
	.uleb128 0xd
	.byte	0x1
	.long	.LASF50
	.byte	0x1
	.byte	0x9
	.byte	0x1
	.long	0x2d3
	.quad	.LFB24
	.quad	.LFE24
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x1
	.long	0x34d
	.uleb128 0xe
	.long	.LASF52
	.byte	0x1
	.byte	0x9
	.long	0x2d3
	.long	.LLST0
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0xb
	.long	0x62
	.long	.LLST1
	.uleb128 0x10
	.long	.LASF47
	.byte	0x1
	.byte	0xc
	.long	0x2d3
	.long	.LLST2
	.uleb128 0x10
	.long	.LASF48
	.byte	0x1
	.byte	0xd
	.long	0x2d3
	.long	.LLST3
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1
	.byte	0xf
	.long	0x2d3
	.long	.LLST4
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.long	.LASF51
	.byte	0x1
	.byte	0x21
	.byte	0x1
	.long	0x2d3
	.quad	.LFB25
	.quad	.LFE25
	.byte	0x2
	.byte	0x77
	.sleb128 8
	.byte	0x1
	.long	0x3bc
	.uleb128 0xe
	.long	.LASF53
	.byte	0x1
	.byte	0x21
	.long	0x2d3
	.long	.LLST5
	.uleb128 0xf
	.string	"i"
	.byte	0x1
	.byte	0x23
	.long	0x62
	.long	.LLST6
	.uleb128 0x10
	.long	.LASF47
	.byte	0x1
	.byte	0x24
	.long	0x2d3
	.long	.LLST7
	.uleb128 0x10
	.long	.LASF48
	.byte	0x1
	.byte	0x25
	.long	0x2d3
	.long	.LLST8
	.uleb128 0x10
	.long	.LASF49
	.byte	0x1
	.byte	0x27
	.long	0x2d3
	.long	.LLST9
	.byte	0
	.uleb128 0x11
	.long	.LASF54
	.byte	0x6
	.byte	0xa8
	.long	0x2a7
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.long	.LASF55
	.byte	0x6
	.byte	0xa9
	.long	0x2a7
	.byte	0x1
	.byte	0x1
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.quad	.LVL0-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x15
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x2e
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST1:
	.quad	.LVL1-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x2
	.byte	0x3e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST2:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x4
	.byte	0xb
	.value	0x8000
	.byte	0x9f
	.quad	.LVL3-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x4000
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x2000
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x800
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x200
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST3:
	.quad	.LVL0-.Ltext0
	.quad	.LVL3-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x4000
	.byte	0x9f
	.quad	.LVL3-.Ltext0
	.quad	.LVL5-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x2000
	.byte	0x9f
	.quad	.LVL5-.Ltext0
	.quad	.LVL7-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.quad	.LVL7-.Ltext0
	.quad	.LVL9-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x800
	.byte	0x9f
	.quad	.LVL9-.Ltext0
	.quad	.LVL11-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.quad	.LVL11-.Ltext0
	.quad	.LVL13-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x200
	.byte	0x9f
	.quad	.LVL13-.Ltext0
	.quad	.LVL15-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.quad	.LVL15-.Ltext0
	.quad	.LVL17-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.quad	.LVL17-.Ltext0
	.quad	.LVL19-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.quad	.LVL19-.Ltext0
	.quad	.LVL21-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	.LVL21-.Ltext0
	.quad	.LVL23-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL23-.Ltext0
	.quad	.LVL25-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL25-.Ltext0
	.quad	.LVL27-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL27-.Ltext0
	.quad	.LVL29-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL30-.Ltext0
	.quad	.LFE24-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST4:
	.quad	.LVL1-.Ltext0
	.quad	.LVL2-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL3-.Ltext0
	.quad	.LVL4-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL5-.Ltext0
	.quad	.LVL6-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL7-.Ltext0
	.quad	.LVL8-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL9-.Ltext0
	.quad	.LVL10-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL11-.Ltext0
	.quad	.LVL12-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL13-.Ltext0
	.quad	.LVL14-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL15-.Ltext0
	.quad	.LVL16-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL17-.Ltext0
	.quad	.LVL18-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL19-.Ltext0
	.quad	.LVL20-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL21-.Ltext0
	.quad	.LVL22-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL23-.Ltext0
	.quad	.LVL24-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL25-.Ltext0
	.quad	.LVL26-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL27-.Ltext0
	.quad	.LVL28-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL29-.Ltext0
	.quad	.LVL30-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	.LVL30-.Ltext0
	.quad	.LVL31-.Ltext0
	.value	0x15
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0x30
	.byte	0x24
	.byte	0x2e
	.byte	0x28
	.value	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.quad	0
	.quad	0
.LLST5:
	.quad	.LVL32-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x1
	.byte	0x55
	.quad	0
	.quad	0
.LLST6:
	.quad	.LVL33-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x2
	.byte	0x3e
	.byte	0x9f
	.quad	0
	.quad	0
.LLST7:
	.quad	.LVL32-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x4
	.byte	0xb
	.value	0x8000
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x4000
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x2000
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x800
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x200
	.byte	0x9f
	.quad	.LVL47-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.quad	.LVL49-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.quad	.LVL51-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.quad	.LVL53-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	.LVL55-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL57-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL59-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL61-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL62-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	0
	.quad	0
.LLST8:
	.quad	.LVL32-.Ltext0
	.quad	.LVL35-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x4000
	.byte	0x9f
	.quad	.LVL35-.Ltext0
	.quad	.LVL37-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x2000
	.byte	0x9f
	.quad	.LVL37-.Ltext0
	.quad	.LVL39-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x1000
	.byte	0x9f
	.quad	.LVL39-.Ltext0
	.quad	.LVL41-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x800
	.byte	0x9f
	.quad	.LVL41-.Ltext0
	.quad	.LVL43-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x400
	.byte	0x9f
	.quad	.LVL43-.Ltext0
	.quad	.LVL45-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x200
	.byte	0x9f
	.quad	.LVL45-.Ltext0
	.quad	.LVL47-.Ltext0
	.value	0x4
	.byte	0xa
	.value	0x100
	.byte	0x9f
	.quad	.LVL47-.Ltext0
	.quad	.LVL49-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x80
	.byte	0x9f
	.quad	.LVL49-.Ltext0
	.quad	.LVL51-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x40
	.byte	0x9f
	.quad	.LVL51-.Ltext0
	.quad	.LVL53-.Ltext0
	.value	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.quad	.LVL53-.Ltext0
	.quad	.LVL55-.Ltext0
	.value	0x2
	.byte	0x40
	.byte	0x9f
	.quad	.LVL55-.Ltext0
	.quad	.LVL57-.Ltext0
	.value	0x2
	.byte	0x38
	.byte	0x9f
	.quad	.LVL57-.Ltext0
	.quad	.LVL59-.Ltext0
	.value	0x2
	.byte	0x34
	.byte	0x9f
	.quad	.LVL59-.Ltext0
	.quad	.LVL61-.Ltext0
	.value	0x2
	.byte	0x32
	.byte	0x9f
	.quad	.LVL61-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x2
	.byte	0x31
	.byte	0x9f
	.quad	.LVL62-.Ltext0
	.quad	.LFE25-.Ltext0
	.value	0x2
	.byte	0x30
	.byte	0x9f
	.quad	0
	.quad	0
.LLST9:
	.quad	.LVL33-.Ltext0
	.quad	.LVL34-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL35-.Ltext0
	.quad	.LVL36-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL37-.Ltext0
	.quad	.LVL38-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL39-.Ltext0
	.quad	.LVL40-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL41-.Ltext0
	.quad	.LVL42-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL43-.Ltext0
	.quad	.LVL44-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL45-.Ltext0
	.quad	.LVL46-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL47-.Ltext0
	.quad	.LVL48-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL49-.Ltext0
	.quad	.LVL50-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL51-.Ltext0
	.quad	.LVL52-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL53-.Ltext0
	.quad	.LVL54-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL55-.Ltext0
	.quad	.LVL56-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL57-.Ltext0
	.quad	.LVL58-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL59-.Ltext0
	.quad	.LVL60-.Ltext0
	.value	0x1
	.byte	0x50
	.quad	.LVL61-.Ltext0
	.quad	.LVL62-.Ltext0
	.value	0x1
	.byte	0x51
	.quad	0
	.quad	0
	.section	.debug_aranges,"",@progbits
	.long	0x2c
	.value	0x2
	.long	.Ldebug_info0
	.byte	0x8
	.byte	0
	.value	0
	.value	0
	.quad	.Ltext0
	.quad	.Letext0-.Ltext0
	.quad	0
	.quad	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"_IO_buf_end"
.LASF28:
	.string	"_old_offset"
.LASF23:
	.string	"_IO_save_end"
.LASF5:
	.string	"short int"
.LASF7:
	.string	"size_t"
.LASF10:
	.string	"sizetype"
.LASF33:
	.string	"_offset"
.LASF17:
	.string	"_IO_write_ptr"
.LASF12:
	.string	"_flags"
.LASF49:
	.string	"out16"
.LASF19:
	.string	"_IO_buf_base"
.LASF24:
	.string	"_markers"
.LASF14:
	.string	"_IO_read_end"
.LASF32:
	.string	"_lock"
.LASF6:
	.string	"long int"
.LASF29:
	.string	"_cur_column"
.LASF45:
	.string	"_pos"
.LASF44:
	.string	"_sbuf"
.LASF41:
	.string	"_IO_FILE"
.LASF1:
	.string	"unsigned char"
.LASF50:
	.string	"gray_to_binary"
.LASF37:
	.string	"__pad4"
.LASF4:
	.string	"signed char"
.LASF52:
	.string	"gray"
.LASF3:
	.string	"unsigned int"
.LASF42:
	.string	"_IO_marker"
.LASF31:
	.string	"_shortbuf"
.LASF56:
	.string	"GNU C 4.7.3"
.LASF16:
	.string	"_IO_write_base"
.LASF40:
	.string	"_unused2"
.LASF13:
	.string	"_IO_read_ptr"
.LASF2:
	.string	"short unsigned int"
.LASF57:
	.string	"hw1_lib.c"
.LASF11:
	.string	"char"
.LASF46:
	.string	"uint16_t"
.LASF53:
	.string	"binary"
.LASF43:
	.string	"_next"
.LASF34:
	.string	"__pad1"
.LASF35:
	.string	"__pad2"
.LASF36:
	.string	"__pad3"
.LASF58:
	.string	"/home/dmai/ucsc/e4357/hw1"
.LASF38:
	.string	"__pad5"
.LASF0:
	.string	"long unsigned int"
.LASF18:
	.string	"_IO_write_end"
.LASF9:
	.string	"__off64_t"
.LASF8:
	.string	"__off_t"
.LASF25:
	.string	"_chain"
.LASF22:
	.string	"_IO_backup_base"
.LASF54:
	.string	"stdin"
.LASF27:
	.string	"_flags2"
.LASF39:
	.string	"_mode"
.LASF15:
	.string	"_IO_read_base"
.LASF51:
	.string	"binary_to_gray"
.LASF30:
	.string	"_vtable_offset"
.LASF21:
	.string	"_IO_save_base"
.LASF26:
	.string	"_fileno"
.LASF47:
	.string	"num1"
.LASF48:
	.string	"num2"
.LASF55:
	.string	"stdout"
.LASF59:
	.string	"_IO_lock_t"
	.ident	"GCC: (Ubuntu/Linaro 4.7.3-1ubuntu1) 4.7.3"
	.section	.note.GNU-stack,"",@progbits
