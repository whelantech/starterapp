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
	.string "Microsoft.Extensions.Configuration.Abstractions.dll"
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
.Lm_0:
	.local Microsoft_Extensions_Configuration_ConfigurationExtensions_Add_TSource_REF_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Action_1_TSource_REF
	.type Microsoft_Extensions_Configuration_ConfigurationExtensions_Add_TSource_REF_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Action_1_TSource_REF,@function
Microsoft_Extensions_Configuration_ConfigurationExtensions_Add_TSource_REF_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Action_1_TSource_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf9000fba
.inst 0xf90017af
.inst 0xf90013a0
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_Abstractions_got
ldr x1, [x16, 200]
.inst 0xf94017a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_2
.inst 0xf94017a0
.inst 0xf940100f
bl .Lp_3
.inst 0xaa0003f8
.inst 0xb40000ba
.inst 0xaa1a03e0
.inst 0xaa1803e1
.inst 0xf9400f50
.inst 0xd63f0200
.inst 0xf94013a0
.inst 0xaa1803e1
.inst 0xf94013a2
.inst 0xf9400042

adrp x16, mono_aot_Microsoft_Extensions_Configuration_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_Abstractions_got
ldr x15, [x16, 208]
.inst 0x928004f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xf9400bb8
.inst 0xf9400fba
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationExtensions_Add_TSource_REF_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Action_1_TSource_REF,.-Microsoft_Extensions_Configuration_ConfigurationExtensions_Add_TSource_REF_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Action_1_TSource_REF
.Lme_0:
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
bl .Lm_0
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

	.byte 12,0,0,0,10,0,0,0,2,0,0,0,2,0,0,0,0,0,14,0,1,255,255,255,255,255,0,0,0,0,0,0
	.byte 0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
method_flags_table:

	.byte 4,0,0,0,0,0,0,0,0,0,0,0
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

	.byte 19,0,0,0,0,0,3,0,19,0,4,0,0,0,6,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0
	.byte 0,0,8,0,0,0,5,0,20,0,0,0,0,0,7,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,2,0,0,0,9,0,0,0,10,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
got_info_offsets:

	.byte 27,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,20,0,8,2,1,1,1,1,1,1,1,1
	.byte 20,2,2,2,2,3,2,2,2,2,41,3,2,3,3,18,27
.section ".rodata"
.subsection 0
	.balign 8
ex_info_offsets:

	.byte 12,0,0,0,10,0,0,0,2,0,0,0,2,0,0,0,0,0,14,0,119,255,255,255,255,137,0,0,0,0,0,0
	.byte 0,0,0,0
.section ".rodata"
.subsection 1
	.balign 8
unwind_info:

	.byte 19,12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,68,154,3
.section ".rodata"
.subsection 0
	.balign 8
class_info_offsets:

	.byte 10,0,0,0,10,0,0,0,1,0,0,0,2,0,0,0,0,0,128,206,7,23,24,7,7,7,7,7,7

.text 0
	.balign 16
plt:
mono_aot_Microsoft_Extensions_Configuration_Abstractions_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,@function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_Abstractions_got
ldr x16, [x16, 224]
br x16
.inst 99
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.local plt__jit_icall_mini_init_method_rgctx
	.type plt__jit_icall_mini_init_method_rgctx,@function
plt__jit_icall_mini_init_method_rgctx:
.Lp_2:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_Abstractions_got
ldr x16, [x16, 232]
br x16
.inst 102
	.size plt__jit_icall_mini_init_method_rgctx,.-plt__jit_icall_mini_init_method_rgctx
	.local plt_System_Activator_CreateInstance_TSource_REF
	.type plt_System_Activator_CreateInstance_TSource_REF,@function
plt_System_Activator_CreateInstance_TSource_REF:
.Lp_3:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_Abstractions_got
ldr x16, [x16, 240]
br x16
.inst 105
	.size plt_System_Activator_CreateInstance_TSource_REF,.-plt_System_Activator_CreateInstance_TSource_REF
	.size mono_aot_Microsoft_Extensions_Configuration_Abstractions_plt,.-mono_aot_Microsoft_Extensions_Configuration_Abstractions_plt
plt_end:
.section ".rodata"
.subsection 0
	.balign 8
