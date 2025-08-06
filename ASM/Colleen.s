.section .rodata
format_string:
.asciz ".section .rodata%1$cformat_string:%1$c.asciz %2$c%3$s%2$c%1$c%1$c.section .text%1$c.global main%1$c%1$cmain:%1$cpushq %%rbp%1$cmovq %%rsp, %%rbp%1$cmovq $format_string, %%rdi%1$cmovq $10, %%rsi%1$cmovq $34, %%rdx%1$cmovq $format_string, %%rcx%1$cmov $0, %%rax%1$ccall printf%1$cmov $0, %%rax%1$cleave%1$cret%1$c"

.section .text
.global main

main:
pushq %rbp
movq %rsp, %rbp
movq $format_string, %rdi
movq $10, %rsi
movq $34, %rdx
movq $format_string, %rcx
mov $0, %rax
call printf
mov $0, %rax
leave
ret
