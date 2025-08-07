.section .rodata
filename: .asciz "Sully_%d.s"
file_mode: .asciz "w"
compile_cmd_format:
.asciz "gcc Sully_%d.s -o Sully_%d && ./Sully_%d"
format_string:
.asciz ".section .rodata%1$cfilename: .asciz %2$cSully_%%d.s%2$c%1$cfile_mode: .asciz %2$cw%2$c%1$ccompile_cmd_format:%1$c.asciz %2$cgcc Sully_%%d.s -o Sully_%%d && ./Sully_%%d%2$c%1$cformat_string:%1$c.asciz %2$c%3$s%2$c%1$c%1$c.section .data%1$cvalue: .int %4$d%1$c.section .bss%1$c.lcomm filename_buffer, 32%1$c.lcomm buffer, 128%1$c%1$c.section .text%1$c.global main%1$cmain:%1$ccmp $0, value%1$cjl return%1$cpush %%rbp%1$cmov %%rsp, %rbp%1$cmov $filename_buffer, %%rdi%1$cmov $filename, %%rsi%1$cmov value, %%rdx%1$cmov $0, %%rax%1$ccall sprintf%1$cmov $filename_buffer, %%rdi%1$cmov $file_mode, %%rsi%1$ccall fopen%1$cmov %rax, %%r12%1$cmov %rax, %%rdi%1$cmov $format_string, %%rsi%1$cmov $10, %%rdx%1$cmov $34, %%rcx%1$cmov $format_string, %%r8%1$cmov value, %r9%1$csub $1, %r9%1$cmov $0, %%rax%1$ccall fprintf%1$cmov %%r12, %%rdi%1$ccall fclose%1$cmov $buffer, %rdi%1$cmov $compile_cmd_format, %rsi%1$cmov value, %rdx%1$cmov value, %rcx%1$cmov value, %r8%1$cmov $0, %rax%1$ccall sprintf%1$cmov $buffer, %rdi%1$ccall system%1$cmov $0, %%rax%1$cmov %%rbp, %%rsp%1$cpop %%rbp%1$cret%1$c%1$creturn:%1$cret%1$c"

.section .data
value: .int 5
.section .bss
.lcomm filename_buffer, 32
.lcomm buffer, 128

.section .text
.global main
main:
cmp $0, value
jle return
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
mov value, %r9
sub $1, %r9
mov $0, %rax
call fprintf
mov %r12, %rdi
call fclose
mov $buffer, %rdi
mov $compile_cmd_format, %rsi
mov value, %rdx
mov value, %rcx
mov value, %r8
mov $0, %rax
call sprintf
mov $buffer, %rdi
call system
mov $0, %rax
mov %rbp, %rsp
pop %rbp
ret

return:
ret
