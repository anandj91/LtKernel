build: boot_sect.asm
	nasm boot_sect.asm -f bin -o boot_sect.bin

read: build
	od -t x1 -A n boot_sect.bin

clean:
	rm -f boot_sect.bin