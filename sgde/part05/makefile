run: main
	gdb -q ./$<

main: main.c
	gcc -ggdb -o $@ $<

clean:
	rm main
