.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc 
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib  
includelib \masm32\lib\masm32.lib


ConcatStrings PROTO :DWORD, :DWORD, :DWORD

.data 
    String1Prompt db "First String: ", 0
    String2Prompt db "Second String: ", 0
    OutputInfo db "The result is: ", 0
    String1 db 100 DUP(0)
    String2 db 100 DUP(0)
    FinalString db 200 DUP(0)

.code
start:
    
    invoke StdOut, addr String1Prompt
    invoke StdIn, addr String1, 99
    invoke StdOut, addr String2Prompt
    invoke StdIn, addr String2, 99

    invoke StripLF, addr String1
    invoke StripLF, addr String2

    invoke ConcatStrings, addr String1, addr String2, addr FinalString

    invoke StdOut, addr OutputInfo
    invoke StdOut, addr FinalString

    invoke ExitProcess, 0


    ConcatStrings PROC Input1:DWORD, Input2:DWORD, Output:DWORD

    invoke szappend, Output, Input1, 0
    invoke szappend, Output, Input2, eax
    ret

    ConcatStrings endp

end start
