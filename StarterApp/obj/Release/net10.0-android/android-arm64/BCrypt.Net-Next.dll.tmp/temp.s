.text 0
	.balign 8
jit_code_start:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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

	.byte 62,0,0,0,10,0,0,0,7,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 0
	.balign 8
method_flags_table:

	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
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

	.byte 37,0,0,0,0,0,10,0,0,0,3,0,0,0,4,0,37,0,0,0,0,0,0,0,0,0,8,0,39,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,11,0,0,0,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,2,0,40,0,15,0
	.byte 0,0,0,0,0,0,0,0,0,0,13,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,6,0,38,0,7,0,0,0,9,0
	.byte 0,0,12,0,41,0,14,0,0,0
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

	.byte 62,0,0,0,10,0,0,0,7,0,0,0,2,0,0,0,0,0,10,0,20,0,30,0,40,0,50,0,60,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
	.byte 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
.section ".rodata"
.subsection 1
	.balign 8
unwind_info:
.section ".rodata"
.subsection 0
	.balign 8
class_info_offsets:

	.byte 15,0,0,0,10,0,0,0,2,0,0,0,2,0,0,0,0,0,10,0,48,7,24,56,23,56,24,103,56,24,129,188
	.byte 23,23,24,24

.text 0
	.balign 16
plt:
mono_aot_BCrypt_Net_Next_plt:
	.size mono_aot_BCrypt_Net_Next_plt,.-mono_aot_BCrypt_Net_Next_plt
plt_end:
.section ".rodata"
.subsection 0
	.balign 8
image_table:

	.byte 2,0,0,0,66,67,114,121,112,116,46,78,101,116,45,78,101,120,116,0,65,67,50,65,56,56,65,49,45,66,56,67
	.byte 52,45,52,50,66,70,45,56,52,55,52,45,55,53,65,53,65,50,53,55,56,52,54,65,0,0,49,101,49,49,98,101
	.byte 48,52,98,54,50,56,56,52,52,51,0,0,0,0,0,0,1,0,0,0,4,0,0,0,0,0,0,0,3,0,0,0
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
	.local mono_aot_BCrypt_Net_Next_got
	.type mono_aot_BCrypt_Net_Next_got,@object
mono_aot_BCrypt_Net_Next_got:
	.skip 208
got_end:
.section ".rodata"
.subsection 0
	.balign 8
blob:

	.byte 0,11,0,36,38,45,50,52,32,47,48,55,8,55,9,55,10,55,11,55,12,55,128,243,6,80,6,89,6,91,6,92
	.byte 6,96,6,128,249,6,83,6,128,165,6,128,142,6,128,141,0,128,144,16,0,0,1,4,128,228,30,32,56,0,8,193
	.byte 0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,12,128,160,128,144,0,0,8,193,0,2,204,193,0,2,201,193
	.byte 0,2,165,193,0,2,199,193,0,2,164,193,0,2,169,193,0,2,164,193,0,2,163,193,0,2,162,193,0,2,160,193
	.byte 0,2,158,193,0,2,157,4,128,160,48,0,0,8,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,12,128
	.byte 160,128,144,0,0,8,193,0,2,204,193,0,2,201,193,0,2,165,193,0,2,199,193,0,2,164,193,0,2,169,193,0
	.byte 2,164,193,0,2,163,193,0,2,162,193,0,2,160,193,0,2,158,193,0,2,157,4,128,204,53,16,16,0,1,193,0
	.byte 2,204,193,0,2,201,193,0,2,200,193,0,2,199,24,128,144,20,0,0,4,193,0,2,47,193,0,2,46,193,0,2
	.byte 49,193,0,2,199,193,0,2,48,193,0,2,60,193,0,2,52,193,0,2,76,193,0,2,77,193,0,2,78,193,0,2
	.byte 79,193,0,2,80,193,0,2,81,193,0,2,82,193,0,2,83,193,0,2,84,193,0,2,85,193,0,2,86,193,0,2
	.byte 87,193,0,2,88,193,0,2,89,193,0,2,90,193,0,2,51,193,0,2,91,12,128,160,128,144,0,0,8,193,0,2
	.byte 204,193,0,2,201,193,0,2,165,193,0,2,199,193,0,2,164,193,0,2,169,193,0,2,164,193,0,2,163,193,0,2
	.byte 162,193,0,2,160,193,0,2,158,193,0,2,157,4,128,136,16,146,224,0,1,193,0,2,204,193,0,2,201,193,0,2
	.byte 200,193,0,2,199,4,128,128,32,0,0,4,193,0,2,204,193,0,2,201,193,0,2,200,193,0,2,199,4,128,144,40
	.byte 0,1,1,193,0,6,189,193,0,6,188,193,0,6,190,193,0,2,199,4,128,144,88,0,1,1,193,0,6,189,193,0
	.byte 6,188,193,0,6,190,193,0,2,199,4,128,144,128,144,0,1,1,193,0,6,189,193,0,6,188,193,0,6,190,193,0
	.byte 2,199,4,128,144,130,16,0,1,1,193,0,6,189,193,0,6,188,193,0,6,190,193,0,2,199,4,128,144,144,16,0
	.byte 1,1,193,0,6,189,193,0,6,188,193,0,6,190,193,0,2,199,115,103,101,110,0
.section ".rodata"
.subsection 1
runtime_version:
	.string ""
.section ".rodata"
.subsection 1
assembly_guid:
	.string "AC2A88A1-B8C4-42BF-8474-75A5A257846A"
.section ".rodata"
.subsection 1
assembly_name:
	.string "BCrypt.Net-Next"
.data 0
	.balign 8
mono_aot_file_info:
	.globl mono_aot_file_info
	.type mono_aot_file_info,@object

	.long 187,0
	.balign 8
	.xword mono_aot_BCrypt_Net_Next_got
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

	.long 25,25,208,200,1,62,0,32
	.long 374417919,0,562,128,8,8,7,9
	.long 8388607,0,4,25,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0,0,0,0
	.long 0,0,0,0,0
	.byte 84,178,60,148,118,253,222,15,78,43,234,132,76,41,116,34
.text 1
	.balign 8
mem_end:

.section	.note.GNU-stack,"",@progbits
