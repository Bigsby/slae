global _start

section .text
_start:
    mov al, 0x10
    and al, 0x01

    and byte [var1], 0xaa
    and word [var2], 0x1122

    mov al, 0x10
    or al, 0x01

    or byte [var1], 0xaa

    mov eax, 0
    or eax, 0x0

    xor dword [var3], 0x11223344
    xor dword [var3], 0x11223344

    mov eax, 0xffffffff
    not eax
    not eax

    mov eax, 1
    mov ebx, 0
    int 0x80

section .data
    var1    db      0x11
    var2    dw      0x1122
    var3    dd      0x11223344
