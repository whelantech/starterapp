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
	.string "Microsoft.EntityFrameworkCore.Abstractions.dll"
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
.Lm_19:
	.local Microsoft_EntityFrameworkCore_Utilities_Check_NotNull_T_REF_T_REF_string
	.type Microsoft_EntityFrameworkCore_Utilities_Check_NotNull_T_REF_T_REF_string,@function
Microsoft_EntityFrameworkCore_Utilities_Check_NotNull_T_REF_T_REF_string:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf90013af
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf9400fa1
bl .Lp_2
bl .Lp_3
.inst 0xf9400ba0
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_EntityFrameworkCore_Utilities_Check_NotNull_T_REF_T_REF_string,.-Microsoft_EntityFrameworkCore_Utilities_Check_NotNull_T_REF_T_REF_string
.Lme_19:
.text 0
	.balign 16
.Lm_2a:
	.local Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF__ctor_System_Collections_Generic_ICollection_1_T_REF
	.type Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF__ctor_System_Collections_Generic_ICollection_1_T_REF,@function
Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF__ctor_System_Collections_Generic_ICollection_1_T_REF:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf9000fa0
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400fa0
.inst 0xf90017a0
.inst 0xf9400fa0
.inst 0xf9400000
bl .Lp_4
.inst 0xaa0003ef
.inst 0xaa1a03e0
bl .Lp_5
.inst 0xaa0003e1
.inst 0xf94017a0
bl .Lp_6
.inst 0xf9400fa0
.inst 0x91014000
.inst 0xf90013a0
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf900001a
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xb40002fa
.inst 0xf9400340
.inst 0xb9403001

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x2, [x16, 200]
.inst 0xeb02003f
.inst 0x10000011
.inst 0x54000923
.inst 0xf9401000

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x1, [x16, 200]
.inst 0x9343fc22
.inst 0x8b020000
.inst 0x39400000
.inst 0x12000822
.inst 0xd2800021
.inst 0x1ac22021
.inst 0xa010000
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000760
.inst 0xf9400fa0
.inst 0xf9001ba0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000660

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 208]
.inst 0xd2801001
bl .Lp_7
.inst 0xaa0003e1
.inst 0xf9401ba0
.inst 0xf90017a0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x540004a0
.inst 0xd5033bbf
.inst 0xf94017a0
.inst 0xf9001020
.inst 0xf90013a1
.inst 0x91008021
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9400fa0
.inst 0xf9400000
bl .Lp_8
.inst 0xf94013a1
.inst 0xf9002020
.inst 0xf9400802
.inst 0xf9001422
.inst 0xf9401802
.inst 0xf9000c22
.inst 0xf9401400
.inst 0xf9000820
.inst 0xaa1a03e0
.inst 0xf9400342

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 216]
.inst 0x928010f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_9
.inst 0xd2800dc0
.inst 0xaa1103e1
bl .Lp_9
.inst 0xd2801d20
.inst 0xaa1103e1
bl .Lp_9

	.size Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF__ctor_System_Collections_Generic_ICollection_1_T_REF,.-Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF__ctor_System_Collections_Generic_ICollection_1_T_REF
.Lme_2a:
.text 0
	.balign 16
.Lm_2b:
	.local Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ClearItems
	.type Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ClearItems,@function
Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ClearItems:
.inst 0xa9bb7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf9000fa0

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf90013bf
.inst 0xf9400fa0
.inst 0xf9400800
.inst 0xf90023a0
.inst 0xf9400fa0
.inst 0xf9400000
bl .Lp_10
.inst 0xaa0003ef
.inst 0xf94023a1
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0x92800ff0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf90013a0
.inst 0x14000017

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf94013a0
.inst 0xf90023a0
.inst 0xf9400fa0
.inst 0xf9400000
bl .Lp_11
.inst 0xaa0003ef
.inst 0xf94023a1
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0x92800ef0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xaa0003fa
.inst 0xf9400fa0
.inst 0xaa1a03e1
bl .Lp_12
.inst 0xf94013a1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 224]
.inst 0x92800ef0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0x53001c00
.inst 0x35fffc00
.inst 0xf90017bf
.inst 0x94000005
.inst 0xf94017a0
.inst 0xb4000040
bl .Lp_13
.inst 0x14000015
.inst 0xf9001bbe

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf94013a0
.inst 0xb4000140
.inst 0xf94013a1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 232]
.inst 0x928004f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf9401bbe
.inst 0xd61f03c0
.inst 0xf9400fa0
bl .Lp_14
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c57bfd
.inst 0xd65f03c0

	.size Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ClearItems,.-Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ClearItems
.Lme_2b:
.text 0
	.balign 16
.Lm_2c:
	.local Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_EndNew_int
	.type Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_EndNew_int,@function
Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_EndNew_int:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf9000fa0
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x6b1f035f
.inst 0x5400034b
.inst 0xf9400fa0
bl .Lp_15
.inst 0x93407c00
.inst 0x6b00035f
.inst 0x540002aa
.inst 0xf9400fa0
.inst 0xaa1a03e1
bl .Lp_16
.inst 0xf9400fa1
.inst 0xf9402021
bl .Lp_17
.inst 0x53001c00
.inst 0x340001a0
.inst 0xf9400fa0
.inst 0xf9400fa1
.inst 0xf9402021
bl .Lp_18
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000180
.inst 0x91010000
.inst 0xf900001f
.inst 0xf9400fa0
.inst 0x3901601f
.inst 0xf9400fa0
.inst 0xaa1a03e1
bl .Lp_19
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_9

	.size Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_EndNew_int,.-Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_EndNew_int
.Lme_2c:
.text 0
	.balign 16
.Lm_2d:
	.local Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_InsertItem_int_T_REF
	.type Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_InsertItem_int_T_REF,@function
Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_InsertItem_int_T_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xb9801ba1
.inst 0xf94013a2
bl .Lp_20
.inst 0xf9400ba0
.inst 0x39416000
.inst 0x350001c0
.inst 0xb9801ba0
.inst 0x6b1f001f
.inst 0x5400016b
.inst 0xf9400ba0
bl .Lp_15
.inst 0x93407c00
.inst 0xaa0003e1
.inst 0xb9801ba0
.inst 0x6b01001f
.inst 0x5400008c
.inst 0xf9400ba0
.inst 0xf94013a1
bl .Lp_18
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_InsertItem_int_T_REF,.-Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_InsertItem_int_T_REF
.Lme_2d:
.text 0
	.balign 16
.Lm_2e:
	.local Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveItem_int
	.type Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveItem_int,@function
Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveItem_int:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf9000fa0
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x6b1f035f
.inst 0x540002ab
.inst 0xf9400fa0
bl .Lp_15
.inst 0x93407c00
.inst 0x6b00035f
.inst 0x5400020a
.inst 0xf9400fa0
.inst 0xaa1a03e1
bl .Lp_16
.inst 0xf9400fa1
.inst 0xf9402421
bl .Lp_17
.inst 0x53001c00
.inst 0x34000100
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000260
.inst 0x91012000
.inst 0xf900001f
.inst 0x14000009
.inst 0xf9400fa0
.inst 0xf90013a0
.inst 0xf9400fa0
.inst 0xaa1a03e1
bl .Lp_16
.inst 0xaa0003e1
.inst 0xf94013a0
bl .Lp_12
.inst 0xf9400fa0
.inst 0xaa1a03e1
bl .Lp_21
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_9

	.size Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveItem_int,.-Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveItem_int
.Lme_2e:
.text 0
	.balign 16
.Lm_2f:
	.local Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_SetItem_int_T_REF
	.type Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_SetItem_int_T_REF,@function
Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_SetItem_int_T_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xa90167b8
.inst 0xf90013a0
.inst 0xaa0103f9
.inst 0xf90017a2

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf94013a0
.inst 0xaa1903e1
bl .Lp_16
.inst 0xaa0003f8
.inst 0xf94013a0
.inst 0xaa1903e1
.inst 0xf94017a2
bl .Lp_22
.inst 0x6b1f033f
.inst 0x5400036b
.inst 0xf94013a0
bl .Lp_15
.inst 0x93407c00
.inst 0x6b00033f
.inst 0x540002ca
.inst 0xf94013a0
.inst 0xf9402001
.inst 0xaa1803e0
bl .Lp_17
.inst 0x53001c00
.inst 0x34000140
.inst 0xf94013a0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000200
.inst 0x91010000
.inst 0xf900001f
.inst 0xf94013a0
.inst 0x3901601f
.inst 0x14000004
.inst 0xf94013a0
.inst 0xaa1803e1
bl .Lp_12
.inst 0xf94013a0
.inst 0xf94017a1
bl .Lp_18
.inst 0xa94167b8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_9

	.size Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_SetItem_int_T_REF,.-Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_SetItem_int_T_REF
.Lme_2f:
.text 0
	.balign 16
.Lm_30:
	.local Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ObservableCollectionChanged_object_System_Collections_Specialized_NotifyCollectionChangedEventArgs
	.type Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ObservableCollectionChanged_object_System_Collections_Specialized_NotifyCollectionChangedEventArgs,@function
Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ObservableCollectionChanged_object_System_Collections_Specialized_NotifyCollectionChangedEventArgs:
.inst 0xa9b37bfd
.inst 0x910003fd
.inst 0xa9016bb9
.inst 0xf90013a0
.inst 0xf90017a1
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9001bbf
.inst 0xf9001fbf
.inst 0xf94013a0
.inst 0x39416800
.inst 0x35002320
.inst 0xf94013a0
.inst 0xd280003e
.inst 0x3901641e
.inst 0x3940035e
.inst 0xb9802340
.inst 0xd280009e
.inst 0x6b1e001f
.inst 0x54000061
.inst 0xf94013a0
bl .Lp_23
.inst 0x3940035e
.inst 0xb9802359
.inst 0xaa1903e0
.inst 0x51000400
.inst 0xd280003e
.inst 0x6b1e001f
.inst 0x54000088
.inst 0xd2800020
.inst 0x53001c19
.inst 0x14000003
.inst 0xd2a00000
.inst 0x53001c19
.inst 0x34000e19
.inst 0x3940035e
.inst 0xf9400f41
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 240]
.inst 0x92800ef0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf9001ba0
.inst 0x1400001c

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401ba1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 248]
.inst 0x928003f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf90063a0
.inst 0xf94013a0
.inst 0xf9400000
bl .Lp_24
.inst 0xaa0003e2
.inst 0xf94063a0
.inst 0xf9400441
bl .Lp_25
.inst 0xaa0003f9
.inst 0xf94013a0
.inst 0xaa1903e1
bl .Lp_26
.inst 0xf9401ba1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 224]
.inst 0x92800ef0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0x53001c00
.inst 0x35fffb60
.inst 0xf90037bf
.inst 0x94000005
.inst 0xf94037a0
.inst 0xb4000040
bl .Lp_13
.inst 0x14000038
.inst 0xf90047be

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401ba0
.inst 0xf9003ba0
.inst 0xf9403ba0
.inst 0xf9003fa0
.inst 0xf9403ba0
.inst 0xeb1f001f
.inst 0x54000360
.inst 0xf9403ba0
.inst 0xf9400000
.inst 0xf90043a0
.inst 0xf94043a0
.inst 0xb9403000

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x1, [x16, 256]
.inst 0xeb01001f
.inst 0x540001c3
.inst 0xf94043a0
.inst 0xf9401000

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x1, [x16, 256]
.inst 0x9343fc22
.inst 0x8b020000
.inst 0x39400000
.inst 0x12000822
.inst 0xd2800021
.inst 0x1ac22021
.inst 0xa010000
.inst 0xb5000080
.inst 0x14000001
.inst 0xf9003fbf
.inst 0x14000001
.inst 0xf9403fa0
.inst 0xf9001fa0
.inst 0xf9401fa0
.inst 0xb4000140
.inst 0xf9401fa1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 232]
.inst 0x928004f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf94047be
.inst 0xd61f03c0
.inst 0x3940035e
.inst 0xb9802359
.inst 0xaa1903e0
.inst 0x34000080
.inst 0xd280005e
.inst 0x6b1e033f
.inst 0x54000081
.inst 0xd2800020
.inst 0x53001c19
.inst 0x14000003
.inst 0xd2a00000
.inst 0x53001c19
.inst 0x34000eb9
.inst 0x3940035e
.inst 0xf9400b41
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 240]
.inst 0x92800ef0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf9001ba0
.inst 0x1400001c

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401ba1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 248]
.inst 0x928003f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf90063a0
.inst 0xf94013a0
.inst 0xf9400000
bl .Lp_24
.inst 0xaa0003e2
.inst 0xf94063a0
.inst 0xf9400441
bl .Lp_25
.inst 0xaa0003fa
.inst 0xf94013a0
.inst 0xaa1a03e1
bl .Lp_27
.inst 0xf9401ba1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 224]
.inst 0x92800ef0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0x53001c00
.inst 0x35fffb60
.inst 0xf90027bf
.inst 0x9400000a
.inst 0xf94027a0
.inst 0xb4000040
bl .Lp_13
.inst 0xf90023bf
.inst 0x94000042
.inst 0xf94023a0
.inst 0xb4000040
bl .Lp_13
.inst 0x14000049
.inst 0xf9004fbe

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401ba0
.inst 0xf9002ba0
.inst 0xf9402ba0
.inst 0xf9002fa0
.inst 0xf9402ba0
.inst 0xeb1f001f
.inst 0x54000360
.inst 0xf9402ba0
.inst 0xf9400000
.inst 0xf90033a0
.inst 0xf94033a0
.inst 0xb9403000

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x1, [x16, 256]
.inst 0xeb01001f
.inst 0x540001c3
.inst 0xf94033a0
.inst 0xf9401000

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x1, [x16, 256]
.inst 0x9343fc22
.inst 0x8b020000
.inst 0x39400000
.inst 0x12000822
.inst 0xd2800021
.inst 0x1ac22021
.inst 0xa010000
.inst 0xb5000080
.inst 0x14000001
.inst 0xf9002fbf
.inst 0x14000001
.inst 0xf9402fa0
.inst 0xf9001fa0
.inst 0xf9401fa0
.inst 0xb4000140
.inst 0xf9401fa1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x15, [x16, 232]
.inst 0x928004f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf9404fbe
.inst 0xd61f03c0
.inst 0xf90023bf
.inst 0x94000005
.inst 0xf94023a0
.inst 0xb4000040
bl .Lp_13
.inst 0x1400000c
.inst 0xf90057be

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf94013a0
.inst 0x3901641f
.inst 0xf94057be
.inst 0xd61f03c0
.inst 0xa9416bb9
.inst 0x910003bf
.inst 0xa8cd7bfd
.inst 0xd65f03c0

	.size Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ObservableCollectionChanged_object_System_Collections_Specialized_NotifyCollectionChangedEventArgs,.-Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ObservableCollectionChanged_object_System_Collections_Specialized_NotifyCollectionChangedEventArgs
.Lme_30:
.text 0
	.balign 16
.Lm_31:
	.local Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF
	.type Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF,@function
Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF:
.inst 0xa9bb7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0x39416400
.inst 0x35000460
.inst 0xf9400ba0
.inst 0xd280003e
.inst 0x3901681e
.inst 0xf9400ba0
.inst 0xf9402800
.inst 0xf90023a0
.inst 0xf9400ba0
.inst 0xf9400000
bl .Lp_28
.inst 0xaa0003ef
.inst 0xf94023a2
.inst 0xaa0203e0
.inst 0xf9400fa1
.inst 0xf9400042
.inst 0x928005f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xf90013bf
.inst 0x94000005
.inst 0xf94013a0
.inst 0xb4000040
bl .Lp_13
.inst 0x1400000c
.inst 0xf90017be

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0x3901681f
.inst 0xf94017be
.inst 0xd61f03c0
.inst 0x910003bf
.inst 0xa8c57bfd
.inst 0xd65f03c0

	.size Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF,.-Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF
.Lme_31:
.text 0
	.balign 16
.Lm_32:
	.local Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF
	.type Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF,@function
Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF:
.inst 0xa9bb7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0x39416400
.inst 0x35000460
.inst 0xf9400ba0
.inst 0xd280003e
.inst 0x3901681e
.inst 0xf9400ba0
.inst 0xf9402800
.inst 0xf90023a0
.inst 0xf9400ba0
.inst 0xf9400000
bl .Lp_29
.inst 0xaa0003ef
.inst 0xf94023a2
.inst 0xaa0203e0
.inst 0xf9400fa1
.inst 0xf9400042
.inst 0x92800cf0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xf90013bf
.inst 0x94000005
.inst 0xf94013a0
.inst 0xb4000040
bl .Lp_13
.inst 0x1400000c
.inst 0xf90017be

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0x3901681f
.inst 0xf94017be
.inst 0xd61f03c0
.inst 0x910003bf
.inst 0xa8c57bfd
.inst 0xd65f03c0

	.size Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF,.-Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF
.Lme_32:
.text 0
	.balign 16
.Lm_33:
	.local Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF
	.type Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF,@function
Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xf9400fa1
bl .Lp_30
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF,.-Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF
.Lme_33:
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
bl .Lm_19
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
bl .Lm_2a
bl .Lm_2b
bl .Lm_2c
bl .Lm_2d
bl .Lm_2e
bl .Lm_2f
bl .Lm_30
bl .Lm_31
bl .Lm_32
bl .Lm_33
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

	.byte 53,0,0,0,10,0,0,0,6,0,0,0,2,0,0,0,0,0,10,0,20,0,34,0,44,0,54,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,255,255,255,255,255,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,5,9,7,4,4,4,4,17,58,4,255,255,255,255,194
.section ".rodata"
.subsection 0
	.balign 8
method_flags_table:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,4,4,0,0,0,0,4,0,0,0,0
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

	.byte 37,0,12,0,39,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,18,0,0,0,20,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,17,0,40,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,2,0,37,0,0,0,0,0,15,0,0,0,0,0,0,0,0,0,0,0,13,0,0,0,5,0,0,0,0,0
	.byte 0,0,3,0,0,0,10,0,0,0,0,0,0,0,6,0,38,0,0,0,0,0,9,0,0,0,0,0,0,0,1,0
	.byte 0,0,0,0,0,0,21,0,0,0,22,0,0,0,16,0,0,0,8,0,0,0,7,0,0,0,11,0,0,0,14,0
	.byte 0,0,19,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
got_info_offsets:

	.byte 33,0,0,0,10,0,0,0,4,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,66,2,1,1,1,1,1,1
	.byte 1,1,78,2,2,2,2,3,2,2,2,2,99,3,2,3,3,3,4,4,5,5,128,136,5,5
.section ".rodata"
.subsection 0
	.balign 8
ex_info_offsets:

	.byte 53,0,0,0,10,0,0,0,6,0,0,0,2,0,0,0,0,0,10,0,20,0,35,0,45,0,62,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,130,142,255,255,255,253,114,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,130,197,128,157,128,199,128,132,87,128,144,128,146,130,38,136,197,126,255,255,255
	.byte 246,189
.section ".rodata"
.subsection 1
	.balign 8
unwind_info:

	.byte 13,12,31,0,68,14,48,157,6,158,5,68,13,29,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6,16
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8,16,12,31,0,68,14,32,157,4,158,3,68,13,29,68,154
	.byte 2,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4,18,12,31,0,68,14,48,157,6,158,5,68,13,29
	.byte 68,152,4,153,3,19,12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,153,24,154,23,13,12,31,0,68,14,80
	.byte 157,10,158,9,68,13,29,13,12,31,0,68,14,32,157,4,158,3,68,13,29
.section ".rodata"
.subsection 0
	.balign 8
class_info_offsets:

	.byte 22,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,11,0,22,0,137,114,7,35,35,35,35,35,39,103
	.byte 35,138,252,35,35,35,35,35,35,23,35,24,140,39,5

.text 0
	.balign 16
plt:
mono_aot_Microsoft_EntityFrameworkCore_Abstractions_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,@function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 272]
br x16
.inst 151
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.local plt__jit_icall_mono_create_corlib_exception_1
	.type plt__jit_icall_mono_create_corlib_exception_1,@function
plt__jit_icall_mono_create_corlib_exception_1:
.Lp_2:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 280]
br x16
.inst 154
	.size plt__jit_icall_mono_create_corlib_exception_1,.-plt__jit_icall_mono_create_corlib_exception_1
	.local plt__jit_icall_mono_arch_throw_exception
	.type plt__jit_icall_mono_arch_throw_exception,@function
plt__jit_icall_mono_arch_throw_exception:
.Lp_3:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 288]
br x16
.inst 157
	.size plt__jit_icall_mono_arch_throw_exception,.-plt__jit_icall_mono_arch_throw_exception
	.local plt__rgctx_fetch_0
	.type plt__rgctx_fetch_0,@function
plt__rgctx_fetch_0:
.Lp_4:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 296]
br x16
.inst 182
	.size plt__rgctx_fetch_0,.-plt__rgctx_fetch_0
	.local plt_System_Linq_Enumerable_ToList_T_REF_System_Collections_Generic_IEnumerable_1_T_REF
	.type plt_System_Linq_Enumerable_ToList_T_REF_System_Collections_Generic_IEnumerable_1_T_REF,@function
plt_System_Linq_Enumerable_ToList_T_REF_System_Collections_Generic_IEnumerable_1_T_REF:
.Lp_5:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 304]
br x16
.inst 201
	.size plt_System_Linq_Enumerable_ToList_T_REF_System_Collections_Generic_IEnumerable_1_T_REF,.-plt_System_Linq_Enumerable_ToList_T_REF_System_Collections_Generic_IEnumerable_1_T_REF
	.local plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF
	.type plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF,@function
plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF:
.Lp_6:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 312]
br x16
.inst 221
	.size plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF,.-plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF
	.local plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.type plt_wrapper_alloc_object_AllocSmall_intptr_intptr,@function
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
.Lp_7:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 320]
br x16
.inst 235
	.size plt_wrapper_alloc_object_AllocSmall_intptr_intptr,.-plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.local plt__rgctx_fetch_1
	.type plt__rgctx_fetch_1,@function
plt__rgctx_fetch_1:
.Lp_8:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 328]
br x16
.inst 243
	.size plt__rgctx_fetch_1,.-plt__rgctx_fetch_1
	.local plt__jit_icall_mono_arch_throw_corlib_exception
	.type plt__jit_icall_mono_arch_throw_corlib_exception,@function
plt__jit_icall_mono_arch_throw_corlib_exception:
.Lp_9:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 336]
br x16
.inst 266
	.size plt__jit_icall_mono_arch_throw_corlib_exception,.-plt__jit_icall_mono_arch_throw_corlib_exception
	.local plt__rgctx_fetch_2
	.type plt__rgctx_fetch_2,@function
plt__rgctx_fetch_2:
.Lp_10:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 344]
br x16
.inst 275
	.size plt__rgctx_fetch_2,.-plt__rgctx_fetch_2
	.local plt__rgctx_fetch_3
	.type plt__rgctx_fetch_3,@function
plt__rgctx_fetch_3:
.Lp_11:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 352]
br x16
.inst 303
	.size plt__rgctx_fetch_3,.-plt__rgctx_fetch_3
	.local plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF
	.type plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF,@function
plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF:
.Lp_12:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 360]
br x16
.inst 324
	.size plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF,.-plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF
	.local plt__jit_icall_ves_icall_thread_finish_async_abort
	.type plt__jit_icall_ves_icall_thread_finish_async_abort,@function
plt__jit_icall_ves_icall_thread_finish_async_abort:
.Lp_13:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 368]
br x16
.inst 338
	.size plt__jit_icall_ves_icall_thread_finish_async_abort,.-plt__jit_icall_ves_icall_thread_finish_async_abort
	.local plt_System_ComponentModel_BindingList_1_T_REF_ClearItems
	.type plt_System_ComponentModel_BindingList_1_T_REF_ClearItems,@function
plt_System_ComponentModel_BindingList_1_T_REF_ClearItems:
.Lp_14:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 376]
br x16
.inst 347
	.size plt_System_ComponentModel_BindingList_1_T_REF_ClearItems,.-plt_System_ComponentModel_BindingList_1_T_REF_ClearItems
	.local plt_System_Collections_ObjectModel_Collection_1_T_REF_get_Count
	.type plt_System_Collections_ObjectModel_Collection_1_T_REF_get_Count,@function
plt_System_Collections_ObjectModel_Collection_1_T_REF_get_Count:
.Lp_15:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 384]
br x16
.inst 369
	.size plt_System_Collections_ObjectModel_Collection_1_T_REF_get_Count,.-plt_System_Collections_ObjectModel_Collection_1_T_REF_get_Count
	.local plt_System_Collections_ObjectModel_Collection_1_T_REF_get_Item_int
	.type plt_System_Collections_ObjectModel_Collection_1_T_REF_get_Item_int,@function
plt_System_Collections_ObjectModel_Collection_1_T_REF_get_Item_int:
.Lp_16:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 392]
br x16
.inst 386
	.size plt_System_Collections_ObjectModel_Collection_1_T_REF_get_Item_int,.-plt_System_Collections_ObjectModel_Collection_1_T_REF_get_Item_int
	.local plt_object_Equals_object_object
	.type plt_object_Equals_object_object,@function
plt_object_Equals_object_object:
.Lp_17:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 400]
br x16
.inst 403
	.size plt_object_Equals_object_object,.-plt_object_Equals_object_object
	.local plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF
	.type plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF,@function
plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF:
.Lp_18:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 408]
br x16
.inst 408
	.size plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF,.-plt_Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF
	.local plt_System_ComponentModel_BindingList_1_T_REF_EndNew_int
	.type plt_System_ComponentModel_BindingList_1_T_REF_EndNew_int,@function
plt_System_ComponentModel_BindingList_1_T_REF_EndNew_int:
.Lp_19:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 416]
br x16
.inst 422
	.size plt_System_ComponentModel_BindingList_1_T_REF_EndNew_int,.-plt_System_ComponentModel_BindingList_1_T_REF_EndNew_int
	.local plt_System_ComponentModel_BindingList_1_T_REF_InsertItem_int_T_REF
	.type plt_System_ComponentModel_BindingList_1_T_REF_InsertItem_int_T_REF,@function
plt_System_ComponentModel_BindingList_1_T_REF_InsertItem_int_T_REF:
.Lp_20:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 424]
br x16
.inst 437
	.size plt_System_ComponentModel_BindingList_1_T_REF_InsertItem_int_T_REF,.-plt_System_ComponentModel_BindingList_1_T_REF_InsertItem_int_T_REF
	.local plt_System_ComponentModel_BindingList_1_T_REF_RemoveItem_int
	.type plt_System_ComponentModel_BindingList_1_T_REF_RemoveItem_int,@function
plt_System_ComponentModel_BindingList_1_T_REF_RemoveItem_int:
.Lp_21:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 432]
br x16
.inst 452
	.size plt_System_ComponentModel_BindingList_1_T_REF_RemoveItem_int,.-plt_System_ComponentModel_BindingList_1_T_REF_RemoveItem_int
	.local plt_System_ComponentModel_BindingList_1_T_REF_SetItem_int_T_REF
	.type plt_System_ComponentModel_BindingList_1_T_REF_SetItem_int_T_REF,@function
plt_System_ComponentModel_BindingList_1_T_REF_SetItem_int_T_REF:
.Lp_22:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 440]
br x16
.inst 467
	.size plt_System_ComponentModel_BindingList_1_T_REF_SetItem_int_T_REF,.-plt_System_ComponentModel_BindingList_1_T_REF_SetItem_int_T_REF
	.local plt_System_Collections_ObjectModel_Collection_1_T_REF_Clear
	.type plt_System_Collections_ObjectModel_Collection_1_T_REF_Clear,@function
plt_System_Collections_ObjectModel_Collection_1_T_REF_Clear:
.Lp_23:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 448]
br x16
.inst 482
	.size plt_System_Collections_ObjectModel_Collection_1_T_REF_Clear,.-plt_System_Collections_ObjectModel_Collection_1_T_REF_Clear
	.local plt__rgctx_fetch_4
	.type plt__rgctx_fetch_4,@function
plt__rgctx_fetch_4:
.Lp_24:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 456]
br x16
.inst 499
	.size plt__rgctx_fetch_4,.-plt__rgctx_fetch_4
	.local plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
	.type plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr,@function
plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr:
.Lp_25:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 464]
br x16
.inst 507
	.size plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr,.-plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
	.local plt_System_Collections_ObjectModel_Collection_1_T_REF_Remove_T_REF
	.type plt_System_Collections_ObjectModel_Collection_1_T_REF_Remove_T_REF,@function
plt_System_Collections_ObjectModel_Collection_1_T_REF_Remove_T_REF:
.Lp_26:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 472]
br x16
.inst 515
	.size plt_System_Collections_ObjectModel_Collection_1_T_REF_Remove_T_REF,.-plt_System_Collections_ObjectModel_Collection_1_T_REF_Remove_T_REF
	.local plt_System_Collections_ObjectModel_Collection_1_T_REF_Add_T_REF
	.type plt_System_Collections_ObjectModel_Collection_1_T_REF_Add_T_REF,@function
plt_System_Collections_ObjectModel_Collection_1_T_REF_Add_T_REF:
.Lp_27:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 480]
br x16
.inst 532
	.size plt_System_Collections_ObjectModel_Collection_1_T_REF_Add_T_REF,.-plt_System_Collections_ObjectModel_Collection_1_T_REF_Add_T_REF
	.local plt__rgctx_fetch_5
	.type plt__rgctx_fetch_5,@function
plt__rgctx_fetch_5:
.Lp_28:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 488]
br x16
.inst 556
	.size plt__rgctx_fetch_5,.-plt__rgctx_fetch_5
	.local plt__rgctx_fetch_6
	.type plt__rgctx_fetch_6,@function
plt__rgctx_fetch_6:
.Lp_29:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 496]
br x16
.inst 577
	.size plt__rgctx_fetch_6,.-plt__rgctx_fetch_6
	.local plt_System_ComponentModel_BindingList_1_T_REF__ctor_System_Collections_Generic_IList_1_T_REF
	.type plt_System_ComponentModel_BindingList_1_T_REF__ctor_System_Collections_Generic_IList_1_T_REF,@function
plt_System_ComponentModel_BindingList_1_T_REF__ctor_System_Collections_Generic_IList_1_T_REF:
.Lp_30:
adrp x16, mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
ldr x16, [x16, 504]
br x16
.inst 622
	.size plt_System_ComponentModel_BindingList_1_T_REF__ctor_System_Collections_Generic_IList_1_T_REF,.-plt_System_ComponentModel_BindingList_1_T_REF__ctor_System_Collections_Generic_IList_1_T_REF
	.size mono_aot_Microsoft_EntityFrameworkCore_Abstractions_plt,.-mono_aot_Microsoft_EntityFrameworkCore_Abstractions_plt
