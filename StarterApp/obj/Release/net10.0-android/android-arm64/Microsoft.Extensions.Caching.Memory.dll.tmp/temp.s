.section ".debug_abbrev"
.subsection 0
.Ldebug_abbrev_start:

	.byte 1,17,1,37,8,3,8,27,8,19,11,17,1,18,1,16,6,0,0,2,46,1,3,8,135,64,8,58,15,59,15,90
	.byte 8,17,1,18,1,64,10,0,0,3,5,0,3,8,73,19,2,10,0,0,15,5,0,3,8,73,19,2,6,0,0,4
	.byte 36,0,11,11,62,11,3,8,0,0,5,2,1,3,8,11,15,0,0,17,2,0,3,8,11,15,0,0,6,13,0,3
	.byte 8,73,19,56,10,0,0,7,22,0,3,8,73,19,0,0,8,4,1,3,8,11,15,73,19,0,0,9,40,0,3,8
	.byte 28,13,0,0,10,57,1,3,8,0,0,11,52,0,3,8,73,19,2,10,0,0,12,52,0,3,8,73,19,2,6,0
	.byte 0,13,15,0,73,19,0,0,14,16,0,73,19,0,0,16,28,0,73,19,56,10,0,0,18,46,0,3,8,17,1,18
	.byte 1,0,0,0
.section ".debug_info"
.subsection 0
.Ldebug_info_start:

.LDIFF_SYM0=.Ldebug_info_end - .Ldebug_info_begin
	.long .LDIFF_SYM0
.Ldebug_info_begin:

	.short 2
	.long .Ldebug_abbrev_start
	.byte 8,1
	.string "Mono AOT Compiler 10.0.7.0 (10.0.726.21808 @Commit: b16286c2284fecf303dbc12a0bb152476d662e44)"
	.string "Microsoft.Extensions.Caching.Memory.dll"
	.string ""

	.byte 2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.LDIFF_SYM1=.Ldebug_line_start - .Ldebug_line_section_start
	.long .LDIFF_SYM1
.LDIE_I1:

	.byte 4,1,5
	.string "sbyte"
.LDIE_U1:

	.byte 4,1,7
	.string "byte"
.LDIE_I2:

	.byte 4,2,5
	.string "short"
.LDIE_U2:

	.byte 4,2,7
	.string "ushort"
.LDIE_I4:

	.byte 4,4,5
	.string "int"
.LDIE_U4:

	.byte 4,4,7
	.string "uint"
.LDIE_I8:

	.byte 4,8,5
	.string "long"
.LDIE_U8:

	.byte 4,8,7
	.string "ulong"
.LDIE_I:

	.byte 4,8,5
	.string "intptr"
.LDIE_U:

	.byte 4,8,7
	.string "uintptr"
.LDIE_R4:

	.byte 4,4,4
	.string "float"
.LDIE_R8:

	.byte 4,8,4
	.string "double"
.LDIE_BOOLEAN:

	.byte 4,1,2
	.string "boolean"
.LDIE_CHAR:

	.byte 4,2,8
	.string "char"
.LDIE_STRING:

	.byte 4,8,1
	.string "string"
.LDIE_OBJECT:

	.byte 4,8,1
	.string "object"
.LDIE_SZARRAY:

	.byte 4,8,1
	.string "object"
.section ".debug_loc"
.subsection 0
.Ldebug_loc_start:
.section ".debug_frame"
.subsection 0
	.balign 8

.LDIFF_SYM2=.Lcie0_end - .Lcie0_start
	.long .LDIFF_SYM2
.Lcie0_start:

	.long -1
	.byte 3
	.string ""

	.byte 1,120,30
	.balign 8
.Lcie0_end:
.text 0
	.balign 8
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.text 0
	.balign 16
.Lm_6e:
	.local _PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int
	.type _PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int,@function
_PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int:
.inst 0xa9bb7bfd
.inst 0x910003fd
.inst 0xf90023af
.inst 0xf90013a0
.inst 0xf90017a1

