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
	.string "CommunityToolkit.Mvvm.dll"
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
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_add_CanExecuteChanged_System_EventHandler
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_add_CanExecuteChanged_System_EventHandler,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_add_CanExecuteChanged_System_EventHandler:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9015bb5
.inst 0xa90263b7
.inst 0xa9036bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401f38

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1803f7
.inst 0xaa1803e0
.inst 0xaa1a03e1
bl .Lp_2
.inst 0xaa0003f6
.inst 0xb4000116
.inst 0xf94002c0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 200]
.inst 0xeb01001f
.inst 0x10000011
.inst 0x54000441
.inst 0xaa1603f5
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x54000360
.inst 0x9100e321
.inst 0xd5033bbf
.inst 0xc85f7c30
.inst 0xeb18021f
.inst 0x54000061
.inst 0xc811fc36
.inst 0x35ffff91
.inst 0xd5033bbf
.inst 0xaa1003e0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0003f8
.inst 0xeb17001f
.inst 0x54fffac1
.inst 0xa9415bb5
.inst 0xa94263b7
.inst 0xa9436bb9
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3
.inst 0xd2801d20
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_add_CanExecuteChanged_System_EventHandler,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_add_CanExecuteChanged_System_EventHandler
.Lme_4:
.text 0
	.balign 16
.Lm_6:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand__ctor_System_Func_1_System_Threading_Tasks_Task
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand__ctor_System_Func_1_System_Threading_Tasks_Task,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand__ctor_System_Func_1_System_Threading_Tasks_Task:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 208]
.inst 0xf9400fa0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_4
bl .Lp_5
.inst 0xf9400ba0
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand__ctor_System_Func_1_System_Threading_Tasks_Task,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand__ctor_System_Func_1_System_Threading_Tasks_Task
.Lme_6:
.text 0
	.balign 16
.Lm_9:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa90163b7
.inst 0xa9026bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9402320
.inst 0xeb1a001f
.inst 0x54000a40
.inst 0x91010320
.inst 0xf9001ba0
.inst 0xd5033bbf
.inst 0xf9401ba0
.inst 0xf900001a
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xf9401b20
.inst 0xaa0003f8
.inst 0xb5000040
.inst 0x14000009

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 216]
.inst 0xf9400002
.inst 0xaa1803e0
.inst 0xaa1903e1
.inst 0xf9400f10
.inst 0xd63f0200
.inst 0xf9401b20
.inst 0xaa0003f8
.inst 0xb5000040
.inst 0x14000009

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 224]
.inst 0xf9400002
.inst 0xaa1803e0
.inst 0xaa1903e1
.inst 0xf9400f10
.inst 0xd63f0200
.inst 0xb500007a
.inst 0xd2800038
.inst 0x1400000c
.inst 0xb9803f40
.inst 0xf9001ba0
.inst 0xd50339bf
.inst 0xd50339bf
.inst 0xf9401ba0
.inst 0xd2a02c1e
.inst 0xa1e0000
.inst 0x6b1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x53001c18
.inst 0xf9401720
.inst 0xb4000320
.inst 0xf9401b20
.inst 0xaa0003f7
.inst 0xb5000040
.inst 0x14000009

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 232]
.inst 0xf9400002
.inst 0xaa1703e0
.inst 0xaa1903e1
.inst 0xf9400ef0
.inst 0xd63f0200
.inst 0xf9401b20
.inst 0xaa0003f7
.inst 0xb5000040
.inst 0x14000009

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 240]
.inst 0xf9400002
.inst 0xaa1703e0
.inst 0xaa1903e1
.inst 0xf9400ef0
.inst 0xd63f0200
.inst 0x35000098
.inst 0xaa1903e0
.inst 0xaa1a03e1
bl .Lp_6
.inst 0xa94163b7
.inst 0xa9426bb9
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task
.Lme_9:
.text 0
	.balign 16
.Lm_b:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_CanExecute_object
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_CanExecute_object,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_CanExecute_object:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xf9000bb9
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xaa0003f9
.inst 0xb5000060
.inst 0xd2800039
.inst 0x14000005
.inst 0xaa1903e0
.inst 0xf9400f30
.inst 0xd63f0200
.inst 0x53001c19
.inst 0x340003d9
.inst 0xf9400fa0
.inst 0xb9804800
.inst 0x12000000
.inst 0x35000300
.inst 0xf9400fa0
.inst 0xf9402019
.inst 0xaa1903e0
.inst 0xb4000200
.inst 0x3940033e
.inst 0xb9803f20
.inst 0xf9001ba0
.inst 0xd50339bf
.inst 0xd50339bf
.inst 0xf9401ba0
.inst 0xd2a02c1e
.inst 0xa1e0000
.inst 0x6b1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x53001c00
.inst 0x6b1f001f
.inst 0x9a9f17f9
.inst 0x14000002
.inst 0xd2a00019
.inst 0x6b1f033f
.inst 0x9a9f17e0
.inst 0x14000004
.inst 0xd2800020
.inst 0x14000002
.inst 0xd2a00000
.inst 0xf9400bb9
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_CanExecute_object,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_CanExecute_object
.Lme_b:
.text 0
	.balign 16
.Lm_c:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_Execute_object
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_Execute_object,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_Execute_object:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400fa0
.inst 0xf94013a1
bl .Lp_7
.inst 0xaa0003fa
.inst 0xf9400fa0
.inst 0xb9804800
.inst 0x121f0000
.inst 0x35000060
.inst 0xaa1a03e0
bl .Lp_8
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_Execute_object,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_Execute_object
.Lme_c:
.text 0
	.balign 16
.Lm_d:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object:
.inst 0xa9ba7bfd
.inst 0x910003fd
.inst 0xa90163b7
.inst 0xa9026bb9
.inst 0xaa0003fa
.inst 0xf9001ba1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400b40
.inst 0xb40001a0
.inst 0xf9400b41
.inst 0xaa0103e0
.inst 0xf9002ba1
.inst 0xf9400c30
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0xf9402ba0
.inst 0xaa0103f9
.inst 0xaa1a03e0
bl .Lp_9
.inst 0xaa1903f8
.inst 0x1400003a
.inst 0xf9401740
.inst 0xaa0003f9
.inst 0xb5000040
.inst 0x14000003
.inst 0xaa1903e0
bl .Lp_10

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 248]
.inst 0xd2800601
bl .Lp_11
.inst 0xf9002ba0
.inst 0xaa0003f9
.inst 0x9100a341
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0003f9
.inst 0xaa1a03f8
.inst 0xf9400f59
.inst 0xaa0003f7
.inst 0x3940001e
.inst 0x3940b000
.inst 0x350005e0
.inst 0xf90023bf
.inst 0x910103a0
.inst 0xf9002ba0
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf90023b7
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xf94023a0
.inst 0xf9001fa0
.inst 0xaa1903e0
.inst 0xf9401fa1
.inst 0xf9400f30
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0xaa0103f9
.inst 0xaa1803e0
bl .Lp_9
.inst 0xaa1903f8
.inst 0xb9804b40
.inst 0x12000000
.inst 0x350001a0
.inst 0xf9401f40
.inst 0xaa0003f9
.inst 0xb5000040
.inst 0x14000009

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 256]
.inst 0xf9400002
.inst 0xaa1903e0
.inst 0xaa1a03e1
.inst 0xf9400f30
.inst 0xd63f0200
.inst 0xaa1803e0
.inst 0xa94163b7
.inst 0xa9426bb9
.inst 0x910003bf
.inst 0xa8c67bfd
.inst 0xd65f03c0
.inst 0xd28008c0
bl .Lp_12

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object
.Lme_d:
.text 0
	.balign 16
.Lm_e:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task:
.inst 0xa9b97bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xd2800000
.inst 0xf90017a0
.inst 0xf9001ba0
.inst 0xf9001fa0
.inst 0xf90023a0
.inst 0xf90027a0
.inst 0x9100a3a0
.inst 0xf90033a0
.inst 0x910063a0
.inst 0xf9002ba0
bl .Lp_13
.inst 0xf9402bbe
.inst 0xa90007c0
.inst 0xf94033a0
.inst 0x91002000
.inst 0xf9400fa1
.inst 0xf9000001
.inst 0xf94013a1
.inst 0xf9000401
.inst 0x9100a3a0
.inst 0x91006001
.inst 0xd5033bbf
.inst 0xf9400ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x9280001e
.inst 0xb9002bbe
.inst 0x9100a3a0
bl .Lp_14
.inst 0x910003bf
.inst 0xa8c77bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task
.Lme_e:
.text 0
	.balign 16
.Lm_f:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand__cctor
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand__cctor,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand__cctor:
.inst 0xa9b97bfd
.inst 0x910003fd

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 264]
.inst 0xf90037a0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 272]
.inst 0xd2800301
bl .Lp_11
.inst 0xaa0003e1
.inst 0xf94037a0
.inst 0xf90033a0
.inst 0x91004022
.inst 0xd5033bbf
.inst 0xf94033a0
.inst 0xf9000040
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 216]
.inst 0xf9002fa0
.inst 0xd5033bbf
.inst 0xf9402fa0
.inst 0xf9000001

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 280]
.inst 0xf9002ba0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 272]
.inst 0xd2800301
bl .Lp_11
.inst 0xaa0003e1
.inst 0xf9402ba0
.inst 0xf90027a0
.inst 0x91004022
.inst 0xd5033bbf
.inst 0xf94027a0
.inst 0xf9000040
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 232]
.inst 0xf90023a0
.inst 0xd5033bbf
.inst 0xf94023a0
.inst 0xf9000001

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 288]
.inst 0xf9001fa0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 272]
.inst 0xd2800301
bl .Lp_11
.inst 0xaa0003e1
.inst 0xf9401fa0
.inst 0xf9001ba0
.inst 0x91004022
.inst 0xd5033bbf
.inst 0xf9401ba0
.inst 0xf9000040
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 240]
.inst 0xf90017a0
.inst 0xd5033bbf
.inst 0xf94017a0
.inst 0xf9000001

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 296]
.inst 0xf90013a0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 272]
.inst 0xd2800301
bl .Lp_11
.inst 0xaa0003e1
.inst 0xf94013a0
.inst 0xf9000fa0
.inst 0x91004022
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000040
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 224]
.inst 0xf9000ba0
.inst 0xd5033bbf
.inst 0xf9400ba0
.inst 0xf9000001
.inst 0x910003bf
.inst 0xa8c77bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand__cctor,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand__cctor
.Lme_f:
.text 0
	.balign 16
.Lm_13:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext:
.inst 0xa9b87bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf9000fa0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9001bbf
.inst 0xf9001fbf
.inst 0xf9400fa0
.inst 0xb980001a
.inst 0x3400097a
.inst 0xf9400fa0
.inst 0xf9400c00
.inst 0xf9003fa0
.inst 0x3940001e
.inst 0xf90017bf
.inst 0x9100a3a1
.inst 0xd5033bbf
.inst 0xf9403fa0
.inst 0xf90017a0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf94017a0
.inst 0xf9001ba0
.inst 0xf9401ba0
.inst 0xaa0003e1
.inst 0x3940003e
.inst 0xb9803c00
.inst 0xf9003ba0
.inst 0xd50339bf
.inst 0xd50339bf
.inst 0xf9403ba0
.inst 0xd2a02c1e
.inst 0xa1e0000
.inst 0x6b1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x53001c00
.inst 0x53001c00
.inst 0x350006a0
.inst 0xf9400fa0
.inst 0xb900001f
.inst 0xf9400fa0
.inst 0xf9401ba1
.inst 0xf90013a1
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000d40
.inst 0x91008002
.inst 0xaa0203e1
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000040
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000b20
.inst 0x91002001
.inst 0xf9400fa0
.inst 0xeb1f003f
.inst 0x10000011
.inst 0x54000a80
.inst 0x91002021
.inst 0xeb1f003f
.inst 0x10000011
.inst 0x54000a00
bl .Lp_15
.inst 0xaa0003e1
.inst 0x9100c3a0
bl .Lp_16
.inst 0x14000047
.inst 0xf9400fa0
.inst 0x91008000
.inst 0xf9400000
.inst 0xf9001ba0
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000860
.inst 0x91008000
.inst 0xf900001f
.inst 0xf9400fa0
.inst 0x9280001e
.inst 0xb900001e
.inst 0x9100c3ba
.inst 0xf940035a
.inst 0xb90043bf
.inst 0x3940035e
.inst 0xb9803f40
.inst 0xf9003ba0
.inst 0xd50339bf
.inst 0xd50339bf
.inst 0xf9403ba0
.inst 0xd2a2201e
.inst 0xa1e0000
.inst 0xd2a0201e
.inst 0x6b1e001f
.inst 0x9a9f17e0
.inst 0x6b1f001f
.inst 0x9a9f17e0
.inst 0x53001c00
.inst 0x34000080
.inst 0xaa1a03e0
.inst 0xb98043a1
bl .Lp_17
.inst 0x1400001b
.inst 0xf90027a0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf94027a0
.inst 0xf9001fa0
.inst 0xf9400fa0
.inst 0x9280003e
.inst 0xb900001e
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000300
.inst 0x91002000
.inst 0xf9401fa1
bl .Lp_18
bl .Lp_19
.inst 0xf90033a0
.inst 0xf94033a0
.inst 0xb4000060
.inst 0xf94033a0
bl .Lp_5
.inst 0x1400000a
.inst 0xf9400fa0
.inst 0x9280003e
.inst 0xb900001e
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x540000e0
.inst 0x91002000
bl .Lp_20
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c87bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext
.Lme_13:
.text 0
	.balign 16
.Lm_15:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9015fb6
.inst 0xa90267b8
.inst 0xf9001bba
.inst 0xf9001fa0
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401fa0
.inst 0xf9401819

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1903f8
.inst 0xaa1903e0
.inst 0xaa1a03e1
bl .Lp_2
.inst 0xaa0003f7
.inst 0xb4000117
.inst 0xf94002e0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 304]
.inst 0xeb01001f
.inst 0x10000011
.inst 0x54000461
.inst 0xaa1703f6
.inst 0xf9401fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000360
.inst 0x9100c001
.inst 0xd5033bbf
.inst 0xc85f7c30
.inst 0xeb19021f
.inst 0x54000061
.inst 0xc811fc37
.inst 0x35ffff91
.inst 0xd5033bbf
.inst 0xaa1003e0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0003f9
.inst 0xeb18001f
.inst 0x54fffaa1
.inst 0xa9415fb6
.inst 0xa94267b8
.inst 0xf9401bba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3
.inst 0xd2801d20
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
.Lme_15:
.text 0
	.balign 16
.Lm_16:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9015fb6
.inst 0xa90267b8
.inst 0xf9001bba
.inst 0xf9001fa0
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401fa0
.inst 0xf9401819

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1903f8
.inst 0xaa1903e0
.inst 0xaa1a03e1
bl .Lp_21
.inst 0xaa0003f7
.inst 0xb4000117
.inst 0xf94002e0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 304]
.inst 0xeb01001f
.inst 0x10000011
.inst 0x54000461
.inst 0xaa1703f6
.inst 0xf9401fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000360
.inst 0x9100c001
.inst 0xd5033bbf
.inst 0xc85f7c30
.inst 0xeb19021f
.inst 0x54000061
.inst 0xc811fc37
.inst 0x35ffff91
.inst 0xd5033bbf
.inst 0xaa1003e0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0003f9
.inst 0xeb18001f
.inst 0x54fffaa1
.inst 0xa9415fb6
.inst 0xa94267b8
.inst 0xf9401bba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3
.inst 0xd2801d20
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
.Lme_16:
.text 0
	.balign 16
.Lm_17:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_CanExecuteChanged_System_EventHandler
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_CanExecuteChanged_System_EventHandler,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_CanExecuteChanged_System_EventHandler:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9015fb6
.inst 0xa90267b8
.inst 0xf9001bba
.inst 0xf9001fa0
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401fa0
.inst 0xf9401c19

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1903f8
.inst 0xaa1903e0
.inst 0xaa1a03e1
bl .Lp_2
.inst 0xaa0003f7
.inst 0xb4000117
.inst 0xf94002e0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 200]
.inst 0xeb01001f
.inst 0x10000011
.inst 0x54000461
.inst 0xaa1703f6
.inst 0xf9401fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000360
.inst 0x9100e001
.inst 0xd5033bbf
.inst 0xc85f7c30
.inst 0xeb19021f
.inst 0x54000061
.inst 0xc811fc37
.inst 0x35ffff91
.inst 0xd5033bbf
.inst 0xaa1003e0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0003f9
.inst 0xeb18001f
.inst 0x54fffaa1
.inst 0xa9415fb6
.inst 0xa94267b8
.inst 0xf9401bba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3
.inst 0xd2801d20
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_CanExecuteChanged_System_EventHandler,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_CanExecuteChanged_System_EventHandler
.Lme_17:
.text 0
	.balign 16
.Lm_18:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_CanExecuteChanged_System_EventHandler
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_CanExecuteChanged_System_EventHandler,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_CanExecuteChanged_System_EventHandler:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9015fb6
.inst 0xa90267b8
.inst 0xf9001bba
.inst 0xf9001fa0
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9401fa0
.inst 0xf9401c19

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1903f8
.inst 0xaa1903e0
.inst 0xaa1a03e1
bl .Lp_21
.inst 0xaa0003f7
.inst 0xb4000117
.inst 0xf94002e0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 200]
.inst 0xeb01001f
.inst 0x10000011
.inst 0x54000461
.inst 0xaa1703f6
.inst 0xf9401fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000360
.inst 0x9100e001
.inst 0xd5033bbf
.inst 0xc85f7c30
.inst 0xeb19021f
.inst 0x54000061
.inst 0xc811fc37
.inst 0x35ffff91
.inst 0xd5033bbf
.inst 0xaa1003e0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0003f9
.inst 0xeb18001f
.inst 0x54fffaa1
.inst 0xa9415fb6
.inst 0xa94267b8
.inst 0xf9401bba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3
.inst 0xd2801d20
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_CanExecuteChanged_System_EventHandler,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_CanExecuteChanged_System_EventHandler
.Lme_18:
.text 0
	.balign 16
.Lm_19:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__ctor_System_Func_2_T_REF_System_Threading_Tasks_Task
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__ctor_System_Func_2_T_REF_System_Threading_Tasks_Task,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__ctor_System_Func_2_T_REF_System_Threading_Tasks_Task:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 208]
.inst 0xf9400fa0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_4
bl .Lp_5
.inst 0xf9400ba0
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__ctor_System_Func_2_T_REF_System_Threading_Tasks_Task,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__ctor_System_Func_2_T_REF_System_Threading_Tasks_Task
.Lme_19:
.text 0
	.balign 16
.Lm_1a:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_get_ExecutionTask
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_get_ExecutionTask,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_get_ExecutionTask:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9400ba0
.inst 0xf9402000
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_get_ExecutionTask,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_get_ExecutionTask
.Lme_1a:
.text 0
	.balign 16
.Lm_1b:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa90167b8
.inst 0xf90013ba
.inst 0xf90017a0
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf94017a0
.inst 0xf9402000
.inst 0xeb1a001f
.inst 0x54000bc0
.inst 0xf94017a0
.inst 0x91010000
.inst 0xf9001ba0
.inst 0xd5033bbf
.inst 0xf9401ba0
.inst 0xf900001a
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xf94017a0
.inst 0xf9401800
.inst 0xaa0003f9
.inst 0xb5000040
.inst 0x14000009
.inst 0xf94017a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 216]
.inst 0xf9400002
.inst 0xaa1903e0
.inst 0xf9400f30
.inst 0xd63f0200
.inst 0xf94017a0
.inst 0xf9401800
.inst 0xaa0003f9
.inst 0xb5000040
.inst 0x14000009
.inst 0xf94017a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 224]
.inst 0xf9400002
.inst 0xaa1903e0
.inst 0xf9400f30
.inst 0xd63f0200
.inst 0xb500007a
.inst 0xd2800039
.inst 0x1400000c
.inst 0xb9803f40
.inst 0xf9001ba0
.inst 0xd50339bf
.inst 0xd50339bf
.inst 0xf9401ba0
.inst 0xd2a02c1e
.inst 0xa1e0000
.inst 0x6b1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x53001c19
.inst 0xf94017a0
.inst 0xf9401400
.inst 0xb4000360
.inst 0xf94017a0
.inst 0xf9401800
.inst 0xaa0003f8
.inst 0xb5000040
.inst 0x14000009
.inst 0xf94017a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 232]
.inst 0xf9400002
.inst 0xaa1803e0
.inst 0xf9400f10
.inst 0xd63f0200
.inst 0xf94017a0
.inst 0xf9401800
.inst 0xaa0003f8
.inst 0xb5000040
.inst 0x14000009
.inst 0xf94017a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 240]
.inst 0xf9400002
.inst 0xaa1803e0
.inst 0xf9400f10
.inst 0xd63f0200
.inst 0x35000159
.inst 0xf94017a0
.inst 0xf9001ba0
.inst 0xf94017a0
.inst 0xf9400000
bl .Lp_22
.inst 0xaa0003ef
.inst 0xf9401ba0
.inst 0xaa1a03e1
bl .Lp_23
.inst 0xa94167b8
.inst 0xf94013ba
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task
.Lme_1b:
.text 0
	.balign 16
.Lm_1c:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_NotifyCanExecuteChanged
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_NotifyCanExecuteChanged,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_NotifyCanExecuteChanged:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf9000fa0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400fa0
.inst 0xf9401c00
.inst 0xaa0003fa
.inst 0xb5000040
.inst 0x14000009
.inst 0xf9400fa1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 256]
.inst 0xf9400002
.inst 0xaa1a03e0
.inst 0xf9400f50
.inst 0xd63f0200
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_NotifyCanExecuteChanged,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_NotifyCanExecuteChanged
.Lme_1c:
.text 0
	.balign 16
.Lm_1d:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_T_REF
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_T_REF,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_T_REF:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9016bb9
.inst 0xf90013a0
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf94013a0
.inst 0xf9401000
.inst 0xaa0003f9
.inst 0xb5000060
.inst 0xd280003a
.inst 0x14000006
.inst 0xaa1903e0
.inst 0xaa1a03e1
.inst 0xf9400f30
.inst 0xd63f0200
.inst 0x53001c1a
.inst 0x340003da
.inst 0xf94013a0
.inst 0xb9804800
.inst 0x12000000
.inst 0x35000300
.inst 0xf94013a0
.inst 0xf940201a
.inst 0xaa1a03e0
.inst 0xb4000200
.inst 0x3940035e
.inst 0xb9803f40
.inst 0xf9001ba0
.inst 0xd50339bf
.inst 0xd50339bf
.inst 0xf9401ba0
.inst 0xd2a02c1e
.inst 0xa1e0000
.inst 0x6b1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x53001c00
.inst 0x6b1f001f
.inst 0x9a9f17fa
.inst 0x14000002
.inst 0xd2a0001a
.inst 0x6b1f035f
.inst 0x9a9f17e0
.inst 0x14000004
.inst 0xd2800020
.inst 0x14000002
.inst 0xd2a00000
.inst 0xa9416bb9
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_T_REF,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_T_REF
.Lme_1d:
.text 0
	.balign 16
.Lm_1e:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_object
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_object,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_object:
.inst 0xa9bb7bfd
.inst 0x910003fd
.inst 0xa90167b8
.inst 0xf90013ba
.inst 0xf90017a0
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9001bbf
.inst 0xb50000ba
.inst 0xd2800000
.inst 0xb4000060
.inst 0xd2a00000
.inst 0x1400005b
.inst 0xaa1a03f9
.inst 0x9100c3b8
.inst 0xb50000da
.inst 0xd2800000
.inst 0xb5000080
.inst 0xf900031f
.inst 0xd2800039
.inst 0x1400001f
.inst 0xf94017a0
.inst 0xf9400000
bl .Lp_24
.inst 0xaa0003e2
.inst 0xf9400441
.inst 0xaa1903e0
bl .Lp_25
.inst 0xb40002a0
.inst 0xf94017a0
.inst 0xf9400000
bl .Lp_24
.inst 0xaa0003e2
.inst 0xf9400441
.inst 0xaa1903e0
bl .Lp_26
.inst 0xaa0003f9
.inst 0xd5033bbf
.inst 0xf9000319
.inst 0xd349ff00
.inst 0x92405800

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xd2800039
.inst 0x14000003
.inst 0xf900031f
.inst 0xd2a00019
.inst 0x53001f20
.inst 0x350000e0
.inst 0xf94017a0
.inst 0xf9400000
bl .Lp_27
.inst 0xaa0003ef
.inst 0xaa1a03e0
bl .Lp_28
.inst 0xf94017a0
.inst 0xf9401ba1
.inst 0xaa0003fa
.inst 0xaa0103f9
.inst 0xf9401000
.inst 0xaa0003f8
.inst 0xb5000060
.inst 0xd2800039
.inst 0x14000006
.inst 0xaa1803e0
.inst 0xaa1903e1
.inst 0xf9400f10
.inst 0xd63f0200
.inst 0x53001c19
.inst 0x34000399
.inst 0xb9804b40
.inst 0x12000000
.inst 0x350002e0
.inst 0xf9402359
.inst 0xaa1903e0
.inst 0xb4000200
.inst 0x3940033e
.inst 0xb9803f20
.inst 0xf90023a0
.inst 0xd50339bf
.inst 0xd50339bf
.inst 0xf94023a0
.inst 0xd2a02c1e
.inst 0xa1e0000
.inst 0x6b1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x53001c00
.inst 0x6b1f001f
.inst 0x9a9f17fa
.inst 0x14000002
.inst 0xd2a0001a
.inst 0x6b1f035f
.inst 0x9a9f17fa
.inst 0x14000004
.inst 0xd280003a
.inst 0x14000002
.inst 0xd2a0001a
.inst 0x53001f40
.inst 0xa94167b8
.inst 0xf94013ba
.inst 0x910003bf
.inst 0xa8c57bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_object,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_object
.Lme_1e:
.text 0
	.balign 16
.Lm_1f:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_T_REF
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_T_REF,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_T_REF:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400fa0
.inst 0xf94013a1
bl .Lp_29
.inst 0xaa0003fa
.inst 0xf9400fa0
.inst 0xb9804800
.inst 0x121f0000
.inst 0x35000060
.inst 0xaa1a03e0
bl .Lp_8
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_T_REF,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_T_REF
.Lme_1f:
.text 0
	.balign 16
.Lm_20:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_object
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_object,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_object:
.inst 0xa9bb7bfd
.inst 0x910003fd
.inst 0xa90167b8
.inst 0xf90013ba
.inst 0xf90017a0
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9001bbf
.inst 0xaa1a03f9
.inst 0x9100c3b8
.inst 0xb50000da
.inst 0xd2800000
.inst 0xb5000080
.inst 0xf900031f
.inst 0xd2800039
.inst 0x1400001f
.inst 0xf94017a0
.inst 0xf9400000
bl .Lp_24
.inst 0xaa0003e2
.inst 0xf9400441
.inst 0xaa1903e0
bl .Lp_25
.inst 0xb40002a0
.inst 0xf94017a0
.inst 0xf9400000
bl .Lp_24
.inst 0xaa0003e2
.inst 0xf9400441
.inst 0xaa1903e0
bl .Lp_26
.inst 0xaa0003f9
.inst 0xd5033bbf
.inst 0xf9000319
.inst 0xd349ff00
.inst 0x92405800

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xd2800039
.inst 0x14000003
.inst 0xf900031f
.inst 0xd2a00019
.inst 0x53001f20
.inst 0x350000e0
.inst 0xf94017a0
.inst 0xf9400000
bl .Lp_27
.inst 0xaa0003ef
.inst 0xaa1a03e0
bl .Lp_28
.inst 0xf94017a0
.inst 0xf9401ba1
.inst 0xaa0003e2
.inst 0xf90023a2
bl .Lp_29
.inst 0xaa0003fa
.inst 0xf94023a0
.inst 0xb9804800
.inst 0x121f0000
.inst 0x35000060
.inst 0xaa1a03e0
bl .Lp_8
.inst 0xa94167b8
.inst 0xf94013ba
.inst 0x910003bf
.inst 0xa8c57bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_object,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_object
.Lme_20:
.text 0
	.balign 16
.Lm_21:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF:
.inst 0xa9ba7bfd
.inst 0x910003fd
.inst 0xa90167b8
.inst 0xf90013ba
.inst 0xf90017a0
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf94017a0
.inst 0xf9400800
.inst 0xb4000220
.inst 0xf94017a0
.inst 0xf9002ba0
.inst 0xf94017a0
.inst 0xf9400802
.inst 0xaa0203e0
.inst 0xaa1a03e1
.inst 0xf9002fa2
.inst 0xf9400c50
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0xf9402ba0
.inst 0xf9402fa2
.inst 0xaa0103fa
bl .Lp_30
.inst 0xaa1a03f8
.inst 0x14000042
.inst 0xf94017a0
.inst 0xf9401400
.inst 0xaa0003f9
.inst 0xb5000040
.inst 0x14000003
.inst 0xaa1903e0
bl .Lp_10
.inst 0xf94017a0
.inst 0xf9002fa0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 248]
.inst 0xd2800601
bl .Lp_11
.inst 0xaa0003e1
.inst 0xf9402fa0
.inst 0xf9002ba1
.inst 0xaa0103f9
.inst 0x9100a001
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0003f9
.inst 0xf94017b8
.inst 0xf94017a1
.inst 0xf9400c39
.inst 0xf90023ba
.inst 0xaa0003fa
.inst 0x3940001e
.inst 0x3940b000
.inst 0x35000640
.inst 0xf9001fbf
.inst 0x9100e3a0
.inst 0xf9002ba0
.inst 0xd5033bbf
.inst 0xf9402ba0
.inst 0xf9001fba
.inst 0xd349fc00
.inst 0x92405800

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xf9401fa0
.inst 0xf9001ba0
.inst 0xaa1903e0
.inst 0xf94023a1
.inst 0xf9401ba2
.inst 0xf9400f30
.inst 0xd63f0200
.inst 0xaa0003e1
.inst 0xaa0103fa
.inst 0xaa1803e0
bl .Lp_30
.inst 0xaa1a03f8
.inst 0xf94017a0
.inst 0xb9804800
.inst 0x12000000
.inst 0x350001c0
.inst 0xf94017a0
.inst 0xf9401c00
.inst 0xaa0003f9
.inst 0xb5000040
.inst 0x14000009
.inst 0xf94017a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 256]
.inst 0xf9400002
.inst 0xaa1903e0
.inst 0xf9400f30
.inst 0xd63f0200
.inst 0xaa1803e0
.inst 0xa94167b8
.inst 0xf94013ba
.inst 0x910003bf
.inst 0xa8c67bfd
.inst 0xd65f03c0
.inst 0xd28008c0
bl .Lp_12

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF
.Lme_21:
.text 0
	.balign 16
