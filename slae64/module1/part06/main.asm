global _start

section .text
_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, message
	mov rdx, mLen
	syscall

	mov rax, 60
	mov rdi, 13
	syscall

	
section .data
	message: db "Hello, Bigsby", 0xa
	mLen equ ($-message)
