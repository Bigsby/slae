.386
.model flat, stdcall
option casemap :none

include \masm32\include\windows.inc
include \masm32\include\kernel32.inc 
include \masm32\include\user32.inc

includelib \masm32\lib\kernel32.lib  
includelib \masm32\lib\user32.lib


.data 
    TheMessage db "This is the message", 0
    TheTitle db "The title", 0

.code
start:
    invoke MessageBox, NULL, addr TheMessage, addr TheTitle, MB_OK
    invoke ExitProcess, 0
end start