adrp x16, mono_aot_Microsoft_Extensions_Caching_Memory_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Memory_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xd2800000
.inst 0xf9001ba0
.inst 0xf9001fa0
.inst 0xf94013a0
.inst 0xf9001ba0
.inst 0xb9802ba0
.inst 0xb9003ba0
.inst 0xf9401ba0
.inst 0xf9000ba0
.inst 0xf9401fa0
.inst 0xf9000fa0
.inst 0xa94107a0
.inst 0x910003bf
.inst 0xa8c57bfd
.inst 0xd65f03c0

	.size _PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int,.-_PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int
.Lme_6e:
.text 0
	.balign 16
.Lm_6f:
	.local _PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int
	.type _PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int,@function
_PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf90013af
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Caching_Memory_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Memory_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xb9801ba0
.inst 0xd37df001
.inst 0xf9400ba0
.inst 0x8b010000
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size _PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int,.-_PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int
.Lme_6f:
.text 0
	.balign 8
jit_code_end:

	.byte 0,0,0,0
.section ".data.rel.ro"
.subsection 0
	.balign 8
method_addresses:
	.local method_addresses
	.type method_addresses,@object
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_6e
bl .Lm_6f
bl method_addresses
method_addresses_end:

.section ".rodata"
.subsection 0
	.balign 8
unbox_trampolines:
unbox_trampolines_end:

	.long 0
.text 0
	.balign 8
unbox_trampoline_addresses:

	.long 0
.section ".rodata"
.subsection 0
	.balign 8
method_info_offsets:

	.byte 113,0,0,0,10,0,0,0,12,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,70,0
	.byte 80,0,90,0,100,0,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,4,255,255,255,255,251
.section ".rodata"
.subsection 0
	.balign 8
method_flags_table:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
extra_method_table:

	.byte 11,0,0,0,11,0,0,0,4,0,0,0,2,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
extra_method_info_offsets:

	.byte 0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
class_name_table:

	.byte 37,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0
	.byte 0,0,12,0,0,0,3,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,2,0,0,0,7,0,0,0,9,0,0,0,11,0,0,0,0,0,0,0,14,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0
	.byte 37,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,38,0,0,0,0,0,5,0,0,0,8,0,0,0,10,0
	.byte 0,0
.section ".rodata"
.subsection 0
	.balign 8
got_info_offsets:

	.byte 25,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,20,0,9,2,1,1,1,1,1,1,1,1
	.byte 21,2,2,2,2,3,2,2,2,2,42,3,2,3,3
.section ".rodata"
.subsection 0
	.balign 8
ex_info_offsets:

	.byte 113,0,0,0,10,0,0,0,12,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,70,0
	.byte 80,0,90,0,100,0,110,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,88,75,255,255,255,255,93
.section ".rodata"
.subsection 1
	.balign 8
unwind_info:

	.byte 13,12,31,0,68,14,80,157,10,158,9,68,13,29,13,12,31,0,68,14,48,157,6,158,5,68,13,29
.section ".rodata"
.subsection 0
	.balign 8
class_info_offsets:

	.byte 14,0,0,0,10,0,0,0,2,0,0,0,2,0,0,0,0,0,11,0,128,210,7,23,36,23,24,24,25,21,23,129
	.byte 190,24,24,23

.text 0
	.balign 16
plt:
mono_aot_Microsoft_Extensions_Caching_Memory_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,@function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:
adrp x16, mono_aot_Microsoft_Extensions_Caching_Memory_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Memory_got
ldr x16, [x16, 208]
br x16
.inst 56
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.size mono_aot_Microsoft_Extensions_Caching_Memory_plt,.-mono_aot_Microsoft_Extensions_Caching_Memory_plt
plt_end:
.section ".rodata"
.subsection 0
	.balign 8
