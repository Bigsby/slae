; HelloWorld.asm
; Author: Bigsby


global _start

section .text

_start:
    mov eax, 0x4                    ; write system call
    mov ebx, 0x1                    ; stdout
    mov ecx, message                ; message buffer to write
    mov edx, mlen                   ; message length
    int 0x80

    mov eax, 1                      ; exit system call
    mov ebx, 0                      ; exit code
    int 0x80

section .data
    message: db "Hello world!"
    mlen:    equ $-message
