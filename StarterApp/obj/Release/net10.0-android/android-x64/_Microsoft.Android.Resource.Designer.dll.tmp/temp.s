.text 0
	.balign 8
jit_code_start:

	.byte 144,144,144,144,144,144,144,144,144,144,144,144,144,144,144,144
.text 0
	.balign 8
jit_code_end:

	.byte 144,144,144,144
.section ".data.rel.ro"
.subsection 0
	.balign 8
method_addresses:
	.local method_addresses
	.type method_addresses,@object
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
call method_addresses
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

	.byte 52,0,0,0,10,0,0,0,6,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
method_flags_table:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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

	.byte 19,0,5,0,21,0,0,0,0,0,9,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,20,0,8,0
	.byte 0,0,0,0,0,0,0,0,0,0,3,0,0,0,11,0,0,0,2,0,0,0,6,0,19,0,0,0,0,0,0,0
	.byte 0,0,10,0,0,0,4,0,0,0,0,0,0,0,7,0,0,0,12,0,0,0,13,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
got_info_offsets:

	.byte 25,0,0,0,10,0,0,0,3,0,0,0,2,0,0,0,0,0,10,0,20,0,1,2,1,1,1,1,1,1,1,1
	.byte 13,2,2,2,2,3,2,2,2,2,34,3,2,3,3
.section ".rodata"
.subsection 0
	.balign 8
ex_info_offsets:

	.byte 52,0,0,0,10,0,0,0,6,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 1
	.balign 8
unwind_info:
.section ".rodata"
.subsection 0
	.balign 8
class_info_offsets:

	.byte 13,0,0,0,10,0,0,0,2,0,0,0,2,0,0,0,0,0,10,0,48,7,23,23,23,23,23,23,23,23,129,6
	.byte 23,23

.text 0
	.balign 16
plt:
mono_aot__Microsoft_Android_Resource_Designer_plt:
	.size mono_aot__Microsoft_Android_Resource_Designer_plt,.-mono_aot__Microsoft_Android_Resource_Designer_plt
plt_end:
.section ".rodata"
.subsection 0
	.balign 8
image_table:

	.byte 2,0,0,0,95,77,105,99,114,111,115,111,102,116,46,65,110,100,114,111,105,100,46,82,101,115,111,117,114,99,101,46
	.byte 68,101,115,105,103,110,101,114,0,67,68,52,54,55,57,53,55,45,55,66,70,52,45,52,70,51,68,45,56,49,54,49
	.byte 45,66,50,65,69,70,52,49,66,65,49,49,70,0,0,49,101,57,51,54,48,100,54,54,50,57,48,53,55,101,101,0
	.byte 1,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,83,121,115,116,101,109,46,80,114,105,118,97
	.byte 116,101,46,67,111,114,101,76,105,98,0,67,57,50,50,49,66,48,68,45,56,66,52,69,45,52,53,69,70,45,65,55
	.byte 66,70,45,57,65,54,69,48,67,67,49,56,67,51,50,0,0,55,99,101,99,56,53,100,55,98,101,97,55,55,57,56
	.byte 101,0,0,0,0,0,0,0,1,0,0,0,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
weak_field_indexes:

	.byte 0,0,0,0
.bss 0
	.balign 8
	.local mono_aot__Microsoft_Android_Resource_Designer_got
	.type mono_aot__Microsoft_Android_Resource_Designer_got,@object
mono_aot__Microsoft_Android_Resource_Designer_got:
	.skip 208
got_end:
.section ".rodata"
.subsection 0
	.balign 8
blob:

	.byte 0,11,0,36,38,45,50,52,32,47,48,55,8,55,9,55,10,55,11,55,12,55,128,243,6,80,6,89,6,91,6,92
	.byte 6,96,6,128,249,6,83,6,128,165,6,128,142,6,128,141,0,128,144,16,0,0,1,4,128,152,16,0,0,1,193,0
	.byte 2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2
	.byte 200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144,16
	.byte 0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0
	.byte 2,201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2
	.byte 199,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193
	.byte 0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0
	.byte 2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144
	.byte 16,0,0,1,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144,16,0,0,1,193,0,2,204,193
	.byte 0,2,201,193,0,2,200,193,0,2,199,115,103,101,110,0
.section ".rodata"
.subsection 1
runtime_version:
	.string ""
.section ".rodata"
.subsection 1
assembly_guid:
	.string "CD467957-7BF4-4F3D-8161-B2AEF41BA11F"
.section ".rodata"
.subsection 1
assembly_name:
	.string "_Microsoft.Android.Resource.Designer"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 187,0
	.balign 8
	.quad mono_aot__Microsoft_Android_Resource_Designer_got
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad jit_code_start
	.balign 8
	.quad jit_code_end
	.balign 8
	.quad method_addresses
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad blob
	.balign 8
	.quad class_name_table
	.balign 8
	.quad class_info_offsets
	.balign 8
	.quad method_info_offsets
	.balign 8
	.quad ex_info_offsets
	.balign 8
	.quad extra_method_info_offsets
	.balign 8
	.quad extra_method_table
	.balign 8
	.quad got_info_offsets
	.balign 8
	.quad 0
	.balign 8
	.quad image_table
	.balign 8
	.quad weak_field_indexes
	.balign 8
	.quad method_flags_table
	.balign 8
	.quad mem_end
	.balign 8
	.quad assembly_guid
	.balign 8
	.quad runtime_version
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad 0
	.balign 8
	.quad assembly_name
	.balign 8
	.quad plt
	.balign 8
	.quad plt_end
	.balign 8
	.quad unwind_info
	.balign 8
	.quad unbox_trampolines
	.balign 8
	.quad unbox_trampolines_end
	.balign 8
	.quad unbox_trampoline_addresses

	.long 25,25,208,200,1,52,0,32
	.long 374417919,0,331,128,8,8,7,9
	.long 8388607,0,5,25,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.byte 249,115,214,69,66,183,149,206,155,142,227,173,73,86,102,95
.text 1
	.balign 8
mem_end:

.section	.note.GNU-stack,"",@progbits
