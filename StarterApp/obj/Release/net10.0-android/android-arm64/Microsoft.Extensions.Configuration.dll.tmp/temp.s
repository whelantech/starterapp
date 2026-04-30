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
	.string "Microsoft.Extensions.Configuration.dll"
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
.Lm_4:
	.local Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF
	.type Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF,@function
Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF:
.inst 0xa9b67bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf90037af
.inst 0xf9000fa0
.inst 0xf90013a1
.inst 0xf90017a2
.inst 0xf9001fa3
.inst 0xf90023a4

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x910123a0
.inst 0xf9002fa0
.inst 0x9100a3a0
.inst 0xf9400fa1
.inst 0xf94013a2
bl .Lp_2
.inst 0xf9402fbe
.inst 0xa90007c0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 200]
.inst 0xd2800401
bl .Lp_3
.inst 0x91004002
.inst 0xaa0203e1
.inst 0xf94027a3
.inst 0xf9000043
.inst 0x91002022
.inst 0xf9402ba1
.inst 0xf9000041
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xaa0003fa
.inst 0x14000023
.inst 0xf90033a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401fa2
.inst 0xf94023a1
.inst 0xaa0203e0
.inst 0xf9004ba2
.inst 0xf9400c50
.inst 0xd63f0200
.inst 0xf9404ba0
bl .Lp_4
.inst 0xf90047a0
.inst 0xf94047a0
.inst 0xb4000060
.inst 0xf94047a0
bl .Lp_5
.inst 0x14000001

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 208]
.inst 0x3980d410
.inst 0xb5000050
bl .Lp_6

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 216]
.inst 0xf9400000
.inst 0xf9003ba0
.inst 0xf9403ba0
.inst 0x14000002
.inst 0xaa1a03e0
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8ca7bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF,.-Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF
.Lme_4:
.text 0
	.balign 16
.Lm_8:
	.local Microsoft_Extensions_Configuration_ConfigurationManager__ctor
	.type Microsoft_Extensions_Configuration_ConfigurationManager__ctor,@function
Microsoft_Extensions_Configuration_ConfigurationManager__ctor:
.inst 0xa9ba7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xaa0003fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 224]
.inst 0xd2800501
bl .Lp_3
.inst 0xf9002ba0
bl .Lp_7
.inst 0x91008341
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 232]
.inst 0xd2800401
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x1, [x16, 240]
.inst 0xf9400021
.inst 0xf90027a1
.inst 0xf90023a0
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf94027a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x9100a341
.inst 0xd5033bbf
.inst 0xf94023a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 248]
.inst 0xd2800401
bl .Lp_3
.inst 0xf9001fa0
bl .Lp_8
.inst 0x9100c341
.inst 0xd5033bbf
.inst 0xf9401fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 256]
.inst 0xd2800401
bl .Lp_3
.inst 0xf9001ba0
.inst 0xaa1a03e1
bl .Lp_9
.inst 0x91004341
.inst 0xd5033bbf
.inst 0xf9401ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 264]
.inst 0xd2800401
bl .Lp_3
.inst 0xf90017a0
.inst 0xaa1a03e1
bl .Lp_10
.inst 0x91006341
.inst 0xd5033bbf
.inst 0xf94017a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9400b40
.inst 0xf90013a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 272]
.inst 0xd2800301
bl .Lp_3
.inst 0xaa0003e1
.inst 0xf94013a2
.inst 0xaa0203e0
.inst 0x3940005e
bl .Lp_11
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c67bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationManager__ctor,.-Microsoft_Extensions_Configuration_ConfigurationManager__ctor
.Lme_8:
.text 0
	.balign 16
.Lm_c:
	.local Microsoft_Extensions_Configuration_ConfigurationManager_Microsoft_Extensions_Configuration_IConfigurationBuilder_Add_Microsoft_Extensions_Configuration_IConfigurationSource
	.type Microsoft_Extensions_Configuration_ConfigurationManager_Microsoft_Extensions_Configuration_IConfigurationBuilder_Add_Microsoft_Extensions_Configuration_IConfigurationSource,@function
Microsoft_Extensions_Configuration_ConfigurationManager_Microsoft_Extensions_Configuration_IConfigurationBuilder_Add_Microsoft_Extensions_Configuration_IConfigurationSource:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x1, [x16, 280]
.inst 0xf9400fa0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_12
bl .Lp_5
.inst 0xf9400ba0
.inst 0xf9400802
.inst 0xaa0203e0
.inst 0xf9400fa1
.inst 0x3940005e
bl .Lp_11
.inst 0xf9400ba0
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationManager_Microsoft_Extensions_Configuration_IConfigurationBuilder_Add_Microsoft_Extensions_Configuration_IConfigurationSource,.-Microsoft_Extensions_Configuration_ConfigurationManager_Microsoft_Extensions_Configuration_IConfigurationBuilder_Add_Microsoft_Extensions_Configuration_IConfigurationSource
.Lme_c:
.text 0
	.balign 16
.Lm_e:
	.local Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged
	.type Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged,@function
Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000400
.inst 0x9100c000
.inst 0xf90017a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 248]
.inst 0xd2800401
bl .Lp_3
.inst 0xf90013a0
bl .Lp_8
.inst 0xf94017a2
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xc85f7c50
.inst 0xc811fc40
.inst 0x35ffffd1
.inst 0xd5033bbf
.inst 0xaa1003e1
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xaa0103e0
.inst 0x3940003e
bl .Lp_13
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_14

	.size Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged,.-Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged
.Lme_e:
.text 0
	.balign 16
.Lm_f:
	.local Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource
	.type Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource,@function
Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource:
.inst 0xa9ba7bfd
.inst 0x910003fd
.inst 0xa9015bb5
.inst 0xa90263b7
.inst 0xa9036bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1a03e0
.inst 0xaa1903e1
.inst 0xf9400342

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x15, [x16, 288]
.inst 0x92800ef0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xaa0003fa
.inst 0xaa1a03e1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x15, [x16, 296]
.inst 0x928001f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf9401720
.inst 0xf90023a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x1, [x16, 304]
.inst 0xaa1a03e0
bl .Lp_15
.inst 0xf9002ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 312]
.inst 0xd2801001
bl .Lp_3
.inst 0xf9402ba2
.inst 0xf90027a0
.inst 0xaa1a03e1
bl .Lp_16
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x540009a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 320]
.inst 0xd2801001
bl .Lp_3
.inst 0xaa0003e1
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x54000820
.inst 0xd5033bbf
.inst 0xf94027a0
.inst 0xf9001039
.inst 0x91008022
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 328]
.inst 0xf9002022

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 336]
.inst 0xf9001423
.inst 0xf9401843
.inst 0xf9000c23
.inst 0xf9401442
.inst 0xf9000822
bl .Lp_17
.inst 0xaa0003e1
.inst 0xf94023a0
.inst 0xaa0003f8
.inst 0xaa0103f7
.inst 0x3940031e
.inst 0xb9801f01
.inst 0x11000421
.inst 0xb9001c01
.inst 0xf9400b16
.inst 0xb9801b15
.inst 0xaa1503e0
.inst 0xb9801ac1
.inst 0x6b01001f
.inst 0x54000142
.inst 0x110006a0
.inst 0xb9001b00
.inst 0x93407ea1
.inst 0xaa1603e0
.inst 0xaa1703e2
.inst 0xf94002c3
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x14000004
.inst 0xaa1803e0
.inst 0xaa1703e1
bl .Lp_18
.inst 0xf9401322
.inst 0xaa0203e0
.inst 0xaa1a03e1
.inst 0x3940005e
bl .Lp_19
.inst 0xaa1903e0
bl .Lp_20
.inst 0xa9415bb5
.inst 0xa94263b7
.inst 0xa9436bb9
.inst 0x910003bf
.inst 0xa8c67bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_14
.inst 0xd2800dc0
.inst 0xaa1103e1
bl .Lp_14

	.size Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource,.-Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource
.Lme_f:
.text 0
	.balign 16
.Lm_12:
	.local Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
	.type Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager,@function
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 344]
.inst 0xd2800401
bl .Lp_3
.inst 0xaa0003e1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 352]
.inst 0xf9400000
.inst 0xf90017a0
.inst 0x91004022
.inst 0xd5033bbf
.inst 0xf94017a0
.inst 0xf9000040
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xf9400ba0
.inst 0xf90013a0
.inst 0x91004002
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000041
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0x91006001
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager,.-Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
.Lme_12:
.text 0
	.balign 16
.Lm_17:
	.local Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource
	.type Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource,@function
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9015bb5
.inst 0xa90263b7
.inst 0xf9001ba0
.inst 0xf9001fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401ba0
.inst 0xf9400800
.inst 0xaa0003f8
.inst 0xf9401fb7
.inst 0x3940031e
.inst 0xb9801f01
.inst 0x11000421
.inst 0xb9001c01
.inst 0xf9400b16
.inst 0xb9801b15
.inst 0xaa1503e0
.inst 0xb9801ac1
.inst 0x6b01001f
.inst 0x54000142
.inst 0x110006a0
.inst 0xb9001b00
.inst 0x93407ea1
.inst 0xaa1603e0
.inst 0xaa1703e2
.inst 0xf94002c3
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x14000004
.inst 0xaa1803e0
.inst 0xaa1703e1
bl .Lp_21
.inst 0xf9401ba0
.inst 0xf9400c02
.inst 0xaa0203e0
.inst 0xf9401fa1
.inst 0x3940005e
bl .Lp_22
.inst 0xa9415bb5
.inst 0xa94263b7
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource,.-Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource
.Lme_17:
.text 0
	.balign 16
.Lm_22:
	.local Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
	.type Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager,@function
Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 360]
.inst 0xd2800a01
bl .Lp_3
.inst 0xf90017a0
bl .Lp_23
.inst 0xf94017a1
.inst 0xf9400ba0
.inst 0xf90013a0
.inst 0x91004002
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000041
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0x91006001
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager,.-Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
.Lme_22:
.text 0
	.balign 16
.Lm_34:
	.local Microsoft_Extensions_Configuration_ConfigurationProvider__ctor
	.type Microsoft_Extensions_Configuration_ConfigurationProvider__ctor,@function
Microsoft_Extensions_Configuration_ConfigurationProvider__ctor:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 248]
.inst 0xd2800401
bl .Lp_3
.inst 0xf9001fa0
bl .Lp_8
.inst 0xf9400ba0
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf9401fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 368]
.inst 0x3980d410
.inst 0xb5000050
bl .Lp_6

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 376]
.inst 0xf9400000
.inst 0xf9001ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 384]
.inst 0xd2800a01
bl .Lp_3
.inst 0xf9401ba1
.inst 0xf90017a0
bl .Lp_24
.inst 0xf94017a0
.inst 0xf90013a0
.inst 0xf9400ba0
.inst 0x91006001
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationProvider__ctor,.-Microsoft_Extensions_Configuration_ConfigurationProvider__ctor
.Lme_34:
.text 0
	.balign 16
.Lm_38:
	.local Microsoft_Extensions_Configuration_ConfigurationProvider_Load
	.type Microsoft_Extensions_Configuration_ConfigurationProvider_Load,@function
Microsoft_Extensions_Configuration_ConfigurationProvider_Load:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationProvider_Load,.-Microsoft_Extensions_Configuration_ConfigurationProvider_Load
.Lme_38:
.text 0
	.balign 16
.Lm_39:
	.local Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken
	.type Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken,@function
Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9400ba0
.inst 0xf9400800
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken,.-Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken
.Lme_39:
.text 0
	.balign 16
.Lm_3d:
	.local Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged
	.type Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged,@function
Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9400ba0
.inst 0xf9400800
.inst 0xaa0003e1
.inst 0x3940003e
.inst 0xb9802800
.inst 0xf90013a0
.inst 0xd50339bf
.inst 0xd50339bf
.inst 0xf94013a0
.inst 0x6b1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged,.-Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged
.Lme_3d:
.text 0
	.balign 16
.Lm_3e:
	.local Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object
	.type Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object,@function
Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object:
.inst 0xa9b97bfd
.inst 0x910003fd
.inst 0xf9000bb7
.inst 0xa901ebb9
.inst 0xf90017a0
.inst 0xaa0103f9
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1903f7
.inst 0xaa1a03f9
.inst 0xf94017a0
.inst 0xf940081a
.inst 0x3940035e
.inst 0x3940b340
.inst 0x35000bc0
.inst 0xf90023bf
.inst 0x910103a0
.inst 0xf9002ba0
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf90023ba
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xf94023a0
.inst 0xf9001ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 392]
.inst 0xf9400000
.inst 0xaa0003e1
.inst 0xaa1703fa
.inst 0xaa1903f7
.inst 0xf9401ba2
.inst 0xf9001fa2
.inst 0xaa0103f9
.inst 0xb50006a0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 400]
.inst 0xf9400000
.inst 0xf90033a0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000800

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 408]
.inst 0xd2801001
bl .Lp_3
.inst 0xf9002fa0
.inst 0xf94033a1
.inst 0xeb1f003f
.inst 0x10000011
.inst 0x54000660
.inst 0xd5033bbf
.inst 0xf9402fa0
.inst 0xf9001001
.inst 0x91008002
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x1, [x16, 416]
.inst 0xf9002001

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 424]
.inst 0xf9001402
.inst 0xf9401822
.inst 0xf9000c02
.inst 0xf9401421
.inst 0xf9000801
.inst 0xf9002ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x1, [x16, 392]
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf9000020
.inst 0xf9401fa1
.inst 0xf9001fa1
.inst 0xaa0003f9

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x15, [x16, 432]
.inst 0xaa1a03e0
.inst 0xaa1703e1
.inst 0xf9401fa2
.inst 0xaa1903e3
.inst 0xf94017a4
bl .Lp_25
.inst 0xf9400bb7
.inst 0xa941ebb9
.inst 0x910003bf
.inst 0xa8c77bfd
.inst 0xd65f03c0
.inst 0xd28008c0
bl .Lp_26
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_14
.inst 0xd2800dc0
.inst 0xaa1103e1
bl .Lp_14

	.size Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object,.-Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object
