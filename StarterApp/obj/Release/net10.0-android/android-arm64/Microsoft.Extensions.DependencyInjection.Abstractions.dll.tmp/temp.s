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
	.string "Mono AOT Compiler 10.0.4.0 (10.0.426.12010 @Commit: 80d3e14f5e08b4888f464e3cd0d0b2445b63ec46)"
	.string "Microsoft.Extensions.DependencyInjection.Abstractions.dll"
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
.Lm_5:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateInstance_System_IServiceProvider_System_Type_object__
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateInstance_System_IServiceProvider_System_Type_object__,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateInstance_System_IServiceProvider_System_Type_object__:
.inst 0xa9a47bfd
.inst 0x910003fd
.inst 0xa90153b3
.inst 0xa9025bb5
.inst 0xa90363b7
.inst 0xa9046bb9
.inst 0xaa0003f8
.inst 0xaa0103f9
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf900c7bf
.inst 0xd2800000
.inst 0xf900a7a0
.inst 0xf900aba0
.inst 0xf900afa0
.inst 0xf900b3a0
.inst 0xf900b7a0
.inst 0xf900bba0
.inst 0xf900bfa0
.inst 0xf900c3a0
.inst 0xd2800000
.inst 0xf9009fa0
.inst 0xf900a3a0
.inst 0xd2800000
.inst 0xf90097a0
.inst 0xf9009ba0
.inst 0xd2800000
.inst 0xf9008fa0
.inst 0xf90093a0
.inst 0xd2800000
.inst 0xf90083a0
.inst 0xf90087a0
.inst 0xf9008ba0
.inst 0xf900cbbf
.inst 0xf900cfbf
.inst 0xd2800000
.inst 0xf90077a0
.inst 0xf9007ba0
.inst 0xf9007fa0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 200]
.inst 0xaa0003f7
.inst 0xb50000d8
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3
.inst 0xaa1903e0
.inst 0x3940033e
bl .Lp_4
.inst 0x53001c00
.inst 0x35003d80

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 208]
.inst 0xf9400003
.inst 0x910623a2
.inst 0xaa0303e0
.inst 0xaa1903e1
.inst 0x3940007e
bl .Lp_5
.inst 0x53001c00
.inst 0x35000240
.inst 0x910623a0
.inst 0xf900dfa0
.inst 0xaa1903e0
bl .Lp_6
.inst 0xf900dba0
.inst 0xf940dfa1
.inst 0xd5033bbf
.inst 0xf940dba0
.inst 0xf900c7a0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xd2800000
.inst 0xf900a7a0
.inst 0xf900aba0
.inst 0xf900afa0
.inst 0xf900b3a0
.inst 0xf900b7a0
.inst 0xf900bba0
.inst 0xf900bfa0
.inst 0xf900c3a0
.inst 0x910623a0
bl .Lp_7
.inst 0x93407c00
.inst 0xaa0003f7
.inst 0xaa1703e0
.inst 0xd280009e
.inst 0x6b1e001f
.inst 0x5400044d
.inst 0x531f7ae1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 216]
bl .Lp_8
.inst 0xd2800001
.inst 0xf9006fa1
.inst 0xf90073a1
.inst 0x910363b6
.inst 0xaa0003f5
.inst 0xb50000a0
.inst 0xd2800000
.inst 0xf90002c0
.inst 0xf90006c0
.inst 0x1400000e
.inst 0xf94002a0
.inst 0xf9400c00

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 224]
.inst 0xeb01001f
.inst 0x9a9f07e0
.inst 0x35003640
.inst 0x394002be
.inst 0x910082a0
.inst 0xf90002c0
.inst 0xb9801aa0
.inst 0xb9000ac0
.inst 0xf9406fa0
.inst 0xf90067a0
.inst 0xf94073a0
.inst 0xf9006ba0
.inst 0x1400000c
.inst 0xd2800000
.inst 0xf9005fa0
.inst 0xf90063a0
.inst 0x910523a0
.inst 0xf9005fa0
.inst 0xd280011e
.inst 0xb900c3be
.inst 0xf9405fa0
.inst 0xf90067a0
.inst 0xf94063a0
.inst 0xf9006ba0
.inst 0xf94067a0
.inst 0xf9009fa0
.inst 0xf9406ba0
.inst 0xf900a3a0
.inst 0x9104e3b6
.inst 0xd2a00015
.inst 0xaa1703f4
.inst 0x2a1503e0
.inst 0x2a1703e1
.inst 0x8b010000
.inst 0xb98143a1
.inst 0x2a0103e1
.inst 0xeb01001f
.inst 0x54003208
.inst 0xf94002c0
.inst 0x2a1503e1
.inst 0xd37df021
.inst 0x8b010000
.inst 0xd2800001
.inst 0xf90057a1
.inst 0xf9005ba1
.inst 0xf90057a0
.inst 0xb900b3b4
.inst 0xf94057a0
.inst 0xf90097a0
.inst 0xf9405ba0
.inst 0xf9009ba0
.inst 0x9104e3b6
.inst 0xaa1703f5
.inst 0xaa1703f4
.inst 0x2a1703e0
.inst 0x2a1703e1
.inst 0x8b010000
.inst 0xb98143a1
.inst 0x2a0103e1
.inst 0xeb01001f
.inst 0x54002f48
.inst 0xf94002c0
.inst 0x2a1503e1
.inst 0xd37df021
.inst 0x8b010000
.inst 0xd2800001
.inst 0xf9004fa1
.inst 0xf90053a1
.inst 0xf9004fa0
.inst 0xb900a3b4
.inst 0xf9404fa0
.inst 0xf9008fa0
.inst 0xf94053a0
.inst 0xf90093a0
.inst 0xd2800000
.inst 0xf90083a0
.inst 0xf90087a0
.inst 0xf9008ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 232]
.inst 0xaa1803e0
bl .Lp_9
.inst 0xaa0003f7
.inst 0xaa1703e0
.inst 0xb4001dc0
.inst 0xd2a00015
.inst 0x1400005a

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf940c7a0
.inst 0x93407ea1
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54002cc9
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400016
.inst 0xaa1603e0
.inst 0x3940c000
.inst 0x340008c0
.inst 0x110006b9
.inst 0x14000015

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf940c7a0
.inst 0x93407f21
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54002a29
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400000
.inst 0x3940c000
.inst 0x34000040
bl .Lp_10
.inst 0x11000739
.inst 0xf940c7a1
.inst 0xb9801820
.inst 0x6b00033f
.inst 0x54fffd2b
.inst 0xf9400ec0
.inst 0xb9801801
.inst 0x9104a3a1
.inst 0xf9400020
.inst 0xb9800821
.inst 0x2a0103e1
bl .Lp_11
.inst 0xf94097a0
.inst 0xf9003ba0
.inst 0xf9409ba0
.inst 0xf9003fa0
.inst 0x910403a0
.inst 0xf900dba0
.inst 0xd5033bbf
.inst 0xf940dba0
.inst 0xf90083b6
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0x910403a0
.inst 0x91002000
.inst 0xf9403ba1
.inst 0xf9000001
.inst 0xf9403fa1
.inst 0xf9000401
.inst 0x910403a0
.inst 0xaa1a03e1
.inst 0xaa1703e2
bl .Lp_12
.inst 0x93407c00
.inst 0x9280001e
.inst 0x6b1e001f
.inst 0x54000041
bl .Lp_13
.inst 0x910403a0
.inst 0xaa1803e1
bl .Lp_14
.inst 0x140000f4
.inst 0x110006b5
.inst 0xf940c7a1
.inst 0xb9801820
.inst 0x6b0002bf
.inst 0x54fff48b
.inst 0x92800015
.inst 0xd2800000
.inst 0xf90077a0
.inst 0xf9007ba0
.inst 0xf9007fa0
.inst 0xd2a00000
.inst 0x53001c14
.inst 0xd2a00013
.inst 0x1400007a

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf940c7a0
.inst 0x93407e61
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54002009
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400016
.inst 0xf9400ec0
.inst 0xb9801801
.inst 0x9104a3a1
.inst 0xf9400020
.inst 0xb9800821
.inst 0x2a0103e1
bl .Lp_11
.inst 0xf94097a0
.inst 0xf90033a0
.inst 0xf9409ba0
.inst 0xf90037a0
.inst 0x910403a0
.inst 0xf900dba0
.inst 0xd5033bbf
.inst 0xf940dba0
.inst 0xf90083b6
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0x910403a0
.inst 0x91002000
.inst 0xf94033a1
.inst 0xf9000001
.inst 0xf94037a1
.inst 0xf9000401
.inst 0x910403a0
.inst 0xaa1a03e1
.inst 0xaa1703e2
bl .Lp_12
.inst 0x93407c00
.inst 0xaa0003f6
.inst 0x6b1602bf
.inst 0x540007ea
.inst 0xaa1603f5
.inst 0x9104a3b6
.inst 0xf9408fa0
.inst 0xf90047a0
.inst 0xf94093a0
.inst 0xf9004ba0
.inst 0xb98133a0
.inst 0xb98093a1
.inst 0x6b01001f
.inst 0x540003a8
.inst 0xf94047a2
.inst 0xf94002c1
.inst 0xb9800ac0
.inst 0x2a0003e0
.inst 0xaa0203f6
.inst 0xaa0103f4
.inst 0xf900d3a0
.inst 0xf90043bf
.inst 0xf940d3a0
.inst 0xeb1f001f
.inst 0x54000269

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 240]
.inst 0x910203a0
.inst 0xf900d7a0
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf940dc30
.inst 0xd63f0200
.inst 0xf940d7be
.inst 0xf90003c0
.inst 0xf94043a3
.inst 0xaa1603e0
.inst 0xaa1403e1
.inst 0xf940d3a2
bl .Lp_15
.inst 0x14000002
bl .Lp_16
.inst 0xf94083a0
.inst 0xf900dba0
.inst 0x9103a3a1
.inst 0xd5033bbf
.inst 0xf940dba0
.inst 0xf90077a0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x9103a3a0
.inst 0x91002000
.inst 0xf9408fa1
.inst 0xf9000001
.inst 0xf94093a1
.inst 0xf9000401
.inst 0xd2a00000
.inst 0x53001c14
.inst 0x14000005
.inst 0x6b1602bf
.inst 0x54000061
.inst 0xd2800020
.inst 0x53001c14
.inst 0x11000673
.inst 0xf940c7a1
.inst 0xb9801820
.inst 0x6b00027f
.inst 0x54fff08b
.inst 0x9280001e
.inst 0x6b1e02bf
.inst 0x540000c0
.inst 0x35000f34
.inst 0x9103a3a0
.inst 0xaa1803e1
bl .Lp_14
.inst 0x14000061
.inst 0xb9801b40
.inst 0x350000c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 248]
.inst 0xf9400017
.inst 0x1400002b
.inst 0xb9801b41

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 256]
bl .Lp_8
.inst 0xaa0003f7
.inst 0xd2a00016
.inst 0x14000020

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x93407ec0
.inst 0xb9801b41
.inst 0xeb00003f
.inst 0x10000011
.inst 0x54000da9
.inst 0xd37df000
.inst 0x8b000340
.inst 0x91008000
.inst 0xf9400000
.inst 0xaa0003e1
.inst 0xaa1703f5
.inst 0xaa1603f4
.inst 0xaa0103f3
.inst 0xb5000060
.inst 0xd2800013
.inst 0x14000003
.inst 0xf9400260
.inst 0xf9400c13
.inst 0x93407e81
.inst 0xaa1503e0
.inst 0xaa1303e2
.inst 0xf94002a3
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x110006d6
.inst 0xb9801ae0
.inst 0x6b0002df
.inst 0x54fffbeb
.inst 0xf940c7a2
.inst 0xaa1903e0
.inst 0xaa1703e1
.inst 0x910643a3
.inst 0x910663a4
bl .Lp_17
.inst 0xf940cba0
.inst 0xf940c7a1
bl .Lp_18
.inst 0xaa0003f6
.inst 0xf9400ec0
.inst 0xb9801801
.inst 0x9104a3a1
.inst 0xf9400020
.inst 0xb9800821
.inst 0x2a0103e1
bl .Lp_11
.inst 0xf94097a0
.inst 0xf9002ba0
.inst 0xf9409ba0
.inst 0xf9002fa0
.inst 0x910403a0
.inst 0xf900dba0
.inst 0xd5033bbf
.inst 0xf940dba0
.inst 0xf90083b6
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0x910403a0
.inst 0x91002000
.inst 0xf9402ba1
.inst 0xf9000001
.inst 0xf9402fa1
.inst 0xf9000401
.inst 0xf940cfa1
.inst 0x910403a0
.inst 0xaa1a03e2
bl .Lp_19
.inst 0x910403a0
.inst 0xaa1803e1
bl .Lp_14
.inst 0xa94153b3
.inst 0xa9425bb5
.inst 0xa94363b7
.inst 0xa9446bb9
.inst 0x910003bf
.inst 0xa8dc7bfd
.inst 0xd65f03c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd2800321
bl .Lp_20
.inst 0xaa0003e1
.inst 0xd2801d40
.inst 0xf2a04000
bl .Lp_2
bl .Lp_3
bl .Lp_21
bl .Lp_22
bl .Lp_22

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd2800a21
bl .Lp_20
.inst 0xf900dba0
.inst 0xd2801ca0
bl .Lp_23
.inst 0xaa0003e2
.inst 0xf940dba0
.inst 0xb9001055
.inst 0xaa1903e1
bl .Lp_24
.inst 0xaa0003e1
.inst 0xd2801d40
.inst 0xf2a04000
bl .Lp_2
bl .Lp_3
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateInstance_System_IServiceProvider_System_Type_object__,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateInstance_System_IServiceProvider_System_Type_object__
.Lme_5:
.text 0
	.balign 16
.Lm_6:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xaa0003fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9000fbf
.inst 0xaa1a03e0
.inst 0xf9400341
.inst 0xf941dc30
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf940a030
.inst 0xd63f0200
.inst 0x53001c00
.inst 0x350001e0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 208]
.inst 0xf9400000
.inst 0xf90013a0
.inst 0xaa1a03e0
bl .Lp_26
.inst 0xaa0003e2
.inst 0xf94013a3
.inst 0xaa0303e0
.inst 0xaa1a03e1
.inst 0x3940007e
bl .Lp_27
.inst 0x14000023

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 264]
.inst 0xf9400001
.inst 0xaa0103e0
.inst 0x3940003e
bl .Lp_28
.inst 0xaa0003e3
.inst 0xaa0303e0
.inst 0xaa1a03e1
.inst 0x910063a2
.inst 0x3940007e
bl .Lp_29
.inst 0x53001c00
.inst 0x34000060
.inst 0xf9400fa0
.inst 0x14000012
.inst 0xaa1a03e0
bl .Lp_26
.inst 0xf9000fa0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 264]
.inst 0xf9400001
.inst 0xaa0103e0
.inst 0x3940003e
bl .Lp_28
.inst 0xaa0003e3
.inst 0xf9400fa2
.inst 0xaa0303e0
.inst 0xaa1a03e1
.inst 0x3940007e
bl .Lp_30
.inst 0xf9400fa0
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type
.Lme_6:
.text 0
	.balign 16
.Lm_7:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa90167b8
.inst 0xf90013ba
.inst 0xaa0003fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1a03e0
.inst 0x3940035e
bl .Lp_31
.inst 0xaa0003fa
.inst 0xaa1a03e0
.inst 0xb9801801

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 272]
bl .Lp_8
.inst 0xaa0003f9
.inst 0xd2a00018
.inst 0x14000020

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x93407f00
.inst 0xb9801b41
.inst 0xeb00003f
.inst 0x10000011
.inst 0x540003c9
.inst 0xd37df000
.inst 0x8b000340
.inst 0x91008000
.inst 0xf9400000
.inst 0xf9001fa0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 280]
.inst 0xd2800701
bl .Lp_32
.inst 0xf9401fa1
.inst 0xf9001ba0
bl .Lp_33
.inst 0xf9401ba2
.inst 0x93407f01
.inst 0xaa1903e0
.inst 0xf9400323
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x11000718
.inst 0xb9801b40
.inst 0x6b00031f
.inst 0x54fffbeb
.inst 0xaa1903e0
.inst 0xa94167b8
.inst 0xf94013ba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type
.Lme_7:
.text 0
	.balign 16
.Lm_8:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_System_Type_System_Type__
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_System_Type_System_Type__,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_System_Type_System_Type__:
.inst 0xa9ba7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf90013bf
.inst 0xf90017bf
.inst 0xf9001bbf
.inst 0xd2800020
.inst 0x53001c00
.inst 0x350000a0
.inst 0xf9400ba0
.inst 0xf9400fa1
bl .Lp_34
.inst 0x1400002a
.inst 0xf9400ba0
.inst 0xf9400fa1
.inst 0x910083a2
.inst 0x9100a3a3
.inst 0x9100c3a4
bl .Lp_35
.inst 0xf9401ba0
.inst 0xf90023a0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 288]
.inst 0xd2800041
bl .Lp_8
.inst 0xaa0003e3
.inst 0xaa0303e0
.inst 0xf9002ba0
.inst 0xf94013a2
.inst 0xaa0303e0
.inst 0xd2800001
.inst 0xf9400063
.inst 0xf9408870
.inst 0xd63f0200
.inst 0xf9402ba3
.inst 0xaa0303e0
.inst 0xf90027a0
.inst 0xf94017a2
.inst 0xaa0303e0
.inst 0xd2800021
.inst 0xf9400063
.inst 0xf9408870
.inst 0xd63f0200
.inst 0xf94023a0
.inst 0xf94027a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 296]
bl .Lp_36
.inst 0xaa0003e1
.inst 0xaa0103e0
.inst 0x3940003e
bl .Lp_37
.inst 0x910003bf
.inst 0xa8c67bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_System_Type_System_Type__,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_System_Type_System_Type__
.Lme_8:
.text 0
	.balign 16
.Lm_9:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_T_REF_System_Type__
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_T_REF_System_Type__,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_T_REF_System_Type__:
.inst 0xa9ba7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 304]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38
.inst 0xf90013bf
.inst 0xf90017bf
.inst 0xf9001bbf
.inst 0xd2800020
.inst 0x53001c00
.inst 0x350007c0
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xd2800301
bl .Lp_32
.inst 0xaa0003e1
.inst 0xf9002ba1
.inst 0xf9002fa0
.inst 0xf9400fa0
.inst 0xf9400c00
.inst 0xf9400000
.inst 0xf9400ba1
bl .Lp_34
.inst 0xaa0003e1
.inst 0xf9402fa0
.inst 0x91004002
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf9000041
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xf90027a0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000a00
.inst 0xf9400fa0
.inst 0xf9401400
.inst 0xd2801001
bl .Lp_32
.inst 0xf90023a0
.inst 0xf94027a1
.inst 0xeb1f003f
.inst 0x10000011
.inst 0x54000880
.inst 0xd5033bbf
.inst 0xf94023a0
.inst 0xf9001001
.inst 0x91008002
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xf9400fa1
.inst 0xf9401821
.inst 0xf9002001
.inst 0xf9400822
.inst 0xf9001402
.inst 0xf9401822
.inst 0xf9000c02
.inst 0xf9401421
.inst 0xf9000801
.inst 0x1400002b
.inst 0xf9400fa0
.inst 0xf9400c00
.inst 0xf9400000
.inst 0xf9400ba1
.inst 0x910083a2
.inst 0x9100a3a3
.inst 0x9100c3a4
bl .Lp_35
.inst 0xf9401ba0
.inst 0xf90023a0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 288]
.inst 0xd2800041
bl .Lp_8
.inst 0xaa0003e3
.inst 0xaa0303e0
.inst 0xf9002ba0
.inst 0xf94013a2
.inst 0xaa0303e0
.inst 0xd2800001
.inst 0xf9400063
.inst 0xf9408870
.inst 0xd63f0200
.inst 0xf9402ba3
.inst 0xaa0303e0
.inst 0xf90027a0
.inst 0xf94017a2
.inst 0xaa0303e0
.inst 0xd2800021
.inst 0xf9400063
.inst 0xf9408870
.inst 0xd63f0200
.inst 0xf94023a0
.inst 0xf94027a1
.inst 0xf9400fa2
.inst 0xf940244f
bl .Lp_39
.inst 0xaa0003e1
.inst 0xaa0103e0
.inst 0x3940003e
bl .Lp_40
.inst 0x910003bf
.inst 0xa8c67bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_25
.inst 0xd2800dc0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_T_REF_System_Type__,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_T_REF_System_Type__
.Lme_9:
.text 0
	.balign 16
.Lm_a:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_:
.inst 0xa9b97bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2
.inst 0xf90017a3
.inst 0xf9001ba4

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9001fbf
.inst 0xf90023bf
.inst 0xf9400ba0
.inst 0xf9400fa1
.inst 0xd2800002
.inst 0x9100e3a3
.inst 0x910103a4
bl .Lp_17

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 312]

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 200]
bl .Lp_41
.inst 0xf90033a0
.inst 0xd5033bbf
.inst 0xf94033a0
.inst 0xf94013a1
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 320]

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 328]
bl .Lp_41
.inst 0xf9002fa0
.inst 0xd5033bbf
.inst 0xf9402fa0
.inst 0xf94017a3
.inst 0xf9000060
.inst 0xd349fc61
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9401fa0
.inst 0xf94023a1
.inst 0xf94013a2
.inst 0xf9400042
.inst 0xf9400063
bl .Lp_42
.inst 0xf9002ba0
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf9401ba1
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c77bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_
.Lme_a:
.text 0
	.balign 16
.Lm_e:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression:
.inst 0xa9b27bfd
.inst 0x910003fd
.inst 0xa90153b3
.inst 0xa9025bb5
.inst 0xa90363b7
.inst 0xa9046bb9
.inst 0xaa0003f7
.inst 0xaa0103f8
.inst 0xf9002ba2
.inst 0xf9002fa3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf90037bf
.inst 0xaa1703e0
.inst 0xf94002e1
.inst 0xf940b430
.inst 0xd63f0200
.inst 0xaa0003f6
.inst 0xaa1603e0
.inst 0xb9801801

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 336]
bl .Lp_8
.inst 0xaa0003f5
.inst 0xd2a00014
.inst 0x14000124

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x93407e80
.inst 0xb9801ac1
.inst 0xeb00003f
.inst 0x10000011
.inst 0x54002cc9
.inst 0xd37df000
.inst 0x8b0002c0
.inst 0x91008000
.inst 0xf9400013
.inst 0xaa1303e1
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf9406c30
.inst 0xd63f0200
.inst 0xf9003ba0
.inst 0xaa1303e0
.inst 0x9101a3a1
bl .Lp_43
.inst 0x53001c00
.inst 0x53001c1a
.inst 0x93407e80
.inst 0xb9801b01
.inst 0xeb00003f
.inst 0x10000011
.inst 0x54002a49
.inst 0xd37df000
.inst 0x8b000300
.inst 0x39408000
.inst 0x53001c00
.inst 0x34000760

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 336]
.inst 0xd2800021
bl .Lp_8
.inst 0xf90057a0
.inst 0xf9004ba0
.inst 0x93407e80
.inst 0xb9801b01
.inst 0xeb00003f
.inst 0x10000011
.inst 0x54002829
.inst 0xd37df000
.inst 0x8b000300
.inst 0x91008000
.inst 0xb9800001
.inst 0xb90063a1
.inst 0xb9800400
.inst 0xb90067a0
.inst 0xf94033a0
bl .Lp_44
.inst 0xf90053a0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 344]
.inst 0xd2800301
bl .Lp_32
.inst 0xaa0003e2
.inst 0xf94053a0
.inst 0xf94057a3
.inst 0xf9004fa0
.inst 0x91004041
.inst 0xd5033bbf
.inst 0xf9404fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x4, [x16, 16]
.inst 0x8b040021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0303e0
.inst 0xd2800001
.inst 0xf9400063
.inst 0xf9408870
.inst 0xd63f0200
.inst 0xf9404ba1
.inst 0xf9402fa0
bl .Lp_45
.inst 0xaa0003e2
.inst 0x93407e81
.inst 0xaa1503e0
.inst 0xf94002a3
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x1400008c

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 352]
.inst 0xaa1303e0
.inst 0xd2a00002
bl .Lp_46
.inst 0xaa0003f3
.inst 0xb4000173
.inst 0xf9400260
.inst 0xf9400000
.inst 0xf9400800
.inst 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 360]
.inst 0xeb01001f
.inst 0x10000011
.inst 0x54002081
.inst 0xf9003fb3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 336]
.inst 0xd28000a1
bl .Lp_8
.inst 0xaa0003e3
.inst 0xaa0303e0
.inst 0xf9006ba0
.inst 0xaa0303e0
.inst 0xd2800001
.inst 0xf9402ba2
.inst 0xf9400063
.inst 0xf9408870
.inst 0xd63f0200
.inst 0xf9406ba0
.inst 0xf90067a0
.inst 0xf90063a0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 368]
.inst 0xf9403ba0
bl .Lp_47
.inst 0xaa0003e2
.inst 0xf94067a3
.inst 0xaa0303e0
.inst 0xd2800021
.inst 0xf9400063
.inst 0xf9408870
.inst 0xd63f0200
.inst 0xf94063a0
.inst 0xf9005fa0
.inst 0xf9005ba0
.inst 0xaa1703e0
.inst 0xf94002e1
.inst 0xf9406c30
.inst 0xd63f0200

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 368]
bl .Lp_47
.inst 0xaa0003e2
.inst 0xf9405fa3
.inst 0xaa0303e0
.inst 0xd2800041
.inst 0xf9400063
.inst 0xf9408870
.inst 0xd63f0200
.inst 0xf9405ba0
.inst 0xf90057a0
.inst 0xf9004ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 376]
.inst 0xd2800221
bl .Lp_32
.inst 0x3900401a
.inst 0xf90053a0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 344]
.inst 0xd2800301
bl .Lp_32
.inst 0xaa0003e2
.inst 0xf94053a0
.inst 0xf94057a3
.inst 0xf9004fa0
.inst 0x91004041
.inst 0xd5033bbf
.inst 0xf9404fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x4, [x16, 16]
.inst 0x8b040021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0303e0
.inst 0xd2800061
.inst 0xf9400063
.inst 0xf9408870
.inst 0xd63f0200
.inst 0xf9404ba0
.inst 0xaa0003f9
.inst 0xaa0003f3
.inst 0xd280009e
.inst 0xb90083be
.inst 0xf9403fa0
.inst 0xb5000060
.inst 0xf9003fbf
.inst 0x14000004
.inst 0xf9403fa0
bl .Lp_48
.inst 0xf9003fa0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 384]
.inst 0xf9403fa0
bl .Lp_47
.inst 0xaa0003e2
.inst 0xb98083a0
.inst 0x93407c01
.inst 0xaa1303e0
.inst 0xf9400263
.inst 0xf9408870
.inst 0xd63f0200
.inst 0xaa1903f3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 392]
.inst 0xf9400000
.inst 0xaa1903e1
bl .Lp_49
.inst 0xaa0003e2
.inst 0x93407e81
.inst 0xaa1503e0
.inst 0xf94002a3
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x3400051a
.inst 0xf94037a0
.inst 0xf9004fa0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 344]
.inst 0xd2800301
bl .Lp_32
.inst 0xaa0003e1
.inst 0xf9404fa0
.inst 0xf9004ba0
.inst 0x91004022
.inst 0xd5033bbf
.inst 0xf9404ba0
.inst 0xf9000040
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xaa0103fa
.inst 0x93407e80
.inst 0xb9801aa2
.inst 0xeb00005f
.inst 0x10000011
.inst 0x54000d69
.inst 0xd37df000
.inst 0x8b0002a0
.inst 0x91008000
.inst 0xf9400000
bl .Lp_50
.inst 0xaa0003e2
.inst 0x93407e81
.inst 0xaa1503e0
.inst 0xf94002a3
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x93407e80
.inst 0xb9801aa1
.inst 0xeb00003f
.inst 0x10000011
.inst 0x54000b69
.inst 0xd37df000
.inst 0x8b0002a0
.inst 0x91008000
.inst 0xf9400000
.inst 0xf9403ba1
bl .Lp_51
.inst 0xaa0003e2
.inst 0x93407e81
.inst 0xaa1503e0
.inst 0xf94002a3
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x11000694
.inst 0xb9801ac0
.inst 0x6b00029f
.inst 0x54ffdb6b

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 344]
.inst 0xd2800301
bl .Lp_32
.inst 0xaa0003e1
.inst 0xd2800000
.inst 0xf90063a0
.inst 0x91004022
.inst 0xd5033bbf
.inst 0xf94063a0
.inst 0xf900005f
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xf9402ba0
bl .Lp_52
.inst 0xf9004fa0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 400]
.inst 0xf9005fa0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 408]
.inst 0xd2801301
bl .Lp_32
.inst 0xf9405fa1
.inst 0xf9005ba0
bl .Lp_53
.inst 0xf9405ba0
.inst 0xf90057a0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 344]
.inst 0xd2800301
bl .Lp_32
.inst 0xf94057a1
.inst 0xf90053a0
.inst 0x91004002
.inst 0xd5033bbf
.inst 0xf94053a0
.inst 0xf9000041
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
bl .Lp_54
.inst 0xaa0003e1
.inst 0xf9404fa0
bl .Lp_55
.inst 0xf9004ba0
.inst 0xaa1703e0
.inst 0xaa1503e1
bl .Lp_56
.inst 0xaa0003e1
.inst 0xf9404ba0
bl .Lp_57
.inst 0xa94153b3
.inst 0xa9425bb5
.inst 0xa94363b7
.inst 0xa9446bb9
.inst 0x910003bf
.inst 0xa8ce7bfd
.inst 0xd65f03c0
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25
.inst 0xd2801d20
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
.Lme_e:
.text 0
	.balign 16
.Lm_10:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___:
.inst 0xa9ba7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2
.inst 0xf90017a3
.inst 0xf9001ba4

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9001fbf
.inst 0xf90023bf
.inst 0xf9400ba0
.inst 0xf9400fa1
.inst 0xf94013a2
.inst 0x9100e3a3
.inst 0x910103a4
bl .Lp_58
.inst 0x53001c00
.inst 0x35000100
.inst 0xf9400ba0
.inst 0xf9400fa1
.inst 0x9100e3a2
.inst 0x910103a3
bl .Lp_59
.inst 0x53001c00
.inst 0x34000400
.inst 0xf9401fa0
.inst 0xf9002fa0
.inst 0xd5033bbf
.inst 0xf9402fa0
.inst 0xf94017a1
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf94023a0
.inst 0xf9002ba0
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf9401ba1
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c67bfd
.inst 0xd65f03c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd2801fa1
bl .Lp_20
.inst 0xf9400ba1
bl .Lp_60
.inst 0xaa0003e1
.inst 0xd2801d40
.inst 0xf2a04000
bl .Lp_2
bl .Lp_3

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___
.Lme_10:
.text 0
	.balign 16
.Lm_12:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___:
.inst 0xa9b87bfd
.inst 0x910003fd
.inst 0xa90153b3
.inst 0xa9025bb5
.inst 0xa90367b8
.inst 0xf90023ba
.inst 0xf90027a0
.inst 0xaa0103f8
.inst 0xaa0203f9
.inst 0xf9002ba3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9002fbf
.inst 0xd5033bbf
.inst 0xf900033f
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf900001f
.inst 0xf94027a0
.inst 0xf94027a1
.inst 0x3940003e
bl .Lp_31
.inst 0xaa0003f6
.inst 0xd2a00015
.inst 0x1400004e

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x93407ea0
.inst 0xb9801ac1
.inst 0xeb00003f
.inst 0x10000011
.inst 0x54000ea9
.inst 0xd37df000
.inst 0x8b0002c0
.inst 0x91008000
.inst 0xf9400014
.inst 0xaa1403e1
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf940b430
.inst 0xd63f0200
.inst 0xaa1803e1
.inst 0x910163a2
bl .Lp_61
.inst 0x53001c00
.inst 0x34000680
.inst 0xf9400320
.inst 0xaa0003f3
.inst 0xf90033bf
.inst 0xf94033a0
.inst 0xb5000080
.inst 0xeb1f027f
.inst 0x9a9f17fa
.inst 0x1400000f
.inst 0xf94033a0
.inst 0xeb00027f
.inst 0x54000061
.inst 0xd280003a
.inst 0x1400000a
.inst 0xb4000113
.inst 0xaa1303e0
.inst 0xf94033a1
.inst 0xf9400262
.inst 0xf9402c50
.inst 0xd63f0200
.inst 0x53001c1a
.inst 0x14000002
.inst 0xd2a0001a
.inst 0x53001f40
.inst 0x6b1f001f
.inst 0x9a9f17e0
.inst 0x53001c00
.inst 0x35000800
.inst 0xd5033bbf
.inst 0xf9000334
.inst 0xd349ff20
.inst 0x92405800

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xf9402fa0
.inst 0xf9003ba0
.inst 0xd5033bbf
.inst 0xf9403ba0
.inst 0xf9402ba1
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x110006b5
.inst 0xb9801ac0
.inst 0x6b0002bf
.inst 0x54fff62b
.inst 0xf9400320
.inst 0xaa0003fa
.inst 0xd2800019
.inst 0xb5000099
.inst 0xeb1f035f
.inst 0x9a9f17fa
.inst 0x1400000e
.inst 0xeb19035f
.inst 0x54000061
.inst 0xd280003a
.inst 0x1400000a
.inst 0xb400011a
.inst 0xaa1a03e0
.inst 0xaa1903e1
.inst 0xf9400342
.inst 0xf9402c50
.inst 0xd63f0200
.inst 0x53001c1a
.inst 0x14000002
.inst 0xd2a0001a
.inst 0x53001f40
.inst 0x6b1f001f
.inst 0x9a9f17e0
.inst 0x53001c00
.inst 0x34000060
.inst 0xd2800020
.inst 0x14000002
.inst 0xd2a00000
.inst 0xa94153b3
.inst 0xa9425bb5
.inst 0xa94367b8
.inst 0xf94023ba
.inst 0x910003bf
.inst 0xa8c87bfd
.inst 0xd65f03c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd2802361
bl .Lp_20
.inst 0xf94027a1
bl .Lp_60
.inst 0xaa0003e1
.inst 0xd2801d40
.inst 0xf2a04000
bl .Lp_2
bl .Lp_3
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___
.Lme_12:
.text 0
	.balign 16
.Lm_13:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___:
.inst 0xa9b97bfd
.inst 0x910003fd
.inst 0xa90157b4
.inst 0xa9025fb6
.inst 0xa90367b8
.inst 0xf90023ba
.inst 0xaa0003f7
.inst 0xaa0103f8
.inst 0xf90027a2
.inst 0xaa0303f9
.inst 0xaa0403fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9002bbf
.inst 0xd2a00000
.inst 0x53001c16
.inst 0xd5033bbf
.inst 0xf900033f
.inst 0xd5033bbf
.inst 0xf900035f
.inst 0xf94027a0
.inst 0xb50001e0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 208]
.inst 0xf9400003
.inst 0xaa0303e0
.inst 0xaa1703e1
.inst 0x910123a2
.inst 0x3940007e
bl .Lp_5
.inst 0x53001c00
.inst 0x35000080
.inst 0xaa1703e0
bl .Lp_6
.inst 0xf90027a0
.inst 0xf94027b7
.inst 0xd2a00015
.inst 0x1400003d

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x93407ea0
.inst 0xb9801ae1
.inst 0xeb00003f
.inst 0x10000011
.inst 0x54000b09
.inst 0xd37df000
.inst 0x8b0002e0
.inst 0x91008000
.inst 0xf9400014
.inst 0xaa1403e0
.inst 0x3940c000
.inst 0x34000540
.inst 0x34000056
bl .Lp_10
.inst 0xf9400a81
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf940b430
.inst 0xd63f0200
.inst 0xaa1803e1
.inst 0x910143a2
bl .Lp_61
.inst 0x53001c00
.inst 0x35000040
bl .Lp_13
.inst 0xf9400a80
.inst 0xf90037a0
.inst 0xd5033bbf
.inst 0xf94037a0
.inst 0xf9000320
.inst 0xd349ff21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9402ba0
.inst 0xf90033a0
.inst 0xd5033bbf
.inst 0xf94033a0
.inst 0xf9000340
.inst 0xd349ff41
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xd2800020
.inst 0x53001c16
.inst 0x110006b5
.inst 0xb9801ae0
.inst 0x6b0002bf
.inst 0x54fff84b
.inst 0xf9400320
.inst 0xaa0003fa
.inst 0xd2800019
.inst 0xb5000099
.inst 0xeb1f035f
.inst 0x9a9f17fa
.inst 0x1400000e
.inst 0xeb19035f
.inst 0x54000061
.inst 0xd280003a
.inst 0x1400000a
.inst 0xb400011a
.inst 0xaa1a03e0
.inst 0xaa1903e1
.inst 0xf9400342
.inst 0xf9402c50
.inst 0xd63f0200
.inst 0x53001c1a
.inst 0x14000002
.inst 0xd2a0001a
.inst 0x53001f40
.inst 0x6b1f001f
.inst 0x9a9f17e0
.inst 0x53001c00
.inst 0x34000060
.inst 0xd2800020
.inst 0x14000002
.inst 0xd2a00000
.inst 0xa94157b4
.inst 0xa9425fb6
.inst 0xa94367b8
.inst 0xf94023ba
.inst 0x910003bf
.inst 0xa8c77bfd
.inst 0xd65f03c0
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___
.Lme_13:
.text 0
	.balign 16
