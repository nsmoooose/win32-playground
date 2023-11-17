all: boot.bin


boot.bin:
	nasm boot.asm -f bin -o $@

run:
	qemu-system-i386 -drive format=raw,file=boot.bin

clean:
	$(RM) boot.bin
