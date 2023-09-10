mov ax, 0b800h
mov ds, ax
mov byte [0x00], '0'
mov byte [0x02], '1'
mov byte [0x04], '2'
mov byte [0x06], '3'
mov byte [0x08], '4'
mov byte [0x0a], '5'
mov byte [0x0c], '6'
mov byte [0x0e], '7'
mov byte [0x10], '8'
mov byte [0x12], '9'
mov byte [0x14], 'A'
mov byte [0x16], 'B'
mov byte [0x18], 'C'
mov byte [0x1a], 'D'
mov byte [0x1e], 'a'
mov byte [0x20], 'b'
mov byte [0x22], 'c'
mov byte [0x24], 'd'

jmp $

times 510-($-$$) db 0
db 0x55, 0xaa