.Lm_14:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___:
.inst 0xa9b97bfd
.inst 0x910003fd
.inst 0xa90157b4
.inst 0xa9025fb6
.inst 0xa90367b8
.inst 0xf90023ba
.inst 0xaa0003f8
.inst 0xaa0103f9
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xb9801b01

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 416]
bl .Lp_8
.inst 0xf90033a0
.inst 0xd5033bbf
.inst 0xf94033a0
.inst 0xf9000340
.inst 0xd349ff41
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xd2a00017
.inst 0x1400005b

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xd2a00000
.inst 0x53001c16
.inst 0x93407ee0
.inst 0xb9801b21
.inst 0xeb00003f
.inst 0x10000011
.inst 0x54000b29
.inst 0xd37df000
.inst 0x8b000320
.inst 0x91008000
.inst 0xf9400015
.inst 0xd2a00014
.inst 0x14000041

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400340
.inst 0x93407e81
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x540008e9
.inst 0xd37df021
.inst 0x8b010000
.inst 0x39408000
.inst 0x53001c00
.inst 0x350005e0
.inst 0x93407e80
.inst 0xb9801b01
.inst 0xeb00003f
.inst 0x10000011
.inst 0x540007a9
.inst 0xd37df000
.inst 0x8b000300
.inst 0x91008000
.inst 0xf9400001
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf9406c30
.inst 0xd63f0200
.inst 0xaa0003e2
.inst 0xaa0203e0
.inst 0xaa1503e1
.inst 0xf9400042
.inst 0xf9407850
.inst 0xd63f0200
.inst 0x53001c00
.inst 0x34000340
.inst 0xd2800020
.inst 0x53001c16
.inst 0xf9400340
.inst 0xb90053bf
.inst 0xb90057bf
.inst 0xb90057b7
.inst 0xd280003e
.inst 0x390143be
.inst 0xb98053a1
.inst 0xb9004ba1
.inst 0xb98057a1
.inst 0xb9004fa1
.inst 0x93407e81
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54000389
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xb9804ba1
.inst 0xb9000001
.inst 0xb9804fa1
.inst 0xb9000401
.inst 0x14000005
.inst 0x11000694
.inst 0xb9801b00
.inst 0x6b00029f
.inst 0x54fff7cb
.inst 0x35000076
.inst 0xd2a00000
.inst 0x14000006
.inst 0x110006f7
.inst 0xb9801b20
.inst 0x6b0002ff
.inst 0x54fff48b
.inst 0xd2800020
.inst 0xa94157b4
.inst 0xa9425fb6
.inst 0xa94367b8
.inst 0xf94023ba
.inst 0x910003bf
.inst 0xa8c77bfd
.inst 0xd65f03c0
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___
.Lme_14:
.text 0
	.balign 16
.Lm_1e:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities__cctor
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities__cctor,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities__cctor:
.inst 0xa9bc7bfd
.inst 0x910003fd

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 424]
.inst 0xd2800501
bl .Lp_32
.inst 0xf9001ba0
bl .Lp_62
.inst 0xf9401ba1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 208]
.inst 0xf90017a0
.inst 0xd5033bbf
.inst 0xf94017a0
.inst 0xf9000001

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 432]
.inst 0xd2800501
bl .Lp_32
.inst 0xf90013a0
bl .Lp_63
.inst 0xf94013a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 264]
.inst 0xf9000fa0
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000001

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 440]
.inst 0xd2801001
bl .Lp_32

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 448]
.inst 0xf9002001

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 456]
.inst 0xf9001402
.inst 0xf9401822
.inst 0xf9000c02
.inst 0xf9401421
.inst 0xf9000801
bl .Lp_64
.inst 0xaa0003e1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 392]
.inst 0xf9000ba0
.inst 0xd5033bbf
.inst 0xf9400ba0
.inst 0xf9000001
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities__cctor,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities__cctor
.Lme_1e:
.text 0
	.balign 16
.Lm_1f:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xa90163b7
.inst 0xa9026bb9
.inst 0xaa0003fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xd2a00019
.inst 0xd2a00018
.inst 0x1400001a

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400340
.inst 0x93407f01
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54000309
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400000
.inst 0xf9400c01
.inst 0xb9801820
.inst 0xaa0003f7
.inst 0x6b00033f
.inst 0x5400004a
.inst 0x14000002
.inst 0xaa1903f7
.inst 0xaa1703f9
.inst 0x11000718
.inst 0xf9400341
.inst 0xb9801820
.inst 0x6b00031f
.inst 0x54fffc8b
.inst 0xaa1903e0
.inst 0xa94163b7
.inst 0xa9426bb9
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_
.Lme_1f:
.text 0
	.balign 16
.Lm_27:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xaa0003fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401740
.inst 0xb5000200
.inst 0xf9400b40
bl .Lp_65
.inst 0xf90013a0
.inst 0x9100a341
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9401740
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker
.Lme_27:
.text 0
	.balign 16
.Lm_28:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa90163b7
.inst 0xa9026bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x91004320
.inst 0xf9001fa0
.inst 0xd5033bbf
.inst 0xf9401fa0
.inst 0xf900001a
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xaa1a03e0
.inst 0xf9400341
.inst 0xf940b430
.inst 0xd63f0200
.inst 0xf9001ba0
.inst 0x91006321
.inst 0xd5033bbf
.inst 0xf9401ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 464]
.inst 0xaa1a03e0
.inst 0xd2a00002
.inst 0xf9400343
.inst 0xf9405c70
.inst 0xd63f0200
.inst 0x3900c320
.inst 0xd2a0001a
.inst 0x14000046

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400f20
.inst 0x93407f41
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x540008c9
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400000

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 352]
.inst 0xd2a00002
bl .Lp_46
.inst 0xaa0003f8
.inst 0xb4000178
.inst 0xf9400300
.inst 0xf9400000
.inst 0xf9400800
.inst 0xf9400800

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 360]
.inst 0xeb01001f
.inst 0x10000011
.inst 0x540005c1
.inst 0xaa1803f7
.inst 0xb4000458
.inst 0xf9401320
.inst 0xb5000280
.inst 0xf9400f20
.inst 0xb9801801

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 216]
bl .Lp_8
.inst 0xf9001ba0
.inst 0x91008321
.inst 0xd5033bbf
.inst 0xf9401ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9401320
.inst 0xf9001ba0
.inst 0xaa1703e0
.inst 0x394002fe
bl .Lp_48
.inst 0xaa0003e2
.inst 0xf9401ba3
.inst 0x93407f41
.inst 0xaa0303e0
.inst 0xf9400063
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x1100075a
.inst 0xf9400f21
.inst 0xb9801820
.inst 0x6b00035f
.inst 0x54fff70b
.inst 0xa94163b7
.inst 0xa9426bb9
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2801d20
.inst 0xaa1103e1
bl .Lp_25
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo
.Lme_28:
.text 0
	.balign 16
.Lm_29:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9015fb6
.inst 0xa90267b8
.inst 0xf9001bba
.inst 0xaa0003f8
.inst 0xaa0103f9
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400f00
.inst 0x93407f41
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54000b89
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400017
.inst 0xf9401300
.inst 0xaa0003f8
.inst 0xb5000060
.inst 0xd2800018
.inst 0x1400000a
.inst 0x93407f40
.inst 0xb9801b01
.inst 0xeb00003f
.inst 0x10000011
.inst 0x540009c9
.inst 0xd37df000
.inst 0x8b000300
.inst 0x91008000
.inst 0xf9400018
.inst 0xaa1803fa
.inst 0xb4000698
.inst 0xaa1903f8
.inst 0xeb1f033f
.inst 0x540002a0
.inst 0xf9400336
.inst 0xb94032c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 472]
.inst 0xeb01001f
.inst 0x540001a3
.inst 0xf94012c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 472]
.inst 0x9343fc22
.inst 0x8b020000
.inst 0x39400000
.inst 0x12000822
.inst 0xd2800021
.inst 0x1ac22021
.inst 0xa010000
.inst 0xb5000040
.inst 0xd2800018
.inst 0xaa1803f9
.inst 0xb4000238
.inst 0xaa1703e0
.inst 0xf94002e1
.inst 0xf9406c30
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0xaa1903e0
.inst 0xaa1a03e2
.inst 0xf9400323

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 480]
.inst 0x928012f0
.inst 0xf8706870
.inst 0xd63f0200
.inst 0x53001c00
.inst 0x14000019

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd28041e1
bl .Lp_20
.inst 0xaa0003e1
.inst 0xd2801d40
.inst 0xf2a04000
bl .Lp_2
bl .Lp_3
.inst 0xaa1703e0
.inst 0xf94002e1
.inst 0xf9406c30
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0xaa1903e0
.inst 0xf9400322

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 488]
.inst 0x928011f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0x53001c00
.inst 0xa9415fb6
.inst 0xa94267b8
.inst 0xf9401bba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int
.Lme_29:
.text 0
	.balign 16
.Lm_2a:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9015fb6
.inst 0xa90267b8
.inst 0xf9001bba
.inst 0xaa0003f8
.inst 0xaa0103f9
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400f00
.inst 0x93407f41
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54000b49
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400017
.inst 0xf9401300
.inst 0xaa0003f8
.inst 0xb5000060
.inst 0xd2800018
.inst 0x1400000a
.inst 0x93407f40
.inst 0xb9801b01
.inst 0xeb00003f
.inst 0x10000011
.inst 0x54000989
.inst 0xd37df000
.inst 0x8b000300
.inst 0x91008000
.inst 0xf9400018
.inst 0xaa1803fa
.inst 0xb4000678
.inst 0xaa1903f8
.inst 0xeb1f033f
.inst 0x540002a0
.inst 0xf9400336
.inst 0xb94032c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 496]
.inst 0xeb01001f
.inst 0x540001a3
.inst 0xf94012c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 496]
.inst 0x9343fc22
.inst 0x8b020000
.inst 0x39400000
.inst 0x12000822
.inst 0xd2800021
.inst 0x1ac22021
.inst 0xa010000
.inst 0xb5000040
.inst 0xd2800018
.inst 0xaa1803f9
.inst 0xb4000218
.inst 0xaa1703e0
.inst 0xf94002e1
.inst 0xf9406c30
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0xaa1903e0
.inst 0xaa1a03e2
.inst 0xf9400323

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 504]
.inst 0x928005f0
.inst 0xf8706870
.inst 0xd63f0200
.inst 0x14000018

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd28041e1
bl .Lp_20
.inst 0xaa0003e1
.inst 0xd2801d40
.inst 0xf2a04000
bl .Lp_2
bl .Lp_3
.inst 0xaa1703e0
.inst 0xf94002e1
.inst 0xf9406c30
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0xaa1903e0
.inst 0xf9400322

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 512]
.inst 0x928007f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xa9415fb6
.inst 0xa94267b8
.inst 0xf9401bba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int
.Lme_2a:
.text 0
	.balign 16
.Lm_2d:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService:
.inst 0xa9ba7bfd
.inst 0x910003fd
.inst 0xa90157b4
.inst 0xa9025fb6
.inst 0xa90367b8
.inst 0xf90023ba
.inst 0xaa0003f8
.inst 0xaa0103f9
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf90027bf
.inst 0xd2a00017
.inst 0x14000074

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x93407ee0
.inst 0xb9801b21
.inst 0xeb00003f
.inst 0x10000011
.inst 0x540018a9
.inst 0xd37df000
.inst 0x8b000320
.inst 0x91008000
.inst 0xf9400000
.inst 0xaa0003f6
.inst 0xb5000060
.inst 0xd2800016
.inst 0x14000003
.inst 0xf94002c0
.inst 0xf9400c16
.inst 0xaa1603f5
.inst 0xd2a00000
.inst 0x53001c16
.inst 0xd2a00014
.inst 0x14000051

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xeb1f031f
.inst 0x10000011
.inst 0x54001600
.inst 0x91002302
.inst 0xf9400700
.inst 0x93407e81
.inst 0xb9800842
.inst 0xeb01005f
.inst 0x10000011
.inst 0x540014c9
.inst 0xd37df021
.inst 0x8b010000
.inst 0xf9400000
.inst 0xb5000780
.inst 0xf9400300
.inst 0xf9400c00
.inst 0x93407e81
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54001369
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400001
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf9406c30
.inst 0xd63f0200
.inst 0xaa0003e2
.inst 0xaa0203e0
.inst 0xaa1503e1
.inst 0xf9400042
.inst 0xf9407850
.inst 0xd63f0200
.inst 0x53001c00
.inst 0x340004a0
.inst 0xd2800020
.inst 0x53001c16
.inst 0xeb1f031f
.inst 0x10000011
.inst 0x54001120
.inst 0x91002302
.inst 0xf9400700
.inst 0x93407e81
.inst 0xb9800842
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54000fe9
.inst 0xd37df021
.inst 0x8b010001
.inst 0x93407ee0
.inst 0xb9801b22
.inst 0xeb00005f
.inst 0x10000011
.inst 0x54000f09
.inst 0xd37df000
.inst 0x8b000320
.inst 0x91008000
.inst 0xf9400000
.inst 0xf9002ba0
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x14000007
.inst 0x11000694
.inst 0xf9400300
.inst 0xf9400c01
.inst 0xb9801820
.inst 0x6b00029f
.inst 0x54fff58b
.inst 0x35000076
.inst 0x92800000
.inst 0x14000057
.inst 0x110006f7
.inst 0xb9801b20
.inst 0x6b0002ff
.inst 0x54fff16b
.inst 0xd2a00019
.inst 0x14000049

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xeb1f031f
.inst 0x10000011
.inst 0x54000a40
.inst 0x91002302
.inst 0xf9400700
.inst 0x93407f21
.inst 0xb9800842
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54000909
.inst 0xd37df021
.inst 0x8b010000
.inst 0xf9400000
.inst 0xb5000680
.inst 0xf9400303
.inst 0xaa0303e0
.inst 0xaa1a03e1
.inst 0xaa1903e2
.inst 0x3940007e
bl .Lp_66
.inst 0x53001c00
.inst 0x35000580
.inst 0xf9400300
.inst 0xf9400c00
.inst 0x93407f21
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x540006a9
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400000
.inst 0x910123a1
bl .Lp_43
.inst 0x53001c00
.inst 0x34000360
.inst 0xeb1f031f
.inst 0x10000011
.inst 0x540005a0
.inst 0x91002302
.inst 0xf9400700
.inst 0x93407f21
.inst 0xb9800842
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54000469
.inst 0xd37df021
.inst 0x8b010001
.inst 0xf94027a0
.inst 0xf9002ba0
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x14000003
.inst 0x92800000
.inst 0x1400000a
.inst 0x11000739
.inst 0xf9400300
.inst 0xf9400c01
.inst 0xb9801820
.inst 0x6b00033f
.inst 0x54fff68b
.inst 0xf9400300
.inst 0xf9400c01
.inst 0xb9801820
.inst 0xa94157b4
.inst 0xa9425fb6
.inst 0xa94367b8
.inst 0xf94023ba
.inst 0x910003bf
.inst 0xa8c67bfd
.inst 0xd65f03c0
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService
.Lme_2d:
.text 0
	.balign 16
.Lm_2e:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider:
.inst 0xa9b97bfd
.inst 0x910003fd
.inst 0xa90163b7
.inst 0xa9026bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9002bbf
.inst 0xd2a00018
.inst 0x14000060

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x54001640
.inst 0x91002322
.inst 0xf9400720
.inst 0x93407f01
.inst 0xb9800842
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54001509
.inst 0xd37df021
.inst 0x8b010000
.inst 0xf9400000
.inst 0xb5000960
.inst 0xf9400323
.inst 0xaa0303e0
.inst 0xaa1a03e1
.inst 0xaa1803e2
.inst 0x3940007e
bl .Lp_67
.inst 0xaa0003f7
.inst 0xaa1703e0
.inst 0xb5000540
.inst 0xf9400320
.inst 0xf9400c00
.inst 0x93407f01
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54001289
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400000
.inst 0x910143a1
bl .Lp_43
.inst 0x53001c00
.inst 0x34000cc0
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x54001180
.inst 0x91002322
.inst 0xf9400720
.inst 0x93407f01
.inst 0xb9800842
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54001049
.inst 0xd37df021
.inst 0x8b010001
.inst 0xf9402ba0
.inst 0xf90033a0
.inst 0xd5033bbf
.inst 0xf94033a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x14000019
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x54000e40
.inst 0x91002322
.inst 0xf9400720
.inst 0x93407f01
.inst 0xb9800842
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54000d09
.inst 0xd37df021
.inst 0x8b010000
.inst 0xf90033a0
.inst 0xd5033bbf
.inst 0xf94033a0
.inst 0xf9000017
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0x11000718
.inst 0xf9400320
.inst 0xf9400c01
.inst 0xb9801820
.inst 0x6b00031f
.inst 0x54fff3ab
.inst 0xf9400321
.inst 0xaa0103e0
.inst 0x3940003e
bl .Lp_68
.inst 0xaa0003fa
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x540009e0
.inst 0x91002321
.inst 0xf9400320
.inst 0xf9400c00
.inst 0xb9801802
.inst 0xaa0103f9
.inst 0xd2a00018
.inst 0xaa0203f7
.inst 0x2a1803e0
.inst 0x2a0203e2
.inst 0x8b020000
.inst 0xb9800821
.inst 0x2a0103e1
.inst 0xeb01001f
.inst 0x540007a8
.inst 0xf9400320
.inst 0x2a1803e1
.inst 0xd37df021
.inst 0x8b010000
.inst 0xd2800001
.inst 0xf90023a1
.inst 0xf90027a1
.inst 0xf90023a0
.inst 0xb9004bb7
.inst 0xf94023a0
.inst 0xf9001ba0
.inst 0xf94027a0
.inst 0xf9001fa0
.inst 0xaa1a03e0
.inst 0xf9401ba1
.inst 0xf9401fa2
.inst 0x3940035e
bl .Lp_69
.inst 0xa94163b7
.inst 0xa9426bb9
.inst 0x910003bf
.inst 0xa8c77bfd
.inst 0xd65f03c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd28015e1
bl .Lp_20
.inst 0xf90033a0
.inst 0xf9400320
.inst 0xf9400c00
.inst 0x93407f01
.inst 0xb9801802
.inst 0xeb01005f
.inst 0x10000011
.inst 0x54000349
.inst 0xd37df021
.inst 0x8b010000
.inst 0x91008000
.inst 0xf9400001
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf9406c30
.inst 0xd63f0200
.inst 0xf90037a0
.inst 0xf9400320
.inst 0xf9400801
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf9406c30
.inst 0xd63f0200
.inst 0xaa0003e2
.inst 0xf94033a0
.inst 0xf94037a1
bl .Lp_24
.inst 0xaa0003e1
.inst 0xd2801d40
.inst 0xf2a04000
bl .Lp_2
bl .Lp_3
bl .Lp_22
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider
.Lme_2e:
.text 0
	.balign 16
.Lm_3b:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__ctor
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__ctor,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__ctor:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__ctor,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__ctor
.Lme_3b:
.text 0
	.balign 16
.Lm_3c:
	.local Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__CreateFactoryb__0_System_IServiceProvider_object__
	.type Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__CreateFactoryb__0_System_IServiceProvider_object__,@function
Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__CreateFactoryb__0_System_IServiceProvider_object__:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xf9400803
.inst 0xaa0303e0
.inst 0xf9400fa1
.inst 0xf94013a2
.inst 0xf9001fa3
.inst 0xf9400c70
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0xf9401fa0
.inst 0xf9001ba1
.inst 0xf9400ba0
.inst 0xf9400000
bl .Lp_70
.inst 0xaa0003e2
.inst 0xf9401ba0
.inst 0xf9400441
bl .Lp_71
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__CreateFactoryb__0_System_IServiceProvider_object__,.-Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__CreateFactoryb__0_System_IServiceProvider_object__
.Lme_3c:
.text 0
	.balign 16
.Lm_41:
	.local Microsoft_Extensions_DependencyInjection_KeyedService_get_AnyKey
	.type Microsoft_Extensions_DependencyInjection_KeyedService_get_AnyKey,@function
Microsoft_Extensions_DependencyInjection_KeyedService_get_AnyKey:
.inst 0xa9bf7bfd
.inst 0x910003fd

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 520]
.inst 0xf9400000
.inst 0x910003bf
.inst 0xa8c17bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_KeyedService_get_AnyKey,.-Microsoft_Extensions_DependencyInjection_KeyedService_get_AnyKey
.Lme_41:
.text 0
	.balign 16
.Lm_42:
	.local Microsoft_Extensions_DependencyInjection_KeyedService__cctor
	.type Microsoft_Extensions_DependencyInjection_KeyedService__cctor,@function
Microsoft_Extensions_DependencyInjection_KeyedService__cctor:
.inst 0xa9be7bfd
.inst 0x910003fd

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 528]
.inst 0xd2800201
bl .Lp_32
.inst 0xaa0003e1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 520]
.inst 0xf9000ba0
.inst 0xd5033bbf
.inst 0xf9400ba0
.inst 0xf9000001
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_KeyedService__cctor,.-Microsoft_Extensions_DependencyInjection_KeyedService__cctor
.Lme_42:
.text 0
	.balign 16
.Lm_50:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Count
	.type Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Count,@function
Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Count:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9400ba0
.inst 0xf9400800
.inst 0xaa0003e1
.inst 0x3940003e
.inst 0xb9801800
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Count,.-Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Count
.Lme_50:
.text 0
	.balign 16
.Lm_52:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Item_int
	.type Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Item_int,@function
Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Item_int:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xf9400802
.inst 0xaa0203e0
.inst 0xb9801ba1
.inst 0x3940005e
bl .Lp_72
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Item_int,.-Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Item_int
.Lme_52:
.text 0
	.balign 16
.Lm_56:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollection_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int
	.type Microsoft_Extensions_DependencyInjection_ServiceCollection_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int,@function
Microsoft_Extensions_DependencyInjection_ServiceCollection_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xf9400803
.inst 0xaa0303e0
.inst 0xf9400fa1
.inst 0xb98023a2
.inst 0x3940007e
bl .Lp_73
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollection_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int,.-Microsoft_Extensions_DependencyInjection_ServiceCollection_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int
.Lme_56:
.text 0
	.balign 16
.Lm_59:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollection_System_Collections_Generic_ICollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Add_Microsoft_Extensions_DependencyInjection_ServiceDescriptor
	.type Microsoft_Extensions_DependencyInjection_ServiceCollection_System_Collections_Generic_ICollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Add_Microsoft_Extensions_DependencyInjection_ServiceDescriptor,@function
Microsoft_Extensions_DependencyInjection_ServiceCollection_System_Collections_Generic_ICollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Add_Microsoft_Extensions_DependencyInjection_ServiceDescriptor:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xa90163b7
.inst 0xa9026bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0x39406320
.inst 0x34000160

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd2804be1
bl .Lp_20
.inst 0xaa0003e1
.inst 0xd2801d40
.inst 0xf2a04000
bl .Lp_2
bl .Lp_3
.inst 0xf9400b20
.inst 0xaa0003f9
.inst 0xaa1a03f8
.inst 0x3940033e
.inst 0xb9801f21
.inst 0x11000421
.inst 0xb9001c01
.inst 0xf9400b3a
.inst 0xb9801b37
.inst 0xaa1703e0
.inst 0xb9801b41
.inst 0x6b01001f
.inst 0x54000142
.inst 0x110006e0
.inst 0xb9001b20
.inst 0x93407ee1
.inst 0xaa1a03e0
.inst 0xaa1803e2
.inst 0xf9400343
.inst 0xf9408870
.inst 0xd63f0200
.inst 0x14000004
.inst 0xaa1903e0
.inst 0xaa1803e1
bl .Lp_74
.inst 0xa94163b7
.inst 0xa9426bb9
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollection_System_Collections_Generic_ICollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Add_Microsoft_Extensions_DependencyInjection_ServiceDescriptor,.-Microsoft_Extensions_DependencyInjection_ServiceCollection_System_Collections_Generic_ICollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Add_Microsoft_Extensions_DependencyInjection_ServiceDescriptor
.Lme_59:
.text 0
	.balign 16
.Lm_61:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollection__ctor
	.type Microsoft_Extensions_DependencyInjection_ServiceCollection__ctor,@function
Microsoft_Extensions_DependencyInjection_ServiceCollection__ctor:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 536]
.inst 0xd2800401
bl .Lp_32

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 544]
.inst 0xf9400021
.inst 0xf90017a1
.inst 0xf90013a0
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf94017a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9400ba0
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollection__ctor,.-Microsoft_Extensions_DependencyInjection_ServiceCollection__ctor
.Lme_61:
.text 0
	.balign 16
.Lm_62:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb7
.inst 0xf9000fa0
.inst 0xf90013a1
.inst 0xf90017a2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94013a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 568]
.inst 0xf94017a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xf94017a2
.inst 0xd2800043
bl .Lp_75
.inst 0xf9400bb7
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
.Lme_62:
.text 0
	.balign 16
.Lm_63:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb7
.inst 0xf9000fa0
.inst 0xf90013a1
.inst 0xf90017a2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94013a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 576]
.inst 0xf94017a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xf94017a2
.inst 0xd2800043
bl .Lp_76
.inst 0xf9400bb7
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
.Lme_63:
.text 0
	.balign 16
.Lm_64:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 584]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401001
.inst 0xf9400fa0
.inst 0xf9401402
.inst 0xf9400ba0
bl .Lp_77
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
.Lme_64:
.text 0
	.balign 16
.Lm_65:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xf94013a2
bl .Lp_77
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type
.Lme_65:
.text 0
	.balign 16
.Lm_66:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 592]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401001
.inst 0xf9400ba0
bl .Lp_78
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
.Lme_66:
.text 0
	.balign 16
.Lm_67:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf90017af
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 600]
.inst 0xf94017a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 576]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xf94017a0
.inst 0xf9401001
.inst 0xf9400fa0
.inst 0xf94013a2
bl .Lp_79
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF
.Lme_67:
.text 0
	.balign 16
.Lm_68:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb7
.inst 0xf9000fa0
.inst 0xf90013a1
.inst 0xf90017a2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94013a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 576]
.inst 0xf94017a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xf94017a2
.inst 0xd2800023
bl .Lp_76
.inst 0xf9400bb7
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
.Lme_68:
.text 0
	.balign 16
.Lm_69:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf90017af
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 608]
.inst 0xf94017a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 576]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xf94017a0
.inst 0xf9401001
.inst 0xf9400fa0
.inst 0xf94013a2
bl .Lp_80
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF
.Lme_69:
.text 0
	.balign 16
.Lm_6a:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb7
.inst 0xf9000fa0
.inst 0xf90013a1
.inst 0xf90017a2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94013a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 568]
.inst 0xf94017a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xf94017a2
.inst 0xd2a00003
bl .Lp_75
.inst 0xf9400bb7
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
.Lme_6a:
.text 0
	.balign 16
.Lm_6b:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb7
.inst 0xf9000fa0
.inst 0xf90013a1
.inst 0xf90017a2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94013a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 576]
.inst 0xf94017a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xf94017a2
.inst 0xd2a00003
bl .Lp_76
.inst 0xf9400bb7
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
.Lme_6b:
.text 0
	.balign 16
.Lm_6c:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 616]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401001
.inst 0xf9400fa0
.inst 0xf9401402
.inst 0xf9400ba0
bl .Lp_81
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
.Lme_6c:
.text 0
	.balign 16
.Lm_6d:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xf94013a2
bl .Lp_81
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type
.Lme_6d:
.text 0
	.balign 16
.Lm_6e:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 624]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401001
.inst 0xf9400ba0
bl .Lp_82
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
.Lme_6e:
.text 0
	.balign 16
.Lm_6f:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf90017af
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 632]
.inst 0xf94017a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 576]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xf94017a0
.inst 0xf9401001
.inst 0xf9400fa0
.inst 0xf94013a2
bl .Lp_83
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF
.Lme_6f:
.text 0
	.balign 16
.Lm_70:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa90163b7
.inst 0xf90013ba
.inst 0xaa0003f8
.inst 0xf90017a1
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 552]
.inst 0xaa0003f7
.inst 0xb50000d8
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94017a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 640]
.inst 0xaa0003f7
.inst 0xb50000da
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 648]
.inst 0xd2800801
bl .Lp_32
.inst 0xf9001ba0
.inst 0xf94017a1
.inst 0xaa1a03e2
bl .Lp_84
.inst 0xf9401ba0
.inst 0xaa0003fa
.inst 0xaa1803e0
.inst 0xaa1a03e1
.inst 0xf9400302

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 656]
.inst 0x928005f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xaa1803e0
.inst 0xa94163b7
.inst 0xf94013ba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object
.Lme_70:
.text 0
	.balign 16
.Lm_71:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_TService_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_TService_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_TService_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf90017af
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 664]
.inst 0xf94017a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 552]
.inst 0xf9400fa0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 640]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xf94017a0
.inst 0xf9401001
.inst 0xf9400fa0
.inst 0xf94013a2
bl .Lp_85
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_TService_REF,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_TService_REF
.Lme_71:
.text 0
	.balign 16
.Lm_72:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2
.inst 0xf90017a3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 648]
.inst 0xd2800801
bl .Lp_32
.inst 0xf9001ba0
.inst 0xf9400fa1
.inst 0xf94013a2
.inst 0xb9802ba3
bl .Lp_86
.inst 0xf9401ba1
.inst 0xf9400ba0
.inst 0xf9400ba2
.inst 0xf9400042

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 656]
.inst 0x928005f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xf9400ba0
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
.Lme_72:
.text 0
	.balign 16
.Lm_73:
	.local Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2
.inst 0xf90017a3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 648]
.inst 0xd2800801
bl .Lp_32
.inst 0xf9001ba0
.inst 0xf9400fa1
.inst 0xf94013a2
.inst 0xb9802ba3
bl .Lp_87
.inst 0xf9401ba1
.inst 0xf9400ba0
.inst 0xf9400ba2
.inst 0xf9400042

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 656]
.inst 0x928005f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xf9400ba0
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
.Lme_73:
.text 0
	.balign 16
.Lm_74:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2
.inst 0xf90017a3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xf9400fa1
.inst 0xd2800002
.inst 0xf94013a3
.inst 0xb9802ba4
bl .Lp_88
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
.Lme_74:
.text 0
	.balign 16
.Lm_75:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf9000fa0
.inst 0xf90013a1
.inst 0xf90017a2
.inst 0xf9001ba3
.inst 0xaa0403fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xf94017a2
.inst 0xaa1a03e3
bl .Lp_89

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94013a0
.inst 0xaa0103fa
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1a03e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 568]
.inst 0xf9401ba0
.inst 0xaa0103fa
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1a03e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0x91008001
.inst 0xd5033bbf
.inst 0xf9401ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
.Lme_75:
.text 0
	.balign 16
.Lm_76:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xf9400fa1
.inst 0xd2800002
.inst 0xf94013a3
bl .Lp_90
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object
.Lme_76:
.text 0
	.balign 16
.Lm_77:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb9
.inst 0xf9000fa0
.inst 0xf90013a1
.inst 0xaa0203f9
.inst 0xf90017a3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xaa1903e2
.inst 0xd2a00003
bl .Lp_89

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94013a0
.inst 0xaa0103f9
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1903e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 672]
.inst 0xf94017a0
.inst 0xaa0103f9
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1903e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0x9100a001
.inst 0xd5033bbf
.inst 0xf94017a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9400bb9
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object
.Lme_77:
.text 0
	.balign 16
.Lm_78:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf9000fa0
.inst 0xf90013a1
.inst 0xf90017a2
.inst 0xaa0303fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xd2800002
.inst 0xaa1a03e3
bl .Lp_89

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf94013a0
.inst 0xaa0103fa
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1a03e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 680]
.inst 0xf94017a0
.inst 0xaa0103fa
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1a03e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0x9100c001
.inst 0xd5033bbf
.inst 0xf94017a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
.Lme_78:
.text 0
	.balign 16
.Lm_79:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2
.inst 0xf90017a3
.inst 0xb9802ba1
.inst 0xf9400ba0
.inst 0xb9003801
.inst 0xf9001ba0
.inst 0x91006002
.inst 0xd5033bbf
.inst 0xf9401ba0
.inst 0xf9400fa1
.inst 0xf9000041
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
.Lme_79:
.text 0
	.balign 16
.Lm_81:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xf9400800
.inst 0xeb1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x35000160
.inst 0xf9400ba0
.inst 0xf9401800

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 688]

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x2, [x16, 696]
bl .Lp_71
.inst 0x14000002
.inst 0xd2800000
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory
.Lme_81:
.text 0
	.balign 16
.Lm_85:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xa9016bb9
.inst 0xaa0003fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400b40
.inst 0xb5000840
.inst 0xaa1a03f9
.inst 0xf9400b40
.inst 0xeb1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x35000060
.inst 0xf9401339
.inst 0x14000002
.inst 0xd2800019
.inst 0xaa1903e0
.inst 0xd2800001
bl .Lp_91
.inst 0x53001c00
.inst 0x34000180
.inst 0xaa1a03f9
.inst 0xf9400b40
.inst 0xeb1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x35000060
.inst 0xf940133a
.inst 0x14000002
.inst 0xd280001a
.inst 0xaa1a03e0
.inst 0x1400004d
.inst 0xaa1a03f9
.inst 0xf9400b40
.inst 0xeb1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x35000060
.inst 0xf9401739
.inst 0x14000002
.inst 0xd2800019
.inst 0xb40001b9
.inst 0xaa1a03f9
.inst 0xf9400b40
.inst 0xeb1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x35000060
.inst 0xf940173a
.inst 0x14000002
.inst 0xd280001a
.inst 0xf9400340
.inst 0xf9400c00
.inst 0x14000037
.inst 0xaa1a03e0
bl .Lp_92
.inst 0xb4000660
.inst 0xaa1a03e0
bl .Lp_92
.inst 0xf9400000
.inst 0xf9400c01
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf9418030
.inst 0xd63f0200
.inst 0xb9801801
.inst 0xd280003e
.inst 0xeb1e003f
.inst 0x10000011
.inst 0x54000569
.inst 0xf9401400
.inst 0x14000025
.inst 0xaa1a03e0
bl .Lp_93
.inst 0xd2800001
bl .Lp_91
.inst 0x53001c00
.inst 0x34000080
.inst 0xaa1a03e0
bl .Lp_93
.inst 0x1400001c
.inst 0xaa1a03e0
bl .Lp_94
.inst 0xb40000c0
.inst 0xaa1a03e0
bl .Lp_94
.inst 0xf9400000
.inst 0xf9400c00
.inst 0x14000014
.inst 0xaa1a03e0
bl .Lp_95
.inst 0xb4000200
.inst 0xaa1a03e0
bl .Lp_95
.inst 0xf9400000
.inst 0xf9400c01
.inst 0xaa0103e0
.inst 0xf9400021
.inst 0xf9418030
.inst 0xd63f0200
.inst 0xb9801801
.inst 0xd280005e
.inst 0xeb1e003f
.inst 0x10000011
.inst 0x54000109
.inst 0xf9401800
.inst 0x14000002
.inst 0xd2800000
.inst 0xa9416bb9
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0
.inst 0xd2801be0
.inst 0xaa1103e1
bl .Lp_25

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType
.Lme_85:
.text 0
	.balign 16
