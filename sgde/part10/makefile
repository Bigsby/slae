debug: main
	gdb -q $<

run: main
	./$<

main: main.c
	gcc -ggdb -o $@ $<

