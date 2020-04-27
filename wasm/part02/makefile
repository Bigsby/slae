run: hello.exe
	$<

hello.exe: hello.obj
	link /subsystem:windows /defaultlib:kernel32.lib /defaultlib:user32.lib $<

hello.obj: hello.asm
	ml /c /coff $<