.Lm_22:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_object
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_object,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_object:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa90167b8
.inst 0xf90013a0
.inst 0xf90017a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9001bbf
.inst 0xf94017b9
.inst 0x9100c3b8
.inst 0xb50000d9
.inst 0xd2800000
.inst 0xb5000080
.inst 0xf900031f
.inst 0xd2800039
.inst 0x1400001f
.inst 0xf94013a0
.inst 0xf9400000
bl .Lp_24
.inst 0xaa0003e2
.inst 0xf9400441
.inst 0xaa1903e0
bl .Lp_25
.inst 0xb40002a0
.inst 0xf94013a0
.inst 0xf9400000
bl .Lp_24
.inst 0xaa0003e2
.inst 0xf9400441
.inst 0xaa1903e0
bl .Lp_26
.inst 0xaa0003f9
.inst 0xd5033bbf
.inst 0xf9000319
.inst 0xd349ff00
.inst 0x92405800

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 16]
.inst 0x8b010000
.inst 0xd280003e
.inst 0x3900001e
.inst 0xd2800039
.inst 0x14000003
.inst 0xf900031f
.inst 0xd2a00019
.inst 0x53001f20
.inst 0x350000e0
.inst 0xf94013a0
.inst 0xf9400000
bl .Lp_27
.inst 0xaa0003ef
.inst 0xf94017a0
bl .Lp_28
.inst 0xf94013a0
.inst 0xf9401ba1
bl .Lp_29
.inst 0xa94167b8
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_object,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_object
.Lme_22:
.text 0
	.balign 16
.Lm_23:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task:
.inst 0xa9b87bfd
.inst 0x910003fd
.inst 0xf9001baf
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 312]
.inst 0xf9401ba0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_31
.inst 0xd2800000
.inst 0xf9001fa0
.inst 0xf90023a0
.inst 0xf90027a0
.inst 0xf9002ba0
.inst 0xf9002fa0
.inst 0xf90033a0
.inst 0x9100e3a0
.inst 0xf9003ba0
.inst 0x910083a0
.inst 0xf90037a0
bl .Lp_13
.inst 0xf94037be
.inst 0xa90007c0
.inst 0xf9403ba0
.inst 0x91002000
.inst 0xf94013a1
.inst 0xf9000001
.inst 0xf94017a1
.inst 0xf9000401
.inst 0x9100e3a0
.inst 0x91008001
.inst 0xd5033bbf
.inst 0xf9400ba0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x9100e3a0
.inst 0x91006001
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x9280001e
.inst 0xb9003bbe
.inst 0x9100e3a0
.inst 0x91002000
.inst 0x3940001e
.inst 0xf9401ba1
.inst 0xf9401022
.inst 0x9100e3a1
.inst 0xd63f0040
.inst 0x910003bf
.inst 0xa8c87bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task
.Lme_23:
.text 0
	.balign 16
.Lm_24:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_MoveNext
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_MoveNext,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_MoveNext:
.inst 0xa9b57bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xf90027af
.inst 0xf9000fa0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 320]
.inst 0xf94027a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_31
.inst 0xf9002fbf
.inst 0xf9002bbf
.inst 0xf90033bf
.inst 0xf9400fa0
.inst 0xb980001a
.inst 0x34000b9a
.inst 0xf9400fa0
.inst 0xf9400c00
.inst 0xf90053a0
.inst 0xf90023bf
.inst 0x910103a1
.inst 0xd5033bbf
.inst 0xf94053a0
.inst 0xf90023a0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf94023a0
.inst 0xf9002ba0
.inst 0xf9402ba0
.inst 0xf9001fbf
.inst 0xf9004fa0
.inst 0x3940001e
.inst 0xf9001bbf
.inst 0x9100c3a1
.inst 0xd5033bbf
.inst 0xf9404fa0
.inst 0xf9001ba0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9401ba0
.inst 0xf90017a0
.inst 0xf94017a0
.inst 0xf9001fa0
.inst 0xf9401fa0
.inst 0xf9002fa0
.inst 0xf9402fa0
.inst 0xaa0003e1
.inst 0x3940003e
.inst 0xb9803c00
.inst 0xf9004ba0
.inst 0xd50339bf
.inst 0xd50339bf
.inst 0xf9404ba0
.inst 0xd2a02c1e
.inst 0xa1e0000
.inst 0x6b1f001f
.inst 0x9a9f97e0
.inst 0x53001c00
.inst 0x53001c00
.inst 0x53001c00
.inst 0x53001c00
.inst 0x350005e0
.inst 0xf9400fa0
.inst 0xb900001f
.inst 0xf9400fa0
.inst 0xf9402fa1
.inst 0xf90013a1
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54001360
.inst 0x9100a002
.inst 0xaa0203e1
.inst 0xd5033bbf
.inst 0xf94013a0
.inst 0xf9000040
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54001140
.inst 0x91002000
.inst 0xf9400fa2
.inst 0x3940001e
.inst 0xf94027a1
.inst 0xf9401023
.inst 0x910163a1
.inst 0xd63f0060
.inst 0x1400007e
.inst 0xf9400fa0
.inst 0x9100a000
.inst 0xf9400000
.inst 0xf9002fa0
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000f40
.inst 0x9100a000
.inst 0xf900001f
.inst 0xf9400fa0
.inst 0x9280001e
.inst 0xb900001e
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xf9402000
.inst 0xf9400fa1
.inst 0xf9400c21
.inst 0xeb01001f
.inst 0x540008c1
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xf9401800
.inst 0xaa0003fa
.inst 0xb5000040
.inst 0x1400000a
.inst 0xf9400fa0
.inst 0xf9401001

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 216]
.inst 0xf9400002
.inst 0xaa1a03e0
.inst 0xf9400f50
.inst 0xd63f0200
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xf9401800
.inst 0xaa0003fa
.inst 0xb5000040
.inst 0x1400000a
.inst 0xf9400fa0
.inst 0xf9401001

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 224]
.inst 0xf9400002
.inst 0xaa1a03e0
.inst 0xf9400f50
.inst 0xd63f0200
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xf9401400
.inst 0xb4000200
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xf9401800
.inst 0xaa0003fa
.inst 0xb5000040
.inst 0x1400000a
.inst 0xf9400fa0
.inst 0xf9401001

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 232]
.inst 0xf9400002
.inst 0xaa1a03e0
.inst 0xf9400f50
.inst 0xd63f0200
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xb9804800
.inst 0x12000000
.inst 0x35000200
.inst 0xf9400fa0
.inst 0xf9401000
.inst 0xf9401c00
.inst 0xaa0003fa
.inst 0xb5000040
.inst 0x1400000a
.inst 0xf9400fa0
.inst 0xf9401001

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 256]
.inst 0xf9400002
.inst 0xaa1a03e0
.inst 0xf9400f50
.inst 0xd63f0200
.inst 0x1400001b
.inst 0xf90037a0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf94037a0
.inst 0xf90033a0
.inst 0xf9400fa0
.inst 0x9280003e
.inst 0xb900001e
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x54000300
.inst 0x91002000
.inst 0xf94033a1
bl .Lp_18
bl .Lp_19
.inst 0xf90043a0
.inst 0xf94043a0
.inst 0xb4000060
.inst 0xf94043a0
bl .Lp_5
.inst 0x1400000a
.inst 0xf9400fa0
.inst 0x9280003e
.inst 0xb900001e
.inst 0xf9400fa0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x540000e0
.inst 0x91002000
bl .Lp_20
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8cb7bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_MoveNext,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_MoveNext
.Lme_24:
.text 0
	.balign 16
.Lm_25:
	.local CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.type CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine,@function
CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf90013af
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xeb1f001f
.inst 0x10000011
.inst 0x540000e0
.inst 0x91002000
.inst 0xf9400fa1
bl .Lp_32
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine,.-CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
.Lme_25:
.text 0
	.balign 16
.Lm_2c:
	.local CommunityToolkit_Mvvm_Input_RelayCommand__ctor_System_Action
	.type CommunityToolkit_Mvvm_Input_RelayCommand__ctor_System_Action,@function
CommunityToolkit_Mvvm_Input_RelayCommand__ctor_System_Action:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 208]
.inst 0xf9400fa0
.inst 0xf90013a1
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xf94013a1
bl .Lp_4
bl .Lp_5
.inst 0xf9400ba0
.inst 0x91004001
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_RelayCommand__ctor_System_Action,.-CommunityToolkit_Mvvm_Input_RelayCommand__ctor_System_Action
.Lme_2c:
.text 0
	.balign 16
.Lm_2e:
	.local CommunityToolkit_Mvvm_Input_RelayCommand_CanExecute_object
	.type CommunityToolkit_Mvvm_Input_RelayCommand_CanExecute_object,@function
CommunityToolkit_Mvvm_Input_RelayCommand_CanExecute_object:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000bba
.inst 0xaa0003fa
.inst 0xf9000fa1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400f40
.inst 0xaa0003fa
.inst 0xb5000060
.inst 0xd2800020
.inst 0x14000005
.inst 0xaa1a03e0
.inst 0xf9400f50
.inst 0xd63f0200
.inst 0x53001c00
.inst 0xf9400bba
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_RelayCommand_CanExecute_object,.-CommunityToolkit_Mvvm_Input_RelayCommand_CanExecute_object
.Lme_2e:
.text 0
	.balign 16
.Lm_2f:
	.local CommunityToolkit_Mvvm_Input_RelayCommand_Execute_object
	.type CommunityToolkit_Mvvm_Input_RelayCommand_Execute_object,@function
CommunityToolkit_Mvvm_Input_RelayCommand_Execute_object:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400ba0
.inst 0xf9400801
.inst 0xaa0103e0
.inst 0xf90013a1
.inst 0xf9400c30
.inst 0xd63f0200
.inst 0xf94013a0
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_RelayCommand_Execute_object,.-CommunityToolkit_Mvvm_Input_RelayCommand_Execute_object
.Lme_2f:
.text 0
	.balign 16
.Lm_30:
	.local CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_TryGetCommandArgument_object_T_REF_
	.type CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_TryGetCommandArgument_object_T_REF_,@function
CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_TryGetCommandArgument_object_T_REF_:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xa9016bb9
.inst 0xf90013af
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 328]
.inst 0xf94013a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_31
.inst 0xb50000d9
.inst 0xd2800000
.inst 0xb5000080
.inst 0xf900035f
.inst 0xd2800020
.inst 0x1400001b
.inst 0xf94013a0
.inst 0xf9401002
.inst 0xf9400441
.inst 0xaa1903e0
bl .Lp_25
.inst 0xb4000260
.inst 0xf94013a0
.inst 0xf9401002
.inst 0xf9400441
.inst 0xaa1903e0
bl .Lp_26
.inst 0xaa0003f9
.inst 0xd5033bbf
.inst 0xf9000359
.inst 0xd349ff40
.inst 0x92405800

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
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
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_TryGetCommandArgument_object_T_REF_,.-CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_TryGetCommandArgument_object_T_REF_
.Lme_30:
.text 0
	.balign 16
.Lm_31:
	.local CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object
	.type CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object,@function
CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000faf
.inst 0xf9000ba0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 336]
.inst 0xf9400fa0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_31
.inst 0xf9400fa0
.inst 0xf940100f
.inst 0xf9400ba0
bl .Lp_33
bl .Lp_5
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object,.-CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object
.Lme_31:
.text 0
	.balign 16
.Lm_32:
	.local CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object
	.type CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object,@function
CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object:
.inst 0xd2804410
.inst 0x910003f1
.inst 0xcb100231
.inst 0x9100023f
.inst 0xa9007bfd
.inst 0x910003fd
.inst 0xa9015bb5
.inst 0xa90263b7
.inst 0xa9036bb9
.inst 0xf900e7af
.inst 0xaa0003fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 344]
.inst 0xf940e7a0
.inst 0xf9400c10
.inst 0xb5000050
bl .Lp_31
.inst 0xd2800000
.inst 0xf900eba0
.inst 0xf900efa0
.inst 0xf900f3a0
.inst 0xf900f7a0
.inst 0xf900fba0
.inst 0xb5001cda
.inst 0x910743a0
.inst 0xd2800b41
.inst 0xd2800042
bl .Lp_34

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 352]
.inst 0x910743ba
.inst 0xaa0003f9
.inst 0xaa0003f8
.inst 0xeb1f035f
.inst 0x10000011
.inst 0x540042c0
.inst 0x91004341
.inst 0xb981f3a0
.inst 0xaa0103f7
.inst 0xaa0003f6
.inst 0xb9800821
.inst 0x6b01001f
.inst 0x54004108
.inst 0xf94002e0
.inst 0x2a1603e1
.inst 0xd37ff821
.inst 0x8b010001
.inst 0xb9800ae0
.inst 0x4b160000
.inst 0xd2800002
.inst 0xf900dfa2
.inst 0xf900e3a2
.inst 0xf900dfa1
.inst 0xb901c3a0
.inst 0xf940dfa0
.inst 0xf90053a0
.inst 0xf940e3a0
.inst 0xf90057a0
.inst 0xaa1803f7
.inst 0xf94053a0
.inst 0xf900d7a0
.inst 0xf94057a0
.inst 0xf900dba0
.inst 0x3940031e
.inst 0xd2a00000
.inst 0x53001c18
.inst 0xb98012e0
.inst 0xb981b3a1
.inst 0x6b01001f
.inst 0x540001a8
.inst 0xf940d7a0
.inst 0xeb1f02ff
.inst 0x10000011
.inst 0x54003e00
.inst 0x910052e1
.inst 0xb98012e2
.inst 0x2a0203e2
.inst 0xf900d3bf
.inst 0xd37ff842
bl .Lp_35
.inst 0xd2800020
.inst 0x53001c18
.inst 0x53001f00
.inst 0x340000c0
.inst 0xb9802340
.inst 0xb9801321
.inst 0xb010000
.inst 0xb9002340
.inst 0x14000004
.inst 0xaa1a03e0
.inst 0xaa1903e1
bl .Lp_36

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 360]
.inst 0x910743a0
bl .Lp_37

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 368]
.inst 0x910743ba
.inst 0xaa0003f9
.inst 0xaa0003f8
.inst 0xeb1f035f
.inst 0x10000011
.inst 0x54003a00
.inst 0x91004341
.inst 0xb981f3a0
.inst 0xaa0103f7
.inst 0xaa0003f6
.inst 0xb9800821
.inst 0x6b01001f
.inst 0x54003868
.inst 0xf94002e0
.inst 0x2a1603e1
.inst 0xd37ff821
.inst 0x8b010001
.inst 0xb9800ae0
.inst 0x4b160000
.inst 0xd2800002
.inst 0xf900cba2
.inst 0xf900cfa2
.inst 0xf900cba1
.inst 0xb9019ba0
.inst 0xf940cba0
.inst 0xf9004ba0
.inst 0xf940cfa0
.inst 0xf9004fa0
.inst 0xaa1803f7
.inst 0xf9404ba0
.inst 0xf900c3a0
.inst 0xf9404fa0
.inst 0xf900c7a0
.inst 0x3940031e
.inst 0xd2a00000
.inst 0x53001c18
.inst 0xb98012e0
.inst 0xb9818ba1
.inst 0x6b01001f
.inst 0x540001a8
.inst 0xf940c3a0
.inst 0xeb1f02ff
.inst 0x10000011
.inst 0x54003540
.inst 0x910052e1
.inst 0xb98012e2
.inst 0x2a0203e2
.inst 0xf900bfbf
.inst 0xd37ff842
bl .Lp_35
.inst 0xd2800020
.inst 0x53001c18
.inst 0x53001f00
.inst 0x340000c0
.inst 0xb9802340
.inst 0xb9801321
.inst 0xb010000
.inst 0xb9002340
.inst 0x14000004
.inst 0xaa1a03e0
.inst 0xaa1903e1
bl .Lp_36
.inst 0xf940e7a0
.inst 0xf9401001

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x15, [x16, 376]
.inst 0x910743a0
bl .Lp_38

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 384]
.inst 0x910743ba
.inst 0xaa0003f9
.inst 0xaa0003f8
.inst 0xeb1f035f
.inst 0x10000011
.inst 0x54003100
.inst 0x91004341
.inst 0xb981f3a0
.inst 0xaa0103f7
.inst 0xaa0003f6
.inst 0xb9800821
.inst 0x6b01001f
.inst 0x54002f88
.inst 0xf94002e0
.inst 0x2a1603e1
.inst 0xd37ff821
.inst 0x8b010001
.inst 0xb9800ae0
.inst 0x4b160000
.inst 0xd2800002
.inst 0xf900b7a2
.inst 0xf900bba2
.inst 0xf900b7a1
.inst 0xb90173a0
.inst 0xf940b7a0
.inst 0xf90043a0
.inst 0xf940bba0
.inst 0xf90047a0
.inst 0xaa1803f7
.inst 0xf94043a0
.inst 0xf900afa0
.inst 0xf94047a0
.inst 0xf900b3a0
.inst 0x3940031e
.inst 0xd2a00000
.inst 0x53001c18
.inst 0xb98012e0
.inst 0xb98163a1
.inst 0x6b01001f
.inst 0x540001a8
.inst 0xf940afa0
.inst 0xeb1f02ff
.inst 0x10000011
.inst 0x54002c40
.inst 0x910052e1
.inst 0xb98012e2
.inst 0x2a0203e2
.inst 0xf900abbf
.inst 0xd37ff842
bl .Lp_35
.inst 0xd2800020
.inst 0x53001c18
.inst 0x53001f00
.inst 0x340000c0
.inst 0xb9802340
.inst 0xb9801321
.inst 0xb010000
.inst 0xb9002340
.inst 0x14000004
.inst 0xaa1a03e0
.inst 0xaa1903e1
bl .Lp_36
.inst 0x910743a0
bl .Lp_39
.inst 0xf90107a0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 360]
.inst 0xf9010ba0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 392]
.inst 0xd2801301
bl .Lp_11
.inst 0xf94107a1
.inst 0xf9410ba2
.inst 0xf90103a0
bl .Lp_40
.inst 0xf94103a0
.inst 0x1400012d
.inst 0x910743a0
.inst 0xd2800b81
.inst 0xd2800062
bl .Lp_34

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 352]
.inst 0x910743b9
.inst 0xaa0003f8
.inst 0xaa0003f7
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x54002620
.inst 0x91004321
.inst 0xb981f3a0
.inst 0xaa0103f6
.inst 0xaa0003f5
.inst 0xb9800821
.inst 0x6b01001f
.inst 0x540024c8
.inst 0xf94002c0
.inst 0x2a1503e1
.inst 0xd37ff821
.inst 0x8b010001
.inst 0xb9800ac0
.inst 0x4b150000
.inst 0xd2800002
.inst 0xf900a3a2
.inst 0xf900a7a2
.inst 0xf900a3a1
.inst 0xb9014ba0
.inst 0xf940a3a0
.inst 0xf9003ba0
.inst 0xf940a7a0
.inst 0xf9003fa0
.inst 0xaa1703f6
.inst 0xf9403ba0
.inst 0xf9009ba0
.inst 0xf9403fa0
.inst 0xf9009fa0
.inst 0x394002fe
.inst 0xd2a00000
.inst 0x53001c17
.inst 0xb98012c0
.inst 0xb9813ba1
.inst 0x6b01001f
.inst 0x540001a8
.inst 0xf9409ba0
.inst 0xeb1f02df
.inst 0x10000011
.inst 0x54002160
.inst 0x910052c1
.inst 0xb98012c2
.inst 0x2a0203e2
.inst 0xf90097bf
.inst 0xd37ff842
bl .Lp_35
.inst 0xd2800020
.inst 0x53001c17
.inst 0x53001ee0
.inst 0x340000c0
.inst 0xb9802320
.inst 0xb9801301
.inst 0xb010000
.inst 0xb9002320
.inst 0x14000004
.inst 0xaa1903e0
.inst 0xaa1803e1
bl .Lp_36

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 360]
.inst 0x910743a0
bl .Lp_37

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 400]
.inst 0x910743b9
.inst 0xaa0003f8
.inst 0xaa0003f7
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x54001d60
.inst 0x91004321
.inst 0xb981f3a0
.inst 0xaa0103f6
.inst 0xaa0003f5
.inst 0xb9800821
.inst 0x6b01001f
.inst 0x54001c28
.inst 0xf94002c0
.inst 0x2a1503e1
.inst 0xd37ff821
.inst 0x8b010001
.inst 0xb9800ac0
.inst 0x4b150000
.inst 0xd2800002
.inst 0xf9008fa2
.inst 0xf90093a2
.inst 0xf9008fa1
.inst 0xb90123a0
.inst 0xf9408fa0
.inst 0xf90033a0
.inst 0xf94093a0
.inst 0xf90037a0
.inst 0xaa1703f6
.inst 0xf94033a0
.inst 0xf90087a0
.inst 0xf94037a0
.inst 0xf9008ba0
.inst 0x394002fe
.inst 0xd2a00000
.inst 0x53001c17
.inst 0xb98012c0
.inst 0xb98113a1
.inst 0x6b01001f
.inst 0x540001a8
.inst 0xf94087a0
.inst 0xeb1f02df
.inst 0x10000011
.inst 0x540018a0
.inst 0x910052c1
.inst 0xb98012c2
.inst 0x2a0203e2
.inst 0xf90083bf
.inst 0xd37ff842
bl .Lp_35
.inst 0xd2800020
.inst 0x53001c17
.inst 0x53001ee0
.inst 0x340000c0
.inst 0xb9802320
.inst 0xb9801301
.inst 0xb010000
.inst 0xb9002320
.inst 0x14000004
.inst 0xaa1903e0
.inst 0xaa1803e1
bl .Lp_36
.inst 0xf9400340
.inst 0xf9400c01

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x15, [x16, 376]
.inst 0x910743a0
bl .Lp_38

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 408]
.inst 0x910743ba
.inst 0xaa0003f9
.inst 0xaa0003f8
.inst 0xeb1f035f
.inst 0x10000011
.inst 0x54001460
.inst 0x91004341
.inst 0xb981f3a0
.inst 0xaa0103f7
.inst 0xaa0003f6
.inst 0xb9800821
.inst 0x6b01001f
.inst 0x54001348
.inst 0xf94002e0
.inst 0x2a1603e1
.inst 0xd37ff821
.inst 0x8b010001
.inst 0xb9800ae0
.inst 0x4b160000
.inst 0xd2800002
.inst 0xf9007ba2
.inst 0xf9007fa2
.inst 0xf9007ba1
.inst 0xb900fba0
.inst 0xf9407ba0
.inst 0xf9002ba0
.inst 0xf9407fa0
.inst 0xf9002fa0
.inst 0xaa1803f7
.inst 0xf9402ba0
.inst 0xf90073a0
.inst 0xf9402fa0
.inst 0xf90077a0
.inst 0x3940031e
.inst 0xd2a00000
.inst 0x53001c18
.inst 0xb98012e0
.inst 0xb980eba1
.inst 0x6b01001f
.inst 0x540001a8
.inst 0xf94073a0
.inst 0xeb1f02ff
.inst 0x10000011
.inst 0x54000fa0
.inst 0x910052e1
.inst 0xb98012e2
.inst 0x2a0203e2
.inst 0xf9006fbf
.inst 0xd37ff842
bl .Lp_35
.inst 0xd2800020
.inst 0x53001c18
.inst 0x53001f00
.inst 0x340000c0
.inst 0xb9802340
.inst 0xb9801321
.inst 0xb010000
.inst 0xb9002340
.inst 0x14000004
.inst 0xaa1a03e0
.inst 0xaa1903e1
bl .Lp_36
.inst 0xf940e7a0
.inst 0xf9401001

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x15, [x16, 376]
.inst 0x910743a0
bl .Lp_38

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 384]
.inst 0x910743ba
.inst 0xaa0003f9
.inst 0xaa0003f8
.inst 0xeb1f035f
.inst 0x10000011
.inst 0x54000b60
.inst 0x91004341
.inst 0xb981f3a0
.inst 0xaa0103f7
.inst 0xaa0003f6
.inst 0xb9800821
.inst 0x6b01001f
.inst 0x54000a68
.inst 0xf94002e0
.inst 0x2a1603e1
.inst 0xd37ff821
.inst 0x8b010001
.inst 0xb9800ae0
.inst 0x4b160000
.inst 0xd2800002
.inst 0xf90067a2
.inst 0xf9006ba2
.inst 0xf90067a1
.inst 0xb900d3a0
.inst 0xf94067a0
.inst 0xf90023a0
.inst 0xf9406ba0
.inst 0xf90027a0
.inst 0xaa1803f7
.inst 0xf94023a0
.inst 0xf9005fa0
.inst 0xf94027a0
.inst 0xf90063a0
.inst 0x3940031e
.inst 0xd2a00000
.inst 0x53001c18
.inst 0xb98012e0
.inst 0xb980c3a1
.inst 0x6b01001f
.inst 0x540001a8
.inst 0xf9405fa0
.inst 0xeb1f02ff
.inst 0x10000011
.inst 0x540006a0
.inst 0x910052e1
.inst 0xb98012e2
.inst 0x2a0203e2
.inst 0xf9005bbf
.inst 0xd37ff842
bl .Lp_35
.inst 0xd2800020
.inst 0x53001c18
.inst 0x53001f00
.inst 0x340000c0
.inst 0xb9802340
.inst 0xb9801321
.inst 0xb010000
.inst 0xb9002340
.inst 0x14000004
.inst 0xaa1a03e0
.inst 0xaa1903e1
bl .Lp_36
.inst 0x910743a0
bl .Lp_39
.inst 0xf90107a0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 360]
.inst 0xf9010ba0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 392]
.inst 0xd2801301
bl .Lp_11
.inst 0xf94107a1
.inst 0xf9410ba2
.inst 0xf90103a0
bl .Lp_40
.inst 0xf94103a0
.inst 0xa9415bb5
.inst 0xa94263b7
.inst 0xa9436bb9
.inst 0x910003bf
.inst 0xa9407bfd
.inst 0xd2804410
.inst 0x910003f1
.inst 0x8b100231
.inst 0x9100023f
.inst 0xd65f03c0
bl .Lp_41
bl .Lp_41
bl .Lp_41
bl .Lp_41
bl .Lp_41
bl .Lp_41
bl .Lp_41
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object,.-CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object
.Lme_32:
.text 0
	.balign 16
.Lm_36:
	.local CommunityToolkit_Mvvm_ComponentModel_ObservableObject_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
	.type CommunityToolkit_Mvvm_ComponentModel_ObservableObject_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler,@function
CommunityToolkit_Mvvm_ComponentModel_ObservableObject_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9015bb5
.inst 0xa90263b7
.inst 0xa9036bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400b38

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1803f7
.inst 0xaa1803e0
.inst 0xaa1a03e1
bl .Lp_2
.inst 0xaa0003f6
.inst 0xb4000116
.inst 0xf94002c0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 304]
.inst 0xeb01001f
.inst 0x10000011
.inst 0x54000441
.inst 0xaa1603f5
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x54000360
.inst 0x91004321
.inst 0xd5033bbf
.inst 0xc85f7c30
.inst 0xeb18021f
.inst 0x54000061
.inst 0xc811fc36
.inst 0x35ffff91
.inst 0xd5033bbf
.inst 0xaa1003e0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0003f8
.inst 0xeb17001f
.inst 0x54fffac1
.inst 0xa9415bb5
.inst 0xa94263b7
.inst 0xa9436bb9
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3
.inst 0xd2801d20
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_ComponentModel_ObservableObject_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler,.-CommunityToolkit_Mvvm_ComponentModel_ObservableObject_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
.Lme_36:
.text 0
	.balign 16
.Lm_37:
	.local CommunityToolkit_Mvvm_ComponentModel_ObservableObject_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
	.type CommunityToolkit_Mvvm_ComponentModel_ObservableObject_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler,@function
