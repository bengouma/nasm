    global _main

    section .text
_main:
    mov rax, 0x2000004
    mov rdi, 1
    mov rsi, str
    mov rdx, str.len
    syscall

    mox rax, 0x2000001
    xor rdi, rdi
    syscall

    section .data
str: db     "Hello, World"
.len: equ   $ - str
