org 0x7C00                      ; BIOS loads our programm at this address
bits 16                         ; We're working at 16-bit mode here

start:
	cli                         ; Disable interrupts. Nothing should be able to
                                ; interupt this program. It is the only one running!
	mov si, msg                 ; SI now points to our message
	mov ah, 0x0E                ; Indicate BIOS we're going to print chars
.loop:
	lodsb                       ; Loads SI into AL and increments SI [next char]
	or al, al                   ; Checks if the end of the string
	jz halt                     ; Jump to halt if the end
	int 0x10                    ; Otherwise, call interrupt for printing the char
	jmp .loop                   ; Next iteration of the loop

halt:
	hlt                         ; CPU command to halt the execution. The CPU will not process
                                ; any software calls after this point.

msg:
	db "Hello, World!", 0       ; Our actual message to print. The db instruction will print
								; these characters into the binary file.

times 510 - ($ - $$) db 0       ; Repeat the "db 0" command until we have filled the binary
                                ; file with 0 up to position 509. $ and $$ is evaluates to 
								; the current assembly position.
dw 0xAA55                       ; Byte at 510 and 511 must be 0xAA55 in order for
                                ; BIOS to be able to detect that this is a boot loader
								; program.