CommunityToolkit_Mvvm_ComponentModel_ObservableObject_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler:
.inst 0xa9bc7bfd
.inst 0x910003fd
.inst 0xa9015bb5
.inst 0xa90263b7
.inst 0xa9036bb9
.inst 0xaa0003f9
.inst 0xaa0103fa

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9400b38

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xaa1803f7
.inst 0xaa1803e0
.inst 0xaa1a03e1
bl .Lp_21
.inst 0xaa0003f6
.inst 0xb4000116
.inst 0xf94002c0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 304]
.inst 0xeb01001f
.inst 0x10000011
.inst 0x54000441
.inst 0xaa1603f5
.inst 0xeb1f033f
.inst 0x10000011
.inst 0x54000360
.inst 0x91004321
.inst 0xd5033bbf
.inst 0xc85f7c30
.inst 0xeb18021f
.inst 0x54000061
.inst 0xc811fc36
.inst 0x35ffff91
.inst 0xd5033bbf
.inst 0xaa1003e0
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xaa0003f8
.inst 0xeb17001f
.inst 0x54fffac1
.inst 0xa9415bb5
.inst 0xa94263b7
.inst 0xa9436bb9
.inst 0x910003bf
.inst 0xa8c47bfd
.inst 0xd65f03c0
.inst 0xd2802120
.inst 0xaa1103e1
bl .Lp_3
.inst 0xd2801d20
.inst 0xaa1103e1
bl .Lp_3

	.size CommunityToolkit_Mvvm_ComponentModel_ObservableObject_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler,.-CommunityToolkit_Mvvm_ComponentModel_ObservableObject_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler
.Lme_37:
.text 0
	.balign 16
.Lm_3a:
	.local CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_System_ComponentModel_PropertyChangedEventArgs
	.type CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_System_ComponentModel_PropertyChangedEventArgs,@function
CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_System_ComponentModel_PropertyChangedEventArgs:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 416]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_4
bl .Lp_5
.inst 0xf9400fa0
.inst 0xf9400800
.inst 0xaa0003f8
.inst 0xb5000040
.inst 0x14000006
.inst 0xaa1803e0
.inst 0xf9400fa1
.inst 0xf94013a2
.inst 0xf9400f10
.inst 0xd63f0200
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_System_ComponentModel_PropertyChangedEventArgs,.-CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_System_ComponentModel_PropertyChangedEventArgs
.Lme_3a:
.text 0
	.balign 16
.Lm_3b:
	.local CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanging_System_ComponentModel_PropertyChangingEventArgs
	.type CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanging_System_ComponentModel_PropertyChangingEventArgs,@function
CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanging_System_ComponentModel_PropertyChangingEventArgs:
.inst 0xa9bd7bfd
.inst 0x910003fd
.inst 0xf9000bb8
.inst 0xf9000fa0
.inst 0xf90013a1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x1, [x16, 416]
.inst 0xf94013a0
.inst 0xaa0103f8
.inst 0xb50000c0
.inst 0xd2800de0
.inst 0xf2a04000
.inst 0xaa1803e1
bl .Lp_4
bl .Lp_5
.inst 0xf9400fa0
.inst 0xf9400c00
.inst 0xaa0003f8
.inst 0xb5000040
.inst 0x14000006
.inst 0xaa1803e0
.inst 0xf9400fa1
.inst 0xf94013a2
.inst 0xf9400f10
.inst 0xd63f0200
.inst 0xf9400bb8
.inst 0x910003bf
.inst 0xa8c37bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanging_System_ComponentModel_PropertyChangingEventArgs,.-CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanging_System_ComponentModel_PropertyChangingEventArgs
.Lme_3b:
.text 0
	.balign 16
.Lm_3c:
	.local CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_string
	.type CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_string,@function
CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_string:
.inst 0xa9be7bfd
.inst 0x910003fd
.inst 0xf9000ba0
.inst 0xf9000fa1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 272]
.inst 0xd2800301
bl .Lp_11
.inst 0xaa0003e1
.inst 0x91004022
.inst 0xd5033bbf
.inst 0xf9400fa0
.inst 0xf9000040
.inst 0xd349fc42
.inst 0x92405842

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x3, [x16, 16]
.inst 0x8b030042
.inst 0xd280003e
.inst 0x3900005e
.inst 0xf9400ba0
.inst 0xf9400ba2
.inst 0xf9400042
.inst 0xf9404c50
.inst 0xd63f0200
.inst 0x910003bf
.inst 0xa8c27bfd
.inst 0xd65f03c0

	.size CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_string,.-CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_string
.Lme_3c:
.text 0
	.balign 16
.Lm_46:
	.local System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_
	.type System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_,@function
System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_:
.inst 0xa9b77bfd
.inst 0x910003fd
.inst 0xf9000ba0

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf90023bf
.inst 0xf90027bf
.inst 0xf9002bbf
.inst 0xf9002fbf
.inst 0xf9400ba0
.inst 0xf9400001
.inst 0xf9000fa1
.inst 0xf9400401
.inst 0xf90013a1
.inst 0xf9400801
.inst 0xf90017a1
.inst 0xf9400c01
.inst 0xf9001ba1
.inst 0xf9401000
.inst 0xf9001fa0
.inst 0x14000003
.inst 0xd28007a0
bl .Lp_42
bl .Lp_43
.inst 0xf90023a0
.inst 0xf94023a0
.inst 0xf9407c00
.inst 0xf90027a0
.inst 0xf94023a0
.inst 0xf9408000
.inst 0xf9002ba0
.inst 0xf9400ba0
bl .Lp_44
.inst 0xf90033bf
.inst 0x94000005
.inst 0xf94033a0
.inst 0xb4000040
bl .Lp_45
.inst 0x14000029
.inst 0xf90037be

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x0, [x16, 56]
.inst 0xf9400011
.inst 0xb4000051
bl .Lp_1
.inst 0xf9402ba0
.inst 0xf94023a1
.inst 0xf9408021
.inst 0xeb01001f
.inst 0x54000200
.inst 0xf94023a0
.inst 0xf9402ba1
.inst 0xf90043a1
.inst 0x91040001
.inst 0xd5033bbf
.inst 0xf94043a0
.inst 0xf9000020
.inst 0xd349fc21
.inst 0x92405821

adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x2, [x16, 16]
.inst 0x8b020021
.inst 0xd280003e
.inst 0x3900003e
.inst 0xf94023a0
.inst 0xf9407c00
.inst 0xf9002fa0
.inst 0xf94027a0
.inst 0xf9402fa1
.inst 0xeb01001f
.inst 0x540000a0
.inst 0xf94023a0
.inst 0xf94027a1
.inst 0xf9402fa2
bl .Lp_46
.inst 0xf94037be
.inst 0xd61f03c0
.inst 0x910003bf
.inst 0xa8c97bfd
.inst 0xd65f03c0

	.size System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_,.-System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_
.Lme_46:
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
bl .Lm_6
bl method_addresses
bl method_addresses
bl .Lm_9
bl method_addresses
bl .Lm_b
bl .Lm_c
bl .Lm_d
bl .Lm_e
bl .Lm_f
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_13
bl method_addresses
bl .Lm_15
bl .Lm_16
bl .Lm_17
bl .Lm_18
bl .Lm_19
bl .Lm_1a
bl .Lm_1b
bl .Lm_1c
bl .Lm_1d
bl .Lm_1e
bl .Lm_1f
bl .Lm_20
bl .Lm_21
bl .Lm_22
bl .Lm_23
bl .Lm_24
bl .Lm_25
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_2c
bl method_addresses
bl .Lm_2e
bl .Lm_2f
bl .Lm_30
bl .Lm_31
bl .Lm_32
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_36
bl .Lm_37
bl method_addresses
bl method_addresses
bl .Lm_3a
bl .Lm_3b
bl .Lm_3c
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl method_addresses
bl .Lm_46
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

	.byte 71,0,0,0,10,0,0,0,8,0,0,0,2,0,0,0,0,0,18,0,32,0,42,0,57,0,73,0,94,0,109,0
	.byte 0,0,0,0,1,255,255,255,255,255,9,255,255,255,255,247,0,17,0,28,6,6,9,6,255,255,255,255,201,0,0,74
	.byte 0,78,6,6,6,6,6,4,9,6,128,131,4,4,4,7,4,6,10,255,255,255,255,86,0,0,0,0,0,128,174,255
	.byte 255,255,255,82,128,180,4,4,6,128,200,255,255,255,255,56,0,0,128,222,6,255,255,255,255,28,0,128,234,6,128,246
	.byte 255,255,255,255,10,0,0,0,0,0,0,0,0,128,252
.section ".rodata"
.subsection 0
	.balign 8
method_flags_table:

	.byte 0,0,0,0,5,0,5,0,0,5,0,1,1,5,1,5,0,0,0,0,0,4,4,4,4,4,0,4,4,0,0,0
	.byte 0,4,0,4,4,0,0,0,0,0,0,0,4,0,0,0,4,4,4,0,0,0,4,4,0,0,4,4,4,0,0,0
	.byte 0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
extra_method_table:

	.byte 11,0,0,0,11,0,0,0,4,0,0,0,2,0,0,0,2,0,0,0,3,1,0,0,70,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
extra_method_info_offsets:

	.byte 1,0,0,0,70,0,0,0,3,1,0,0
.section ".rodata"
.subsection 0
	.balign 8
class_name_table:

	.byte 37,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,39,0,0,0,0,0,7,0,0,0,9,0
	.byte 0,0,12,0,0,0,5,0,0,0,17,0,0,0,0,0,0,0,2,0,0,0,0,0,0,0,11,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,4,0,0,0,0,0,0,0,21,0,0,0,8,0,0,0,0,0,0,0,0,0
	.byte 0,0,10,0,40,0,0,0,0,0,6,0,38,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0
	.byte 37,0,0,0,0,0,16,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,13,0,0,0,14,0,41,0,15,0
	.byte 0,0,18,0,0,0,19,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
got_info_offsets:

	.byte 53,0,0,0,10,0,0,0,6,0,0,0,2,0,0,0,0,0,11,0,22,0,33,0,44,0,55,0,129,18,2,1
	.byte 1,1,1,1,1,1,1,129,30,2,2,2,2,3,2,2,2,2,129,51,3,2,3,3,3,5,3,4,4,129,85,4
	.byte 5,7,3,4,3,3,4,36,129,214,54,19,29,19,4,4,8,16,4,130,119,4,4
.section ".rodata"
.subsection 0
	.balign 8
ex_info_offsets:

	.byte 71,0,0,0,10,0,0,0,8,0,0,0,2,0,0,0,0,0,21,0,38,0,50,0,68,0,84,0,105,0,120,0
	.byte 0,0,0,0,131,225,255,255,255,252,31,132,52,255,255,255,251,204,0,132,100,0,133,69,122,44,128,226,64,255,255,255
	.byte 248,243,0,0,135,163,0,136,95,108,108,108,108,72,47,129,1,73,140,101,119,68,83,128,255,87,128,128,129,169,255,255
	.byte 255,239,14,0,0,0,0,0,132,52,255,255,255,251,204,145,38,45,28,124,146,33,255,255,255,237,223,0,0,131,225,0
	.byte 255,255,255,252,31,0,147,105,51,147,207,255,255,255,236,49,0,0,0,0,0,0,0,0,147,251
.section ".rodata"
.subsection 1
	.balign 8
unwind_info:

	.byte 28,12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1,13,12,31
	.byte 0,68,14,48,157,6,158,5,68,13,29,23,12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153
	.byte 4,154,3,16,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,16,12,31,0,68,14,48,157,6,158,5,68
	.byte 13,29,68,154,4,23,12,31,0,68,14,96,157,12,158,11,68,13,29,68,151,10,152,9,68,153,8,154,7,13,12,31
	.byte 0,68,14,112,157,14,158,13,68,13,29,17,12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14,26,12,31
	.byte 0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2,13,12,31,0,68,14,32,157
	.byte 4,158,3,68,13,29,21,12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4,16,12,31,0
	.byte 68,14,32,157,4,158,3,68,13,29,68,154,2,18,12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.byte 21,12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6,21,12,31,0,68,14,96,157,12,158
	.byte 11,68,13,29,68,152,10,153,9,68,154,8,18,12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,14
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,17,12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,154,20
	.byte 18,12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,154,3,29,12,31,0,84,14,160,4,157,68,158,67,68
	.byte 13,29,68,149,66,150,65,68,151,64,152,63,68,153,62,154,61,16,12,31,0,68,14,48,157,6,158,5,68,13,29,68
	.byte 152,4,14,12,31,0,68,14,144,1,157,18,158,17,68,13,29
.section ".rodata"
.subsection 0
	.balign 8
class_info_offsets:

	.byte 21,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,11,0,22,0,148,158,7,23,33,25,25,103,5,5
	.byte 35,149,170,5,7,28,5,35,35,35,29,23,150,139

.text 0
	.balign 16
plt:
mono_aot_CommunityToolkit_Mvvm_plt:
	.local plt__jit_icall_mono_threads_state_poll
	.type plt__jit_icall_mono_threads_state_poll,@function
plt__jit_icall_mono_threads_state_poll:
.Lp_1:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 432]
br x16
.inst 643
	.size plt__jit_icall_mono_threads_state_poll,.-plt__jit_icall_mono_threads_state_poll
	.local plt_System_Delegate_Combine_System_Delegate_System_Delegate
	.type plt_System_Delegate_Combine_System_Delegate_System_Delegate,@function
plt_System_Delegate_Combine_System_Delegate_System_Delegate:
.Lp_2:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 440]
br x16
.inst 646
	.size plt_System_Delegate_Combine_System_Delegate_System_Delegate,.-plt_System_Delegate_Combine_System_Delegate_System_Delegate
	.local plt__jit_icall_mono_arch_throw_corlib_exception
	.type plt__jit_icall_mono_arch_throw_corlib_exception,@function
plt__jit_icall_mono_arch_throw_corlib_exception:
.Lp_3:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 448]
br x16
.inst 651
	.size plt__jit_icall_mono_arch_throw_corlib_exception,.-plt__jit_icall_mono_arch_throw_corlib_exception
	.local plt__jit_icall_mono_create_corlib_exception_1
	.type plt__jit_icall_mono_create_corlib_exception_1,@function
plt__jit_icall_mono_create_corlib_exception_1:
.Lp_4:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 456]
br x16
.inst 653
	.size plt__jit_icall_mono_create_corlib_exception_1,.-plt__jit_icall_mono_create_corlib_exception_1
	.local plt__jit_icall_mono_arch_throw_exception
	.type plt__jit_icall_mono_arch_throw_exception,@function
plt__jit_icall_mono_arch_throw_exception:
.Lp_5:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 464]
br x16
.inst 656
	.size plt__jit_icall_mono_arch_throw_exception,.-plt__jit_icall_mono_arch_throw_exception
	.local plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__set_ExecutionTaskg__MonitorTask_26_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_System_Threading_Tasks_Task
	.type plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__set_ExecutionTaskg__MonitorTask_26_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_System_Threading_Tasks_Task,@function
plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__set_ExecutionTaskg__MonitorTask_26_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_System_Threading_Tasks_Task:
.Lp_6:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 472]
br x16
.inst 658
	.size plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__set_ExecutionTaskg__MonitorTask_26_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_System_Threading_Tasks_Task,.-plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__set_ExecutionTaskg__MonitorTask_26_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_System_Threading_Tasks_Task
	.local plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object
	.type plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object,@function
plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object:
.Lp_7:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 480]
br x16
.inst 660
	.size plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object,.-plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object
	.local plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task
	.type plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task,@function
plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task:
.Lp_8:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 488]
br x16
.inst 662
	.size plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task,.-plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task
	.local plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task
	.type plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task,@function
plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task:
.Lp_9:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 496]
br x16
.inst 664
	.size plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task,.-plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task
	.local plt_System_Threading_CancellationTokenSource_Cancel
	.type plt_System_Threading_CancellationTokenSource_Cancel,@function
plt_System_Threading_CancellationTokenSource_Cancel:
.Lp_10:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 504]
br x16
.inst 666
	.size plt_System_Threading_CancellationTokenSource_Cancel,.-plt_System_Threading_CancellationTokenSource_Cancel
	.local plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.type plt_wrapper_alloc_object_AllocSmall_intptr_intptr,@function
plt_wrapper_alloc_object_AllocSmall_intptr_intptr:
.Lp_11:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 512]
br x16
.inst 671
	.size plt_wrapper_alloc_object_AllocSmall_intptr_intptr,.-plt_wrapper_alloc_object_AllocSmall_intptr_intptr
	.local plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource
	.type plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource,@function
plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource:
.Lp_12:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 520]
br x16
.inst 679
	.size plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource,.-plt_System_ThrowHelper_ThrowObjectDisposedException_System_ExceptionResource
	.local plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create
	.type plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create,@function
plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create:
.Lp_13:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 528]
br x16
.inst 684
	.size plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create,.-plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_Create
	.local plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_
	.type plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_,@function
plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_:
.Lp_14:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 536]
br x16
.inst 689
	.size plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_,.-plt_System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_
	.local plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetStateMachineBox_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40__System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_
	.type plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetStateMachineBox_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40__System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_,@function
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetStateMachineBox_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40__System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_:
.Lp_15:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 544]
br x16
.inst 717
	.size plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetStateMachineBox_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40__System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_,.-plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_GetStateMachineBox_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40__System_Threading_Tasks_Task_1_System_Threading_Tasks_VoidTaskResult_
	.local plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_System_Runtime_CompilerServices_TaskAwaiter__System_Runtime_CompilerServices_IAsyncStateMachineBox
	.type plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_System_Runtime_CompilerServices_TaskAwaiter__System_Runtime_CompilerServices_IAsyncStateMachineBox,@function
plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_System_Runtime_CompilerServices_TaskAwaiter__System_Runtime_CompilerServices_IAsyncStateMachineBox:
.Lp_16:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 552]
br x16
.inst 739
	.size plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_System_Runtime_CompilerServices_TaskAwaiter__System_Runtime_CompilerServices_IAsyncStateMachineBox,.-plt_System_Runtime_CompilerServices_AsyncTaskMethodBuilder_1_System_Threading_Tasks_VoidTaskResult_AwaitUnsafeOnCompleted_System_Runtime_CompilerServices_TaskAwaiter_System_Runtime_CompilerServices_TaskAwaiter__System_Runtime_CompilerServices_IAsyncStateMachineBox
	.local plt_System_Runtime_CompilerServices_TaskAwaiter_HandleNonSuccessAndDebuggerNotification_System_Threading_Tasks_Task_System_Threading_Tasks_ConfigureAwaitOptions
	.type plt_System_Runtime_CompilerServices_TaskAwaiter_HandleNonSuccessAndDebuggerNotification_System_Threading_Tasks_Task_System_Threading_Tasks_ConfigureAwaitOptions,@function
plt_System_Runtime_CompilerServices_TaskAwaiter_HandleNonSuccessAndDebuggerNotification_System_Threading_Tasks_Task_System_Threading_Tasks_ConfigureAwaitOptions:
.Lp_17:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 560]
br x16
.inst 756
	.size plt_System_Runtime_CompilerServices_TaskAwaiter_HandleNonSuccessAndDebuggerNotification_System_Threading_Tasks_Task_System_Threading_Tasks_ConfigureAwaitOptions,.-plt_System_Runtime_CompilerServices_TaskAwaiter_HandleNonSuccessAndDebuggerNotification_System_Threading_Tasks_Task_System_Threading_Tasks_ConfigureAwaitOptions
	.local plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetException_System_Exception
	.type plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetException_System_Exception,@function
plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetException_System_Exception:
.Lp_18:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 568]
br x16
.inst 761
	.size plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetException_System_Exception,.-plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetException_System_Exception
	.local plt__jit_icall_mono_thread_get_undeniable_exception
	.type plt__jit_icall_mono_thread_get_undeniable_exception,@function
plt__jit_icall_mono_thread_get_undeniable_exception:
.Lp_19:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 576]
br x16
.inst 766
	.size plt__jit_icall_mono_thread_get_undeniable_exception,.-plt__jit_icall_mono_thread_get_undeniable_exception
	.local plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult
	.type plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult,@function
plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult:
.Lp_20:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 584]
br x16
.inst 769
	.size plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult,.-plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetResult
	.local plt_System_Delegate_Remove_System_Delegate_System_Delegate
	.type plt_System_Delegate_Remove_System_Delegate_System_Delegate,@function
plt_System_Delegate_Remove_System_Delegate_System_Delegate:
.Lp_21:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 592]
br x16
.inst 774
	.size plt_System_Delegate_Remove_System_Delegate_System_Delegate,.-plt_System_Delegate_Remove_System_Delegate_System_Delegate
	.local plt__rgctx_fetch_0
	.type plt__rgctx_fetch_0,@function
plt__rgctx_fetch_0:
.Lp_22:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 600]
br x16
.inst 779
	.size plt__rgctx_fetch_0,.-plt__rgctx_fetch_0
	.local plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task
	.type plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task,@function
plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task:
.Lp_23:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 608]
br x16
.inst 797
	.size plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task,.-plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task
	.local plt__rgctx_fetch_1
	.type plt__rgctx_fetch_1,@function
plt__rgctx_fetch_1:
.Lp_24:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 616]
br x16
.inst 811
	.size plt__rgctx_fetch_1,.-plt__rgctx_fetch_1
	.local plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr
	.type plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr,@function
plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr:
.Lp_25:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 624]
br x16
.inst 819
	.size plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr,.-plt_wrapper_castclass_object___isinst_with_cache_object_intptr_intptr
	.local plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
	.type plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr,@function
plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr:
.Lp_26:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 632]
br x16
.inst 827
	.size plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr,.-plt_wrapper_castclass_object___castclass_with_cache_object_intptr_intptr
	.local plt__rgctx_fetch_2
	.type plt__rgctx_fetch_2,@function
plt__rgctx_fetch_2:
.Lp_27:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 640]
br x16
.inst 840
	.size plt__rgctx_fetch_2,.-plt__rgctx_fetch_2
	.local plt_CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object
	.type plt_CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object,@function
plt_CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object:
.Lp_28:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 648]
br x16
.inst 858
	.size plt_CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object,.-plt_CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object
	.local plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF
	.type plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF,@function
plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF:
.Lp_29:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 656]
br x16
.inst 872
	.size plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF,.-plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF
	.local plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task
	.type plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task,@function
plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task:
.Lp_30:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 664]
br x16
.inst 886
	.size plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task,.-plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task
	.local plt__jit_icall_mini_init_method_rgctx
	.type plt__jit_icall_mini_init_method_rgctx,@function
plt__jit_icall_mini_init_method_rgctx:
.Lp_31:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 672]
br x16
.inst 900
	.size plt__jit_icall_mini_init_method_rgctx,.-plt__jit_icall_mini_init_method_rgctx
	.local plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.type plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine,@function
plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine:
.Lp_32:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 680]
br x16
.inst 903
	.size plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine,.-plt_System_Runtime_CompilerServices_AsyncVoidMethodBuilder_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine
	.local plt_CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object
	.type plt_CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object,@function
plt_CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object:
.Lp_33:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 688]
br x16
.inst 908
	.size plt_CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object,.-plt_CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object
	.local plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int
	.type plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int,@function
plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int:
.Lp_34:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 696]
br x16
.inst 922
	.size plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int,.-plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler__ctor_int_int
	.local plt_System_SpanHelpers_Memmove_byte__byte__uintptr
	.type plt_System_SpanHelpers_Memmove_byte__byte__uintptr,@function
plt_System_SpanHelpers_Memmove_byte__byte__uintptr:
.Lp_35:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 704]
br x16
.inst 927
	.size plt_System_SpanHelpers_Memmove_byte__byte__uintptr,.-plt_System_SpanHelpers_Memmove_byte__byte__uintptr
	.local plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string
	.type plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string,@function
plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string:
.Lp_36:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 712]
br x16
.inst 932
	.size plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string,.-plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_GrowThenCopyString_string
	.local plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string
	.type plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string,@function
plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string:
.Lp_37:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 720]
br x16
.inst 937
	.size plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string,.-plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_string
	.local plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_System_Type_System_Type
	.type plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_System_Type_System_Type,@function
plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_System_Type_System_Type:
.Lp_38:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 728]
br x16
.inst 942
	.size plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_System_Type_System_Type,.-plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_AppendFormatted_System_Type_System_Type
	.local plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear
	.type plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear,@function
plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear:
.Lp_39:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 736]
br x16
.inst 958
	.size plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear,.-plt_System_Runtime_CompilerServices_DefaultInterpolatedStringHandler_ToStringAndClear
	.local plt_System_ArgumentException__ctor_string_string
	.type plt_System_ArgumentException__ctor_string_string,@function
plt_System_ArgumentException__ctor_string_string:
.Lp_40:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 744]
br x16
.inst 963
	.size plt_System_ArgumentException__ctor_string_string,.-plt_System_ArgumentException__ctor_string_string
	.local plt_System_ThrowHelper_ThrowArgumentOutOfRangeException
	.type plt_System_ThrowHelper_ThrowArgumentOutOfRangeException,@function
plt_System_ThrowHelper_ThrowArgumentOutOfRangeException:
.Lp_41:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 752]
br x16
.inst 968
	.size plt_System_ThrowHelper_ThrowArgumentOutOfRangeException,.-plt_System_ThrowHelper_ThrowArgumentOutOfRangeException
	.local plt_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument
	.type plt_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument,@function
plt_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument:
.Lp_42:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 760]
br x16
.inst 973
	.size plt_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument,.-plt_System_ThrowHelper_ThrowArgumentNullException_System_ExceptionArgument
	.local plt_System_Threading_Thread_get_CurrentThread
	.type plt_System_Threading_Thread_get_CurrentThread,@function
plt_System_Threading_Thread_get_CurrentThread:
.Lp_43:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 768]
br x16
.inst 978
	.size plt_System_Threading_Thread_get_CurrentThread,.-plt_System_Threading_Thread_get_CurrentThread
	.local plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext
	.type plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext,@function
plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext:
.Lp_44:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 776]
br x16
.inst 983
	.size plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext,.-plt_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext
	.local plt__jit_icall_ves_icall_thread_finish_async_abort
	.type plt__jit_icall_ves_icall_thread_finish_async_abort,@function
plt__jit_icall_ves_icall_thread_finish_async_abort:
.Lp_45:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 784]
br x16
.inst 985
	.size plt__jit_icall_ves_icall_thread_finish_async_abort,.-plt__jit_icall_ves_icall_thread_finish_async_abort
	.local plt_System_Threading_ExecutionContext_RestoreChangedContextToThread_System_Threading_Thread_System_Threading_ExecutionContext_System_Threading_ExecutionContext
	.type plt_System_Threading_ExecutionContext_RestoreChangedContextToThread_System_Threading_Thread_System_Threading_ExecutionContext_System_Threading_ExecutionContext,@function
plt_System_Threading_ExecutionContext_RestoreChangedContextToThread_System_Threading_Thread_System_Threading_ExecutionContext_System_Threading_ExecutionContext:
.Lp_46:
adrp x16, mono_aot_CommunityToolkit_Mvvm_got+0
add x16, x16, :lo12:mono_aot_CommunityToolkit_Mvvm_got
ldr x16, [x16, 792]
br x16
.inst 988
	.size plt_System_Threading_ExecutionContext_RestoreChangedContextToThread_System_Threading_Thread_System_Threading_ExecutionContext_System_Threading_ExecutionContext,.-plt_System_Threading_ExecutionContext_RestoreChangedContextToThread_System_Threading_Thread_System_Threading_ExecutionContext_System_Threading_ExecutionContext
	.size mono_aot_CommunityToolkit_Mvvm_plt,.-mono_aot_CommunityToolkit_Mvvm_plt
plt_end:
.section ".rodata"
.subsection 0
	.balign 8
image_table:

	.byte 3,0,0,0,67,111,109,109,117,110,105,116,121,84,111,111,108,107,105,116,46,77,118,118,109,0,53,65,51,65,66,50
	.byte 65,55,45,68,54,51,53,45,52,65,53,53,45,57,49,50,67,45,56,65,55,57,51,51,57,66,49,57,53,51,0,0
	.byte 52,97,102,102,54,55,97,49,48,53,53,52,56,101,101,50,0,0,0,0,0,0,0,0,1,0,0,0,8,0,0,0
	.byte 4,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,80,114,105,118,97,116,101,46,67,111,114,101,76
	.byte 105,98,0,52,65,67,56,66,48,52,49,45,51,50,66,57,45,52,69,56,56,45,57,54,66,56,45,54,49,67,52,53
	.byte 69,70,69,68,56,67,56,0,0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56,101,0,0,0,0,0,0,0
	.byte 1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,79,98,106,101,99
	.byte 116,77,111,100,101,108,0,65,69,66,69,48,56,56,49,45,54,52,48,56,45,52,53,55,53,45,65,50,49,68,45,49
	.byte 66,49,67,54,50,56,50,69,49,56,55,0,0,98,48,51,102,53,102,55,102,49,49,100,53,48,97,51,97,0,0,0
	.byte 1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.section ".bss"
.subsection 0
	.balign 8
	.local mono_aot_CommunityToolkit_Mvvm_got
	.type mono_aot_CommunityToolkit_Mvvm_got,@object
mono_aot_CommunityToolkit_Mvvm_got:
	.skip 800
got_end:
.section ".rodata"
.subsection 0
	.balign 8
