;
; A boot sector. 
;

mov ah, 0x0e		; BIOS teletype

mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $

;
; Padding and magic BIOS number;
;

times 510-($-$$) db 0	; When compiled, our programm must fit into 512 bytes,
			; with the last two bytes being the magic number,
			; so here, tell our assembly compiler to pad out our
			; program with enough zero bytes (db 0) to bring us to the
			; 510th byte.

dw 0xaa55		; Last two bytes (one word) form the magic number,
			; so BIOS know we are a boot sector.
