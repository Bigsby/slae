global _start

section .text
_start:
    
    ; Memory to memory
    cld         ; clear direction flag
    lea rsi, [message]
    lea rdi, [copy]
    movsq

    cld
    lea rsi, [message]

    ; Clear destination
    xor rax, rax
    mov qword [copy], rax

    lea rdi, [copy]
    mov rcx, len
    rep movsb


    ; Register to memory
    mov rax, 0x0123456789abcdef
    lea rdi, [var1]
    stosq

    ; Memory to register
    xor rax, rax
    lea rsi, [var1]
    lodsq

    mov rax, 0x3c
    mov rdi, 0
    syscall


	
section .data
	message: db "Hello, Bigsby", 0xa
	mLen equ ($-message)

section .bss
    copy: resb  len
    var1: resb  8