.Lm_86:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_TService_REF_TImplementation_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_TService_REF_TImplementation_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_TService_REF_TImplementation_REF:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000baf

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 704]
.inst 0xf9400ba0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38
.inst 0xf9400ba0
.inst 0xf940100f
.inst 0xd2800000
.inst 0xd2800041
bl .Lp_96
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_TService_REF_TImplementation_REF,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_TService_REF_TImplementation_REF
.Lme_86:
.text 0
	.balign 16
.Lm_87:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_System_Type_System_Type
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_System_Type_System_Type,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_System_Type_System_Type:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 712]
.inst 0xf9400fa0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 568]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xd2800042
bl .Lp_97
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_System_Type_System_Type,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_System_Type_System_Type
.Lme_87:
.text 0
	.balign 16
.Lm_89:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_TImplementation_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_TImplementation_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_TImplementation_REF:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000baf

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 720]
.inst 0xf9400ba0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38
.inst 0xf9400ba0
.inst 0xf940100f
.inst 0xd2800000
.inst 0xd2800021
bl .Lp_98
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_TImplementation_REF,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_TImplementation_REF
.Lme_89:
.text 0
	.balign 16
.Lm_8a:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xf9400fa1
.inst 0xd2800022
bl .Lp_97
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type
.Lme_8a:
.text 0
	.balign 16
.Lm_8b:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 728]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 576]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xf9400ba1
.inst 0xd2800022
bl .Lp_99
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF
.Lme_8b:
.text 0
	.balign 16
.Lm_8c:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000baf

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 736]
.inst 0xf9400ba0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38
.inst 0xf9400ba0
.inst 0xf940100f
.inst 0xd2800000
.inst 0xd2a00001
bl .Lp_100
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF
.Lme_8c:
.text 0
	.balign 16
.Lm_8d:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 712]
.inst 0xf9400fa0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 568]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf94013a1
.inst 0xd2a00002
bl .Lp_97
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type
.Lme_8d:
.text 0
	.balign 16
.Lm_8e:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF_System_Func_2_System_IServiceProvider_TImplementation_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF_System_Func_2_System_IServiceProvider_TImplementation_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF_System_Func_2_System_IServiceProvider_TImplementation_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 744]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 576]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xf9400ba1
.inst 0xd2a00002
bl .Lp_99
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF_System_Func_2_System_IServiceProvider_TImplementation_REF,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF_System_Func_2_System_IServiceProvider_TImplementation_REF
.Lme_8e:
.text 0
	.balign 16
.Lm_8f:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 752]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 576]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xf9400ba1
.inst 0xd2a00002
bl .Lp_99
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF
.Lme_8f:
.text 0
	.balign 16
.Lm_90:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TService_REF
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TService_REF,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TService_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 760]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 640]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xf9400ba1
bl .Lp_101
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TService_REF,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TService_REF
.Lme_90:
.text 0
	.balign 16
.Lm_91:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 560]
.inst 0xf9400fa0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 640]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 648]
.inst 0xd2800801
bl .Lp_32
.inst 0xf9001ba0
.inst 0xf9400fa1
.inst 0xf94013a2
bl .Lp_84
.inst 0xf9401ba0
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object
.Lme_91:
.text 0
	.balign 16
.Lm_92:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf90013af
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 768]
.inst 0xf94013a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38
.inst 0xf94013a0
.inst 0xf9401000
.inst 0xf94013a1
.inst 0xf9401422
.inst 0xf9400ba1
.inst 0xb9801ba3
bl .Lp_102
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
.Lme_92:
.text 0
	.balign 16
.Lm_93:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 648]
.inst 0xd2800801
bl .Lp_32
.inst 0xf9001ba0
.inst 0xf9400ba1
.inst 0xf9400fa2
.inst 0xb98023a3
bl .Lp_86
.inst 0xf9401ba0
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
.Lme_93:
.text 0
	.balign 16
.Lm_94:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2
.inst 0xf90017a3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 648]
.inst 0xd2800801
bl .Lp_32
.inst 0xf9001ba0
.inst 0xf9400ba1
.inst 0xf9400fa2
.inst 0xf94013a3
.inst 0xb9802ba4
bl .Lp_88
.inst 0xf9401ba0
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
.Lme_94:
.text 0
	.balign 16
.Lm_95:
	.local Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1
.inst 0xf90013a2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 648]
.inst 0xd2800801
bl .Lp_32
.inst 0xf9001ba0
.inst 0xf9400ba1
.inst 0xf9400fa2
.inst 0xb98023a3
bl .Lp_87
.inst 0xf9401ba0
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
.Lme_95:
.text 0
	.balign 16
.Lm_97:
	.local Microsoft_Extensions_DependencyInjection_ServiceProviderKeyedServiceExtensions_GetKeyedService_T_REF_System_IServiceProvider_object
	.type Microsoft_Extensions_DependencyInjection_ServiceProviderKeyedServiceExtensions_GetKeyedService_T_REF_System_IServiceProvider_object,@function
Microsoft_Extensions_DependencyInjection_ServiceProviderKeyedServiceExtensions_GetKeyedService_T_REF_System_IServiceProvider_object:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa90163b7
.inst 0xf90013b9
.inst 0xf9001baf
.inst 0xaa0003f9
.inst 0xf90017a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 776]
.inst 0xf9401ba0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 200]
.inst 0xaa0003f8
.inst 0xb50000d9
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xaa1903f8
.inst 0xeb1f033f
.inst 0x540002a0
.inst 0xf9400337
.inst 0xb94032e0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 496]
.inst 0xeb01001f
.inst 0x540001a3
.inst 0xf94012e0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 496]
.inst 0x9343fc22
.inst 0x8b020000
.inst 0x39400000
.inst 0x12000822
.inst 0xd2800021
.inst 0x1ac22021
.inst 0xa010000
.inst 0xb5000040
.inst 0xd2800018
.inst 0xaa1803f9
.inst 0xb4000238
.inst 0xf9401ba0
.inst 0xf9401401
.inst 0xaa1903e0
.inst 0xf94017a2
.inst 0xf9400323

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 504]
.inst 0x928005f0
.inst 0xf8706870
.inst 0xd63f0200
.inst 0xf9401ba1
.inst 0xf9401022
.inst 0xf9400441
bl .Lp_71
.inst 0x1400000b

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd28041e1
bl .Lp_20
.inst 0xaa0003e1
.inst 0xd2801d40
.inst 0xf2a04000
bl .Lp_2
bl .Lp_3
.inst 0xa94163b7
.inst 0xf94013b9
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceProviderKeyedServiceExtensions_GetKeyedService_T_REF_System_IServiceProvider_object,.-Microsoft_Extensions_DependencyInjection_ServiceProviderKeyedServiceExtensions_GetKeyedService_T_REF_System_IServiceProvider_object
.Lme_97:
.text 0
	.balign 16
.Lm_99:
	.local Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_T_REF_System_IServiceProvider
	.type Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_T_REF_System_IServiceProvider,@function
Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_T_REF_System_IServiceProvider:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 784]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 200]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401401
.inst 0xf9400ba0
.inst 0xf9400ba2
.inst 0xf9400042

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 512]
.inst 0x928007f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xf9400fa1
.inst 0xf9401022
.inst 0xf9400441
bl .Lp_71
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_T_REF_System_IServiceProvider,.-Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_T_REF_System_IServiceProvider
.Lme_99:
.text 0
	.balign 16
.Lm_9a:
	.local Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type
	.type Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type,@function
Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xa90163b7
.inst 0xa9026bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 200]
.inst 0xaa0003f8
.inst 0xb50000d9
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 560]
.inst 0xaa0003f8
.inst 0xb50000da
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xaa1903f8
.inst 0xeb1f033f
.inst 0x540002a0
.inst 0xf9400337
.inst 0xb94032e0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 792]
.inst 0xeb01001f
.inst 0x540001a3
.inst 0xf94012e0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 792]
.inst 0x9343fc22
.inst 0x8b020000
.inst 0x39400000
.inst 0x12000822
.inst 0xd2800021
.inst 0x1ac22021
.inst 0xa010000
.inst 0xb5000040
.inst 0xd2800018
.inst 0xaa1803f7
.inst 0xb4000178
.inst 0xaa1703e0
.inst 0xaa1a03e1
.inst 0xf94002e2

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 800]
.inst 0x928012f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0x1400000d
.inst 0xaa1903e0
.inst 0xaa1a03e1
.inst 0xf9400322

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 512]
.inst 0x928007f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xaa0003f9
.inst 0xb40000e0
.inst 0xaa1903e0
.inst 0xa94163b7
.inst 0xa9426bb9
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd280a221
bl .Lp_20
.inst 0xaa1a03e1
bl .Lp_60
.inst 0xaa0003e1
.inst 0xd2801d40
.inst 0xf2a04000
bl .Lp_2
bl .Lp_3

	.size Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type,.-Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type
.Lme_9a:
.text 0
	.balign 16
.Lm_9b:
	.local Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_T_REF_System_IServiceProvider
	.type Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_T_REF_System_IServiceProvider,@function
Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_T_REF_System_IServiceProvider:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 808]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 200]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401401
.inst 0xf9400ba0
bl .Lp_103
.inst 0xf9400fa1
.inst 0xf9401022
.inst 0xf9400441
bl .Lp_71
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_T_REF_System_IServiceProvider,.-Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_T_REF_System_IServiceProvider
.Lme_9b:
.text 0
	.balign 16
.Lm_9c:
	.local Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetServices_T_REF_System_IServiceProvider
	.type Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetServices_T_REF_System_IServiceProvider,@function
Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetServices_T_REF_System_IServiceProvider:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 816]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 200]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf940100f
.inst 0xf9400ba0
bl .Lp_104
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetServices_T_REF_System_IServiceProvider,.-Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetServices_T_REF_System_IServiceProvider
.Lme_9c:
.text 0
	.balign 16
.Lm_9d:
	.local Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_CreateScope_System_IServiceProvider
	.type Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_CreateScope_System_IServiceProvider,@function
Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_CreateScope_System_IServiceProvider:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 824]
.inst 0xf9400ba0
bl .Lp_105
.inst 0xaa0003e1
.inst 0xaa0103e0
.inst 0xf9400021

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 832]
.inst 0x928000f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_CreateScope_System_IServiceProvider,.-Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_CreateScope_System_IServiceProvider
.Lme_9d:
.text 0
	.balign 16
.Lm_9e:
	.local Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor
	.type Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor,@function
Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xa90163b7
.inst 0xa9026bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 840]
.inst 0xaa0003f8
.inst 0xb50000d9
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 848]
.inst 0xaa0003f8
.inst 0xb50000da
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xaa1903e0
.inst 0xf9400321

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 856]
.inst 0x928012f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0x93407c00
.inst 0xaa0003f8
.inst 0xd2a00017
.inst 0x1400002a

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1903e0
.inst 0xaa1703e1
.inst 0xf9400322

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 864]
.inst 0x928002f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0x3940003e
.inst 0xf9400c00
.inst 0x3940035e
.inst 0xf9400f41
bl .Lp_106
.inst 0x53001c00
.inst 0x34000240
.inst 0xaa1903e0
.inst 0xaa1703e1
.inst 0xf9400322

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 864]
.inst 0x928002f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0x3940003e
.inst 0xf9400800
.inst 0x3940035e
.inst 0xf9400b41
bl .Lp_107
.inst 0x53001c00
.inst 0x350001a0
.inst 0x110006f7
.inst 0x6b1802ff
.inst 0x54fffacb
.inst 0xaa1903e0
.inst 0xaa1a03e1
.inst 0xf9400322

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 656]
.inst 0x928005f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xa94163b7
.inst 0xa9426bb9
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor,.-Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor
.Lme_9e:
.text 0
	.balign 16
.Lm_a1:
	.local Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.type Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,@function
Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb7
.inst 0xf9000fba
.inst 0xf90013a0
.inst 0xf90017a1
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 840]
.inst 0xf94013a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 712]
.inst 0xf94017a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 568]
.inst 0xaa0003f7
.inst 0xb50000da
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3
.inst 0xf94017a0
.inst 0xaa1a03e1
bl .Lp_108
.inst 0xaa0003fa
.inst 0xf94013a0
.inst 0xaa1a03e1
bl .Lp_109
.inst 0xf9400bb7
.inst 0xf9400fba
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,.-Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
.Lme_a1:
.text 0
	.balign 16
.Lm_a2:
	.local Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
	.type Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,@function
Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 872]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 840]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401001
.inst 0xf9400fa0
.inst 0xf9401402
.inst 0xf9400ba0
bl .Lp_110
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,.-Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
.Lme_a2:
.text 0
	.balign 16
.Lm_a3:
	.local Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF
	.type Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF,@function
Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf90013af
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 880]
.inst 0xf94013a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38
.inst 0xf94013a0
.inst 0xf940100f
.inst 0xf9400fa0
bl .Lp_111
.inst 0xaa0003e1
.inst 0xf9400ba0
bl .Lp_109
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF,.-Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF
.Lme_a3:
.text 0
	.balign 16
.Lm_a4:
	.local Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.type Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,@function
Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb7
.inst 0xf9000fba
.inst 0xf90013a0
.inst 0xf90017a1
.inst 0xaa0203fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 840]
.inst 0xf94013a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 712]
.inst 0xf94017a0
.inst 0xaa0103f7
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 568]
.inst 0xaa0003f7
.inst 0xb50000da
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1703e1
bl .Lp_2
bl .Lp_3
.inst 0xf94017a0
.inst 0xaa1a03e1
bl .Lp_112
.inst 0xaa0003fa
.inst 0xf94013a0
.inst 0xaa1a03e1
bl .Lp_109
.inst 0xf9400bb7
.inst 0xf9400fba
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,.-Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
.Lme_a4:
.text 0
	.balign 16
.Lm_a5:
	.local Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
	.type Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,@function
Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 888]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 840]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401001
.inst 0xf9400fa0
.inst 0xf9401002
.inst 0xf9400ba0
bl .Lp_113
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,.-Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
.Lme_a5:
.text 0
	.balign 16
.Lm_a6:
	.local Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
	.type Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,@function
Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 896]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 840]
.inst 0xf9400ba0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_2
bl .Lp_3
.inst 0xf9400fa0
.inst 0xf9401001
.inst 0xf9400fa0
.inst 0xf9401402
.inst 0xf9400ba0
bl .Lp_113
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection,.-Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection
.Lme_a6:
.text 0
	.balign 16
.Lm_a7:
	.local Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF
	.type Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF,@function
Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf90013af
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 904]
.inst 0xf94013a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_38
.inst 0xf94013a0
.inst 0xf940100f
.inst 0xf9400fa0
bl .Lp_114
.inst 0xaa0003e1
.inst 0xf9400ba0
bl .Lp_109
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF,.-Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF
.Lme_a7:
.text 0
	.balign 16
.Lm_a8:
	.local Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddEnumerable_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor
	.type Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddEnumerable_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor,@function
Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddEnumerable_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor:
.inst 0xa9bb7bfd
.inst 0x910003fd
.inst 0xa9015bb5
.inst 0xa90263b7
.inst 0xa9036bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 552]
.inst 0xaa0003f8
.inst 0xb50000d9
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 848]
.inst 0xaa0003f8
.inst 0xb50000da
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_2
bl .Lp_3
.inst 0xaa1a03e0
.inst 0x3940035e
bl .Lp_115
.inst 0xaa0003f8
.inst 0xaa1803e0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x1, [x16, 384]
bl .Lp_106
.inst 0x53001c00
.inst 0x35000980
.inst 0x3940035e
.inst 0xf9400f41
.inst 0xaa1803e0
bl .Lp_106
.inst 0x53001c00
.inst 0x350008c0
.inst 0xaa1903e0
.inst 0xf9400321

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 856]
.inst 0x928012f0
.inst 0xf8706830
.inst 0xd63f0200
.inst 0x93407c00
.inst 0xaa0003f7
.inst 0xd2a00016
.inst 0x14000029

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1903e0
.inst 0xaa1603e1
.inst 0xf9400322

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 864]
.inst 0x928002f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xaa0003f5
.inst 0xaa1503e0
.inst 0xaa0003e1
.inst 0x3940003e
.inst 0xf9400c00
.inst 0x3940035e
.inst 0xf9400f41
bl .Lp_106
.inst 0x53001c00
.inst 0x340001e0
.inst 0xaa1503e0
.inst 0x394002be
bl .Lp_115
.inst 0xaa1803e1
bl .Lp_106
.inst 0x53001c00
.inst 0x34000100
.inst 0x394002be
.inst 0xf9400aa0
.inst 0x3940035e
.inst 0xf9400b41
bl .Lp_107
.inst 0x53001c00
.inst 0x350001a0
.inst 0x110006d6
.inst 0x6b1702df
.inst 0x54fffaeb
.inst 0xaa1903e0
.inst 0xaa1a03e1
.inst 0xf9400322

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x15, [x16, 656]
.inst 0x928005f0
.inst 0xf8706850
.inst 0xd63f0200
.inst 0xa9415bb5
.inst 0xa94263b7
.inst 0xa9436bb9
.inst 0x910003bf
.inst 0xa8c57bfd
.inst 0xd65f03c0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd280aca1
bl .Lp_20
.inst 0x3940035e
.inst 0xf9400f42
.inst 0xaa1803e1
bl .Lp_24
.inst 0xf90023a0

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x0, [x16, 0]
.inst 0xd280a9e1
bl .Lp_20
.inst 0xaa0003e2
.inst 0xf94023a1
.inst 0xd2800dc0
.inst 0xf2a04000
bl .Lp_116
bl .Lp_3

	.size Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddEnumerable_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor,.-Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddEnumerable_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor
.Lme_a8:
.text 0
	.balign 16
.Lm_a9:
	.local _PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int
	.type _PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int,@function
_PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int:
.inst 0xa9bb7bfd
.inst 0x910003fd
.inst 0xf90023af
.inst 0xf90013a0
.inst 0xf90017a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
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
.Lme_a9:
.text 0
	.balign 16
.Lm_aa:
	.local _PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_REF_TElement_REF_TBuffer_REF__int
	.type _PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_REF_TElement_REF_TBuffer_REF__int,@function
_PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_REF_TElement_REF_TBuffer_REF__int:
.inst 0xa9bb7bfd
.inst 0x910003fd
.inst 0xf90023af
.inst 0xf90013a0
.inst 0xf90017a1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
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

	.size _PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_REF_TElement_REF_TBuffer_REF__int,.-_PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_REF_TElement_REF_TBuffer_REF__int
.Lme_aa:
.text 0
	.balign 16
.Lm_ab:
	.local _PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int
	.type _PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int,@function
_PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf90013af
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
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
.Lme_ab:
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
bl .Lm_5
bl .Lm_6
bl .Lm_7
bl .Lm_8
bl .Lm_9
bl .Lm_a
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_e
bl method_addresses
bl .Lm_10
bl method_addresses
bl .Lm_12
bl .Lm_13
bl .Lm_14
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_1e
bl .Lm_1f
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_27
bl .Lm_28
bl .Lm_29
bl .Lm_2a
bl method_addresses
bl method_addresses
bl .Lm_2d
bl .Lm_2e
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
bl .Lm_3b
bl .Lm_3c
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
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
bl method_addresses
bl method_addresses
bl .Lm_50
bl method_addresses
bl .Lm_52
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_56
bl method_addresses
bl method_addresses
bl .Lm_59
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_61
bl .Lm_62
bl .Lm_63
bl .Lm_64
bl .Lm_65
bl .Lm_66
bl .Lm_67
bl .Lm_68
bl .Lm_69
bl .Lm_6a
bl .Lm_6b
bl .Lm_6c
bl .Lm_6d
bl .Lm_6e
bl .Lm_6f
bl .Lm_70
bl .Lm_71
bl .Lm_72
bl .Lm_73
bl .Lm_74
bl .Lm_75
bl .Lm_76
bl .Lm_77
bl .Lm_78
bl .Lm_79
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_81
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_85
bl .Lm_86
bl .Lm_87
bl method_addresses
bl .Lm_89
bl .Lm_8a
bl .Lm_8b
bl .Lm_8c
bl .Lm_8d
bl .Lm_8e
bl .Lm_8f
bl .Lm_90
bl .Lm_91
bl .Lm_92
bl .Lm_93
bl .Lm_94
bl .Lm_95
bl method_addresses
bl .Lm_97
bl method_addresses
bl .Lm_99
bl .Lm_9a
bl .Lm_9b
bl .Lm_9c
bl .Lm_9d
bl .Lm_9e
bl method_addresses
bl method_addresses
bl .Lm_a1
bl .Lm_a2
bl .Lm_a3
bl .Lm_a4
bl .Lm_a5
bl .Lm_a6
bl .Lm_a7
bl .Lm_a8
bl .Lm_a9
bl .Lm_aa
bl .Lm_ab
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

	.byte 173,0,0,0,10,0,0,0,18,0,0,0,2,0,0,0,0,0,10,0,32,0,46,0,61,0,81,0,92,0,112,0
	.byte 122,0,148,0,159,0,170,0,181,0,197,0,213,0,224,0,244,0,255,0,0,0,0,0,0,1,15,10,9,9,53,255
	.byte 255,255,255,203,0,0,64,255,255,255,255,192,88,255,255,255,255,168,94,6,108,255,255,255,255,148,0,0,0,0,0,0
	.byte 0,0,116,15,255,255,255,255,125,0,0,0,0,0,0,128,137,128,141,9,9,255,255,255,255,97,0,128,168,4,255,255
	.byte 255,255,84,0,0,0,0,0,0,0,0,0,0,0,128,176,128,180,255,255,255,255,76,0,0,0,128,184,8,255,255,255
	.byte 255,64,0,0,0,0,0,0,0,0,0,0,0,0,128,201,255,255,255,255,55,128,205,255,255,255,255,51,0,0,128,209
	.byte 255,255,255,255,47,0,128,213,0,0,0,0,0,0,0,128,217,7,8,128,240,7,7,7,8,8,8,8,8,7,129,59
	.byte 7,8,10,8,7,7,4,7,4,129,128,7,255,255,255,254,121,0,0,0,0,0,0,129,139,0,0,0,129,146,4,6
	.byte 255,255,255,254,100,129,163,6,4,129,180,6,7,7,7,7,8,6,6,6,0,129,246,255,255,255,254,10,130,0,8,11
	.byte 7,7,7,255,255,255,253,216,0,130,51,8,7,6,8,7,7,6,11,130,115,4,255,255,255,253,137
.section ".rodata"
.subsection 0
	.balign 8
method_flags_table:

	.byte 0,0,0,0,0,5,5,5,5,5,5,0,0,0,5,0,1,0,1,5,5,0,0,0,0,0,0,0,0,0,5,1
	.byte 0,0,0,0,0,0,0,0,4,4,4,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,5,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,4,0,4,0,4,4,0,0,0,0,0,0,0
	.byte 0,4,0,0,0,0,4,4,0,4,0,4,4,4,4,4,4,4,4,4,4,4,0,4,0,4,4,4,4,4,4,0
	.byte 0,4,4,4,4,4,4,4,4,0,0,0,0
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

	.byte 73,0,15,0,78,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,18,0,76,0,13,0,0,0,1,0
	.byte 79,0,0,0,0,0,0,0,0,0,29,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,30,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,35,0,0,0,0,0,0,0,0,0,0,0,2,0,0,0,36,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,8,0,74,0,10,0,0,0,11,0,0,0,0,0
	.byte 0,0,12,0,0,0,4,0,0,0,34,0,0,0,26,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,20,0
	.byte 0,0,22,0,0,0,0,0,0,0,27,0,0,0,0,0,0,0,31,0,0,0,5,0,73,0,38,0,0,0,6,0
	.byte 0,0,17,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,0,0,0,0,0,0,37,0
	.byte 0,0,14,0,0,0,0,0,0,0,39,0,0,0,0,0,0,0,32,0,0,0,0,0,0,0,24,0,0,0,0,0
	.byte 0,0,23,0,0,0,7,0,0,0,9,0,75,0,19,0,0,0,21,0,77,0,25,0,0,0,28,0,0,0,33,0
	.byte 0,0
.section ".rodata"
.subsection 0
	.balign 8
got_info_offsets:

	.byte 114,0,0,0,10,0,0,0,12,0,0,0,2,0,0,0,0,0,11,0,22,0,33,0,44,0,55,0,66,0,77,0
	.byte 88,0,99,0,110,0,121,0,130,123,2,1,1,1,1,1,1,1,1,130,135,2,2,2,2,3,2,2,2,2,130,156
	.byte 3,2,3,3,3,3,4,10,10,130,209,10,6,6,4,5,3,7,43,90,131,134,7,4,6,4,7,3,7,5,7,131
	.byte 188,4,4,8,6,6,6,9,2,7,131,243,2,2,3,2,5,4,3,6,8,132,26,4,4,37,39,35,35,51,39,35
	.byte 133,67,4,3,28,18,4,4,6,40,29,133,242,47,54,64,37,37,54,41,41,23,135,131,20,52,29,12,2,4,4,11
	.byte 46,136,96,47,54,41
.section ".rodata"
.subsection 0
	.balign 8
ex_info_offsets:

	.byte 173,0,0,0,10,0,0,0,18,0,0,0,2,0,0,0,0,0,13,0,40,0,55,0,71,0,94,0,105,0,125,0
	.byte 135,0,161,0,172,0,197,0,208,0,224,0,241,0,5,1,26,1,43,1,0,0,0,0,0,139,140,131,101,128,177,119
	.byte 109,145,103,255,255,255,238,153,0,0,145,239,255,255,255,238,17,148,69,255,255,255,235,187,148,203,128,247,150,232,255,255
	.byte 255,233,24,0,0,0,0,0,0,0,0,151,237,114,255,255,255,231,161,0,0,0,0,0,0,152,185,152,248,128,236,128
	.byte 187,255,255,255,229,97,0,155,86,130,2,255,255,255,226,168,0,0,0,0,0,0,0,0,0,0,0,158,220,159,5,255
	.byte 255,255,224,251,0,0,0,159,65,25,255,255,255,224,166,0,0,0,0,0,0,0,0,0,0,0,0,159,131,255,255,255
	.byte 224,125,159,154,255,255,255,224,102,0,0,159,183,255,255,255,224,73,0,159,212,0,0,0,0,0,0,0,159,246,54,0
	.byte 160,95,61,41,59,255,255,255,255,44,129,23,255,255,255,254,233,0,129,90,255,255,255,255,22,161,195,59,67,83,67,0
	.byte 53,25,65,25,163,194,66,255,255,255,219,252,0,0,0,0,0,0,164,73,0,0,0,164,118,129,50,54,255,255,255,218
	.byte 34,166,9,54,25,166,148,255,255,255,255,74,128,236,60,60,58,53,52,35,255,255,255,255,221,0,168,43,255,255,255,215
	.byte 213,168,150,68,128,128,64,60,39,255,255,255,214,3,0,170,171,61,62,255,255,255,255,133,128,183,62,62,60,129,86,173
	.byte 192,80,255,255,255,209,240
.section ".rodata"
.subsection 1
	.balign 8
unwind_info:

	.byte 34,12,31,0,68,14,192,3,157,56,158,55,68,13,29,68,147,54,148,53,68,149,52,150,51,68,151,50,152,49,68,153
	.byte 48,154,47,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4,21,12,31,0,68,14,64,157,8,158,7,68
	.byte 13,29,68,152,6,153,5,68,154,4,13,12,31,0,68,14,96,157,12,158,11,68,13,29,13,12,31,0,68,14,112,157
	.byte 14,158,13,68,13,29,34,12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,147,26,148,25,68,149,24,150,23,68
	.byte 151,22,152,21,68,153,20,154,19,32,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68,149,12
	.byte 150,11,68,152,10,153,9,68,154,8,31,12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,149,11,68,150,10
	.byte 151,9,68,152,8,153,7,68,154,6,13,12,31,0,68,14,64,157,8,158,7,68,13,29,23,12,31,0,68,14,48,157
	.byte 6,158,5,68,13,29,68,151,4,152,3,68,153,2,154,1,23,12,31,0,68,14,64,157,8,158,7,68,13,29,68,151
	.byte 6,152,5,68,153,4,154,3,26,12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3
	.byte 68,154,2,31,12,31,0,68,14,96,157,12,158,11,68,13,29,68,148,10,149,9,68,150,8,151,7,68,152,6,153,5
	.byte 68,154,4,23,12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10,154,9,13,12,31,0,68
	.byte 14,32,157,4,158,3,68,13,29,13,12,31,0,68,14,16,157,2,158,1,68,13,29,13,12,31,0,68,14,48,157,6
	.byte 158,5,68,13,29,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,16,12,31,0,68,14,48,157,6,158
	.byte 5,68,13,29,68,152,4,21,12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,154,4,16,12,31
	.byte 0,68,14,64,157,8,158,7,68,13,29,68,154,6,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,18
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,154,1,16,12,31,0,68,14,64,157,8,158,7,68,13,29
	.byte 68,152,6,21,12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,19,12,31,0,68,14,48
	.byte 157,6,158,5,68,13,29,68,151,4,68,154,3,28,12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7
	.byte 68,151,6,152,5,68,153,4,154,3,13,12,31,0,68,14,80,157,10,158,9,68,13,29
.section ".rodata"
.subsection 0
	.balign 8
class_info_offsets:

	.byte 39,0,0,0,10,0,0,0,4,0,0,0,2,0,0,0,0,0,11,0,22,0,33,0,174,65,7,23,23,24,23,23
	.byte 23,23,23,175,24,23,23,5,35,35,7,24,20,7,175,208,7,7,7,7,7,65,5,37,23,176,138,35,103,103,23,23
	.byte 23,23,5

.text 0
	.balign 16
plt:
mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,@function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 920]
br x16
.inst 2315
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.local plt__jit_icall_mono_create_corlib_exception_1
	.type plt__jit_icall_mono_create_corlib_exception_1,@function
plt__jit_icall_mono_create_corlib_exception_1:
.Lp_2:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 928]
br x16
.inst 2318
	.size plt__jit_icall_mono_create_corlib_exception_1,.-plt__jit_icall_mono_create_corlib_exception_1
	.local plt__jit_icall_mono_arch_throw_exception
	.type plt__jit_icall_mono_arch_throw_exception,@function
plt__jit_icall_mono_arch_throw_exception:
.Lp_3:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 936]
br x16
.inst 2321
	.size plt__jit_icall_mono_arch_throw_exception,.-plt__jit_icall_mono_arch_throw_exception
	.local plt_System_Type_get_IsAbstract
	.type plt_System_Type_get_IsAbstract,@function
plt_System_Type_get_IsAbstract:
.Lp_4:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 944]
br x16
.inst 2323
	.size plt_System_Type_get_IsAbstract,.-plt_System_Type_get_IsAbstract
	.local plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___TryGetValue_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___
	.type plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___TryGetValue_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___,@function
plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___TryGetValue_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___:
.Lp_5:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 952]
br x16
.inst 2328
	.size plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___TryGetValue_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___,.-plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___TryGetValue_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type:
.Lp_6:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 960]
br x16
.inst 2339
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_:
.Lp_7:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 968]
br x16
.inst 2341
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_
	.local plt_wrapper_alloc_object_AllocVector_intptr_intptr
	.type plt_wrapper_alloc_object_AllocVector_intptr_intptr,@function
plt_wrapper_alloc_object_AllocVector_intptr_intptr:
.Lp_8:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 976]
br x16
.inst 2343
	.size plt_wrapper_alloc_object_AllocVector_intptr_intptr,.-plt_wrapper_alloc_object_AllocVector_intptr_intptr
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_System_IServiceProvider
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_System_IServiceProvider,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_System_IServiceProvider:
.Lp_9:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 984]
br x16
.inst 2351
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_System_IServiceProvider,.-plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_System_IServiceProvider
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ThrowMultipleCtorsMarkedWithAttributeException
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ThrowMultipleCtorsMarkedWithAttributeException,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ThrowMultipleCtorsMarkedWithAttributeException:
.Lp_10:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 992]
br x16
.inst 2363
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ThrowMultipleCtorsMarkedWithAttributeException,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ThrowMultipleCtorsMarkedWithAttributeException
	.local plt_System_SpanHelpers_ClearWithReferences_intptr__uintptr
	.type plt_System_SpanHelpers_ClearWithReferences_intptr__uintptr,@function
plt_System_SpanHelpers_ClearWithReferences_intptr__uintptr:
.Lp_11:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1000]
br x16
.inst 2365
	.size plt_System_SpanHelpers_ClearWithReferences_intptr__uintptr,.-plt_System_SpanHelpers_ClearWithReferences_intptr__uintptr
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService:
.Lp_12:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1008]
br x16
.inst 2370
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ThrowMarkedCtorDoesNotTakeAllProvidedArguments
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ThrowMarkedCtorDoesNotTakeAllProvidedArguments,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ThrowMarkedCtorDoesNotTakeAllProvidedArguments:
.Lp_13:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1016]
br x16
.inst 2372
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ThrowMarkedCtorDoesNotTakeAllProvidedArguments,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ThrowMarkedCtorDoesNotTakeAllProvidedArguments
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider:
.Lp_14:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1024]
br x16
.inst 2374
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider
	.local plt_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr
	.type plt_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr,@function
plt_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr:
.Lp_15:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1032]
br x16
.inst 2376
	.size plt_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr,.-plt_System_Buffer_BulkMoveWithWriteBarrier_byte__byte__uintptr_intptr
	.local plt_System_ThrowHelper_ThrowArgumentException_DestinationTooShort
	.type plt_System_ThrowHelper_ThrowArgumentException_DestinationTooShort,@function
plt_System_ThrowHelper_ThrowArgumentException_DestinationTooShort:
.Lp_16:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1040]
br x16
.inst 2381
	.size plt_System_ThrowHelper_ThrowArgumentException_DestinationTooShort,.-plt_System_ThrowHelper_ThrowArgumentException_DestinationTooShort
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___:
.Lp_17:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1048]
br x16
.inst 2386
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindConstructorEx_System_Reflection_ConstructorInfo_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindConstructorEx_System_Reflection_ConstructorInfo_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindConstructorEx_System_Reflection_ConstructorInfo_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__:
.Lp_18:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1056]
br x16
.inst 2388
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindConstructorEx_System_Reflection_ConstructorInfo_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindConstructorEx_System_Reflection_ConstructorInfo_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_MapParameters_System_Nullable_1_int___object__
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_MapParameters_System_Nullable_1_int___object__,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_MapParameters_System_Nullable_1_int___object__:
.Lp_19:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1064]
br x16
.inst 2390
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_MapParameters_System_Nullable_1_int___object__,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_MapParameters_System_Nullable_1_int___object__
	.local plt__jit_icall_mono_helper_ldstr
	.type plt__jit_icall_mono_helper_ldstr,@function
plt__jit_icall_mono_helper_ldstr:
.Lp_20:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1072]
br x16
.inst 2392
	.size plt__jit_icall_mono_helper_ldstr,.-plt__jit_icall_mono_helper_ldstr
	.local plt_System_ThrowHelper_ThrowArrayTypeMismatchException
	.type plt_System_ThrowHelper_ThrowArrayTypeMismatchException,@function
plt_System_ThrowHelper_ThrowArrayTypeMismatchException:
.Lp_21:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1080]
br x16
.inst 2395
	.size plt_System_ThrowHelper_ThrowArrayTypeMismatchException,.-plt_System_ThrowHelper_ThrowArrayTypeMismatchException
	.local plt_System_ThrowHelper_ThrowArgumentOutOfRangeException
	.type plt_System_ThrowHelper_ThrowArgumentOutOfRangeException,@function
plt_System_ThrowHelper_ThrowArgumentOutOfRangeException:
.Lp_22:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1088]
br x16
.inst 2400
	.size plt_System_ThrowHelper_ThrowArgumentOutOfRangeException,.-plt_System_ThrowHelper_ThrowArgumentOutOfRangeException
	.local plt__jit_icall_mono_helper_newobj_mscorlib
	.type plt__jit_icall_mono_helper_newobj_mscorlib,@function
plt__jit_icall_mono_helper_newobj_mscorlib:
.Lp_23:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1096]
br x16
.inst 2405
	.size plt__jit_icall_mono_helper_newobj_mscorlib,.-plt__jit_icall_mono_helper_newobj_mscorlib
	.local plt_System_SR_Format_string_object_object
	.type plt_System_SR_Format_string_object_object,@function
plt_System_SR_Format_string_object_object:
.Lp_24:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1104]
br x16
.inst 2408
	.size plt_System_SR_Format_string_object_object,.-plt_System_SR_Format_string_object_object
	.local plt__jit_icall_mono_arch_throw_corlib_exception
	.type plt__jit_icall_mono_arch_throw_corlib_exception,@function
