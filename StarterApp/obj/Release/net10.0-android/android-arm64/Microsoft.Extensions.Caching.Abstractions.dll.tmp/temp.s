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
	.string "Microsoft.Extensions.Caching.Abstractions.dll"
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
.Lm_18:
	.local Microsoft_Extensions_Caching_Memory_CacheExtensions_TryGetValue_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_
	.type Microsoft_Extensions_Caching_Memory_CacheExtensions_TryGetValue_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_,@function
Microsoft_Extensions_Caching_Memory_CacheExtensions_TryGetValue_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9016bb9
.inst 0xf90017af
.inst 0xf90013a0
.inst 0xaa0103f9
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x1, [x16, 200]
.inst 0xf94017a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_2
.inst 0xf9001bbf
.inst 0xf94013a0
.inst 0xaa1903e1
.inst 0x9100c3a2
.inst 0xf94013a3
.inst 0xf9400063

adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x15, [x16, 208]
.inst 0x928006f0
.inst 0xf8706870
.inst 0xd63f0200
.inst 0x53001c00
.inst 0x340003c0
.inst 0xf9401ba0
.inst 0xb5000080
.inst 0xf900035f
.inst 0xd2800020
.inst 0x1400001b
.inst 0xf9401ba0
.inst 0xf94017a1
.inst 0xf9401022
.inst 0xf9400441
bl .Lp_3
.inst 0xb4000260
.inst 0xf9401ba0
.inst 0xf94017a1
.inst 0xf9401022
.inst 0xf9400441
bl .Lp_4
.inst 0xaa0003f9
.inst 0xd5033bbf
.inst 0xf9000359
.inst 0xd349ff40
.inst 0x92405800

adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xd2800020
.inst 0x14000003
.inst 0xf900035f
.inst 0xd2a00000
.inst 0xa9416bb9
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Caching_Memory_CacheExtensions_TryGetValue_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_,.-Microsoft_Extensions_Caching_Memory_CacheExtensions_TryGetValue_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_
.Lme_18:
.text 0
	.balign 16
.Lm_19:
	.local Microsoft_Extensions_Caching_Memory_CacheExtensions_Set_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions
	.type Microsoft_Extensions_Caching_Memory_CacheExtensions_Set_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions,@function
Microsoft_Extensions_Caching_Memory_CacheExtensions_Set_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions:
.inst 0xa9ba7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf90023af
.inst 0xf9000fa0
.inst 0xf90013a1
.inst 0xf90017a2
.inst 0xaa0303fa

adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9001bbf
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xf9400fa2
.inst 0xf9400042

adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x15, [x16, 216]
.inst 0x928007f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xf9001ba0
.inst 0xb400009a
.inst 0xf9401ba0
.inst 0xaa1a03e1
bl .Lp_5
.inst 0xf9401ba2
.inst 0xaa0203e0
.inst 0xf94017a1
.inst 0xf9400042

adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x15, [x16, 224]
.inst 0x928001f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xf94017ba
.inst 0xf9001fbf
.inst 0x94000005
.inst 0xf9401fa0
.inst 0xb4000040
bl .Lp_6
.inst 0x14000015
.inst 0xf90027be

adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401ba0
.inst 0xb4000140
.inst 0xf9401ba1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x15, [x16, 232]
.inst 0x928004f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf94027be
.inst 0xd61f03c0
.inst 0xaa1a03e0
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c67bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Caching_Memory_CacheExtensions_Set_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions,.-Microsoft_Extensions_Caching_Memory_CacheExtensions_Set_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions
.Lme_19:
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
bl .Lm_18
bl .Lm_19
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

	.byte 31,0,0,0,10,0,0,0,4,0,0,0,2,0,0,0,0,0,10,0,20,0,34,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,7,255,255,255,255,248,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
method_flags_table:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,4,0,0,0,0,0
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

	.byte 19,0,0,0,0,0,3,0,0,0,6,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,9,0
	.byte 19,0,0,0,0,0,11,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0
	.byte 0,0,7,0,0,0,2,0,0,0,0,0,0,0,10,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
got_info_offsets:

	.byte 30,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,20,0,16,2,1,1,1,1,1,1,1,1
	.byte 28,2,2,2,2,3,2,2,2,2,49,3,2,3,3,18,16,2,2,2
.section ".rodata"
.subsection 0
	.balign 8
ex_info_offsets:

	.byte 31,0,0,0,10,0,0,0,4,0,0,0,2,0,0,0,0,0,10,0,20,0,36,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,128,132,128,152,255,255,255,254,228,0,0,0,0
.section ".rodata"
.subsection 1
	.balign 8
unwind_info:

	.byte 18,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5,16,12,31,0,68,14,96,157,12,158,11,68,13
	.byte 29,68,154,10
.section ".rodata"
.subsection 0
	.balign 8
