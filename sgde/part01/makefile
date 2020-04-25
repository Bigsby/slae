main_debug: main.c
	# -ggdb - build with gdb specific symbols
	gcc -ggdb $? -o $@

main_no_debug: main.c
	gcc $? -o $@

main_stripped: main_no_debug
	# -s - remove all symbols from file
	strip -s -o $@ $?

debug_symbols: main_debug
	# -q - quiet - no gdb unnecessary info
	gdb -q ./$?

debug_clean: main_no_debug
	gdb -q ./$?

debug_stripped: main_stripped
	gdb -q ./$?
	

clean:
	rm main_debug main_no_debug main_stripped


