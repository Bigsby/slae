.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc 
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib  
includelib \masm32\lib\masm32.lib

.data 
    MessageToPrint db "This is the message", 13, 10, 0

.code
start:

    xor ecx, ecx
    mov cx, 20

    loopStart:
        push ecx
        invoke StdOut, addr MessageToPrint
        pop ecx
        loop loopStart

    invoke ExitProcess, 0

end start