image_table:

	.byte 2,0,0,0,77,105,99,114,111,115,111,102,116,46,69,120,116,101,110,115,105,111,110,115,46,67,97,99,104,105,110,103
	.byte 46,77,101,109,111,114,121,0,54,53,53,66,51,52,57,70,45,65,53,68,50,45,52,66,68,49,45,57,48,69,49,45
	.byte 65,52,56,65,66,51,56,56,54,48,50,55,0,0,97,100,98,57,55,57,51,56,50,57,100,100,97,101,54,48,0,0
	.byte 1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,80,114,105,118,97
	.byte 116,101,46,67,111,114,101,76,105,98,0,52,65,67,56,66,48,52,49,45,51,50,66,57,45,52,69,56,56,45,57,54
	.byte 66,56,45,54,49,67,52,53,69,70,69,68,56,67,56,0,0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56
	.byte 101,0,0,0,0,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.balign 8
	.local mono_aot_Microsoft_Extensions_Caching_Memory_got
	.type mono_aot_Microsoft_Extensions_Caching_Memory_got,@object
mono_aot_Microsoft_Extensions_Caching_Memory_got:
	.skip 216
got_end:
.section ".rodata"
.subsection 0
	.balign 8
blob:

	.byte 0,110,0,0,0,111,0,0,0,11,0,36,38,45,50,52,32,47,48,55,8,55,9,55,10,55,11,55,12,55,128,243
	.byte 6,80,6,89,6,91,6,92,6,96,6,128,249,6,83,6,128,165,6,128,142,6,128,141,6,128,249,5,0,30,0,1
	.byte 1,111,5,1,28,7,59,5,0,30,1,1,1,111,5,1,28,7,71,2,7,66,7,78,11,0,2,1,15,12,0,29
	.byte 64,12,0,11,255,253,0,0,0,1,13,0,111,2,83,0,0,4,22,88,12,88,11,88,44,104,0,3,6,44,11,44
	.byte 1,0,5,0,30,0,1,1,112,5,1,28,7,128,130,5,0,30,1,1,1,112,5,1,28,7,128,143,2,7,128,137
	.byte 7,128,150,11,14,2,1,15,12,0,29,32,12,0,12,255,253,0,0,0,1,13,0,112,2,128,156,0,0,4,12,88
	.byte 12,32,15,60,44,72,0,5,1,44,6,4,0,8,5,4,1,0,0,128,144,16,0,0,1,4,128,144,16,0,0,1
	.byte 193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,16,128,236,32,104,16,0,8,193,0,2,204,193,0,2,201
	.byte 193,0,2,200,193,0,2,199,17,5,7,8,9,10,12,14,22,16,15,11,4,128,168,40,0,0,8,193,0,2,204,193
	.byte 0,2,201,193,0,2,200,193,0,2,199,4,128,196,44,16,16,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193
	.byte 0,2,199,4,128,196,47,16,16,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,8,128,170,53,96
	.byte 0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,53,57,55,69,70,4,128,162,77,40,0,0,8,193,0,2,204
	.byte 193,0,2,201,193,0,2,200,77,4,128,168,48,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199
	.byte 11,128,160,56,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,93,94,90,86,87,92,91,4,128
	.byte 196,95,16,40,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,5,128,160,56,0,0,8,193,0,2
	.byte 204,193,0,2,201,193,0,2,200,193,0,2,199,109,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2
	.byte 200,193,0,2,199,255,255,255,255,255,115,103,101,110,0
.section ".rodata"
.subsection 1
runtime_version:
	.string ""
.section ".rodata"
.subsection 1
assembly_guid:
	.string "655B349F-A5D2-4BD1-90E1-A48AB3886027"
.section ".rodata"
.subsection 1
assembly_name:
	.string "Microsoft.Extensions.Caching.Memory"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 187,0
	.balign 8
	.xword mono_aot_Microsoft_Extensions_Caching_Memory_got
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword jit_code_start
	.balign 8
	.xword jit_code_end
	.balign 8
	.xword method_addresses
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword blob
	.balign 8
	.xword class_name_table
	.balign 8
	.xword class_info_offsets
	.balign 8
	.xword method_info_offsets
	.balign 8
	.xword ex_info_offsets
	.balign 8
	.xword extra_method_info_offsets
	.balign 8
	.xword extra_method_table
	.balign 8
	.xword got_info_offsets
	.balign 8
	.xword 0
	.balign 8
	.xword image_table
	.balign 8
	.xword weak_field_indexes
	.balign 8
	.xword method_flags_table
	.balign 8
	.xword mem_end
	.balign 8
	.xword assembly_guid
	.balign 8
	.xword runtime_version
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword 0
	.balign 8
	.xword assembly_name
	.balign 8
	.xword plt
	.balign 8
	.xword plt_end
	.balign 8
	.xword unwind_info
	.balign 8
	.xword unbox_trampolines
	.balign 8
	.xword unbox_trampolines_end
	.balign 8
	.xword unbox_trampoline_addresses

	.long 25,25,216,200,2,113,0,32
	.long 374417919,0,522,128,8,8,7,9
	.long 8388607,0,4,25,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.byte 211,52,5,48,253,182,65,15,193,212,69,62,154,143,252,125
