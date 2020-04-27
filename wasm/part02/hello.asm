.386
.model flat, stdcall
option casemap:none

extrn MessageBoxA@16 : PROC
extrn ExitProcess@4 : PROC

.data
    HelloWorld db "Hello, Bigsby!", 0
    BoxTitle db "Bisby message", 0

.code
start:
   mov eax, 1
   push eax
   mov eax, 0
   lea ebx, BoxTitle
   push ebx
   lea ebx, HelloWorld
   push ebx
   push eax
   call MessageBoxA@16

   mov eax, 0
   push eax
   call ExitProcess@4

end start