.Lme_3e:
.text 0
	.balign 16
.Lm_3f:
	.local Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload
	.type Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload,@function
Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xf9400801
.inst 0xaa0103e0
.inst 0x3940003e
bl .Lp_27
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload,.-Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload
.Lme_3f:
.text 0
	.balign 16
.Lm_40:
	.local Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor
	.type Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor,@function
Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 440]
.inst 0xd2800601
bl .Lp_3
.inst 0xaa0003e1
.inst 0xf9400ba0
.inst 0xf90013a0
.inst 0x91004002
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000041
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xd280003e
.inst 0x3900601e
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor,.-Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor
.Lme_40:
.text 0
	.balign 16
.Lm_41:
	.local Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor
	.type Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor,@function
Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor:
.inst 0xa9be7bfd
.inst 0x910003fd

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 448]
.inst 0xd2800201
bl .Lp_3
.inst 0xaa0003e1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 400]
.inst 0xf9000ba0
.inst 0xd5033bbf
.inst 0xf9400ba0
.inst 0xf9000001
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor,.-Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor
.Lme_41:
.text 0
	.balign 16
.Lm_42:
	.local Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor
	.type Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor,@function
Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor,.-Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor
.Lme_42:
.text 0
	.balign 16
.Lm_4e:
	.local Microsoft_Extensions_Configuration_MemoryConfigurationBuilderExtensions_AddInMemoryCollection_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Collections_Generic_IEnumerable_1_System_Collections_Generic_KeyValuePair_2_string_string
	.type Microsoft_Extensions_Configuration_MemoryConfigurationBuilderExtensions_AddInMemoryCollection_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Collections_Generic_IEnumerable_1_System_Collections_Generic_KeyValuePair_2_string_string,@function
Microsoft_Extensions_Configuration_MemoryConfigurationBuilderExtensions_AddInMemoryCollection_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Collections_Generic_IEnumerable_1_System_Collections_Generic_KeyValuePair_2_string_string:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb9
.inst 0xaa0003f9
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 456]
.inst 0xf90013a0
.inst 0xb50000d9
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_12
bl .Lp_5

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 272]
.inst 0xd2800301
bl .Lp_3
.inst 0xaa0003e1
.inst 0x3940003e
.inst 0x91004022
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000040
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xaa1903e0
.inst 0xf9400322

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x15, [x16, 464]
.inst 0x928004f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xaa1903e0
.inst 0xf9400bb9
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_MemoryConfigurationBuilderExtensions_AddInMemoryCollection_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Collections_Generic_IEnumerable_1_System_Collections_Generic_KeyValuePair_2_string_string,.-Microsoft_Extensions_Configuration_MemoryConfigurationBuilderExtensions_AddInMemoryCollection_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Collections_Generic_IEnumerable_1_System_Collections_Generic_KeyValuePair_2_string_string
.Lme_4e:
.text 0
	.balign 16
.Lm_4f:
	.local Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.type Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider,@function
Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 472]
.inst 0xd2800401
bl .Lp_3
.inst 0xf90013a0
.inst 0xf9400ba1
bl .Lp_28
.inst 0xf94013a0
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider,.-Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
.Lme_4f:
.text 0
	.balign 16
.Lm_57:
	.local Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.type Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider,@function
Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xd2800021
.inst 0xf9400ba0
.inst 0xf9000c01
.inst 0xf90013a0
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider,.-Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
.Lme_57:
.text 0
	.balign 16
.Lm_58:
	.local Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers
	.type Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers,@function
Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9400ba0
.inst 0xf9400800
.inst 0xf90013a0
.inst 0xd50339bf
.inst 0xd50339bf
.inst 0xf94013a0
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers,.-Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers
.Lme_58:
.text 0
	.balign 16
.Lm_59:
	.local Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.type Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider,@function
Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xd5033bbf
.inst 0xf9400ba0
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider,.-Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
.Lme_59:
.text 0
	.balign 16
.Lm_65:
	.local Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider
	.type Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider,@function
Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider:
.inst 0xa9b87bfd
.inst 0x910003fd
.inst 0xa9015bb5
.inst 0xa90263b7
.inst 0xa9036bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf90023bf
.inst 0x390123bf
.inst 0xf9400b20
.inst 0xf90023a0
.inst 0xd2a00000
.inst 0x390123a0
.inst 0xf94023b8
.inst 0x910123b7
.inst 0xaa1803e0
.inst 0x910123a1
bl .Lp_29
.inst 0x93407c00
.inst 0x35000080
.inst 0xaa1803e0
.inst 0xaa1703e1
bl .Lp_30
.inst 0x39408320
.inst 0x34000160

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 0]
.inst 0xd2800c21
bl .Lp_31
.inst 0xaa0003e1
.inst 0xd28022e0
.inst 0xf2a04000
bl .Lp_12
bl .Lp_5
.inst 0xf9400f38
.inst 0xf9400f21
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf9404c30
.inst 0xd63f0200
.inst 0xf9003fa0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 480]
.inst 0xd2800401
bl .Lp_3
.inst 0xf9403fa1
.inst 0xf9003ba0
bl .Lp_32
.inst 0xf9403ba0
.inst 0xaa0003f9
.inst 0xaa0003f7
.inst 0xaa1a03f6
.inst 0x394002fe
.inst 0xb9801ee0
.inst 0x11000400
.inst 0xb9001ee0
.inst 0xf9400afa
.inst 0xb9801af5
.inst 0xaa1503e0
.inst 0xb9801b41
.inst 0x6b01001f
.inst 0x54000142
.inst 0x110006a0
.inst 0xb9001ae0
.inst 0x93407ea1
.inst 0xaa1a03e0
.inst 0xaa1603e2
.inst 0xf9400343
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x14000005
.inst 0xaa1703e0
.inst 0xaa1603e1
bl .Lp_33
.inst 0x14000001
.inst 0xaa1803e0
.inst 0xaa1903e1
.inst 0xf9400302
.inst 0xf9404850
.inst 0xd63f0200
.inst 0xf9002bbf
.inst 0x94000005
.inst 0xf9402ba0
.inst 0xb4000040
bl .Lp_34
.inst 0x1400000e
.inst 0xf9002fbe

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x394123a0
.inst 0x34000060
.inst 0xf94023a0
bl .Lp_35
.inst 0xf9402fbe
.inst 0xd61f03c0
.inst 0xa9415bb5
.inst 0xa94263b7
.inst 0xa9436bb9
.inst 0x910003bf
.inst 0xa8c87bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider,.-Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider
.Lme_65:
.text 0
	.balign 16
.Lm_67:
	.local Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor
	.type Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor,@function
Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 488]
.inst 0xd2800201
bl .Lp_3
.inst 0xf9001ba0
.inst 0xf9400ba0
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf9401ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 480]
.inst 0xd2800401
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x1, [x16, 496]
.inst 0xf9400021
.inst 0xf90017a0
.inst 0x91004002
.inst 0xd5033bbf
.inst 0xf94017a0
.inst 0xf9000041
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
bl .Lp_36
.inst 0xf90013a0
.inst 0xf9400ba0
.inst 0x91006001
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor,.-Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor
.Lme_67:
.text 0
	.balign 16
.Lm_70:
	.local Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource
	.type Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource,@function
Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource:
.inst 0xa9ba7bfd
.inst 0x910003fd
.inst 0xf9000bb9
.inst 0xaa0003f9
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9001bbf
.inst 0xd2800000
.inst 0xf90013a0
.inst 0xf90017a0
.inst 0xaa1903e0
bl .Lp_37

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x1, [x16, 280]
.inst 0xf9400fa0
.inst 0xf9001fa1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf9401fa1
bl .Lp_12
bl .Lp_5
.inst 0x91008321
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9401320
.inst 0xaa0003e1
.inst 0x3940003e
.inst 0xf9400800
.inst 0xb4000a40
.inst 0xf9401320
.inst 0xaa0003e1
.inst 0x3940003e
.inst 0xf9400801
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x15, [x16, 504]
.inst 0x92800ff0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf9001ba0
.inst 0x1400001f

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401ba1
.inst 0x910083a0
.inst 0xf90023a0
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x15, [x16, 512]
.inst 0x92800ef0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf94023be
.inst 0xa90007c0
.inst 0xf9400f23
.inst 0xf94013a1
.inst 0xf94017a2
.inst 0xaa0303e0
.inst 0xf9400063

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x15, [x16, 520]
.inst 0x92800cf0
.inst 0xf8706870
.inst 0xd63f0200
.inst 0xf9401ba1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x15, [x16, 528]
.inst 0x92800ef0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0x53001c00
.inst 0x35fffb00
.inst 0xf90027bf
.inst 0x94000005
.inst 0xf94027a0
.inst 0xb4000040
bl .Lp_34
.inst 0x14000015
.inst 0xf9002bbe

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401ba0
.inst 0xb4000140
.inst 0xf9401ba1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x15, [x16, 536]
.inst 0x928004f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0xf9402bbe
.inst 0xd61f03c0
.inst 0xf9400bb9
.inst 0x910003bf
.inst 0xa8c67bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource,.-Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource
.Lme_70:
.text 0
	.balign 16
.Lm_75:
	.local Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder
	.type Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder,@function
Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x0, [x16, 544]
.inst 0xd2800501
bl .Lp_3
.inst 0xf90013a0
.inst 0xf9400ba1
bl .Lp_38
.inst 0xf94013a0
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder,.-Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder
.Lme_75:
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
bl .Lm_4
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_8
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_c
bl method_addresses
bl .Lm_e
bl .Lm_f
bl method_addresses
bl method_addresses
bl .Lm_12
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_17
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
bl .Lm_22
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
bl .Lm_34
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_38
bl .Lm_39
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_3d
bl .Lm_3e
bl .Lm_3f
bl .Lm_40
bl .Lm_41
bl .Lm_42
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
bl .Lm_4e
bl .Lm_4f
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_57
bl .Lm_58
bl .Lm_59
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
bl .Lm_65
bl method_addresses
bl .Lm_67
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_70
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_75
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

	.byte 120,0,0,0,10,0,0,0,12,0,0,0,2,0,0,0,0,0,18,0,40,0,54,0,68,0,78,0,96,0,110,0
	.byte 120,0,131,0,141,0,161,0,0,0,0,0,1,255,255,255,255,255,0,0,9,255,255,255,255,247,0,0,21,255,255,255
	.byte 255,235,27,6,255,255,255,255,223,0,45,255,255,255,255,211,0,0,0,52,255,255,255,255,204,0,0,0,0,0,0,0
	.byte 0,0,56,255,255,255,255,200,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,62,255,255,255,255,194,0,0
	.byte 71,4,255,255,255,255,181,0,0,79,4,12,4,6,9,255,255,255,255,142,0,0,0,0,0,0,0,0,0,0,120,8
	.byte 0,0,0,0,0,0,0,128,134,4,4,0,0,0,0,0,0,0,0,0,0,0,128,146,255,255,255,255,110,128,152,255
	.byte 255,255,255,104,0,0,0,0,0,0,0,128,160,255,255,255,255,96,0,0,0,128,171,255,255,255,255,85,0
.section ".rodata"
.subsection 0
	.balign 8
method_flags_table:

	.byte 0,0,0,0,4,0,0,0,4,0,0,0,4,0,4,4,0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,0,0,4,0
	.byte 4,5,1,0,0,0,0,0,0,0,0,0,0,0,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,4,0,4,0,0,0,0,0,0,0,0,4,0,0,0,0,4,0,0
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

	.byte 37,0,11,0,0,0,0,0,0,0,0,0,0,0,18,0,0,0,0,0,0,0,19,0,0,0,17,0,0,0,21,0
	.byte 0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,15,0,40,0,3,0,0,0,5,0
	.byte 38,0,0,0,0,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,4,0,0,0,2,0,0,0,9,0
	.byte 0,0,0,0,0,0,8,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,7,0,39,0,1,0
	.byte 37,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,0,0,12,0,0,0,14,0
	.byte 0,0,20,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
got_info_offsets:

	.byte 69,0,0,0,10,0,0,0,7,0,0,0,2,0,0,0,0,0,11,0,22,0,33,0,44,0,55,0,66,0,128,177
	.byte 2,1,1,1,1,1,1,1,1,128,189,2,2,2,2,3,2,2,2,2,128,210,3,2,3,3,3,5,3,4,3,128
	.byte 245,8,3,3,3,3,3,5,5,5,129,33,4,7,2,6,8,6,5,7,6,129,88,4,6,9,2,12,5,3,3,5
	.byte 129,140,6,4,8,11,11,11,5,5
.section ".rodata"
.subsection 0
	.balign 8
