
;Stack
mov ax, 0x9000
mov ss, ax

;Our Code is stored in the bootsector
mov ax, cs
mov ds, ax
;At the labeled location
mov ax, code
mov si, ax

;Data Segment
mov ax, 0x8000
mov es, ax

;Data Pointers
mov ax, 0x0000
mov di, ax


begin:
	lodsb
	;mov ah, 0x0e
	;mov bx, 0007
	;int 0x10
	cmp al, 0x00
	je end
	cmp al, '+'
	je increment
	cmp al, '-'
	je decrement
	cmp al, '>'
	je forward
	cmp al, '<'
	je backward
	cmp al, '['
	je gosub
	cmp al, ']'
	je resub
	cmp al, '.'
	je print
	jmp begin

increment:
	mov al, [es:di]
	inc al
	mov [es:di], al
	jmp begin

decrement:
	mov al, [es:di]
	dec al
	mov [es:di], al
	jmp begin

forward:
	inc di
	jmp begin

backward:
	dec di
	jmp begin

gosub:
	push si
	jmp begin

resub:
	mov al, [es:di]
	or al, al
	jz .noreturn
	pop si
	push si
	jmp begin
	.noreturn:
	pop bx
	jmp begin

print:
	mov al, [es:di]
	mov ah, 0x0e
	mov bx, 0007
	int 0x10
	jmp begin

end:

