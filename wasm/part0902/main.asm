.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc 
include \masm32\include\masm32.inc

includelib \masm32\lib\kernel32.lib  
includelib \masm32\lib\masm32.lib

.data 
    
    FirstMessage db "First Message", 13, 10, 0
    SecondMessage db "Second Message", 13, 10, 0
    counter1 DWORD 0
    counter2 DWORD 0

.code
start:

    mov counter1, 10

    .while ( counter1 > 0 )
        invoke StdOut, addr FirstMessage
        dec counter1
        .break .if ( counter1 == 4 )
    .endw

    mov counter2, 5
    .repeat
        invoke StdOut, addr SecondMessage
        dec counter2
    .until ( counter2 == 0 )
    
    invoke ExitProcess, 0

end start
