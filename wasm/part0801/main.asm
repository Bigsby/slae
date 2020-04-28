.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc 
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib  
includelib \masm32\lib\masm32.lib

PrintIntervalMessage MACRO intervalMessage
    invoke StdOut, addr Between
    invoke StdOut, intervalMessage
    invoke StdOut, addr EndString
ENDM

.data 
    PromptMessage db "Enter number in 1-100 range: ", 0
    InvalidRange db "The number is outside the range 1-100", 0
    Between db "Number is between ", 0
    EndString db 13, 10, 0
    Range1to25 db "1 and 25", 0
    Range26to50 db "26 and 50", 0
    Range51to75 db "51 and 75", 0
    Range76to100 db "76 and 100", 0
    UserInput db 10 DUP(10)

.code
start:

    invoke StdOut, addr PromptMessage
    invoke StdIn, addr UserInput, 9
    invoke StripLF, addr UserInput
    invoke atodw, addr UserInput

    .if eax >= 1 && eax <= 25
        PrintIntervalMessage addr Range1to25
    .elseif eax > 25 && eax <= 50
        PrintIntervalMessage addr Range26to50
    .elseif eax > 50 && eax <= 75
        PrintIntervalMessage addr Range51to75
    .elseif eax > 75 && eax <= 100
        PrintIntervalMessage addr Range76to100
    .else
        invoke StdOut, addr InvalidRange
    .endif

    invoke ExitProcess, 0

end start