class_info_offsets:

	.byte 11,0,0,0,10,0,0,0,2,0,0,0,2,0,0,0,0,0,11,0,129,186,7,7,23,103,103,7,7,23,23,131
	.byte 0

.text 0
	.balign 16
plt:
mono_aot_Microsoft_Extensions_Caching_Abstractions_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,@function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:
adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x16, [x16, 248]
br x16
.inst 105
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.local plt__jit_icall_mini_init_method_rgctx
	.type plt__jit_icall_mini_init_method_rgctx,@function
plt__jit_icall_mini_init_method_rgctx:
.Lp_2:
adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x16, [x16, 256]
br x16
.inst 108
	.size plt__jit_icall_mini_init_method_rgctx,.-plt__jit_icall_mini_init_method_rgctx
	.local plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr
	.type plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr,@function
plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr:
.Lp_3:
adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x16, [x16, 264]
br x16
.inst 111
	.size plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr,.-plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr
	.local plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
	.type plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr,@function
plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr:
.Lp_4:
adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x16, [x16, 272]
br x16
.inst 119
	.size plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr,.-plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
	.local plt_Microsoft_Extensions_Caching_Memory_CacheEntryExtensions_SetOptions_Microsoft_Extensions_Caching_Memory_ICacheEntry_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions
	.type plt_Microsoft_Extensions_Caching_Memory_CacheEntryExtensions_SetOptions_Microsoft_Extensions_Caching_Memory_ICacheEntry_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions,@function
plt_Microsoft_Extensions_Caching_Memory_CacheEntryExtensions_SetOptions_Microsoft_Extensions_Caching_Memory_ICacheEntry_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions:
.Lp_5:
adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x16, [x16, 280]
br x16
.inst 127
	.size plt_Microsoft_Extensions_Caching_Memory_CacheEntryExtensions_SetOptions_Microsoft_Extensions_Caching_Memory_ICacheEntry_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions,.-plt_Microsoft_Extensions_Caching_Memory_CacheEntryExtensions_SetOptions_Microsoft_Extensions_Caching_Memory_ICacheEntry_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions
	.local plt__jit_icall_ves_icall_thread_finish_async_abort
	.type plt__jit_icall_ves_icall_thread_finish_async_abort,@function
plt__jit_icall_ves_icall_thread_finish_async_abort:
.Lp_6:
adrp x16, mono_aot_Microsoft_Extensions_Caching_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Caching_Abstractions_got
ldr x16, [x16, 288]
br x16
.inst 129
	.size plt__jit_icall_ves_icall_thread_finish_async_abort,.-plt__jit_icall_ves_icall_thread_finish_async_abort
	.size mono_aot_Microsoft_Extensions_Caching_Abstractions_plt,.-mono_aot_Microsoft_Extensions_Caching_Abstractions_plt
plt_end:
.section ".rodata"
.subsection 0
	.balign 8
image_table:

	.byte 2,0,0,0,77,105,99,114,111,115,111,102,116,46,69,120,116,101,110,115,105,111,110,115,46,67,97,99,104,105,110,103
	.byte 46,65,98,115,116,114,97,99,116,105,111,110,115,0,66,48,50,56,67,49,68,68,45,54,48,51,52,45,52,54,54,49
	.byte 45,65,65,55,65,45,67,50,50,67,52,65,49,69,49,48,48,51,0,0,97,100,98,57,55,57,51,56,50,57,100,100
	.byte 97,101,54,48,0,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,80,114,105,118,97,116,101,46,67,111,114,101,76,105,98,0,52,65,67,56,66,48,52,49,45,51,50,66,57
	.byte 45,52,69,56,56,45,57,54,66,56,45,54,49,67,52,53,69,70,69,68,56,67,56,0,0,55,99,101,99,56,53,100
	.byte 55,98,101,97,55,55,57,56,101,0,0,0,0,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.balign 8
	.local mono_aot_Microsoft_Extensions_Caching_Abstractions_got
	.type mono_aot_Microsoft_Extensions_Caching_Abstractions_got,@object
mono_aot_Microsoft_Extensions_Caching_Abstractions_got:
	.skip 296
got_end:
.section ".rodata"
.subsection 0
	.balign 8
blob:

	.byte 0,24,0,0,0,2,25,26,25,0,0,0,3,27,28,29,11,0,36,38,45,50,52,32,47,48,55,8,55,9,55,10
	.byte 55,11,55,12,55,128,243,6,80,6,89,6,91,6,92,6,96,6,128,249,6,83,6,128,165,6,128,142,6,128,141,5
	.byte 0,30,0,1,1,25,5,1,28,7,63,1,7,70,67,255,253,0,0,0,1,9,0,25,2,75,1,14,7,70,5,13
	.byte 5,14,5,5,5,193,0,15,107,6,128,249,6,129,10,3,255,252,0,0,0,10,10,3,255,252,0,0,0,10,9,3
	.byte 3,6,129,29,11,0,2,1,15,16,0,29,40,16,0,11,255,253,0,0,0,1,9,0,25,2,75,0,0,23,0,168
	.byte 1,18,96,4,8,6,16,16,8,2,16,16,48,14,48,16,80,2,16,16,8,85,129,4,84,129,20,0,39,0,84,4
	.byte 4,0,4,0,8,0,4,0,12,0,12,0,4,5,0,0,0,2,4,1,4,0,0,2,4,1,0,7,4,0,0,0
	.byte 4,1,4,6,20,0,0,2,4,7,24,2,0,0,4,0,4,0,4,0,4,0,12,0,4,0,8,6,0,0,0,0
	.byte 4,1,4,1,0,7,4,0,0,1,4,5,0,30,0,1,1,26,5,1,28,7,129,11,1,7,129,18,47,19,2,1
	.byte 2,56,129,12,104,128,184,128,188,0,8,128,172,0,4,128,180,2,1,15,16,0,29,64,16,0,12,255,253,0,0,0
	.byte 1,9,0,26,2,129,24,0,0,26,0,120,14,88,2,0,6,8,14,24,2,0,24,80,4,8,4,104,6,16,12,72
	.byte 0,0,4,16,85,129,16,60,129,32,0,39,0,60,2,12,0,4,0,12,0,16,6,0,1,0,0,0,2,4,2,4
	.byte 0,4,0,4,6,0,7,4,0,8,0,4,0,12,5,12,2,4,0,0,0,4,0,8,0,0,0,4,0,4,2,32
	.byte 1,4,0,0,2,4,1,4,0,4,0,4,0,12,0,12,5,0,0,0,2,8,0,0,1,4,0,128,144,16,0,0
	.byte 1,0,128,144,16,0,0,1,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,24
	.byte 128,144,20,0,0,4,193,0,2,47,193,0,2,46,193,0,2,49,193,0,2,199,193,0,2,48,193,0,2,60,193,0
	.byte 2,52,193,0,2,76,193,0,2,77,193,0,2,78,193,0,2,79,193,0,2,80,193,0,2,81,193,0,2,82,193,0
	.byte 2,83,193,0,2,84,193,0,2,85,193,0,2,86,193,0,2,87,193,0,2,88,193,0,2,89,193,0,2,90,193,0
	.byte 2,51,193,0,2,91,24,128,144,20,0,0,4,193,0,2,47,193,0,2,46,193,0,2,49,193,0,2,199,193,0,2
	.byte 48,193,0,2,60,193,0,2,52,193,0,2,76,193,0,2,77,193,0,2,78,193,0,2,79,193,0,2,80,193,0,2
	.byte 81,193,0,2,82,193,0,2,83,193,0,2,84,193,0,2,85,193,0,2,86,193,0,2,87,193,0,2,88,193,0,2
	.byte 89,193,0,2,90,193,0,2,51,193,0,2,91,0,128,144,16,0,0,1,0,128,144,16,0,0,1,4,128,160,112,0
	.byte 0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0,2
	.byte 201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199
	.byte 15,128,160,128,128,0,0,8,193,0,3,128,193,0,3,127,193,0,2,200,193,0,2,199,193,0,1,226,193,0,3,125
	.byte 193,0,3,125,193,0,3,130,193,0,3,135,193,0,3,133,193,0,1,226,193,0,3,129,193,0,3,126,193,0,3,136
	.byte 30,115,103,101,110,0
.section ".rodata"
.subsection 1
runtime_version:
	.string ""
.section ".rodata"
.subsection 1
assembly_guid:
	.string "B028C1DD-6034-4661-AA7A-C22C4A1E1003"
.section ".rodata"
.subsection 1
assembly_name:
	.string "Microsoft.Extensions.Caching.Abstractions"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 187,0
	.balign 8
	.xword mono_aot_Microsoft_Extensions_Caching_Abstractions_got
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

	.long 30,30,296,200,7,31,0,32
	.long 374417919,0,833,128,8,8,7,9
	.long 8388607,0,4,25,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.byte 26,3,96,101,29,16,172,110,240,5,175,170,97,177,226,212
.section ".debug_info"
.subsection 0
.LTDIE_0:

	.byte 17
	.string "Microsoft_Extensions_Caching_Memory_IMemoryCache"

	.byte 16,7
	.string "Microsoft_Extensions_Caching_Memory_IMemoryCache"

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
.LTDIE_1:

	.byte 17
	.string "System_Object"

	.byte 16,7
	.string "System_Object"

.LDIFF_SYM6=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM6
.LTDIE_1_POINTER:

	.byte 13
.LDIFF_SYM7=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM7
.LTDIE_1_REFERENCE:

	.byte 14
.LDIFF_SYM8=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM8
	.byte 2
	.string "Microsoft.Extensions.Caching.Memory.CacheExtensions:TryGetValue<TItem_REF>"
	.string "Microsoft_Extensions_Caching_Memory_CacheExtensions_TryGetValue_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_"

	.byte 0,0
	.string "Microsoft.Extensions.Caching.Memory.CacheExtensions:TryGetValue<TItem_REF>"
	.xword .Lm_18
	.xword .Lme_18

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM9=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM9
	.byte 2,141,32,3
	.string "param1"

.LDIFF_SYM10=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM10
	.byte 1,105,3
	.string "param2"

.LDIFF_SYM11=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM11
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM12=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM12
	.byte 2,141,48,11
	.string "V_1"

.LDIFF_SYM13=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM13
	.byte 1,105,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM14=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM14
.Lfde0_start:

	.long 0
	.balign 8
	.xword .Lm_18

.LDIFF_SYM15=.Lme_18 - .Lm_18
	.long .LDIFF_SYM15
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.balign 8
.Lfde0_end:

.section ".debug_info"
.subsection 0
.LTDIE_3:

	.byte 8
	.string "Microsoft_Extensions_Caching_Memory_CacheItemPriority"

	.byte 4
.LDIFF_SYM16=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM16
	.byte 9
	.string "Low"

	.byte 0,9
	.string "Normal"

	.byte 1,9
	.string "High"

	.byte 2,9
	.string "NeverRemove"

	.byte 3,0,7
	.string "Microsoft_Extensions_Caching_Memory_CacheItemPriority"

.LDIFF_SYM17=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM17
.LTDIE_3_POINTER:

	.byte 13
.LDIFF_SYM18=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM18
.LTDIE_3_REFERENCE:

	.byte 14
.LDIFF_SYM19=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM19
.LTDIE_2:

	.byte 5
	.string "Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions"

	.byte 112,16
.LDIFF_SYM20=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM20
	.byte 2,35,0,6
	.string "_absoluteExpiration"

.LDIFF_SYM21=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM21
	.byte 2,35,32,6
	.string "_absoluteExpirationRelativeToNow"

.LDIFF_SYM22=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM22
	.byte 2,35,56,6
	.string "_slidingExpiration"

.LDIFF_SYM23=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM23
	.byte 2,35,72,6
	.string "_size"

.LDIFF_SYM24=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM24
	.byte 2,35,88,6
	.string "_expirationTokens"

.LDIFF_SYM25=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM25
	.byte 2,35,16,6
	.string "_postEvictionCallbacks"

.LDIFF_SYM26=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM26
	.byte 2,35,24,6
	.string "<Priority>k__BackingField"

.LDIFF_SYM27=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM27
	.byte 2,35,104,0,7
	.string "Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions"

.LDIFF_SYM28=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM28
.LTDIE_2_POINTER:

	.byte 13
.LDIFF_SYM29=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM29
.LTDIE_2_REFERENCE:

	.byte 14
.LDIFF_SYM30=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM30
.LTDIE_4:

	.byte 17
	.string "Microsoft_Extensions_Caching_Memory_ICacheEntry"

	.byte 16,7
	.string "Microsoft_Extensions_Caching_Memory_ICacheEntry"

.LDIFF_SYM31=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM31
.LTDIE_4_POINTER:

	.byte 13
.LDIFF_SYM32=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM32
.LTDIE_4_REFERENCE:

	.byte 14
.LDIFF_SYM33=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM33
	.byte 2
	.string "Microsoft.Extensions.Caching.Memory.CacheExtensions:Set<TItem_REF>"
	.string "Microsoft_Extensions_Caching_Memory_CacheExtensions_Set_TItem_REF_Microsoft_Extensions_Caching_Memory_IMemoryCache_object_TItem_REF_Microsoft_Extensions_Caching_Memory_MemoryCacheEntryOptions"

	.byte 0,0
	.string "Microsoft.Extensions.Caching.Memory.CacheExtensions:Set<TItem_REF>"
	.xword .Lm_19
	.xword .Lme_19

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM34=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM34
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM35=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM35
	.byte 2,141,32,3
	.string "param2"

.LDIFF_SYM36=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM36
	.byte 2,141,40,3
	.string "param3"

.LDIFF_SYM37=.LTDIE_2_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM37
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM38=.LTDIE_4_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM38
	.byte 2,141,48,11
	.string "V_1"

.LDIFF_SYM39=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM39
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM40=.Lfde1_end - .Lfde1_start
	.long .LDIFF_SYM40
.Lfde1_start:

	.long 0
	.balign 8
	.xword .Lm_19

.LDIFF_SYM41=.Lme_19 - .Lm_19
	.long .LDIFF_SYM41
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
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