ex_info_offsets:

	.byte 120,0,0,0,10,0,0,0,12,0,0,0,2,0,0,0,0,0,20,0,45,0,60,0,75,0,85,0,105,0,121,0
	.byte 132,0,143,0,153,0,173,0,0,0,0,0,130,181,255,255,255,253,75,0,0,131,43,255,255,255,252,213,0,0,132,25
	.byte 255,255,255,251,231,132,61,70,255,255,255,251,125,0,133,53,255,255,255,250,203,0,0,0,133,130,255,255,255,250,126,0
	.byte 0,0,0,0,0,0,0,0,133,169,255,255,255,250,87,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,133
	.byte 247,255,255,255,250,9,0,0,134,75,12,255,255,255,249,169,0,0,134,109,24,128,129,28,59,40,255,255,255,248,123,0
	.byte 0,0,0,0,0,0,0,0,0,135,149,61,0,0,0,0,0,0,0,135,244,48,28,0,0,0,0,0,0,0,0,0
	.byte 0,0,136,104,255,255,255,247,152,137,46,255,255,255,246,210,0,0,0,0,0,0,0,137,141,255,255,255,246,115,0,0
	.byte 0,138,113,255,255,255,245,143,0
.section ".rodata"
.subsection 1
	.balign 8
unwind_info:

	.byte 17,12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,154,18,16,12,31,0,68,14,96,157,12,158,11,68,13,29
	.byte 68,154,10,13,12,31,0,68,14,48,157,6,158,5,68,13,29,28,12,31,0,68,14,96,157,12,158,11,68,13,29,68
	.byte 149,10,150,9,68,151,8,152,7,68,153,6,154,5,23,12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150
	.byte 5,68,151,4,152,3,13,12,31,0,68,14,64,157,8,158,7,68,13,29,13,12,31,0,68,14,32,157,4,158,3,68
	.byte 13,29,21,12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,68,153,11,154,10,16,12,31,0,68,14,48,157
	.byte 6,158,5,68,13,29,68,153,4,29,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,149,14,150,13,68,151,12
	.byte 152,11,68,153,10,154,9,16,12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
.section ".rodata"
.subsection 0
	.balign 8
class_info_offsets:

	.byte 21,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,11,0,22,0,138,147,7,25,23,25,28,37,40,25
	.byte 26,139,151,26,26,23,29,29,29,24,26,25,140,159

.text 0
	.balign 16
plt:
mono_aot_Microsoft_Extensions_Configuration_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,@function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 560]
br x16
.inst 460
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.local plt_System_Threading_CancellationToken_UnsafeRegister_System_Action_1_object_object
	.type plt_System_Threading_CancellationToken_UnsafeRegister_System_Action_1_object_object,@function
plt_System_Threading_CancellationToken_UnsafeRegister_System_Action_1_object_object:
.Lp_2:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 568]
br x16
.inst 463
	.size plt_System_Threading_CancellationToken_UnsafeRegister_System_Action_1_object_object,.-plt_System_Threading_CancellationToken_UnsafeRegister_System_Action_1_object_object
	.local plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.type plt_wrapper_alloc_object_AllocSmall_intptr_intptr,@function
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
.Lp_3:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 576]
br x16
.inst 468
	.size plt_wrapper_alloc_object_AllocSmall_intptr_intptr,.-plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.local plt__jit_icall_mono_thread_get_undeniable_exception
	.type plt__jit_icall_mono_thread_get_undeniable_exception,@function
plt__jit_icall_mono_thread_get_undeniable_exception:
.Lp_4:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 584]
br x16
.inst 476
	.size plt__jit_icall_mono_thread_get_undeniable_exception,.-plt__jit_icall_mono_thread_get_undeniable_exception
	.local plt__jit_icall_mono_arch_throw_exception
	.type plt__jit_icall_mono_arch_throw_exception,@function
plt__jit_icall_mono_arch_throw_exception:
.Lp_5:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 592]
br x16
.inst 479
	.size plt__jit_icall_mono_arch_throw_exception,.-plt__jit_icall_mono_arch_throw_exception
	.local plt__jit_icall_mono_generic_class_init
	.type plt__jit_icall_mono_generic_class_init,@function
plt__jit_icall_mono_generic_class_init:
.Lp_6:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 600]
br x16
.inst 481
	.size plt__jit_icall_mono_generic_class_init,.-plt__jit_icall_mono_generic_class_init
	.local plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor
	.type plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor,@function
plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor:
.Lp_7:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 608]
br x16
.inst 484
	.size plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor,.-plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor
	.local plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor
	.type plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor,@function
plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor:
.Lp_8:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 616]
br x16
.inst 486
	.size plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor,.-plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor
	.local plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
	.type plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager,@function
plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager:
.Lp_9:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 624]
br x16
.inst 488
	.size plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager,.-plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
	.local plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
	.type plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager,@function
plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager:
.Lp_10:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 632]
br x16
.inst 490
	.size plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager,.-plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager
	.local plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource
	.type plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource,@function
plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource:
.Lp_11:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 640]
br x16
.inst 492
	.size plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource,.-plt_Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource
	.local plt__jit_icall_mono_create_corlib_exception_1
	.type plt__jit_icall_mono_create_corlib_exception_1,@function
plt__jit_icall_mono_create_corlib_exception_1:
.Lp_12:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 648]
br x16
.inst 494
	.size plt__jit_icall_mono_create_corlib_exception_1,.-plt__jit_icall_mono_create_corlib_exception_1
	.local plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload
	.type plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload,@function
plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload:
.Lp_13:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 656]
br x16
.inst 497
	.size plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload,.-plt_Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload
	.local plt__jit_icall_mono_arch_throw_corlib_exception
	.type plt__jit_icall_mono_arch_throw_corlib_exception,@function
plt__jit_icall_mono_arch_throw_corlib_exception:
.Lp_14:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 664]
br x16
.inst 499
	.size plt__jit_icall_mono_arch_throw_corlib_exception,.-plt__jit_icall_mono_arch_throw_corlib_exception
	.local plt__jit_icall_mono_ldvirtfn
	.type plt__jit_icall_mono_ldvirtfn,@function
plt__jit_icall_mono_ldvirtfn:
.Lp_15:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 672]
br x16
.inst 501
	.size plt__jit_icall_mono_ldvirtfn,.-plt__jit_icall_mono_ldvirtfn
	.local plt_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken__ctor_object_intptr
	.type plt_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken__ctor_object_intptr,@function
plt_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken__ctor_object_intptr:
.Lp_16:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 680]
br x16
.inst 504
	.size plt_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken__ctor_object_intptr,.-plt_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken__ctor_object_intptr
	.local plt_Microsoft_Extensions_Primitives_ChangeToken_OnChange_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken_System_Action
	.type plt_Microsoft_Extensions_Primitives_ChangeToken_OnChange_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken_System_Action,@function
plt_Microsoft_Extensions_Primitives_ChangeToken_OnChange_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken_System_Action:
.Lp_17:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 688]
br x16
.inst 515
	.size plt_Microsoft_Extensions_Primitives_ChangeToken_OnChange_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken_System_Action,.-plt_Microsoft_Extensions_Primitives_ChangeToken_OnChange_System_Func_1_Microsoft_Extensions_Primitives_IChangeToken_System_Action
	.local plt_System_Collections_Generic_List_1_System_IDisposable_AddWithResize_System_IDisposable
	.type plt_System_Collections_Generic_List_1_System_IDisposable_AddWithResize_System_IDisposable,@function
plt_System_Collections_Generic_List_1_System_IDisposable_AddWithResize_System_IDisposable:
.Lp_18:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 696]
br x16
.inst 525
	.size plt_System_Collections_Generic_List_1_System_IDisposable_AddWithResize_System_IDisposable,.-plt_System_Collections_Generic_List_1_System_IDisposable_AddWithResize_System_IDisposable
	.local plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider
	.type plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider,@function
plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider:
.Lp_19:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 704]
br x16
.inst 544
	.size plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider,.-plt_Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider
	.local plt_Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged
	.type plt_Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged,@function
plt_Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged:
.Lp_20:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 712]
br x16
.inst 546
	.size plt_Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged,.-plt_Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged
	.local plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationSource
	.type plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationSource,@function
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationSource:
.Lp_21:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 720]
br x16
.inst 552
	.size plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationSource,.-plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationSource_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationSource
	.local plt_Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource
	.type plt_Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource,@function
plt_Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource:
.Lp_22:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 728]
br x16
.inst 571
	.size plt_Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource,.-plt_Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource
	.local plt_System_Collections_Generic_Dictionary_2_string_object__ctor
	.type plt_System_Collections_Generic_Dictionary_2_string_object__ctor,@function
plt_System_Collections_Generic_Dictionary_2_string_object__ctor:
.Lp_23:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 736]
br x16
.inst 573
	.size plt_System_Collections_Generic_Dictionary_2_string_object__ctor,.-plt_System_Collections_Generic_Dictionary_2_string_object__ctor
	.local plt_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string
	.type plt_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string,@function
plt_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string:
.Lp_24:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 744]
br x16
.inst 584
	.size plt_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string,.-plt_System_Collections_Generic_Dictionary_2_string_string__ctor_System_Collections_Generic_IEqualityComparer_1_string
	.local plt_Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_Microsoft_Extensions_Configuration_ConfigurationReloadToken_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_Microsoft_Extensions_Configuration_ConfigurationReloadToken_Microsoft_Extensions_Configuration_ConfigurationReloadToken
	.type plt_Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_Microsoft_Extensions_Configuration_ConfigurationReloadToken_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_Microsoft_Extensions_Configuration_ConfigurationReloadToken_Microsoft_Extensions_Configuration_ConfigurationReloadToken,@function
plt_Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_Microsoft_Extensions_Configuration_ConfigurationReloadToken_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_Microsoft_Extensions_Configuration_ConfigurationReloadToken_Microsoft_Extensions_Configuration_ConfigurationReloadToken:
.Lp_25:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 752]
br x16
.inst 595
	.size plt_Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_Microsoft_Extensions_Configuration_ConfigurationReloadToken_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_Microsoft_Extensions_Configuration_ConfigurationReloadToken_Microsoft_Extensions_Configuration_ConfigurationReloadToken,.-plt_Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_Microsoft_Extensions_Configuration_ConfigurationReloadToken_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_Microsoft_Extensions_Configuration_ConfigurationReloadToken_Microsoft_Extensions_Configuration_ConfigurationReloadToken
	.local plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource
	.type plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource,@function
plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource:
.Lp_26:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 760]
br x16
.inst 607
	.size plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource,.-plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource
	.local plt_System_Threading_CancellationTokenSource_Cancel
	.type plt_System_Threading_CancellationTokenSource_Cancel,@function
plt_System_Threading_CancellationTokenSource_Cancel:
.Lp_27:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 768]
br x16
.inst 612
	.size plt_System_Threading_CancellationTokenSource_Cancel,.-plt_System_Threading_CancellationTokenSource_Cancel
	.local plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.type plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider,@function
plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
.Lp_28:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 776]
br x16
.inst 617
	.size plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider,.-plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.local plt__jit_icall_mono_monitor_enter_v4_fast
	.type plt__jit_icall_mono_monitor_enter_v4_fast,@function
plt__jit_icall_mono_monitor_enter_v4_fast:
.Lp_29:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 784]
br x16
.inst 619
	.size plt__jit_icall_mono_monitor_enter_v4_fast,.-plt__jit_icall_mono_monitor_enter_v4_fast
	.local plt__jit_icall_mono_monitor_enter_v4_internal
	.type plt__jit_icall_mono_monitor_enter_v4_internal,@function
plt__jit_icall_mono_monitor_enter_v4_internal:
.Lp_30:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 792]
br x16
.inst 622
	.size plt__jit_icall_mono_monitor_enter_v4_internal,.-plt__jit_icall_mono_monitor_enter_v4_internal
	.local plt__jit_icall_mono_helper_ldstr
	.type plt__jit_icall_mono_helper_ldstr,@function
plt__jit_icall_mono_helper_ldstr:
.Lp_31:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 800]
br x16
.inst 625
	.size plt__jit_icall_mono_helper_ldstr,.-plt__jit_icall_mono_helper_ldstr
	.local plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider__ctor_System_Collections_Generic_IEnumerable_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.type plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider__ctor_System_Collections_Generic_IEnumerable_1_Microsoft_Extensions_Configuration_IConfigurationProvider,@function
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider__ctor_System_Collections_Generic_IEnumerable_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
.Lp_32:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 808]
br x16
.inst 628
	.size plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider__ctor_System_Collections_Generic_IEnumerable_1_Microsoft_Extensions_Configuration_IConfigurationProvider,.-plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider__ctor_System_Collections_Generic_IEnumerable_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.local plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationProvider
	.type plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationProvider,@function
plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationProvider:
.Lp_33:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 816]
br x16
.inst 643
	.size plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationProvider,.-plt_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider_AddWithResize_Microsoft_Extensions_Configuration_IConfigurationProvider
	.local plt__jit_icall_ves_icall_thread_finish_async_abort
	.type plt__jit_icall_ves_icall_thread_finish_async_abort,@function
plt__jit_icall_ves_icall_thread_finish_async_abort:
.Lp_34:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 824]
br x16
.inst 662
	.size plt__jit_icall_ves_icall_thread_finish_async_abort,.-plt__jit_icall_ves_icall_thread_finish_async_abort
	.local plt_System_Threading_Monitor_Exit_object
	.type plt_System_Threading_Monitor_Exit_object,@function
plt_System_Threading_Monitor_Exit_object:
.Lp_35:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 832]
br x16
.inst 665
	.size plt_System_Threading_Monitor_Exit_object,.-plt_System_Threading_Monitor_Exit_object
	.local plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.type plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider,@function
plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider:
.Lp_36:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 840]
br x16
.inst 670
	.size plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider,.-plt_Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider
	.local plt_Microsoft_Extensions_Configuration_ConfigurationProvider__ctor
	.type plt_Microsoft_Extensions_Configuration_ConfigurationProvider__ctor,@function
plt_Microsoft_Extensions_Configuration_ConfigurationProvider__ctor:
.Lp_37:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 848]
br x16
.inst 672
	.size plt_Microsoft_Extensions_Configuration_ConfigurationProvider__ctor,.-plt_Microsoft_Extensions_Configuration_ConfigurationProvider__ctor
	.local plt_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource
	.type plt_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource,@function
plt_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource:
.Lp_38:
adrp x16, mono_aot_Microsoft_Extensions_Configuration_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_Configuration_got
ldr x16, [x16, 856]
br x16
.inst 674
	.size plt_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource,.-plt_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource
	.size mono_aot_Microsoft_Extensions_Configuration_plt,.-mono_aot_Microsoft_Extensions_Configuration_plt
plt_end:
.section ".rodata"
.subsection 0
	.balign 8
image_table:

	.byte 4,0,0,0,77,105,99,114,111,115,111,102,116,46,69,120,116,101,110,115,105,111,110,115,46,67,111,110,102,105,103,117
	.byte 114,97,116,105,111,110,0,57,57,57,68,54,48,67,52,45,50,48,54,50,45,52,69,68,57,45,66,66,53,52,45,52
	.byte 69,68,51,70,69,55,54,68,56,70,49,0,0,97,100,98,57,55,57,51,56,50,57,100,100,97,101,54,48,0,0,0
	.byte 1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,80,114,105,118,97
	.byte 116,101,46,67,111,114,101,76,105,98,0,52,65,67,56,66,48,52,49,45,51,50,66,57,45,52,69,56,56,45,57,54
	.byte 66,56,45,54,49,67,52,53,69,70,69,68,56,67,56,0,0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56
	.byte 101,0,0,0,0,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,77,105,99,114
	.byte 111,115,111,102,116,46,69,120,116,101,110,115,105,111,110,115,46,67,111,110,102,105,103,117,114,97,116,105,111,110,46,65
	.byte 98,115,116,114,97,99,116,105,111,110,115,0,53,69,52,52,53,66,52,69,45,55,49,57,67,45,52,51,50,52,45,56
	.byte 53,54,53,45,52,57,65,55,65,52,48,57,67,57,52,51,0,0,97,100,98,57,55,57,51,56,50,57,100,100,97,101
	.byte 54,48,0,0,0,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,77,105,99,114
	.byte 111,115,111,102,116,46,69,120,116,101,110,115,105,111,110,115,46,80,114,105,109,105,116,105,118,101,115,0,49,52,66,69
	.byte 67,48,51,48,45,70,70,52,51,45,52,69,53,57,45,57,49,57,68,45,51,70,56,69,66,50,54,55,49,52,50,70
	.byte 0,0,97,100,98,57,55,57,51,56,50,57,100,100,97,101,54,48,0,0,0,0,0,0,1,0,0,0,10,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.balign 8
	.local mono_aot_Microsoft_Extensions_Configuration_got
	.type mono_aot_Microsoft_Extensions_Configuration_got,@object
mono_aot_Microsoft_Extensions_Configuration_got:
	.skip 864
got_end:
.section ".rodata"
.subsection 0
	.balign 8
blob:

	.byte 0,4,0,0,0,3,25,26,27,8,0,0,0,7,28,29,30,31,32,33,34,12,0,0,0,1,35,14,0,0,0,1
	.byte 31,15,0,0,0,7,36,37,38,39,40,41,42,18,0,0,0,2,43,44,23,0,0,0,34,0,0,0,1,45,52,0
	.byte 0,0,4,31,46,47,48,56,0,0,0,57,0,0,0,61,0,0,0,62,0,0,0,7,49,50,51,52,53,49,54,63
	.byte 0,0,0,64,0,0,0,1,55,65,0,0,0,1,10,2,56,50,66,0,0,0,1,10,78,0,0,0,3,57,34,58
	.byte 79,0,0,0,1,59,87,0,0,0,88,0,0,0,89,0,0,0,101,0,0,0,1,60,103,0,0,0,3,61,60,62
	.byte 112,0,0,0,6,35,63,64,65,66,67,117,0,0,0,1,68,11,0,36,38,45,50,52,32,47,48,55,8,55,9,55
	.byte 10,55,11,55,12,55,128,243,6,80,6,89,6,91,6,92,6,96,6,128,249,6,83,6,128,165,6,128,142,6,128,141
	.byte 13,2,130,248,1,13,1,2,14,1,2,1,13,1,17,13,3,219,0,0,6,14,3,219,0,0,6,152,200,13,1,9
	.byte 13,1,6,13,1,7,13,1,21,15,0,1,5,194,0,0,11,5,194,0,0,10,5,194,0,0,9,13,3,219,0,0
	.byte 7,13,2,84,1,29,2,84,1,1,15,0,5,15,13,3,219,0,0,2,14,3,219,0,0,2,152,200,13,3,219,0
	.byte 0,5,13,2,129,63,1,14,2,129,63,1,132,72,13,3,219,0,0,17,14,1,10,18,14,1,10,17,13,3,219,0
	.byte 0,19,29,3,219,0,0,19,1,68,0,5,68,33,255,254,0,0,0,0,255,43,0,0,3,13,2,130,249,1,13,1
	.byte 10,15,0,55,5,194,0,0,6,13,1,15,13,3,219,0,0,3,13,2,51,1,14,3,219,0,0,3,152,200,5,255
	.byte 254,0,0,0,0,202,0,0,95,5,255,254,0,0,0,0,202,0,0,96,5,255,254,0,0,0,0,202,0,0,99,5
	.byte 193,0,66,4,5,193,0,15,107,13,1,20,6,128,249,3,193,0,41,79,3,255,252,0,0,0,15,2,6,128,241,6
	.byte 104,6,128,155,3,104,3,65,3,19,3,35,3,24,6,128,128,3,64,6,103,6,128,175,3,255,254,0,0,0,0,202
	.byte 0,0,25,3,195,0,0,1,1,2,128,218,1,3,255,253,0,0,0,3,219,0,0,6,1,192,0,68,123,1,130,8
	.byte 3,102,3,15,1,2,10,2,3,255,253,0,0,0,3,219,0,0,2,1,192,0,68,123,1,130,36,3,16,3,255,254
	.byte 0,0,0,0,202,0,0,18,3,255,254,0,0,0,0,202,0,0,66,3,255,254,0,0,0,0,255,43,0,0,3,3
	.byte 193,0,23,85,3,193,0,41,113,3,88,6,128,200,6,128,201,6,128,164,3,255,254,0,0,0,0,202,0,0,92,1
	.byte 2,7,2,3,255,253,0,0,0,3,219,0,0,3,1,192,0,68,123,1,130,127,6,129,29,3,193,0,40,139,3,80
	.byte 3,53,3,113,5,0,30,0,1,1,5,5,1,28,7,130,164,1,7,130,171,15,0,1,0,4,2,129,23,1,60,128
	.byte 180,128,180,2,1,15,16,0,29,104,16,0,12,255,253,0,0,0,1,3,0,5,2,130,177,0,0,17,0,120,18,64
	.byte 12,168,1,6,64,16,56,4,56,10,96,4,8,61,129,64,60,129,80,0,27,0,60,4,8,0,12,0,12,5,0,0
	.byte 12,0,4,5,64,1,4,0,0,3,32,3,8,0,4,0,4,0,12,5,0,0,0,0,12,0,0,0,8,0,4,2
	.byte 4,5,48,0,0,2,4,0,0,1,4,10,18,0,27,0,80,12,56,10,96,12,184,1,10,96,12,56,22,96,14,64
	.byte 10,96,14,64,10,96,22,72,10,24,128,205,130,28,40,130,44,0,99,0,40,1,0,0,12,0,4,0,4,0,4,0
	.byte 0,0,4,5,0,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,1,0,0,12,0,4,0,4,0
	.byte 72,5,0,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,1,0,0,12,0,4,0,4,0,4,0
	.byte 0,0,4,5,0,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,11,0,2,0,0,12,0,4,0,4,0
	.byte 4,0,0,0,4,0,4,5,0,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,2,0,0,12,0
	.byte 4,0,4,0,4,0,0,0,4,0,4,5,0,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,1
	.byte 0,5,8,0,12,0,4,0,4,0,8,0,0,5,0,0,4,0,0,0,4,5,4,1,0,10,35,0,6,0,80,22
	.byte 88,26,48,25,112,40,124,0,10,0,40,1,0,0,16,10,28,1,4,6,4,0,8,0,4,6,4,1,4,10,35,0
	.byte 8,0,72,22,112,10,120,10,24,57,128,164,36,128,188,0,25,0,36,1,4,0,4,0,8,5,8,0,12,0,4,0
	.byte 4,0,4,0,0,0,8,5,0,0,8,0,20,0,4,0,4,0,12,0,4,0,8,0,0,5,0,0,4,0,4,5
	.byte 4,1,0,10,49,0,19,0,104,16,80,12,72,38,136,1,34,184,2,10,192,1,24,40,12,16,128,153,129,220,52,130
	.byte 12,0,71,0,52,2,0,0,4,0,4,0,4,0,12,0,12,6,4,0,0,1,4,0,4,0,4,0,12,5,12,1
	.byte 0,7,8,0,12,0,4,0,0,6,8,0,12,0,4,0,8,0,4,0,0,0,4,0,0,0,4,6,0,0,4,0
	.byte 8,0,12,0,4,0,4,0,4,0,4,0,8,0,8,0,4,0,4,0,4,0,4,0,12,0,4,0,8,0,0,0
	.byte 12,0,4,0,12,0,4,0,4,0,4,0,4,11,4,0,0,0,0,0,4,0,8,255,255,255,255,226,0,30,4,10
	.byte 92,1,0,6,4,0,4,0,4,0,4,5,4,1,0,0,4,5,4,1,0,10,35,0,9,0,80,12,184,1,22,112
	.byte 14,96,63,128,236,40,128,248,0,28,0,40,1,0,0,12,0,4,0,4,0,4,0,68,5,8,0,4,0,8,0,4
	.byte 0,4,0,4,0,12,0,4,0,8,11,0,2,0,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0
	.byte 1,0,10,78,0,7,0,96,24,208,1,24,48,27,128,176,48,128,196,0,10,0,48,1,4,0,4,11,96,1,4,6
	.byte 4,0,8,0,4,5,4,1,0,10,35,0,8,0,80,12,64,22,112,14,96,65,128,176,40,128,188,0,29,0,40,1
	.byte 0,0,12,0,4,0,4,0,4,0,0,0,8,5,8,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,11
	.byte 0,2,0,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,1,0,10,102,0,12,0,72,12,56,22
	.byte 104,12,88,10,72,10,112,67,128,252,36,129,8,0,30,0,36,1,0,0,12,0,4,0,4,0,4,0,0,0,4,5
	.byte 4,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,11,0,1,44,5,0,0,12,0,4,0,8,0,4,0
	.byte 0,0,0,0,8,0,0,10,56,1,0,10,116,0,0,7,12,0,24,0,1,1,12,10,116,0,4,0,24,12,16,13
	.byte 20,12,32,0,4,0,12,1,4,5,4,1,0,10,35,0,4,0,24,22,96,15,60,12,72,0,5,0,12,1,4,5
	.byte 40,5,4,1,0,10,128,130,0,8,0,104,26,184,1,74,192,4,115,129,176,52,129,228,0,50,0,52,0,0,1,4
	.byte 2,8,5,80,5,0,0,12,5,4,255,255,255,255,238,4,1,4,17,12,1,4,0,0,3,4,0,12,5,8,0,4
	.byte 0,8,0,12,0,4,0,12,0,4,0,8,0,8,0,4,0,4,0,4,0,4,0,12,0,4,0,8,0,0,0,12
	.byte 0,4,0,12,0,4,0,4,0,4,0,4,12,8,0,12,0,8,255,255,255,255,255,12,7,4,0,12,0,4,0,8
	.byte 0,8,5,4,1,0,10,116,0,4,0,72,22,40,19,56,36,68,0,7,0,36,1,4,5,4,0,4,0,4,5,4
	.byte 1,0,10,35,0,8,0,72,12,48,10,112,26,16,46,124,36,128,136,0,20,0,36,1,0,0,12,0,4,0,4,0
	.byte 4,0,0,5,8,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,2,0,11,8,1,0,10,116,0
	.byte 6,0,64,10,48,10,56,29,84,32,96,0,12,0,32,0,0,0,12,0,4,0,4,0,4,0,0,5,0,0,16,0
	.byte 8,5,4,1,0,10,116,0,2,12,24,9,12,12,24,0,2,6,12,1,0,10,128,152,0,10,0,88,22,80,12,48
	.byte 14,104,14,64,45,128,196,44,128,212,0,19,0,44,1,0,0,12,10,28,1,0,0,12,0,4,0,4,0,4,0,0
	.byte 7,52,5,0,0,4,0,0,0,4,0,12,7,12,0,0,1,4,10,35,0,4,0,72,12,72,25,72,36,84,0,10
	.byte 0,36,1,0,0,12,0,4,0,4,0,4,0,4,5,8,0,0,1,0,10,35,0,6,0,32,28,32,18,112,37,88
	.byte 16,100,0,16,0,16,1,0,2,8,11,8,4,0,0,8,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8
	.byte 5,0,1,0,10,35,0,4,0,24,16,48,19,36,12,48,0,7,0,12,3,4,0,8,0,4,5,8,0,0,1,0
	.byte 10,116,0,4,0,32,18,112,31,72,16,84,0,13,0,16,4,0,0,8,0,4,0,8,0,4,0,4,0,4,0,12
	.byte 0,4,0,8,5,0,1,0,46,128,169,2,1,2,80,129,172,76,129,116,129,120,0,8,129,104,0,4,129,112,0,29
	.byte 0,120,14,16,4,16,16,80,16,16,22,80,34,56,10,72,14,208,1,10,40,4,104,6,16,12,16,0,0,128,143,129
	.byte 172,60,129,196,0,68,0,60,1,0,6,8,0,0,2,8,1,4,2,4,0,4,0,4,0,8,0,0,0,4,0,4
	.byte 0,4,5,4,1,0,5,4,0,0,2,4,0,0,0,12,0,4,0,4,5,4,0,8,0,0,5,4,0,4,1,0
	.byte 1,0,6,4,5,4,0,4,0,4,0,12,5,0,0,12,0,4,0,8,0,4,0,0,0,0,0,8,5,0,0,0
	.byte 0,4,1,4,1,96,5,0,0,4,0,4,0,4,5,8,0,0,0,4,0,8,0,0,0,4,0,4,2,32,1,4
	.byte 0,0,2,4,1,4,0,4,5,0,0,0,2,8,10,102,0,13,0,72,12,48,10,104,12,176,1,10,16,22,104,77
	.byte 129,4,36,129,16,0,35,0,36,1,0,0,12,0,4,0,8,0,0,5,4,0,4,0,8,0,4,0,4,0,4,0
	.byte 12,0,4,0,8,5,0,1,0,0,12,0,4,0,4,0,68,5,0,0,0,0,8,5,4,0,4,0,8,0,4,0
	.byte 4,0,4,0,12,0,4,0,8,11,0,1,0,46,128,199,2,1,2,72,129,248,128,232,129,164,129,168,0,8,129,152
	.byte 0,4,129,160,0,44,0,120,12,16,22,88,14,96,22,32,4,8,22,32,10,72,2,0,4,56,14,104,12,8,14,8
	.byte 14,8,10,64,0,0,12,80,4,8,4,104,6,16,12,72,0,0,128,157,129,248,60,130,8,0,75,0,60,1,0,0
	.byte 4,5,4,1,0,0,16,10,28,2,0,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,1,0,5
	.byte 16,5,0,0,0,2,4,1,0,5,16,5,0,0,4,0,4,0,12,0,16,6,0,0,0,2,28,1,12,0,4,0
	.byte 4,0,12,6,20,1,4,7,4,7,4,5,0,0,4,0,0,0,0,0,4,0,12,0,12,5,0,1,4,0,4,0
	.byte 4,0,12,0,12,0,4,5,0,0,0,2,4,0,0,0,4,0,8,0,0,0,4,0,4,2,32,1,4,0,0,2
	.byte 4,1,4,0,4,0,4,0,12,0,12,5,0,0,0,2,8,10,35,0,4,0,80,12,72,25,76,40,88,0,10,0
	.byte 40,1,0,0,12,0,4,0,4,0,4,0,4,5,8,0,0,1,0,0,128,144,16,0,0,1,5,128,196,4,16,8
	.byte 0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,3,4,128,144,16,0,0,1,193,0,2,204,193,0
	.byte 2,201,193,0,2,200,193,0,2,199,6,128,160,32,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2
	.byte 199,6,7,9,128,168,56,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,10,11,13,14,12,18
	.byte 128,160,32,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,20,21,29,30,32,22,23,24,25,26
	.byte 27,31,34,33,21,128,160,32,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,36,37,38,39,46
	.byte 42,49,51,40,41,43,44,45,47,50,48,52,9,128,160,32,0,0,8,193,0,2,204,193,0,2,201,59,193,0,2,199
	.byte 56,58,57,57,56,7,128,168,32,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,62,60,63,4
	.byte 128,196,66,16,16,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,7,128,160,40,0,0,8,193,0
	.byte 2,204,193,0,2,201,193,0,2,200,193,0,2,199,70,71,73,7,128,160,32,0,0,8,193,0,2,204,193,0,2,201
	.byte 193,0,2,200,193,0,2,199,77,78,76,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0
	.byte 2,199,10,128,152,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,86,0,0,0,0,0,10
	.byte 128,160,32,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,93,93,92,91,90,89,10,128,160,24
	.byte 0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,99,99,98,97,96,95,5,128,160,40,0,0,8
	.byte 193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,103,10,128,160,48,0,0,8,193,0,2,204,193,0,2,201
	.byte 59,193,0,2,199,56,58,108,108,56,0,6,128,160,24,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0
	.byte 2,199,111,0,11,128,160,40,0,0,8,193,0,2,204,193,0,2,201,59,193,0,2,199,56,58,57,57,56,114,115,5
	.byte 128,160,24,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,118,115,103,101,110,0