plt__jit_icall_mono_arch_throw_corlib_exception:
.Lp_25:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1112]
br x16
.inst 2410
	.size plt__jit_icall_mono_arch_throw_corlib_exception,.-plt__jit_icall_mono_arch_throw_corlib_exception
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type:
.Lp_26:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1120]
br x16
.inst 2412
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type
	.local plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___GetOrAdd_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__
	.type plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___GetOrAdd_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__,@function
plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___GetOrAdd_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__:
.Lp_27:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1128]
br x16
.inst 2414
	.size plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___GetOrAdd_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__,.-plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___GetOrAdd_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__
	.local plt_System_Lazy_1_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___get_Value
	.type plt_System_Lazy_1_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___get_Value,@function
plt_System_Lazy_1_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___get_Value:
.Lp_28:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1136]
br x16
.inst 2425
	.size plt_System_Lazy_1_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___get_Value,.-plt_System_Lazy_1_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___get_Value
	.local plt_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___TryGetValue_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___
	.type plt_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___TryGetValue_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___,@function
plt_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___TryGetValue_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___:
.Lp_29:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1144]
br x16
.inst 2436
	.size plt_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___TryGetValue_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___,.-plt_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___TryGetValue_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___
	.local plt_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___AddOrUpdate_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__
	.type plt_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___AddOrUpdate_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__,@function
plt_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___AddOrUpdate_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__:
.Lp_30:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1152]
br x16
.inst 2447
	.size plt_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___AddOrUpdate_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__,.-plt_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___AddOrUpdate_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__
	.local plt_System_Type_GetConstructors
	.type plt_System_Type_GetConstructors,@function
plt_System_Type_GetConstructors:
.Lp_31:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1160]
br x16
.inst 2458
	.size plt_System_Type_GetConstructors,.-plt_System_Type_GetConstructors
	.local plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.type plt_wrapper_alloc_object_AllocSmall_intptr_intptr,@function
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
.Lp_32:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1168]
br x16
.inst 2463
	.size plt_wrapper_alloc_object_AllocSmall_intptr_intptr,.-plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo:
.Lp_33:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1176]
br x16
.inst 2471
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryReflection_System_Type_System_Type__
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryReflection_System_Type_System_Type__,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryReflection_System_Type_System_Type__:
.Lp_34:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1184]
br x16
.inst 2473
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryReflection_System_Type_System_Type__,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryReflection_System_Type_System_Type__
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_:
.Lp_35:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1192]
br x16
.inst 2475
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_
	.local plt_System_Linq_Expressions_Expression_Lambda_Microsoft_Extensions_DependencyInjection_ObjectFactory_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__
	.type plt_System_Linq_Expressions_Expression_Lambda_Microsoft_Extensions_DependencyInjection_ObjectFactory_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__,@function
plt_System_Linq_Expressions_Expression_Lambda_Microsoft_Extensions_DependencyInjection_ObjectFactory_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__:
.Lp_36:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1200]
br x16
.inst 2477
	.size plt_System_Linq_Expressions_Expression_Lambda_Microsoft_Extensions_DependencyInjection_ObjectFactory_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__,.-plt_System_Linq_Expressions_Expression_Lambda_Microsoft_Extensions_DependencyInjection_ObjectFactory_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__
	.local plt_System_Linq_Expressions_Expression_1_Microsoft_Extensions_DependencyInjection_ObjectFactory_Compile
	.type plt_System_Linq_Expressions_Expression_1_Microsoft_Extensions_DependencyInjection_ObjectFactory_Compile,@function
plt_System_Linq_Expressions_Expression_1_Microsoft_Extensions_DependencyInjection_ObjectFactory_Compile:
.Lp_37:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1208]
br x16
.inst 2489
	.size plt_System_Linq_Expressions_Expression_1_Microsoft_Extensions_DependencyInjection_ObjectFactory_Compile,.-plt_System_Linq_Expressions_Expression_1_Microsoft_Extensions_DependencyInjection_ObjectFactory_Compile
	.local plt__jit_icall_mini_init_method_rgctx
	.type plt__jit_icall_mini_init_method_rgctx,@function
plt__jit_icall_mini_init_method_rgctx:
.Lp_38:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1216]
br x16
.inst 2500
	.size plt__jit_icall_mini_init_method_rgctx,.-plt__jit_icall_mini_init_method_rgctx
	.local plt_System_Linq_Expressions_Expression_Lambda_Microsoft_Extensions_DependencyInjection_ObjectFactory_1_T_REF_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__
	.type plt_System_Linq_Expressions_Expression_Lambda_Microsoft_Extensions_DependencyInjection_ObjectFactory_1_T_REF_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__,@function
plt_System_Linq_Expressions_Expression_Lambda_Microsoft_Extensions_DependencyInjection_ObjectFactory_1_T_REF_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__:
.Lp_39:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1224]
br x16
.inst 2503
	.size plt_System_Linq_Expressions_Expression_Lambda_Microsoft_Extensions_DependencyInjection_ObjectFactory_1_T_REF_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__,.-plt_System_Linq_Expressions_Expression_Lambda_Microsoft_Extensions_DependencyInjection_ObjectFactory_1_T_REF_System_Linq_Expressions_Expression_System_Linq_Expressions_ParameterExpression__
	.local plt_System_Linq_Expressions_Expression_1_Microsoft_Extensions_DependencyInjection_ObjectFactory_1_T_REF_Compile
	.type plt_System_Linq_Expressions_Expression_1_Microsoft_Extensions_DependencyInjection_ObjectFactory_1_T_REF_Compile,@function
plt_System_Linq_Expressions_Expression_1_Microsoft_Extensions_DependencyInjection_ObjectFactory_1_T_REF_Compile:
.Lp_40:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1232]
br x16
.inst 2524
	.size plt_System_Linq_Expressions_Expression_1_Microsoft_Extensions_DependencyInjection_ObjectFactory_1_T_REF_Compile,.-plt_System_Linq_Expressions_Expression_1_Microsoft_Extensions_DependencyInjection_ObjectFactory_1_T_REF_Compile
	.local plt_System_Linq_Expressions_Expression_Parameter_System_Type_string
	.type plt_System_Linq_Expressions_Expression_Parameter_System_Type_string,@function
plt_System_Linq_Expressions_Expression_Parameter_System_Type_string:
.Lp_41:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1240]
br x16
.inst 2539
	.size plt_System_Linq_Expressions_Expression_Parameter_System_Type_string,.-plt_System_Linq_Expressions_Expression_Parameter_System_Type_string
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression:
.Lp_42:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1248]
br x16
.inst 2544
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.local plt_Microsoft_Extensions_Internal_ParameterDefaultValue_TryGetDefaultValue_System_Reflection_ParameterInfo_object_
	.type plt_Microsoft_Extensions_Internal_ParameterDefaultValue_TryGetDefaultValue_System_Reflection_ParameterInfo_object_,@function
plt_Microsoft_Extensions_Internal_ParameterDefaultValue_TryGetDefaultValue_System_Reflection_ParameterInfo_object_:
.Lp_43:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1256]
br x16
.inst 2546
	.size plt_Microsoft_Extensions_Internal_ParameterDefaultValue_TryGetDefaultValue_System_Reflection_ParameterInfo_object_,.-plt_Microsoft_Extensions_Internal_ParameterDefaultValue_TryGetDefaultValue_System_Reflection_ParameterInfo_object_
	.local plt_System_Nullable_1_int_Box_System_Nullable_1_int
	.type plt_System_Nullable_1_int_Box_System_Nullable_1_int,@function
plt_System_Nullable_1_int_Box_System_Nullable_1_int:
.Lp_44:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1264]
br x16
.inst 2553
	.size plt_System_Nullable_1_int_Box_System_Nullable_1_int,.-plt_System_Nullable_1_int_Box_System_Nullable_1_int
	.local plt_System_Linq_Expressions_Expression_ArrayAccess_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression__
	.type plt_System_Linq_Expressions_Expression_ArrayAccess_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression__,@function
plt_System_Linq_Expressions_Expression_ArrayAccess_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression__:
.Lp_45:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1272]
br x16
.inst 2570
	.size plt_System_Linq_Expressions_Expression_ArrayAccess_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression__,.-plt_System_Linq_Expressions_Expression_ArrayAccess_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression__
	.local plt_System_Attribute_GetCustomAttribute_System_Reflection_ParameterInfo_System_Type_bool
	.type plt_System_Attribute_GetCustomAttribute_System_Reflection_ParameterInfo_System_Type_bool,@function
plt_System_Attribute_GetCustomAttribute_System_Reflection_ParameterInfo_System_Type_bool:
.Lp_46:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1280]
br x16
.inst 2575
	.size plt_System_Attribute_GetCustomAttribute_System_Reflection_ParameterInfo_System_Type_bool,.-plt_System_Attribute_GetCustomAttribute_System_Reflection_ParameterInfo_System_Type_bool
	.local plt_System_Linq_Expressions_Expression_Constant_object_System_Type
	.type plt_System_Linq_Expressions_Expression_Constant_object_System_Type,@function
plt_System_Linq_Expressions_Expression_Constant_object_System_Type:
.Lp_47:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1288]
br x16
.inst 2580
	.size plt_System_Linq_Expressions_Expression_Constant_object_System_Type,.-plt_System_Linq_Expressions_Expression_Constant_object_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_FromKeyedServicesAttribute_get_Key
	.type plt_Microsoft_Extensions_DependencyInjection_FromKeyedServicesAttribute_get_Key,@function
plt_Microsoft_Extensions_DependencyInjection_FromKeyedServicesAttribute_get_Key:
.Lp_48:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1296]
br x16
.inst 2585
	.size plt_Microsoft_Extensions_DependencyInjection_FromKeyedServicesAttribute_get_Key,.-plt_Microsoft_Extensions_DependencyInjection_FromKeyedServicesAttribute_get_Key
	.local plt_System_Linq_Expressions_Expression_Call_System_Reflection_MethodInfo_System_Linq_Expressions_Expression__
	.type plt_System_Linq_Expressions_Expression_Call_System_Reflection_MethodInfo_System_Linq_Expressions_Expression__,@function
plt_System_Linq_Expressions_Expression_Call_System_Reflection_MethodInfo_System_Linq_Expressions_Expression__:
.Lp_49:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1304]
br x16
.inst 2587
	.size plt_System_Linq_Expressions_Expression_Call_System_Reflection_MethodInfo_System_Linq_Expressions_Expression__,.-plt_System_Linq_Expressions_Expression_Call_System_Reflection_MethodInfo_System_Linq_Expressions_Expression__
	.local plt_System_Linq_Expressions_Expression_Coalesce_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.type plt_System_Linq_Expressions_Expression_Coalesce_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,@function
plt_System_Linq_Expressions_Expression_Coalesce_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression:
.Lp_50:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1312]
br x16
.inst 2592
	.size plt_System_Linq_Expressions_Expression_Coalesce_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,.-plt_System_Linq_Expressions_Expression_Coalesce_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.local plt_System_Linq_Expressions_Expression_Convert_System_Linq_Expressions_Expression_System_Type
	.type plt_System_Linq_Expressions_Expression_Convert_System_Linq_Expressions_Expression_System_Type,@function
plt_System_Linq_Expressions_Expression_Convert_System_Linq_Expressions_Expression_System_Type:
.Lp_51:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1320]
br x16
.inst 2597
	.size plt_System_Linq_Expressions_Expression_Convert_System_Linq_Expressions_Expression_System_Type,.-plt_System_Linq_Expressions_Expression_Convert_System_Linq_Expressions_Expression_System_Type
	.local plt_System_Linq_Expressions_Expression_Equal_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.type plt_System_Linq_Expressions_Expression_Equal_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,@function
plt_System_Linq_Expressions_Expression_Equal_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression:
.Lp_52:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1328]
br x16
.inst 2602
	.size plt_System_Linq_Expressions_Expression_Equal_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,.-plt_System_Linq_Expressions_Expression_Equal_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.local plt_System_ArgumentNullException__ctor_string
	.type plt_System_ArgumentNullException__ctor_string,@function
plt_System_ArgumentNullException__ctor_string:
.Lp_53:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1336]
br x16
.inst 2607
	.size plt_System_ArgumentNullException__ctor_string,.-plt_System_ArgumentNullException__ctor_string
	.local plt_System_Linq_Expressions_Expression_Throw_System_Linq_Expressions_Expression
	.type plt_System_Linq_Expressions_Expression_Throw_System_Linq_Expressions_Expression,@function
plt_System_Linq_Expressions_Expression_Throw_System_Linq_Expressions_Expression:
.Lp_54:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1344]
br x16
.inst 2612
	.size plt_System_Linq_Expressions_Expression_Throw_System_Linq_Expressions_Expression,.-plt_System_Linq_Expressions_Expression_Throw_System_Linq_Expressions_Expression
	.local plt_System_Linq_Expressions_Expression_IfThen_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.type plt_System_Linq_Expressions_Expression_IfThen_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,@function
plt_System_Linq_Expressions_Expression_IfThen_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression:
.Lp_55:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1352]
br x16
.inst 2617
	.size plt_System_Linq_Expressions_Expression_IfThen_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,.-plt_System_Linq_Expressions_Expression_IfThen_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.local plt_System_Linq_Expressions_Expression_New_System_Reflection_ConstructorInfo_System_Linq_Expressions_Expression__
	.type plt_System_Linq_Expressions_Expression_New_System_Reflection_ConstructorInfo_System_Linq_Expressions_Expression__,@function
plt_System_Linq_Expressions_Expression_New_System_Reflection_ConstructorInfo_System_Linq_Expressions_Expression__:
.Lp_56:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1360]
br x16
.inst 2622
	.size plt_System_Linq_Expressions_Expression_New_System_Reflection_ConstructorInfo_System_Linq_Expressions_Expression__,.-plt_System_Linq_Expressions_Expression_New_System_Reflection_ConstructorInfo_System_Linq_Expressions_Expression__
	.local plt_System_Linq_Expressions_Expression_Block_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.type plt_System_Linq_Expressions_Expression_Block_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,@function
plt_System_Linq_Expressions_Expression_Block_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression:
.Lp_57:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1368]
br x16
.inst 2627
	.size plt_System_Linq_Expressions_Expression_Block_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression,.-plt_System_Linq_Expressions_Expression_Block_System_Linq_Expressions_Expression_System_Linq_Expressions_Expression
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___:
.Lp_58:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1376]
br x16
.inst 2632
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___:
.Lp_59:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1384]
br x16
.inst 2634
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___
	.local plt_System_SR_Format_string_object
	.type plt_System_SR_Format_string_object,@function
plt_System_SR_Format_string_object:
.Lp_60:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1392]
br x16
.inst 2636
	.size plt_System_SR_Format_string_object,.-plt_System_SR_Format_string_object
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___:
.Lp_61:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1400]
br x16
.inst 2638
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___
	.local plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx____ctor
	.type plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx____ctor,@function
plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx____ctor:
.Lp_62:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1408]
br x16
.inst 2640
	.size plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx____ctor,.-plt_System_Collections_Concurrent_ConcurrentDictionary_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx____ctor
	.local plt_System_Lazy_1_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx____ctor
	.type plt_System_Lazy_1_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx____ctor,@function
plt_System_Lazy_1_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx____ctor:
.Lp_63:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1416]
br x16
.inst 2651
	.size plt_System_Lazy_1_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx____ctor,.-plt_System_Lazy_1_System_Runtime_CompilerServices_ConditionalWeakTable_2_System_Type_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx____ctor
	.local plt_System_Delegate_get_Method
	.type plt_System_Delegate_get_Method,@function
plt_System_Delegate_get_Method:
.Lp_64:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1424]
br x16
.inst 2662
	.size plt_System_Delegate_get_Method,.-plt_System_Delegate_get_Method
	.local plt_System_Reflection_ConstructorInvoker_Create_System_Reflection_ConstructorInfo
	.type plt_System_Reflection_ConstructorInvoker_Create_System_Reflection_ConstructorInfo,@function
plt_System_Reflection_ConstructorInvoker_Create_System_Reflection_ConstructorInfo:
.Lp_65:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1432]
br x16
.inst 2667
	.size plt_System_Reflection_ConstructorInvoker_Create_System_Reflection_ConstructorInfo,.-plt_System_Reflection_ConstructorInvoker_Create_System_Reflection_ConstructorInfo
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int:
.Lp_66:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1440]
br x16
.inst 2672
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int:
.Lp_67:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1448]
br x16
.inst 2674
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int
	.local plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker
	.type plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker,@function
plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker:
.Lp_68:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1456]
br x16
.inst 2676
	.size plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker,.-plt_Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker
	.local plt_System_Reflection_ConstructorInvoker_Invoke_System_Span_1_object
	.type plt_System_Reflection_ConstructorInvoker_Invoke_System_Span_1_object,@function
plt_System_Reflection_ConstructorInvoker_Invoke_System_Span_1_object:
.Lp_69:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1464]
br x16
.inst 2678
	.size plt_System_Reflection_ConstructorInvoker_Invoke_System_Span_1_object,.-plt_System_Reflection_ConstructorInvoker_Invoke_System_Span_1_object
	.local plt__rgctx_fetch_0
	.type plt__rgctx_fetch_0,@function
plt__rgctx_fetch_0:
.Lp_70:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1472]
br x16
.inst 2706
	.size plt__rgctx_fetch_0,.-plt__rgctx_fetch_0
	.local plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
	.type plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr,@function
plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr:
.Lp_71:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1480]
br x16
.inst 2714
	.size plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr,.-plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
	.local plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_Item_int
	.type plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_Item_int,@function
plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_Item_int:
.Lp_72:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1488]
br x16
.inst 2722
	.size plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_Item_int,.-plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_Item_int
	.local plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int
	.type plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int,@function
plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int:
.Lp_73:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1496]
br x16
.inst 2733
	.size plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int,.-plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int
	.local plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_AddWithResize_Microsoft_Extensions_DependencyInjection_ServiceDescriptor
	.type plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_AddWithResize_Microsoft_Extensions_DependencyInjection_ServiceDescriptor,@function
plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_AddWithResize_Microsoft_Extensions_DependencyInjection_ServiceDescriptor:
.Lp_74:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1504]
br x16
.inst 2747
	.size plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_AddWithResize_Microsoft_Extensions_DependencyInjection_ServiceDescriptor,.-plt_System_Collections_Generic_List_1_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_AddWithResize_Microsoft_Extensions_DependencyInjection_ServiceDescriptor
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.Lp_75:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1512]
br x16
.inst 2766
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.Lp_76:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1520]
br x16
.inst 2768
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type:
.Lp_77:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1528]
br x16
.inst 2770
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type:
.Lp_78:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1536]
br x16
.inst 2772
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object:
.Lp_79:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1544]
br x16
.inst 2774
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,.-plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object:
.Lp_80:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1552]
br x16
.inst 2776
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,.-plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type:
.Lp_81:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1560]
br x16
.inst 2778
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type:
.Lp_82:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1568]
br x16
.inst 2780
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object:
.Lp_83:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1576]
br x16
.inst 2782
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object,.-plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object:
.Lp_84:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1584]
br x16
.inst 2784
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object:
.Lp_85:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1592]
br x16
.inst 2786
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object,.-plt_Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.Lp_86:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1600]
br x16
.inst 2788
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.Lp_87:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1608]
br x16
.inst 2790
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.Lp_88:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1616]
br x16
.inst 2792
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.Lp_89:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1624]
br x16
.inst 2794
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object:
.Lp_90:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1632]
br x16
.inst 2796
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object
	.local plt_System_Type_op_Inequality_System_Type_System_Type
	.type plt_System_Type_op_Inequality_System_Type_System_Type,@function
plt_System_Type_op_Inequality_System_Type_System_Type:
.Lp_91:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1640]
br x16
.inst 2798
	.size plt_System_Type_op_Inequality_System_Type_System_Type,.-plt_System_Type_op_Inequality_System_Type_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory:
.Lp_92:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1648]
br x16
.inst 2803
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationType
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationType,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationType:
.Lp_93:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1656]
br x16
.inst 2806
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationType,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationType
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationInstance
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationInstance,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationInstance:
.Lp_94:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1664]
br x16
.inst 2808
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationInstance,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationInstance
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationFactory
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationFactory,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationFactory:
.Lp_95:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1672]
br x16
.inst 2811
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationFactory,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_KeyedImplementationFactory
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.Lp_96:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1680]
br x16
.inst 2814
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.Lp_97:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1688]
br x16
.inst 2828
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime_0
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime_0,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime_0:
.Lp_98:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1696]
br x16
.inst 2831
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime_0,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime_0
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.Lp_99:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1704]
br x16
.inst 2845
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime_1
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime_1,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime_1:
.Lp_100:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1712]
br x16
.inst 2848
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime_1,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime_1
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object:
.Lp_101:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1720]
br x16
.inst 2862
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime:
.Lp_102:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1728]
br x16
.inst 2865
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type:
.Lp_103:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1736]
br x16
.inst 2868
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_Collections_Generic_IEnumerable_1_T_REF_System_IServiceProvider
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_Collections_Generic_IEnumerable_1_T_REF_System_IServiceProvider,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_Collections_Generic_IEnumerable_1_T_REF_System_IServiceProvider:
.Lp_104:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1744]
br x16
.inst 2871
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_Collections_Generic_IEnumerable_1_T_REF_System_IServiceProvider,.-plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_Collections_Generic_IEnumerable_1_T_REF_System_IServiceProvider
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_Microsoft_Extensions_DependencyInjection_IServiceScopeFactory_System_IServiceProvider
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_Microsoft_Extensions_DependencyInjection_IServiceScopeFactory_System_IServiceProvider,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_Microsoft_Extensions_DependencyInjection_IServiceScopeFactory_System_IServiceProvider:
.Lp_105:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1752]
br x16
.inst 2885
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_Microsoft_Extensions_DependencyInjection_IServiceScopeFactory_System_IServiceProvider,.-plt_Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_Microsoft_Extensions_DependencyInjection_IServiceScopeFactory_System_IServiceProvider
	.local plt_System_Type_op_Equality_System_Type_System_Type
	.type plt_System_Type_op_Equality_System_Type_System_Type,@function
plt_System_Type_op_Equality_System_Type_System_Type:
.Lp_106:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1760]
br x16
.inst 2897
	.size plt_System_Type_op_Equality_System_Type_System_Type,.-plt_System_Type_op_Equality_System_Type_System_Type
	.local plt_object_Equals_object_object
	.type plt_object_Equals_object_object,@function
plt_object_Equals_object_object:
.Lp_107:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1768]
br x16
.inst 2902
	.size plt_object_Equals_object_object,.-plt_object_Equals_object_object
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type:
.Lp_108:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1776]
br x16
.inst 2907
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor
	.type plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor,@function
plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor:
.Lp_109:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1784]
br x16
.inst 2910
	.size plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor,.-plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor
	.local plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type:
.Lp_110:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1792]
br x16
.inst 2913
	.size plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF:
.Lp_111:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1800]
br x16
.inst 2916
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type:
.Lp_112:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1808]
br x16
.inst 2930
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.type plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,@function
plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type:
.Lp_113:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1816]
br x16
.inst 2933
	.size plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type,.-plt_Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF:
.Lp_114:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1824]
br x16
.inst 2936
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF
	.local plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType
	.type plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType,@function
plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType:
.Lp_115:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1832]
br x16
.inst 2950
	.size plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType,.-plt_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType
	.local plt__jit_icall_mono_create_corlib_exception_2
	.type plt__jit_icall_mono_create_corlib_exception_2,@function
plt__jit_icall_mono_create_corlib_exception_2:
.Lp_116:
adrp x16, mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got+0
add x16, x16, :lo12:mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
ldr x16, [x16, 1840]
br x16
.inst 2953
	.size plt__jit_icall_mono_create_corlib_exception_2,.-plt__jit_icall_mono_create_corlib_exception_2
	.size mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_plt,.-mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_plt
plt_end:
.section ".rodata"
.subsection 0
	.balign 8
image_table:

	.byte 5,0,0,0,77,105,99,114,111,115,111,102,116,46,69,120,116,101,110,115,105,111,110,115,46,68,101,112,101,110,100,101
	.byte 110,99,121,73,110,106,101,99,116,105,111,110,46,65,98,115,116,114,97,99,116,105,111,110,115,0,65,54,68,54,68,53
	.byte 56,54,45,68,65,54,65,45,52,52,66,53,45,56,66,57,56,45,57,57,54,50,53,69,67,67,66,70,54,67,0,0
	.byte 97,100,98,57,55,57,51,56,50,57,100,100,97,101,54,48,0,0,0,0,0,0,0,0,1,0,0,0,10,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,80,114,105,118,97,116,101,46,67,111,114,101,76
	.byte 105,98,0,54,52,55,55,65,69,49,51,45,55,49,70,66,45,52,49,68,68,45,56,55,69,52,45,54,56,48,51,57
	.byte 49,66,49,65,69,68,54,0,0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56,101,0,0,0,0,0,0,0
	.byte 1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,76,105,110,113,46
	.byte 69,120,112,114,101,115,115,105,111,110,115,0,70,52,52,69,69,51,69,57,45,69,53,50,48,45,52,53,68,48,45,65
	.byte 69,56,55,45,52,49,53,52,53,54,50,65,56,52,52,50,0,0,98,48,51,102,53,102,55,102,49,49,100,53,48,97
	.byte 51,97,0,0,0,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116
	.byte 101,109,46,67,111,109,112,111,110,101,110,116,77,111,100,101,108,0,70,48,48,69,51,69,56,54,45,48,48,57,53,45
	.byte 52,67,66,52,45,57,50,48,57,45,52,66,67,52,48,67,66,51,57,67,51,70,0,0,98,48,51,102,53,102,55,102
	.byte 49,49,100,53,48,97,51,97,0,0,0,0,0,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,83,121,115,116,101,109,46,67,111,108,108,101,99,116,105,111,110,115,46,67,111,110,99,117,114,114,101,110
	.byte 116,0,70,51,67,53,69,48,69,51,45,53,56,54,55,45,52,53,54,56,45,57,51,56,49,45,52,68,53,57,53,65
	.byte 57,48,53,56,56,50,0,0,98,48,51,102,53,102,55,102,49,49,100,53,48,97,51,97,0,0,0,0,0,0,0,0
	.byte 1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.balign 8
	.local mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
	.type mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got,@object
mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got:
	.skip 1848
got_end:
.section ".rodata"
.subsection 0
	.balign 8
