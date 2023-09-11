;无进位
mov ax, 0x0001
mov bx, 0x0002
add ax, bx
;有进位
mov ax, 0xf000
mov bx, 0x1000
add ax, bx
;无借位
mov cx, 0x0003
mov dx, 0x0002
sub cx, dx
;有借位
mov cx, 0x0001
mov dx, 0x0002
sub cx, dx

flag: jmp flag
times 510-($-$$) db 0
db 0x55, 0xaa