.section ".rodata"
.subsection 1
runtime_version:
	.string ""
.section ".rodata"
.subsection 1
assembly_guid:
	.string "999D60C4-2062-4ED9-BB54-4ED3FE76D8F1"
.section ".rodata"
.subsection 1
assembly_name:
	.string "Microsoft.Extensions.Configuration"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 187,0
	.balign 8
	.xword mono_aot_Microsoft_Extensions_Configuration_got
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

	.long 69,69,864,200,39,120,0,32
	.long 374417919,0,3255,128,8,8,7,9
	.long 8388607,0,4,25,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.byte 47,151,245,75,98,5,172,229,81,73,24,220,197,108,48,177
.section ".debug_info"
.subsection 0
.LTDIE_0:

	.byte 17
	.string "System_Object"

	.byte 16,7
	.string "System_Object"

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
	.string "System_IDisposable"

	.byte 16,7
	.string "System_IDisposable"

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
	.string "Microsoft.Extensions.Internal.ChangeCallbackRegistrar:UnsafeRegisterChangeCallback<T_REF>"
	.string "Microsoft_Extensions_Internal_ChangeCallbackRegistrar_UnsafeRegisterChangeCallback_T_REF_System_Action_1_object_object_System_Threading_CancellationToken_System_Action_1_T_REF_T_REF"

	.byte 0,0
	.string "Microsoft.Extensions.Internal.ChangeCallbackRegistrar:UnsafeRegisterChangeCallback<T_REF>"
	.xword .Lm_4
	.xword .Lme_4

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM9=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM9
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM10=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM10
	.byte 2,141,32,3
	.string "param2"

.LDIFF_SYM11=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM11
	.byte 2,141,40,3
	.string "param3"

.LDIFF_SYM12=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM12
	.byte 2,141,56,3
	.string "param4"

.LDIFF_SYM13=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM13
	.byte 3,141,192,0,11
	.string "V_0"

.LDIFF_SYM14=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM14
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM15=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM15
.Lfde0_start:

	.long 0
	.balign 8
	.xword .Lm_4

.LDIFF_SYM16=.Lme_4 - .Lm_4
	.long .LDIFF_SYM16
	.long 0
	.byte 12,31,0,68,14,160,1,157,20,158,19,68,13,29,68,154,18
	.balign 8
.Lfde0_end:

.section ".debug_info"
.subsection 0
.LTDIE_3:

	.byte 5
	.string "_ConfigurationSources"

	.byte 32,16
.LDIFF_SYM17=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM17
	.byte 2,35,0,6
	.string "_sources"

.LDIFF_SYM18=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM18
	.byte 2,35,16,6
	.string "_config"

.LDIFF_SYM19=.LTDIE_2_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM19
	.byte 2,35,24,0,7
	.string "_ConfigurationSources"

.LDIFF_SYM20=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM20
.LTDIE_3_POINTER:

	.byte 13
.LDIFF_SYM21=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM21
.LTDIE_3_REFERENCE:

	.byte 14
.LDIFF_SYM22=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM22
.LTDIE_4:

	.byte 5
	.string "_ConfigurationBuilderProperties"

	.byte 32,16
.LDIFF_SYM23=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM23
	.byte 2,35,0,6
	.string "_properties"

.LDIFF_SYM24=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM24
	.byte 2,35,16,6
	.string "_config"

.LDIFF_SYM25=.LTDIE_2_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM25
	.byte 2,35,24,0,7
	.string "_ConfigurationBuilderProperties"

.LDIFF_SYM26=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM26
.LTDIE_4_POINTER:

	.byte 13
.LDIFF_SYM27=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM27
.LTDIE_4_REFERENCE:

	.byte 14
.LDIFF_SYM28=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM28
.LTDIE_6:

	.byte 5
	.string "Microsoft_Extensions_Configuration_ReferenceCountedProviders"

	.byte 16,16
.LDIFF_SYM29=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM29
	.byte 2,35,0,0,7
	.string "Microsoft_Extensions_Configuration_ReferenceCountedProviders"

.LDIFF_SYM30=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM30
.LTDIE_6_POINTER:

	.byte 13
.LDIFF_SYM31=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM31
.LTDIE_6_REFERENCE:

	.byte 14
.LDIFF_SYM32=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM32
.LTDIE_8:

	.byte 5
	.string "System_ValueType"

	.byte 16,16
.LDIFF_SYM33=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM33
	.byte 2,35,0,0,7
	.string "System_ValueType"

.LDIFF_SYM34=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM34
.LTDIE_8_POINTER:

	.byte 13
.LDIFF_SYM35=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM35
.LTDIE_8_REFERENCE:

	.byte 14
.LDIFF_SYM36=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM36
.LTDIE_7:

	.byte 5
	.string "System_Boolean"

	.byte 17,16
.LDIFF_SYM37=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM37
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM38=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM38
	.byte 2,35,16,0,7
	.string "System_Boolean"

.LDIFF_SYM39=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM39
.LTDIE_7_POINTER:

	.byte 13
.LDIFF_SYM40=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM40
.LTDIE_7_REFERENCE:

	.byte 14
.LDIFF_SYM41=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM41
.LTDIE_5:

	.byte 5
	.string "Microsoft_Extensions_Configuration_ReferenceCountedProviderManager"

	.byte 40,16
.LDIFF_SYM42=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM42
	.byte 2,35,0,6
	.string "_replaceProvidersLock"

.LDIFF_SYM43=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM43
	.byte 2,35,16,6
	.string "_refCountedProviders"

.LDIFF_SYM44=.LTDIE_6_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM44
	.byte 2,35,24,6
	.string "_disposed"

.LDIFF_SYM45=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM45
	.byte 2,35,32,0,7
	.string "Microsoft_Extensions_Configuration_ReferenceCountedProviderManager"

.LDIFF_SYM46=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM46
.LTDIE_5_POINTER:

	.byte 13
.LDIFF_SYM47=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM47
.LTDIE_5_REFERENCE:

	.byte 14
.LDIFF_SYM48=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM48
.LTDIE_11:

	.byte 8
	.string "_States"

	.byte 4
.LDIFF_SYM49=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM49
	.byte 9
	.string "NotCanceledState"

	.byte 0,9
	.string "NotifyingState"

	.byte 1,9
	.string "NotifyingCompleteState"

	.byte 2,0,7
	.string "_States"

.LDIFF_SYM50=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM50
.LTDIE_11_POINTER:

	.byte 13
.LDIFF_SYM51=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM51
.LTDIE_11_REFERENCE:

	.byte 14
.LDIFF_SYM52=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM52
.LTDIE_12:

	.byte 17
	.string "System_Threading_ITimer"

	.byte 16,7
	.string "System_Threading_ITimer"

.LDIFF_SYM53=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM53
.LTDIE_12_POINTER:

	.byte 13
.LDIFF_SYM54=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM54
.LTDIE_12_REFERENCE:

	.byte 14
.LDIFF_SYM55=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM55
.LTDIE_16:

	.byte 5
	.string "System_MarshalByRefObject"

	.byte 16,16
.LDIFF_SYM56=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM56
	.byte 2,35,0,0,7
	.string "System_MarshalByRefObject"

.LDIFF_SYM57=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM57
.LTDIE_16_POINTER:

	.byte 13
.LDIFF_SYM58=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM58
.LTDIE_16_REFERENCE:

	.byte 14
.LDIFF_SYM59=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM59
.LTDIE_20:

	.byte 5
	.string "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 16,16
.LDIFF_SYM60=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM60
	.byte 2,35,0,0,7
	.string "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

.LDIFF_SYM61=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM61
.LTDIE_20_POINTER:

	.byte 13
.LDIFF_SYM62=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM62
.LTDIE_20_REFERENCE:

	.byte 14
.LDIFF_SYM63=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM63
.LTDIE_21:

	.byte 5
	.string "System_Int32"

	.byte 20,16
.LDIFF_SYM64=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM64
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM65=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM65
	.byte 2,35,16,0,7
	.string "System_Int32"

.LDIFF_SYM66=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM66
.LTDIE_21_POINTER:

	.byte 13
.LDIFF_SYM67=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM67
.LTDIE_21_REFERENCE:

	.byte 14
.LDIFF_SYM68=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM68
.LTDIE_19:

	.byte 5
	.string "System_Runtime_InteropServices_SafeHandle"

	.byte 32,16
.LDIFF_SYM69=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM69
	.byte 2,35,0,6
	.string "handle"

.LDIFF_SYM70=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM70
	.byte 2,35,16,6
	.string "_state"

.LDIFF_SYM71=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM71
	.byte 2,35,24,6
	.string "_ownsHandle"

