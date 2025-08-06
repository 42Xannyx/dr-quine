.section .rodata
filename: .asciz "Grace_kid.s"
file_mode: .asciz "w"

format_string:#kanker3
.asciz ".section .rodata%1$cfilename: .asciz %2$cGrace_kid.s%2$c%1$cfile_mode: .asciz %2$cw%2$c%1$c%1$cformat_string:#kanker3%1$c.asciz %2$c%3$s%2$c%1$c%1$c.macro DEFINE_MAIN%1$c.global main%1$cmain:%1$cpushq %%rbp%1$cmovq %rsp, %%rbp%1$cmovq $filename, %%rdi%1$cmovq $file_mode, %%rsi%1$ccall fopen%1$cmovq %rax, %%r12%1$cmovq %rax, %%rdi%1$cmovq $format_string, %%rsi%1$cmovq $10, %%rdx%1$cmovq $34, %%rcx%1$cmovq $format_string, %%r8%1$cmovq $0, %%rax%1$ccall fprintf%1$cmovq %%r12, %%rdi%1$ccall fclose%1$cmovq $0, %%rax%1$cmovq %%rbp, %%rsp%1$cpopq %%rbp%1$cret%1$c.endm%1$c%1$c.section .text%1$cDEFINE_MAIN%1$c"

.macro DEFINE_MAIN
.global main
main:
pushq %rbp
movq %rsp, %rbp
movq $filename, %rdi
movq $file_mode, %rsi
call fopen
movq %rax, %r12
movq %rax, %rdi
movq $format_string, %rsi
movq $10, %rdx
movq $34, %rcx
movq $format_string, %r8
movq $0, %rax
call fprintf
movq %r12, %rdi
call fclose
movq $0, %rax
movq %rbp, %rsp
popq %rbp
ret
.endm

.section .text
DEFINE_MAIN
