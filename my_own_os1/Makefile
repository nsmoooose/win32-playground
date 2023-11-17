all: boot.bin


boot.bin:
	nasm boot.s -f bin -o $@

run:
	qemu-system-i386 -drive format=raw,file=boot.bin

clean:
	$(RM) boot.bin
