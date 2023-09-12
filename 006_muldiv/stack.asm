mov dx, 0x0009
mov ax, 0x0006
mov cx, 0x0002
push ax
mov ax, 0x0009
mov dx, 0x0000
div cx
mov bx, ax
pop ax
div cx

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa