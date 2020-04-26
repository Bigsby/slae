; HelloWorld.asm
; Author: Bigsby


global _start

section .text

_start:
    mov rax, 0x4                    ; write system call
    mov rbx, 0x1                    ; stdout
    mov rcx, message                ; message buffer to write
    mov rdx, mlen                   ; message length
    int 0x80

    mov rax, 1                      ; exit system call
    mov rbx, 0                      ; exit code
    int 0x80

section .data
    message: db "Hello world!"
    mlen:    equ $-message
