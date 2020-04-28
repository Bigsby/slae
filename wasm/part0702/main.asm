.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc 
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib  
includelib \masm32\lib\masm32.lib

.data 
    FirstString db "This is the first string", 13, 10, 0
    SecondString db "This is the second String", 13,10, 0

.code
start:

    mov eax, 20

    loop1:
        push eax
        invoke StdOut, addr FirstString
        pop eax
        dec eax
        jnz loop1

    mov eax, 10
    loop2:
        push eax
        invoke StdOut, addr SecondString
        pop eax
        dec eax
        jnz loop2


    invoke ExitProcess, 0

end start