plt_end:
.section ".rodata"
.subsection 0
	.balign 8
image_table:

	.byte 5,0,0,0,77,105,99,114,111,115,111,102,116,46,69,110,116,105,116,121,70,114,97,109,101,119,111,114,107,67,111,114
	.byte 101,46,65,98,115,116,114,97,99,116,105,111,110,115,0,53,70,50,50,67,48,50,52,45,68,49,49,55,45,52,66,48
	.byte 56,45,65,57,48,56,45,53,68,57,53,53,68,52,55,56,51,67,52,0,0,97,100,98,57,55,57,51,56,50,57,100
	.byte 100,97,101,54,48,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,79,98,106,101,99,116,77,111,100,101,108,0,65,69,66,69,48,56,56,49,45,54,52,48,56,45,52,53,55
	.byte 53,45,65,50,49,68,45,49,66,49,67,54,50,56,50,69,49,56,55,0,0,98,48,51,102,53,102,55,102,49,49,100
	.byte 53,48,97,51,97,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,80,114,105,118,97,116,101,46,67,111,114,101,76,105,98,0,52,65,67,56,66,48,52,49,45,51,50,66,57
	.byte 45,52,69,56,56,45,57,54,66,56,45,54,49,67,52,53,69,70,69,68,56,67,56,0,0,55,99,101,99,56,53,100
	.byte 55,98,101,97,55,55,57,56,101,0,0,0,0,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,83,121,115,116,101,109,46,76,105,110,113,0,57,55,67,52,52,66,70,57,45,52,54,68,66,45,52,50
	.byte 55,54,45,65,57,55,56,45,51,66,53,54,69,68,55,70,49,66,52,66,0,0,98,48,51,102,53,102,55,102,49,49
	.byte 100,53,48,97,51,97,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,67,111,109,112,111,110,101,110,116,77,111,100,101,108,46,84,121,112,101,67,111,110,118,101,114,116,101,114,0
	.byte 68,65,57,69,68,50,49,57,45,54,65,52,68,45,52,67,53,51,45,57,54,50,51,45,68,50,57,52,55,52,56,70
	.byte 65,66,68,49,0,0,98,48,51,102,53,102,55,102,49,49,100,53,48,97,51,97,0,0,1,0,0,0,10,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.balign 8
	.local mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
	.type mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got,@object
mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got:
	.skip 512
got_end:
.section ".rodata"
.subsection 0
	.balign 8
blob:

	.byte 0,25,0,0,0,42,0,0,0,4,25,25,26,27,43,0,0,0,2,28,29,44,0,0,0,45,0,0,0,46,0,0
	.byte 0,47,0,0,0,48,0,0,0,12,30,31,28,32,32,29,30,31,28,32,32,29,49,0,0,0,50,0,0,0,51,0
	.byte 0,0,11,0,36,38,45,50,52,32,47,48,55,8,55,9,55,10,55,11,55,12,55,128,243,6,80,6,89,6,91,6
	.byte 92,6,96,6,128,249,6,83,6,128,165,6,128,142,6,128,141,22,2,17,1,13,2,20,1,5,193,0,0,65,5,194
	.byte 0,66,4,5,194,0,15,107,5,194,0,66,3,5,194,0,66,5,22,2,128,218,2,6,128,249,6,128,128,6,104,5
	.byte 0,19,0,1,0,1,21,5,1,28,7,128,159,1,7,128,167,4,1,21,128,173,34,128,177,138,20,255,253,0,0,0
	.byte 2,5,3,3,129,34,2,128,173,3,255,253,0,0,0,2,5,3,3,129,34,2,128,173,4,1,22,128,173,3,255,253
	.byte 0,0,0,7,128,216,0,52,1,128,173,3,255,252,0,0,0,15,2,34,128,177,186,64,2,20,1,1,255,253,0,0
	.byte 0,7,128,177,0,49,1,128,173,0,6,103,4,2,134,197,2,128,173,34,128,177,138,12,255,253,0,0,0,7,129,12
	.byte 2,192,0,68,78,1,128,173,4,2,134,198,2,128,173,34,128,177,138,12,255,253,0,0,0,7,129,40,2,192,0,68
	.byte 79,1,128,173,3,255,253,0,0,0,7,128,177,0,51,1,128,173,6,129,29,4,2,98,4,128,173,3,255,253,0,0
	.byte 0,7,129,85,4,130,253,1,128,173,4,2,134,140,2,128,173,3,255,253,0,0,0,7,129,106,2,192,0,66,60,1
	.byte 128,173,3,255,253,0,0,0,7,129,106,2,192,0,66,62,1,128,173,3,194,0,2,202,3,255,253,0,0,0,7,128
	.byte 177,0,50,1,128,173,3,255,253,0,0,0,7,129,85,4,131,1,1,128,173,3,255,253,0,0,0,7,129,85,4,130
	.byte 254,1,128,173,3,255,253,0,0,0,7,129,85,4,130,255,1,128,173,3,255,253,0,0,0,7,129,85,4,131,0,1
	.byte 128,173,3,255,253,0,0,0,7,129,106,2,192,0,66,65,1,128,173,34,128,177,148,28,7,128,167,3,255,252,0,0
	.byte 0,10,9,3,255,253,0,0,0,7,129,106,2,192,0,66,71,1,128,173,3,255,253,0,0,0,7,129,106,2,192,0
	.byte 66,64,1,128,173,4,2,134,194,2,128,173,34,128,177,138,12,255,253,0,0,0,7,130,37,2,192,0,68,64,1,128
	.byte 173,34,128,177,138,12,255,253,0,0,0,7,130,37,2,192,0,68,68,1,128,173,5,0,19,0,1,0,1,22,5,1
	.byte 28,7,130,86,1,7,130,94,4,2,98,4,130,100,3,255,253,0,0,0,7,130,104,4,130,246,1,130,100,5,0,30
	.byte 0,1,1,26,5,1,28,7,130,125,1,7,130,132,11,0,2,1,15,12,0,29,32,12,0,12,255,253,0,0,0,1
	.byte 17,0,26,2,130,138,0,0,8,0,88,16,16,12,40,2,0,19,76,44,88,0,7,0,44,6,4,0,0,2,4,1
	.byte 20,6,0,1,4,11,14,2,1,0,16,0,29,24,16,0,13,255,253,0,0,0,7,128,177,0,43,1,128,173,0,0
	.byte 11,0,88,14,80,10,8,14,112,46,184,4,117,129,172,44,129,224,0,55,0,44,2,12,0,4,0,4,0,4,0,4
	.byte 0,4,0,8,5,0,0,0,0,0,5,4,2,4,0,8,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0
	.byte 7,100,0,4,0,8,0,12,0,4,0,4,0,12,0,4,0,8,0,8,0,8,0,4,0,4,0,4,0,12,0,4
	.byte 0,8,0,4,0,4,0,8,0,4,0,4,0,4,0,4,0,4,0,4,11,4,0,4,0,0,0,4,0,12,5,12
	.byte 1,0,47,31,2,1,2,40,129,84,100,129,0,129,4,0,8,128,244,0,4,128,252,2,1,0,16,0,29,24,16,0
	.byte 13,255,253,0,0,0,7,128,177,0,44,1,128,173,0,0,32,0,88,12,24,10,88,2,0,4,56,14,104,14,24,0
	.byte 0,12,80,4,8,4,104,6,16,12,72,0,0,2,16,12,16,119,129,92,44,129,108,0,56,0,44,1,12,5,4,0
	.byte 4,0,4,0,8,0,4,0,4,0,0,0,16,6,0,0,0,2,28,1,12,0,4,0,4,0,8,0,4,0,4,0
	.byte 0,0,12,6,4,2,4,0,4,0,4,5,0,1,4,0,4,0,4,0,12,0,12,0,4,5,0,0,0,2,4,0
	.byte 0,0,4,0,8,0,0,0,4,0,4,2,32,1,4,0,0,2,4,1,4,0,4,0,4,0,12,0,12,5,0,0
	.byte 0,1,8,1,4,5,4,1,0,11,48,2,1,0,16,0,29,24,16,0,13,255,253,0,0,0,7,128,177,0,45,1
	.byte 128,173,0,0,22,0,88,8,16,14,24,4,16,14,24,42,32,4,8,24,32,24,48,14,16,14,24,81,128,164,44,128
	.byte 192,0,37,0,44,2,0,0,4,2,4,2,4,0,8,5,0,0,4,2,4,2,4,0,4,0,4,11,4,10,4,0
	.byte 0,0,0,0,4,0,4,5,0,0,0,2,4,2,8,5,4,0,0,0,0,5,4,1,4,0,4,0,8,5,4,6
	.byte 4,2,4,5,4,2,4,0,4,5,4,1,0,11,0,2,1,0,12,0,29,16,12,0,13,255,253,0,0,0,7,128
	.byte 177,0,46,1,128,173,0,0,14,0,88,16,32,16,24,8,24,14,32,4,24,14,24,44,124,44,128,136,0,19,0,44
	.byte 3,12,5,4,1,4,5,4,0,0,2,4,2,4,0,4,2,4,2,4,0,8,0,4,5,4,0,4,2,4,2,8
	.byte 5,4,1,0,11,65,2,1,0,16,0,29,24,16,0,13,255,253,0,0,0,7,128,177,0,47,1,128,173,0,0,26
	.byte 0,88,8,16,14,24,4,16,14,24,42,32,4,8,24,48,4,8,16,56,10,8,0,0,14,24,89,128,176,44,128,204
	.byte 0,41,0,44,2,0,0,4,2,4,2,4,0,8,5,0,0,4,2,4,2,4,0,4,0,4,11,4,10,4,0,0
	.byte 0,0,0,4,0,4,5,0,0,0,2,4,1,4,0,4,0,8,5,4,6,4,0,0,2,4,3,12,0,4,0,4
	.byte 0,8,5,0,0,0,0,0,0,4,5,0,2,4,0,4,5,4,1,0,11,82,2,1,0,16,0,29,32,16,0,13
	.byte 255,253,0,0,0,7,128,177,0,48,1,128,173,0,0,28,0,96,16,32,16,32,8,16,14,24,4,16,44,40,4,8
	.byte 24,48,14,16,4,8,14,24,0,0,14,24,89,128,192,48,128,220,0,41,0,48,2,4,0,4,0,4,6,4,3,4
	.byte 0,8,5,4,2,0,0,4,2,4,2,4,0,8,5,0,0,4,2,4,7,4,10,4,0,4,0,0,0,4,0,4
	.byte 5,0,0,0,2,4,1,4,0,4,0,8,5,4,6,4,2,4,5,4,0,0,2,4,2,4,0,4,0,4,5,0
	.byte 2,8,0,4,6,0,47,101,11,3,2,104,130,92,128,204,129,124,129,128,2,72,132,96,130,188,131,128,131,132,2,64
	.byte 132,164,68,132,116,132,120,0,8,129,112,0,4,129,120,1,8,131,96,1,4,131,104,2,8,131,116,1,16,131,108,2
	.byte 4,131,124,1,4,131,124,2,4,131,128,2,8,132,104,2,4,132,112,2,1,0,16,0,29,32,16,0,13,255,253,0
	.byte 0,0,7,128,177,0,49,1,128,173,0,0,111,0,112,22,24,14,24,12,16,6,24,12,16,0,0,14,16,12,40,4
	.byte 16,4,8,4,16,6,8,12,16,10,72,2,0,4,56,12,80,12,64,14,24,2,0,12,80,4,8,4,104,16,152,2
	.byte 8,16,14,72,0,0,2,16,14,16,6,16,8,24,4,16,4,8,4,16,6,8,12,16,10,72,2,0,4,56,12,80
	.byte 14,64,16,24,0,0,12,80,4,8,4,144,1,16,152,2,8,16,14,72,0,0,2,16,4,104,14,16,129,78,132,164
	.byte 56,132,180,0,128,162,0,56,1,4,5,4,0,0,5,4,2,4,5,8,1,8,6,0,0,8,2,4,1,4,0,4
	.byte 5,0,7,8,0,0,2,4,2,4,0,8,2,4,0,0,1,4,1,4,0,0,2,4,0,0,1,4,1,4,1,0
	.byte 0,0,2,4,1,8,5,0,0,4,0,4,0,12,0,16,6,0,0,0,2,28,1,4,0,4,0,4,0,12,0,16
	.byte 11,32,2,4,0,4,0,4,6,0,1,4,0,4,0,4,0,12,0,12,0,4,5,0,0,0,2,4,0,0,0,4
	.byte 0,8,0,0,0,4,0,4,2,32,0,4,8,128,136,2,4,0,0,2,4,2,4,0,4,0,4,0,12,0,12,5
	.byte 0,0,0,1,8,7,8,0,0,1,4,0,0,2,4,2,0,0,8,2,4,0,0,1,4,1,4,0,0,2,4,0
	.byte 0,1,4,1,4,1,0,0,0,2,4,1,8,5,0,0,4,0,4,0,12,0,16,6,0,0,0,2,28,1,4,0
	.byte 4,0,4,0,12,0,16,12,32,3,4,0,4,0,4,5,0,1,4,0,4,0,4,0,12,0,12,0,4,5,0,0
	.byte 0,2,4,0,0,0,4,0,8,0,0,0,4,0,4,0,4,0,8,0,0,0,4,0,4,2,32,0,4,8,128,136
	.byte 2,4,0,0,2,4,2,4,0,4,0,4,0,12,0,12,5,0,0,0,1,8,0,0,0,4,0,8,0,0,0,4
	.byte 0,4,2,32,2,4,5,4,0,0,2,8,47,121,2,1,2,32,128,188,52,128,140,128,144,0,8,128,128,0,4,128
	.byte 136,2,1,0,12,0,29,16,12,0,13,255,253,0,0,0,7,128,177,0,50,1,128,173,0,0,12,0,80,16,24,14
	.byte 24,24,112,4,104,14,16,61,128,188,40,128,200,0,27,0,40,1,4,5,4,0,0,2,4,2,4,5,8,1,4,6
	.byte 12,0,4,0,4,0,8,0,8,0,4,0,0,5,12,0,0,0,4,0,8,0,0,0,4,0,4,2,32,2,4,5
	.byte 4,0,0,2,8,47,121,2,1,2,32,128,188,52,128,140,128,144,0,8,128,128,0,4,128,136,2,1,0,12,0,29
	.byte 16,12,0,13,255,253,0,0,0,7,128,177,0,51,1,128,173,0,0,12,0,80,16,24,14,24,26,112,4,104,14,16
	.byte 61,128,188,40,128,200,0,27,0,40,1,4,5,4,0,0,2,4,2,4,5,8,1,4,6,12,0,4,0,4,0,8
	.byte 0,8,0,4,0,0,6,12,0,0,0,4,0,8,0,0,0,4,0,4,2,32,2,4,5,4,0,0,2,8,4,1
	.byte 22,130,100,11,128,135,2,1,0,12,0,29,16,12,0,13,255,253,0,0,0,7,137,62,0,52,1,130,100,0,0,4
	.byte 0,80,14,24,13,52,40,64,0,4,0,40,2,8,5,4,1,0,0,128,144,16,0,0,1,7,128,144,16,0,0,1
	.byte 194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192,194,0,1,191,194,0,1,190,7,128,144,16
	.byte 0,0,1,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192,194,0,1,191,194,0,1,190,7
	.byte 128,160,32,0,0,8,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192,194,0,1,191,194,0
	.byte 1,190,7,128,144,16,0,0,1,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192,194,0,1
	.byte 191,194,0,1,190,7,128,144,16,0,0,1,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192
	.byte 194,0,1,191,194,0,1,190,11,128,144,16,0,0,1,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194
	.byte 0,1,192,194,0,1,191,194,0,1,190,10,9,8,7,24,128,144,20,0,0,4,194,0,2,47,194,0,2,46,194,0
	.byte 2,49,194,0,2,199,194,0,2,48,194,0,2,60,194,0,2,52,194,0,2,76,194,0,2,77,194,0,2,78,194,0
	.byte 2,79,194,0,2,80,194,0,2,81,194,0,2,82,194,0,2,83,194,0,2,84,194,0,2,85,194,0,2,86,194,0
	.byte 2,87,194,0,2,88,194,0,2,89,194,0,2,90,194,0,2,51,194,0,2,91,7,128,144,16,0,0,1,194,0,1
	.byte 188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192,194,0,1,191,194,0,1,190,7,128,160,24,0,0,8
	.byte 194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192,194,0,1,191,194,0,1,190,7,128,144,16
	.byte 0,0,1,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192,194,0,1,191,194,0,1,190,7
	.byte 128,144,16,0,0,1,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192,194,0,1,191,194,0
	.byte 1,190,7,128,144,16,0,0,1,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192,194,0,1
	.byte 191,194,0,1,190,7,128,144,16,0,0,1,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192
	.byte 194,0,1,191,194,0,1,190,7,128,160,24,0,0,8,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194
	.byte 0,1,192,194,0,1,191,194,0,1,190,7,128,144,16,0,0,1,194,0,1,188,194,0,1,187,194,0,2,200,194,0
	.byte 2,199,194,0,1,192,194,0,1,191,194,0,1,190,4,128,144,16,0,0,1,194,0,2,204,194,0,2,201,194,0,2
	.byte 200,194,0,2,199,7,128,144,16,0,0,1,194,0,1,188,194,0,1,187,194,0,2,200,194,0,2,199,194,0,1,192
	.byte 194,0,1,191,194,0,1,190,4,128,196,37,16,8,0,1,194,0,2,204,194,0,2,201,194,0,2,200,194,0,2,199
	.byte 0,128,144,16,0,0,1,255,255,255,255,255,255,255,255,255,255,115,103,101,110,0
