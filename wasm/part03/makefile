run: main.exe
	$<

main.exe: main.obj
	link /subsystem:console /defaultlib:kernel32.lib $<

main.obj: main.asm
	ml /c /coff $<
