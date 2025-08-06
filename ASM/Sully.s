.section .rodata
filename: .asciz "Sully_%d.s"
file_mode: .asciz "w"
format_string:
.asciz ".section .rodata%1$cfilename: .asciz %2$cSully_%%d.s%2$c%1$cfile_mode: .asciz %2$cw%2$c%1$c%1$cformat_string:%1$c.asciz %2$c%3$s%2$c%1$c%1$c1$c.section .data%1$cvalue: .int 5%1$c.section .bss%1$c.lcomm filename_buffer, 32%1$c%1$c.section .text%1$c.global main%1$cmain:%1$cpushq %%rbp%1$cmovq %rsp, %%rbp%1$cmovq $filename, %%rdi%1$cmovq $file_mode, %%rsi%1$ccall fopen%1$cmovq %rax, %%r12%1$cmovq %rax, %%rdi%1$cmovq $format_string, %%rsi%1$cmovq $10, %%rdx%1$cmovq $34, %%rcx%1$cmovq $format_string, %%r8%1$cmovq $0, %%rax%1$ccall fprintf%1$cmovq %%r12, %%rdi%1$ccall fclose%1$cmovq $0, %%rax%1$cmovq %%rbp, %%rsp%1$cpopq %%rbp%1$cret%1$c.endm%1$c%1$c"

.section .data
value: .int 5

.section .bss
.lcomm filename_buffer, 32

.section .text
.global main
main:
cmpq $0, value
je return
push %rbp
mov %rsp, %rbp
mov $filename_buffer, %rdi
mov $filename, %rsi
mov value, %rdx
mov $0, %rax
call sprintf
mov $filename_buffer, %rdi
mov $file_mode, %rsi
call fopen
mov %rax, %r12
mov %rax, %rdi
mov $format_string, %rsi
mov $10, %rdx
mov $34, %rcx
mov $format_string, %r8
mov $0, %rax
call fprintf
mov %r12, %rdi
call fclose
mov $0, %rax
mov %rbp, %rsp
pop %rbp
ret

return:
ret
