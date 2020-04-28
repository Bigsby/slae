.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc 
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib  
includelib \masm32\lib\masm32.lib

PrintOnScreen MACRO location, count
    LOCAL print_loop
    xor ecx, ecx
    mov ecx, count
    print_loop:
        push ecx
        invoke StdOut, location
        pop ecx
        loop print_loop
ENDM

.data 
    FirstString db "This is the first string", 13, 10, 0
    SecondString db "This is the second String", 13,10, 0

.code
start:

    PrintOnScreen addr FirstString, 20
    PrintOnScreen addr SecondString, 10


    invoke ExitProcess, 0

end start
