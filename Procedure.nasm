global _start

section .text

PrintMessageProc:
    ; Print message
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, message
    mov edx, mlen
    int 0x80
    ret

_start:
    mov ecx, 0x10

PrintMessageLoop:
    push rcx
    call PrintMessageProc
    pop rcx
    loop PrintMessageLoop

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

section .data
    message: db "Hello, Bigsby!", 0x0a
    mlen equ $-message
