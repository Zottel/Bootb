[BITS 16]      ; 16 bit code generation
[ORG 0x7C00]   ; Origin location


%include 'interpreter.asm'


jmp $

hlt

%include 'code.asm'


times 510-($-$$) db 0	; Fill the rest with zeros
dw 0xAA55		; Boot loader signature