blob:

	.byte 0,4,0,0,0,1,3,1,25,6,0,0,0,1,3,1,26,9,0,0,0,1,3,4,27,28,29,30,11,0,0,0
	.byte 1,3,12,0,0,0,1,3,13,0,0,0,1,3,2,31,32,14,0,0,0,1,3,15,0,0,0,1,3,12,33,34
	.byte 27,35,34,29,36,34,30,37,34,28,19,0,0,0,21,0,0,0,1,38,22,0,0,0,1,38,23,0,0,0,1,25
	.byte 24,0,0,0,1,25,25,0,0,0,1,26,26,0,0,0,27,0,0,0,4,27,28,29,30,28,0,0,0,1,32,29
	.byte 0,0,0,30,0,0,0,31,0,0,0,32,0,0,0,33,0,0,0,2,31,32,34,0,0,0,35,0,0,0,1,39
	.byte 36,0,0,0,5,40,27,28,29,32,37,0,0,0,44,0,0,0,1,26,46,0,0,0,47,0,0,0,48,0,0,0
	.byte 1,41,49,0,0,0,1,42,50,0,0,0,17,43,44,45,46,47,48,45,49,44,45,50,47,51,47,48,45,49,54,0
	.byte 0,0,1,38,55,0,0,0,1,38,58,0,0,0,1,52,59,0,0,0,1,52,60,0,0,0,1,34,70,0,0,0
	.byte 1,1,5,255,253,0,0,0,2,132,69,1,1,177,222,2,129,0,11,0,36,38,45,50,52,32,47,48,55,8,55,9
	.byte 55,10,55,11,55,12,55,128,243,6,80,6,89,6,91,6,92,6,96,6,128,249,6,83,6,128,165,6,128,142,6,128
	.byte 141,13,2,128,162,1,15,0,1,14,1,3,1,14,1,3,4,14,1,3,2,14,1,3,3,13,2,130,249,1,14,2
	.byte 128,161,1,130,139,15,0,39,13,2,7,2,15,0,67,15,0,95,15,0,128,143,13,2,8,2,5,0,19,0,1,0
	.byte 1,7,5,1,28,7,129,122,1,7,129,130,4,1,7,129,136,4,1,8,129,136,1,7,129,145,67,255,253,0,0,0
	.byte 7,129,140,0,36,1,129,136,1,7,255,253,0,0,0,2,132,76,1,1,178,17,2,129,150,5,0,19,0,1,0,1
	.byte 8,5,1,28,7,129,185,1,7,129,193,4,1,8,129,199,2,1,21,7,129,203,67,255,253,0,0,0,7,129,203,0
	.byte 37,1,129,199,1,7,255,253,0,0,0,2,132,76,1,1,178,19,2,129,208,5,0,19,0,1,0,1,14,5,1,28
	.byte 7,129,245,1,7,129,253,4,1,14,130,3,67,255,253,0,0,0,7,130,7,0,49,1,130,3,1,14,7,129,253,67
	.byte 255,253,0,0,0,7,130,7,0,50,1,130,3,1,10,255,253,0,0,0,7,130,7,0,51,1,130,3,67,255,253,0
	.byte 0,0,7,130,7,0,51,1,130,3,1,5,7,129,253,15,0,128,163,15,0,128,187,15,0,128,207,1,2,69,1,33
	.byte 255,253,0,0,0,2,132,120,1,1,178,127,2,130,91,15,0,129,110,13,2,110,1,15,0,129,114,15,0,129,174,15
	.byte 0,130,22,6,128,249,3,193,0,1,227,6,103,6,128,128,6,104,3,17,3,14,3,15,3,10,3,193,0,41,113,3
	.byte 255,252,0,0,0,15,2,3,193,0,23,85,3,193,0,50,16,3,255,253,0,0,0,2,132,69,1,1,177,222,2,129
	.byte 0,1,2,131,156,1,4,2,132,72,1,130,193,3,255,253,0,0,0,7,130,198,1,177,240,3,130,193,129,0,1,2
	.byte 132,150,1,3,255,253,0,0,0,7,130,198,1,177,239,3,130,193,130,222,3,193,0,50,227,3,193,0,50,21,6,128
	.byte 241,3,193,0,50,20,3,193,0,1,244,34,129,140,138,20,255,253,0,0,0,7,129,140,0,36,1,129,136,3,255,253
	.byte 0,0,0,7,129,140,0,36,1,129,136,34,129,140,148,28,7,129,130,3,255,252,0,0,0,10,10,3,255,252,0,0
	.byte 0,10,9,4,1,14,129,136,34,129,140,138,20,255,253,0,0,0,7,131,67,0,50,1,129,136,3,255,253,0,0,0
	.byte 7,131,67,0,50,1,129,136,3,255,253,0,0,0,7,129,140,0,34,1,129,136,3,255,253,0,0,0,7,129,140,0
	.byte 28,1,129,136,6,129,10,3,193,0,50,18,3,255,253,0,0,0,7,130,7,0,51,1,130,3,3,193,0,50,118,3
	.byte 193,0,22,106,3,193,0,50,138,3,193,0,50,131,3,255,253,0,0,0,2,132,120,1,1,178,127,2,130,91,3,193
	.byte 0,50,123,3,193,0,7,38,3,193,0,23,29,3,193,0,23,66,3,193,0,40,235,3,20,6,129,29,3,193,0,41
	.byte 181,10,0,0,15,0,104,14,56,4,8,14,32,12,72,26,160,1,2,8,63,128,228,52,129,20,0,28,0,52,1,0
	.byte 6,28,1,0,1,4,2,0,0,4,0,4,0,4,0,4,11,36,1,0,0,4,0,8,7,4,0,4,0,28,0,4
	.byte 0,4,0,12,0,4,0,8,0,0,5,0,1,4,2,0,0,4,3,4,10,29,0,6,12,80,22,88,14,104,37,128
	.byte 136,40,128,148,0,15,6,40,1,0,0,16,10,28,2,4,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8
	.byte 5,0,1,0,10,43,0,32,0,96,20,24,14,104,20,24,26,72,0,0,20,24,26,72,0,0,6,8,6,16,12,88
	.byte 62,112,46,96,6,8,14,24,128,187,129,128,48,129,148,0,90,0,48,1,0,6,4,0,4,3,4,2,0,0,8,0
	.byte 8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,1,0,5,4,1,4,0,0,3,4,0,0,3,4,0,12,5
	.byte 4,0,4,0,4,0,0,0,8,0,0,5,0,1,0,5,4,1,4,0,0,3,4,0,0,3,4,0,12,5,4,0
	.byte 4,0,4,0,0,0,8,0,0,5,0,1,0,0,0,2,4,0,0,1,4,2,4,1,40,0,4,6,0,5,4,0
	.byte 0,3,4,5,4,1,4,0,0,3,4,3,4,0,12,5,4,0,4,0,4,0,0,0,8,0,0,6,0,5,4,1
	.byte 4,0,0,3,4,3,4,0,12,5,4,0,4,0,4,0,0,0,8,0,0,5,0,0,0,3,4,2,0,0,4,0
	.byte 4,5,4,1,0,10,67,0,24,0,88,20,32,16,48,4,8,20,32,14,16,6,16,12,96,10,24,8,24,4,8,4
	.byte 16,93,128,208,44,128,224,0,43,0,44,1,4,5,4,1,4,0,0,3,4,0,0,1,4,2,4,0,4,0,8,0
	.byte 0,0,4,5,0,0,0,2,4,1,4,6,4,1,4,0,0,2,4,7,8,0,0,1,4,0,0,2,4,1,44,0
	.byte 4,6,0,0,4,2,4,2,4,0,0,2,4,0,4,2,4,0,0,2,4,0,0,0,4,2,4,0,0,1,4,10
	.byte 84,0,8,0,88,16,32,20,32,12,16,31,84,44,100,0,13,0,44,2,8,0,4,6,4,1,4,6,4,1,4,0
	.byte 0,2,4,1,0,0,4,0,4,6,0,10,101,0,41,0,96,16,16,24,56,14,24,4,8,4,8,20,24,14,24,0
	.byte 0,12,40,14,112,4,8,26,176,1,10,40,14,24,4,8,20,24,20,24,26,72,2,0,128,179,129,140,48,129,168,0
	.byte 86,0,48,1,0,5,4,0,0,2,4,2,0,5,4,0,8,0,8,0,8,0,0,6,0,1,4,0,4,0,0,5
	.byte 4,1,0,1,4,0,0,2,4,1,0,5,4,1,4,0,0,3,4,0,0,2,4,0,4,0,4,5,0,1,0,0
	.byte 12,0,4,0,4,0,0,6,4,1,4,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,1,0,1
	.byte 4,0,0,2,4,5,4,1,80,5,0,0,8,0,8,0,4,0,0,6,0,1,4,0,4,0,0,5,4,1,0,1
	.byte 4,1,0,6,4,1,4,0,0,2,4,1,0,5,4,1,4,0,0,3,4,0,0,3,4,0,12,5,4,0,4,0
	.byte 4,0,0,0,8,0,0,6,0,0,0,1,4,10,125,0,12,0,120,14,64,10,40,16,104,16,16,28,16,47,128,180
	.byte 60,128,192,0,20,0,60,0,0,2,16,0,16,10,20,0,0,3,4,0,4,0,8,0,4,0,4,0,4,0,12,0
	.byte 4,0,8,5,0,3,0,5,8,14,8,1,0,10,125,0,22,0,64,20,192,1,10,56,20,192,1,10,56,20,192,1
	.byte 10,56,20,192,1,10,56,123,130,16,32,130,28,0,50,0,32,0,0,5,16,0,12,0,4,0,4,0,8,255,255,255
	.byte 255,251,0,5,52,5,0,0,16,0,8,5,4,0,0,5,16,0,12,0,4,0,4,0,8,255,255,255,255,251,0,5
	.byte 52,5,0,0,16,0,8,5,4,0,0,5,16,0,12,0,4,0,4,0,8,255,255,255,255,251,0,5,52,5,0,0
	.byte 16,0,8,5,4,0,0,5,16,0,12,0,4,0,4,0,8,255,255,255,255,251,0,5,52,5,0,0,16,0,8,5
	.byte 4,1,0,14,128,139,1,0,3,2,48,1,56,129,240,129,240,0,44,0,96,14,16,6,8,24,152,1,14,120,4,8
	.byte 18,16,14,152,1,28,136,1,4,8,14,32,24,48,18,24,14,168,1,6,80,16,24,24,56,4,56,16,24,22,48,127
	.byte 130,124,48,130,152,0,60,0,48,1,4,6,4,1,0,0,0,2,4,1,4,11,72,2,56,0,4,5,0,0,0,2
	.byte 4,4,4,5,4,2,12,0,4,5,60,1,4,0,4,0,8,13,52,0,0,2,4,7,16,1,4,0,4,0,8,5
	.byte 4,6,4,4,4,5,8,0,0,7,84,0,0,2,36,1,4,3,4,5,8,1,4,0,4,0,8,6,8,0,0,0
	.byte 0,5,4,0,0,0,12,0,0,0,8,0,4,2,4,3,4,5,8,1,4,0,4,0,8,5,4,0,4,6,0,11
	.byte 128,157,2,1,0,24,0,29,56,24,0,13,255,253,0,0,0,7,129,140,0,22,1,129,136,0,0,15,0,104,14,64
	.byte 4,8,14,32,12,72,26,168,1,2,8,63,128,236,52,129,28,0,28,0,52,1,4,6,28,1,0,1,4,2,0,0
	.byte 4,0,4,0,4,0,4,11,36,1,4,0,4,0,8,7,4,0,4,0,28,0,4,0,4,0,12,0,4,0,8,0
	.byte 0,5,0,1,4,2,0,0,4,3,4,11,128,157,2,1,0,24,0,29,56,24,0,13,255,253,0,0,0,7,129,140
	.byte 0,23,1,129,136,0,0,15,0,104,14,64,4,8,14,32,12,72,26,168,1,2,8,63,128,236,52,129,28,0,28,0
	.byte 52,1,4,6,28,1,0,1,4,2,0,0,4,0,4,0,4,0,4,11,36,1,4,0,4,0,8,7,4,0,4,0
	.byte 28,0,4,0,4,0,12,0,4,0,8,0,0,5,0,1,4,2,0,0,4,3,4,11,128,157,2,1,0,24,0,29
	.byte 56,24,0,13,255,253,0,0,0,7,129,140,0,24,1,129,136,0,0,15,0,104,14,64,4,8,14,32,12,72,26,168
	.byte 1,2,8,63,128,236,52,129,28,0,28,0,52,1,4,6,28,1,0,1,4,2,0,0,4,0,4,0,4,0,4,11
	.byte 36,1,4,0,4,0,8,7,4,0,4,0,28,0,4,0,4,0,12,0,4,0,8,0,0,5,0,1,4,2,0,0
	.byte 4,3,4,11,128,157,2,1,0,24,0,29,56,24,0,13,255,253,0,0,0,7,129,140,0,25,1,129,136,0,0,15
	.byte 0,104,14,64,4,8,14,32,12,72,26,168,1,2,8,63,128,236,52,129,28,0,28,0,52,1,4,6,28,1,0,1
	.byte 4,2,0,0,4,0,4,0,4,0,4,11,36,1,4,0,4,0,8,7,4,0,4,0,28,0,4,0,4,0,12,0
	.byte 4,0,8,0,0,5,0,1,4,2,0,0,4,3,4,11,29,2,1,0,12,0,29,16,12,0,13,255,253,0,0,0
	.byte 7,129,140,0,26,1,129,136,0,0,6,12,80,22,88,14,104,37,128,136,40,128,148,0,15,6,40,1,0,0,16,10
	.byte 28,2,4,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,1,0,11,128,184,2,1,0,12,0,29
	.byte 16,12,0,13,255,253,0,0,0,7,129,140,0,27,1,129,136,0,0,4,0,24,12,16,13,20,12,32,0,4,0,12
	.byte 1,4,5,4,1,0,11,128,198,2,1,0,20,0,29,40,20,0,13,255,253,0,0,0,7,129,140,0,28,1,129,136
	.byte 0,0,33,0,96,20,32,14,112,20,32,26,72,0,0,20,32,26,72,0,0,6,8,6,16,12,88,62,128,1,46,104
	.byte 6,8,14,72,128,193,129,180,48,129,200,0,93,0,48,1,4,6,4,0,4,3,4,2,4,0,8,0,8,0,4,0
	.byte 4,0,4,0,12,0,4,0,8,5,0,1,4,5,4,1,4,0,0,3,4,0,0,3,8,0,12,5,4,0,4,0
	.byte 0,0,0,0,8,0,0,5,0,1,4,5,4,1,4,0,0,3,4,0,0,3,8,0,12,5,4,0,4,0,0,0
	.byte 0,0,8,0,0,5,0,1,0,0,0,2,4,0,0,1,4,2,4,1,40,0,4,6,4,5,4,0,0,3,8,5
	.byte 4,1,4,0,0,3,4,3,8,0,12,5,4,0,4,0,0,0,0,0,8,0,0,6,4,5,4,1,4,0,0,3
	.byte 4,3,8,0,12,5,4,0,4,0,0,0,0,0,8,0,0,5,0,0,0,3,4,2,12,0,4,0,4,0,8,0
	.byte 0,0,4,5,4,1,0,11,128,220,2,1,0,16,0,29,24,16,0,13,255,253,0,0,0,7,129,140,0,29,1,129
	.byte 136,0,0,6,0,80,20,32,24,72,37,92,40,108,0,16,0,40,1,4,5,4,1,4,0,0,3,4,0,0,2,8
	.byte 0,12,5,4,0,4,0,0,0,0,0,8,5,0,1,0,11,128,237,2,1,0,16,0,29,32,16,0,13,255,253,0
	.byte 0,0,7,129,140,0,30,1,129,136,0,0,24,0,88,20,32,18,56,4,8,20,32,14,16,6,16,12,96,10,24,8
	.byte 24,4,8,4,16,95,128,212,44,128,228,0,44,0,44,1,4,5,4,1,4,0,0,3,4,0,0,1,4,3,4,0
	.byte 4,0,4,0,8,0,0,0,4,5,0,0,0,2,4,1,4,6,4,1,4,0,0,2,4,7,8,0,0,1,4,0
	.byte 0,2,4,1,44,0,4,6,0,0,4,2,4,2,4,0,0,2,4,0,4,2,4,0,0,2,4,0,0,0,4,2
	.byte 4,0,0,1,4,11,129,0,2,1,0,20,0,29,40,20,0,13,255,253,0,0,0,7,129,140,0,31,1,129,136,0
	.byte 0,20,0,104,22,8,18,16,2,16,16,184,2,4,8,12,48,0,0,14,224,2,69,129,176,52,129,196,0,30,0,52
	.byte 1,0,0,0,10,4,0,0,6,4,0,0,3,4,0,0,0,4,1,4,0,0,1,4,2,128,148,0,4,5,0,0
	.byte 0,2,4,1,4,0,4,0,4,0,4,0,4,0,4,5,0,0,8,1,4,1,128,160,5,4,1,0,11,84,2,1
	.byte 0,16,0,29,24,16,0,13,255,253,0,0,0,7,129,140,0,32,1,129,136,0,0,8,0,88,16,32,20,32,12,16
	.byte 31,84,44,100,0,13,0,44,2,8,0,4,6,4,1,4,6,4,1,4,0,0,2,4,1,0,0,4,0,4,6,0
	.byte 11,129,0,2,1,0,20,0,29,40,20,0,13,255,253,0,0,0,7,129,140,0,33,1,129,136,0,0,11,0,104,16
	.byte 184,2,4,8,12,48,0,0,42,129,28,52,129,48,0,17,0,52,0,0,1,4,2,128,148,0,4,5,0,0,0,2
	.byte 4,1,4,0,4,0,4,0,4,0,4,0,4,5,0,0,8,8,40,11,129,22,2,1,0,20,0,29,40,20,0,13
	.byte 255,253,0,0,0,7,129,140,0,34,1,129,136,0,0,41,0,96,16,24,26,96,14,16,4,8,4,8,20,32,14,24
	.byte 0,0,12,72,14,112,4,8,28,192,1,10,48,14,24,4,8,20,32,20,32,26,72,2,0,128,183,129,200,48,129,228
	.byte 0,88,0,48,1,4,5,4,0,0,2,4,2,12,6,4,0,4,0,8,0,8,0,12,0,0,6,0,1,4,0,0
	.byte 0,0,5,4,1,0,1,4,0,0,2,4,1,4,5,4,1,4,0,0,3,4,0,0,2,4,0,4,0,4,5,0
	.byte 1,8,0,12,0,4,0,4,0,8,0,0,6,4,1,4,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8
	.byte 5,0,1,0,1,4,2,8,5,4,1,4,1,80,5,0,0,12,0,8,0,4,0,0,6,0,1,4,0,4,0,0
	.byte 5,4,1,0,1,4,1,4,6,4,1,4,0,0,2,4,1,4,5,4,1,4,0,0,3,4,0,0,3,8,0,12
	.byte 5,4,0,4,0,0,0,0,0,8,0,0,6,0,0,0,1,4,11,129,44,2,1,0,16,0,29,32,16,0,13,255
	.byte 253,0,0,0,7,129,140,0,35,1,129,136,0,0,13,0,96,16,184,2,4,8,12,48,0,0,14,24,44,128,244,48
	.byte 129,4,0,18,0,48,1,4,2,128,148,0,4,5,0,0,0,2,4,1,4,0,4,0,4,0,8,0,4,5,0,2
	.byte 8,0,0,0,0,5,4,1,0,11,129,63,2,1,15,12,0,29,48,12,0,13,255,253,0,0,0,7,129,140,0,36
	.byte 1,129,136,0,0,15,0,200,1,14,64,10,40,16,104,16,104,16,16,28,56,83,129,36,100,129,48,0,38,0,100,0
	.byte 0,2,16,0,16,10,20,0,0,3,4,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,0,0,3
	.byte 4,0,4,0,8,0,4,0,4,0,4,0,12,0,4,0,8,5,0,3,0,5,8,0,0,2,4,7,4,0,8,0
	.byte 4,0,0,0,4,5,4,1,0,15,129,78,1,0,3,2,48,1,92,131,52,131,52,2,1,15,16,0,29,72,16,0
	.byte 13,255,253,0,0,0,7,129,203,0,37,1,129,199,0,0,75,0,168,1,14,16,6,8,24,144,1,16,184,1,14,128
	.byte 1,4,8,18,16,14,152,1,28,88,10,8,14,32,24,48,32,24,44,56,30,40,36,80,0,0,30,40,36,80,0,0
	.byte 26,32,30,40,36,80,0,0,30,40,30,40,36,80,0,0,6,80,16,24,24,56,4,56,16,24,22,48,129,52,131,192
	.byte 84,131,220,0,128,150,0,84,1,4,6,4,1,0,0,0,2,4,1,4,11,68,8,92,2,60,0,4,5,0,0,0
	.byte 2,4,4,4,5,4,2,12,0,4,5,60,1,4,0,4,0,8,8,8,0,8,0,4,0,0,0,4,0,0,5,4
	.byte 0,0,5,4,7,16,1,4,0,4,0,8,5,4,6,4,4,4,12,8,1,4,5,4,6,8,5,4,0,4,5,4
	.byte 1,4,5,4,5,4,1,4,0,0,3,4,0,0,3,8,5,4,0,12,5,4,0,4,0,0,0,0,0,8,0,0
	.byte 5,0,1,4,5,4,5,4,1,4,0,0,3,4,0,0,3,8,5,4,0,12,5,4,0,4,0,0,0,0,0,8
	.byte 0,0,5,0,1,4,5,4,5,4,0,0,2,4,1,4,5,4,5,4,1,4,0,0,3,4,0,0,3,8,5,4
	.byte 0,12,5,4,0,4,0,0,0,0,0,8,0,0,5,0,1,4,5,4,6,4,1,4,0,0,2,4,1,4,5,4
	.byte 5,4,1,4,0,0,3,4,0,0,3,8,5,4,0,12,5,4,0,4,0,0,0,0,0,8,0,0,5,0,0,0
	.byte 2,36,1,4,3,4,5,8,1,4,0,4,0,8,6,8,0,0,0,0,5,4,0,0,0,12,0,0,0,8,0,4
	.byte 2,4,3,4,5,8,1,4,0,4,0,8,5,4,0,4,6,0,11,29,2,1,15,12,0,29,32,12,0,13,255,253
	.byte 0,0,0,7,129,203,0,38,1,129,199,0,0,4,0,88,24,56,19,72,44,96,0,7,0,44,1,4,0,4,0,8
	.byte 6,8,5,4,1,0,10,128,220,0,6,0,88,22,24,12,48,33,80,44,96,0,14,0,44,1,0,5,4,1,4,0
	.byte 0,4,4,0,0,0,4,1,4,0,4,0,8,0,0,5,4,1,0,10,29,0,4,0,80,22,56,19,68,40,80,0
	.byte 7,0,40,1,4,5,4,0,8,0,12,5,0,1,0,11,129,96,2,1,15,16,0,29,32,16,0,13,255,253,0,0
	.byte 0,7,130,7,0,49,1,130,3,0,0,21,0,152,1,22,8,16,16,16,8,2,16,16,48,14,48,16,80,2,16,16
	.byte 8,73,128,204,76,128,220,0,33,0,76,1,0,0,0,10,4,0,0,6,4,0,0,2,4,1,0,7,4,0,0,0
	.byte 4,1,4,6,20,0,0,2,4,7,24,2,0,0,4,0,4,0,4,0,4,0,12,0,4,0,8,6,0,0,0,0
	.byte 4,1,4,1,0,7,4,0,0,1,4,11,128,184,2,1,15,12,0,29,24,12,0,13,255,253,0,0,0,7,130,7
	.byte 0,50,1,130,3,0,0,5,0,136,1,12,32,19,88,68,100,0,7,0,68,1,4,0,8,0,4,5,0,0,4,1
	.byte 0,11,129,115,2,1,15,40,0,29,129,200,40,0,13,255,253,0,0,0,7,130,7,0,51,1,130,3,0,0,52,0
	.byte 240,1,6,8,20,32,24,136,4,24,40,24,136,4,34,56,24,136,4,14,24,20,112,2,8,20,32,24,136,4,24,40
	.byte 24,136,4,16,16,10,40,24,136,4,34,56,24,136,4,14,24,20,112,128,244,136,192,120,137,16,0,101,0,120,1,0
	.byte 0,0,2,4,5,0,0,4,0,4,0,4,5,4,2,0,255,255,255,255,254,12,2,4,10,128,244,2,0,5,12,0
	.byte 4,0,0,5,4,2,0,255,255,255,255,254,12,2,4,10,128,244,12,8,0,12,0,4,0,0,5,4,2,0,255,255
	.byte 255,255,254,12,2,4,10,128,244,2,0,0,4,0,8,5,0,5,16,0,12,0,4,0,12,0,4,0,0,0,0,0
	.byte 0,5,8,0,0,0,0,1,4,5,0,0,4,0,4,0,4,5,4,2,0,255,255,255,255,254,12,2,4,10,128,244
	.byte 2,0,5,12,0,4,0,0,5,4,2,0,255,255,255,255,254,12,2,4,10,128,244,3,0,0,4,0,4,5,0,0
	.byte 12,0,4,0,0,5,4,2,0,255,255,255,255,254,12,2,4,10,128,244,12,8,0,12,0,4,0,0,5,4,2,0
	.byte 255,255,255,255,254,12,2,4,10,128,244,2,0,0,4,0,8,5,0,5,16,0,12,0,4,0,12,0,4,0,0,0
	.byte 0,0,0,5,8,0,0,1,0,10,129,145,0,8,0,88,22,88,20,32,16,48,37,128,128,44,128,144,0,15,0,44
	.byte 1,0,0,16,10,28,1,4,5,4,1,4,0,0,3,4,0,0,3,4,0,12,0,8,5,0,1,0,10,129,145,0
	.byte 8,0,88,28,88,20,32,16,48,37,128,128,44,128,144,0,15,0,44,1,0,0,16,13,28,1,4,5,4,1,4,0
	.byte 0,3,4,0,0,3,4,0,12,0,8,5,0,1,0,10,128,184,0,7,0,80,14,144,1,10,40,31,128,132,40,128
	.byte 144,0,12,0,40,2,0,0,12,0,4,0,4,0,4,0,48,5,4,0,4,0,4,5,8,1,0,46,129,162,2,1
	.byte 2,96,129,76,128,140,128,168,128,172,0,8,128,156,0,4,128,164,0,30,0,104,26,96,14,16,0,0,12,16,14,24
	.byte 14,24,24,16,4,104,18,40,14,120,14,24,8,32,16,32,0,0,107,129,76,52,129,88,0,50,0,52,6,44,7,4
	.byte 2,0,0,4,0,4,0,0,5,0,0,0,6,8,1,4,6,8,1,4,6,8,7,4,5,4,0,0,0,4,0,8
	.byte 0,0,0,4,0,4,2,32,2,8,5,4,0,4,2,4,2,12,0,4,0,8,0,4,0,4,0,4,0,12,0,4
	.byte 0,8,5,0,1,4,6,8,2,8,0,4,2,4,3,12,0,0,0,0,0,0,0,4,5,0,0,0,2,8,0,128
	.byte 144,16,0,0,1,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,13,128,236,16
	.byte 80,32,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,14,11,5,6,12,13,3,4,9,6,128,160
	.byte 64,0,0,8,193,0,6,189,193,0,6,188,193,0,6,190,193,0,2,199,18,19,6,128,160,56,0,0,8,193,0,6
	.byte 189,193,0,6,188,193,0,6,190,193,0,2,199,20,21,24,128,144,20,0,0,4,193,0,2,47,193,0,2,46,193,0
	.byte 2,49,193,0,2,199,193,0,2,48,193,0,2,60,193,0,2,52,193,0,2,76,193,0,2,77,193,0,2,78,193,0
	.byte 2,79,193,0,2,80,193,0,2,81,193,0,2,82,193,0,2,83,193,0,2,84,193,0,2,85,193,0,2,86,193,0
	.byte 2,87,193,0,2,88,193,0,2,89,193,0,2,90,193,0,2,51,193,0,2,91,255,255,255,255,255,255,255,255,255,255
	.byte 7,128,160,24,0,0,8,193,0,1,188,193,0,1,187,193,0,2,200,193,0,2,199,193,0,1,192,193,0,1,191,193
	.byte 0,1,190,0,128,144,16,0,0,1,255,255,255,255,255,0,128,144,16,0,0,1,9,128,160,40,0,0,8,193,0,2
	.byte 204,193,0,2,201,193,0,2,200,193,0,2,199,46,43,44,47,48,255,255,255,255,255,7,128,160,24,0,0,8,193,0
	.byte 1,188,193,0,1,187,193,0,2,200,193,0,2,199,193,0,1,192,193,0,1,191,193,0,1,190,7,128,160,24,0,0
	.byte 8,193,0,1,188,193,0,1,187,193,0,2,200,193,0,2,199,193,0,1,192,193,0,1,191,193,0,1,190,7,128,144
	.byte 16,0,0,1,193,0,1,188,193,0,1,187,193,0,2,200,193,0,2,199,193,0,1,192,193,0,1,191,193,0,1,190
	.byte 10,128,160,32,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,55,56,57,58,60,59,4,128,152
	.byte 16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,168,24,0,0,8,193,0,6,189,193
	.byte 0,6,188,193,0,6,190,193,0,2,199,5,128,160,24,0,0,8,193,0,6,189,193,0,6,188,193,0,6,190,193,0
	.byte 2,199,69,115,103,101,110,0
.section ".rodata"
.subsection 1
runtime_version:
	.string ""
.section ".rodata"
.subsection 1
assembly_guid:
	.string "5A3AB2A7-D635-4A55-912C-8A79339B1953"
.section ".rodata"
.subsection 1
assembly_name:
	.string "CommunityToolkit.Mvvm"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 187,0
	.balign 8
	.xword mono_aot_CommunityToolkit_Mvvm_got
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

	.long 53,53,800,200,47,71,0,32
	.long 374417919,0,5795,128,8,8,7,9
	.long 8388607,0,4,25,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.byte 168,69,153,158,251,127,241,126,199,55,91,55,36,190,251,231
