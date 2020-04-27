.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\masm32.inc
include \masm32\include\kernel32.inc 

includelib \masm32\lib\masm32.lib
includelib \masm32\lib\kernel32.lib  


.data 
    TheMessage db "This is the message", 0

.code
start:
    invoke StdOut, addr TheMessage
    invoke ExitProcess, 0
end start