blob:

	.byte 0,5,0,0,0,1,4,8,25,26,27,28,29,30,31,32,6,0,0,0,1,4,3,26,33,33,7,0,0,0,1,4
	.byte 2,34,35,8,0,0,0,1,4,2,36,37,9,0,0,0,1,4,2,38,36,10,0,0,0,1,4,4,39,25,40,41
	.byte 14,0,0,0,1,4,17,42,42,43,44,45,42,46,46,47,43,48,49,43,43,50,51,43,16,0,0,0,1,4,18,0
	.byte 0,0,1,4,19,0,0,0,1,4,1,26,20,0,0,0,1,4,1,52,30,0,0,0,1,4,8,53,26,54,33,55
	.byte 56,57,49,31,0,0,0,1,4,39,0,0,0,40,0,0,0,4,58,44,45,27,41,0,0,0,4,59,59,60,61,42
	.byte 0,0,0,4,62,62,63,64,45,0,0,0,46,0,0,0,59,0,0,0,60,0,0,0,65,0,0,0,1,17,1,65
	.byte 66,0,0,0,1,17,2,66,65,80,0,0,0,82,0,0,0,86,0,0,0,89,0,0,0,97,0,0,0,2,67,68
	.byte 98,0,0,0,3,69,70,71,99,0,0,0,3,69,70,72,100,0,0,0,2,73,69,101,0,0,0,2,69,70,102,0
	.byte 0,0,2,74,69,103,0,0,0,3,75,69,72,104,0,0,0,3,69,70,72,105,0,0,0,3,76,69,72,106,0,0
	.byte 0,3,69,70,71,107,0,0,0,3,69,70,72,108,0,0,0,2,77,69,109,0,0,0,2,69,70,110,0,0,0,2
	.byte 78,69,111,0,0,0,3,79,69,72,112,0,0,0,5,69,70,80,81,82,113,0,0,0,3,83,69,80,114,0,0,0
	.byte 2,81,82,115,0,0,0,2,81,82,116,0,0,0,117,0,0,0,2,70,71,118,0,0,0,119,0,0,0,2,70,84
	.byte 120,0,0,0,2,70,85,121,0,0,0,129,0,0,0,2,86,87,133,0,0,0,134,0,0,0,1,88,135,0,0,0
	.byte 2,89,71,137,0,0,0,1,90,138,0,0,0,139,0,0,0,2,91,72,140,0,0,0,1,92,141,0,0,0,2,89
	.byte 71,142,0,0,0,2,93,72,143,0,0,0,2,94,72,144,0,0,0,2,95,80,145,0,0,0,3,70,80,81,146,0
	.byte 0,0,1,96,147,0,0,0,1,81,148,0,0,0,1,81,149,0,0,0,1,81,151,0,0,0,5,97,25,62,62,63
	.byte 153,0,0,0,3,98,25,64,154,0,0,0,6,25,70,99,99,100,64,155,0,0,0,2,101,25,156,0,0,0,2,102
	.byte 25,157,0,0,0,2,103,104,158,0,0,0,6,105,106,107,108,108,82,161,0,0,0,3,105,89,71,162,0,0,0,2
	.byte 109,105,163,0,0,0,1,110,164,0,0,0,3,105,89,71,165,0,0,0,2,111,105,166,0,0,0,2,112,105,167,0
	.byte 0,0,1,113,168,0,0,0,6,69,106,48,107,108,82,169,0,0,0,170,0,0,0,171,0,0,0,11,0,36,38,45
	.byte 50,52,32,47,48,55,8,55,9,55,10,55,11,55,12,55,128,243,6,80,6,89,6,91,6,92,6,96,6,128,249,6
	.byte 83,6,128,165,6,128,142,6,128,141,15,0,7,14,1,4,1,13,6,1,2,51,1,1,2,51,1,17,1,219,0,1
	.byte 246,1,1,130,183,33,255,254,0,0,0,0,255,43,0,0,6,17,1,219,0,0,27,1,2,130,183,14,2,69,1,129
	.byte 177,13,6,1,2,69,1,14,1,4,2,13,6,1,1,6,13,1,6,13,6,1,2,128,152,2,33,255,254,0,0,0
	.byte 0,255,43,0,0,7,5,0,30,0,1,1,10,5,1,28,7,131,6,1,7,131,13,4,1,13,131,19,4,1,27,131
	.byte 19,1,7,131,28,67,255,253,0,0,0,1,4,0,10,2,131,19,7,3,7,131,23,3,7,131,28,32,7,131,28,1
	.byte 255,253,0,0,0,7,131,23,0,61,1,131,19,0,10,255,253,0,0,0,2,39,2,2,129,133,2,131,33,10,255,253
	.byte 0,0,0,2,39,2,2,129,131,2,131,33,10,255,253,0,0,0,2,39,2,2,129,128,2,131,33,5,7,131,13,17
	.byte 0,193,0,0,24,0,17,0,219,0,0,12,0,15,0,128,147,13,6,1,2,39,2,13,2,85,2,17,0,194,0,0
	.byte 15,0,10,1,15,17,0,193,0,0,6,0,13,2,128,129,1,17,0,193,0,0,1,0,14,1,4,3,15,0,128,221
	.byte 13,2,111,1,13,6,1,3,219,0,0,13,13,3,219,0,0,3,13,3,219,0,0,5,13,3,219,0,0,14,29,3
	.byte 219,0,0,14,1,13,0,5,13,17,0,194,0,0,14,0,22,1,21,5,72,5,73,22,1,16,5,64,5,195,0,0
	.byte 1,14,1,17,28,13,1,18,13,3,219,0,0,20,14,3,219,0,0,20,152,200,15,0,130,147,15,0,130,165,15,0
	.byte 130,189,15,0,130,227,5,0,30,0,1,1,101,5,1,28,7,132,38,5,0,30,1,1,1,101,5,1,28,7,132,51
	.byte 2,7,132,45,7,132,58,67,255,253,0,0,0,1,29,0,101,2,132,64,2,5,7,132,45,5,7,132,58,5,0,30
	.byte 0,1,1,103,5,1,28,7,132,93,1,7,132,100,67,255,253,0,0,0,1,29,0,103,2,132,106,1,5,7,132,100
	.byte 5,0,30,0,1,1,104,5,1,28,7,132,128,1,7,132,135,67,255,253,0,0,0,1,29,0,104,2,132,141,1,5
	.byte 7,132,135,5,0,30,0,1,1,106,5,1,28,7,132,163,1,7,132,170,67,255,253,0,0,0,1,29,0,106,2,132
	.byte 176,1,5,7,132,170,5,0,30,0,1,1,109,5,1,28,7,132,198,5,0,30,1,1,1,109,5,1,28,7,132,211
	.byte 2,7,132,205,7,132,218,67,255,253,0,0,0,1,29,0,109,2,132,224,2,5,7,132,205,5,7,132,218,5,0,30
	.byte 0,1,1,111,5,1,28,7,132,253,1,7,133,4,67,255,253,0,0,0,1,29,0,111,2,133,10,1,5,7,133,4
	.byte 5,0,30,0,1,1,112,5,1,28,7,133,32,1,7,133,39,67,255,253,0,0,0,1,29,0,112,2,133,45,1,5
	.byte 7,133,39,15,0,131,15,13,1,30,5,255,254,0,0,0,0,202,0,0,108,5,0,30,0,1,1,114,5,1,28,7
	.byte 133,85,1,7,133,92,67,255,253,0,0,0,1,29,0,114,2,133,98,1,5,7,133,92,15,0,131,61,15,0,131,79
	.byte 10,3,219,0,0,23,39,192,129,0,1,5,0,30,0,1,1,128,135,5,1,28,7,133,139,5,0,30,1,1,1,128
	.byte 135,5,1,28,7,133,153,2,7,133,147,7,133,161,67,255,253,0,0,0,1,30,0,128,135,2,133,167,1,10,255,253
	.byte 0,0,0,1,30,0,128,147,2,133,167,15,0,132,207,5,0,30,0,1,1,128,138,5,1,28,7,133,207,5,0,30
	.byte 1,1,1,128,138,5,1,28,7,133,221,2,7,133,215,7,133,229,67,255,253,0,0,0,1,30,0,128,138,2,133,235
	.byte 1,10,255,253,0,0,0,1,30,0,128,147,2,133,235,5,0,30,0,1,1,128,140,5,1,28,7,134,15,1,7,134
	.byte 23,67,255,253,0,0,0,1,30,0,128,140,2,134,29,1,5,7,134,23,5,0,30,0,1,1,128,141,5,1,28,7
	.byte 134,52,5,0,30,1,1,1,128,141,5,1,28,7,134,66,2,7,134,60,7,134,74,67,255,253,0,0,0,1,30,0
	.byte 128,141,2,134,80,1,10,255,253,0,0,0,1,30,0,128,147,2,134,80,5,0,30,0,1,1,128,143,5,1,28,7
	.byte 134,116,5,0,30,1,1,1,128,143,5,1,28,7,134,130,2,7,134,124,7,134,138,67,255,253,0,0,0,1,30,0
	.byte 128,143,2,134,144,1,5,7,134,124,5,0,30,0,1,1,128,144,5,1,28,7,134,170,1,7,134,178,67,255,253,0
	.byte 0,0,1,30,0,128,144,2,134,184,1,5,7,134,178,5,0,30,0,1,1,128,145,5,1,28,7,134,207,1,7,134
	.byte 215,67,255,253,0,0,0,1,30,0,128,145,2,134,221,1,5,7,134,215,5,0,30,0,1,1,128,147,5,1,28,7
	.byte 134,244,5,0,30,1,1,1,128,147,5,1,28,7,135,2,2,7,134,252,7,135,10,67,255,253,0,0,0,1,30,0
	.byte 128,147,2,135,16,2,5,7,134,252,5,7,135,10,5,0,30,0,1,1,128,152,5,1,28,7,135,46,1,7,135,54
	.byte 67,255,253,0,0,0,1,34,0,128,152,2,135,60,2,14,7,135,54,5,7,135,54,5,0,30,0,1,1,128,154,5
	.byte 1,28,7,135,87,1,7,135,95,67,255,253,0,0,0,1,35,0,128,154,2,135,101,2,14,7,135,95,5,7,135,95
	.byte 22,1,25,5,76,5,0,30,0,1,1,128,156,5,1,28,7,135,133,1,7,135,141,67,255,253,0,0,0,1,35,0
	.byte 128,156,2,135,147,2,14,7,135,141,5,7,135,141,5,0,30,0,1,1,128,157,5,1,28,7,135,174,1,7,135,182
	.byte 4,2,134,197,1,135,188,1,7,135,192,67,255,253,0,0,0,1,35,0,128,157,2,135,188,1,10,255,253,0,0,0
	.byte 1,35,0,128,156,2,135,199,33,255,254,0,0,0,0,255,43,0,0,16,5,75,15,0,133,57,15,0,133,79,5,255
	.byte 254,0,0,0,0,202,0,0,126,5,255,254,0,0,0,0,202,0,0,127,5,0,30,0,1,1,128,163,5,1,28,7
	.byte 136,20,5,0,30,1,1,1,128,163,5,1,28,7,136,34,2,7,136,28,7,136,42,67,255,253,0,0,0,1,36,0
	.byte 128,163,2,136,48,2,5,7,136,28,5,7,136,42,5,0,30,0,1,1,128,164,5,1,28,7,136,78,1,7,136,86
	.byte 67,255,253,0,0,0,1,36,0,128,164,2,136,92,1,10,255,253,0,0,0,1,30,0,128,140,2,136,92,5,0,30
	.byte 0,1,1,128,166,5,1,28,7,136,125,1,7,136,133,67,255,253,0,0,0,1,36,0,128,166,2,136,139,1,5,7
	.byte 136,133,5,0,30,0,1,1,128,167,5,1,28,7,136,162,5,0,30,1,1,1,128,167,5,1,28,7,136,176,2,7
	.byte 136,170,7,136,184,67,255,253,0,0,0,1,36,0,128,167,2,136,190,2,5,7,136,170,5,7,136,184,5,0,30,0
	.byte 1,1,128,168,5,1,28,7,136,220,1,7,136,228,67,255,253,0,0,0,1,36,0,128,168,2,136,234,1,10,255,253
	.byte 0,0,0,1,30,0,128,144,2,136,234,6,128,249,6,128,128,6,104,3,193,0,6,14,3,255,254,0,0,0,0,202
	.byte 0,0,22,3,7,3,32,3,255,252,0,0,0,15,1,3,255,254,0,0,0,0,255,43,0,0,6,3,22,3,193,0
	.byte 22,115,3,46,3,23,3,47,3,193,0,1,195,3,193,0,23,30,3,17,3,18,3,48,6,128,164,3,193,0,23,26
	.byte 3,193,0,23,29,6,128,166,3,2,6,103,3,8,3,255,254,0,0,0,0,202,0,0,32,3,255,254,0,0,0,0
	.byte 202,0,0,33,3,255,254,0,0,0,0,202,0,0,34,3,255,254,0,0,0,0,202,0,0,35,3,193,0,6,56,3
	.byte 255,252,0,0,0,15,2,3,41,3,16,3,11,3,255,254,0,0,0,0,255,43,0,0,7,3,255,254,0,0,0,0
	.byte 202,0,0,39,6,129,10,3,255,253,0,0,0,2,39,2,2,129,128,2,131,33,4,2,115,2,131,33,3,255,253,0
	.byte 0,0,7,137,214,2,133,70,1,131,33,3,194,0,1,234,3,15,3,3,1,2,128,229,1,3,255,253,0,0,0,3
	.byte 219,0,0,13,1,131,141,1,137,244,3,194,0,1,99,3,193,0,1,179,3,194,0,1,46,3,62,3,194,0,1,195
	.byte 3,194,0,0,200,3,194,0,2,28,3,194,0,0,180,3,193,0,7,48,3,194,0,2,36,3,194,0,1,43,3,194
	.byte 0,1,224,3,194,0,1,21,3,20,3,19,3,1,3,21,3,255,254,0,0,0,0,202,0,0,78,3,255,254,0,0
	.byte 0,0,202,0,0,79,3,193,0,1,243,3,193,0,51,144,3,42,3,43,3,40,3,193,0,51,152,5,0,19,0,1
	.byte 0,1,13,5,1,28,7,138,123,1,7,138,131,4,1,13,138,137,34,138,141,148,28,7,138,131,3,255,252,0,0,0
	.byte 10,9,3,255,254,0,0,0,0,202,0,0,100,3,255,254,0,0,0,0,202,0,0,104,1,1,30,3,255,253,0,0
	.byte 0,3,219,0,0,20,1,192,0,68,123,1,138,184,3,115,3,116,3,99,3,102,3,100,3,105,3,107,3,110,3,108
	.byte 3,119,3,113,3,117,3,121,3,118,3,122,3,120,3,193,0,6,127,3,128,130,3,127,3,128,129,3,128,131,3,255
	.byte 253,0,0,0,1,30,0,128,147,2,133,167,3,128,148,3,255,253,0,0,0,1,30,0,128,147,2,133,235,3,128,150
	.byte 3,255,253,0,0,0,1,30,0,128,147,2,134,80,3,128,146,3,128,149,3,128,155,3,255,253,0,0,0,1,35,0
	.byte 128,156,2,135,199,3,255,254,0,0,0,0,255,43,0,0,16,3,193,0,6,126,3,193,0,2,202,3,128,139,3,128
	.byte 159,3,128,162,3,255,253,0,0,0,1,30,0,128,140,2,136,92,3,128,142,3,128,165,3,255,253,0,0,0,1,30
	.byte 0,128,144,2,136,234,3,128,134,6,128,129,10,0,0,180,1,0,224,2,22,80,12,32,26,8,36,80,4,8,16,48
	.byte 10,88,16,72,16,32,8,32,26,128,2,4,8,16,88,2,32,22,184,1,22,184,1,16,32,16,48,14,16,6,8,4
	.byte 56,22,80,18,24,12,8,4,56,32,96,10,8,0,0,12,8,24,32,32,56,22,184,1,20,40,6,24,10,8,0,0
	.byte 16,24,2,8,12,8,30,32,6,8,16,32,6,16,6,8,4,56,22,80,32,56,22,184,1,24,48,12,16,8,8,18
	.byte 176,2,18,16,14,144,1,6,16,4,8,12,16,6,16,12,8,24,32,10,24,56,8,16,24,2,8,8,16,14,32,4
	.byte 8,20,48,6,8,4,56,40,144,1,2,48,12,8,16,24,36,48,30,32,32,56,22,184,1,20,32,16,24,173,9,56
	.byte 210,6,104,36,112,130,170,136,124,128,176,137,32,0,129,66,0,128,176,1,0,0,12,10,28,1,0,0,4,0,4,0
	.byte 4,0,4,5,0,0,0,13,4,0,0,0,12,6,4,7,4,0,4,0,4,0,0,0,4,0,4,0,4,5,0,0
	.byte 0,2,4,0,0,3,8,0,4,0,12,5,0,0,0,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,8
	.byte 36,2,0,0,4,0,8,6,4,0,0,2,4,0,8,2,4,2,0,6,128,128,5,0,2,4,3,44,6,16,0,0
	.byte 2,4,1,4,8,84,0,0,2,4,1,4,8,84,8,16,1,0,0,12,0,4,0,4,7,4,0,0,2,4,0,0
	.byte 5,4,0,0,3,4,0,0,2,28,1,0,7,4,0,4,0,4,0,4,0,8,0,4,0,4,0,4,3,4,0,0
	.byte 2,4,5,4,0,0,2,4,3,0,3,4,0,0,2,28,1,0,7,4,0,4,0,4,0,4,0,8,0,4,0,4
	.byte 0,4,1,4,5,4,0,0,2,4,0,0,0,4,5,0,3,0,3,4,3,0,5,8,2,0,0,4,2,4,4,0
	.byte 5,8,255,255,255,255,247,0,16,20,11,92,5,0,0,4,0,4,0,4,0,8,6,0,0,8,2,4,0,0,0,4
	.byte 5,0,3,0,0,4,0,4,5,4,0,0,1,4,3,0,3,4,3,0,5,8,2,0,0,4,5,4,0,0,3,4
	.byte 8,16,0,0,1,4,2,4,0,0,3,4,0,0,2,28,1,0,7,4,0,4,0,4,0,4,0,8,0,4,0,4
	.byte 0,4,3,4,4,0,5,8,255,255,255,255,247,0,16,20,11,92,5,0,0,4,0,4,0,4,0,8,7,4,4,0
	.byte 0,4,2,4,2,0,2,4,0,0,9,128,152,4,8,12,72,0,0,1,4,2,4,0,0,2,4,4,0,0,4,2
	.byte 4,0,0,1,4,2,4,3,0,3,4,3,0,5,8,2,0,0,4,2,4,3,0,0,8,2,4,2,0,0,0,26
	.byte 4,3,0,0,4,0,4,5,4,0,0,1,4,1,4,1,0,0,0,2,4,0,0,0,12,7,4,0,0,2,4,1
	.byte 4,9,20,0,0,3,4,0,0,2,28,7,0,0,4,0,4,0,4,0,8,0,4,0,4,0,4,1,4,255,255,255
	.byte 255,248,4,2,4,6,4,1,4,0,0,3,4,1,4,2,4,0,4,0,4,5,0,0,4,0,4,0,0,0,4,0
	.byte 4,1,8,3,0,3,4,4,4,2,0,0,4,2,4,4,0,9,4,0,4,0,4,0,0,0,4,0,4,5,4,3
	.byte 4,5,4,0,0,0,0,0,4,7,4,4,0,5,8,255,255,255,255,247,0,16,20,11,92,5,4,0,4,0,0,0
	.byte 4,5,4,3,0,0,4,0,4,5,4,255,255,255,253,169,28,0,0,0,12,0,4,0,4,5,4,0,8,0,0,5
	.byte 4,0,4,129,159,12,0,0,0,12,0,4,8,8,0,4,0,4,0,8,5,4,0,0,0,4,0,0,0,4,0,4
	.byte 5,0,0,8,0,0,5,4,0,4,128,152,255,255,255,255,104,10,35,0,32,0,88,12,40,10,40,4,8,24,72,10
	.byte 32,2,8,20,64,16,48,4,8,2,8,2,8,14,24,20,64,14,40,2,8,128,139,129,24,44,129,40,0,66,0,44
	.byte 1,0,0,4,0,4,0,8,0,4,5,0,0,4,0,4,0,8,0,4,5,0,0,0,2,4,0,0,0,12,7,8
	.byte 0,4,0,4,0,8,5,0,0,4,0,4,0,0,0,4,5,4,0,0,1,4,0,0,0,12,5,4,0,4,0,4
	.byte 0,4,0,4,8,0,0,4,0,4,0,4,0,4,0,4,0,4,5,0,0,0,2,4,1,4,0,0,1,4,1,0
	.byte 0,4,6,8,0,0,0,12,5,4,0,4,0,4,0,4,0,4,7,4,0,4,0,4,0,0,0,4,5,4,1,4
	.byte 1,0,10,52,0,19,0,88,14,32,18,56,4,8,4,56,20,152,1,2,40,8,8,14,24,95,128,236,44,129,12,0
	.byte 44,0,44,1,0,0,4,0,4,0,4,6,4,0,0,1,8,8,20,0,0,2,4,0,0,2,28,4,0,0,4,0
	.byte 4,0,4,0,8,0,4,0,4,0,4,1,8,0,12,0,4,0,8,0,4,0,0,0,0,0,8,5,0,0,4,0
	.byte 4,0,0,0,0,0,4,1,8,2,0,2,4,2,4,2,0,0,4,3,4,0,0,1,4,10,74,0,17,0,104,10
	.byte 16,4,8,14,24,2,8,26,48,40,128,2,10,24,87,128,244,52,129,0,0,40,0,52,0,0,0,4,0,4,5,0
	.byte 0,0,2,4,2,8,5,4,0,0,1,4,8,8,0,4,0,4,0,4,5,4,7,32,3,12,0,4,0,4,0,0
	.byte 0,4,1,12,0,0,3,12,0,4,0,4,0,0,0,4,1,16,0,12,0,0,0,0,0,4,0,4,5,0,0,4
	.byte 0,4,5,4,1,0,11,74,2,1,15,12,0,29,24,12,0,12,255,253,0,0,0,1,4,0,10,2,131,19,0,0
	.byte 23,0,160,1,10,16,4,8,10,32,34,80,32,240,2,2,8,44,64,40,248,1,10,24,128,173,129,248,80,130,28,0
	.byte 83,0,80,0,0,0,4,0,4,5,0,0,0,2,4,0,4,0,4,0,4,0,4,0,0,5,0,0,8,12,20,0
	.byte 4,0,8,5,0,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,4,0,4,0,12,0,4,0,4,0
	.byte 12,0,4,0,8,0,8,0,4,0,4,0,4,0,4,0,12,0,4,0,8,0,4,0,4,0,4,0,4,0,4,0
	.byte 4,0,4,0,4,11,4,0,0,0,0,1,4,17,16,0,4,0,4,0,4,5,4,7,32,3,12,0,4,0,4,0
	.byte 0,0,4,1,12,0,0,3,12,0,4,0,4,0,0,0,4,1,20,0,4,0,0,0,0,0,4,0,4,5,0,0
	.byte 4,0,4,5,4,1,0,10,88,0,16,0,120,24,48,42,64,2,96,42,64,2,96,26,56,2,96,115,129,64,60,129
	.byte 76,0,54,0,60,7,8,0,4,0,4,0,4,5,4,1,0,10,12,5,12,0,0,0,0,0,8,5,0,0,12,0
	.byte 4,0,4,0,4,0,12,0,4,0,8,1,0,1,0,10,12,5,12,0,0,0,0,0,8,5,0,0,12,0,4,0
	.byte 4,0,4,0,12,0,4,0,8,1,0,5,12,2,4,1,4,0,0,0,0,0,0,0,0,0,8,5,0,0,12,0
	.byte 4,0,4,0,4,0,12,0,4,0,8,1,0,1,0,10,102,0,94,0,136,1,14,40,18,56,4,8,10,56,8,72
	.byte 16,48,16,32,4,8,24,72,4,8,56,216,2,12,72,2,40,10,8,34,56,14,96,58,192,1,18,96,30,48,30,160
	.byte 2,34,136,1,30,48,6,56,28,56,2,40,8,8,14,176,1,4,8,24,88,2,40,24,96,2,40,8,8,18,24,14
	.byte 160,1,10,24,20,104,10,160,1,10,24,10,16,14,40,10,8,129,242,134,32,68,134,84,0,128,245,0,68,1,0,0
	.byte 4,0,4,0,8,6,4,0,0,1,8,8,20,0,0,2,4,0,0,5,28,2,0,0,4,0,4,0,4,0,8,0
	.byte 4,0,4,0,4,2,4,0,0,1,4,0,4,0,4,7,12,3,0,0,4,0,4,0,4,0,4,5,0,2,4,2
	.byte 0,0,4,0,4,0,4,0,8,0,4,5,8,0,4,5,0,0,0,2,4,9,24,4,4,0,4,0,4,0,4,0
	.byte 8,0,4,0,4,5,24,5,92,5,0,0,4,0,4,0,0,0,4,1,16,0,0,0,4,0,4,5,0,0,4,0
	.byte 4,0,0,0,0,0,4,1,8,0,0,5,4,1,0,11,12,0,4,0,0,0,4,0,4,0,4,12,48,6,24,3
	.byte 8,0,4,0,8,0,4,1,12,0,4,4,4,10,16,0,0,0,4,0,8,5,0,0,4,0,4,0,0,0,4,1
	.byte 12,0,4,3,4,0,4,0,4,0,8,5,0,10,12,0,0,0,0,0,4,0,8,5,0,0,4,0,4,0,0,0
	.byte 4,1,12,0,4,4,4,0,12,0,4,0,4,5,92,5,0,0,4,0,4,0,0,0,4,1,12,0,0,0,4,1
	.byte 4,3,12,0,0,2,4,1,4,4,8,0,8,5,0,10,16,0,0,0,4,0,4,5,4,0,4,0,4,0,0,0
	.byte 0,0,4,1,8,2,4,2,0,0,12,7,4,0,4,0,4,0,4,5,0,0,4,0,4,0,0,0,0,0,4,1
	.byte 8,2,0,0,0,2,4,2,88,5,0,2,4,4,0,0,4,0,4,0,4,0,8,0,4,0,4,0,4,3,4,0
	.byte 0,0,4,0,4,5,0,0,4,0,4,0,0,0,0,0,4,1,8,4,0,0,4,0,4,0,4,0,8,0,4,0
	.byte 4,0,4,3,8,0,4,0,4,5,0,0,4,0,4,0,0,0,0,0,4,1,8,2,0,2,4,2,4,2,0,0
	.byte 4,5,4,2,80,5,4,0,0,0,8,5,0,5,16,0,12,0,4,0,8,0,4,0,0,0,0,0,8,0,0,5
	.byte 80,5,0,0,0,0,4,0,8,5,0,0,0,0,0,0,8,7,0,0,4,0,4,0,4,0,8,5,0,0,0,0
	.byte 0,5,4,1,0,10,74,0,18,0,120,24,56,4,8,22,48,38,8,6,112,8,112,47,24,22,64,111,128,232,60,129
	.byte 36,0,48,0,60,7,12,0,4,0,4,0,4,0,4,5,0,0,0,2,4,6,8,0,4,0,4,0,4,0,4,5
	.byte 0,0,0,19,4,2,8,0,12,0,4,0,4,0,4,0,12,0,4,0,8,1,0,3,8,0,12,0,4,0,4,0
	.byte 4,0,12,0,4,0,8,1,0,255,255,255,255,232,12,0,0,0,12,0,4,6,8,0,4,0,4,5,0,0,8,0
	.byte 0,5,4,0,4,9,255,255,255,255,196,10,128,137,0,45,0,136,1,6,16,6,24,14,40,4,8,4,56,8,72,12
	.byte 40,16,32,4,8,16,208,1,38,8,6,80,6,112,8,8,12,24,16,192,1,6,8,4,16,91,64,22,64,128,195,130
	.byte 36,68,130,124,0,90,0,68,2,0,0,4,1,4,2,0,0,8,1,4,1,8,0,4,0,4,6,4,0,0,2,4
	.byte 0,0,2,28,2,0,0,4,0,4,0,4,0,8,0,4,0,4,0,4,2,4,0,0,1,4,0,4,0,4,0,8
	.byte 8,0,0,4,0,4,0,4,0,4,5,0,0,0,2,4,1,0,2,100,0,4,5,0,0,0,19,4,2,0,0,4
	.byte 0,4,0,4,0,4,0,12,0,4,0,8,1,0,2,8,0,12,0,4,0,4,0,4,0,12,0,4,0,8,1,0
	.byte 2,0,2,4,2,4,2,0,0,4,2,4,1,0,2,92,0,4,5,0,0,0,3,4,0,0,0,4,2,4,0,0
	.byte 255,255,255,255,210,32,0,0,0,12,0,4,6,8,0,4,0,4,5,0,0,8,0,0,5,4,0,4,31,255,255,255
	.byte 255,180,10,128,170,0,62,0,144,1,4,16,6,16,8,16,6,16,26,80,4,8,12,24,4,0,4,8,4,8,4,56
	.byte 8,72,16,24,6,8,10,8,0,0,22,40,16,32,4,8,10,8,0,0,16,104,10,104,4,16,8,8,12,24,16,192
	.byte 1,6,8,4,16,128,225,130,24,72,130,64,0,109,0,72,0,0,1,4,1,4,2,0,0,4,1,4,3,0,0,4
	.byte 1,4,1,4,0,0,2,4,0,0,0,12,8,4,0,4,0,4,0,4,0,4,0,4,0,4,5,0,0,0,2,4
	.byte 1,0,0,4,0,8,7,0,2,4,0,0,2,4,0,0,2,28,2,0,0,4,0,4,0,4,0,8,0,4,0,4
	.byte 0,4,2,4,0,0,1,4,5,4,0,0,2,4,1,0,0,0,2,4,0,0,0,4,5,0,1,0,5,4,0,4
	.byte 0,4,0,8,8,0,0,4,0,4,0,4,0,4,5,0,0,0,2,4,0,0,0,4,5,0,2,0,5,8,0,8
	.byte 0,4,0,4,0,4,0,12,0,4,0,8,1,0,4,8,0,8,0,4,0,4,0,4,0,12,0,4,0,8,1,0
	.byte 0,0,1,4,1,4,2,0,2,4,2,4,2,0,0,4,2,4,1,0,2,92,0,4,5,0,0,0,3,4,0,0
	.byte 0,4,2,4,0,0,1,4,10,128,170,0,47,0,120,20,136,1,4,8,4,56,4,16,8,72,4,8,4,56,26,80
	.byte 4,8,16,112,12,48,4,8,4,16,18,80,10,96,4,8,8,8,12,24,8,8,2,16,8,8,14,24,128,207,130,0
	.byte 60,130,40,0,100,0,60,2,4,7,20,0,8,0,4,0,4,0,4,0,12,0,4,0,8,1,0,0,0,2,4,0
	.byte 0,2,28,0,0,1,4,1,4,2,0,0,4,0,4,0,4,0,8,0,4,0,4,0,4,2,4,0,0,2,4,0
	.byte 0,2,28,1,0,2,4,0,4,0,4,0,4,0,8,0,4,5,8,0,4,5,0,0,0,2,4,2,0,0,4,0
	.byte 4,0,4,0,8,0,4,0,4,0,4,1,4,0,4,0,4,0,8,0,4,6,0,0,4,0,4,0,4,0,8,0
	.byte 4,5,0,0,0,2,4,0,0,1,4,1,4,1,0,3,40,5,0,0,4,0,4,0,4,0,8,0,4,0,4,5
	.byte 20,0,0,2,4,2,0,2,4,2,4,2,0,0,4,2,4,1,0,0,0,3,4,0,0,0,4,1,4,2,0,2
	.byte 4,2,4,2,0,0,4,3,4,0,0,1,4,10,128,202,0,15,0,64,10,64,10,56,10,64,10,56,34,152,1,10
	.byte 56,93,129,0,32,129,12,0,43,0,32,0,0,0,12,0,4,0,4,0,4,0,0,0,8,5,0,0,16,0,8,5
	.byte 4,0,0,0,12,0,4,0,4,0,4,0,0,0,8,5,0,0,16,0,8,5,4,1,0,0,12,0,4,0,4,0
	.byte 12,0,4,0,12,0,4,0,4,0,4,0,4,11,4,0,0,0,4,0,4,5,0,0,16,0,8,5,4,1,0,10
	.byte 128,216,0,17,0,88,4,8,4,8,4,56,42,136,1,2,8,8,8,24,32,67,128,176,44,128,208,0,30,0,44,0
	.byte 0,2,4,0,0,2,4,0,0,2,28,2,0,6,4,0,4,0,4,0,4,0,8,0,4,0,4,0,4,1,4,5
	.byte 8,2,20,5,0,1,4,2,0,2,4,2,0,5,8,2,0,0,4,3,4,0,0,1,4,10,35,0,10,0,80,16
	.byte 16,24,24,10,96,12,8,48,112,40,128,128,0,21,0,40,1,0,5,4,0,0,2,4,2,0,5,4,0,8,5,0
	.byte 0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,1,0,5,4,1,0,10,128,240,0,34,12,96,14
	.byte 104,14,40,10,96,36,64,10,8,4,8,4,56,48,128,1,12,96,6,8,16,16,38,152,1,26,56,2,40,8,8,128
	.byte 195,129,248,48,130,36,0,94,6,48,2,0,0,8,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,2,0
	.byte 0,4,0,4,0,12,5,0,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,2,0,11,12,0,4
	.byte 0,0,0,4,0,4,0,8,5,0,5,4,0,0,2,4,0,0,2,28,1,0,6,4,0,4,0,4,0,4,0,8
	.byte 0,4,0,4,0,4,1,4,11,12,0,0,0,0,0,4,0,4,0,4,11,48,1,0,0,0,2,4,1,0,5,4
	.byte 0,0,2,4,2,0,5,8,7,20,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,1,0,7,8
	.byte 0,4,0,4,0,4,0,8,5,0,0,4,0,4,0,0,0,0,0,4,1,8,2,0,2,4,2,0,5,8,2,0
	.byte 0,4,3,4,10,129,8,0,27,0,112,18,80,20,24,12,96,6,8,14,192,1,6,8,14,40,12,80,2,8,22,80
	.byte 14,40,10,72,128,153,129,164,56,129,200,0,73,0,56,1,0,6,4,0,4,0,4,0,4,0,8,0,4,0,4,0
	.byte 4,2,4,1,0,5,4,1,4,0,0,3,4,0,0,1,4,3,4,0,4,0,4,0,4,0,8,0,4,0,4,0
	.byte 4,1,4,1,4,1,0,0,0,2,4,7,96,1,0,0,0,2,4,2,0,0,4,0,4,0,8,0,4,6,0,0
	.byte 4,0,0,0,4,0,4,0,12,0,12,5,4,0,0,1,4,0,0,0,12,0,4,0,4,5,4,0,8,0,0,5
	.byte 4,0,4,1,0,2,0,0,4,0,4,0,8,0,4,5,0,0,4,0,0,0,4,0,12,0,12,5,4,1,0,10
	.byte 129,8,0,27,0,112,18,80,20,24,12,96,6,8,14,192,1,6,8,14,40,12,72,2,8,22,80,14,40,10,64,128
	.byte 149,129,156,56,129,192,0,71,0,56,1,0,6,4,0,4,0,4,0,4,0,8,0,4,0,4,0,4,2,4,1,0
	.byte 5,4,1,4,0,0,3,4,0,0,1,4,3,4,0,4,0,4,0,4,0,8,0,4,0,4,0,4,1,4,1,4
	.byte 1,0,0,0,2,4,7,96,1,0,0,0,2,4,2,0,0,4,0,4,0,8,0,4,6,0,0,4,0,0,0,4
	.byte 0,4,0,12,5,12,0,0,1,4,0,0,0,12,0,4,0,4,5,4,0,8,0,0,5,4,0,4,1,0,2,0
	.byte 0,4,0,4,0,8,0,4,5,0,0,4,0,0,0,4,0,12,5,12,1,0,10,129,35,0,81,0,128,1,4,8
	.byte 4,56,14,88,16,32,2,8,4,16,4,8,4,56,24,96,6,16,36,128,1,12,48,4,8,4,16,24,96,8,168,1
	.byte 4,8,8,8,32,40,8,8,2,16,8,8,12,24,6,8,4,56,26,96,6,16,28,56,4,8,42,112,4,8,26,96
	.byte 6,104,6,8,2,16,12,8,34,40,26,24,129,170,131,104,64,131,156,0,128,209,0,64,0,0,2,4,0,0,2,28
	.byte 2,0,0,4,0,4,0,4,0,8,0,4,0,4,0,4,1,4,1,4,0,0,3,4,0,0,1,4,2,4,0,4
	.byte 0,4,5,0,1,4,0,0,1,4,1,4,0,0,2,4,0,0,2,28,1,0,0,4,0,8,6,4,0,4,0,4
	.byte 0,4,0,4,0,8,0,4,0,4,5,0,1,4,0,0,2,4,1,0,5,4,6,4,0,4,0,4,0,4,0,8
	.byte 0,4,0,4,0,4,1,4,0,4,0,4,0,8,0,4,6,0,0,4,0,4,0,4,0,8,0,4,5,0,0,0
	.byte 2,4,0,0,1,4,1,4,1,0,0,4,0,8,6,4,0,4,0,4,0,4,0,4,0,8,0,4,0,4,7,0
	.byte 0,4,0,4,0,4,0,8,0,4,0,4,0,4,1,8,0,8,0,4,0,4,0,4,0,12,0,4,0,8,1,0
	.byte 0,0,2,4,2,0,2,4,2,0,5,4,5,8,2,0,0,4,2,4,1,0,0,0,3,4,0,0,0,4,1,4
	.byte 2,0,2,4,2,4,2,0,0,4,2,4,0,0,3,4,0,0,2,28,1,0,0,4,0,8,7,4,0,4,0,4
	.byte 0,4,0,4,0,8,0,4,0,4,5,0,1,4,0,0,2,4,1,0,8,4,0,4,0,4,0,4,0,4,0,4
	.byte 0,4,5,0,0,0,2,4,1,0,5,4,7,4,0,4,0,4,0,4,0,8,0,4,0,4,0,4,3,4,0,4
	.byte 0,4,0,4,5,0,0,0,2,4,1,0,0,4,0,8,7,4,0,4,0,4,0,4,0,4,0,8,0,4,0,4
	.byte 7,8,0,8,0,4,0,4,0,4,0,12,0,4,0,8,1,0,0,0,3,4,0,0,0,4,1,4,3,0,3,4
	.byte 3,0,5,4,5,8,2,0,0,4,2,4,1,0,5,4,5,8,2,0,0,0,1,0,10,129,67,0,49,0,104,4
	.byte 8,10,56,24,96,6,16,28,56,6,16,40,112,104,8,24,96,4,104,4,8,24,104,4,88,8,8,38,40,22,40,50
	.byte 240,1,10,40,159,2,40,46,176,1,32,72,10,16,129,76,130,108,52,131,48,0,128,156,0,52,0,0,2,4,0,0
	.byte 5,28,1,0,0,4,0,8,6,4,0,4,0,4,0,4,0,4,0,8,0,4,0,4,5,0,1,4,0,0,2,4
	.byte 1,0,7,4,0,4,0,4,0,4,0,4,0,4,6,4,0,0,1,4,0,0,2,4,1,0,5,4,6,4,0,4
	.byte 0,4,0,4,0,8,0,4,0,4,0,4,3,4,0,4,0,4,0,4,5,0,0,0,52,4,1,0,0,4,0,8
	.byte 6,4,0,4,0,4,0,4,0,4,0,8,0,4,0,4,6,8,0,8,0,4,0,4,0,4,0,12,0,4,0,8
	.byte 1,0,0,0,2,4,1,0,0,4,0,8,6,4,0,4,0,4,0,4,0,4,0,8,0,4,0,8,6,0,0,8
	.byte 0,4,0,4,0,4,0,12,0,4,0,8,1,0,2,0,2,4,2,0,5,4,5,8,2,0,0,4,5,4,1,0
	.byte 5,4,0,4,0,4,0,4,0,4,6,0,0,4,0,8,7,4,5,4,5,8,255,255,255,255,239,0,5,4,13,4
	.byte 1,84,5,0,0,12,0,4,5,4,255,255,255,255,112,20,0,0,0,12,0,4,6,8,5,4,6,4,0,4,0,4
	.byte 0,4,0,8,0,4,0,4,0,4,1,4,0,4,0,4,0,12,6,0,5,4,5,4,0,4,0,4,0,8,0,12
	.byte 5,0,0,0,0,0,0,0,0,4,0,4,5,0,0,8,0,0,5,4,0,4,96,255,255,255,255,88,11,129,91,2
	.byte 1,0,12,0,29,16,12,0,13,255,253,0,0,0,7,138,141,0,60,1,138,137,0,0,2,12,24,9,12,12,24,0
	.byte 2,6,12,1,0,11,128,202,2,1,0,12,0,29,16,12,0,13,255,253,0,0,0,7,138,141,0,61,1,138,137,0
	.byte 0,6,0,88,26,88,10,56,24,116,44,128,128,0,9,0,44,1,4,7,4,0,16,0,8,0,12,0,0,10,28,1
	.byte 0,10,129,105,0,4,0,16,10,32,15,24,8,36,0,5,0,8,0,0,0,12,5,4,1,0,10,129,91,0,6,0
	.byte 64,10,48,10,56,29,84,32,96,0,12,0,32,0,0,0,12,0,4,0,4,0,4,0,0,5,0,0,16,0,8,5
	.byte 4,1,0,10,129,91,0,4,0,24,22,40,13,32,12,44,0,4,0,12,1,4,10,16,1,0,10,129,91,0,4,0
	.byte 80,24,48,19,64,40,76,0,7,0,40,1,4,6,4,0,8,0,4,5,4,1,0,10,129,119,0,4,0,88,26,56
	.byte 19,72,44,84,0,7,0,44,1,4,7,4,0,12,0,4,5,4,1,0,10,128,216,0,7,0,96,12,96,24,200,1
	.byte 21,128,196,48,128,216,0,7,0,48,6,48,1,0,0,4,5,4,6,92,1,0,10,129,119,0,7,0,72,12,184,1
	.byte 22,104,41,128,180,36,128,192,0,17,0,36,1,0,0,12,0,4,0,4,0,72,5,4,0,4,0,8,0,4,0,4
	.byte 0,4,0,12,0,4,0,8,11,0,1,0,10,129,133,0,10,0,96,22,88,22,88,22,88,18,40,35,128,200,48,128
	.byte 216,0,14,0,48,1,0,0,16,10,28,1,0,0,16,10,28,1,0,0,16,10,28,4,12,0,4,5,4,1,0,11
	.byte 129,119,2,1,15,12,0,29,24,12,0,12,255,253,0,0,0,1,29,0,101,2,132,64,0,0,7,0,136,1,22,88
	.byte 52,48,25,128,136,68,128,148,0,9,0,68,1,0,0,16,10,28,21,20,0,0,0,0,5,4,1,0,10,129,150,0
	.byte 8,0,88,22,88,22,88,16,32,27,128,148,44,128,164,0,10,0,44,1,0,0,16,10,28,1,0,0,16,10,28,3
	.byte 12,5,4,1,0,11,129,119,2,1,15,12,0,29,24,12,0,12,255,253,0,0,0,1,29,0,103,2,132,106,0,0
	.byte 7,0,136,1,22,88,32,32,23,128,128,68,128,140,0,8,0,68,1,0,0,16,10,28,11,12,0,0,5,4,1,0
	.byte 11,129,150,2,1,15,16,0,29,40,16,0,12,255,253,0,0,0,1,29,0,104,2,132,141,0,0,9,0,152,1,22
	.byte 88,22,88,34,40,29,128,184,76,128,200,0,11,0,76,1,0,0,16,10,28,1,0,0,16,10,28,12,12,0,4,5
	.byte 4,1,0,11,129,150,2,1,15,16,0,29,40,16,0,12,255,253,0,0,0,1,29,0,106,2,132,176,0,0,9,0
	.byte 152,1,22,88,22,88,34,40,29,128,184,76,128,200,0,11,0,76,1,0,0,16,10,28,1,0,0,16,10,28,12,12
	.byte 0,4,5,4,1,0,11,129,119,2,1,15,12,0,29,24,12,0,12,255,253,0,0,0,1,29,0,109,2,132,224,0
	.byte 0,7,0,136,1,22,88,52,48,25,128,136,68,128,148,0,9,0,68,1,0,0,16,10,28,21,20,0,0,0,0,5
	.byte 4,1,0,11,129,119,2,1,15,12,0,29,24,12,0,12,255,253,0,0,0,1,29,0,111,2,133,10,0,0,7,0
	.byte 136,1,22,88,32,32,23,128,128,68,128,140,0,8,0,68,1,0,0,16,10,28,11,12,0,0,5,4,1,0,11,129
	.byte 150,2,1,15,16,0,29,40,16,0,12,255,253,0,0,0,1,29,0,112,2,133,45,0,0,9,0,152,1,22,88,22
	.byte 88,34,40,29,128,184,76,128,200,0,11,0,76,1,0,0,16,10,28,1,0,0,16,10,28,12,12,0,4,5,4,1
	.byte 0,10,129,167,0,14,0,104,22,80,22,88,22,80,14,80,2,8,16,72,63,129,4,52,129,24,0,28,0,52,1,0
	.byte 0,12,10,28,1,0,0,16,10,28,1,0,0,12,10,28,2,0,0,12,0,4,0,4,0,4,0,4,0,4,0,8
	.byte 5,0,1,4,2,0,0,4,0,4,0,4,0,12,6,12,0,0,1,4,11,129,150,2,1,15,16,0,29,40,16,0
	.byte 12,255,253,0,0,0,1,29,0,114,2,133,98,0,0,9,0,152,1,22,88,32,88,44,40,29,128,184,76,128,200,0
	.byte 11,0,76,1,0,0,16,10,28,6,0,0,16,10,28,17,12,0,4,5,4,1,0,10,128,202,0,8,0,96,16,88
	.byte 2,0,16,72,39,128,132,48,128,144,0,16,0,48,3,0,0,12,0,4,0,4,0,4,0,12,0,8,5,0,1,0
	.byte 2,4,0,4,0,4,0,12,6,12,1,4,10,129,119,0,4,0,96,20,48,15,72,48,84,0,5,0,48,5,8,0
	.byte 12,5,4,1,0,10,129,189,0,10,0,112,20,40,22,88,22,88,14,104,49,128,216,56,128,232,0,21,0,56,5,12
	.byte 0,4,5,4,1,0,0,16,10,28,1,0,0,16,10,28,2,4,0,4,0,8,0,4,0,4,0,4,0,12,0,4
	.byte 0,8,5,0,1,0,10,129,119,0,4,0,88,18,40,15,64,44,76,0,5,0,44,4,8,0,8,5,4,1,0,10
	.byte 129,206,0,10,0,104,18,40,22,88,22,88,14,104,51,128,212,52,128,228,0,22,0,52,4,8,0,4,0,4,5,4
	.byte 1,0,0,16,10,28,1,0,0,16,10,28,2,4,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0
	.byte 1,0,10,35,0,10,0,104,18,40,22,88,22,88,14,104,51,128,212,52,128,228,0,22,0,52,4,8,0,4,0,4
	.byte 5,4,1,0,0,16,10,28,1,0,0,16,10,28,2,4,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8
	.byte 5,0,1,0,10,128,202,0,8,12,48,14,24,14,112,14,96,55,128,140,24,128,152,0,24,6,24,2,8,5,4,2
	.byte 4,0,4,0,12,0,4,0,4,0,4,0,12,0,4,0,8,5,0,2,0,0,4,0,8,0,4,0,4,0,4,0
	.byte 12,0,4,0,8,5,0,1,0,10,129,91,0,10,0,72,12,40,4,8,22,72,4,8,29,104,36,116,0,12,0,36
	.byte 1,16,0,4,5,0,0,0,2,4,1,4,10,32,0,0,2,4,0,0,1,4,10,129,223,0,74,0,80,12,8,4
	.byte 8,12,72,12,32,4,8,12,72,2,16,12,72,4,8,12,72,10,16,2,8,12,16,4,8,12,16,10,16,10,32,4
	.byte 48,2,8,12,16,12,24,4,8,12,16,2,8,12,16,4,8,12,16,10,16,2,8,12,16,4,8,12,16,10,16,10
	.byte 32,4,48,4,8,128,225,129,196,40,129,224,0,109,0,40,1,4,5,0,0,0,2,4,0,0,1,36,6,0,0,4
	.byte 0,4,0,4,0,4,5,0,0,0,2,4,0,0,6,36,0,0,0,4,1,4,0,0,1,36,5,0,0,0,2,4
	.byte 0,0,1,36,5,0,0,4,5,4,0,0,1,4,1,0,0,4,0,4,5,0,0,0,2,4,1,0,0,4,0,4
	.byte 5,0,0,4,0,4,5,0,0,4,0,4,0,8,6,0,0,4,0,8,0,8,1,4,0,0,1,4,1,0,0,4
	.byte 0,4,6,0,0,4,0,4,0,4,5,0,0,0,2,4,1,0,0,4,5,4,0,0,1,4,1,0,0,4,0,4
	.byte 5,0,0,0,2,4,1,0,0,4,0,4,5,0,0,4,5,4,0,0,1,4,1,0,0,4,0,4,5,0,0,0
	.byte 2,4,1,0,0,4,0,4,5,0,0,4,0,4,5,0,0,4,0,4,0,8,6,0,0,4,0,8,0,8,1,4
	.byte 0,0,2,4,0,0,1,4,11,129,91,2,1,15,12,0,29,16,12,0,13,255,253,0,0,0,1,30,0,128,135,2
	.byte 133,167,0,0,5,0,128,1,14,40,19,84,64,96,0,7,0,64,2,4,0,4,0,4,0,4,5,4,1,0,10,129
	.byte 150,0,8,0,88,22,88,22,88,16,32,29,128,148,44,128,164,0,11,0,44,1,0,0,16,10,28,1,0,0,16,10
	.byte 28,3,8,0,4,5,4,1,0,11,129,91,2,1,15,12,0,29,16,12,0,13,255,253,0,0,0,1,30,0,128,138
	.byte 2,133,235,0,0,5,0,128,1,14,40,19,84,64,96,0,7,0,64,2,4,0,4,0,4,0,4,5,4,1,0,10
	.byte 129,91,0,4,0,80,16,32,15,56,40,68,0,5,0,40,3,8,0,4,5,4,1,0,11,129,119,2,1,15,12,0
	.byte 29,24,12,0,13,255,253,0,0,0,1,30,0,128,140,2,134,29,0,0,7,0,136,1,22,88,34,40,23,128,132,68
	.byte 128,144,0,8,0,68,1,0,0,16,10,28,12,12,0,4,5,4,1,0,11,129,91,2,1,15,12,0,29,16,12,0
	.byte 13,255,253,0,0,0,1,30,0,128,141,2,134,80,0,0,5,0,128,1,14,40,19,84,64,96,0,7,0,64,2,4
	.byte 0,4,0,4,0,4,5,4,1,0,11,129,119,2,1,15,12,0,29,24,12,0,13,255,253,0,0,0,1,30,0,128
	.byte 143,2,134,144,0,0,7,0,136,1,22,88,34,40,23,128,132,68,128,144,0,8,0,68,1,0,0,16,10,28,12,12
	.byte 0,4,5,4,1,0,11,129,119,2,1,15,12,0,29,24,12,0,13,255,253,0,0,0,1,30,0,128,144,2,134,184
	.byte 0,0,7,0,136,1,22,88,34,40,23,128,132,68,128,144,0,8,0,68,1,0,0,16,10,28,12,12,0,4,5,4
	.byte 1,0,11,129,119,2,1,15,12,0,29,24,12,0,13,255,253,0,0,0,1,30,0,128,145,2,134,221,0,0,7,0
	.byte 136,1,32,88,42,32,21,128,128,68,128,140,0,7,0,68,6,0,0,16,10,28,16,12,5,4,1,0,10,129,242,0
	.byte 8,0,88,22,88,22,88,14,80,39,128,172,44,128,188,0,16,0,44,1,0,0,16,10,28,1,0,0,16,10,28,2
	.byte 0,0,12,0,4,0,4,0,4,0,8,5,8,0,0,1,0,11,129,119,2,1,15,12,0,29,32,12,0,13,255,253
	.byte 0,0,0,1,30,0,128,147,2,135,16,0,0,5,0,144,1,54,56,17,100,72,112,0,6,0,72,22,16,0,4,0
	.byte 4,5,4,1,0,10,128,202,0,4,0,88,16,88,25,88,44,100,0,10,0,44,3,0,0,12,0,4,0,4,0,4
	.byte 0,12,5,8,0,0,1,0,10,128,202,0,4,0,96,18,96,25,96,48,108,0,10,0,48,4,0,0,12,0,4,0
	.byte 4,0,4,0,16,5,8,0,0,1,0,11,130,3,2,1,15,20,0,29,48,20,0,13,255,253,0,0,0,1,34,0
	.byte 128,152,2,135,60,0,0,16,0,160,1,22,80,14,192,1,6,8,34,88,10,32,2,8,61,129,68,80,129,88,0,27
	.byte 0,80,1,0,0,12,10,28,7,96,1,0,0,0,2,4,12,8,0,4,0,4,0,4,0,12,0,12,10,16,0,0
	.byte 1,4,0,0,0,12,0,4,0,4,5,4,0,8,0,0,5,4,0,4,1,0,11,129,119,2,1,15,12,0,29,24
	.byte 12,0,13,255,253,0,0,0,1,35,0,128,154,2,135,101,0,0,9,0,136,1,22,88,32,88,10,32,29,128,172,68
	.byte 128,184,0,11,0,68,1,0,0,16,10,28,11,12,0,4,0,4,0,12,0,12,10,16,1,0,10,128,216,0,21,0
	.byte 96,22,80,22,80,14,192,1,6,8,14,72,2,8,14,72,40,16,11,112,101,129,60,48,129,128,0,43,0,48,1,0
	.byte 0,12,10,28,1,0,0,12,10,28,7,96,1,0,0,0,2,4,2,0,0,4,0,4,0,4,0,12,5,12,0,0
	.byte 1,4,2,0,0,4,0,4,0,4,0,12,0,12,5,0,1,4,0,0,19,4,0,0,255,255,255,255,239,24,0,12
	.byte 0,4,6,4,0,4,0,4,0,4,5,0,0,8,0,0,5,4,0,4,2,255,255,255,255,188,11,129,119,2,1,15
	.byte 12,0,29,24,12,0,13,255,253,0,0,0,1,35,0,128,156,2,135,147,0,0,9,0,136,1,22,88,32,32,10,32
	.byte 25,128,144,68,128,156,0,9,0,68,1,0,0,16,10,28,11,12,0,0,0,4,10,16,1,0,11,129,119,2,1,15
	.byte 12,0,29,24,12,0,13,255,253,0,0,0,1,35,0,128,157,2,135,188,0,0,7,0,136,1,22,88,12,32,23,128
	.byte 128,68,128,140,0,8,0,68,1,0,0,16,10,28,1,4,0,8,5,4,1,0,10,129,91,0,6,0,72,12,48,10
	.byte 64,27,92,36,104,0,11,0,36,1,0,0,16,0,4,0,4,5,0,0,4,0,4,0,12,5,12,1,0,10,128,216
	.byte 0,38,0,96,22,80,22,80,14,80,4,8,4,56,14,72,10,24,12,16,10,16,4,8,14,72,10,24,12,16,10,16
	.byte 6,8,8,8,8,16,14,72,128,129,129,128,48,129,148,0,61,0,48,1,0,0,12,10,28,1,0,0,12,10,28,1
	.byte 0,0,4,0,4,0,12,0,16,6,4,0,0,2,4,0,0,2,28,2,0,0,4,0,4,0,4,0,12,0,12,5
	.byte 12,6,8,5,0,0,0,0,0,0,4,0,4,5,0,0,0,2,4,2,0,0,4,0,4,0,4,0,12,0,12,5
	.byte 12,6,8,5,0,0,0,0,0,0,4,0,4,5,0,0,0,3,4,2,0,2,4,2,0,0,4,2,4,2,0,0
	.byte 4,0,4,0,4,0,12,5,12,1,0,10,130,25,0,12,0,104,22,88,22,88,22,80,16,32,14,24,43,128,208,52
	.byte 128,228,0,18,0,52,1,0,0,16,10,28,1,0,0,16,10,28,1,0,0,12,10,28,2,4,0,4,0,4,6,4
	.byte 2,4,0,4,5,4,1,0,11,129,119,2,1,15,12,0,29,24,12,0,13,255,253,0,0,0,1,36,0,128,163,2
	.byte 136,48,0,0,7,0,136,1,22,88,52,48,25,128,136,68,128,148,0,9,0,68,1,0,0,16,10,28,21,20,0,0
	.byte 0,0,5,4,1,0,11,129,119,2,1,15,12,0,29,32,12,0,13,255,253,0,0,0,1,36,0,128,164,2,136,92
	.byte 0,0,7,0,144,1,14,40,10,16,23,100,72,112,0,9,0,72,2,4,0,8,0,4,0,4,5,4,0,0,5,4
	.byte 1,0,11,129,119,2,1,15,12,0,29,24,12,0,13,255,253,0,0,0,1,36,0,128,166,2,136,139,0,0,7,0
	.byte 136,1,22,88,52,48,25,128,136,68,128,148,0,9,0,68,1,0,0,16,10,28,21,20,0,0,0,0,5,4,1,0
	.byte 11,129,119,2,1,15,12,0,29,24,12,0,13,255,253,0,0,0,1,36,0,128,167,2,136,190,0,0,7,0,136,1
	.byte 22,88,52,48,25,128,136,68,128,148,0,9,0,68,1,0,0,16,10,28,21,20,0,0,0,0,5,4,1,0,11,129
	.byte 119,2,1,15,12,0,29,32,12,0,13,255,253,0,0,0,1,36,0,128,168,2,136,234,0,0,7,0,144,1,14,40
	.byte 10,16,23,100,72,112,0,9,0,72,2,4,0,8,0,4,0,4,5,4,0,0,5,4,1,0,10,130,45,0,61,0
	.byte 104,22,80,22,80,14,32,32,48,4,8,14,16,10,24,60,8,14,80,4,8,4,56,16,80,12,32,12,16,10,16,4
	.byte 8,12,24,12,24,4,8,12,16,12,16,10,16,6,8,8,8,8,16,14,72,229,1,48,24,56,10,24,128,239,129,196
	.byte 52,130,48,0,112,0,52,1,0,0,12,10,28,1,0,0,12,10,28,1,0,0,4,0,4,0,4,6,4,0,0,1
	.byte 4,10,12,0,0,0,0,0,4,0,4,5,0,0,0,2,4,2,8,5,0,0,4,0,0,0,4,0,4,5,0,0
	.byte 0,30,4,1,0,0,4,0,4,0,12,0,16,6,4,0,0,2,4,0,0,2,28,2,0,0,4,0,4,0,4,0
	.byte 12,0,12,6,4,0,0,1,16,6,8,5,0,0,0,0,0,0,4,0,4,5,0,0,0,2,4,1,0,0,4,0
	.byte 4,0,4,6,0,0,4,0,4,0,4,5,0,0,0,2,4,1,8,6,8,5,0,0,0,0,0,0,4,0,4,5
	.byte 0,0,0,3,4,2,0,2,4,2,0,0,4,2,4,2,0,0,4,0,4,0,4,0,12,5,12,255,255,255,255,141
	.byte 24,0,0,0,12,0,4,7,12,5,0,0,0,0,4,0,0,0,8,5,0,0,12,0,4,0,4,5,8,0,8,0
	.byte 0,0,0,5,4,0,4,89,255,255,255,255,148,5,0,30,0,1,1,128,170,5,1,28,7,173,77,5,0,30,1,1
	.byte 1,128,170,5,1,28,7,173,91,2,7,173,85,7,173,99,11,130,74,2,1,15,12,0,29,64,12,0,13,255,253,0
	.byte 0,0,1,37,0,128,170,2,173,105,0,0,4,22,88,12,88,11,88,44,104,0,3,6,44,11,44,1,0,5,0,30
	.byte 0,1,1,128,171,5,1,28,7,173,157,5,0,30,1,1,1,128,171,5,1,28,7,173,171,2,7,173,165,7,173,179
	.byte 11,130,74,2,1,15,12,0,29,64,12,0,13,255,253,0,0,0,1,37,0,128,171,2,173,185,0,0,4,12,88,12
	.byte 88,11,88,44,104,0,3,1,44,11,44,1,0,5,0,30,0,1,1,128,172,5,1,28,7,173,237,5,0,30,1,1
	.byte 1,128,172,5,1,28,7,173,251,2,7,173,245,7,174,3,11,129,119,2,1,15,12,0,29,32,12,0,13,255,253,0
	.byte 0,0,1,37,0,128,172,2,174,9,0,0,4,12,88,12,32,15,60,44,72,0,5,1,44,6,4,0,8,5,4,1
	.byte 0,0,128,144,16,0,0,1,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4
	.byte 128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,204,31,16,24,0,1,193,0
	.byte 2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,160,56,0,0,8,193,0,6,189,193,0,6,188,193,0,6
	.byte 190,193,0,2,199,4,128,160,56,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,160,40
	.byte 0,0,8,193,0,6,189,193,0,6,188,193,0,6,190,193,0,2,199,4,128,160,80,0,0,8,193,0,6,189,193,0
	.byte 6,188,193,0,6,190,193,0,2,199,4,128,160,56,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2
	.byte 199,4,128,160,32,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,160,32,0,0,8,193
	.byte 0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,160,24,0,0,8,193,0,6,189,193,0,6,188,193,0
	.byte 6,190,193,0,2,199,255,255,255,255,255,7,128,144,16,0,0,1,193,0,1,188,193,0,1,187,193,0,2,200,193,0
	.byte 2,199,193,0,1,192,193,0,1,191,193,0,1,190,7,128,144,16,0,0,1,193,0,1,188,193,0,1,187,193,0,2
	.byte 200,193,0,2,199,193,0,1,192,193,0,1,191,193,0,1,190,0,128,144,16,0,0,1,4,128,204,67,16,8,0,1
	.byte 193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,68
	.byte 193,0,2,199,0,128,144,16,0,0,1,255,255,255,255,255,0,128,144,16,0,0,1,0,128,144,16,0,0,1,0,128
	.byte 144,16,0,0,1,0,128,144,16,0,0,1,0,128,144,16,0,0,1,15,128,160,128,128,0,0,8,193,0,3,128,193
	.byte 0,3,127,193,0,2,200,193,0,2,199,193,0,1,226,193,0,3,125,193,0,3,125,193,0,3,130,193,0,3,135,193
	.byte 0,3,133,193,0,1,226,193,0,3,129,193,0,3,126,193,0,3,136,78,255,255,255,255,255,18,128,160,32,0,0,8
	.byte 193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,83,84,92,93,94,81,82,90,85,86,87,88,89,91,4,128
	.byte 144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,160,64,0,0,8,193,0,2,204
	.byte 193,0,2,201,128,133,193,0,2,199,7,128,144,16,0,0,1,193,0,1,188,193,0,1,187,193,0,2,200,193,0,2
	.byte 199,193,0,1,192,193,0,1,191,193,0,1,190,24,128,144,20,0,0,4,193,0,2,47,193,0,2,46,193,0,2,49
	.byte 193,0,2,199,193,0,2,48,193,0,2,60,193,0,2,52,193,0,2,76,193,0,2,77,193,0,2,78,193,0,2,79
	.byte 193,0,2,80,193,0,2,81,193,0,2,82,193,0,2,83,193,0,2,84,193,0,2,85,193,0,2,86,193,0,2,87
	.byte 193,0,2,88,193,0,2,89,193,0,2,90,193,0,2,51,193,0,2,91,24,128,144,20,0,0,4,193,0,2,47,193
	.byte 0,2,46,193,0,2,49,193,0,2,199,193,0,2,48,193,0,2,60,193,0,2,52,193,0,2,76,193,0,2,77,193
	.byte 0,2,78,193,0,2,79,193,0,2,80,193,0,2,81,193,0,2,82,193,0,2,83,193,0,2,84,193,0,2,85,193
	.byte 0,2,86,193,0,2,87,193,0,2,88,193,0,2,89,193,0,2,90,193,0,2,51,193,0,2,91,4,128,144,16,0
	.byte 0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0,2
	.byte 201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199
	.byte 4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,255,255,255,255,255,255,255,255,255
	.byte 255,115,103,101,110,0
