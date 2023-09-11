mov bx, 0x0001
mov ax, 0xf000
mov dx, 0x0010
mov cx, 0x1000
add ax, cx
adc bx, dx

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa