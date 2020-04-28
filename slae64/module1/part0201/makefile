run: main
	./$<

main: main.o
	ld $< -o $@

main.o: main.asm
	nasm -f elf64 $< -o $@

connect:
	nc localhost 4444

clean:
	rm main.o main