.section ".rodata"
.subsection 1
runtime_version:
	.string ""
.section ".rodata"
.subsection 1
assembly_guid:
	.string "A6D6D586-DA6A-44B5-8B98-99625ECCBF6C"
.section ".rodata"
.subsection 1
assembly_name:
	.string "Microsoft.Extensions.DependencyInjection.Abstractions"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 187,0
	.balign 8
	.xword mono_aot_Microsoft_Extensions_DependencyInjection_Abstractions_got
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

	.long 114,114,1848,200,117,173,0,32
	.long 374417919,0,12769,128,8,8,7,9
	.long 8388607,0,4,25,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.byte 43,47,154,253,200,30,102,99,210,7,6,173,135,109,27,235
.section ".debug_info"
.subsection 0
.LTDIE_0:

	.byte 17
	.string "System_IServiceProvider"

	.byte 16,7
	.string "System_IServiceProvider"

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
.LTDIE_3:

	.byte 17
	.string "System_Object"

	.byte 16,7
	.string "System_Object"

.LDIFF_SYM6=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM6
.LTDIE_3_POINTER:

	.byte 13
.LDIFF_SYM7=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM7
.LTDIE_3_REFERENCE:

	.byte 14
.LDIFF_SYM8=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM8
.LTDIE_2:

	.byte 5
	.string "System_Reflection_MemberInfo"

	.byte 16,16
.LDIFF_SYM9=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM9
	.byte 2,35,0,0,7
	.string "System_Reflection_MemberInfo"

.LDIFF_SYM10=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM10
.LTDIE_2_POINTER:

	.byte 13
.LDIFF_SYM11=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM11
.LTDIE_2_REFERENCE:

	.byte 14
.LDIFF_SYM12=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM12
.LTDIE_5:

	.byte 5
	.string "System_Reflection_LoaderAllocatorScout"

	.byte 24,16
.LDIFF_SYM13=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM13
	.byte 2,35,0,6
	.string "m_native"

.LDIFF_SYM14=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM14
	.byte 2,35,16,0,7
	.string "System_Reflection_LoaderAllocatorScout"

.LDIFF_SYM15=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM15
.LTDIE_5_POINTER:

	.byte 13
.LDIFF_SYM16=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM16
.LTDIE_5_REFERENCE:

	.byte 14
.LDIFF_SYM17=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM17
.LTDIE_7:

	.byte 5
	.string "System_ValueType"

	.byte 16,16
.LDIFF_SYM18=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM18
	.byte 2,35,0,0,7
	.string "System_ValueType"

.LDIFF_SYM19=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM19
.LTDIE_7_POINTER:

	.byte 13
.LDIFF_SYM20=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM20
.LTDIE_7_REFERENCE:

	.byte 14
.LDIFF_SYM21=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM21
.LTDIE_6:

	.byte 5
	.string "System_Int32"

	.byte 20,16
.LDIFF_SYM22=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM22
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM23=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM23
	.byte 2,35,16,0,7
	.string "System_Int32"

.LDIFF_SYM24=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM24
.LTDIE_6_POINTER:

	.byte 13
.LDIFF_SYM25=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM25
.LTDIE_6_REFERENCE:

	.byte 14
.LDIFF_SYM26=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM26
.LTDIE_4:

	.byte 5
	.string "System_Reflection_LoaderAllocator"

	.byte 48,16
.LDIFF_SYM27=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM27
	.byte 2,35,0,6
	.string "m_scout"

.LDIFF_SYM28=.LTDIE_5_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM28
	.byte 2,35,16,6
	.string "m_slots"

.LDIFF_SYM29=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM29
	.byte 2,35,24,6
	.string "m_hashes"

.LDIFF_SYM30=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM30
	.byte 2,35,32,6
	.string "m_nslots"

.LDIFF_SYM31=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM31
	.byte 2,35,40,0,7
	.string "System_Reflection_LoaderAllocator"

.LDIFF_SYM32=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM32
.LTDIE_4_POINTER:

	.byte 13
.LDIFF_SYM33=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM33
.LTDIE_4_REFERENCE:

	.byte 14
.LDIFF_SYM34=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM34
.LTDIE_1:

	.byte 5
	.string "System_Type"

	.byte 32,16
.LDIFF_SYM35=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM35
	.byte 2,35,0,6
	.string "_impl"

.LDIFF_SYM36=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM36
	.byte 2,35,16,6
	.string "m_keepalive"

.LDIFF_SYM37=.LTDIE_4_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM37
	.byte 2,35,24,0,7
	.string "System_Type"

.LDIFF_SYM38=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM38
.LTDIE_1_POINTER:

	.byte 13
.LDIFF_SYM39=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM39
.LTDIE_1_REFERENCE:

	.byte 14
.LDIFF_SYM40=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM40
.LTDIE_10:

	.byte 5
	.string "System_Reflection_MethodBase"

	.byte 16,16
.LDIFF_SYM41=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM41
	.byte 2,35,0,0,7
	.string "System_Reflection_MethodBase"

.LDIFF_SYM42=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM42
.LTDIE_10_POINTER:

	.byte 13
.LDIFF_SYM43=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM43
.LTDIE_10_REFERENCE:

	.byte 14
.LDIFF_SYM44=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM44
.LTDIE_9:

	.byte 5
	.string "System_Reflection_ConstructorInfo"

	.byte 16,16
.LDIFF_SYM45=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM45
	.byte 2,35,0,0,7
	.string "System_Reflection_ConstructorInfo"

.LDIFF_SYM46=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM46
.LTDIE_9_POINTER:

	.byte 13
.LDIFF_SYM47=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM47
.LTDIE_9_REFERENCE:

	.byte 14
.LDIFF_SYM48=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM48
.LTDIE_11:

	.byte 5
	.string "System_Boolean"

	.byte 17,16
.LDIFF_SYM49=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM49
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM50=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM50
	.byte 2,35,16,0,7
	.string "System_Boolean"

.LDIFF_SYM51=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM51
.LTDIE_11_POINTER:

	.byte 13
.LDIFF_SYM52=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM52
.LTDIE_11_REFERENCE:

	.byte 14
.LDIFF_SYM53=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM53
.LTDIE_16:

	.byte 5
	.string "System_Reflection_MethodInfo"

	.byte 16,16
.LDIFF_SYM54=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM54
	.byte 2,35,0,0,7
	.string "System_Reflection_MethodInfo"

.LDIFF_SYM55=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM55
.LTDIE_16_POINTER:

	.byte 13
.LDIFF_SYM56=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM56
.LTDIE_16_REFERENCE:

	.byte 14
.LDIFF_SYM57=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM57
.LTDIE_17:

	.byte 5
	.string "System_DelegateData"

	.byte 40,16
.LDIFF_SYM58=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM58
	.byte 2,35,0,6
	.string "target_type"

.LDIFF_SYM59=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM59
	.byte 2,35,16,6
	.string "method_name"

.LDIFF_SYM60=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM60
	.byte 2,35,24,6
	.string "curried_first_arg"

.LDIFF_SYM61=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM61
	.byte 2,35,32,0,7
	.string "System_DelegateData"

.LDIFF_SYM62=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM62
.LTDIE_17_POINTER:

	.byte 13
.LDIFF_SYM63=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM63
.LTDIE_17_REFERENCE:

	.byte 14
.LDIFF_SYM64=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM64
.LTDIE_15:

	.byte 5
	.string "System_Delegate"

	.byte 120,16
.LDIFF_SYM65=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM65
	.byte 2,35,0,6
	.string "method_ptr"

.LDIFF_SYM66=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM66
	.byte 2,35,16,6
	.string "invoke_impl"

.LDIFF_SYM67=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM67
	.byte 2,35,24,6
	.string "_target"

.LDIFF_SYM68=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM68
	.byte 2,35,32,6
	.string "method"

.LDIFF_SYM69=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM69
	.byte 2,35,40,6
	.string "delegate_trampoline"

.LDIFF_SYM70=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM70
	.byte 2,35,48,6
	.string "extra_arg"

.LDIFF_SYM71=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM71
	.byte 2,35,56,6
	.string "method_code"

.LDIFF_SYM72=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM72
	.byte 2,35,64,6
	.string "interp_method"

.LDIFF_SYM73=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM73
	.byte 2,35,72,6
	.string "interp_invoke_impl"

.LDIFF_SYM74=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM74
	.byte 2,35,80,6
	.string "method_info"

.LDIFF_SYM75=.LTDIE_16_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM75
	.byte 2,35,88,6
	.string "original_method_info"

.LDIFF_SYM76=.LTDIE_16_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM76
	.byte 2,35,96,6
	.string "data"

.LDIFF_SYM77=.LTDIE_17_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM77
	.byte 2,35,104,6
	.string "method_is_virtual"

.LDIFF_SYM78=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM78
	.byte 2,35,112,6
	.string "bound"

.LDIFF_SYM79=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM79
	.byte 2,35,113,0,7
	.string "System_Delegate"

.LDIFF_SYM80=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM80
.LTDIE_15_POINTER:

	.byte 13
.LDIFF_SYM81=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM81
.LTDIE_15_REFERENCE:

	.byte 14
.LDIFF_SYM82=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM82
.LTDIE_14:

	.byte 5
	.string "System_MulticastDelegate"

	.byte 128,1,16
.LDIFF_SYM83=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM83
	.byte 2,35,0,6
	.string "delegates"

.LDIFF_SYM84=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM84
	.byte 2,35,120,0,7
	.string "System_MulticastDelegate"

.LDIFF_SYM85=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM85
.LTDIE_14_POINTER:

	.byte 13
.LDIFF_SYM86=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM86
.LTDIE_14_REFERENCE:

	.byte 14
.LDIFF_SYM87=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM87
.LTDIE_13:

	.byte 5
	.string "_InvokeFunc_ObjSpanArgs"

	.byte 128,1,16
.LDIFF_SYM88=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM88
	.byte 2,35,0,0,7
	.string "_InvokeFunc_ObjSpanArgs"

.LDIFF_SYM89=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM89
.LTDIE_13_POINTER:

	.byte 13
.LDIFF_SYM90=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM90
.LTDIE_13_REFERENCE:

	.byte 14
.LDIFF_SYM91=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM91
.LTDIE_18:

	.byte 5
	.string "_InvokeFunc_Obj4Args"

	.byte 128,1,16
.LDIFF_SYM92=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM92
	.byte 2,35,0,0,7
	.string "_InvokeFunc_Obj4Args"

.LDIFF_SYM93=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM93
.LTDIE_18_POINTER:

	.byte 13
.LDIFF_SYM94=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM94
.LTDIE_18_REFERENCE:

	.byte 14
.LDIFF_SYM95=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM95
.LTDIE_19:

	.byte 5
	.string "_InvokeFunc_RefArgs"

	.byte 128,1,16
.LDIFF_SYM96=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM96
	.byte 2,35,0,0,7
	.string "_InvokeFunc_RefArgs"

.LDIFF_SYM97=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM97
.LTDIE_19_POINTER:

	.byte 13
.LDIFF_SYM98=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM98
.LTDIE_19_REFERENCE:

	.byte 14
.LDIFF_SYM99=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM99
.LTDIE_20:

	.byte 8
	.string "_InvokerStrategy"

	.byte 4
.LDIFF_SYM100=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM100
	.byte 9
	.string "HasBeenInvoked_ObjSpanArgs"

	.byte 1,9
	.string "StrategyDetermined_ObjSpanArgs"

	.byte 2,9
	.string "HasBeenInvoked_Obj4Args"

	.byte 4,9
	.string "StrategyDetermined_Obj4Args"

	.byte 8,9
	.string "HasBeenInvoked_RefArgs"

	.byte 16,9
	.string "StrategyDetermined_RefArgs"

	.byte 32,0,7
	.string "_InvokerStrategy"

.LDIFF_SYM101=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM101
.LTDIE_20_POINTER:

	.byte 13
.LDIFF_SYM102=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM102
.LTDIE_20_REFERENCE:

	.byte 14
.LDIFF_SYM103=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM103
.LTDIE_21:

	.byte 8
	.string "System_Reflection_InvocationFlags"

	.byte 4
.LDIFF_SYM104=.LDIE_U4 - .Ldebug_info_start
	.long .LDIFF_SYM104
	.byte 9
	.string "Unknown"

	.byte 0,9
	.string "Initialized"

	.byte 1,9
	.string "NoInvoke"

	.byte 2,9
	.string "RunClassConstructor"

	.byte 4,9
	.string "NoConstructorInvoke"

	.byte 8,9
	.string "IsConstructor"

	.byte 16,9
	.string "IsDelegateConstructor"

	.byte 128,1,9
	.string "ContainsStackPointers"

	.byte 128,2,9
	.string "SpecialField"

	.byte 16,9
	.string "FieldSpecialCast"

	.byte 32,0,7
	.string "System_Reflection_InvocationFlags"

.LDIFF_SYM105=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM105
.LTDIE_21_POINTER:

	.byte 13
.LDIFF_SYM106=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM106
.LTDIE_21_REFERENCE:

	.byte 14
.LDIFF_SYM107=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM107
.LTDIE_23:

	.byte 5
	.string "System_Reflection_MethodBaseInvoker"

	.byte 72,16
.LDIFF_SYM108=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM108
	.byte 2,35,0,6
	.string "_invokeFunc_ObjSpanArgs"

.LDIFF_SYM109=.LTDIE_13_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM109
	.byte 2,35,16,6
	.string "_invokeFunc_RefArgs"

.LDIFF_SYM110=.LTDIE_19_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM110
	.byte 2,35,24,6
	.string "_strategy"

.LDIFF_SYM111=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM111
	.byte 2,35,56,6
	.string "_invocationFlags"

.LDIFF_SYM112=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM112
	.byte 2,35,60,6
	.string "_invokerArgFlags"

.LDIFF_SYM113=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM113
	.byte 2,35,32,6
	.string "_argTypes"

.LDIFF_SYM114=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM114
	.byte 2,35,40,6
	.string "_method"

.LDIFF_SYM115=.LTDIE_10_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM115
	.byte 2,35,48,6
	.string "_argCount"

.LDIFF_SYM116=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM116
	.byte 2,35,64,6
	.string "_needsByRefStrategy"

.LDIFF_SYM117=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM117
	.byte 2,35,68,0,7
	.string "System_Reflection_MethodBaseInvoker"

.LDIFF_SYM118=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM118
.LTDIE_23_POINTER:

	.byte 13
.LDIFF_SYM119=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM119
.LTDIE_23_REFERENCE:

	.byte 14
.LDIFF_SYM120=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM120
.LTDIE_22:

	.byte 5
	.string "System_Reflection_RuntimeConstructorInfo"

	.byte 64,16
.LDIFF_SYM121=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM121
	.byte 2,35,0,6
	.string "mhandle"

.LDIFF_SYM122=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM122
	.byte 2,35,16,6
	.string "name"

.LDIFF_SYM123=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM123
	.byte 2,35,24,6
	.string "reftype"

.LDIFF_SYM124=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM124
	.byte 2,35,32,6
	.string "toString"

.LDIFF_SYM125=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM125
	.byte 2,35,40,6
	.string "parameterTypes"

.LDIFF_SYM126=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM126
	.byte 2,35,48,6
	.string "invoker"

.LDIFF_SYM127=.LTDIE_23_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM127
	.byte 2,35,56,0,7
	.string "System_Reflection_RuntimeConstructorInfo"

.LDIFF_SYM128=.LTDIE_22 - .Ldebug_info_start
	.long .LDIFF_SYM128
.LTDIE_22_POINTER:

	.byte 13
.LDIFF_SYM129=.LTDIE_22 - .Ldebug_info_start
	.long .LDIFF_SYM129
.LTDIE_22_REFERENCE:

	.byte 14
.LDIFF_SYM130=.LTDIE_22 - .Ldebug_info_start
	.long .LDIFF_SYM130
.LTDIE_12:

	.byte 5
	.string "System_Reflection_ConstructorInvoker"

	.byte 80,16
.LDIFF_SYM131=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM131
	.byte 2,35,0,6
	.string "_invokeFunc_ObjSpanArgs"

.LDIFF_SYM132=.LTDIE_13_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM132
	.byte 2,35,16,6
	.string "_invokeFunc_Obj4Args"

.LDIFF_SYM133=.LTDIE_18_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM133
	.byte 2,35,24,6
	.string "_invokeFunc_RefArgs"

.LDIFF_SYM134=.LTDIE_19_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM134
	.byte 2,35,32,6
	.string "_strategy"

.LDIFF_SYM135=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM135
	.byte 2,35,64,6
	.string "_argCount"

.LDIFF_SYM136=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM136
	.byte 2,35,68,6
	.string "_argTypes"

.LDIFF_SYM137=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM137
	.byte 2,35,40,6
	.string "_invocationFlags"

.LDIFF_SYM138=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM138
	.byte 2,35,72,6
	.string "_invokerArgFlags"

.LDIFF_SYM139=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM139
	.byte 2,35,48,6
	.string "_method"

.LDIFF_SYM140=.LTDIE_22_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM140
	.byte 2,35,56,6
	.string "_needsByRefStrategy"

.LDIFF_SYM141=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM141
	.byte 2,35,76,0,7
	.string "System_Reflection_ConstructorInvoker"

.LDIFF_SYM142=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM142
.LTDIE_12_POINTER:

	.byte 13
.LDIFF_SYM143=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM143
.LTDIE_12_REFERENCE:

	.byte 14
.LDIFF_SYM144=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM144
.LTDIE_8:

	.byte 5
	.string "_ConstructorInfoEx"

	.byte 56,16
.LDIFF_SYM145=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM145
	.byte 2,35,0,6
	.string "Info"

.LDIFF_SYM146=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM146
	.byte 2,35,16,6
	.string "Parameters"