.section ".rodata"
.subsection 1
runtime_version:
	.string ""
.section ".rodata"
.subsection 1
assembly_guid:
	.string "5F22C024-D117-4B08-A908-5D955D4783C4"
.section ".rodata"
.subsection 1
assembly_name:
	.string "Microsoft.EntityFrameworkCore.Abstractions"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 187,0
	.balign 8
	.xword mono_aot_Microsoft_EntityFrameworkCore_Abstractions_got
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

	.long 33,33,512,200,31,53,0,32
	.long 374417919,0,3121,128,8,8,7,9
	.long 8388607,0,4,25,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.byte 174,35,242,200,217,57,30,148,252,31,148,26,134,245,94,195
.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.EntityFrameworkCore.Utilities.Check:NotNull<T_REF>"
	.string "Microsoft_EntityFrameworkCore_Utilities_Check_NotNull_T_REF_T_REF_string"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.Utilities.Check:NotNull<T_REF>"
	.xword .Lm_19
	.xword .Lme_19

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM3=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM3
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM4=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM4
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM5=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM5
.Lfde0_start:

	.long 0
	.balign 8
	.xword .Lm_19

.LDIFF_SYM6=.Lme_19 - .Lm_19
	.long .LDIFF_SYM6
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde0_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:.ctor"
	.string "Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF__ctor_System_Collections_Generic_ICollection_1_T_REF"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:.ctor"
	.xword .Lm_2a
	.xword .Lme_2a

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM7=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM7
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM8=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM8
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM9=.Lfde1_end - .Lfde1_start
	.long .LDIFF_SYM9
.Lfde1_start:

	.long 0
	.balign 8
	.xword .Lm_2a

.LDIFF_SYM10=.Lme_2a - .Lm_2a
	.long .LDIFF_SYM10
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.balign 8
.Lfde1_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:ClearItems"
	.string "Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ClearItems"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:ClearItems"
	.xword .Lm_2b
	.xword .Lme_2b

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM11=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM11
	.byte 2,141,24,11
	.string "V_0"

.LDIFF_SYM12=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM12
	.byte 2,141,32,11
	.string "V_1"

.LDIFF_SYM13=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM13
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM14=.Lfde2_end - .Lfde2_start
	.long .LDIFF_SYM14
.Lfde2_start:

	.long 0
	.balign 8
	.xword .Lm_2b

.LDIFF_SYM15=.Lme_2b - .Lm_2b
	.long .LDIFF_SYM15
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,154,8
	.balign 8
.Lfde2_end:

.section ".debug_info"
.subsection 0
.LTDIE_2:

	.byte 17
	.string "System_Object"

	.byte 16,7
	.string "System_Object"

.LDIFF_SYM16=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM16
.LTDIE_2_POINTER:

	.byte 13
.LDIFF_SYM17=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM17
.LTDIE_2_REFERENCE:

	.byte 14
.LDIFF_SYM18=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM18
.LTDIE_1:

	.byte 5
	.string "System_ValueType"

	.byte 16,16
.LDIFF_SYM19=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM19
	.byte 2,35,0,0,7
	.string "System_ValueType"

.LDIFF_SYM20=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM20
.LTDIE_1_POINTER:

	.byte 13
.LDIFF_SYM21=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM21
.LTDIE_1_REFERENCE:

	.byte 14
.LDIFF_SYM22=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM22
.LTDIE_0:

	.byte 5
	.string "System_Int32"

	.byte 20,16
.LDIFF_SYM23=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM23
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM24=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM24
	.byte 2,35,16,0,7
	.string "System_Int32"

.LDIFF_SYM25=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM25
.LTDIE_0_POINTER:

	.byte 13
.LDIFF_SYM26=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM26
.LTDIE_0_REFERENCE:

	.byte 14
.LDIFF_SYM27=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM27
	.byte 2
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:EndNew"
	.string "Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_EndNew_int"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:EndNew"
	.xword .Lm_2c
	.xword .Lme_2c

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM28=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM28
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM29=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM29
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM30=.Lfde3_end - .Lfde3_start
	.long .LDIFF_SYM30
.Lfde3_start:

	.long 0
	.balign 8
	.xword .Lm_2c

.LDIFF_SYM31=.Lme_2c - .Lm_2c
	.long .LDIFF_SYM31
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.balign 8
.Lfde3_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:InsertItem"
	.string "Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_InsertItem_int_T_REF"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:InsertItem"
	.xword .Lm_2d
	.xword .Lme_2d

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM32=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM32
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM33=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM33
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM34=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM34
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM35=.Lfde4_end - .Lfde4_start
	.long .LDIFF_SYM35
.Lfde4_start:

	.long 0
	.balign 8
	.xword .Lm_2d

.LDIFF_SYM36=.Lme_2d - .Lm_2d
	.long .LDIFF_SYM36
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde4_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:RemoveItem"
	.string "Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveItem_int"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:RemoveItem"
	.xword .Lm_2e
	.xword .Lme_2e

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM37=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM37
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM38=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM38
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM39=.Lfde5_end - .Lfde5_start
	.long .LDIFF_SYM39
.Lfde5_start:

	.long 0
	.balign 8
	.xword .Lm_2e

.LDIFF_SYM40=.Lme_2e - .Lm_2e
	.long .LDIFF_SYM40
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.balign 8
.Lfde5_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:SetItem"
	.string "Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_SetItem_int_T_REF"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:SetItem"
	.xword .Lm_2f
	.xword .Lme_2f

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM41=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM41
	.byte 2,141,32,3
	.string "param0"