.section ".debug_info"
.subsection 0
.LTDIE_1:

	.byte 17
	.string "System_Object"

	.byte 16,7
	.string "System_Object"

.LDIFF_SYM3=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM3
.LTDIE_1_POINTER:

	.byte 13
.LDIFF_SYM4=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM4
.LTDIE_1_REFERENCE:

	.byte 14
.LDIFF_SYM5=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM5
.LTDIE_2:

	.byte 8
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommandOptions"

	.byte 4
.LDIFF_SYM6=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM6
	.byte 9
	.string "None"

	.byte 0,9
	.string "AllowConcurrentExecutions"

	.byte 1,9
	.string "FlowExceptionsToTaskScheduler"

	.byte 2,0,7
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommandOptions"

.LDIFF_SYM7=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM7
.LTDIE_2_POINTER:

	.byte 13
.LDIFF_SYM8=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM8
.LTDIE_2_REFERENCE:

	.byte 14
.LDIFF_SYM9=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM9
.LTDIE_4:

	.byte 8
	.string "_States"

	.byte 4
.LDIFF_SYM10=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM10
	.byte 9
	.string "NotCanceledState"

	.byte 0,9
	.string "NotifyingState"

	.byte 1,9
	.string "NotifyingCompleteState"

	.byte 2,0,7
	.string "_States"

.LDIFF_SYM11=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM11
.LTDIE_4_POINTER:

	.byte 13
.LDIFF_SYM12=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM12
.LTDIE_4_REFERENCE:

	.byte 14
.LDIFF_SYM13=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM13
.LTDIE_6:

	.byte 5
	.string "System_ValueType"

	.byte 16,16
.LDIFF_SYM14=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM14
	.byte 2,35,0,0,7
	.string "System_ValueType"

.LDIFF_SYM15=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM15
.LTDIE_6_POINTER:

	.byte 13
.LDIFF_SYM16=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM16
.LTDIE_6_REFERENCE:

	.byte 14
.LDIFF_SYM17=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM17
.LTDIE_5:

	.byte 5
	.string "System_Boolean"

	.byte 17,16
.LDIFF_SYM18=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM18
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM19=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM19
	.byte 2,35,16,0,7
	.string "System_Boolean"

.LDIFF_SYM20=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM20
.LTDIE_5_POINTER:

	.byte 13
.LDIFF_SYM21=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM21
.LTDIE_5_REFERENCE:

	.byte 14
.LDIFF_SYM22=.LTDIE_5 - .Ldebug_info_start
	.long .LDIFF_SYM22
.LTDIE_7:

	.byte 17
	.string "System_Threading_ITimer"

	.byte 16,7
	.string "System_Threading_ITimer"

.LDIFF_SYM23=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM23
.LTDIE_7_POINTER:

	.byte 13
.LDIFF_SYM24=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM24
.LTDIE_7_REFERENCE:

	.byte 14
.LDIFF_SYM25=.LTDIE_7 - .Ldebug_info_start
	.long .LDIFF_SYM25
.LTDIE_11:

	.byte 5
	.string "System_MarshalByRefObject"

	.byte 16,16
.LDIFF_SYM26=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM26
	.byte 2,35,0,0,7
	.string "System_MarshalByRefObject"

.LDIFF_SYM27=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM27
.LTDIE_11_POINTER:

	.byte 13
.LDIFF_SYM28=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM28
.LTDIE_11_REFERENCE:

	.byte 14
.LDIFF_SYM29=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM29
.LTDIE_15:

	.byte 5
	.string "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

	.byte 16,16
.LDIFF_SYM30=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM30
	.byte 2,35,0,0,7
	.string "System_Runtime_ConstrainedExecution_CriticalFinalizerObject"

.LDIFF_SYM31=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM31
.LTDIE_15_POINTER:

	.byte 13
.LDIFF_SYM32=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM32
.LTDIE_15_REFERENCE:

	.byte 14
.LDIFF_SYM33=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM33
.LTDIE_16:

	.byte 5
	.string "System_Int32"

	.byte 20,16
.LDIFF_SYM34=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM34
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM35=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM35
	.byte 2,35,16,0,7
	.string "System_Int32"

.LDIFF_SYM36=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM36
.LTDIE_16_POINTER:

	.byte 13
.LDIFF_SYM37=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM37
.LTDIE_16_REFERENCE:

	.byte 14
.LDIFF_SYM38=.LTDIE_16 - .Ldebug_info_start
	.long .LDIFF_SYM38
.LTDIE_14:

	.byte 5
	.string "System_Runtime_InteropServices_SafeHandle"

	.byte 32,16
.LDIFF_SYM39=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM39
	.byte 2,35,0,6
	.string "handle"

.LDIFF_SYM40=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM40
	.byte 2,35,16,6
	.string "_state"

.LDIFF_SYM41=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM41
	.byte 2,35,24,6
	.string "_ownsHandle"

.LDIFF_SYM42=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM42
	.byte 2,35,28,6
	.string "_fullyInitialized"

.LDIFF_SYM43=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM43
	.byte 2,35,29,0,7
	.string "System_Runtime_InteropServices_SafeHandle"

.LDIFF_SYM44=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM44
.LTDIE_14_POINTER:

	.byte 13
.LDIFF_SYM45=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM45
.LTDIE_14_REFERENCE:

	.byte 14
.LDIFF_SYM46=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM46
.LTDIE_13:

	.byte 5
	.string "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

	.byte 32,16
.LDIFF_SYM47=.LTDIE_14 - .Ldebug_info_start
	.long .LDIFF_SYM47
	.byte 2,35,0,0,7
	.string "Microsoft_Win32_SafeHandles_SafeHandleZeroOrMinusOneIsInvalid"

.LDIFF_SYM48=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM48
.LTDIE_13_POINTER:

	.byte 13
.LDIFF_SYM49=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM49
.LTDIE_13_REFERENCE:

	.byte 14
.LDIFF_SYM50=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM50
.LTDIE_12:

	.byte 5
	.string "Microsoft_Win32_SafeHandles_SafeWaitHandle"

	.byte 32,16
.LDIFF_SYM51=.LTDIE_13 - .Ldebug_info_start
	.long .LDIFF_SYM51
	.byte 2,35,0,0,7
	.string "Microsoft_Win32_SafeHandles_SafeWaitHandle"

.LDIFF_SYM52=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM52
.LTDIE_12_POINTER:

	.byte 13
.LDIFF_SYM53=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM53
.LTDIE_12_REFERENCE:

	.byte 14
.LDIFF_SYM54=.LTDIE_12 - .Ldebug_info_start
	.long .LDIFF_SYM54
.LTDIE_10:

	.byte 5
	.string "System_Threading_WaitHandle"

	.byte 24,16
.LDIFF_SYM55=.LTDIE_11 - .Ldebug_info_start
	.long .LDIFF_SYM55
	.byte 2,35,0,6
	.string "_waitHandle"

.LDIFF_SYM56=.LTDIE_12_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM56
	.byte 2,35,16,0,7
	.string "System_Threading_WaitHandle"

.LDIFF_SYM57=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM57
.LTDIE_10_POINTER:

	.byte 13
.LDIFF_SYM58=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM58
.LTDIE_10_REFERENCE:

	.byte 14
.LDIFF_SYM59=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM59
.LTDIE_9:

	.byte 5
	.string "System_Threading_EventWaitHandle"

	.byte 24,16
.LDIFF_SYM60=.LTDIE_10 - .Ldebug_info_start
	.long .LDIFF_SYM60
	.byte 2,35,0,0,7
	.string "System_Threading_EventWaitHandle"

.LDIFF_SYM61=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM61
.LTDIE_9_POINTER:

	.byte 13
.LDIFF_SYM62=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM62
.LTDIE_9_REFERENCE:

	.byte 14
.LDIFF_SYM63=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM63
.LTDIE_8:

	.byte 5
	.string "System_Threading_ManualResetEvent"

	.byte 24,16
.LDIFF_SYM64=.LTDIE_9 - .Ldebug_info_start
	.long .LDIFF_SYM64
	.byte 2,35,0,0,7
	.string "System_Threading_ManualResetEvent"

.LDIFF_SYM65=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM65
.LTDIE_8_POINTER:

	.byte 13
.LDIFF_SYM66=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM66
.LTDIE_8_REFERENCE:

	.byte 14
.LDIFF_SYM67=.LTDIE_8 - .Ldebug_info_start
	.long .LDIFF_SYM67
.LTDIE_19:

	.byte 5
	.string "System_Int64"

	.byte 24,16
.LDIFF_SYM68=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM68
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM69=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM69
	.byte 2,35,16,0,7
	.string "System_Int64"

.LDIFF_SYM70=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM70
.LTDIE_19_POINTER:

	.byte 13
.LDIFF_SYM71=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM71
.LTDIE_19_REFERENCE:

	.byte 14
.LDIFF_SYM72=.LTDIE_19 - .Ldebug_info_start
	.long .LDIFF_SYM72
.LTDIE_23:

	.byte 5
	.string "System_Reflection_MemberInfo"

	.byte 16,16
.LDIFF_SYM73=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM73
	.byte 2,35,0,0,7
	.string "System_Reflection_MemberInfo"

.LDIFF_SYM74=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM74
.LTDIE_23_POINTER:

	.byte 13
.LDIFF_SYM75=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM75
.LTDIE_23_REFERENCE:

	.byte 14
.LDIFF_SYM76=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM76
.LTDIE_22:

	.byte 5
	.string "System_Reflection_MethodBase"

	.byte 16,16
.LDIFF_SYM77=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM77
	.byte 2,35,0,0,7
	.string "System_Reflection_MethodBase"

.LDIFF_SYM78=.LTDIE_22 - .Ldebug_info_start
	.long .LDIFF_SYM78
.LTDIE_22_POINTER:

	.byte 13
.LDIFF_SYM79=.LTDIE_22 - .Ldebug_info_start
	.long .LDIFF_SYM79
.LTDIE_22_REFERENCE:

	.byte 14
.LDIFF_SYM80=.LTDIE_22 - .Ldebug_info_start
	.long .LDIFF_SYM80
.LTDIE_21:

	.byte 5
	.string "System_Reflection_MethodInfo"

	.byte 16,16
.LDIFF_SYM81=.LTDIE_22 - .Ldebug_info_start
	.long .LDIFF_SYM81
	.byte 2,35,0,0,7
	.string "System_Reflection_MethodInfo"

.LDIFF_SYM82=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM82
.LTDIE_21_POINTER:

	.byte 13
.LDIFF_SYM83=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM83
.LTDIE_21_REFERENCE:

	.byte 14
.LDIFF_SYM84=.LTDIE_21 - .Ldebug_info_start
	.long .LDIFF_SYM84
.LTDIE_27:

	.byte 5
	.string "System_Reflection_LoaderAllocatorScout"

	.byte 24,16
.LDIFF_SYM85=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM85
	.byte 2,35,0,6
	.string "m_native"

.LDIFF_SYM86=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM86
	.byte 2,35,16,0,7
	.string "System_Reflection_LoaderAllocatorScout"

.LDIFF_SYM87=.LTDIE_27 - .Ldebug_info_start
	.long .LDIFF_SYM87
.LTDIE_27_POINTER:

	.byte 13
.LDIFF_SYM88=.LTDIE_27 - .Ldebug_info_start
	.long .LDIFF_SYM88
.LTDIE_27_REFERENCE:

	.byte 14
.LDIFF_SYM89=.LTDIE_27 - .Ldebug_info_start
	.long .LDIFF_SYM89
.LTDIE_26:

	.byte 5
	.string "System_Reflection_LoaderAllocator"

	.byte 48,16
.LDIFF_SYM90=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM90
	.byte 2,35,0,6
	.string "m_scout"

.LDIFF_SYM91=.LTDIE_27_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM91
	.byte 2,35,16,6
	.string "m_slots"

.LDIFF_SYM92=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM92
	.byte 2,35,24,6
	.string "m_hashes"

.LDIFF_SYM93=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM93
	.byte 2,35,32,6
	.string "m_nslots"

.LDIFF_SYM94=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM94
	.byte 2,35,40,0,7
	.string "System_Reflection_LoaderAllocator"

.LDIFF_SYM95=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM95
.LTDIE_26_POINTER:

	.byte 13
.LDIFF_SYM96=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM96
.LTDIE_26_REFERENCE:

	.byte 14
.LDIFF_SYM97=.LTDIE_26 - .Ldebug_info_start
	.long .LDIFF_SYM97
.LTDIE_25:

	.byte 5
	.string "System_Type"

	.byte 32,16
.LDIFF_SYM98=.LTDIE_23 - .Ldebug_info_start
	.long .LDIFF_SYM98
	.byte 2,35,0,6
	.string "_impl"

.LDIFF_SYM99=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM99
	.byte 2,35,16,6
	.string "m_keepalive"

.LDIFF_SYM100=.LTDIE_26_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM100
	.byte 2,35,24,0,7
	.string "System_Type"

.LDIFF_SYM101=.LTDIE_25 - .Ldebug_info_start
	.long .LDIFF_SYM101
.LTDIE_25_POINTER:

	.byte 13
.LDIFF_SYM102=.LTDIE_25 - .Ldebug_info_start
	.long .LDIFF_SYM102
.LTDIE_25_REFERENCE:

	.byte 14
.LDIFF_SYM103=.LTDIE_25 - .Ldebug_info_start
	.long .LDIFF_SYM103
.LTDIE_24:

	.byte 5
	.string "System_DelegateData"

	.byte 40,16
.LDIFF_SYM104=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM104
	.byte 2,35,0,6
	.string "target_type"

.LDIFF_SYM105=.LTDIE_25_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM105
	.byte 2,35,16,6
	.string "method_name"

.LDIFF_SYM106=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM106
	.byte 2,35,24,6
	.string "curried_first_arg"

.LDIFF_SYM107=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM107
	.byte 2,35,32,0,7
	.string "System_DelegateData"

.LDIFF_SYM108=.LTDIE_24 - .Ldebug_info_start
	.long .LDIFF_SYM108
.LTDIE_24_POINTER:

	.byte 13
.LDIFF_SYM109=.LTDIE_24 - .Ldebug_info_start
	.long .LDIFF_SYM109
.LTDIE_24_REFERENCE:

	.byte 14
.LDIFF_SYM110=.LTDIE_24 - .Ldebug_info_start
	.long .LDIFF_SYM110
.LTDIE_20:

	.byte 5
	.string "System_Delegate"

	.byte 120,16
.LDIFF_SYM111=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM111
	.byte 2,35,0,6
	.string "method_ptr"

.LDIFF_SYM112=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM112
	.byte 2,35,16,6
	.string "invoke_impl"

.LDIFF_SYM113=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM113
	.byte 2,35,24,6
	.string "_target"

.LDIFF_SYM114=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM114
	.byte 2,35,32,6
	.string "method"

.LDIFF_SYM115=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM115
	.byte 2,35,40,6
	.string "delegate_trampoline"

.LDIFF_SYM116=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM116
	.byte 2,35,48,6
	.string "extra_arg"

.LDIFF_SYM117=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM117
	.byte 2,35,56,6
	.string "method_code"

.LDIFF_SYM118=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM118
	.byte 2,35,64,6
	.string "interp_method"

.LDIFF_SYM119=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM119
	.byte 2,35,72,6
	.string "interp_invoke_impl"

.LDIFF_SYM120=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM120
	.byte 2,35,80,6
	.string "method_info"

.LDIFF_SYM121=.LTDIE_21_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM121
	.byte 2,35,88,6
	.string "original_method_info"

.LDIFF_SYM122=.LTDIE_21_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM122
	.byte 2,35,96,6
	.string "data"

.LDIFF_SYM123=.LTDIE_24_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM123
	.byte 2,35,104,6
	.string "method_is_virtual"

.LDIFF_SYM124=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM124
	.byte 2,35,112,6
	.string "bound"

.LDIFF_SYM125=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM125
	.byte 2,35,113,0,7
	.string "System_Delegate"

.LDIFF_SYM126=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM126
.LTDIE_20_POINTER:

	.byte 13
.LDIFF_SYM127=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM127
.LTDIE_20_REFERENCE:

	.byte 14
.LDIFF_SYM128=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM128
.LTDIE_29:

	.byte 17
	.string "System_Threading_IAsyncLocalValueMap"

	.byte 16,7
	.string "System_Threading_IAsyncLocalValueMap"

.LDIFF_SYM129=.LTDIE_29 - .Ldebug_info_start
	.long .LDIFF_SYM129
.LTDIE_29_POINTER:

	.byte 13
.LDIFF_SYM130=.LTDIE_29 - .Ldebug_info_start
	.long .LDIFF_SYM130
.LTDIE_29_REFERENCE:

	.byte 14
.LDIFF_SYM131=.LTDIE_29 - .Ldebug_info_start
	.long .LDIFF_SYM131
.LTDIE_28:

	.byte 5
	.string "System_Threading_ExecutionContext"

	.byte 40,16
.LDIFF_SYM132=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM132
	.byte 2,35,0,6
	.string "m_localValues"

.LDIFF_SYM133=.LTDIE_29_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM133
	.byte 2,35,16,6
	.string "m_localChangeNotifications"

.LDIFF_SYM134=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM134
	.byte 2,35,24,6
	.string "m_isFlowSuppressed"

.LDIFF_SYM135=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM135
	.byte 2,35,32,6
	.string "m_isDefault"

.LDIFF_SYM136=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM136
	.byte 2,35,33,0,7
	.string "System_Threading_ExecutionContext"

.LDIFF_SYM137=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM137
.LTDIE_28_POINTER:

	.byte 13
.LDIFF_SYM138=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM138
.LTDIE_28_REFERENCE:

	.byte 14
.LDIFF_SYM139=.LTDIE_28 - .Ldebug_info_start
	.long .LDIFF_SYM139
.LTDIE_30:

	.byte 5
	.string "System_Threading_SynchronizationContext"

	.byte 17,16
.LDIFF_SYM140=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM140
	.byte 2,35,0,6
	.string "_requireWaitNotification"

.LDIFF_SYM141=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM141
	.byte 2,35,16,0,7
	.string "System_Threading_SynchronizationContext"

.LDIFF_SYM142=.LTDIE_30 - .Ldebug_info_start
	.long .LDIFF_SYM142
.LTDIE_30_POINTER:

	.byte 13
.LDIFF_SYM143=.LTDIE_30 - .Ldebug_info_start
	.long .LDIFF_SYM143
.LTDIE_30_REFERENCE:

	.byte 14
.LDIFF_SYM144=.LTDIE_30 - .Ldebug_info_start
	.long .LDIFF_SYM144
.LTDIE_18:

	.byte 5
	.string "_CallbackNode"

	.byte 80,16
.LDIFF_SYM145=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM145
	.byte 2,35,0,6
	.string "Registrations"

.LDIFF_SYM146=.LTDIE_17_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM146
	.byte 2,35,16,6
	.string "Prev"

.LDIFF_SYM147=.LTDIE_18_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM147
	.byte 2,35,24,6
	.string "Next"

.LDIFF_SYM148=.LTDIE_18_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM148
	.byte 2,35,32,6
	.string "Id"

.LDIFF_SYM149=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM149
	.byte 2,35,72,6
	.string "Callback"

.LDIFF_SYM150=.LTDIE_20_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM150
	.byte 2,35,40,6
	.string "CallbackState"

.LDIFF_SYM151=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM151
	.byte 2,35,48,6
	.string "ExecutionContext"

.LDIFF_SYM152=.LTDIE_28_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM152
	.byte 2,35,56,6
	.string "SynchronizationContext"

.LDIFF_SYM153=.LTDIE_30_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM153
	.byte 2,35,64,0,7
	.string "_CallbackNode"

.LDIFF_SYM154=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM154
.LTDIE_18_POINTER:

	.byte 13
.LDIFF_SYM155=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM155
.LTDIE_18_REFERENCE:

	.byte 14
.LDIFF_SYM156=.LTDIE_18 - .Ldebug_info_start
	.long .LDIFF_SYM156
.LTDIE_17:

	.byte 5
	.string "_Registrations"

	.byte 64,16
.LDIFF_SYM157=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM157
	.byte 2,35,0,6
	.string "Source"

.LDIFF_SYM158=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM158
	.byte 2,35,16,6
	.string "Callbacks"

.LDIFF_SYM159=.LTDIE_18_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM159
	.byte 2,35,24,6
	.string "FreeNodeList"

.LDIFF_SYM160=.LTDIE_18_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM160
	.byte 2,35,32,6
	.string "NextAvailableId"

.LDIFF_SYM161=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM161
	.byte 2,35,40,6
	.string "ExecutingCallbackId"

.LDIFF_SYM162=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM162
	.byte 2,35,48,6
	.string "ThreadIDExecutingCallbacks"

.LDIFF_SYM163=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM163
	.byte 2,35,56,6
	.string "_locked"

.LDIFF_SYM164=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM164
	.byte 2,35,60,0,7
	.string "_Registrations"

.LDIFF_SYM165=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM165
.LTDIE_17_POINTER:

	.byte 13
.LDIFF_SYM166=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM166
.LTDIE_17_REFERENCE:

	.byte 14
.LDIFF_SYM167=.LTDIE_17 - .Ldebug_info_start
	.long .LDIFF_SYM167
.LTDIE_3:

	.byte 5
	.string "System_Threading_CancellationTokenSource"

	.byte 48,16
.LDIFF_SYM168=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM168
	.byte 2,35,0,6
	.string "_state"

.LDIFF_SYM169=.LTDIE_4 - .Ldebug_info_start
	.long .LDIFF_SYM169
	.byte 2,35,40,6
	.string "_disposed"

.LDIFF_SYM170=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM170
	.byte 2,35,44,6
	.string "_timer"

.LDIFF_SYM171=.LTDIE_7_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM171
	.byte 2,35,16,6
	.string "_kernelEvent"

.LDIFF_SYM172=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM172
	.byte 2,35,24,6
	.string "_registrations"

.LDIFF_SYM173=.LTDIE_17_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM173
	.byte 2,35,32,0,7
	.string "System_Threading_CancellationTokenSource"

.LDIFF_SYM174=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM174
.LTDIE_3_POINTER:

	.byte 13
.LDIFF_SYM175=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM175
.LTDIE_3_REFERENCE:

	.byte 14
.LDIFF_SYM176=.LTDIE_3 - .Ldebug_info_start
	.long .LDIFF_SYM176
.LTDIE_32:

	.byte 5
	.string "System_MulticastDelegate"

	.byte 128,1,16
.LDIFF_SYM177=.LTDIE_20 - .Ldebug_info_start
	.long .LDIFF_SYM177
	.byte 2,35,0,6
	.string "delegates"

.LDIFF_SYM178=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM178
	.byte 2,35,120,0,7
	.string "System_MulticastDelegate"

.LDIFF_SYM179=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM179
.LTDIE_32_POINTER:

	.byte 13
.LDIFF_SYM180=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM180
.LTDIE_32_REFERENCE:

	.byte 14
.LDIFF_SYM181=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM181
.LTDIE_31:

	.byte 5
	.string "System_ComponentModel_PropertyChangedEventHandler"

	.byte 128,1,16
.LDIFF_SYM182=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM182
	.byte 2,35,0,0,7
	.string "System_ComponentModel_PropertyChangedEventHandler"

.LDIFF_SYM183=.LTDIE_31 - .Ldebug_info_start
	.long .LDIFF_SYM183
.LTDIE_31_POINTER:

	.byte 13
.LDIFF_SYM184=.LTDIE_31 - .Ldebug_info_start
	.long .LDIFF_SYM184
.LTDIE_31_REFERENCE:

	.byte 14
.LDIFF_SYM185=.LTDIE_31 - .Ldebug_info_start
	.long .LDIFF_SYM185
.LTDIE_33:

	.byte 5
	.string "System_EventHandler"

	.byte 128,1,16
.LDIFF_SYM186=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM186
	.byte 2,35,0,0,7
	.string "System_EventHandler"

.LDIFF_SYM187=.LTDIE_33 - .Ldebug_info_start
	.long .LDIFF_SYM187
.LTDIE_33_POINTER:

	.byte 13
.LDIFF_SYM188=.LTDIE_33 - .Ldebug_info_start
	.long .LDIFF_SYM188
.LTDIE_33_REFERENCE:

	.byte 14
.LDIFF_SYM189=.LTDIE_33 - .Ldebug_info_start
	.long .LDIFF_SYM189
.LTDIE_35:

	.byte 5
	.string "System_Threading_Tasks_TaskScheduler"

	.byte 20,16
.LDIFF_SYM190=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM190
	.byte 2,35,0,6
	.string "m_taskSchedulerId"

.LDIFF_SYM191=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM191
	.byte 2,35,16,0,7
	.string "System_Threading_Tasks_TaskScheduler"

.LDIFF_SYM192=.LTDIE_35 - .Ldebug_info_start
	.long .LDIFF_SYM192
.LTDIE_35_POINTER:

	.byte 13
.LDIFF_SYM193=.LTDIE_35 - .Ldebug_info_start
	.long .LDIFF_SYM193
.LTDIE_35_REFERENCE:

	.byte 14
.LDIFF_SYM194=.LTDIE_35 - .Ldebug_info_start
	.long .LDIFF_SYM194
.LTDIE_37:

	.byte 5
	.string "System_Threading_ManualResetEventSlim"

	.byte 40,16
.LDIFF_SYM195=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM195
	.byte 2,35,0,6
	.string "m_lock"

.LDIFF_SYM196=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM196
	.byte 2,35,16,6
	.string "m_eventObj"

.LDIFF_SYM197=.LTDIE_8_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM197
	.byte 2,35,24,6
	.string "m_combinedState"

.LDIFF_SYM198=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM198
	.byte 2,35,32,0,7
	.string "System_Threading_ManualResetEventSlim"

.LDIFF_SYM199=.LTDIE_37 - .Ldebug_info_start
	.long .LDIFF_SYM199
.LTDIE_37_POINTER:

	.byte 13
.LDIFF_SYM200=.LTDIE_37 - .Ldebug_info_start
	.long .LDIFF_SYM200
.LTDIE_37_REFERENCE:

	.byte 14
.LDIFF_SYM201=.LTDIE_37 - .Ldebug_info_start
	.long .LDIFF_SYM201
.LTDIE_41:

	.byte 17
	.string "System_Collections_IDictionary"

	.byte 16,7
	.string "System_Collections_IDictionary"

.LDIFF_SYM202=.LTDIE_41 - .Ldebug_info_start
	.long .LDIFF_SYM202
.LTDIE_41_POINTER:

	.byte 13
.LDIFF_SYM203=.LTDIE_41 - .Ldebug_info_start
	.long .LDIFF_SYM203
.LTDIE_41_REFERENCE:

	.byte 14
.LDIFF_SYM204=.LTDIE_41 - .Ldebug_info_start
	.long .LDIFF_SYM204
.LTDIE_40:

	.byte 5
	.string "System_Exception"

	.byte 144,1,16
.LDIFF_SYM205=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM205
	.byte 2,35,0,6
	.string "_unused1"

.LDIFF_SYM206=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM206
	.byte 2,35,16,6
	.string "_message"

.LDIFF_SYM207=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM207
	.byte 2,35,24,6
	.string "_data"

.LDIFF_SYM208=.LTDIE_41_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM208
	.byte 2,35,32,6
	.string "_innerException"

.LDIFF_SYM209=.LTDIE_40_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM209
	.byte 2,35,40,6
	.string "_helpURL"

.LDIFF_SYM210=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM210
	.byte 2,35,48,6
	.string "_traceIPs"

.LDIFF_SYM211=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM211
	.byte 2,35,56,6
	.string "_stackTraceString"

.LDIFF_SYM212=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM212
	.byte 2,35,64,6
	.string "_remoteStackTraceString"

.LDIFF_SYM213=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM213
	.byte 2,35,72,6
	.string "_unused4"

.LDIFF_SYM214=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM214
	.byte 2,35,80,6
	.string "_dynamicMethods"

.LDIFF_SYM215=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM215
	.byte 2,35,88,6
	.string "_HResult"

.LDIFF_SYM216=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM216
	.byte 2,35,96,6
	.string "_source"

.LDIFF_SYM217=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM217
	.byte 2,35,104,6
	.string "_unused6"

.LDIFF_SYM218=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM218
	.byte 2,35,112,6
	.string "foreignExceptionsFrames"

.LDIFF_SYM219=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM219
	.byte 2,35,120,6
	.string "native_trace_ips"

.LDIFF_SYM220=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM220
	.byte 3,35,128,1,6
	.string "caught_in_unmanaged"

.LDIFF_SYM221=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM221
	.byte 3,35,136,1,0,7
	.string "System_Exception"

.LDIFF_SYM222=.LTDIE_40 - .Ldebug_info_start
	.long .LDIFF_SYM222
.LTDIE_40_POINTER:

	.byte 13
.LDIFF_SYM223=.LTDIE_40 - .Ldebug_info_start
	.long .LDIFF_SYM223
.LTDIE_40_REFERENCE:

	.byte 14
.LDIFF_SYM224=.LTDIE_40 - .Ldebug_info_start
	.long .LDIFF_SYM224
.LTDIE_39:

	.byte 5
	.string "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

	.byte 32,16
.LDIFF_SYM225=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM225
	.byte 2,35,0,6
	.string "_exception"

.LDIFF_SYM226=.LTDIE_40_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM226
	.byte 2,35,16,6
	.string "_dispatchState"

.LDIFF_SYM227=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM227
	.byte 2,35,24,0,7
	.string "System_Runtime_ExceptionServices_ExceptionDispatchInfo"

.LDIFF_SYM228=.LTDIE_39 - .Ldebug_info_start
	.long .LDIFF_SYM228
