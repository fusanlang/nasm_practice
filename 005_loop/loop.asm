mov cx, 100
mov dx, 0x0000
round:
    add dx, cx
    loop round

jmp $
times 510-($-$$) db 0
db 0x55, 0xaa