#! /bin/bash

echo '[+] Assembling with Nasm ... '
nasm -f elf -o $1.o $1.nasm

echo '[+] Linking ... '
ld -o $1 $1.o

echo '[+] Done!'