.LTDIE_39_POINTER:

	.byte 13
.LDIFF_SYM229=.LTDIE_39 - .Ldebug_info_start
	.long .LDIFF_SYM229
.LTDIE_39_REFERENCE:

	.byte 14
.LDIFF_SYM230=.LTDIE_39 - .Ldebug_info_start
	.long .LDIFF_SYM230
.LTDIE_38:

	.byte 5
	.string "System_Threading_Tasks_TaskExceptionHolder"

	.byte 48,16
.LDIFF_SYM231=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM231
	.byte 2,35,0,6
	.string "m_task"

.LDIFF_SYM232=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM232
	.byte 2,35,16,6
	.string "m_faultExceptions"

.LDIFF_SYM233=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM233
	.byte 2,35,24,6
	.string "m_cancellationException"

.LDIFF_SYM234=.LTDIE_39_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM234
	.byte 2,35,32,6
	.string "m_isHandled"

.LDIFF_SYM235=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM235
	.byte 2,35,40,0,7
	.string "System_Threading_Tasks_TaskExceptionHolder"

.LDIFF_SYM236=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM236
.LTDIE_38_POINTER:

	.byte 13
.LDIFF_SYM237=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM237
.LTDIE_38_REFERENCE:

	.byte 14
.LDIFF_SYM238=.LTDIE_38 - .Ldebug_info_start
	.long .LDIFF_SYM238
.LTDIE_36:

	.byte 5
	.string "_ContingentProperties"

	.byte 80,16
.LDIFF_SYM239=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM239
	.byte 2,35,0,6
	.string "m_capturedContext"

.LDIFF_SYM240=.LTDIE_28_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM240
	.byte 2,35,16,6
	.string "m_completionEvent"

.LDIFF_SYM241=.LTDIE_37_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM241
	.byte 2,35,24,6
	.string "m_exceptionsHolder"

.LDIFF_SYM242=.LTDIE_38_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM242
	.byte 2,35,32,6
	.string "m_cancellationToken"

.LDIFF_SYM243=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM243
	.byte 2,35,40,6
	.string "m_cancellationRegistration"

.LDIFF_SYM244=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM244
	.byte 2,35,48,6
	.string "m_internalCancellationRequested"

.LDIFF_SYM245=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM245
	.byte 2,35,72,6
	.string "m_completionCountdown"

.LDIFF_SYM246=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM246
	.byte 2,35,76,6
	.string "m_exceptionalChildren"

.LDIFF_SYM247=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM247
	.byte 2,35,56,6
	.string "m_parent"

.LDIFF_SYM248=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM248
	.byte 2,35,64,0,7
	.string "_ContingentProperties"

.LDIFF_SYM249=.LTDIE_36 - .Ldebug_info_start
	.long .LDIFF_SYM249
.LTDIE_36_POINTER:

	.byte 13
.LDIFF_SYM250=.LTDIE_36 - .Ldebug_info_start
	.long .LDIFF_SYM250
.LTDIE_36_REFERENCE:

	.byte 14
.LDIFF_SYM251=.LTDIE_36 - .Ldebug_info_start
	.long .LDIFF_SYM251
.LTDIE_34:

	.byte 5
	.string "System_Threading_Tasks_Task"

	.byte 64,16
.LDIFF_SYM252=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM252
	.byte 2,35,0,6
	.string "m_taskId"

.LDIFF_SYM253=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM253
	.byte 2,35,56,6
	.string "m_action"

.LDIFF_SYM254=.LTDIE_20_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM254
	.byte 2,35,16,6
	.string "m_stateObject"

.LDIFF_SYM255=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM255
	.byte 2,35,24,6
	.string "m_taskScheduler"

.LDIFF_SYM256=.LTDIE_35_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM256
	.byte 2,35,32,6
	.string "m_stateFlags"

.LDIFF_SYM257=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM257
	.byte 2,35,60,6
	.string "m_continuationObject"

.LDIFF_SYM258=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM258
	.byte 2,35,40,6
	.string "m_contingentProperties"

.LDIFF_SYM259=.LTDIE_36_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM259
	.byte 2,35,48,0,7
	.string "System_Threading_Tasks_Task"

.LDIFF_SYM260=.LTDIE_34 - .Ldebug_info_start
	.long .LDIFF_SYM260
.LTDIE_34_POINTER:

	.byte 13
.LDIFF_SYM261=.LTDIE_34 - .Ldebug_info_start
	.long .LDIFF_SYM261
.LTDIE_34_REFERENCE:

	.byte 14
.LDIFF_SYM262=.LTDIE_34 - .Ldebug_info_start
	.long .LDIFF_SYM262
.LTDIE_0:

	.byte 5
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand"

	.byte 80,16
.LDIFF_SYM263=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM263
	.byte 2,35,0,6
	.string "execute"

.LDIFF_SYM264=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM264
	.byte 2,35,16,6
	.string "cancelableExecute"

.LDIFF_SYM265=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM265
	.byte 2,35,24,6
	.string "canExecute"

.LDIFF_SYM266=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM266
	.byte 2,35,32,6
	.string "options"

.LDIFF_SYM267=.LTDIE_2 - .Ldebug_info_start
	.long .LDIFF_SYM267
	.byte 2,35,72,6
	.string "cancellationTokenSource"

.LDIFF_SYM268=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM268
	.byte 2,35,40,6
	.string "PropertyChanged"

.LDIFF_SYM269=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM269
	.byte 2,35,48,6
	.string "CanExecuteChanged"

.LDIFF_SYM270=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM270
	.byte 2,35,56,6
	.string "executionTask"

.LDIFF_SYM271=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM271
	.byte 2,35,64,0,7
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand"

.LDIFF_SYM272=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM272
.LTDIE_0_POINTER:

	.byte 13
.LDIFF_SYM273=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM273
.LTDIE_0_REFERENCE:

	.byte 14
.LDIFF_SYM274=.LTDIE_0 - .Ldebug_info_start
	.long .LDIFF_SYM274
	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:add_CanExecuteChanged"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_add_CanExecuteChanged_System_EventHandler"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:add_CanExecuteChanged"
	.xword .Lm_4
	.xword .Lme_4

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM275=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM275
	.byte 1,105,3
	.string "param0"

.LDIFF_SYM276=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM276
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM277=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM277
	.byte 1,104,11
	.string "V_1"

.LDIFF_SYM278=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM278
	.byte 1,103,11
	.string "V_2"

.LDIFF_SYM279=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM279
	.byte 1,101,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM280=.Lfde0_end - .Lfde0_start
	.long .LDIFF_SYM280
.Lfde0_start:

	.long 0
	.balign 8
	.xword .Lm_4

.LDIFF_SYM281=.Lme_4 - .Lm_4
	.long .LDIFF_SYM281
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.balign 8
.Lfde0_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:.ctor"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand__ctor_System_Func_1_System_Threading_Tasks_Task"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:.ctor"
	.xword .Lm_6
	.xword .Lme_6

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM282=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM282
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM283=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM283
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM284=.Lfde1_end - .Lfde1_start
	.long .LDIFF_SYM284
.Lfde1_start:

	.long 0
	.balign 8
	.xword .Lm_6

.LDIFF_SYM285=.Lme_6 - .Lm_6
	.long .LDIFF_SYM285
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde1_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:set_ExecutionTask"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_set_ExecutionTask_System_Threading_Tasks_Task"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:set_ExecutionTask"
	.xword .Lm_9
	.xword .Lme_9

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM286=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM286
	.byte 1,105,3
	.string "param0"

.LDIFF_SYM287=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM287
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM288=.Lfde2_end - .Lfde2_start
	.long .LDIFF_SYM288
.Lfde2_start:

	.long 0
	.balign 8
	.xword .Lm_9

.LDIFF_SYM289=.Lme_9 - .Lm_9
	.long .LDIFF_SYM289
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,151,6,152,5,68,153,4,154,3
	.balign 8
.Lfde2_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:CanExecute"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_CanExecute_object"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:CanExecute"
	.xword .Lm_b
	.xword .Lme_b

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM290=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM290
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM291=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM291
	.byte 0,11
	.string "V_0"

.LDIFF_SYM292=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM292
	.byte 1,105,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM293=.Lfde3_end - .Lfde3_start
	.long .LDIFF_SYM293
.Lfde3_start:

	.long 0
	.balign 8
	.xword .Lm_b

.LDIFF_SYM294=.Lme_b - .Lm_b
	.long .LDIFF_SYM294
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6
	.balign 8
.Lfde3_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:Execute"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_Execute_object"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:Execute"
	.xword .Lm_c
	.xword .Lme_c

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM295=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM295
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM296=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM296
	.byte 2,141,32,11
	.string "V_0"

.LDIFF_SYM297=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM297
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM298=.Lfde4_end - .Lfde4_start
	.long .LDIFF_SYM298
.Lfde4_start:

	.long 0
	.balign 8
	.xword .Lm_c

.LDIFF_SYM299=.Lme_c - .Lm_c
	.long .LDIFF_SYM299
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.balign 8
.Lfde4_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:ExecuteAsync"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_ExecuteAsync_object"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:ExecuteAsync"
	.xword .Lm_d
	.xword .Lme_d

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM300=.LTDIE_0_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM300
	.byte 1,106,3
	.string "param0"

.LDIFF_SYM301=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM301
	.byte 0,11
	.string "V_0"

.LDIFF_SYM302=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM302
	.byte 1,104,11
	.string "V_1"

.LDIFF_SYM303=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM303
	.byte 1,105,11
	.string "V_2"

.LDIFF_SYM304=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM304
	.byte 1,105,11
	.string "V_3"

.LDIFF_SYM305=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM305
	.byte 1,105,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM306=.Lfde5_end - .Lfde5_start
	.long .LDIFF_SYM306
.Lfde5_start:

	.long 0
	.balign 8
	.xword .Lm_d

.LDIFF_SYM307=.Lme_d - .Lm_d
	.long .LDIFF_SYM307
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,151,10,152,9,68,153,8,154,7
	.balign 8
.Lfde5_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:AwaitAndThrowIfFailed"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_AwaitAndThrowIfFailed_System_Threading_Tasks_Task"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:AwaitAndThrowIfFailed"
	.xword .Lm_e
	.xword .Lme_e

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM308=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM308
	.byte 2,141,16,11
	.string "V_0"

.LDIFF_SYM309=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM309
	.byte 2,141,40,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM310=.Lfde6_end - .Lfde6_start
	.long .LDIFF_SYM310
.Lfde6_start:

	.long 0
	.balign 8
	.xword .Lm_e

.LDIFF_SYM311=.Lme_e - .Lm_e
	.long .LDIFF_SYM311
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.balign 8
.Lfde6_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:.cctor"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand__cctor"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand:.cctor"
	.xword .Lm_f
	.xword .Lme_f

	.byte 2,118,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM312=.Lfde7_end - .Lfde7_start
	.long .LDIFF_SYM312
.Lfde7_start:

	.long 0
	.balign 8
	.xword .Lm_f

.LDIFF_SYM313=.Lme_f - .Lm_f
	.long .LDIFF_SYM313
	.long 0
	.byte 12,31,0,68,14,112,157,14,158,13,68,13,29
	.balign 8
.Lfde7_end:

.section ".debug_info"
.subsection 0
.LTDIE_42:

	.byte 5
	.string "_<AwaitAndThrowIfFailed>d__40"

	.byte 56,16
.LDIFF_SYM314=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM314
	.byte 2,35,0,6
	.string "<>1__state"

.LDIFF_SYM315=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM315
	.byte 2,35,0,6
	.string "<>t__builder"

.LDIFF_SYM316=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM316
	.byte 2,35,8,6
	.string "executionTask"

.LDIFF_SYM317=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM317
	.byte 2,35,24,6
	.string "<>u__1"

.LDIFF_SYM318=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM318
	.byte 2,35,32,0,7
	.string "_<AwaitAndThrowIfFailed>d__40"

.LDIFF_SYM319=.LTDIE_42 - .Ldebug_info_start
	.long .LDIFF_SYM319
.LTDIE_42_POINTER:

	.byte 13
.LDIFF_SYM320=.LTDIE_42 - .Ldebug_info_start
	.long .LDIFF_SYM320
.LTDIE_42_REFERENCE:

	.byte 14
.LDIFF_SYM321=.LTDIE_42 - .Ldebug_info_start
	.long .LDIFF_SYM321
	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand/<AwaitAndThrowIfFailed>d__40:MoveNext"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_MoveNext"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand/<AwaitAndThrowIfFailed>d__40:MoveNext"
	.xword .Lm_13
	.xword .Lme_13

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM322=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM322
	.byte 2,141,24,11
	.string "V_0"

.LDIFF_SYM323=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM323
	.byte 1,106,11
	.string "V_1"

.LDIFF_SYM324=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM324
	.byte 2,141,48,11
	.string "V_2"

.LDIFF_SYM325=.LTDIE_40_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM325
	.byte 2,141,56,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM326=.Lfde8_end - .Lfde8_start
	.long .LDIFF_SYM326
.Lfde8_start:

	.long 0
	.balign 8
	.xword .Lm_13

.LDIFF_SYM327=.Lme_13 - .Lm_13
	.long .LDIFF_SYM327
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29,68,154,14
	.balign 8
.Lfde8_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:add_PropertyChanged"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:add_PropertyChanged"
	.xword .Lm_15
	.xword .Lme_15

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM328=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM328
	.byte 2,141,56,3
	.string "param0"

.LDIFF_SYM329=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM329
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM330=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM330
	.byte 1,105,11
	.string "V_1"

.LDIFF_SYM331=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM331
	.byte 1,104,11
	.string "V_2"

.LDIFF_SYM332=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM332
	.byte 1,102,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM333=.Lfde9_end - .Lfde9_start
	.long .LDIFF_SYM333
.Lfde9_start:

	.long 0
	.balign 8
	.xword .Lm_15

.LDIFF_SYM334=.Lme_15 - .Lm_15
	.long .LDIFF_SYM334
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2
	.balign 8
.Lfde9_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:remove_PropertyChanged"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:remove_PropertyChanged"
	.xword .Lm_16
	.xword .Lme_16

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM335=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM335
	.byte 2,141,56,3
	.string "param0"

.LDIFF_SYM336=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM336
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM337=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM337
	.byte 1,105,11
	.string "V_1"

.LDIFF_SYM338=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM338
	.byte 1,104,11
	.string "V_2"

.LDIFF_SYM339=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM339
	.byte 1,102,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM340=.Lfde10_end - .Lfde10_start
	.long .LDIFF_SYM340
.Lfde10_start:

	.long 0
	.balign 8
	.xword .Lm_16

.LDIFF_SYM341=.Lme_16 - .Lm_16
	.long .LDIFF_SYM341
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2
	.balign 8
.Lfde10_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:add_CanExecuteChanged"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_add_CanExecuteChanged_System_EventHandler"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:add_CanExecuteChanged"
	.xword .Lm_17
	.xword .Lme_17

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM342=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM342
	.byte 2,141,56,3
	.string "param0"

.LDIFF_SYM343=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM343
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM344=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM344
	.byte 1,105,11
	.string "V_1"

.LDIFF_SYM345=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM345
	.byte 1,104,11
	.string "V_2"

.LDIFF_SYM346=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM346
	.byte 1,102,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM347=.Lfde11_end - .Lfde11_start
	.long .LDIFF_SYM347
.Lfde11_start:

	.long 0
	.balign 8
	.xword .Lm_17

.LDIFF_SYM348=.Lme_17 - .Lm_17
	.long .LDIFF_SYM348
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2
	.balign 8
.Lfde11_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:remove_CanExecuteChanged"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_remove_CanExecuteChanged_System_EventHandler"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:remove_CanExecuteChanged"
	.xword .Lm_18
	.xword .Lme_18

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM349=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM349
	.byte 2,141,56,3
	.string "param0"

.LDIFF_SYM350=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM350
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM351=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM351
	.byte 1,105,11
	.string "V_1"

.LDIFF_SYM352=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM352
	.byte 1,104,11
	.string "V_2"

.LDIFF_SYM353=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM353
	.byte 1,102,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM354=.Lfde12_end - .Lfde12_start
	.long .LDIFF_SYM354
.Lfde12_start:

	.long 0
	.balign 8
	.xword .Lm_18

.LDIFF_SYM355=.Lme_18 - .Lm_18
	.long .LDIFF_SYM355
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,150,6,151,5,68,152,4,153,3,68,154,2
	.balign 8
.Lfde12_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:.ctor"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__ctor_System_Func_2_T_REF_System_Threading_Tasks_Task"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:.ctor"
	.xword .Lm_19
	.xword .Lme_19

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM356=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM356
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM357=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM357
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM358=.Lfde13_end - .Lfde13_start
	.long .LDIFF_SYM358
.Lfde13_start:

	.long 0
	.balign 8
	.xword .Lm_19

.LDIFF_SYM359=.Lme_19 - .Lm_19
	.long .LDIFF_SYM359
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde13_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:get_ExecutionTask"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_get_ExecutionTask"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:get_ExecutionTask"
	.xword .Lm_1a
	.xword .Lme_1a

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM360=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM360
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM361=.Lfde14_end - .Lfde14_start
	.long .LDIFF_SYM361
.Lfde14_start:

	.long 0
	.balign 8
	.xword .Lm_1a

.LDIFF_SYM362=.Lme_1a - .Lm_1a
	.long .LDIFF_SYM362
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde14_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:set_ExecutionTask"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_set_ExecutionTask_System_Threading_Tasks_Task"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:set_ExecutionTask"
	.xword .Lm_1b
	.xword .Lme_1b

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM363=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM363
	.byte 2,141,40,3
	.string "param0"

.LDIFF_SYM364=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM364
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM365=.Lfde15_end - .Lfde15_start
	.long .LDIFF_SYM365
.Lfde15_start:

	.long 0
	.balign 8
	.xword .Lm_1b

.LDIFF_SYM366=.Lme_1b - .Lm_1b
	.long .LDIFF_SYM366
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5,68,154,4
	.balign 8
.Lfde15_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:NotifyCanExecuteChanged"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_NotifyCanExecuteChanged"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:NotifyCanExecuteChanged"
	.xword .Lm_1c
	.xword .Lme_1c

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM367=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM367
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM368=.Lfde16_end - .Lfde16_start
	.long .LDIFF_SYM368
.Lfde16_start:

	.long 0
	.balign 8
	.xword .Lm_1c

.LDIFF_SYM369=.Lme_1c - .Lm_1c
	.long .LDIFF_SYM369
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.balign 8
.Lfde16_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:CanExecute"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_T_REF"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:CanExecute"
	.xword .Lm_1d
	.xword .Lme_1d

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM370=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM370
	.byte 2,141,32,3
	.string "param0"

.LDIFF_SYM371=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM371
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM372=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM372
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM373=.Lfde17_end - .Lfde17_start
	.long .LDIFF_SYM373
.Lfde17_start:

	.long 0
	.balign 8
	.xword .Lm_1d

.LDIFF_SYM374=.Lme_1d - .Lm_1d
	.long .LDIFF_SYM374
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,153,6,154,5
	.balign 8
.Lfde17_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:CanExecute"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_CanExecute_object"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:CanExecute"
	.xword .Lm_1e
	.xword .Lme_1e

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM375=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM375
	.byte 2,141,40,3
	.string "param0"

.LDIFF_SYM376=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM376
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM377=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM377
	.byte 2,141,48,11
	.string "V_1"

.LDIFF_SYM378=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM378
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM379=.Lfde18_end - .Lfde18_start
	.long .LDIFF_SYM379
.Lfde18_start:

	.long 0
	.balign 8
	.xword .Lm_1e

.LDIFF_SYM380=.Lme_1e - .Lm_1e
	.long .LDIFF_SYM380
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.balign 8
.Lfde18_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:Execute"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_T_REF"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:Execute"
	.xword .Lm_1f
	.xword .Lme_1f

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM381=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM381
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM382=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM382
	.byte 2,141,32,11
	.string "V_0"

.LDIFF_SYM383=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM383
	.byte 1,106,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM384=.Lfde19_end - .Lfde19_start
	.long .LDIFF_SYM384
.Lfde19_start:

	.long 0
	.balign 8
	.xword .Lm_1f

.LDIFF_SYM385=.Lme_1f - .Lm_1f
	.long .LDIFF_SYM385
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,154,4
	.balign 8
.Lfde19_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:Execute"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_Execute_object"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:Execute"
	.xword .Lm_20
	.xword .Lme_20

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM386=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM386
	.byte 2,141,40,3
	.string "param0"

.LDIFF_SYM387=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM387
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM388=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM388
	.byte 2,141,48,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM389=.Lfde20_end - .Lfde20_start
	.long .LDIFF_SYM389
.Lfde20_start:

	.long 0
	.balign 8
	.xword .Lm_20

.LDIFF_SYM390=.Lme_20 - .Lm_20
	.long .LDIFF_SYM390
	.long 0
	.byte 12,31,0,68,14,80,157,10,158,9,68,13,29,68,152,8,153,7,68,154,6
	.balign 8
.Lfde20_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:ExecuteAsync"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_T_REF"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:ExecuteAsync"
	.xword .Lm_21
	.xword .Lme_21

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM391=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM391
	.byte 2,141,40,3
	.string "param0"

.LDIFF_SYM392=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM392
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM393=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM393
	.byte 1,104,11
	.string "V_1"

.LDIFF_SYM394=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM394
	.byte 1,106,11
	.string "V_2"

.LDIFF_SYM395=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM395
	.byte 1,105,11
	.string "V_3"

.LDIFF_SYM396=.LTDIE_3_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM396
	.byte 1,105,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM397=.Lfde21_end - .Lfde21_start
	.long .LDIFF_SYM397
.Lfde21_start:

	.long 0
	.balign 8
	.xword .Lm_21

.LDIFF_SYM398=.Lme_21 - .Lm_21
	.long .LDIFF_SYM398
	.long 0
	.byte 12,31,0,68,14,96,157,12,158,11,68,13,29,68,152,10,153,9,68,154,8
	.balign 8
.Lfde21_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:ExecuteAsync"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_ExecuteAsync_object"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:ExecuteAsync"
	.xword .Lm_22
	.xword .Lme_22

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM399=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM399
	.byte 2,141,32,3
	.string "param0"

.LDIFF_SYM400=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM400
	.byte 2,141,40,11
	.string "V_0"

.LDIFF_SYM401=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM401
	.byte 2,141,48,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM402=.Lfde22_end - .Lfde22_start
	.long .LDIFF_SYM402
.Lfde22_start:

	.long 0
	.balign 8
	.xword .Lm_22

.LDIFF_SYM403=.Lme_22 - .Lm_22
	.long .LDIFF_SYM403
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,152,6,153,5
	.balign 8
.Lfde22_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:<set_ExecutionTask>g__MonitorTask_22_0"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF__set_ExecutionTaskg__MonitorTask_22_0_CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1_T_REF_System_Threading_Tasks_Task"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1<T_REF>:<set_ExecutionTask>g__MonitorTask_22_0"
	.xword .Lm_23
	.xword .Lme_23

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM404=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM404
	.byte 2,141,16,3
	.string "param1"

.LDIFF_SYM405=.LTDIE_34_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM405
	.byte 2,141,24,11
	.string "V_0"

.LDIFF_SYM406=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM406
	.byte 2,141,56,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM407=.Lfde23_end - .Lfde23_start
	.long .LDIFF_SYM407
.Lfde23_start:

	.long 0
	.balign 8
	.xword .Lm_23

.LDIFF_SYM408=.Lme_23 - .Lm_23
	.long .LDIFF_SYM408
	.long 0
	.byte 12,31,0,68,14,128,1,157,16,158,15,68,13,29
	.balign 8
.Lfde23_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1/<<set_ExecutionTask>g__MonitorTask_22_0>d<T_REF>:MoveNext"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_MoveNext"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1/<<set_ExecutionTask>g__MonitorTask_22_0>d<T_REF>:MoveNext"
	.xword .Lm_24
	.xword .Lme_24

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM409=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM409
	.byte 2,141,24,11
	.string "V_0"

.LDIFF_SYM410=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM410
	.byte 1,106,11
	.string "V_1"

.LDIFF_SYM411=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM411
	.byte 3,141,216,0,11
	.string "V_2"

.LDIFF_SYM412=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM412
	.byte 3,141,208,0,11
	.string "V_3"

.LDIFF_SYM413=.LTDIE_40_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM413
	.byte 3,141,224,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM414=.Lfde24_end - .Lfde24_start
	.long .LDIFF_SYM414
.Lfde24_start:

	.long 0
	.balign 8
	.xword .Lm_24

.LDIFF_SYM415=.Lme_24 - .Lm_24
	.long .LDIFF_SYM415
	.long 0
	.byte 12,31,0,68,14,176,1,157,22,158,21,68,13,29,68,154,20
	.balign 8
.Lfde24_end:

.section ".debug_info"
.subsection 0
.LTDIE_43:

	.byte 17
	.string "System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 16,7
	.string "System_Runtime_CompilerServices_IAsyncStateMachine"

.LDIFF_SYM416=.LTDIE_43 - .Ldebug_info_start
	.long .LDIFF_SYM416
.LTDIE_43_POINTER:

	.byte 13
.LDIFF_SYM417=.LTDIE_43 - .Ldebug_info_start
	.long .LDIFF_SYM417
.LTDIE_43_REFERENCE:

	.byte 14
