main: main.o
	ld $< -o $@

main.o: main.asm
	nasm -f elf64 $< -o $@

run: main
	./$<

clean:
	rm main.o main

