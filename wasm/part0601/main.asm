.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc 
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib  
includelib \masm32\lib\masm32.lib

PrintOnScreen MACRO location
    invoke StdOut, location
ENDM

.data 
    EnterNumber db "Enter nubmer: ", 0
    NumberEnteredInText db 50 DUP(0)

.code
start:
    
    invoke StdOut, addr EnterNumber
    invoke StdIn, addr NumberEnteredInText, 49

    PrintOnScreen addr NumberEnteredInText

    mov eax, 0
    test eax, eax

    PrintOnScreen addr NumberEnteredInText

    invoke ExitProcess, 0

end start