.LDIFF_SYM418=.LTDIE_43 - .Ldebug_info_start
	.long .LDIFF_SYM418
	.byte 2
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1/<<set_ExecutionTask>g__MonitorTask_22_0>d<T_REF>:SetStateMachine"
	.string "CommunityToolkit_Mvvm_Input_AsyncRelayCommand_1___set_ExecutionTaskg__MonitorTask_22_0d_T_REF_SetStateMachine_System_Runtime_CompilerServices_IAsyncStateMachine"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.AsyncRelayCommand`1/<<set_ExecutionTask>g__MonitorTask_22_0>d<T_REF>:SetStateMachine"
	.xword .Lm_25
	.xword .Lme_25

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM419=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM419
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM420=.LTDIE_43_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM420
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM421=.Lfde25_end - .Lfde25_start
	.long .LDIFF_SYM421
.Lfde25_start:

	.long 0
	.balign 8
	.xword .Lm_25

.LDIFF_SYM422=.Lme_25 - .Lm_25
	.long .LDIFF_SYM422
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde25_end:

.section ".debug_info"
.subsection 0
.LTDIE_45:

	.byte 5
	.string "System_Action"

	.byte 128,1,16
.LDIFF_SYM423=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM423
	.byte 2,35,0,0,7
	.string "System_Action"

.LDIFF_SYM424=.LTDIE_45 - .Ldebug_info_start
	.long .LDIFF_SYM424
.LTDIE_45_POINTER:

	.byte 13
.LDIFF_SYM425=.LTDIE_45 - .Ldebug_info_start
	.long .LDIFF_SYM425
.LTDIE_45_REFERENCE:

	.byte 14
.LDIFF_SYM426=.LTDIE_45 - .Ldebug_info_start
	.long .LDIFF_SYM426
.LTDIE_44:

	.byte 5
	.string "CommunityToolkit_Mvvm_Input_RelayCommand"

	.byte 40,16
.LDIFF_SYM427=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM427
	.byte 2,35,0,6
	.string "execute"

.LDIFF_SYM428=.LTDIE_45_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM428
	.byte 2,35,16,6
	.string "canExecute"

.LDIFF_SYM429=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM429
	.byte 2,35,24,6
	.string "CanExecuteChanged"

.LDIFF_SYM430=.LTDIE_33_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM430
	.byte 2,35,32,0,7
	.string "CommunityToolkit_Mvvm_Input_RelayCommand"

.LDIFF_SYM431=.LTDIE_44 - .Ldebug_info_start
	.long .LDIFF_SYM431
.LTDIE_44_POINTER:

	.byte 13
.LDIFF_SYM432=.LTDIE_44 - .Ldebug_info_start
	.long .LDIFF_SYM432
.LTDIE_44_REFERENCE:

	.byte 14
.LDIFF_SYM433=.LTDIE_44 - .Ldebug_info_start
	.long .LDIFF_SYM433
	.byte 2
	.string "CommunityToolkit.Mvvm.Input.RelayCommand:.ctor"
	.string "CommunityToolkit_Mvvm_Input_RelayCommand__ctor_System_Action"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.RelayCommand:.ctor"
	.xword .Lm_2c
	.xword .Lme_2c

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM434=.LTDIE_44_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM434
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM435=.LTDIE_45_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM435
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM436=.Lfde26_end - .Lfde26_start
	.long .LDIFF_SYM436
.Lfde26_start:

	.long 0
	.balign 8
	.xword .Lm_2c

.LDIFF_SYM437=.Lme_2c - .Lm_2c
	.long .LDIFF_SYM437
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde26_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.RelayCommand:CanExecute"
	.string "CommunityToolkit_Mvvm_Input_RelayCommand_CanExecute_object"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.RelayCommand:CanExecute"
	.xword .Lm_2e
	.xword .Lme_2e

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM438=.LTDIE_44_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM438
	.byte 1,106,3
	.string "param0"

.LDIFF_SYM439=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM439
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM440=.Lfde27_end - .Lfde27_start
	.long .LDIFF_SYM440
.Lfde27_start:

	.long 0
	.balign 8
	.xword .Lm_2e

.LDIFF_SYM441=.Lme_2e - .Lm_2e
	.long .LDIFF_SYM441
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29,68,154,2
	.balign 8
.Lfde27_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.RelayCommand:Execute"
	.string "CommunityToolkit_Mvvm_Input_RelayCommand_Execute_object"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.RelayCommand:Execute"
	.xword .Lm_2f
	.xword .Lme_2f

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM442=.LTDIE_44_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM442
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM443=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM443
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM444=.Lfde28_end - .Lfde28_start
	.long .LDIFF_SYM444
.Lfde28_start:

	.long 0
	.balign 8
	.xword .Lm_2f

.LDIFF_SYM445=.Lme_2f - .Lm_2f
	.long .LDIFF_SYM445
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29
	.balign 8
.Lfde28_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.RelayCommand`1<T_REF>:TryGetCommandArgument"
	.string "CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_TryGetCommandArgument_object_T_REF_"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.RelayCommand`1<T_REF>:TryGetCommandArgument"
	.xword .Lm_30
	.xword .Lme_30

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM446=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM446
	.byte 1,105,3
	.string "param1"

.LDIFF_SYM447=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM447
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM448=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM448
	.byte 1,105,11
	.string "V_1"

.LDIFF_SYM449=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM449
	.byte 0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM450=.Lfde29_end - .Lfde29_start
	.long .LDIFF_SYM450
.Lfde29_start:

	.long 0
	.balign 8
	.xword .Lm_30

.LDIFF_SYM451=.Lme_30 - .Lm_30
	.long .LDIFF_SYM451
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,153,4,154,3
	.balign 8
.Lfde29_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.RelayCommand`1<T_REF>:ThrowArgumentExceptionForInvalidCommandArgument"
	.string "CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF_ThrowArgumentExceptionForInvalidCommandArgument_object"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.RelayCommand`1<T_REF>:ThrowArgumentExceptionForInvalidCommandArgument"
	.xword .Lm_31
	.xword .Lme_31

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM452=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM452
	.byte 2,141,16,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM453=.Lfde30_end - .Lfde30_start
	.long .LDIFF_SYM453
.Lfde30_start:

	.long 0
	.balign 8
	.xword .Lm_31

.LDIFF_SYM454=.Lme_31 - .Lm_31
	.long .LDIFF_SYM454
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde30_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.Input.RelayCommand`1<T_REF>:<ThrowArgumentExceptionForInvalidCommandArgument>g__GetException_13_0"
	.string "CommunityToolkit_Mvvm_Input_RelayCommand_1_T_REF__ThrowArgumentExceptionForInvalidCommandArgumentg__GetException_13_0_object"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.Input.RelayCommand`1<T_REF>:<ThrowArgumentExceptionForInvalidCommandArgument>g__GetException_13_0"
	.xword .Lm_32
	.xword .Lme_32

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM455=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM455
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM456=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM456
	.byte 3,141,208,3,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM457=.Lfde31_end - .Lfde31_start
	.long .LDIFF_SYM457
.Lfde31_start:

	.long 0
	.balign 8
	.xword .Lm_32

.LDIFF_SYM458=.Lme_32 - .Lm_32
	.long .LDIFF_SYM458
	.long 0
	.byte 12,31,0,84,14,160,4,157,68,158,67,68,13,29,68,149,66,150,65,68,151,64,152,63,68,153,62,154,61
	.balign 8
.Lfde31_end:

.section ".debug_info"
.subsection 0
.LTDIE_47:

	.byte 5
	.string "System_ComponentModel_PropertyChangingEventHandler"

	.byte 128,1,16
.LDIFF_SYM459=.LTDIE_32 - .Ldebug_info_start
	.long .LDIFF_SYM459
	.byte 2,35,0,0,7
	.string "System_ComponentModel_PropertyChangingEventHandler"

.LDIFF_SYM460=.LTDIE_47 - .Ldebug_info_start
	.long .LDIFF_SYM460
.LTDIE_47_POINTER:

	.byte 13
.LDIFF_SYM461=.LTDIE_47 - .Ldebug_info_start
	.long .LDIFF_SYM461
.LTDIE_47_REFERENCE:

	.byte 14
.LDIFF_SYM462=.LTDIE_47 - .Ldebug_info_start
	.long .LDIFF_SYM462
.LTDIE_46:

	.byte 5
	.string "CommunityToolkit_Mvvm_ComponentModel_ObservableObject"

	.byte 32,16
.LDIFF_SYM463=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM463
	.byte 2,35,0,6
	.string "PropertyChanged"

.LDIFF_SYM464=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM464
	.byte 2,35,16,6
	.string "PropertyChanging"

.LDIFF_SYM465=.LTDIE_47_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM465
	.byte 2,35,24,0,7
	.string "CommunityToolkit_Mvvm_ComponentModel_ObservableObject"

.LDIFF_SYM466=.LTDIE_46 - .Ldebug_info_start
	.long .LDIFF_SYM466
.LTDIE_46_POINTER:

	.byte 13
.LDIFF_SYM467=.LTDIE_46 - .Ldebug_info_start
	.long .LDIFF_SYM467
.LTDIE_46_REFERENCE:

	.byte 14
.LDIFF_SYM468=.LTDIE_46 - .Ldebug_info_start
	.long .LDIFF_SYM468
	.byte 2
	.string "CommunityToolkit.Mvvm.ComponentModel.ObservableObject:add_PropertyChanged"
	.string "CommunityToolkit_Mvvm_ComponentModel_ObservableObject_add_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.ComponentModel.ObservableObject:add_PropertyChanged"
	.xword .Lm_36
	.xword .Lme_36

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM469=.LTDIE_46_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM469
	.byte 1,105,3
	.string "param0"

.LDIFF_SYM470=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM470
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM471=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM471
	.byte 1,104,11
	.string "V_1"

.LDIFF_SYM472=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM472
	.byte 1,103,11
	.string "V_2"

.LDIFF_SYM473=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM473
	.byte 1,101,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM474=.Lfde32_end - .Lfde32_start
	.long .LDIFF_SYM474
.Lfde32_start:

	.long 0
	.balign 8
	.xword .Lm_36

.LDIFF_SYM475=.Lme_36 - .Lm_36
	.long .LDIFF_SYM475
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.balign 8
.Lfde32_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.ComponentModel.ObservableObject:remove_PropertyChanged"
	.string "CommunityToolkit_Mvvm_ComponentModel_ObservableObject_remove_PropertyChanged_System_ComponentModel_PropertyChangedEventHandler"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.ComponentModel.ObservableObject:remove_PropertyChanged"
	.xword .Lm_37
	.xword .Lme_37

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM476=.LTDIE_46_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM476
	.byte 1,105,3
	.string "param0"

.LDIFF_SYM477=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM477
	.byte 1,106,11
	.string "V_0"

.LDIFF_SYM478=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM478
	.byte 1,104,11
	.string "V_1"

.LDIFF_SYM479=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM479
	.byte 1,103,11
	.string "V_2"

.LDIFF_SYM480=.LTDIE_31_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM480
	.byte 1,101,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM481=.Lfde33_end - .Lfde33_start
	.long .LDIFF_SYM481
.Lfde33_start:

	.long 0
	.balign 8
	.xword .Lm_37

.LDIFF_SYM482=.Lme_37 - .Lm_37
	.long .LDIFF_SYM482
	.long 0
	.byte 12,31,0,68,14,64,157,8,158,7,68,13,29,68,149,6,150,5,68,151,4,152,3,68,153,2,154,1
	.balign 8
.Lfde33_end:

.section ".debug_info"
.subsection 0
.LTDIE_49:

	.byte 5
	.string "System_EventArgs"

	.byte 16,16
.LDIFF_SYM483=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM483
	.byte 2,35,0,0,7
	.string "System_EventArgs"

.LDIFF_SYM484=.LTDIE_49 - .Ldebug_info_start
	.long .LDIFF_SYM484
.LTDIE_49_POINTER:

	.byte 13
.LDIFF_SYM485=.LTDIE_49 - .Ldebug_info_start
	.long .LDIFF_SYM485
.LTDIE_49_REFERENCE:

	.byte 14
.LDIFF_SYM486=.LTDIE_49 - .Ldebug_info_start
	.long .LDIFF_SYM486
.LTDIE_48:

	.byte 5
	.string "System_ComponentModel_PropertyChangedEventArgs"

	.byte 24,16
.LDIFF_SYM487=.LTDIE_49 - .Ldebug_info_start
	.long .LDIFF_SYM487
	.byte 2,35,0,6
	.string "<PropertyName>k__BackingField"

.LDIFF_SYM488=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM488
	.byte 2,35,16,0,7
	.string "System_ComponentModel_PropertyChangedEventArgs"

.LDIFF_SYM489=.LTDIE_48 - .Ldebug_info_start
	.long .LDIFF_SYM489
.LTDIE_48_POINTER:

	.byte 13
.LDIFF_SYM490=.LTDIE_48 - .Ldebug_info_start
	.long .LDIFF_SYM490
.LTDIE_48_REFERENCE:

	.byte 14
.LDIFF_SYM491=.LTDIE_48 - .Ldebug_info_start
	.long .LDIFF_SYM491
	.byte 2
	.string "CommunityToolkit.Mvvm.ComponentModel.ObservableObject:OnPropertyChanged"
	.string "CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_System_ComponentModel_PropertyChangedEventArgs"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.ComponentModel.ObservableObject:OnPropertyChanged"
	.xword .Lm_3a
	.xword .Lme_3a

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM492=.LTDIE_46_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM492
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM493=.LTDIE_48_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM493
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM494=.Lfde34_end - .Lfde34_start
	.long .LDIFF_SYM494
.Lfde34_start:

	.long 0
	.balign 8
	.xword .Lm_3a

.LDIFF_SYM495=.Lme_3a - .Lm_3a
	.long .LDIFF_SYM495
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.balign 8
.Lfde34_end:

.section ".debug_info"
.subsection 0
.LTDIE_50:

	.byte 5
	.string "System_ComponentModel_PropertyChangingEventArgs"

	.byte 24,16
.LDIFF_SYM496=.LTDIE_49 - .Ldebug_info_start
	.long .LDIFF_SYM496
	.byte 2,35,0,6
	.string "<PropertyName>k__BackingField"

.LDIFF_SYM497=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM497
	.byte 2,35,16,0,7
	.string "System_ComponentModel_PropertyChangingEventArgs"

.LDIFF_SYM498=.LTDIE_50 - .Ldebug_info_start
	.long .LDIFF_SYM498
.LTDIE_50_POINTER:

	.byte 13
.LDIFF_SYM499=.LTDIE_50 - .Ldebug_info_start
	.long .LDIFF_SYM499
.LTDIE_50_REFERENCE:

	.byte 14
.LDIFF_SYM500=.LTDIE_50 - .Ldebug_info_start
	.long .LDIFF_SYM500
	.byte 2
	.string "CommunityToolkit.Mvvm.ComponentModel.ObservableObject:OnPropertyChanging"
	.string "CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanging_System_ComponentModel_PropertyChangingEventArgs"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.ComponentModel.ObservableObject:OnPropertyChanging"
	.xword .Lm_3b
	.xword .Lme_3b

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM501=.LTDIE_46_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM501
	.byte 2,141,24,3
	.string "param0"

.LDIFF_SYM502=.LTDIE_50_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM502
	.byte 2,141,32,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM503=.Lfde35_end - .Lfde35_start
	.long .LDIFF_SYM503
.Lfde35_start:

	.long 0
	.balign 8
	.xword .Lm_3b

.LDIFF_SYM504=.Lme_3b - .Lm_3b
	.long .LDIFF_SYM504
	.long 0
	.byte 12,31,0,68,14,48,157,6,158,5,68,13,29,68,152,4
	.balign 8
.Lfde35_end:

.section ".debug_info"
.subsection 0

	.byte 2
	.string "CommunityToolkit.Mvvm.ComponentModel.ObservableObject:OnPropertyChanged"
	.string "CommunityToolkit_Mvvm_ComponentModel_ObservableObject_OnPropertyChanged_string"

	.byte 0,0
	.string "CommunityToolkit.Mvvm.ComponentModel.ObservableObject:OnPropertyChanged"
	.xword .Lm_3c
	.xword .Lme_3c

	.byte 2,118,16,3
	.string "this"

.LDIFF_SYM505=.LTDIE_46_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM505
	.byte 2,141,16,3
	.string "param0"

.LDIFF_SYM506=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM506
	.byte 2,141,24,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM507=.Lfde36_end - .Lfde36_start
	.long .LDIFF_SYM507
.Lfde36_start:

	.long 0
	.balign 8
	.xword .Lm_3c

.LDIFF_SYM508=.Lme_3c - .Lm_3c
	.long .LDIFF_SYM508
	.long 0
	.byte 12,31,0,68,14,32,157,4,158,3,68,13,29
	.balign 8
.Lfde36_end:

.section ".debug_info"
.subsection 0
.LTDIE_52:

	.byte 8
	.string "System_Threading_ThreadState"

	.byte 4
.LDIFF_SYM509=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM509
	.byte 9
	.string "Running"

	.byte 0,9
	.string "StopRequested"

	.byte 1,9
	.string "SuspendRequested"

	.byte 2,9
	.string "Background"

	.byte 4,9
	.string "Unstarted"

	.byte 8,9
	.string "Stopped"

	.byte 16,9
	.string "WaitSleepJoin"

	.byte 32,9
	.string "Suspended"

	.byte 192,0,9
	.string "AbortRequested"

	.byte 128,1,9
	.string "Aborted"

	.byte 128,2,0,7
	.string "System_Threading_ThreadState"

.LDIFF_SYM510=.LTDIE_52 - .Ldebug_info_start
	.long .LDIFF_SYM510
.LTDIE_52_POINTER:

	.byte 13
.LDIFF_SYM511=.LTDIE_52 - .Ldebug_info_start
	.long .LDIFF_SYM511
.LTDIE_52_REFERENCE:

	.byte 14
.LDIFF_SYM512=.LTDIE_52 - .Ldebug_info_start
	.long .LDIFF_SYM512
.LTDIE_53:

	.byte 5
	.string "System_Byte"

	.byte 17,16
.LDIFF_SYM513=.LTDIE_6 - .Ldebug_info_start
	.long .LDIFF_SYM513
	.byte 2,35,0,6
	.string "m_value"

.LDIFF_SYM514=.LDIE_U1 - .Ldebug_info_start
	.long .LDIFF_SYM514
	.byte 2,35,16,0,7
	.string "System_Byte"

.LDIFF_SYM515=.LTDIE_53 - .Ldebug_info_start
	.long .LDIFF_SYM515
.LTDIE_53_POINTER:

	.byte 13
.LDIFF_SYM516=.LTDIE_53 - .Ldebug_info_start
	.long .LDIFF_SYM516
.LTDIE_53_REFERENCE:

	.byte 14
.LDIFF_SYM517=.LTDIE_53 - .Ldebug_info_start
	.long .LDIFF_SYM517
.LTDIE_57:

	.byte 5
	.string "System_Globalization_SortVersion"

	.byte 36,16
.LDIFF_SYM518=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM518
	.byte 2,35,0,6
	.string "m_NlsVersion"

.LDIFF_SYM519=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM519
	.byte 2,35,16,6
	.string "m_SortId"

.LDIFF_SYM520=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM520
	.byte 2,35,20,0,7
	.string "System_Globalization_SortVersion"

.LDIFF_SYM521=.LTDIE_57 - .Ldebug_info_start
	.long .LDIFF_SYM521
.LTDIE_57_POINTER:

	.byte 13
.LDIFF_SYM522=.LTDIE_57 - .Ldebug_info_start
	.long .LDIFF_SYM522
.LTDIE_57_REFERENCE:

	.byte 14
.LDIFF_SYM523=.LTDIE_57 - .Ldebug_info_start
	.long .LDIFF_SYM523
.LTDIE_56:

	.byte 5
	.string "System_Globalization_CompareInfo"

	.byte 56,16
.LDIFF_SYM524=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM524
	.byte 2,35,0,6
	.string "m_name"

.LDIFF_SYM525=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM525
	.byte 2,35,16,6
	.string "_sortHandle"

.LDIFF_SYM526=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM526
	.byte 2,35,40,6
	.string "_sortName"

.LDIFF_SYM527=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM527
	.byte 2,35,24,6
	.string "m_SortVersion"

.LDIFF_SYM528=.LTDIE_57_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM528
	.byte 2,35,32,6
	.string "_isAsciiEqualityOrdinal"

.LDIFF_SYM529=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM529
	.byte 2,35,48,0,7
	.string "System_Globalization_CompareInfo"

.LDIFF_SYM530=.LTDIE_56 - .Ldebug_info_start
	.long .LDIFF_SYM530
.LTDIE_56_POINTER:

	.byte 13
.LDIFF_SYM531=.LTDIE_56 - .Ldebug_info_start
	.long .LDIFF_SYM531
.LTDIE_56_REFERENCE:

	.byte 14
.LDIFF_SYM532=.LTDIE_56 - .Ldebug_info_start
	.long .LDIFF_SYM532
.LTDIE_59:

	.byte 5
	.string "System_Globalization_CultureData"

	.byte 184,3,16
.LDIFF_SYM533=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM533
	.byte 2,35,0,6
	.string "_sRealName"

.LDIFF_SYM534=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM534
	.byte 2,35,16,6
	.string "_sWindowsName"

.LDIFF_SYM535=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM535
	.byte 2,35,24,6
	.string "_sName"

.LDIFF_SYM536=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM536
	.byte 2,35,32,6
	.string "_sParent"

.LDIFF_SYM537=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM537
	.byte 2,35,40,6
	.string "_sEnglishDisplayName"

.LDIFF_SYM538=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM538
	.byte 2,35,48,6
	.string "_sNativeDisplayName"

.LDIFF_SYM539=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM539
	.byte 2,35,56,6
	.string "_sSpecificCulture"

.LDIFF_SYM540=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM540
	.byte 2,35,64,6
	.string "_sISO639Language"

.LDIFF_SYM541=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM541
	.byte 2,35,72,6
	.string "_sISO639Language2"

.LDIFF_SYM542=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM542
	.byte 2,35,80,6
	.string "_sEnglishLanguage"

.LDIFF_SYM543=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM543
	.byte 2,35,88,6
	.string "_sNativeLanguage"

.LDIFF_SYM544=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM544
	.byte 2,35,96,6
	.string "_sAbbrevLang"

.LDIFF_SYM545=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM545
	.byte 2,35,104,6
	.string "_sConsoleFallbackName"

.LDIFF_SYM546=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM546
	.byte 2,35,112,6
	.string "_iInputLanguageHandle"

.LDIFF_SYM547=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM547
	.byte 3,35,232,2,6
	.string "_sRegionName"

.LDIFF_SYM548=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM548
	.byte 2,35,120,6
	.string "_sEnglishCountry"

.LDIFF_SYM549=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM549
	.byte 3,35,128,1,6
	.string "_sNativeCountry"

.LDIFF_SYM550=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM550
	.byte 3,35,136,1,6
	.string "_sISO3166CountryName"

.LDIFF_SYM551=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM551
	.byte 3,35,144,1,6
	.string "_sISO3166CountryName2"

.LDIFF_SYM552=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM552
	.byte 3,35,152,1,6
	.string "_iGeoId"

.LDIFF_SYM553=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM553
	.byte 3,35,236,2,6
	.string "_sPositiveSign"

.LDIFF_SYM554=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM554
	.byte 3,35,160,1,6
	.string "_sNegativeSign"

.LDIFF_SYM555=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM555
	.byte 3,35,168,1,6
	.string "_iDigits"

.LDIFF_SYM556=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM556
	.byte 3,35,240,2,6
	.string "_iNegativeNumber"

.LDIFF_SYM557=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM557
	.byte 3,35,244,2,6
	.string "_waGrouping"

.LDIFF_SYM558=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM558
	.byte 3,35,176,1,6
	.string "_sDecimalSeparator"

.LDIFF_SYM559=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM559
	.byte 3,35,184,1,6
	.string "_sThousandSeparator"

.LDIFF_SYM560=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM560
	.byte 3,35,192,1,6
	.string "_sNaN"

.LDIFF_SYM561=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM561
	.byte 3,35,200,1,6
	.string "_sPositiveInfinity"

.LDIFF_SYM562=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM562
	.byte 3,35,208,1,6
	.string "_sNegativeInfinity"

.LDIFF_SYM563=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM563
	.byte 3,35,216,1,6
	.string "_iNegativePercent"

.LDIFF_SYM564=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM564
	.byte 3,35,248,2,6
	.string "_iPositivePercent"

.LDIFF_SYM565=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM565
	.byte 3,35,252,2,6
	.string "_sPercent"

.LDIFF_SYM566=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM566
	.byte 3,35,224,1,6
	.string "_sPerMille"

.LDIFF_SYM567=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM567
	.byte 3,35,232,1,6
	.string "_sCurrency"

.LDIFF_SYM568=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM568
	.byte 3,35,240,1,6
	.string "_sIntlMonetarySymbol"

.LDIFF_SYM569=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM569
	.byte 3,35,248,1,6
	.string "_sEnglishCurrency"

.LDIFF_SYM570=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM570
	.byte 3,35,128,2,6
	.string "_sNativeCurrency"

.LDIFF_SYM571=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM571
	.byte 3,35,136,2,6
	.string "_iCurrencyDigits"

.LDIFF_SYM572=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM572
	.byte 3,35,128,3,6
	.string "_iCurrency"

.LDIFF_SYM573=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM573
	.byte 3,35,132,3,6
	.string "_iNegativeCurrency"

.LDIFF_SYM574=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM574
	.byte 3,35,136,3,6
	.string "_waMonetaryGrouping"

.LDIFF_SYM575=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM575
	.byte 3,35,144,2,6
	.string "_sMonetaryDecimal"

.LDIFF_SYM576=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM576
	.byte 3,35,152,2,6
	.string "_sMonetaryThousand"

.LDIFF_SYM577=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM577
	.byte 3,35,160,2,6
	.string "_iMeasure"

.LDIFF_SYM578=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM578
	.byte 3,35,140,3,6
	.string "_sListSeparator"

.LDIFF_SYM579=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM579
	.byte 3,35,168,2,6
	.string "_sAM1159"

.LDIFF_SYM580=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM580
	.byte 3,35,176,2,6
	.string "_sPM2359"

.LDIFF_SYM581=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM581
	.byte 3,35,184,2,6
	.string "_sTimeSeparator"

.LDIFF_SYM582=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM582
	.byte 3,35,192,2,6
	.string "_saLongTimes"

.LDIFF_SYM583=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM583
	.byte 3,35,200,2,6
	.string "_saShortTimes"

.LDIFF_SYM584=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM584
	.byte 3,35,208,2,6
	.string "_iFirstDayOfWeek"

.LDIFF_SYM585=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM585
	.byte 3,35,144,3,6
	.string "_iFirstWeekOfYear"

.LDIFF_SYM586=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM586
	.byte 3,35,148,3,6
	.string "_waCalendars"

.LDIFF_SYM587=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM587
	.byte 3,35,216,2,6
	.string "_calendars"

.LDIFF_SYM588=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM588
	.byte 3,35,224,2,6
	.string "_iReadingLayout"

.LDIFF_SYM589=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM589
	.byte 3,35,152,3,6
	.string "_iDefaultAnsiCodePage"

.LDIFF_SYM590=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM590
	.byte 3,35,156,3,6
	.string "_iDefaultOemCodePage"

.LDIFF_SYM591=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM591
	.byte 3,35,160,3,6
	.string "_iDefaultMacCodePage"

.LDIFF_SYM592=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM592
	.byte 3,35,164,3,6
	.string "_iDefaultEbcdicCodePage"

.LDIFF_SYM593=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM593
	.byte 3,35,168,3,6
	.string "_iLanguage"

.LDIFF_SYM594=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM594
	.byte 3,35,172,3,6
	.string "_bUseOverrides"

.LDIFF_SYM595=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM595
	.byte 3,35,176,3,6
	.string "_bUseOverridesUserSetting"

.LDIFF_SYM596=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM596
	.byte 3,35,177,3,6
	.string "_bNeutral"

.LDIFF_SYM597=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM597
	.byte 3,35,178,3,0,7
	.string "System_Globalization_CultureData"

.LDIFF_SYM598=.LTDIE_59 - .Ldebug_info_start
	.long .LDIFF_SYM598
.LTDIE_59_POINTER:

	.byte 13
.LDIFF_SYM599=.LTDIE_59 - .Ldebug_info_start
	.long .LDIFF_SYM599
.LTDIE_59_REFERENCE:

	.byte 14
.LDIFF_SYM600=.LTDIE_59 - .Ldebug_info_start
	.long .LDIFF_SYM600
.LTDIE_60:

	.byte 8
	.string "_Tristate"

	.byte 1
.LDIFF_SYM601=.LDIE_U1 - .Ldebug_info_start
	.long .LDIFF_SYM601
	.byte 9
	.string "NotInitialized"

	.byte 0,9
	.string "False"

	.byte 1,9
	.string "True"

	.byte 2,0,7
	.string "_Tristate"

.LDIFF_SYM602=.LTDIE_60 - .Ldebug_info_start
	.long .LDIFF_SYM602
.LTDIE_60_POINTER:

	.byte 13
.LDIFF_SYM603=.LTDIE_60 - .Ldebug_info_start
	.long .LDIFF_SYM603
.LTDIE_60_REFERENCE:

	.byte 14
.LDIFF_SYM604=.LTDIE_60 - .Ldebug_info_start
	.long .LDIFF_SYM604
.LTDIE_58:

	.byte 5
	.string "System_Globalization_TextInfo"

	.byte 56,16
.LDIFF_SYM605=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM605
	.byte 2,35,0,6
	.string "_isReadOnly"

.LDIFF_SYM606=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM606
	.byte 2,35,48,6
	.string "_cultureName"

.LDIFF_SYM607=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM607
	.byte 2,35,16,6
	.string "_cultureData"

.LDIFF_SYM608=.LTDIE_59_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM608
	.byte 2,35,24,6
	.string "_textInfoName"

.LDIFF_SYM609=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM609
	.byte 2,35,32,6
	.string "_isAsciiCasingSameAsInvariant"

.LDIFF_SYM610=.LTDIE_60 - .Ldebug_info_start
	.long .LDIFF_SYM610
	.byte 2,35,49,6
	.string "<ListSeparator>k__BackingField"

.LDIFF_SYM611=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM611
	.byte 2,35,40,6
	.string "_needsTurkishCasing"

.LDIFF_SYM612=.LTDIE_60 - .Ldebug_info_start
	.long .LDIFF_SYM612
	.byte 2,35,50,0,7
	.string "System_Globalization_TextInfo"

.LDIFF_SYM613=.LTDIE_58 - .Ldebug_info_start
	.long .LDIFF_SYM613
.LTDIE_58_POINTER:

	.byte 13
.LDIFF_SYM614=.LTDIE_58 - .Ldebug_info_start
	.long .LDIFF_SYM614
.LTDIE_58_REFERENCE:

	.byte 14
.LDIFF_SYM615=.LTDIE_58 - .Ldebug_info_start
	.long .LDIFF_SYM615
.LTDIE_61:

	.byte 5
	.string "System_Globalization_NumberFormatInfo"

	.byte 184,2,16
.LDIFF_SYM616=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM616
	.byte 2,35,0,6
	.string "_numberGroupSizes"

.LDIFF_SYM617=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM617
	.byte 2,35,16,6
	.string "_currencyGroupSizes"

.LDIFF_SYM618=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM618
	.byte 2,35,24,6
	.string "_percentGroupSizes"

.LDIFF_SYM619=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM619
	.byte 2,35,32,6
	.string "_positiveSign"

.LDIFF_SYM620=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM620
	.byte 2,35,40,6
	.string "_negativeSign"

.LDIFF_SYM621=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM621
	.byte 2,35,48,6
	.string "_numberDecimalSeparator"

.LDIFF_SYM622=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM622
	.byte 2,35,56,6
	.string "_numberGroupSeparator"

.LDIFF_SYM623=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM623
	.byte 2,35,64,6
	.string "_currencyGroupSeparator"

.LDIFF_SYM624=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM624
	.byte 2,35,72,6
	.string "_currencyDecimalSeparator"

.LDIFF_SYM625=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM625
	.byte 2,35,80,6
	.string "_currencySymbol"

.LDIFF_SYM626=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM626
	.byte 2,35,88,6
	.string "_nanSymbol"

.LDIFF_SYM627=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM627
	.byte 2,35,96,6
	.string "_positiveInfinitySymbol"

.LDIFF_SYM628=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM628
	.byte 2,35,104,6
	.string "_negativeInfinitySymbol"

.LDIFF_SYM629=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM629
	.byte 2,35,112,6
	.string "_percentDecimalSeparator"

.LDIFF_SYM630=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM630
	.byte 2,35,120,6
	.string "_percentGroupSeparator"

.LDIFF_SYM631=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM631
	.byte 3,35,128,1,6
	.string "_percentSymbol"

.LDIFF_SYM632=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM632
	.byte 3,35,136,1,6
	.string "_perMilleSymbol"

.LDIFF_SYM633=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM633
	.byte 3,35,144,1,6
	.string "_positiveSignUtf8"

.LDIFF_SYM634=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM634
	.byte 3,35,152,1,6
	.string "_negativeSignUtf8"

.LDIFF_SYM635=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM635
	.byte 3,35,160,1,6
	.string "_currencySymbolUtf8"

.LDIFF_SYM636=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM636
	.byte 3,35,168,1,6
	.string "_numberDecimalSeparatorUtf8"

.LDIFF_SYM637=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM637
	.byte 3,35,176,1,6
	.string "_currencyDecimalSeparatorUtf8"

.LDIFF_SYM638=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM638
	.byte 3,35,184,1,6
	.string "_currencyGroupSeparatorUtf8"

.LDIFF_SYM639=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM639
	.byte 3,35,192,1,6
	.string "_numberGroupSeparatorUtf8"

.LDIFF_SYM640=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM640
	.byte 3,35,200,1,6
	.string "_percentSymbolUtf8"

.LDIFF_SYM641=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM641
	.byte 3,35,208,1,6
	.string "_percentDecimalSeparatorUtf8"

.LDIFF_SYM642=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM642
	.byte 3,35,216,1,6
	.string "_percentGroupSeparatorUtf8"

.LDIFF_SYM643=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM643
	.byte 3,35,224,1,6
	.string "_perMilleSymbolUtf8"

.LDIFF_SYM644=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM644
	.byte 3,35,232,1,6
	.string "_nanSymbolUtf8"

.LDIFF_SYM645=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM645
	.byte 3,35,240,1,6
	.string "_positiveInfinitySymbolUtf8"

.LDIFF_SYM646=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM646
	.byte 3,35,248,1,6
	.string "_negativeInfinitySymbolUtf8"

.LDIFF_SYM647=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM647
	.byte 3,35,128,2,6
	.string "_nativeDigits"

.LDIFF_SYM648=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM648
	.byte 3,35,136,2,6
	.string "_numberDecimalDigits"

.LDIFF_SYM649=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM649
	.byte 3,35,144,2,6
	.string "_currencyDecimalDigits"

.LDIFF_SYM650=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM650
	.byte 3,35,148,2,6
	.string "_currencyPositivePattern"

.LDIFF_SYM651=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM651
	.byte 3,35,152,2,6
	.string "_currencyNegativePattern"

.LDIFF_SYM652=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM652
	.byte 3,35,156,2,6
	.string "_numberNegativePattern"

.LDIFF_SYM653=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM653
	.byte 3,35,160,2,6
	.string "_percentPositivePattern"

.LDIFF_SYM654=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM654
	.byte 3,35,164,2,6
	.string "_percentNegativePattern"

.LDIFF_SYM655=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM655
	.byte 3,35,168,2,6
	.string "_percentDecimalDigits"

.LDIFF_SYM656=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM656
	.byte 3,35,172,2,6
	.string "_digitSubstitution"

.LDIFF_SYM657=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM657
	.byte 3,35,176,2,6
	.string "_isReadOnly"

.LDIFF_SYM658=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM658
	.byte 3,35,180,2,6
	.string "_hasInvariantNumberSigns"

.LDIFF_SYM659=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM659
	.byte 3,35,181,2,6
	.string "_allowHyphenDuringParsing"

.LDIFF_SYM660=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM660
	.byte 3,35,182,2,0,7
	.string "System_Globalization_NumberFormatInfo"

.LDIFF_SYM661=.LTDIE_61 - .Ldebug_info_start
	.long .LDIFF_SYM661
.LTDIE_61_POINTER:

	.byte 13
.LDIFF_SYM662=.LTDIE_61 - .Ldebug_info_start
	.long .LDIFF_SYM662
.LTDIE_61_REFERENCE:

	.byte 14
.LDIFF_SYM663=.LTDIE_61 - .Ldebug_info_start
	.long .LDIFF_SYM663
.LTDIE_63:

	.byte 5
	.string "System_Globalization_Calendar"

	.byte 28,16
.LDIFF_SYM664=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM664
	.byte 2,35,0,6
	.string "_currentEraValue"

.LDIFF_SYM665=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM665
	.byte 2,35,16,6
	.string "_isReadOnly"

.LDIFF_SYM666=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM666
	.byte 2,35,20,6
	.string "_twoDigitYearMax"

.LDIFF_SYM667=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM667
	.byte 2,35,24,0,7
	.string "System_Globalization_Calendar"

.LDIFF_SYM668=.LTDIE_63 - .Ldebug_info_start
	.long .LDIFF_SYM668
.LTDIE_63_POINTER:

	.byte 13
.LDIFF_SYM669=.LTDIE_63 - .Ldebug_info_start
	.long .LDIFF_SYM669
.LTDIE_63_REFERENCE:

	.byte 14
.LDIFF_SYM670=.LTDIE_63 - .Ldebug_info_start
	.long .LDIFF_SYM670
.LTDIE_64:

	.byte 8
	.string "System_Globalization_DateTimeFormatFlags"

	.byte 4
.LDIFF_SYM671=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM671
	.byte 9
	.string "None"

	.byte 0,9
	.string "UseGenitiveMonth"

	.byte 1,9
	.string "UseLeapYearMonth"

	.byte 2,9
	.string "UseSpacesInMonthNames"

	.byte 4,9
	.string "UseHebrewRule"

	.byte 8,9
	.string "UseSpacesInDayNames"

	.byte 16,9
	.string "UseDigitPrefixInTokens"

	.byte 32,9
	.string "NotInitialized"

	.byte 255,255,255,255,15,0,7
	.string "System_Globalization_DateTimeFormatFlags"

.LDIFF_SYM672=.LTDIE_64 - .Ldebug_info_start
	.long .LDIFF_SYM672
.LTDIE_64_POINTER:

	.byte 13
.LDIFF_SYM673=.LTDIE_64 - .Ldebug_info_start
	.long .LDIFF_SYM673
.LTDIE_64_REFERENCE:

	.byte 14
.LDIFF_SYM674=.LTDIE_64 - .Ldebug_info_start
	.long .LDIFF_SYM674
.LTDIE_62:

	.byte 5
	.string "System_Globalization_DateTimeFormatInfo"

	.byte 144,3,16
.LDIFF_SYM675=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM675
	.byte 2,35,0,6
	.string "_cultureData"

.LDIFF_SYM676=.LTDIE_59_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM676
	.byte 2,35,16,6
	.string "_name"

.LDIFF_SYM677=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM677
	.byte 2,35,24,6
	.string "_compareInfo"

.LDIFF_SYM678=.LTDIE_56_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM678
	.byte 2,35,32,6
	.string "amDesignator"

.LDIFF_SYM679=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM679
	.byte 2,35,40,6
	.string "pmDesignator"

.LDIFF_SYM680=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM680
	.byte 2,35,48,6
	.string "dateSeparator"

.LDIFF_SYM681=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM681
	.byte 2,35,56,6
	.string "generalShortTimePattern"

.LDIFF_SYM682=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM682
	.byte 2,35,64,6
	.string "generalLongTimePattern"

.LDIFF_SYM683=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM683
	.byte 2,35,72,6
	.string "timeSeparator"

.LDIFF_SYM684=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM684
	.byte 2,35,80,6
	.string "monthDayPattern"

.LDIFF_SYM685=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM685
	.byte 2,35,88,6
	.string "dateTimeOffsetPattern"

.LDIFF_SYM686=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM686
	.byte 2,35,96,6
	.string "amDesignatorUtf8"

.LDIFF_SYM687=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM687
	.byte 2,35,104,6
	.string "pmDesignatorUtf8"

.LDIFF_SYM688=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM688
	.byte 2,35,112,6
	.string "timeSeparatorUtf8"

.LDIFF_SYM689=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM689
	.byte 2,35,120,6
	.string "dateSeparatorUtf8"

.LDIFF_SYM690=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM690
	.byte 3,35,128,1,6
	.string "calendar"

.LDIFF_SYM691=.LTDIE_63_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM691
	.byte 3,35,136,1,6
	.string "firstDayOfWeek"

.LDIFF_SYM692=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM692
	.byte 3,35,128,3,6
	.string "calendarWeekRule"

.LDIFF_SYM693=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM693
	.byte 3,35,132,3,6
	.string "fullDateTimePattern"

.LDIFF_SYM694=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM694
	.byte 3,35,144,1,6
	.string "abbreviatedDayNames"

.LDIFF_SYM695=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM695
	.byte 3,35,152,1,6
	.string "m_superShortDayNames"

.LDIFF_SYM696=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM696
	.byte 3,35,160,1,6
	.string "dayNames"

.LDIFF_SYM697=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM697
	.byte 3,35,168,1,6
	.string "abbreviatedMonthNames"

.LDIFF_SYM698=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM698
	.byte 3,35,176,1,6
	.string "monthNames"

.LDIFF_SYM699=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM699
	.byte 3,35,184,1,6
	.string "genitiveMonthNames"

.LDIFF_SYM700=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM700
	.byte 3,35,192,1,6
	.string "m_genitiveAbbreviatedMonthNames"

.LDIFF_SYM701=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM701
	.byte 3,35,200,1,6
	.string "leapYearMonthNames"

.LDIFF_SYM702=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM702
	.byte 3,35,208,1,6
	.string "longDatePattern"

.LDIFF_SYM703=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM703
	.byte 3,35,216,1,6
	.string "shortDatePattern"

.LDIFF_SYM704=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM704
	.byte 3,35,224,1,6
	.string "yearMonthPattern"

.LDIFF_SYM705=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM705
	.byte 3,35,232,1,6
	.string "longTimePattern"

.LDIFF_SYM706=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM706
	.byte 3,35,240,1,6
	.string "shortTimePattern"

.LDIFF_SYM707=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM707
	.byte 3,35,248,1,6
	.string "allYearMonthPatterns"

.LDIFF_SYM708=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM708
	.byte 3,35,128,2,6
	.string "allShortDatePatterns"

.LDIFF_SYM709=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM709
	.byte 3,35,136,2,6
	.string "allLongDatePatterns"

.LDIFF_SYM710=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM710
	.byte 3,35,144,2,6
	.string "allShortTimePatterns"

.LDIFF_SYM711=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM711
	.byte 3,35,152,2,6
	.string "allLongTimePatterns"

.LDIFF_SYM712=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM712
	.byte 3,35,160,2,6
	.string "m_eraNames"

.LDIFF_SYM713=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM713
	.byte 3,35,168,2,6
	.string "m_abbrevEraNames"

.LDIFF_SYM714=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM714
	.byte 3,35,176,2,6
	.string "m_abbrevEnglishEraNames"

.LDIFF_SYM715=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM715
	.byte 3,35,184,2,6
	.string "_isReadOnly"

.LDIFF_SYM716=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM716
	.byte 3,35,136,3,6
	.string "formatFlags"

.LDIFF_SYM717=.LTDIE_64 - .Ldebug_info_start
	.long .LDIFF_SYM717
	.byte 3,35,140,3,6
	.string "<Culture>k__BackingField"

.LDIFF_SYM718=.LTDIE_55_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM718
	.byte 3,35,192,2,6
	.string "<LanguageName>k__BackingField"

.LDIFF_SYM719=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM719
	.byte 3,35,200,2,6
	.string "<OptionalCalendars>k__BackingField"

.LDIFF_SYM720=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM720
	.byte 3,35,208,2,6
	.string "_decimalSeparator"

.LDIFF_SYM721=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM721
	.byte 3,35,216,2,6
	.string "_decimalSeparatorUtf8"

.LDIFF_SYM722=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM722
	.byte 3,35,224,2,6
	.string "_fullTimeSpanPositivePattern"

.LDIFF_SYM723=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM723
	.byte 3,35,232,2,6
	.string "_fullTimeSpanNegativePattern"

.LDIFF_SYM724=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM724
	.byte 3,35,240,2,6
	.string "_dtfiTokenHash"

.LDIFF_SYM725=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM725
	.byte 3,35,248,2,0,7
	.string "System_Globalization_DateTimeFormatInfo"

.LDIFF_SYM726=.LTDIE_62 - .Ldebug_info_start
	.long .LDIFF_SYM726
.LTDIE_62_POINTER:

	.byte 13
.LDIFF_SYM727=.LTDIE_62 - .Ldebug_info_start
	.long .LDIFF_SYM727
.LTDIE_62_REFERENCE:

	.byte 14
.LDIFF_SYM728=.LTDIE_62 - .Ldebug_info_start
	.long .LDIFF_SYM728
.LTDIE_55:

	.byte 5
	.string "System_Globalization_CultureInfo"

	.byte 104,16
.LDIFF_SYM729=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM729
	.byte 2,35,0,6
	.string "_isReadOnly"

.LDIFF_SYM730=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM730
	.byte 2,35,96,6
	.string "_compareInfo"

.LDIFF_SYM731=.LTDIE_56_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM731
	.byte 2,35,16,6
	.string "_textInfo"

.LDIFF_SYM732=.LTDIE_58_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM732
	.byte 2,35,24,6
	.string "_numInfo"

.LDIFF_SYM733=.LTDIE_61_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM733
	.byte 2,35,32,6
	.string "_dateTimeInfo"

.LDIFF_SYM734=.LTDIE_62_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM734
	.byte 2,35,40,6
	.string "_calendar"

.LDIFF_SYM735=.LTDIE_63_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM735
	.byte 2,35,48,6
	.string "_cultureData"

.LDIFF_SYM736=.LTDIE_59_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM736
	.byte 2,35,56,6
	.string "_isInherited"

.LDIFF_SYM737=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM737
	.byte 2,35,97,6
	.string "_name"

.LDIFF_SYM738=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM738
	.byte 2,35,64,6
	.string "_nonSortName"

.LDIFF_SYM739=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM739
	.byte 2,35,72,6
	.string "_sortName"

.LDIFF_SYM740=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM740
	.byte 2,35,80,6
	.string "_parent"

.LDIFF_SYM741=.LTDIE_55_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM741
	.byte 2,35,88,0,7
	.string "System_Globalization_CultureInfo"

.LDIFF_SYM742=.LTDIE_55 - .Ldebug_info_start
	.long .LDIFF_SYM742
.LTDIE_55_POINTER:

	.byte 13
.LDIFF_SYM743=.LTDIE_55 - .Ldebug_info_start
	.long .LDIFF_SYM743
.LTDIE_55_REFERENCE:

	.byte 14
.LDIFF_SYM744=.LTDIE_55 - .Ldebug_info_start
	.long .LDIFF_SYM744
.LTDIE_54:

	.byte 5
	.string "_StartHelper"

	.byte 64,16
.LDIFF_SYM745=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM745
	.byte 2,35,0,6
	.string "_maxStackSize"

.LDIFF_SYM746=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM746
	.byte 2,35,56,6
	.string "_start"

.LDIFF_SYM747=.LTDIE_20_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM747
	.byte 2,35,16,6
	.string "_startArg"

.LDIFF_SYM748=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM748
	.byte 2,35,24,6
	.string "_culture"

.LDIFF_SYM749=.LTDIE_55_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM749
	.byte 2,35,32,6
	.string "_uiCulture"

.LDIFF_SYM750=.LTDIE_55_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM750
	.byte 2,35,40,6
	.string "_executionContext"

.LDIFF_SYM751=.LTDIE_28_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM751
	.byte 2,35,48,0,7
	.string "_StartHelper"

.LDIFF_SYM752=.LTDIE_54 - .Ldebug_info_start
	.long .LDIFF_SYM752
.LTDIE_54_POINTER:

	.byte 13
.LDIFF_SYM753=.LTDIE_54 - .Ldebug_info_start
	.long .LDIFF_SYM753
.LTDIE_54_REFERENCE:

	.byte 14
.LDIFF_SYM754=.LTDIE_54 - .Ldebug_info_start
	.long .LDIFF_SYM754
.LTDIE_66:

	.byte 8
	.string "_WaitSignalState"

	.byte 1
.LDIFF_SYM755=.LDIE_U1 - .Ldebug_info_start
	.long .LDIFF_SYM755
	.byte 9
	.string "Waiting"

	.byte 0,9
	.string "Waiting_Interruptible"

	.byte 1,9
	.string "NotWaiting"

	.byte 2,9
	.string "NotWaiting_SignaledToSatisfyWait"

	.byte 3,9
	.string "NotWaiting_SignaledToSatisfyWaitWithAbandonedMutex"

	.byte 4,9
	.string "NotWaiting_SignaledToAbortWaitDueToMaximumMutexReacquireCount"

	.byte 5,9
	.string "NotWaiting_SignaledToInterruptWait"

	.byte 6,0,7
	.string "_WaitSignalState"

.LDIFF_SYM756=.LTDIE_66 - .Ldebug_info_start
	.long .LDIFF_SYM756
.LTDIE_66_POINTER:

	.byte 13
.LDIFF_SYM757=.LTDIE_66 - .Ldebug_info_start
	.long .LDIFF_SYM757
.LTDIE_66_REFERENCE:

	.byte 14
.LDIFF_SYM758=.LTDIE_66 - .Ldebug_info_start
	.long .LDIFF_SYM758
.LTDIE_68:

	.byte 8
	.string "_WaitableObjectType"

	.byte 1
.LDIFF_SYM759=.LDIE_U1 - .Ldebug_info_start
	.long .LDIFF_SYM759
	.byte 9
	.string "ManualResetEvent"

	.byte 0,9
	.string "AutoResetEvent"

	.byte 1,9
	.string "Semaphore"

	.byte 2,9
	.string "Mutex"

	.byte 3,0,7
	.string "_WaitableObjectType"

.LDIFF_SYM760=.LTDIE_68 - .Ldebug_info_start
	.long .LDIFF_SYM760
.LTDIE_68_POINTER:

	.byte 13
.LDIFF_SYM761=.LTDIE_68 - .Ldebug_info_start
	.long .LDIFF_SYM761
.LTDIE_68_REFERENCE:

	.byte 14
.LDIFF_SYM762=.LTDIE_68 - .Ldebug_info_start
	.long .LDIFF_SYM762
.LTDIE_69:

	.byte 5
	.string "_OwnershipInfo"

	.byte 16,16
.LDIFF_SYM763=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM763
	.byte 2,35,0,0,7
	.string "_OwnershipInfo"

.LDIFF_SYM764=.LTDIE_69 - .Ldebug_info_start
	.long .LDIFF_SYM764
.LTDIE_69_POINTER:

	.byte 13
.LDIFF_SYM765=.LTDIE_69 - .Ldebug_info_start
	.long .LDIFF_SYM765
.LTDIE_69_REFERENCE:

	.byte 14
.LDIFF_SYM766=.LTDIE_69 - .Ldebug_info_start
	.long .LDIFF_SYM766
.LTDIE_70:

	.byte 5
	.string "_WaitedListNode"

	.byte 48,16
.LDIFF_SYM767=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM767
	.byte 2,35,0,6
	.string "_waitInfo"

.LDIFF_SYM768=.LTDIE_65_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM768
	.byte 2,35,16,6
	.string "_waitedObjectIndex"

.LDIFF_SYM769=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM769
	.byte 2,35,40,6
	.string "_previous"

.LDIFF_SYM770=.LTDIE_70_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM770
	.byte 2,35,24,6
	.string "_next"

.LDIFF_SYM771=.LTDIE_70_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM771
	.byte 2,35,32,0,7
	.string "_WaitedListNode"

.LDIFF_SYM772=.LTDIE_70 - .Ldebug_info_start
	.long .LDIFF_SYM772
.LTDIE_70_POINTER:

	.byte 13
.LDIFF_SYM773=.LTDIE_70 - .Ldebug_info_start
	.long .LDIFF_SYM773
.LTDIE_70_REFERENCE:

	.byte 14
.LDIFF_SYM774=.LTDIE_70 - .Ldebug_info_start
	.long .LDIFF_SYM774
.LTDIE_67:

	.byte 5
	.string "_WaitableObject"

	.byte 64,16
.LDIFF_SYM775=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM775
	.byte 2,35,0,6
	.string "_type"

.LDIFF_SYM776=.LTDIE_68 - .Ldebug_info_start
	.long .LDIFF_SYM776
	.byte 2,35,48,6
	.string "_signalCount"

.LDIFF_SYM777=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM777
	.byte 2,35,52,6
	.string "_maximumSignalCount"

.LDIFF_SYM778=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM778
	.byte 2,35,56,6
	.string "_referenceCount"

.LDIFF_SYM779=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM779
	.byte 2,35,60,6
	.string "_name"

.LDIFF_SYM780=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM780
	.byte 2,35,16,6
	.string "_ownershipInfo"

.LDIFF_SYM781=.LTDIE_69_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM781
	.byte 2,35,24,6
	.string "_waitersHead"

.LDIFF_SYM782=.LTDIE_70_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM782
	.byte 2,35,32,6
	.string "_waitersTail"

.LDIFF_SYM783=.LTDIE_70_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM783
	.byte 2,35,40,0,7
	.string "_WaitableObject"

.LDIFF_SYM784=.LTDIE_67 - .Ldebug_info_start
	.long .LDIFF_SYM784
.LTDIE_67_POINTER:

	.byte 13
.LDIFF_SYM785=.LTDIE_67 - .Ldebug_info_start
	.long .LDIFF_SYM785
.LTDIE_67_REFERENCE:

	.byte 14
.LDIFF_SYM786=.LTDIE_67 - .Ldebug_info_start
	.long .LDIFF_SYM786
.LTDIE_65:

	.byte 5
	.string "_ThreadWaitInfo"

	.byte 80,16
.LDIFF_SYM787=.LTDIE_1 - .Ldebug_info_start
	.long .LDIFF_SYM787
	.byte 2,35,0,6
	.string "_thread"

.LDIFF_SYM788=.LTDIE_51_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM788
	.byte 2,35,16,6
	.string "_waitMonitor"

.LDIFF_SYM789=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM789
	.byte 2,35,48,6
	.string "_waitSignalState"

.LDIFF_SYM790=.LTDIE_66 - .Ldebug_info_start
	.long .LDIFF_SYM790
	.byte 2,35,56,6
	.string "_waitedObjectIndexThatSatisfiedWait"

.LDIFF_SYM791=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM791
	.byte 2,35,60,6
	.string "_isWaitForAll"

.LDIFF_SYM792=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM792
	.byte 2,35,64,6
	.string "_waitedCount"

.LDIFF_SYM793=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM793
	.byte 2,35,68,6
	.string "_waitedObjects"

.LDIFF_SYM794=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM794
	.byte 2,35,24,6
	.string "_waitedListNodes"

.LDIFF_SYM795=.LDIE_SZARRAY - .Ldebug_info_start
	.long .LDIFF_SYM795
	.byte 2,35,32,6
	.string "_isPendingInterrupt"

.LDIFF_SYM796=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM796
	.byte 2,35,72,6
	.string "_lockedMutexesHead"

.LDIFF_SYM797=.LTDIE_67_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM797
	.byte 2,35,40,0,7
	.string "_ThreadWaitInfo"

.LDIFF_SYM798=.LTDIE_65 - .Ldebug_info_start
	.long .LDIFF_SYM798
.LTDIE_65_POINTER:

	.byte 13
.LDIFF_SYM799=.LTDIE_65 - .Ldebug_info_start
	.long .LDIFF_SYM799
.LTDIE_65_REFERENCE:

	.byte 14
.LDIFF_SYM800=.LTDIE_65 - .Ldebug_info_start
	.long .LDIFF_SYM800
.LTDIE_51:

	.byte 5
	.string "System_Threading_Thread"

	.byte 152,2,16
.LDIFF_SYM801=.LTDIE_15 - .Ldebug_info_start
	.long .LDIFF_SYM801
	.byte 2,35,0,6
	.string "lock_thread_id"

.LDIFF_SYM802=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM802
	.byte 2,35,16,6
	.string "handle"

.LDIFF_SYM803=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM803
	.byte 2,35,24,6
	.string "native_handle"

.LDIFF_SYM804=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM804
	.byte 2,35,32,6
	.string "name"

.LDIFF_SYM805=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM805
	.byte 2,35,40,6
	.string "name_free"

.LDIFF_SYM806=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM806
	.byte 2,35,48,6
	.string "name_length"

.LDIFF_SYM807=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM807
	.byte 2,35,52,6
	.string "state"

.LDIFF_SYM808=.LTDIE_52 - .Ldebug_info_start
	.long .LDIFF_SYM808
	.byte 2,35,56,6
	.string "abort_exc"

.LDIFF_SYM809=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM809
	.byte 2,35,64,6
	.string "abort_state_handle"

.LDIFF_SYM810=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM810
	.byte 2,35,72,6
	.string "thread_id"

.LDIFF_SYM811=.LDIE_I8 - .Ldebug_info_start
	.long .LDIFF_SYM811
	.byte 2,35,80,6
	.string "debugger_thread"

.LDIFF_SYM812=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM812
	.byte 2,35,88,6
	.string "static_data"

.LDIFF_SYM813=.LDIE_U - .Ldebug_info_start
	.long .LDIFF_SYM813
	.byte 2,35,96,6
	.string "runtime_thread_info"

.LDIFF_SYM814=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM814
	.byte 2,35,104,6
	.string "interruption_requested"

.LDIFF_SYM815=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM815
	.byte 2,35,112,6
	.string "longlived"

.LDIFF_SYM816=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM816
	.byte 2,35,120,6
	.string "threadpool_thread"

.LDIFF_SYM817=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM817
	.byte 3,35,128,1,6
	.string "external_eventloop"

.LDIFF_SYM818=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM818
	.byte 3,35,129,1,6
	.string "apartment_state"

.LDIFF_SYM819=.LDIE_U1 - .Ldebug_info_start
	.long .LDIFF_SYM819
	.byte 3,35,130,1,6
	.string "managed_id"

.LDIFF_SYM820=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM820
	.byte 3,35,132,1,6
	.string "small_id"

.LDIFF_SYM821=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM821
	.byte 3,35,136,1,6
	.string "manage_callback"

.LDIFF_SYM822=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM822
	.byte 3,35,144,1,6
	.string "flags"

.LDIFF_SYM823=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM823
	.byte 3,35,152,1,6
	.string "thread_pinning_ref"

.LDIFF_SYM824=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM824
	.byte 3,35,160,1,6
	.string "priority"

.LDIFF_SYM825=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM825
	.byte 3,35,168,1,6
	.string "owned_mutex"

.LDIFF_SYM826=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM826
	.byte 3,35,176,1,6
	.string "suspended_event"

.LDIFF_SYM827=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM827
	.byte 3,35,184,1,6
	.string "self_suspended"

.LDIFF_SYM828=.LDIE_I4 - .Ldebug_info_start
	.long .LDIFF_SYM828
	.byte 3,35,192,1,6
	.string "thread_state"

.LDIFF_SYM829=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM829
	.byte 3,35,200,1,6
	.string "self"

.LDIFF_SYM830=.LTDIE_51_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM830
	.byte 3,35,208,1,6
	.string "pending_exception"

.LDIFF_SYM831=.LDIE_OBJECT - .Ldebug_info_start
	.long .LDIFF_SYM831
	.byte 3,35,216,1,6
	.string "last"

.LDIFF_SYM832=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM832
	.byte 3,35,224,1,6
	.string "_name"

.LDIFF_SYM833=.LDIE_STRING - .Ldebug_info_start
	.long .LDIFF_SYM833
	.byte 3,35,232,1,6
	.string "_startHelper"

.LDIFF_SYM834=.LTDIE_54_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM834
	.byte 3,35,240,1,6
	.string "_executionContext"

.LDIFF_SYM835=.LTDIE_28_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM835
	.byte 3,35,248,1,6
	.string "_synchronizationContext"

.LDIFF_SYM836=.LTDIE_30_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM836
	.byte 3,35,128,2,6
	.string "_waitInfo"

.LDIFF_SYM837=.LTDIE_65_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM837
	.byte 3,35,136,2,6
	.string "_mayNeedResetForThreadPool"

.LDIFF_SYM838=.LDIE_BOOLEAN - .Ldebug_info_start
	.long .LDIFF_SYM838
	.byte 3,35,144,2,0,7
	.string "System_Threading_Thread"

.LDIFF_SYM839=.LTDIE_51 - .Ldebug_info_start
	.long .LDIFF_SYM839
.LTDIE_51_POINTER:

	.byte 13
.LDIFF_SYM840=.LTDIE_51 - .Ldebug_info_start
	.long .LDIFF_SYM840
.LTDIE_51_REFERENCE:

	.byte 14
.LDIFF_SYM841=.LTDIE_51 - .Ldebug_info_start
	.long .LDIFF_SYM841
	.byte 2
	.string "System.Runtime.CompilerServices.AsyncMethodBuilderCore:Start<CommunityToolkit.Mvvm.Input.AsyncRelayCommand/<AwaitAndThrowIfFailed>d__40>"
	.string "System_Runtime_CompilerServices_AsyncMethodBuilderCore_Start_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_CommunityToolkit_Mvvm_Input_AsyncRelayCommand__AwaitAndThrowIfFailedd__40_"

	.byte 0,0
	.string "System.Runtime.CompilerServices.AsyncMethodBuilderCore:Start<CommunityToolkit.Mvvm.Input.AsyncRelayCommand/<AwaitAndThrowIfFailed>d__40>"
	.xword .Lm_46
	.xword .Lme_46

	.byte 2,118,16,3
	.string "param0"

.LDIFF_SYM842=.LDIE_I - .Ldebug_info_start
	.long .LDIFF_SYM842
	.byte 2,141,16,11
	.string "V_0"

.LDIFF_SYM843=.LTDIE_51_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM843
	.byte 3,141,192,0,11
	.string "V_1"

.LDIFF_SYM844=.LTDIE_28_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM844
	.byte 3,141,200,0,11
	.string "V_2"

.LDIFF_SYM845=.LTDIE_30_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM845
	.byte 3,141,208,0,11
	.string "V_3"

.LDIFF_SYM846=.LTDIE_28_REFERENCE - .Ldebug_info_start
	.long .LDIFF_SYM846
	.byte 3,141,216,0,0

.section ".debug_frame"
.subsection 0

.LDIFF_SYM847=.Lfde37_end - .Lfde37_start
	.long .LDIFF_SYM847
.Lfde37_start:

	.long 0
	.balign 8
	.xword .Lm_46

.LDIFF_SYM848=.Lme_46 - .Lm_46
	.long .LDIFF_SYM848
	.long 0
	.byte 12,31,0,68,14,144,1,157,18,158,17,68,13,29
	.balign 8
.Lfde37_end:

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