.section ".debug_info"
.subsection 0
.LTDIE_2:

	.byte 17
	.string "System_Object"

	.byte 16,7
	.string "System_Object"

.LDIFF_SYM3=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM3
.LTDIE_2_POINTER:

	.byte 13
.LDIFF_SYM4=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM4
.LTDIE_2_REFERENCE:

	.byte 14
.LDIFF_SYM5=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM5
.LTDIE_1:

	.byte 5
	.string "System_ValueType"

	.byte 16,16
.LDIFF_SYM6=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM6
	.byte 2,35,0,0,7
	.string "System_ValueType"

.LDIFF_SYM7=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM7
.LTDIE_1_POINTER:

	.byte 13
.LDIFF_SYM8=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM8
.LTDIE_1_REFERENCE:

	.byte 14
.LDIFF_SYM9=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM9
.LTDIE_0:

	.byte 5
	.string "System_Int32"

	.byte 20,16
.LDIFF_SYM10=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM10
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM11=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM11
	.byte 2,35,16,0,7
	.string "System_Int32"

.LDIFF_SYM12=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM12
.LTDIE_0_POINTER:

	.byte 13
.LDIFF_SYM13=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM13
.LTDIE_0_REFERENCE:

	.byte 14
.LDIFF_SYM14=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM14
	.byte 2
	.string "<PrivateImplementationDetails>:InlineArrayAsReadOnlySpan<TBuffer_REF,_TElement_REF>"
	.string "_PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int"

	.byte 0,0
	.string "<PrivateImplementationDetails>:InlineArrayAsReadOnlySpan<TBuffer_REF,_TElement_REF>"
	.xword .Lm_6e
	.xword .Lme_6e

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM15=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM15
	.byte 2,141,32,3
	.string "param1"

.LDIFF_SYM16=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM16
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM17=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM17
.Lfde0_start:

	.long 0
	.balign 8
	.xword .Lm_6e

.LDIFF_SYM18=.Lme_6e - .Lm_6e
	.long .LDIFF_SYM18
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.balign 8
.Lfde0_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "<PrivateImplementationDetails>:InlineArrayElementRef<TBuffer_REF,_TElement_REF>"
	.string "_PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int"

	.byte 0,0
	.string "<PrivateImplementationDetails>:InlineArrayElementRef<TBuffer_REF,_TElement_REF>"
	.xword .Lm_6f
	.xword .Lme_6f

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM19=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM19
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM20=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM20
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM21=.Lfde1_end - .Lfde1_start
	.long .LDIFF_SYM21
.Lfde1_start:

	.long 0
	.balign 8
	.xword .Lm_6f

.LDIFF_SYM22=.Lme_6f - .Lm_6f
	.long .LDIFF_SYM22
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde1_end:

.section ".debug_info"
.subsection 0

	.byte 0
.Ldebug_info_end:
.section ".debug_line"
.subsection 0
.Ldebug_line_section_start:
.Ldebug_line_start:

	.long .Ldebug_line_end - . -4
	.short 2
	.long .Ldebug_line_header_end - . -4
	.byte 1,1,251,14,13,0,1,1,1,1,0,0,0,1,0,0,1
.section ".debug_line"
.subsection 0

	.byte 0
	.string "<unknown>"

	.byte 0,0,0,0
.Ldebug_line_header_end:

	.byte 0,1,1
.Ldebug_line_end:
.text 1
	.balign 8
mem_end:

.section	.note.GNU-stack,"",@progbits
