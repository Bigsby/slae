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
    var1:   db 0xaa
    var2:   db 0xbb, 0xcc, 0xdd
    var3:   dw 0xee
    var4:   dd 0xaabbccdd
    var5:   dd 0x112233
    var6:   times 6 db 0xff

    message: db "Hello world!"
    mlen    equ $-message


section .bss
    var7:   resb 100
    var8:   resw 20