.LDIFF_SYM147=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM147
	.byte 2,35,24,6
	.string "IsPreferred"

.LDIFF_SYM148=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM148
	.byte 2,35,48,6
	.string "_parameterKeys"

.LDIFF_SYM149=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM149
	.byte 2,35,32,6
	.string "_invoker"

.LDIFF_SYM150=.LTDIE_12_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM150
	.byte 2,35,40,0,7
	.string "_ConstructorInfoEx"

.LDIFF_SYM151=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM151
.LTDIE_8_POINTER:

	.byte 13
.LDIFF_SYM152=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM152
.LTDIE_8_REFERENCE:

	.byte 14
.LDIFF_SYM153=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM153
.LTDIE_24:

	.byte 17
	.string "Microsoft_Extensions_DependencyInjection_IServiceProviderIsService"

	.byte 16,7
	.string "Microsoft_Extensions_DependencyInjection_IServiceProviderIsService"

.LDIFF_SYM154=.LTDIE_24 - .Ldebug_info_start
	.long .LDIFF_SYM154
.LTDIE_24_POINTER:

	.byte 13
.LDIFF_SYM155=.LTDIE_24 - .Ldebug_info_start
	.long .LDIFF_SYM155
.LTDIE_24_REFERENCE:

	.byte 14
.LDIFF_SYM156=.LTDIE_24 - .Ldebug_info_start
	.long .LDIFF_SYM156
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:CreateInstance"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateInstance_System_IServiceProvider_System_Type_object__"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:CreateInstance"
	.xword .Lm_5
	.xword .Lme_5

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM157=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM157
	.byte 1,104,3
	.string "param1"

.LDIFF_SYM158=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM158
	.byte 1,105,3
	.string "param2"

.LDIFF_SYM159=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM159
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM160=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM160
	.byte 3,141,136,3,11
	.string "V_1"

.LDIFF_SYM161=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM161
	.byte 3,141,200,2,11
	.string "V_2"

.LDIFF_SYM162=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM162
	.byte 1,103,11
	.string "V_3"

.LDIFF_SYM163=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM163
	.byte 3,141,184,2,11
	.string "V_4"

.LDIFF_SYM164=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM164
	.byte 3,141,168,2,11
	.string "V_5"

.LDIFF_SYM165=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM165
	.byte 3,141,152,2,11
	.string "V_6"

.LDIFF_SYM166=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM166
	.byte 3,141,128,2,11
	.string "V_7"

.LDIFF_SYM167=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM167
	.byte 1,102,11
	.string "V_8"

.LDIFF_SYM168=.LTDIE_24_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM168
	.byte 1,103,11
	.string "V_9"

.LDIFF_SYM169=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM169
	.byte 1,103,11
	.string "V_10"

.LDIFF_SYM170=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM170
	.byte 3,141,144,3,11
	.string "V_11"

.LDIFF_SYM171=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM171
	.byte 3,141,152,3,11
	.string "V_12"

.LDIFF_SYM172=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM172
	.byte 1,101,11
	.string "V_13"

.LDIFF_SYM173=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM173
	.byte 3,141,232,1,11
	.string "V_14"

.LDIFF_SYM174=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM174
	.byte 1,100,11
	.string "V_15"

.LDIFF_SYM175=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM175
	.byte 1,101,11
	.string "V_16"

.LDIFF_SYM176=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM176
	.byte 1,105,11
	.string "V_17"

.LDIFF_SYM177=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM177
	.byte 1,99,11
	.string "V_18"

.LDIFF_SYM178=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM178
	.byte 1,102,11
	.string "V_19"

.LDIFF_SYM179=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM179
	.byte 1,102,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM180=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM180
.Lfde0_start:

	.long 0
	.balign 8
	.xword .Lm_5

.LDIFF_SYM181=.Lme_5 - .Lm_5
	.long .LDIFF_SYM181
	.long 0
	.byte 12,31,0,68,14,192,3,157,56,158,55,68,13,29,68,147,54,148,53,68,149,52,150,51,68,151,50,152,49,68,153,48
	.byte 154,47
	.balign 8
.Lfde0_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:GetOrAddConstructors"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_GetOrAddConstructors_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:GetOrAddConstructors"
	.xword .Lm_6
	.xword .Lme_6

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM182=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM182
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM183=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM183
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM184=.Lfde1_end - .Lfde1_start
	.long .LDIFF_SYM184
.Lfde1_start:

	.long 0
	.balign 8
	.xword .Lm_6

.LDIFF_SYM185=.Lme_6 - .Lm_6
	.long .LDIFF_SYM185
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.balign 8
.Lfde1_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:CreateConstructorInfoExs"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateConstructorInfoExs_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:CreateConstructorInfoExs"
	.xword .Lm_7
	.xword .Lme_7

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM186=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM186
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM187=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM187
	.byte 1,106,11
	.string "V_1"

.LDIFF_SYM188=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM188
	.byte 1,105,11
	.string "V_2"

.LDIFF_SYM189=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM189
	.byte 1,104,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM190=.Lfde2_end - .Lfde2_start
	.long .LDIFF_SYM190
.Lfde2_start:

	.long 0
	.balign 8
	.xword .Lm_7

.LDIFF_SYM191=.Lme_7 - .Lm_7
	.long .LDIFF_SYM191
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4
	.balign 8
.Lfde2_end:

.section ".debug_info"
.subsection 0
.LTDIE_26:

	.byte 5
	.string "System_Linq_Expressions_Expression"

	.byte 16,16
.LDIFF_SYM192=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM192
	.byte 2,35,0,0,7
	.string "System_Linq_Expressions_Expression"

.LDIFF_SYM193=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM193
.LTDIE_26_POINTER:

	.byte 13
.LDIFF_SYM194=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM194
.LTDIE_26_REFERENCE:

	.byte 14
.LDIFF_SYM195=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM195
.LTDIE_25:

	.byte 5
	.string "System_Linq_Expressions_ParameterExpression"

	.byte 24,16
.LDIFF_SYM196=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM196
	.byte 2,35,0,6
	.string "<Name>k__BackingField"

.LDIFF_SYM197=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM197
	.byte 2,35,16,0,7
	.string "System_Linq_Expressions_ParameterExpression"

.LDIFF_SYM198=.LTDIE_25 - .Ldebug_info_start
	.long .LDIFF_SYM198
.LTDIE_25_POINTER:

	.byte 13
.LDIFF_SYM199=.LTDIE_25 - .Ldebug_info_start
	.long .LDIFF_SYM199
.LTDIE_25_REFERENCE:

	.byte 14
.LDIFF_SYM200=.LTDIE_25 - .Ldebug_info_start
	.long .LDIFF_SYM200
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:CreateFactory"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_System_Type_System_Type__"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:CreateFactory"
	.xword .Lm_8
	.xword .Lme_8

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM201=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM201
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM202=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM202
	.byte 2,141,24,11
	.string "V_0"

.LDIFF_SYM203=.LTDIE_25_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM203
	.byte 2,141,32,11
	.string "V_1"

.LDIFF_SYM204=.LTDIE_25_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM204
	.byte 2,141,40,11
	.string "V_2"

.LDIFF_SYM205=.LTDIE_26_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM205
	.byte 2,141,48,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM206=.Lfde3_end - .Lfde3_start
	.long .LDIFF_SYM206
.Lfde3_start:

	.long 0
	.balign 8
	.xword .Lm_8

.LDIFF_SYM207=.Lme_8 - .Lm_8
	.long .LDIFF_SYM207
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.balign 8
.Lfde3_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:CreateFactory<T_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactory_T_REF_System_Type__"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:CreateFactory<T_REF>"
	.xword .Lm_9
	.xword .Lme_9

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM208=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM208
	.byte 2,141,16,11
	.string "V_0"

.LDIFF_SYM209=.LTDIE_25_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM209
	.byte 2,141,32,11
	.string "V_1"

.LDIFF_SYM210=.LTDIE_25_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM210
	.byte 2,141,40,11
	.string "V_2"

.LDIFF_SYM211=.LTDIE_26_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM211
	.byte 2,141,48,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM212=.Lfde4_end - .Lfde4_start
	.long .LDIFF_SYM212
.Lfde4_start:

	.long 0
	.balign 8
	.xword .Lm_9

.LDIFF_SYM213=.Lme_9 - .Lm_9
	.long .LDIFF_SYM213
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.balign 8
.Lfde4_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:CreateFactoryInternal"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_CreateFactoryInternal_System_Type_System_Type___System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_ParameterExpression__System_Linq_Expressions_Expression_"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:CreateFactoryInternal"
	.xword .Lm_a
	.xword .Lme_a

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM214=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM214
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM215=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM215
	.byte 2,141,24,3
	.string "param2"

.LDIFF_SYM216=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM216
	.byte 2,141,32,3
	.string "param3"

.LDIFF_SYM217=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM217
	.byte 2,141,40,3
	.string "param4"

.LDIFF_SYM218=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM218
	.byte 2,141,48,11
	.string "V_0"

.LDIFF_SYM219=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM219
	.byte 2,141,56,11
	.string "V_1"

.LDIFF_SYM220=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM220
	.byte 3,141,192,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM221=.Lfde5_end - .Lfde5_start
	.long .LDIFF_SYM221
.Lfde5_start:

	.long 0
	.balign 8
	.xword .Lm_a

.LDIFF_SYM222=.Lme_a - .Lm_a
	.long .LDIFF_SYM222
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.balign 8
.Lfde5_end:

.section ".debug_info"
.subsection 0
.LTDIE_28:

	.byte 8
	.string "System_Reflection_ParameterAttributes"

	.byte 4
.LDIFF_SYM223=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM223
	.byte 9
	.string "None"

	.byte 0,9
	.string "In"

	.byte 1,9
	.string "Out"

	.byte 2,9
	.string "Lcid"

	.byte 4,9
	.string "Retval"

	.byte 8,9
	.string "Optional"

	.byte 16,9
	.string "HasDefault"

	.byte 128,32,9
	.string "HasFieldMarshal"

	.byte 128,192,0,9
	.string "Reserved3"

	.byte 128,128,1,9
	.string "Reserved4"

	.byte 128,128,2,9
	.string "ReservedMask"

	.byte 128,224,3,0,7
	.string "System_Reflection_ParameterAttributes"

.LDIFF_SYM224=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM224
.LTDIE_28_POINTER:

	.byte 13
.LDIFF_SYM225=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM225
.LTDIE_28_REFERENCE:

	.byte 14
.LDIFF_SYM226=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM226
.LTDIE_27:

	.byte 5
	.string "System_Reflection_ParameterInfo"

	.byte 56,16
.LDIFF_SYM227=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM227
	.byte 2,35,0,6
	.string "AttrsImpl"

.LDIFF_SYM228=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM228
	.byte 2,35,48,6
	.string "ClassImpl"

.LDIFF_SYM229=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM229
	.byte 2,35,16,6
	.string "DefaultValueImpl"

.LDIFF_SYM230=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM230
	.byte 2,35,24,6
	.string "MemberImpl"

.LDIFF_SYM231=.LTDIE_2_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM231
	.byte 2,35,32,6
	.string "NameImpl"

.LDIFF_SYM232=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM232
	.byte 2,35,40,6
	.string "PositionImpl"

.LDIFF_SYM233=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM233
	.byte 2,35,52,0,7
	.string "System_Reflection_ParameterInfo"

.LDIFF_SYM234=.LTDIE_27 - .Ldebug_info_start
	.long .LDIFF_SYM234
.LTDIE_27_POINTER:

	.byte 13
.LDIFF_SYM235=.LTDIE_27 - .Ldebug_info_start
	.long .LDIFF_SYM235
.LTDIE_27_REFERENCE:

	.byte 14
.LDIFF_SYM236=.LTDIE_27 - .Ldebug_info_start
	.long .LDIFF_SYM236
.LTDIE_30:

	.byte 5
	.string "System_Attribute"

	.byte 16,16
.LDIFF_SYM237=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM237
	.byte 2,35,0,0,7
	.string "System_Attribute"

.LDIFF_SYM238=.LTDIE_30 - .Ldebug_info_start
	.long .LDIFF_SYM238
.LTDIE_30_POINTER:

	.byte 13
.LDIFF_SYM239=.LTDIE_30 - .Ldebug_info_start
	.long .LDIFF_SYM239
.LTDIE_30_REFERENCE:

	.byte 14
.LDIFF_SYM240=.LTDIE_30 - .Ldebug_info_start
	.long .LDIFF_SYM240
.LTDIE_29:

	.byte 5
	.string "Microsoft_Extensions_DependencyInjection_FromKeyedServicesAttribute"

	.byte 16,16
.LDIFF_SYM241=.LTDIE_30 - .Ldebug_info_start
	.long .LDIFF_SYM241
	.byte 2,35,0,0,7
	.string "Microsoft_Extensions_DependencyInjection_FromKeyedServicesAttribute"

.LDIFF_SYM242=.LTDIE_29 - .Ldebug_info_start
	.long .LDIFF_SYM242
.LTDIE_29_POINTER:

	.byte 13
.LDIFF_SYM243=.LTDIE_29 - .Ldebug_info_start
	.long .LDIFF_SYM243
.LTDIE_29_REFERENCE:

	.byte 14
.LDIFF_SYM244=.LTDIE_29 - .Ldebug_info_start
	.long .LDIFF_SYM244
.LTDIE_31:

	.byte 5
	.string "System_Linq_Expressions_ConstantExpression"

	.byte 24,16
.LDIFF_SYM245=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM245
	.byte 2,35,0,6
	.string "<Value>k__BackingField"

.LDIFF_SYM246=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM246
	.byte 2,35,16,0,7
	.string "System_Linq_Expressions_ConstantExpression"

.LDIFF_SYM247=.LTDIE_31 - .Ldebug_info_start
	.long .LDIFF_SYM247
.LTDIE_31_POINTER:

	.byte 13
.LDIFF_SYM248=.LTDIE_31 - .Ldebug_info_start
	.long .LDIFF_SYM248
.LTDIE_31_REFERENCE:

	.byte 14
.LDIFF_SYM249=.LTDIE_31 - .Ldebug_info_start
	.long .LDIFF_SYM249
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:BuildFactoryExpression"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_BuildFactoryExpression_System_Reflection_ConstructorInfo_System_Nullable_1_int___System_Linq_Expressions_Expression_System_Linq_Expressions_Expression"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:BuildFactoryExpression"
	.xword .Lm_e
	.xword .Lme_e

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM250=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM250
	.byte 1,103,3
	.string "param1"

.LDIFF_SYM251=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM251
	.byte 1,104,3
	.string "param2"

.LDIFF_SYM252=.LTDIE_26_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM252
	.byte 3,141,208,0,3
	.string "param3"

.LDIFF_SYM253=.LTDIE_26_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM253
	.byte 3,141,216,0,11
	.string "V_0"

.LDIFF_SYM254=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM254
	.byte 1,102,11
	.string "V_1"

.LDIFF_SYM255=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM255
	.byte 1,101,11
	.string "V_2"

.LDIFF_SYM256=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM256
	.byte 1,100,11
	.string "V_3"

.LDIFF_SYM257=.LTDIE_27_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM257
	.byte 1,99,11
	.string "V_4"

.LDIFF_SYM258=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM258
	.byte 3,141,240,0,11
	.string "V_5"

.LDIFF_SYM259=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM259
	.byte 1,106,11
	.string "V_6"

.LDIFF_SYM260=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM260
	.byte 3,141,232,0,11
	.string "V_7"

.LDIFF_SYM261=.LTDIE_29_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM261
	.byte 3,141,248,0,11
	.string "V_8"

.LDIFF_SYM262=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM262
	.byte 1,99,11
	.string "V_9"

.LDIFF_SYM263=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM263
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM264=.Lfde6_end - .Lfde6_start
	.long .LDIFF_SYM264
.Lfde6_start:

	.long 0
	.balign 8
	.xword .Lm_e

.LDIFF_SYM265=.Lme_e - .Lm_e
	.long .LDIFF_SYM265
	.long 0
	.byte 12,31,0,68,14,224,1,157,28,158,27,68,13,29,68,147,26,148,25,68,149,24,150,23,68,151,22,152,21,68,153,20
	.byte 154,19
	.balign 8
.Lfde6_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:FindApplicableConstructor"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_FindApplicableConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:FindApplicableConstructor"
	.xword .Lm_10
	.xword .Lme_10

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM266=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM266
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM267=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM267
	.byte 2,141,24,3
	.string "param2"

.LDIFF_SYM268=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM268
	.byte 2,141,32,3
	.string "param3"

.LDIFF_SYM269=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM269
	.byte 2,141,40,3
	.string "param4"

.LDIFF_SYM270=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM270
	.byte 2,141,48,11
	.string "V_0"

.LDIFF_SYM271=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM271
	.byte 2,141,56,11
	.string "V_1"

.LDIFF_SYM272=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM272
	.byte 3,141,192,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM273=.Lfde7_end - .Lfde7_start
	.long .LDIFF_SYM273
.Lfde7_start:

	.long 0
	.balign 8
	.xword .Lm_10

.LDIFF_SYM274=.Lme_10 - .Lm_10
	.long .LDIFF_SYM274
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29
	.balign 8
.Lfde7_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:TryFindMatchingConstructor"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindMatchingConstructor_System_Type_System_Type___System_Reflection_ConstructorInfo__System_Nullable_1_int___"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:TryFindMatchingConstructor"
	.xword .Lm_12
	.xword .Lme_12

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM275=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM275
	.byte 3,141,200,0,3
	.string "param1"

.LDIFF_SYM276=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM276
	.byte 1,104,3
	.string "param2"

.LDIFF_SYM277=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM277
	.byte 1,105,3
	.string "param3"

.LDIFF_SYM278=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM278
	.byte 3,141,208,0,11
	.string "V_0"

.LDIFF_SYM279=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM279
	.byte 1,102,11
	.string "V_1"

.LDIFF_SYM280=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM280
	.byte 1,101,11
	.string "V_2"

.LDIFF_SYM281=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM281
	.byte 1,100,11
	.string "V_3"

.LDIFF_SYM282=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM282
	.byte 3,141,216,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM283=.Lfde8_end - .Lfde8_start
	.long .LDIFF_SYM283
.Lfde8_start:

	.long 0
	.balign 8
	.xword .Lm_12

.LDIFF_SYM284=.Lme_12 - .Lm_12
	.long .LDIFF_SYM284
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,147,14,148,13,68,149,12,150,11,68,152,10,153,9,68,154,8
	.balign 8
.Lfde8_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:TryFindPreferredConstructor"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryFindPreferredConstructor_System_Type_System_Type___Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx___System_Reflection_ConstructorInfo__System_Nullable_1_int___"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:TryFindPreferredConstructor"
	.xword .Lm_13
	.xword .Lme_13

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM285=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM285
	.byte 1,103,3
	.string "param1"

.LDIFF_SYM286=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM286
	.byte 1,104,3
	.string "param2"

.LDIFF_SYM287=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM287
	.byte 3,141,200,0,3
	.string "param3"

.LDIFF_SYM288=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM288
	.byte 1,105,3
	.string "param4"

.LDIFF_SYM289=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM289
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM290=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM290
	.byte 1,102,11
	.string "V_1"

.LDIFF_SYM291=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM291
	.byte 1,103,11
	.string "V_2"

.LDIFF_SYM292=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM292
	.byte 1,101,11
	.string "V_3"

.LDIFF_SYM293=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM293
	.byte 1,100,11
	.string "V_4"

.LDIFF_SYM294=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM294
	.byte 3,141,208,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM295=.Lfde9_end - .Lfde9_start
	.long .LDIFF_SYM295
.Lfde9_start:

	.long 0
	.balign 8
	.xword .Lm_13

.LDIFF_SYM296=.Lme_13 - .Lm_13
	.long .LDIFF_SYM296
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,149,11,68,150,10,151,9,68,152,8,153,7,68,154,6
	.balign 8
.Lfde9_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:TryCreateParameterMap"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_TryCreateParameterMap_System_Reflection_ParameterInfo___System_Type___System_Nullable_1_int___"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:TryCreateParameterMap"
	.xword .Lm_14
	.xword .Lme_14

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM297=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM297
	.byte 1,104,3
	.string "param1"

.LDIFF_SYM298=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM298
	.byte 1,105,3
	.string "param2"

.LDIFF_SYM299=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM299
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM300=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM300
	.byte 1,103,11
	.string "V_1"

.LDIFF_SYM301=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM301
	.byte 1,102,11
	.string "V_2"

.LDIFF_SYM302=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM302
	.byte 1,101,11
	.string "V_3"

.LDIFF_SYM303=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM303
	.byte 1,100,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM304=.Lfde10_end - .Lfde10_start
	.long .LDIFF_SYM304
.Lfde10_start:

	.long 0
	.balign 8
	.xword .Lm_14

.LDIFF_SYM305=.Lme_14 - .Lm_14
	.long .LDIFF_SYM305
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,148,12,149,11,68,150,10,151,9,68,152,8,153,7,68,154,6
	.balign 8
.Lfde10_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:.cctor"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities__cctor"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:.cctor"
	.xword .Lm_1e
	.xword .Lme_1e

	.byte 2,118,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM306=.Lfde11_end - .Lfde11_start
	.long .LDIFF_SYM306
.Lfde11_start:

	.long 0
	.balign 8
	.xword .Lm_1e

.LDIFF_SYM307=.Lme_1e - .Lm_1e
	.long .LDIFF_SYM307
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.balign 8
.Lfde11_end:

.section ".debug_info"
.subsection 0
.LTDIE_32:

	.byte 5
	.string "_<>c__DisplayClass4_0"

	.byte 24,16
.LDIFF_SYM308=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM308
	.byte 2,35,0,6
	.string "constructors"

.LDIFF_SYM309=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM309
	.byte 2,35,0,0,7
	.string "_<>c__DisplayClass4_0"

.LDIFF_SYM310=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM310
.LTDIE_32_POINTER:

	.byte 13
.LDIFF_SYM311=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM311
.LTDIE_32_REFERENCE:

	.byte 14
.LDIFF_SYM312=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM312
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:<CreateInstance>g__GetMaxArgCount_4_0"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities__CreateInstanceg__GetMaxArgCount_4_0_Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass4_0_"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities:<CreateInstance>g__GetMaxArgCount_4_0"
	.xword .Lm_1f
	.xword .Lme_1f

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM313=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM313
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM314=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM314
	.byte 1,105,11
	.string "V_1"

.LDIFF_SYM315=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM315
	.byte 1,104,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM316=.Lfde12_end - .Lfde12_start
	.long .LDIFF_SYM316
.Lfde12_start:

	.long 0
	.balign 8
	.xword .Lm_1f

.LDIFF_SYM317=.Lme_1f - .Lm_1f
	.long .LDIFF_SYM317
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3,68,153,2,154,1
	.balign 8
.Lfde12_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorInfoEx:get_Invoker"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_get_Invoker"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorInfoEx:get_Invoker"
	.xword .Lm_27
	.xword .Lme_27

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM318=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM318
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM319=.Lfde13_end - .Lfde13_start
	.long .LDIFF_SYM319
.Lfde13_start:

	.long 0
	.balign 8
	.xword .Lm_27

.LDIFF_SYM320=.Lme_27 - .Lm_27
	.long .LDIFF_SYM320
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.balign 8
.Lfde13_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorInfoEx:.ctor"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx__ctor_System_Reflection_ConstructorInfo"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorInfoEx:.ctor"
	.xword .Lm_28
	.xword .Lme_28

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM321=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM321
	.byte 1,105,3
	.string "param0"

.LDIFF_SYM322=.LTDIE_9_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM322
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM323=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM323
	.byte 1,106,11
	.string "V_1"

.LDIFF_SYM324=.LTDIE_29_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM324
	.byte 1,103,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM325=.Lfde14_end - .Lfde14_start
	.long .LDIFF_SYM325
.Lfde14_start:

	.long 0
	.balign 8
	.xword .Lm_28

.LDIFF_SYM326=.Lme_28 - .Lm_28
	.long .LDIFF_SYM326
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3
	.balign 8
.Lfde14_end:

.section ".debug_info"
.subsection 0
.LTDIE_33:

	.byte 17
	.string "Microsoft_Extensions_DependencyInjection_IServiceProviderIsKeyedService"

	.byte 16,7
	.string "Microsoft_Extensions_DependencyInjection_IServiceProviderIsKeyedService"

.LDIFF_SYM327=.LTDIE_33 - .Ldebug_info_start
	.long .LDIFF_SYM327
.LTDIE_33_POINTER:

	.byte 13
.LDIFF_SYM328=.LTDIE_33 - .Ldebug_info_start
	.long .LDIFF_SYM328
.LTDIE_33_REFERENCE:

	.byte 14
.LDIFF_SYM329=.LTDIE_33 - .Ldebug_info_start
	.long .LDIFF_SYM329
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorInfoEx:IsService"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_IsService_Microsoft_Extensions_DependencyInjection_IServiceProviderIsService_int"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorInfoEx:IsService"
	.xword .Lm_29
	.xword .Lme_29

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM330=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM330
	.byte 1,104,3
	.string "param0"

.LDIFF_SYM331=.LTDIE_24_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM331
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM332=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM332
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM333=.LTDIE_27_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM333
	.byte 1,103,11
	.string "V_1"

.LDIFF_SYM334=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM334
	.byte 1,106,11
	.string "V_2"

.LDIFF_SYM335=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM335
	.byte 1,105,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM336=.Lfde15_end - .Lfde15_start
	.long .LDIFF_SYM336
.Lfde15_start:

	.long 0
	.balign 8
	.xword .Lm_29

.LDIFF_SYM337=.Lme_29 - .Lm_29
	.long .LDIFF_SYM337
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2
	.balign 8
.Lfde15_end:

.section ".debug_info"
.subsection 0
.LTDIE_34:

	.byte 17
	.string "Microsoft_Extensions_DependencyInjection_IKeyedServiceProvider"

	.byte 16,7
	.string "Microsoft_Extensions_DependencyInjection_IKeyedServiceProvider"

.LDIFF_SYM338=.LTDIE_34 - .Ldebug_info_start
	.long .LDIFF_SYM338
.LTDIE_34_POINTER:

	.byte 13
.LDIFF_SYM339=.LTDIE_34 - .Ldebug_info_start
	.long .LDIFF_SYM339
.LTDIE_34_REFERENCE:

	.byte 14
.LDIFF_SYM340=.LTDIE_34 - .Ldebug_info_start
	.long .LDIFF_SYM340
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorInfoEx:GetService"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorInfoEx_GetService_System_IServiceProvider_int"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorInfoEx:GetService"
	.xword .Lm_2a
	.xword .Lme_2a

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM341=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM341
	.byte 1,104,3
	.string "param0"

.LDIFF_SYM342=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM342
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM343=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM343
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM344=.LTDIE_27_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM344
	.byte 1,103,11
	.string "V_1"

.LDIFF_SYM345=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM345
	.byte 1,106,11
	.string "V_2"

.LDIFF_SYM346=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM346
	.byte 1,105,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM347=.Lfde16_end - .Lfde16_start
	.long .LDIFF_SYM347
.Lfde16_start:

	.long 0
	.balign 8
	.xword .Lm_2a

.LDIFF_SYM348=.Lme_2a - .Lm_2a
	.long .LDIFF_SYM348
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2
	.balign 8
.Lfde16_end:

.section ".debug_info"
.subsection 0
.LTDIE_35:

	.byte 5
	.string "_ConstructorMatcher"

	.byte 40,16
.LDIFF_SYM349=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM349
	.byte 2,35,0,6
	.string "_constructor"

.LDIFF_SYM350=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM350
	.byte 2,35,0,6
	.string "_parameterValues"

.LDIFF_SYM351=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM351
	.byte 2,35,8,0,7
	.string "_ConstructorMatcher"

.LDIFF_SYM352=.LTDIE_35 - .Ldebug_info_start
	.long .LDIFF_SYM352
.LTDIE_35_POINTER:

	.byte 13
.LDIFF_SYM353=.LTDIE_35 - .Ldebug_info_start
	.long .LDIFF_SYM353
.LTDIE_35_REFERENCE:

	.byte 14
.LDIFF_SYM354=.LTDIE_35 - .Ldebug_info_start
	.long .LDIFF_SYM354
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorMatcher:Match"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_Match_object___Microsoft_Extensions_DependencyInjection_IServiceProviderIsService"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorMatcher:Match"
	.xword .Lm_2d
	.xword .Lme_2d

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM355=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM355
	.byte 1,104,3
	.string "param0"

.LDIFF_SYM356=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM356
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM357=.LTDIE_24_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM357
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM358=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM358
	.byte 1,103,11
	.string "V_1"

.LDIFF_SYM359=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM359
	.byte 1,101,11
	.string "V_2"

.LDIFF_SYM360=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM360
	.byte 1,102,11
	.string "V_3"

.LDIFF_SYM361=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM361
	.byte 1,100,11
	.string "V_4"

.LDIFF_SYM362=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM362
	.byte 1,105,11
	.string "V_5"

.LDIFF_SYM363=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM363
	.byte 3,141,200,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM364=.Lfde17_end - .Lfde17_start
	.long .LDIFF_SYM364
.Lfde17_start:

	.long 0
	.balign 8
	.xword .Lm_2d

.LDIFF_SYM365=.Lme_2d - .Lm_2d
	.long .LDIFF_SYM365
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,148,10,149,9,68,150,8,151,7,68,152,6,153,5,68,154,4
	.balign 8
.Lfde17_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorMatcher:CreateInstance"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities_ConstructorMatcher_CreateInstance_System_IServiceProvider"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/ConstructorMatcher:CreateInstance"
	.xword .Lm_2e
	.xword .Lme_2e

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM366=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM366
	.byte 1,105,3
	.string "param0"

.LDIFF_SYM367=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM367
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM368=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM368
	.byte 1,104,11
	.string "V_1"

.LDIFF_SYM369=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM369
	.byte 1,103,11
	.string "V_2"

.LDIFF_SYM370=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM370
	.byte 3,141,208,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM371=.Lfde18_end - .Lfde18_start
	.long .LDIFF_SYM371
.Lfde18_start:

	.long 0
	.balign 8
	.xword .Lm_2e

.LDIFF_SYM372=.Lme_2e - .Lm_2e
	.long .LDIFF_SYM372
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29,68,151,12,152,11,68,153,10,154,9
	.balign 8
.Lfde18_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/<>c__DisplayClass8_0`1<T_REF>:.ctor"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__ctor"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/<>c__DisplayClass8_0`1<T_REF>:.ctor"
	.xword .Lm_3b
	.xword .Lme_3b

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM373=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM373
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM374=.Lfde19_end - .Lfde19_start
	.long .LDIFF_SYM374
.Lfde19_start:

	.long 0
	.balign 8
	.xword .Lm_3b

.LDIFF_SYM375=.Lme_3b - .Lm_3b
	.long .LDIFF_SYM375
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde19_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/<>c__DisplayClass8_0`1<T_REF>:<CreateFactory>b__0"
	.string "Microsoft_Extensions_DependencyInjection_ActivatorUtilities__c__DisplayClass8_0_1_T_REF__CreateFactoryb__0_System_IServiceProvider_object__"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ActivatorUtilities/<>c__DisplayClass8_0`1<T_REF>:<CreateFactory>b__0"
	.xword .Lm_3c
	.xword .Lme_3c

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM376=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM376
	.byte 2,141,16,3
	.string "serviceProvider"

.LDIFF_SYM377=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM377
	.byte 2,141,24,3
	.string "arguments"

.LDIFF_SYM378=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM378
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM379=.Lfde20_end - .Lfde20_start
	.long .LDIFF_SYM379
.Lfde20_start:

	.long 0
	.balign 8
	.xword .Lm_3c

.LDIFF_SYM380=.Lme_3c - .Lm_3c
	.long .LDIFF_SYM380
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.balign 8
.Lfde20_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.KeyedService:get_AnyKey"
	.string "Microsoft_Extensions_DependencyInjection_KeyedService_get_AnyKey"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.KeyedService:get_AnyKey"
	.xword .Lm_41
	.xword .Lme_41

	.byte 2,118,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM381=.Lfde21_end - .Lfde21_start
	.long .LDIFF_SYM381
.Lfde21_start:

	.long 0
	.balign 8
	.xword .Lm_41

.LDIFF_SYM382=.Lme_41 - .Lm_41
	.long .LDIFF_SYM382
	.long 0
	.byte 12,31,0,68,14,16,157,2,158,1,68,13,29
	.balign 8
.Lfde21_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.KeyedService:.cctor"
	.string "Microsoft_Extensions_DependencyInjection_KeyedService__cctor"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.KeyedService:.cctor"
	.xword .Lm_42
	.xword .Lme_42

	.byte 2,118,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM383=.Lfde22_end - .Lfde22_start
	.long .LDIFF_SYM383
.Lfde22_start:

	.long 0
	.balign 8
	.xword .Lm_42

.LDIFF_SYM384=.Lme_42 - .Lm_42
	.long .LDIFF_SYM384
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde22_end:

.section ".debug_info"
.subsection 0
.LTDIE_36:

	.byte 5
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollection"

	.byte 32,16
.LDIFF_SYM385=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM385
	.byte 2,35,0,6
	.string "_descriptors"

.LDIFF_SYM386=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM386
	.byte 2,35,16,6
	.string "_isReadOnly"

.LDIFF_SYM387=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM387
	.byte 2,35,24,0,7
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollection"

.LDIFF_SYM388=.LTDIE_36 - .Ldebug_info_start
	.long .LDIFF_SYM388
.LTDIE_36_POINTER:

	.byte 13
.LDIFF_SYM389=.LTDIE_36 - .Ldebug_info_start
	.long .LDIFF_SYM389
.LTDIE_36_REFERENCE:

	.byte 14
.LDIFF_SYM390=.LTDIE_36 - .Ldebug_info_start
	.long .LDIFF_SYM390
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollection:get_Count"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Count"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollection:get_Count"
	.xword .Lm_50
	.xword .Lme_50

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM391=.LTDIE_36_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM391
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM392=.Lfde23_end - .Lfde23_start
	.long .LDIFF_SYM392
.Lfde23_start:

	.long 0
	.balign 8
	.xword .Lm_50

.LDIFF_SYM393=.Lme_50 - .Lm_50
	.long .LDIFF_SYM393
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde23_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollection:get_Item"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollection_get_Item_int"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollection:get_Item"
	.xword .Lm_52
	.xword .Lme_52

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM394=.LTDIE_36_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM394
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM395=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM395
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM396=.Lfde24_end - .Lfde24_start
	.long .LDIFF_SYM396
.Lfde24_start:

	.long 0
	.balign 8
	.xword .Lm_52

.LDIFF_SYM397=.Lme_52 - .Lm_52
	.long .LDIFF_SYM397
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde24_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollection:CopyTo"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollection_CopyTo_Microsoft_Extensions_DependencyInjection_ServiceDescriptor___int"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollection:CopyTo"
	.xword .Lm_56
	.xword .Lme_56

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM398=.LTDIE_36_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM398
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM399=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM399
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM400=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM400
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM401=.Lfde25_end - .Lfde25_start
	.long .LDIFF_SYM401
.Lfde25_start:

	.long 0
	.balign 8
	.xword .Lm_56

.LDIFF_SYM402=.Lme_56 - .Lm_56
	.long .LDIFF_SYM402
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde25_end:

.section ".debug_info"
.subsection 0
.LTDIE_38:

	.byte 8
	.string "Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 4
.LDIFF_SYM403=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM403
	.byte 9
	.string "Singleton"

	.byte 0,9
	.string "Scoped"

	.byte 1,9
	.string "Transient"

	.byte 2,0,7
	.string "Microsoft_Extensions_DependencyInjection_ServiceLifetime"

.LDIFF_SYM404=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM404
.LTDIE_38_POINTER:

	.byte 13
.LDIFF_SYM405=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM405
.LTDIE_38_REFERENCE:

	.byte 14
.LDIFF_SYM406=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM406
.LTDIE_37:

	.byte 5
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor"

	.byte 64,16
.LDIFF_SYM407=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM407
	.byte 2,35,0,6
	.string "<Lifetime>k__BackingField"

.LDIFF_SYM408=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM408
	.byte 2,35,56,6
	.string "<ServiceKey>k__BackingField"

.LDIFF_SYM409=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM409
	.byte 2,35,16,6
	.string "<ServiceType>k__BackingField"

.LDIFF_SYM410=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM410
	.byte 2,35,24,6
	.string "_implementationType"