.LDIFF_SYM72=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM72
	.byte 2,35,28,6
	.string "_fullyInitialized"

.LDIFF_SYM73=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM73
	.byte 2,35,29,0,7
	.string "System_Runtime_InteropServices_SafeHandle"

.LDIFF_SYM74=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM74
.LTDIE_19_POINTER:

	.byte 13
.LDIFF_SYM75=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM75
.LTDIE_19_REFERENCE:

	.byte 14
.LDIFF_SYM76=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM76
.LTDIE_18:

	.byte 5
	.string "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 32,16
.LDIFF_SYM77=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM77
	.byte 2,35,0,0,7
	.string "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

.LDIFF_SYM78=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM78
.LTDIE_18_POINTER:

	.byte 13
.LDIFF_SYM79=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM79
.LTDIE_18_REFERENCE:

	.byte 14
.LDIFF_SYM80=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM80
.LTDIE_17:

	.byte 5
	.string "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 32,16
.LDIFF_SYM81=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM81
	.byte 2,35,0,0,7
	.string "Microsoft_Win32_SafeHandles_SafeWaitHandle"

.LDIFF_SYM82=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM82
.LTDIE_17_POINTER:

	.byte 13
.LDIFF_SYM83=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM83
.LTDIE_17_REFERENCE:

	.byte 14
.LDIFF_SYM84=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM84
.LTDIE_15:

	.byte 5
	.string "System_Threading_WaitHandle"

	.byte 24,16
.LDIFF_SYM85=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM85
	.byte 2,35,0,6
	.string "_waitHandle"

.LDIFF_SYM86=.LTDIE_17_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM86
	.byte 2,35,16,0,7
	.string "System_Threading_WaitHandle"

.LDIFF_SYM87=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM87
.LTDIE_15_POINTER:

	.byte 13
.LDIFF_SYM88=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM88
.LTDIE_15_REFERENCE:

	.byte 14
.LDIFF_SYM89=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM89
.LTDIE_14:

	.byte 5
	.string "System_Threading_EventWaitHandle"

	.byte 24,16
.LDIFF_SYM90=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM90
	.byte 2,35,0,0,7
	.string "System_Threading_EventWaitHandle"

.LDIFF_SYM91=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM91
.LTDIE_14_POINTER:

	.byte 13
.LDIFF_SYM92=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM92
.LTDIE_14_REFERENCE:

	.byte 14
.LDIFF_SYM93=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM93
.LTDIE_13:

	.byte 5
	.string "System_Threading_ManualResetEvent"

	.byte 24,16
.LDIFF_SYM94=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM94
	.byte 2,35,0,0,7
	.string "System_Threading_ManualResetEvent"

.LDIFF_SYM95=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM95
.LTDIE_13_POINTER:

	.byte 13
.LDIFF_SYM96=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM96
.LTDIE_13_REFERENCE:

	.byte 14
.LDIFF_SYM97=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM97
.LTDIE_24:

	.byte 5
	.string "System_Int64"

	.byte 24,16
.LDIFF_SYM98=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM98
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM99=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM99
	.byte 2,35,16,0,7
	.string "System_Int64"

.LDIFF_SYM100=.LTDIE_24 - .Ldebug_info_start
	.long .LDIFF_SYM100
.LTDIE_24_POINTER:

	.byte 13
.LDIFF_SYM101=.LTDIE_24 - .Ldebug_info_start
	.long .LDIFF_SYM101
.LTDIE_24_REFERENCE:

	.byte 14
.LDIFF_SYM102=.LTDIE_24 - .Ldebug_info_start
	.long .LDIFF_SYM102
.LTDIE_28:

	.byte 5
	.string "System_Reflection_MemberInfo"

	.byte 16,16
.LDIFF_SYM103=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM103
	.byte 2,35,0,0,7
	.string "System_Reflection_MemberInfo"

.LDIFF_SYM104=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM104
.LTDIE_28_POINTER:

	.byte 13
.LDIFF_SYM105=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM105
.LTDIE_28_REFERENCE:

	.byte 14
.LDIFF_SYM106=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM106
.LTDIE_27:

	.byte 5
	.string "System_Reflection_MethodBase"

	.byte 16,16
.LDIFF_SYM107=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM107
	.byte 2,35,0,0,7
	.string "System_Reflection_MethodBase"

.LDIFF_SYM108=.LTDIE_27 - .Ldebug_info_start
	.long .LDIFF_SYM108
.LTDIE_27_POINTER:

	.byte 13
.LDIFF_SYM109=.LTDIE_27 - .Ldebug_info_start
	.long .LDIFF_SYM109
.LTDIE_27_REFERENCE:

	.byte 14
.LDIFF_SYM110=.LTDIE_27 - .Ldebug_info_start
	.long .LDIFF_SYM110
.LTDIE_26:

	.byte 5
	.string "System_Reflection_MethodInfo"

	.byte 16,16
.LDIFF_SYM111=.LTDIE_27 - .Ldebug_info_start
	.long .LDIFF_SYM111
	.byte 2,35,0,0,7
	.string "System_Reflection_MethodInfo"

.LDIFF_SYM112=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM112
.LTDIE_26_POINTER:

	.byte 13
.LDIFF_SYM113=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM113
.LTDIE_26_REFERENCE:

	.byte 14
.LDIFF_SYM114=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM114
.LTDIE_32:

	.byte 5
	.string "System_Reflection_LoaderAllocatorScout"

	.byte 24,16
.LDIFF_SYM115=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM115
	.byte 2,35,0,6
	.string "m_native"

.LDIFF_SYM116=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM116
	.byte 2,35,16,0,7
	.string "System_Reflection_LoaderAllocatorScout"

.LDIFF_SYM117=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM117
.LTDIE_32_POINTER:

	.byte 13
.LDIFF_SYM118=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM118
.LTDIE_32_REFERENCE:

	.byte 14
.LDIFF_SYM119=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM119
.LTDIE_31:

	.byte 5
	.string "System_Reflection_LoaderAllocator"

	.byte 48,16
.LDIFF_SYM120=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM120
	.byte 2,35,0,6
	.string "m_scout"

.LDIFF_SYM121=.LTDIE_32_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM121
	.byte 2,35,16,6
	.string "m_slots"

.LDIFF_SYM122=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM122
	.byte 2,35,24,6
	.string "m_hashes"

.LDIFF_SYM123=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM123
	.byte 2,35,32,6
	.string "m_nslots"

.LDIFF_SYM124=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM124
	.byte 2,35,40,0,7
	.string "System_Reflection_LoaderAllocator"

.LDIFF_SYM125=.LTDIE_31 - .Ldebug_info_start
	.long .LDIFF_SYM125
.LTDIE_31_POINTER:

	.byte 13
.LDIFF_SYM126=.LTDIE_31 - .Ldebug_info_start
	.long .LDIFF_SYM126
.LTDIE_31_REFERENCE:

	.byte 14
.LDIFF_SYM127=.LTDIE_31 - .Ldebug_info_start
	.long .LDIFF_SYM127
.LTDIE_30:

	.byte 5
	.string "System_Type"

	.byte 32,16
.LDIFF_SYM128=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM128
	.byte 2,35,0,6
	.string "_impl"

.LDIFF_SYM129=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM129
	.byte 2,35,16,6
	.string "m_keepalive"

.LDIFF_SYM130=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM130
	.byte 2,35,24,0,7
	.string "System_Type"

.LDIFF_SYM131=.LTDIE_30 - .Ldebug_info_start
	.long .LDIFF_SYM131
.LTDIE_30_POINTER:

	.byte 13
.LDIFF_SYM132=.LTDIE_30 - .Ldebug_info_start
	.long .LDIFF_SYM132
.LTDIE_30_REFERENCE:

	.byte 14
.LDIFF_SYM133=.LTDIE_30 - .Ldebug_info_start
	.long .LDIFF_SYM133
.LTDIE_29:

	.byte 5
	.string "System_DelegateData"

	.byte 40,16
.LDIFF_SYM134=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM134
	.byte 2,35,0,6
	.string "target_type"

.LDIFF_SYM135=.LTDIE_30_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM135
	.byte 2,35,16,6
	.string "method_name"

.LDIFF_SYM136=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM136
	.byte 2,35,24,6
	.string "curried_first_arg"

.LDIFF_SYM137=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM137
	.byte 2,35,32,0,7
	.string "System_DelegateData"

.LDIFF_SYM138=.LTDIE_29 - .Ldebug_info_start
	.long .LDIFF_SYM138
.LTDIE_29_POINTER:

	.byte 13
.LDIFF_SYM139=.LTDIE_29 - .Ldebug_info_start
	.long .LDIFF_SYM139
.LTDIE_29_REFERENCE:

	.byte 14
.LDIFF_SYM140=.LTDIE_29 - .Ldebug_info_start
	.long .LDIFF_SYM140
.LTDIE_25:

	.byte 5
	.string "System_Delegate"

	.byte 120,16
.LDIFF_SYM141=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM141
	.byte 2,35,0,6
	.string "method_ptr"

.LDIFF_SYM142=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM142
	.byte 2,35,16,6
	.string "invoke_impl"

.LDIFF_SYM143=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM143
	.byte 2,35,24,6
	.string "_target"

.LDIFF_SYM144=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM144
	.byte 2,35,32,6
	.string "method"

.LDIFF_SYM145=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM145
	.byte 2,35,40,6
	.string "delegate_trampoline"

.LDIFF_SYM146=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM146
	.byte 2,35,48,6
	.string "extra_arg"

.LDIFF_SYM147=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM147
	.byte 2,35,56,6
	.string "method_code"

.LDIFF_SYM148=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM148
	.byte 2,35,64,6
	.string "interp_method"

.LDIFF_SYM149=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM149
	.byte 2,35,72,6
	.string "interp_invoke_impl"

.LDIFF_SYM150=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM150
	.byte 2,35,80,6
	.string "method_info"

.LDIFF_SYM151=.LTDIE_26_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM151
	.byte 2,35,88,6
	.string "original_method_info"

.LDIFF_SYM152=.LTDIE_26_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM152
	.byte 2,35,96,6
	.string "data"

.LDIFF_SYM153=.LTDIE_29_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM153
	.byte 2,35,104,6
	.string "method_is_virtual"

.LDIFF_SYM154=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM154
	.byte 2,35,112,6
	.string "bound"

.LDIFF_SYM155=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM155
	.byte 2,35,113,0,7
	.string "System_Delegate"

.LDIFF_SYM156=.LTDIE_25 - .Ldebug_info_start
	.long .LDIFF_SYM156
.LTDIE_25_POINTER:

	.byte 13
.LDIFF_SYM157=.LTDIE_25 - .Ldebug_info_start
	.long .LDIFF_SYM157
.LTDIE_25_REFERENCE:

	.byte 14
.LDIFF_SYM158=.LTDIE_25 - .Ldebug_info_start
	.long .LDIFF_SYM158
.LTDIE_34:

	.byte 17
	.string "System_Threading_IAsyncLocalValueMap"

	.byte 16,7
	.string "System_Threading_IAsyncLocalValueMap"

.LDIFF_SYM159=.LTDIE_34 - .Ldebug_info_start
	.long .LDIFF_SYM159
.LTDIE_34_POINTER:

	.byte 13
.LDIFF_SYM160=.LTDIE_34 - .Ldebug_info_start
	.long .LDIFF_SYM160
.LTDIE_34_REFERENCE:

	.byte 14
.LDIFF_SYM161=.LTDIE_34 - .Ldebug_info_start
	.long .LDIFF_SYM161
.LTDIE_33:

	.byte 5
	.string "System_Threading_ExecutionContext"

	.byte 40,16
.LDIFF_SYM162=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM162
	.byte 2,35,0,6
	.string "m_localValues"

.LDIFF_SYM163=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM163
	.byte 2,35,16,6
	.string "m_localChangeNotifications"

.LDIFF_SYM164=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM164
	.byte 2,35,24,6
	.string "m_isFlowSuppressed"

.LDIFF_SYM165=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM165
	.byte 2,35,32,6
	.string "m_isDefault"

.LDIFF_SYM166=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM166
	.byte 2,35,33,0,7
	.string "System_Threading_ExecutionContext"

.LDIFF_SYM167=.LTDIE_33 - .Ldebug_info_start
	.long .LDIFF_SYM167
.LTDIE_33_POINTER:

	.byte 13
.LDIFF_SYM168=.LTDIE_33 - .Ldebug_info_start
	.long .LDIFF_SYM168
.LTDIE_33_REFERENCE:

	.byte 14
.LDIFF_SYM169=.LTDIE_33 - .Ldebug_info_start
	.long .LDIFF_SYM169
.LTDIE_35:

	.byte 5
	.string "System_Threading_SynchronizationContext"

	.byte 17,16
.LDIFF_SYM170=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM170
	.byte 2,35,0,6
	.string "_requireWaitNotification"

.LDIFF_SYM171=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM171
	.byte 2,35,16,0,7
	.string "System_Threading_SynchronizationContext"

.LDIFF_SYM172=.LTDIE_35 - .Ldebug_info_start
	.long .LDIFF_SYM172
.LTDIE_35_POINTER:

	.byte 13
.LDIFF_SYM173=.LTDIE_35 - .Ldebug_info_start
	.long .LDIFF_SYM173
.LTDIE_35_REFERENCE:

	.byte 14
.LDIFF_SYM174=.LTDIE_35 - .Ldebug_info_start
	.long .LDIFF_SYM174
.LTDIE_23:

	.byte 5
	.string "_CallbackNode"

	.byte 80,16
.LDIFF_SYM175=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM175
	.byte 2,35,0,6
	.string "Registrations"

