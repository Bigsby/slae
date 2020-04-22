global _start

section .text

_start:
    jmp Begin

NeverExecute:
    mov eax, 0x10
    xor ebx, ebx

Begin:
    mov eax, 0x5

PrintHW:
    push rax

    ; Print mesageusing write syscall
    mov eax, 0x4
    mov ebx, 0x1
    mov ecx, message
    mov edx, menlen
    int 0x80

    pop rax
    dec rax
    jnz PrintHW

    mov eax, 0x1
    mov ebx, 0x0
    int 0x80

message:
    db "Hello, Bigsby!", 0x0a
    menlen equ $-message