.LDIFF_SYM411=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM411
	.byte 2,35,32,6
	.string "_implementationInstance"

.LDIFF_SYM412=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM412
	.byte 2,35,40,6
	.string "_implementationFactory"

.LDIFF_SYM413=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM413
	.byte 2,35,48,0,7
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor"

.LDIFF_SYM414=.LTDIE_37 - .Ldebug_info_start
	.long .LDIFF_SYM414
.LTDIE_37_POINTER:

	.byte 13
.LDIFF_SYM415=.LTDIE_37 - .Ldebug_info_start
	.long .LDIFF_SYM415
.LTDIE_37_REFERENCE:

	.byte 14
.LDIFF_SYM416=.LTDIE_37 - .Ldebug_info_start
	.long .LDIFF_SYM416
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollection:System.Collections.Generic.ICollection<Microsoft.Extensions.DependencyInjection.ServiceDescriptor>.Add"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollection_System_Collections_Generic_ICollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Add_Microsoft_Extensions_DependencyInjection_ServiceDescriptor"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollection:System.Collections.Generic.ICollection<Microsoft.Extensions.DependencyInjection.ServiceDescriptor>.Add"
	.xword .Lm_59
	.xword .Lme_59

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM417=.LTDIE_36_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM417
	.byte 1,105,3
	.string "param0"

.LDIFF_SYM418=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM418
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM419=.Lfde26_end - .Lfde26_start
	.long .LDIFF_SYM419
.Lfde26_start:

	.long 0
	.balign 8
	.xword .Lm_59

.LDIFF_SYM420=.Lme_59 - .Lm_59
	.long .LDIFF_SYM420
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3,68,153,2,154,1
	.balign 8
.Lfde26_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollection:.ctor"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollection__ctor"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollection:.ctor"
	.xword .Lm_61
	.xword .Lme_61

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM421=.LTDIE_36_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM421
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM422=.Lfde27_end - .Lfde27_start
	.long .LDIFF_SYM422
.Lfde27_start:

	.long 0
	.balign 8
	.xword .Lm_61

.LDIFF_SYM423=.Lme_61 - .Lm_61
	.long .LDIFF_SYM423
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde27_end:

.section ".debug_info"
.subsection 0
.LTDIE_39:

	.byte 17
	.string "Microsoft_Extensions_DependencyInjection_IServiceCollection"

	.byte 16,7
	.string "Microsoft_Extensions_DependencyInjection_IServiceCollection"

.LDIFF_SYM424=.LTDIE_39 - .Ldebug_info_start
	.long .LDIFF_SYM424
.LTDIE_39_POINTER:

	.byte 13
.LDIFF_SYM425=.LTDIE_39 - .Ldebug_info_start
	.long .LDIFF_SYM425
.LTDIE_39_REFERENCE:

	.byte 14
.LDIFF_SYM426=.LTDIE_39 - .Ldebug_info_start
	.long .LDIFF_SYM426
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient"
	.xword .Lm_62
	.xword .Lme_62

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM427=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM427
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM428=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM428
	.byte 2,141,32,3
	.string "param2"

.LDIFF_SYM429=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM429
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM430=.Lfde28_end - .Lfde28_start
	.long .LDIFF_SYM430
.Lfde28_start:

	.long 0
	.balign 8
	.xword .Lm_62

.LDIFF_SYM431=.Lme_62 - .Lm_62
	.long .LDIFF_SYM431
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4
	.balign 8
.Lfde28_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient"
	.xword .Lm_63
	.xword .Lme_63

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM432=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM432
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM433=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM433
	.byte 2,141,32,3
	.string "param2"

.LDIFF_SYM434=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM434
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM435=.Lfde29_end - .Lfde29_start
	.long .LDIFF_SYM435
.Lfde29_start:

	.long 0
	.balign 8
	.xword .Lm_63

.LDIFF_SYM436=.Lme_63 - .Lm_63
	.long .LDIFF_SYM436
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4
	.balign 8
.Lfde29_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient<TService_REF,_TImplementation_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient<TService_REF,_TImplementation_REF>"
	.xword .Lm_64
	.xword .Lme_64

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM437=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM437
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM438=.Lfde30_end - .Lfde30_start
	.long .LDIFF_SYM438
.Lfde30_start:

	.long 0
	.balign 8
	.xword .Lm_64

.LDIFF_SYM439=.Lme_64 - .Lm_64
	.long .LDIFF_SYM439
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde30_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient"
	.xword .Lm_65
	.xword .Lme_65

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM440=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM440
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM441=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM441
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM442=.Lfde31_end - .Lfde31_start
	.long .LDIFF_SYM442
.Lfde31_start:

	.long 0
	.balign 8
	.xword .Lm_65

.LDIFF_SYM443=.Lme_65 - .Lm_65
	.long .LDIFF_SYM443
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.balign 8
.Lfde31_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient<TService_REF>"
	.xword .Lm_66
	.xword .Lme_66

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM444=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM444
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM445=.Lfde32_end - .Lfde32_start
	.long .LDIFF_SYM445
.Lfde32_start:

	.long 0
	.balign 8
	.xword .Lm_66

.LDIFF_SYM446=.Lme_66 - .Lm_66
	.long .LDIFF_SYM446
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde32_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddTransient_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddTransient<TService_REF>"
	.xword .Lm_67
	.xword .Lme_67

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM447=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM447
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM448=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM448
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM449=.Lfde33_end - .Lfde33_start
	.long .LDIFF_SYM449
.Lfde33_start:

	.long 0
	.balign 8
	.xword .Lm_67

.LDIFF_SYM450=.Lme_67 - .Lm_67
	.long .LDIFF_SYM450
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.balign 8
.Lfde33_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddScoped"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddScoped"
	.xword .Lm_68
	.xword .Lme_68

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM451=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM451
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM452=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM452
	.byte 2,141,32,3
	.string "param2"

.LDIFF_SYM453=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM453
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM454=.Lfde34_end - .Lfde34_start
	.long .LDIFF_SYM454
.Lfde34_start:

	.long 0
	.balign 8
	.xword .Lm_68

.LDIFF_SYM455=.Lme_68 - .Lm_68
	.long .LDIFF_SYM455
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4
	.balign 8
.Lfde34_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddScoped<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddScoped<TService_REF>"
	.xword .Lm_69
	.xword .Lme_69

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM456=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM456
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM457=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM457
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM458=.Lfde35_end - .Lfde35_start
	.long .LDIFF_SYM458
.Lfde35_start:

	.long 0
	.balign 8
	.xword .Lm_69

.LDIFF_SYM459=.Lme_69 - .Lm_69
	.long .LDIFF_SYM459
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.balign 8
.Lfde35_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton"
	.xword .Lm_6a
	.xword .Lme_6a

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM460=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM460
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM461=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM461
	.byte 2,141,32,3
	.string "param2"

.LDIFF_SYM462=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM462
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM463=.Lfde36_end - .Lfde36_start
	.long .LDIFF_SYM463
.Lfde36_start:

	.long 0
	.balign 8
	.xword .Lm_6a

.LDIFF_SYM464=.Lme_6a - .Lm_6a
	.long .LDIFF_SYM464
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4
	.balign 8
.Lfde36_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton"
	.xword .Lm_6b
	.xword .Lme_6b

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM465=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM465
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM466=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM466
	.byte 2,141,32,3
	.string "param2"

.LDIFF_SYM467=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM467
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM468=.Lfde37_end - .Lfde37_start
	.long .LDIFF_SYM468
.Lfde37_start:

	.long 0
	.balign 8
	.xword .Lm_6b

.LDIFF_SYM469=.Lme_6b - .Lm_6b
	.long .LDIFF_SYM469
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4
	.balign 8
.Lfde37_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton<TService_REF,_TImplementation_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton<TService_REF,_TImplementation_REF>"
	.xword .Lm_6c
	.xword .Lme_6c

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM470=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM470
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM471=.Lfde38_end - .Lfde38_start
	.long .LDIFF_SYM471
.Lfde38_start:

	.long 0
	.balign 8
	.xword .Lm_6c

.LDIFF_SYM472=.Lme_6c - .Lm_6c
	.long .LDIFF_SYM472
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde38_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton"
	.xword .Lm_6d
	.xword .Lme_6d

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM473=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM473
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM474=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM474
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM475=.Lfde39_end - .Lfde39_start
	.long .LDIFF_SYM475
.Lfde39_start:

	.long 0
	.balign 8
	.xword .Lm_6d

.LDIFF_SYM476=.Lme_6d - .Lm_6d
	.long .LDIFF_SYM476
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.balign 8
.Lfde39_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton<TService_REF>"
	.xword .Lm_6e
	.xword .Lme_6e

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM477=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM477
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM478=.Lfde40_end - .Lfde40_start
	.long .LDIFF_SYM478
.Lfde40_start:

	.long 0
	.balign 8
	.xword .Lm_6e

.LDIFF_SYM479=.Lme_6e - .Lm_6e
	.long .LDIFF_SYM479
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde40_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton<TService_REF>"
	.xword .Lm_6f
	.xword .Lme_6f

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM480=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM480
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM481=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM481
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM482=.Lfde41_end - .Lfde41_start
	.long .LDIFF_SYM482
.Lfde41_start:

	.long 0
	.balign 8
	.xword .Lm_6f

.LDIFF_SYM483=.Lme_6f - .Lm_6f
	.long .LDIFF_SYM483
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.balign 8
.Lfde41_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_object"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton"
	.xword .Lm_70
	.xword .Lme_70

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM484=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM484
	.byte 1,104,3
	.string "param1"

.LDIFF_SYM485=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM485
	.byte 2,141,40,3
	.string "param2"

.LDIFF_SYM486=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM486
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM487=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM487
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM488=.Lfde42_end - .Lfde42_start
	.long .LDIFF_SYM488
.Lfde42_start:

	.long 0
	.balign 8
	.xword .Lm_70

.LDIFF_SYM489=.Lme_70 - .Lm_70
	.long .LDIFF_SYM489
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,154,4
	.balign 8
.Lfde42_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_AddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_TService_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:AddSingleton<TService_REF>"
	.xword .Lm_71
	.xword .Lme_71

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM490=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM490
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM491=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM491
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM492=.Lfde43_end - .Lfde43_start
	.long .LDIFF_SYM492
.Lfde43_start:

	.long 0
	.balign 8
	.xword .Lm_71

.LDIFF_SYM493=.Lme_71 - .Lm_71
	.long .LDIFF_SYM493
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.balign 8
.Lfde43_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:Add"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:Add"
	.xword .Lm_72
	.xword .Lme_72

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM494=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM494
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM495=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM495
	.byte 2,141,24,3
	.string "param2"

.LDIFF_SYM496=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM496
	.byte 2,141,32,3
	.string "param3"

.LDIFF_SYM497=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM497
	.byte 2,141,40,11
	.string "V_0"

.LDIFF_SYM498=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM498
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM499=.Lfde44_end - .Lfde44_start
	.long .LDIFF_SYM499
.Lfde44_start:

	.long 0
	.balign 8
	.xword .Lm_72

.LDIFF_SYM500=.Lme_72 - .Lm_72
	.long .LDIFF_SYM500
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.balign 8
.Lfde44_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:Add"
	.string "Microsoft_Extensions_DependencyInjection_ServiceCollectionServiceExtensions_Add_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceCollectionServiceExtensions:Add"
	.xword .Lm_73
	.xword .Lme_73

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM501=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM501
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM502=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM502
	.byte 2,141,24,3
	.string "param2"

.LDIFF_SYM503=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM503
	.byte 2,141,32,3
	.string "param3"

.LDIFF_SYM504=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM504
	.byte 2,141,40,11
	.string "V_0"

.LDIFF_SYM505=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM505
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM506=.Lfde45_end - .Lfde45_start
	.long .LDIFF_SYM506
.Lfde45_start:

	.long 0
	.balign 8
	.xword .Lm_73

.LDIFF_SYM507=.Lme_73 - .Lm_73
	.long .LDIFF_SYM507
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.balign 8
.Lfde45_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.xword .Lm_74
	.xword .Lme_74

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM508=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM508
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM509=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM509
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM510=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM510
	.byte 2,141,32,3
	.string "param2"

.LDIFF_SYM511=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM511
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM512=.Lfde46_end - .Lfde46_start
	.long .LDIFF_SYM512
.Lfde46_start:

	.long 0
	.balign 8
	.xword .Lm_74

.LDIFF_SYM513=.Lme_74 - .Lm_74
	.long .LDIFF_SYM513
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde46_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.xword .Lm_75
	.xword .Lme_75

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM514=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM514
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM515=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM515
	.byte 2,141,32,3
	.string "param1"

.LDIFF_SYM516=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM516
	.byte 2,141,40,3
	.string "param2"

.LDIFF_SYM517=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM517
	.byte 2,141,48,3
	.string "param3"

.LDIFF_SYM518=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM518
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM519=.Lfde47_end - .Lfde47_start
	.long .LDIFF_SYM519
.Lfde47_start:

	.long 0
	.balign 8
	.xword .Lm_75

.LDIFF_SYM520=.Lme_75 - .Lm_75
	.long .LDIFF_SYM520
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,154,6
	.balign 8
.Lfde47_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.xword .Lm_76
	.xword .Lme_76

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM521=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM521
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM522=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM522
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM523=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM523
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM524=.Lfde48_end - .Lfde48_start
	.long .LDIFF_SYM524
.Lfde48_start:

	.long 0
	.balign 8
	.xword .Lm_76

.LDIFF_SYM525=.Lme_76 - .Lm_76
	.long .LDIFF_SYM525
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde48_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_object"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.xword .Lm_77
	.xword .Lme_77

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM526=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM526
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM527=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM527
	.byte 2,141,32,3
	.string "param1"

.LDIFF_SYM528=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM528
	.byte 1,105,3
	.string "param2"

.LDIFF_SYM529=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM529
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM530=.Lfde49_end - .Lfde49_start
	.long .LDIFF_SYM530
.Lfde49_start:

	.long 0
	.balign 8
	.xword .Lm_77

.LDIFF_SYM531=.Lme_77 - .Lm_77
	.long .LDIFF_SYM531
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4
	.balign 8
.Lfde49_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.xword .Lm_78
	.xword .Lme_78

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM532=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM532
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM533=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM533
	.byte 2,141,32,3
	.string "param1"

.LDIFF_SYM534=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM534
	.byte 2,141,40,3
	.string "param2"

.LDIFF_SYM535=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM535
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM536=.Lfde50_end - .Lfde50_start
	.long .LDIFF_SYM536
.Lfde50_start:

	.long 0
	.balign 8
	.xword .Lm_78

.LDIFF_SYM537=.Lme_78 - .Lm_78
	.long .LDIFF_SYM537
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.balign 8
.Lfde50_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor__ctor_System_Type_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:.ctor"
	.xword .Lm_79
	.xword .Lme_79

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM538=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM538
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM539=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM539
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM540=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM540
	.byte 2,141,32,3
	.string "param2"

.LDIFF_SYM541=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM541
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM542=.Lfde51_end - .Lfde51_start
	.long .LDIFF_SYM542
.Lfde51_start:

	.long 0
	.balign 8
	.xword .Lm_79

.LDIFF_SYM543=.Lme_79 - .Lm_79
	.long .LDIFF_SYM543
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.balign 8
.Lfde51_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:get_ImplementationFactory"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_get_ImplementationFactory"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:get_ImplementationFactory"
	.xword .Lm_81
	.xword .Lme_81

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM544=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM544
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM545=.Lfde52_end - .Lfde52_start
	.long .LDIFF_SYM545
.Lfde52_start:

	.long 0
	.balign 8
	.xword .Lm_81

.LDIFF_SYM546=.Lme_81 - .Lm_81
	.long .LDIFF_SYM546
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde52_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:GetImplementationType"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_GetImplementationType"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:GetImplementationType"
	.xword .Lm_85
	.xword .Lme_85

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM547=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM547
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM548=.Lfde53_end - .Lfde53_start
	.long .LDIFF_SYM548
.Lfde53_start:

	.long 0
	.balign 8
	.xword .Lm_85

.LDIFF_SYM549=.Lme_85 - .Lm_85
	.long .LDIFF_SYM549
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,153,2,154,1
	.balign 8
.Lfde53_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Transient<TService_REF,_TImplementation_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_TService_REF_TImplementation_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Transient<TService_REF,_TImplementation_REF>"
	.xword .Lm_86
	.xword .Lme_86

	.byte 2,118,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM550=.Lfde54_end - .Lfde54_start
	.long .LDIFF_SYM550
.Lfde54_start:

	.long 0
	.balign 8
	.xword .Lm_86

.LDIFF_SYM551=.Lme_86 - .Lm_86
	.long .LDIFF_SYM551
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde54_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Transient"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Transient_System_Type_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Transient"
	.xword .Lm_87
	.xword .Lme_87

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM552=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM552
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM553=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM553
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM554=.Lfde55_end - .Lfde55_start
	.long .LDIFF_SYM554
.Lfde55_start:

	.long 0
	.balign 8
	.xword .Lm_87

.LDIFF_SYM555=.Lme_87 - .Lm_87
	.long .LDIFF_SYM555
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.balign 8
.Lfde55_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Scoped<TService_REF,_TImplementation_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_TImplementation_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Scoped<TService_REF,_TImplementation_REF>"
	.xword .Lm_89
	.xword .Lme_89

	.byte 2,118,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM556=.Lfde56_end - .Lfde56_start
	.long .LDIFF_SYM556
.Lfde56_start:

	.long 0
	.balign 8
	.xword .Lm_89

.LDIFF_SYM557=.Lme_89 - .Lm_89
	.long .LDIFF_SYM557
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde56_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Scoped"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_System_Type_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Scoped"
	.xword .Lm_8a
	.xword .Lme_8a

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM558=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM558
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM559=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM559
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM560=.Lfde57_end - .Lfde57_start
	.long .LDIFF_SYM560
.Lfde57_start:

	.long 0
	.balign 8
	.xword .Lm_8a

.LDIFF_SYM561=.Lme_8a - .Lm_8a
	.long .LDIFF_SYM561
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde57_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Scoped<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Scoped_TService_REF_System_Func_2_System_IServiceProvider_TService_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Scoped<TService_REF>"
	.xword .Lm_8b
	.xword .Lme_8b

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM562=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM562
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM563=.Lfde58_end - .Lfde58_start
	.long .LDIFF_SYM563
.Lfde58_start:

	.long 0
	.balign 8
	.xword .Lm_8b

.LDIFF_SYM564=.Lme_8b - .Lm_8b
	.long .LDIFF_SYM564
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde58_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton<TService_REF,_TImplementation_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton<TService_REF,_TImplementation_REF>"
	.xword .Lm_8c
	.xword .Lme_8c

	.byte 2,118,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM565=.Lfde59_end - .Lfde59_start
	.long .LDIFF_SYM565
.Lfde59_start:

	.long 0
	.balign 8
	.xword .Lm_8c

.LDIFF_SYM566=.Lme_8c - .Lm_8c
	.long .LDIFF_SYM566
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde59_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton"
	.xword .Lm_8d
	.xword .Lme_8d

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM567=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM567
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM568=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM568
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM569=.Lfde60_end - .Lfde60_start
	.long .LDIFF_SYM569
.Lfde60_start:

	.long 0
	.balign 8
	.xword .Lm_8d

.LDIFF_SYM570=.Lme_8d - .Lm_8d
	.long .LDIFF_SYM570
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.balign 8
.Lfde60_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton<TService_REF,_TImplementation_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TImplementation_REF_System_Func_2_System_IServiceProvider_TImplementation_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton<TService_REF,_TImplementation_REF>"
	.xword .Lm_8e
	.xword .Lme_8e

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM571=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM571
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM572=.Lfde61_end - .Lfde61_start
	.long .LDIFF_SYM572
.Lfde61_start:

	.long 0
	.balign 8
	.xword .Lm_8e

.LDIFF_SYM573=.Lme_8e - .Lm_8e
	.long .LDIFF_SYM573
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde61_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_System_Func_2_System_IServiceProvider_TService_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton<TService_REF>"
	.xword .Lm_8f
	.xword .Lme_8f

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM574=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM574
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM575=.Lfde62_end - .Lfde62_start
	.long .LDIFF_SYM575
.Lfde62_start:

	.long 0
	.balign 8
	.xword .Lm_8f

.LDIFF_SYM576=.Lme_8f - .Lm_8f
	.long .LDIFF_SYM576
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde62_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_TService_REF_TService_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton<TService_REF>"
	.xword .Lm_90
	.xword .Lme_90

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM577=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM577
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM578=.Lfde63_end - .Lfde63_start
	.long .LDIFF_SYM578
.Lfde63_start:

	.long 0
	.balign 8
	.xword .Lm_90

.LDIFF_SYM579=.Lme_90 - .Lm_90
	.long .LDIFF_SYM579
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde63_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Singleton_System_Type_object"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Singleton"
	.xword .Lm_91
	.xword .Lme_91

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM580=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM580
	.byte 2,141,24,3
	.string "param1"

.LDIFF_SYM581=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM581
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM582=.Lfde64_end - .Lfde64_start
	.long .LDIFF_SYM582
.Lfde64_start:

	.long 0
	.balign 8
	.xword .Lm_91

.LDIFF_SYM583=.Lme_91 - .Lm_91
	.long .LDIFF_SYM583
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6
	.balign 8
.Lfde64_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:DescribeKeyed<TService_REF,_TImplementation_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_TService_REF_TImplementation_REF_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:DescribeKeyed<TService_REF,_TImplementation_REF>"
	.xword .Lm_92
	.xword .Lme_92

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM584=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM584
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM585=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM585
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM586=.Lfde65_end - .Lfde65_start
	.long .LDIFF_SYM586
.Lfde65_start:

	.long 0
	.balign 8
	.xword .Lm_92

.LDIFF_SYM587=.Lme_92 - .Lm_92
	.long .LDIFF_SYM587
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde65_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Describe"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Describe"
	.xword .Lm_93
	.xword .Lme_93

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM588=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM588
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM589=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM589
	.byte 2,141,24,3
	.string "param2"

.LDIFF_SYM590=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM590
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM591=.Lfde66_end - .Lfde66_start
	.long .LDIFF_SYM591
.Lfde66_start:

	.long 0
	.balign 8
	.xword .Lm_93

.LDIFF_SYM592=.Lme_93 - .Lm_93
	.long .LDIFF_SYM592
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.balign 8
.Lfde66_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:DescribeKeyed"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_DescribeKeyed_System_Type_object_System_Type_Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:DescribeKeyed"
	.xword .Lm_94
	.xword .Lme_94

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM593=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM593
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM594=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM594
	.byte 2,141,24,3
	.string "param2"

.LDIFF_SYM595=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM595
	.byte 2,141,32,3
	.string "param3"

.LDIFF_SYM596=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM596
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM597=.Lfde67_end - .Lfde67_start
	.long .LDIFF_SYM597
.Lfde67_start:

	.long 0
	.balign 8
	.xword .Lm_94

.LDIFF_SYM598=.Lme_94 - .Lm_94
	.long .LDIFF_SYM598
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.balign 8
.Lfde67_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Describe"
	.string "Microsoft_Extensions_DependencyInjection_ServiceDescriptor_Describe_System_Type_System_Func_2_System_IServiceProvider_object_Microsoft_Extensions_DependencyInjection_ServiceLifetime"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceDescriptor:Describe"
	.xword .Lm_95
	.xword .Lme_95

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM599=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM599
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM600=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM600
	.byte 2,141,24,3
	.string "param2"

.LDIFF_SYM601=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM601
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM602=.Lfde68_end - .Lfde68_start
	.long .LDIFF_SYM602
.Lfde68_start:

	.long 0
	.balign 8
	.xword .Lm_95

.LDIFF_SYM603=.Lme_95 - .Lm_95
	.long .LDIFF_SYM603
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29
	.balign 8
.Lfde68_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderKeyedServiceExtensions:GetKeyedService<T_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceProviderKeyedServiceExtensions_GetKeyedService_T_REF_System_IServiceProvider_object"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderKeyedServiceExtensions:GetKeyedService<T_REF>"
	.xword .Lm_97
	.xword .Lme_97

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM604=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM604
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM605=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM605
	.byte 2,141,40,11
	.string "V_0"

.LDIFF_SYM606=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM606
	.byte 1,105,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM607=.Lfde69_end - .Lfde69_start
	.long .LDIFF_SYM607
.Lfde69_start:

	.long 0
	.balign 8
	.xword .Lm_97

.LDIFF_SYM608=.Lme_97 - .Lm_97
	.long .LDIFF_SYM608
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4
	.balign 8
.Lfde69_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions:GetService<T_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetService_T_REF_System_IServiceProvider"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions:GetService<T_REF>"
	.xword .Lm_99
	.xword .Lme_99

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM609=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM609
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM610=.Lfde70_end - .Lfde70_start
	.long .LDIFF_SYM610
.Lfde70_start:

	.long 0
	.balign 8
	.xword .Lm_99

.LDIFF_SYM611=.Lme_99 - .Lm_99
	.long .LDIFF_SYM611
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde70_end:

.section ".debug_info"
.subsection 0
.LTDIE_40:

	.byte 17
	.string "Microsoft_Extensions_DependencyInjection_ISupportRequiredService"

	.byte 16,7
	.string "Microsoft_Extensions_DependencyInjection_ISupportRequiredService"

.LDIFF_SYM612=.LTDIE_40 - .Ldebug_info_start
	.long .LDIFF_SYM612
.LTDIE_40_POINTER:

	.byte 13
.LDIFF_SYM613=.LTDIE_40 - .Ldebug_info_start
	.long .LDIFF_SYM613
.LTDIE_40_REFERENCE:

	.byte 14
.LDIFF_SYM614=.LTDIE_40 - .Ldebug_info_start
	.long .LDIFF_SYM614
	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions:GetRequiredService"
	.string "Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_System_IServiceProvider_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions:GetRequiredService"
	.xword .Lm_9a
	.xword .Lme_9a

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM615=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM615
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM616=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM616
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM617=.LTDIE_40_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM617
	.byte 1,103,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM618=.Lfde71_end - .Lfde71_start
	.long .LDIFF_SYM618
.Lfde71_start:

	.long 0
	.balign 8
	.xword .Lm_9a

.LDIFF_SYM619=.Lme_9a - .Lm_9a
	.long .LDIFF_SYM619
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3,68,153,2,154,1
	.balign 8
.Lfde71_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions:GetRequiredService<T_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetRequiredService_T_REF_System_IServiceProvider"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions:GetRequiredService<T_REF>"
	.xword .Lm_9b
	.xword .Lme_9b

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM620=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM620
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM621=.Lfde72_end - .Lfde72_start
	.long .LDIFF_SYM621
.Lfde72_start:

	.long 0
	.balign 8
	.xword .Lm_9b

.LDIFF_SYM622=.Lme_9b - .Lm_9b
	.long .LDIFF_SYM622
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde72_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions:GetServices<T_REF>"
	.string "Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_GetServices_T_REF_System_IServiceProvider"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions:GetServices<T_REF>"
	.xword .Lm_9c
	.xword .Lme_9c

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM623=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM623
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM624=.Lfde73_end - .Lfde73_start
	.long .LDIFF_SYM624
.Lfde73_start:

	.long 0
	.balign 8
	.xword .Lm_9c

.LDIFF_SYM625=.Lme_9c - .Lm_9c
	.long .LDIFF_SYM625
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde73_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions:CreateScope"
	.string "Microsoft_Extensions_DependencyInjection_ServiceProviderServiceExtensions_CreateScope_System_IServiceProvider"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.ServiceProviderServiceExtensions:CreateScope"
	.xword .Lm_9d
	.xword .Lme_9d

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM626=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM626
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM627=.Lfde74_end - .Lfde74_start
	.long .LDIFF_SYM627
.Lfde74_start:

	.long 0
	.balign 8
	.xword .Lm_9d

.LDIFF_SYM628=.Lme_9d - .Lm_9d
	.long .LDIFF_SYM628
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde74_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAdd"
	.string "Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAdd_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAdd"
	.xword .Lm_9e
	.xword .Lme_9e

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM629=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM629
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM630=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM630
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM631=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM631
	.byte 1,104,11
	.string "V_1"

.LDIFF_SYM632=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM632
	.byte 1,103,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM633=.Lfde75_end - .Lfde75_start
	.long .LDIFF_SYM633
.Lfde75_start:

	.long 0
	.balign 8
	.xword .Lm_9e

.LDIFF_SYM634=.Lme_9e - .Lm_9e
	.long .LDIFF_SYM634
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,152,3,68,153,2,154,1
	.balign 8
.Lfde75_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddScoped"
	.string "Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddScoped"
	.xword .Lm_a1
	.xword .Lme_a1

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM635=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM635
	.byte 2,141,32,3
	.string "param1"

.LDIFF_SYM636=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM636
	.byte 2,141,40,3
	.string "param2"

.LDIFF_SYM637=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM637
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM638=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM638
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM639=.Lfde76_end - .Lfde76_start
	.long .LDIFF_SYM639
.Lfde76_start:

	.long 0
	.balign 8
	.xword .Lm_a1

.LDIFF_SYM640=.Lme_a1 - .Lm_a1
	.long .LDIFF_SYM640
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,68,154,3
	.balign 8
.Lfde76_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddScoped<TService_REF,_TImplementation_REF>"
	.string "Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddScoped<TService_REF,_TImplementation_REF>"
	.xword .Lm_a2
	.xword .Lme_a2

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM641=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM641
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM642=.Lfde77_end - .Lfde77_start
	.long .LDIFF_SYM642
.Lfde77_start:

	.long 0
	.balign 8
	.xword .Lm_a2

.LDIFF_SYM643=.Lme_a2 - .Lm_a2
	.long .LDIFF_SYM643
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde77_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddScoped<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddScoped_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddScoped<TService_REF>"
	.xword .Lm_a3
	.xword .Lme_a3

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM644=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM644
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM645=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM645
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM646=.Lfde78_end - .Lfde78_start
	.long .LDIFF_SYM646
.Lfde78_start:

	.long 0
	.balign 8
	.xword .Lm_a3

.LDIFF_SYM647=.Lme_a3 - .Lm_a3
	.long .LDIFF_SYM647
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde78_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddSingleton"
	.string "Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Type_System_Type"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddSingleton"
	.xword .Lm_a4
	.xword .Lme_a4

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM648=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM648
	.byte 2,141,32,3
	.string "param1"

.LDIFF_SYM649=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM649
	.byte 2,141,40,3
	.string "param2"

.LDIFF_SYM650=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM650
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM651=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM651
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM652=.Lfde79_end - .Lfde79_start
	.long .LDIFF_SYM652
.Lfde79_start:

	.long 0
	.balign 8
	.xword .Lm_a4

.LDIFF_SYM653=.Lme_a4 - .Lm_a4
	.long .LDIFF_SYM653
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,151,4,68,154,3
	.balign 8
.Lfde79_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddSingleton<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddSingleton<TService_REF>"
	.xword .Lm_a5
	.xword .Lme_a5

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM654=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM654
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM655=.Lfde80_end - .Lfde80_start
	.long .LDIFF_SYM655
.Lfde80_start:

	.long 0
	.balign 8
	.xword .Lm_a5

.LDIFF_SYM656=.Lme_a5 - .Lm_a5
	.long .LDIFF_SYM656
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde80_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddSingleton<TService_REF,_TImplementation_REF>"
	.string "Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_TImplementation_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddSingleton<TService_REF,_TImplementation_REF>"
	.xword .Lm_a6
	.xword .Lme_a6

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM657=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM657
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM658=.Lfde81_end - .Lfde81_start
	.long .LDIFF_SYM658
.Lfde81_start:

	.long 0
	.balign 8
	.xword .Lm_a6

.LDIFF_SYM659=.Lme_a6 - .Lm_a6
	.long .LDIFF_SYM659
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde81_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddSingleton<TService_REF>"
	.string "Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddSingleton_TService_REF_Microsoft_Extensions_DependencyInjection_IServiceCollection_System_Func_2_System_IServiceProvider_TService_REF"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddSingleton<TService_REF>"
	.xword .Lm_a7
	.xword .Lme_a7

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM660=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM660
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM661=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM661
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM662=.Lfde82_end - .Lfde82_start
	.long .LDIFF_SYM662
.Lfde82_start:

	.long 0
	.balign 8
	.xword .Lm_a7

.LDIFF_SYM663=.Lme_a7 - .Lm_a7
	.long .LDIFF_SYM663
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde82_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddEnumerable"
	.string "Microsoft_Extensions_DependencyInjection_Extensions_ServiceCollectionDescriptorExtensions_TryAddEnumerable_Microsoft_Extensions_DependencyInjection_IServiceCollection_Microsoft_Extensions_DependencyInjection_ServiceDescriptor"

	.byte 0,0
	.string "Microsoft.Extensions.DependencyInjection.Extensions.ServiceCollectionDescriptorExtensions:TryAddEnumerable"
	.xword .Lm_a8
	.xword .Lme_a8

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM664=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM664
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM665=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM665
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM666=.LTDIE_1_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM666
	.byte 1,104,11
	.string "V_1"

.LDIFF_SYM667=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM667
	.byte 1,103,11
	.string "V_2"

.LDIFF_SYM668=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM668
	.byte 1,102,11
	.string "V_3"

.LDIFF_SYM669=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM669
	.byte 1,101,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM670=.Lfde83_end - .Lfde83_start
	.long .LDIFF_SYM670
.Lfde83_start:

	.long 0
	.balign 8
	.xword .Lm_a8

.LDIFF_SYM671=.Lme_a8 - .Lm_a8
	.long .LDIFF_SYM671
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,149,8,150,7,68,151,6,152,5,68,153,4,154,3
	.balign 8
.Lfde83_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "<PrivateImplementationDetails>:InlineArrayAsReadOnlySpan<TBuffer_REF,_TElement_REF>"
	.string "_PrivateImplementationDetails_InlineArrayAsReadOnlySpan_TBuffer_REF_TElement_REF_TBuffer_REF__int"

	.byte 0,0
	.string "<PrivateImplementationDetails>:InlineArrayAsReadOnlySpan<TBuffer_REF,_TElement_REF>"
	.xword .Lm_a9
	.xword .Lme_a9

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM672=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM672
	.byte 2,141,32,3
	.string "param1"

.LDIFF_SYM673=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM673
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM674=.Lfde84_end - .Lfde84_start
	.long .LDIFF_SYM674
.Lfde84_start:

	.long 0
	.balign 8
	.xword .Lm_a9

.LDIFF_SYM675=.Lme_a9 - .Lm_a9
	.long .LDIFF_SYM675
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.balign 8
.Lfde84_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "<PrivateImplementationDetails>:InlineArrayAsSpan<TBuffer_REF,_TElement_REF>"
	.string "_PrivateImplementationDetails_InlineArrayAsSpan_TBuffer_REF_TElement_REF_TBuffer_REF__int"

	.byte 0,0
	.string "<PrivateImplementationDetails>:InlineArrayAsSpan<TBuffer_REF,_TElement_REF>"
	.xword .Lm_aa
	.xword .Lme_aa

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM676=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM676
	.byte 2,141,32,3
	.string "param1"

.LDIFF_SYM677=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM677
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM678=.Lfde85_end - .Lfde85_start
	.long .LDIFF_SYM678
.Lfde85_start:

	.long 0
	.balign 8
	.xword .Lm_aa

.LDIFF_SYM679=.Lme_aa - .Lm_aa
	.long .LDIFF_SYM679
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29
	.balign 8
.Lfde85_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "<PrivateImplementationDetails>:InlineArrayElementRef<TBuffer_REF,_TElement_REF>"
	.string "_PrivateImplementationDetails_InlineArrayElementRef_TBuffer_REF_TElement_REF_TBuffer_REF__int"

	.byte 0,0
	.string "<PrivateImplementationDetails>:InlineArrayElementRef<TBuffer_REF,_TElement_REF>"
	.xword .Lm_ab
	.xword .Lme_ab

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM680=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM680
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM681=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM681
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM682=.Lfde86_end - .Lfde86_start
	.long .LDIFF_SYM682
.Lfde86_start:

	.long 0
	.balign 8
	.xword .Lm_ab

.LDIFF_SYM683=.Lme_ab - .Lm_ab
	.long .LDIFF_SYM683
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde86_end:

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