.LDIFF_SYM176=.LTDIE_22_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM176
	.byte 2,35,16,6
	.string "Prev"

.LDIFF_SYM177=.LTDIE_23_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM177
	.byte 2,35,24,6
	.string "Next"

.LDIFF_SYM178=.LTDIE_23_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM178
	.byte 2,35,32,6
	.string "Id"

.LDIFF_SYM179=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM179
	.byte 2,35,72,6
	.string "Callback"

.LDIFF_SYM180=.LTDIE_25_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM180
	.byte 2,35,40,6
	.string "CallbackState"

.LDIFF_SYM181=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM181
	.byte 2,35,48,6
	.string "ExecutionContext"

.LDIFF_SYM182=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM182
	.byte 2,35,56,6
	.string "SynchronizationContext"

.LDIFF_SYM183=.LTDIE_35_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM183
	.byte 2,35,64,0,7
	.string "_CallbackNode"

.LDIFF_SYM184=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM184
.LTDIE_23_POINTER:

	.byte 13
.LDIFF_SYM185=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM185
.LTDIE_23_REFERENCE:

	.byte 14
.LDIFF_SYM186=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM186
.LTDIE_22:

	.byte 5
	.string "_Registrations"

	.byte 64,16
.LDIFF_SYM187=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM187
	.byte 2,35,0,6
	.string "Source"

.LDIFF_SYM188=.LTDIE_10_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM188
	.byte 2,35,16,6
	.string "Callbacks"

.LDIFF_SYM189=.LTDIE_23_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM189
	.byte 2,35,24,6
	.string "FreeNodeList"

.LDIFF_SYM190=.LTDIE_23_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM190
	.byte 2,35,32,6
	.string "NextAvailableId"

.LDIFF_SYM191=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM191
	.byte 2,35,40,6
	.string "ExecutingCallbackId"

.LDIFF_SYM192=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM192
	.byte 2,35,48,6
	.string "ThreadIDExecutingCallbacks"

.LDIFF_SYM193=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM193
	.byte 2,35,56,6
	.string "_locked"

.LDIFF_SYM194=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM194
	.byte 2,35,60,0,7
	.string "_Registrations"

.LDIFF_SYM195=.LTDIE_22 - .Ldebug_info_start
	.long .LDIFF_SYM195
.LTDIE_22_POINTER:

	.byte 13
.LDIFF_SYM196=.LTDIE_22 - .Ldebug_info_start
	.long .LDIFF_SYM196
.LTDIE_22_REFERENCE:

	.byte 14
.LDIFF_SYM197=.LTDIE_22 - .Ldebug_info_start
	.long .LDIFF_SYM197
.LTDIE_10:

	.byte 5
	.string "System_Threading_CancellationTokenSource"

	.byte 48,16
.LDIFF_SYM198=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM198
	.byte 2,35,0,6
	.string "_state"

.LDIFF_SYM199=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM199
	.byte 2,35,40,6
	.string "_disposed"

.LDIFF_SYM200=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM200
	.byte 2,35,44,6
	.string "_timer"

.LDIFF_SYM201=.LTDIE_12_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM201
	.byte 2,35,16,6
	.string "_kernelEvent"

.LDIFF_SYM202=.LTDIE_13_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM202
	.byte 2,35,24,6
	.string "_registrations"

.LDIFF_SYM203=.LTDIE_22_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM203
	.byte 2,35,32,0,7
	.string "System_Threading_CancellationTokenSource"

.LDIFF_SYM204=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM204
.LTDIE_10_POINTER:

	.byte 13
.LDIFF_SYM205=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM205
.LTDIE_10_REFERENCE:

	.byte 14
.LDIFF_SYM206=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM206
.LTDIE_9:

	.byte 5
	.string "Microsoft_Extensions_Configuration_ConfigurationReloadToken"

	.byte 32,16
.LDIFF_SYM207=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM207
	.byte 2,35,0,6
	.string "_cts"

.LDIFF_SYM208=.LTDIE_10_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM208
	.byte 2,35,16,6
	.string "<ActiveChangeCallbacks>k__BackingField"

.LDIFF_SYM209=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM209
	.byte 2,35,24,0,7
	.string "Microsoft_Extensions_Configuration_ConfigurationReloadToken"

.LDIFF_SYM210=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM210
.LTDIE_9_POINTER:

	.byte 13
.LDIFF_SYM211=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM211
.LTDIE_9_REFERENCE:

	.byte 14
.LDIFF_SYM212=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM212
.LTDIE_2:

	.byte 5
	.string "Microsoft_Extensions_Configuration_ConfigurationManager"

	.byte 56,16
.LDIFF_SYM213=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM213
	.byte 2,35,0,6
	.string "_sources"

.LDIFF_SYM214=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM214
	.byte 2,35,16,6
	.string "_properties"

.LDIFF_SYM215=.LTDIE_4_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM215
	.byte 2,35,24,6
	.string "_providerManager"

.LDIFF_SYM216=.LTDIE_5_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM216
	.byte 2,35,32,6
	.string "_changeTokenRegistrations"

.LDIFF_SYM217=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM217
	.byte 2,35,40,6
	.string "_changeToken"

.LDIFF_SYM218=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM218
	.byte 2,35,48,0,7
	.string "Microsoft_Extensions_Configuration_ConfigurationManager"

.LDIFF_SYM219=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM219
.LTDIE_2_POINTER:

	.byte 13
.LDIFF_SYM220=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM220
.LTDIE_2_REFERENCE:

	.byte 14
.LDIFF_SYM221=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM221
	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationManager:.ctor"
	.string "Microsoft_Extensions_Configuration_ConfigurationManager__ctor"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationManager:.ctor"
	.xword .Lm_8
	.xword .Lme_8

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM222=.LTDIE_2_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM222
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM223=.Lfde1_end - .Lfde1_start
	.long .LDIFF_SYM223
.Lfde1_start:

	.long 0
	.balign 8
	.xword .Lm_8

.LDIFF_SYM224=.Lme_8 - .Lm_8
	.long .LDIFF_SYM224
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,154,10
	.balign 8
.Lfde1_end:

.section ".debug_info"
.subsection 0
.LTDIE_36:

	.byte 17
	.string "Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 16,7
	.string "Microsoft_Extensions_Configuration_IConfigurationSource"

.LDIFF_SYM225=.LTDIE_36 - .Ldebug_info_start
	.long .LDIFF_SYM225
.LTDIE_36_POINTER:

	.byte 13
.LDIFF_SYM226=.LTDIE_36 - .Ldebug_info_start
	.long .LDIFF_SYM226
.LTDIE_36_REFERENCE:

	.byte 14
.LDIFF_SYM227=.LTDIE_36 - .Ldebug_info_start
	.long .LDIFF_SYM227
	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationManager:Microsoft.Extensions.Configuration.IConfigurationBuilder.Add"
	.string "Microsoft_Extensions_Configuration_ConfigurationManager_Microsoft_Extensions_Configuration_IConfigurationBuilder_Add_Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationManager:Microsoft.Extensions.Configuration.IConfigurationBuilder.Add"
	.xword .Lm_c
	.xword .Lme_c

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM228=.LTDIE_2_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM228
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM229=.LTDIE_36_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM229
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM230=.Lfde2_end - .Lfde2_start
	.long .LDIFF_SYM230
.Lfde2_start:

	.long 0
	.balign 8
	.xword .Lm_c

.LDIFF_SYM231=.Lme_c - .Lm_c
	.long .LDIFF_SYM231
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde2_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationManager:RaiseChanged"
	.string "Microsoft_Extensions_Configuration_ConfigurationManager_RaiseChanged"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationManager:RaiseChanged"
	.xword .Lm_e
	.xword .Lme_e

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM232=.LTDIE_2_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM232
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM233=.Lfde3_end - .Lfde3_start
	.long .LDIFF_SYM233
.Lfde3_start:

	.long 0
	.balign 8
	.xword .Lm_e

.LDIFF_SYM234=.Lme_e - .Lm_e
	.long .LDIFF_SYM234
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde3_end:

.section ".debug_info"
.subsection 0
.LTDIE_37:

	.byte 17
	.string "Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 16,7
	.string "Microsoft_Extensions_Configuration_IConfigurationProvider"

.LDIFF_SYM235=.LTDIE_37 - .Ldebug_info_start
	.long .LDIFF_SYM235
.LTDIE_37_POINTER:

	.byte 13
.LDIFF_SYM236=.LTDIE_37 - .Ldebug_info_start
	.long .LDIFF_SYM236
.LTDIE_37_REFERENCE:

	.byte 14
.LDIFF_SYM237=.LTDIE_37 - .Ldebug_info_start
	.long .LDIFF_SYM237
	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationManager:AddSource"
	.string "Microsoft_Extensions_Configuration_ConfigurationManager_AddSource_Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationManager:AddSource"
	.xword .Lm_f
	.xword .Lme_f

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM238=.LTDIE_2_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM238
	.byte 1,105,3
	.string "param0"

.LDIFF_SYM239=.LTDIE_36_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM239
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM240=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM240
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM241=.Lfde4_end - .Lfde4_start
	.long .LDIFF_SYM241
.Lfde4_start:

	.long 0
	.balign 8
	.xword .Lm_f

.LDIFF_SYM242=.Lme_f - .Lm_f
	.long .LDIFF_SYM242
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,149,10,150,9,68,151,8,152,7,68,153,6,154,5
	.balign 8
.Lfde4_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:.ctor"
	.string "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources__ctor_Microsoft_Extensions_Configuration_ConfigurationManager"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:.ctor"
	.xword .Lm_12
	.xword .Lme_12

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM243=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM243
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM244=.LTDIE_2_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM244
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM245=.Lfde5_end - .Lfde5_start
	.long .LDIFF_SYM245
.Lfde5_start:

	.long 0
	.balign 8
	.xword .Lm_12

.LDIFF_SYM246=.Lme_12 - .Lm_12
	.long .LDIFF_SYM246
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde5_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Add"
	.string "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationSources_Add_Microsoft_Extensions_Configuration_IConfigurationSource"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationSources:Add"
	.xword .Lm_17
	.xword .Lme_17

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM247=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM247
	.byte 2,141,48,3
	.string "param0"

.LDIFF_SYM248=.LTDIE_36_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM248
	.byte 2,141,56,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM249=.Lfde6_end - .Lfde6_start
	.long .LDIFF_SYM249
.Lfde6_start:

	.long 0
	.balign 8
	.xword .Lm_17

.LDIFF_SYM250=.Lme_17 - .Lm_17
	.long .LDIFF_SYM250
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3
	.balign 8
.Lfde6_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:.ctor"
	.string "Microsoft_Extensions_Configuration_ConfigurationManager_ConfigurationBuilderProperties__ctor_Microsoft_Extensions_Configuration_ConfigurationManager"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationManager/ConfigurationBuilderProperties:.ctor"
	.xword .Lm_22
	.xword .Lme_22

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM251=.LTDIE_4_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM251
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM252=.LTDIE_2_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM252
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM253=.Lfde7_end - .Lfde7_start
	.long .LDIFF_SYM253
.Lfde7_start:

	.long 0
	.balign 8
	.xword .Lm_22

.LDIFF_SYM254=.Lme_22 - .Lm_22
	.long .LDIFF_SYM254
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde7_end:

.section ".debug_info"
.subsection 0
.LTDIE_38:

	.byte 5
	.string "Microsoft_Extensions_Configuration_ConfigurationProvider"

	.byte 32,16
.LDIFF_SYM255=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM255
	.byte 2,35,0,6
	.string "_reloadToken"

.LDIFF_SYM256=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM256
	.byte 2,35,16,6
	.string "<Data>k__BackingField"

.LDIFF_SYM257=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM257
	.byte 2,35,24,0,7
	.string "Microsoft_Extensions_Configuration_ConfigurationProvider"

.LDIFF_SYM258=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM258
.LTDIE_38_POINTER:

	.byte 13
.LDIFF_SYM259=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM259
.LTDIE_38_REFERENCE:

	.byte 14
.LDIFF_SYM260=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM260
	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationProvider:.ctor"
	.string "Microsoft_Extensions_Configuration_ConfigurationProvider__ctor"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationProvider:.ctor"
	.xword .Lm_34
	.xword .Lme_34

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM261=.LTDIE_38_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM261
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM262=.Lfde8_end - .Lfde8_start
	.long .LDIFF_SYM262
.Lfde8_start:

	.long 0
	.balign 8
	.xword .Lm_34

.LDIFF_SYM263=.Lme_34 - .Lm_34
	.long .LDIFF_SYM263
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.balign 8
.Lfde8_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationProvider:Load"
	.string "Microsoft_Extensions_Configuration_ConfigurationProvider_Load"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationProvider:Load"
	.xword .Lm_38
	.xword .Lme_38

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM264=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM264
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM265=.Lfde9_end - .Lfde9_start
	.long .LDIFF_SYM265
.Lfde9_start:

	.long 0
	.balign 8
	.xword .Lm_38

.LDIFF_SYM266=.Lme_38 - .Lm_38
	.long .LDIFF_SYM266
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde9_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationProvider:GetReloadToken"
	.string "Microsoft_Extensions_Configuration_ConfigurationProvider_GetReloadToken"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationProvider:GetReloadToken"
	.xword .Lm_39
	.xword .Lme_39

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM267=.LTDIE_38_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM267
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM268=.Lfde10_end - .Lfde10_start
	.long .LDIFF_SYM268
.Lfde10_start:

	.long 0
	.balign 8
	.xword .Lm_39

