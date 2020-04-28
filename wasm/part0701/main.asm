.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc 
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib  
includelib \masm32\lib\masm32.lib

.data 
    SampleString db "The string to invert.", 0
    TempString db 2 DUP(0)

.code
start:

    invoke szLen, addr SampleString
    
PrintNextChar:
    xor ebx, ebx
    mov bl, SampleString[eax-1]
    mov TempString, bl

    push eax

    invoke StdOut, addr TempString

    pop eax
    dec eax
    jne PrintNextChar


    invoke ExitProcess, 0

end start
