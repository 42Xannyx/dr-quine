.section .rodata

source:
    .ascii ".section .rodata\n\nsource:\n    .ascii \".\"\n.equ len, . - source\n\n.section .text\n.global _start\n\n_start:\nmov $1, %rax\nmov $1, %rdi\nmov $source, %rsi\nmov $len, %rdx\nsyscall\nmov $60, %rax\nxor %rdi, %rdi\nsyscall\n"

.equ len, . - source

.section .text
.global _start

_start:
mov $1, %rax
mov $1, %rdi
mov $source, %rsi
mov $len, %rdx
syscall
mov $60, %rax
xor %rdi, %rdi
syscall