.LDIFF_SYM269=.Lme_39 - .Lm_39
	.long .LDIFF_SYM269
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde10_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken:get_HasChanged"
	.string "Microsoft_Extensions_Configuration_ConfigurationReloadToken_get_HasChanged"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken:get_HasChanged"
	.xword .Lm_3d
	.xword .Lme_3d

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM270=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM270
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM271=.Lfde11_end - .Lfde11_start
	.long .LDIFF_SYM271
.Lfde11_start:

	.long 0
	.balign 8
	.xword .Lm_3d

.LDIFF_SYM272=.Lme_3d - .Lm_3d
	.long .LDIFF_SYM272
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde11_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken:RegisterChangeCallback"
	.string "Microsoft_Extensions_Configuration_ConfigurationReloadToken_RegisterChangeCallback_System_Action_1_object_object"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken:RegisterChangeCallback"
	.xword .Lm_3e
	.xword .Lme_3e

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM273=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM273
	.byte 2,141,40,3
	.string "param0"

.LDIFF_SYM274=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM274
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM275=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM275
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM276=.Lfde12_end - .Lfde12_start
	.long .LDIFF_SYM276
.Lfde12_start:

	.long 0
	.balign 8
	.xword .Lm_3e

.LDIFF_SYM277=.Lme_3e - .Lm_3e
	.long .LDIFF_SYM277
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,68,153,11,154,10
	.balign 8
.Lfde12_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken:OnReload"
	.string "Microsoft_Extensions_Configuration_ConfigurationReloadToken_OnReload"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken:OnReload"
	.xword .Lm_3f
	.xword .Lme_3f

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM278=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM278
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM279=.Lfde13_end - .Lfde13_start
	.long .LDIFF_SYM279
.Lfde13_start:

	.long 0
	.balign 8
	.xword .Lm_3f

.LDIFF_SYM280=.Lme_3f - .Lm_3f
	.long .LDIFF_SYM280
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde13_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken:.ctor"
	.string "Microsoft_Extensions_Configuration_ConfigurationReloadToken__ctor"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken:.ctor"
	.xword .Lm_40
	.xword .Lme_40

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM281=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM281
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM282=.Lfde14_end - .Lfde14_start
	.long .LDIFF_SYM282
.Lfde14_start:

	.long 0
	.balign 8
	.xword .Lm_40

.LDIFF_SYM283=.Lme_40 - .Lm_40
	.long .LDIFF_SYM283
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde14_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken/<>c:.cctor"
	.string "Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__cctor"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken/<>c:.cctor"
	.xword .Lm_41
	.xword .Lme_41

	.byte 2,118,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM284=.Lfde15_end - .Lfde15_start
	.long .LDIFF_SYM284
.Lfde15_start:

	.long 0
	.balign 8
	.xword .Lm_41

.LDIFF_SYM285=.Lme_41 - .Lm_41
	.long .LDIFF_SYM285
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde15_end:

.section ".debug_info"
.subsection 0
.LTDIE_39:

	.byte 5
	.string "_<>c"

	.byte 16,16
.LDIFF_SYM286=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM286
	.byte 2,35,0,0,7
	.string "_<>c"

.LDIFF_SYM287=.LTDIE_39 - .Ldebug_info_start
	.long .LDIFF_SYM287
.LTDIE_39_POINTER:

	.byte 13
.LDIFF_SYM288=.LTDIE_39 - .Ldebug_info_start
	.long .LDIFF_SYM288
.LTDIE_39_REFERENCE:

	.byte 14
.LDIFF_SYM289=.LTDIE_39 - .Ldebug_info_start
	.long .LDIFF_SYM289
	.byte 2
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken/<>c:.ctor"
	.string "Microsoft_Extensions_Configuration_ConfigurationReloadToken__c__ctor"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ConfigurationReloadToken/<>c:.ctor"
	.xword .Lm_42
	.xword .Lme_42

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM290=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM290
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM291=.Lfde16_end - .Lfde16_start
	.long .LDIFF_SYM291
.Lfde16_start:

	.long 0
	.balign 8
	.xword .Lm_42

.LDIFF_SYM292=.Lme_42 - .Lm_42
	.long .LDIFF_SYM292
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde16_end:

.section ".debug_info"
.subsection 0
.LTDIE_40:

	.byte 17
	.string "Microsoft_Extensions_Configuration_IConfigurationBuilder"

	.byte 16,7
	.string "Microsoft_Extensions_Configuration_IConfigurationBuilder"

.LDIFF_SYM293=.LTDIE_40 - .Ldebug_info_start
	.long .LDIFF_SYM293
.LTDIE_40_POINTER:

	.byte 13
.LDIFF_SYM294=.LTDIE_40 - .Ldebug_info_start
	.long .LDIFF_SYM294
.LTDIE_40_REFERENCE:

	.byte 14
.LDIFF_SYM295=.LTDIE_40 - .Ldebug_info_start
	.long .LDIFF_SYM295
	.byte 2
	.string "Microsoft.Extensions.Configuration.MemoryConfigurationBuilderExtensions:AddInMemoryCollection"
	.string "Microsoft_Extensions_Configuration_MemoryConfigurationBuilderExtensions_AddInMemoryCollection_Microsoft_Extensions_Configuration_IConfigurationBuilder_System_Collections_Generic_IEnumerable_1_System_Collections_Generic_KeyValuePair_2_string_string"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.MemoryConfigurationBuilderExtensions:AddInMemoryCollection"
	.xword .Lm_4e
	.xword .Lme_4e

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM296=.LTDIE_40_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM296
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM297=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM297
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM298=.Lfde17_end - .Lfde17_start
	.long .LDIFF_SYM298
.Lfde17_start:

	.long 0
	.balign 8
	.xword .Lm_4e

.LDIFF_SYM299=.Lme_4e - .Lm_4e
	.long .LDIFF_SYM299
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.balign 8
.Lfde17_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviders:Create"
	.string "Microsoft_Extensions_Configuration_ReferenceCountedProviders_Create_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviders:Create"
	.xword .Lm_4f
	.xword .Lme_4f

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM300=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM300
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM301=.Lfde18_end - .Lfde18_start
	.long .LDIFF_SYM301
.Lfde18_start:

	.long 0
	.balign 8
	.xword .Lm_4f

.LDIFF_SYM302=.Lme_4f - .Lm_4f
	.long .LDIFF_SYM302
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde18_end:

.section ".debug_info"
.subsection 0
.LTDIE_41:

	.byte 5
	.string "_ActiveReferenceCountedProviders"

	.byte 32,16
.LDIFF_SYM303=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM303
	.byte 2,35,0,6
	.string "_refCount"

.LDIFF_SYM304=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM304
	.byte 2,35,24,6
	.string "_providers"

.LDIFF_SYM305=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM305
	.byte 2,35,16,0,7
	.string "_ActiveReferenceCountedProviders"

.LDIFF_SYM306=.LTDIE_41 - .Ldebug_info_start
	.long .LDIFF_SYM306
.LTDIE_41_POINTER:

	.byte 13
.LDIFF_SYM307=.LTDIE_41 - .Ldebug_info_start
	.long .LDIFF_SYM307
.LTDIE_41_REFERENCE:

	.byte 14
.LDIFF_SYM308=.LTDIE_41 - .Ldebug_info_start
	.long .LDIFF_SYM308
	.byte 2
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:.ctor"
	.string "Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders__ctor_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:.ctor"
	.xword .Lm_57
	.xword .Lme_57

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM309=.LTDIE_41_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM309
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM310=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM310
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM311=.Lfde19_end - .Lfde19_start
	.long .LDIFF_SYM311
.Lfde19_start:

	.long 0
	.balign 8
	.xword .Lm_57

.LDIFF_SYM312=.Lme_57 - .Lm_57
	.long .LDIFF_SYM312
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde19_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:get_Providers"
	.string "Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_get_Providers"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:get_Providers"
	.xword .Lm_58
	.xword .Lme_58

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM313=.LTDIE_41_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM313
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM314=.Lfde20_end - .Lfde20_start
	.long .LDIFF_SYM314
.Lfde20_start:

	.long 0
	.balign 8
	.xword .Lm_58

.LDIFF_SYM315=.Lme_58 - .Lm_58
	.long .LDIFF_SYM315
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde20_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:set_Providers"
	.string "Microsoft_Extensions_Configuration_ReferenceCountedProviders_ActiveReferenceCountedProviders_set_Providers_System_Collections_Generic_List_1_Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviders/ActiveReferenceCountedProviders:set_Providers"
	.xword .Lm_59
	.xword .Lme_59

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM316=.LTDIE_41_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM316
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM317=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM317
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM318=.Lfde21_end - .Lfde21_start
	.long .LDIFF_SYM318
.Lfde21_start:

	.long 0
	.balign 8
	.xword .Lm_59

.LDIFF_SYM319=.Lme_59 - .Lm_59
	.long .LDIFF_SYM319
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde21_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:AddProvider"
	.string "Microsoft_Extensions_Configuration_ReferenceCountedProviderManager_AddProvider_Microsoft_Extensions_Configuration_IConfigurationProvider"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:AddProvider"
	.xword .Lm_65
	.xword .Lme_65

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM320=.LTDIE_5_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM320
	.byte 1,105,3
	.string "param0"

.LDIFF_SYM321=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM321
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM322=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM322
	.byte 3,141,192,0,11
	.string "V_1"

.LDIFF_SYM323=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM323
	.byte 3,141,200,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM324=.Lfde22_end - .Lfde22_start
	.long .LDIFF_SYM324
.Lfde22_start:

	.long 0
	.balign 8
	.xword .Lm_65

.LDIFF_SYM325=.Lme_65 - .Lm_65
	.long .LDIFF_SYM325
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,149,14,150,13,68,151,12,152,11,68,153,10,154,9
	.balign 8
.Lfde22_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:.ctor"
	.string "Microsoft_Extensions_Configuration_ReferenceCountedProviderManager__ctor"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.ReferenceCountedProviderManager:.ctor"
	.xword .Lm_67
	.xword .Lme_67

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM326=.LTDIE_5_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM326
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM327=.Lfde23_end - .Lfde23_start
	.long .LDIFF_SYM327
.Lfde23_start:

	.long 0
	.balign 8
	.xword .Lm_67

.LDIFF_SYM328=.Lme_67 - .Lm_67
	.long .LDIFF_SYM328
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.balign 8
.Lfde23_end:

.section ".debug_info"
.subsection 0
.LTDIE_43:

	.byte 5
	.string "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource"

	.byte 24,16
.LDIFF_SYM329=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM329
	.byte 2,35,0,6
	.string "<InitialData>k__BackingField"

.LDIFF_SYM330=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM330
	.byte 2,35,16,0,7
	.string "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource"

.LDIFF_SYM331=.LTDIE_43 - .Ldebug_info_start
	.long .LDIFF_SYM331
.LTDIE_43_POINTER:

	.byte 13
.LDIFF_SYM332=.LTDIE_43 - .Ldebug_info_start
	.long .LDIFF_SYM332
.LTDIE_43_REFERENCE:

	.byte 14
.LDIFF_SYM333=.LTDIE_43 - .Ldebug_info_start
	.long .LDIFF_SYM333
.LTDIE_42:

	.byte 5
	.string "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider"

	.byte 40,16
.LDIFF_SYM334=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM334
	.byte 2,35,0,6
	.string "_source"

.LDIFF_SYM335=.LTDIE_43_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM335
	.byte 2,35,32,0,7
	.string "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider"

.LDIFF_SYM336=.LTDIE_42 - .Ldebug_info_start
	.long .LDIFF_SYM336
.LTDIE_42_POINTER:

	.byte 13
.LDIFF_SYM337=.LTDIE_42 - .Ldebug_info_start
	.long .LDIFF_SYM337
.LTDIE_42_REFERENCE:

	.byte 14
.LDIFF_SYM338=.LTDIE_42 - .Ldebug_info_start
	.long .LDIFF_SYM338
	.byte 2
	.string "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationProvider:.ctor"
	.string "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationProvider__ctor_Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationProvider:.ctor"
	.xword .Lm_70
	.xword .Lme_70

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM339=.LTDIE_42_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM339
	.byte 1,105,3
	.string "param0"

.LDIFF_SYM340=.LTDIE_43_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM340
	.byte 2,141,24,11
	.string "V_0"

.LDIFF_SYM341=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM341
	.byte 2,141,48,11
	.string "V_1"

.LDIFF_SYM342=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM342
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM343=.Lfde24_end - .Lfde24_start
	.long .LDIFF_SYM343
.Lfde24_start:

	.long 0
	.balign 8
	.xword .Lm_70

.LDIFF_SYM344=.Lme_70 - .Lm_70
	.long .LDIFF_SYM344
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,153,10
	.balign 8
.Lfde24_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationSource:Build"
	.string "Microsoft_Extensions_Configuration_Memory_MemoryConfigurationSource_Build_Microsoft_Extensions_Configuration_IConfigurationBuilder"

	.byte 0,0
	.string "Microsoft.Extensions.Configuration.Memory.MemoryConfigurationSource:Build"
	.xword .Lm_75
	.xword .Lme_75

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM345=.LTDIE_43_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM345
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM346=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM346
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM347=.Lfde25_end - .Lfde25_start
	.long .LDIFF_SYM347
.Lfde25_start:

	.long 0
	.balign 8
	.xword .Lm_75

.LDIFF_SYM348=.Lme_75 - .Lm_75
	.long .LDIFF_SYM348
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde25_end:

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