image_table:

	.byte 2,0,0,0,77,105,99,114,111,115,111,102,116,46,69,120,116,101,110,115,105,111,110,115,46,67,111,110,102,105,103,117
	.byte 114,97,116,105,111,110,46,65,98,115,116,114,97,99,116,105,111,110,115,0,53,69,52,52,53,66,52,69,45,55,49,57
	.byte 67,45,52,51,50,52,45,56,53,54,53,45,52,57,65,55,65,52,48,57,67,57,52,51,0,0,97,100,98,57,55,57
	.byte 51,56,50,57,100,100,97,101,54,48,0,0,0,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,83,121,115,116,101,109,46,80,114,105,118,97,116,101,46,67,111,114,101,76,105,98,0,52,65,67,56,66
	.byte 48,52,49,45,51,50,66,57,45,52,69,56,56,45,57,54,66,56,45,54,49,67,52,53,69,70,69,68,56,67,56,0
	.byte 0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56,101,0,0,0,0,0,0,0,1,0,0,0,10,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.balign 8
	.local mono_aot_Microsoft_Extensions_Configuration_Abstractions_got
	.type mono_aot_Microsoft_Extensions_Configuration_Abstractions_got,@object
mono_aot_Microsoft_Extensions_Configuration_Abstractions_got:
	.skip 248
got_end:
.section ".rodata"
.subsection 0
	.balign 8
blob:

	.byte 0,0,0,0,0,2,25,26,11,0,36,38,45,50,52,32,47,48,55,8,55,9,55,10,55,11,55,12,55,128,243,6
	.byte 80,6,89,6,91,6,92,6,96,6,128,249,6,83,6,128,165,6,128,142,6,128,141,5,0,30,0,1,1,1,5,1
	.byte 28,7,55,1,7,62,67,255,253,0,0,0,1,2,0,1,2,67,1,10,255,253,0,0,0,2,104,1,1,134,246,2
	.byte 67,5,6,6,128,249,6,129,10,3,255,253,0,0,0,2,104,1,1,134,246,2,67,11,0,2,1,15,20,0,29,40
	.byte 20,0,11,255,253,0,0,0,1,2,0,1,2,67,0,0,13,0,160,1,12,32,6,8,14,32,0,0,24,80,47,128
	.byte 156,80,128,176,0,20,0,80,0,4,0,4,0,4,6,4,1,0,0,0,2,4,2,0,0,4,0,4,0,8,0,0
	.byte 5,0,7,4,0,8,0,4,0,12,5,12,1,0,0,128,144,16,0,0,1,4,128,144,16,0,0,1,193,0,2,204
	.byte 193,0,2,201,193,0,2,200,193,0,2,199,4,128,196,3,16,8,0,1,193,0,2,204,193,0,2,201,193,0,2,200
	.byte 193,0,2,199,0,128,144,16,0,0,1,0,128,144,16,0,0,1,0,128,144,16,0,0,1,0,128,144,16,0,0,1
	.byte 0,128,144,16,0,0,1,0,128,144,16,0,0,1,0,128,144,16,0,0,1,115,103,101,110,0
.section ".rodata"
.subsection 1
runtime_version:
	.string ""
.section ".rodata"
.subsection 1
assembly_guid:
	.string "5E445B4E-719C-4324-8565-49A7A409C943"
.section ".rodata"
.subsection 1
assembly_name:
	.string "Microsoft.Extensions.Configuration.Abstractions"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 187,0
	.balign 8
	.xword mono_aot_Microsoft_Extensions_Configuration_Abstractions_got
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

	.long 27,27,248,200,4,12,0,32
	.long 374417919,0,309,128,8,8,7,9
	.long 8388607,0,4,25,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.byte 146,34,89,123,190,50,200,98,52,126,188,225,123,10,40,50
.section ".debug_info"
.subsection 0
.LTDIE_0:

	.byte 17
	.string "Microsoft_Extensions_Configuration_IConfigurationBuilder"

	.byte 16,7
	.string "Microsoft_Extensions_Configuration_IConfigurationBuilder"

.LDIFF_SYM3=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM3
.LTDIE_0_POINTER:

	.byte 13
.LDIFF_SYM4=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM4
.LTDIE_0_REFERENCE:

	.byte 14
.LDIFF_SYM5=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM5
	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationExtensions:Add<TSource_REF>"
	.string "Microsoft_Extensions_Configuration_ConfigurationExtensions_Add_TSource_REF_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Action_1_TSource_REF"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationExtensions:Add<TSource_REF>"
	.xword .Lm_0
	.xword .Lme_0

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM6=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM6
	.byte 2,141,32,3
	.string "param1"

.LDIFF_SYM7=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM7
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM8=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM8
	.byte 1,104,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM9=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM9
.Lfde0_start:

	.long 0
	.balign 8
	.xword .Lm_0

.LDIFF_SYM10=.Lme_0 - .Lm_0
	.long .LDIFF_SYM10
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,68,154,3
	.balign 8
.Lfde0_end:

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