.LDIFF_SYM42=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM42
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM43=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM43
	.byte 2,141,40,11
	.string "V_0"

.LDIFF_SYM44=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM44
	.byte 1,104,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM45=.Lfde6_end - .Lfde6_start
	.long .LDIFF_SYM45
.Lfde6_start:

	.long 0
	.balign 8
	.xword .Lm_2f

.LDIFF_SYM46=.Lme_2f - .Lm_2f
	.long .LDIFF_SYM46
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4,153,3
	.balign 8
.Lfde6_end:

.section ".debug_info"
.subsection 0
.LTDIE_4:

	.byte 5
	.string "System_EventArgs"

	.byte 16,16
.LDIFF_SYM47=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM47
	.byte 2,35,0,0,7
	.string "System_EventArgs"

.LDIFF_SYM48=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM48
.LTDIE_4_POINTER:

	.byte 13
.LDIFF_SYM49=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM49
.LTDIE_4_REFERENCE:

	.byte 14
.LDIFF_SYM50=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM50
.LTDIE_5:

	.byte 8
	.string "System_Collections_Specialized_NotifyCollectionChangedAction"

	.byte 4
.LDIFF_SYM51=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM51
	.byte 9
	.string "Add"

	.byte 0,9
	.string "Remove"

	.byte 1,9
	.string "Replace"

	.byte 2,9
	.string "Move"

	.byte 3,9
	.string "Reset"

	.byte 4,0,7
	.string "System_Collections_Specialized_NotifyCollectionChangedAction"

.LDIFF_SYM52=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM52
.LTDIE_5_POINTER:

	.byte 13
.LDIFF_SYM53=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM53
.LTDIE_5_REFERENCE:

	.byte 14
.LDIFF_SYM54=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM54
.LTDIE_6:

	.byte 17
	.string "System_Collections_IList"

	.byte 16,7
	.string "System_Collections_IList"

.LDIFF_SYM55=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM55
.LTDIE_6_POINTER:

	.byte 13
.LDIFF_SYM56=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM56
.LTDIE_6_REFERENCE:

	.byte 14
.LDIFF_SYM57=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM57
.LTDIE_3:

	.byte 5
	.string "System_Collections_Specialized_NotifyCollectionChangedEventArgs"

	.byte 48,16
.LDIFF_SYM58=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM58
	.byte 2,35,0,6
	.string "_action"

.LDIFF_SYM59=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM59
	.byte 2,35,32,6
	.string "_newItems"

.LDIFF_SYM60=.LTDIE_6_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM60
	.byte 2,35,16,6
	.string "_oldItems"

.LDIFF_SYM61=.LTDIE_6_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM61
	.byte 2,35,24,6
	.string "_newStartingIndex"

.LDIFF_SYM62=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM62
	.byte 2,35,36,6
	.string "_oldStartingIndex"

.LDIFF_SYM63=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM63
	.byte 2,35,40,0,7
	.string "System_Collections_Specialized_NotifyCollectionChangedEventArgs"

.LDIFF_SYM64=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM64
.LTDIE_3_POINTER:

	.byte 13
.LDIFF_SYM65=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM65
.LTDIE_3_REFERENCE:

	.byte 14
.LDIFF_SYM66=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM66
.LTDIE_7:

	.byte 5
	.string "System_Boolean"

	.byte 17,16
.LDIFF_SYM67=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM67
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM68=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM68
	.byte 2,35,16,0,7
	.string "System_Boolean"

.LDIFF_SYM69=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM69
.LTDIE_7_POINTER:

	.byte 13
.LDIFF_SYM70=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM70
.LTDIE_7_REFERENCE:

	.byte 14
.LDIFF_SYM71=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM71
.LTDIE_8:

	.byte 17
	.string "System_Collections_IEnumerator"

	.byte 16,7
	.string "System_Collections_IEnumerator"

.LDIFF_SYM72=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM72
.LTDIE_8_POINTER:

	.byte 13
.LDIFF_SYM73=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM73
.LTDIE_8_REFERENCE:

	.byte 14
.LDIFF_SYM74=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM74
.LTDIE_9:

	.byte 17
	.string "System_IDisposable"

	.byte 16,7
	.string "System_IDisposable"

.LDIFF_SYM75=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM75
.LTDIE_9_POINTER:

	.byte 13
.LDIFF_SYM76=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM76
.LTDIE_9_REFERENCE:

	.byte 14
.LDIFF_SYM77=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM77
	.byte 2
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:ObservableCollectionChanged"
	.string "Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_ObservableCollectionChanged_object_System_Collections_Specialized_NotifyCollectionChangedEventArgs"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:ObservableCollectionChanged"
	.xword .Lm_30
	.xword .Lme_30

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM78=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM78
	.byte 2,141,32,3
	.string "sender"

.LDIFF_SYM79=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM79
	.byte 0,3
	.string "e"

.LDIFF_SYM80=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM80
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM81=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM81
	.byte 1,105,11
	.string "V_1"

.LDIFF_SYM82=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM82
	.byte 1,105,11
	.string "V_2"

.LDIFF_SYM83=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM83
	.byte 2,141,48,11
	.string "V_3"

.LDIFF_SYM84=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM84
	.byte 1,105,11
	.string "V_4"

.LDIFF_SYM85=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM85
	.byte 2,141,56,11
	.string "V_5"

.LDIFF_SYM86=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM86
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM87=.Lfde7_end - .Lfde7_start
	.long .LDIFF_SYM87
.Lfde7_start:

	.long 0
	.balign 8
	.xword .Lm_30

.LDIFF_SYM88=.Lme_30 - .Lm_30
	.long .LDIFF_SYM88
	.long 0
	.byte 12,31,0,68,14,208,1,157,26,158,25,68,13,29,68,153,24,154,23
	.balign 8
.Lfde7_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:AddToObservableCollection"
	.string "Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_AddToObservableCollection_T_REF"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:AddToObservableCollection"
	.xword .Lm_31
	.xword .Lme_31

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM89=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM89
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM90=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM90
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM91=.Lfde8_end - .Lfde8_start
	.long .LDIFF_SYM91
.Lfde8_start:

	.long 0
	.balign 8
	.xword .Lm_31

.LDIFF_SYM92=.Lme_31 - .Lm_31
	.long .LDIFF_SYM92
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.balign 8
.Lfde8_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:RemoveFromObservableCollection"
	.string "Microsoft_EntityFrameworkCore_ChangeTracking_Internal_ObservableBackedBindingList_1_T_REF_RemoveFromObservableCollection_T_REF"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.ObservableBackedBindingList`1<T_REF>:RemoveFromObservableCollection"
	.xword .Lm_32
	.xword .Lme_32

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM93=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM93
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM94=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM94
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM95=.Lfde9_end - .Lfde9_start
	.long .LDIFF_SYM95
.Lfde9_start:

	.long 0
	.balign 8
	.xword .Lm_32

.LDIFF_SYM96=.Lme_32 - .Lm_32
	.long .LDIFF_SYM96
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.balign 8
.Lfde9_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.SortableBindingList`1<T_REF>:.ctor"
	.string "Microsoft_EntityFrameworkCore_ChangeTracking_Internal_SortableBindingList_1_T_REF__ctor_System_Collections_Generic_List_1_T_REF"

	.byte 0,0
	.string "Microsoft.EntityFrameworkCore.ChangeTracking.Internal.SortableBindingList`1<T_REF>:.ctor"
	.xword .Lm_33
	.xword .Lme_33

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM97=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM97
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM98=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM98
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM99=.Lfde10_end - .Lfde10_start
	.long .LDIFF_SYM99
.Lfde10_start:

	.long 0
	.balign 8
	.xword .Lm_33

.LDIFF_SYM100=.Lme_33 - .Lm_33
	.long .LDIFF_SYM100
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde10_end:

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
