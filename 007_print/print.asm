NULL      equ 0x00
SETCHAR   equ 0x07
VIDEOMEM  equ 0xb800
STRINGLEN equ 0xffff

section code align=16 vstart=0x7c00

    mov si, Sayhello
    xor di, di
    call PrintString
    mov si, Saybye
    call PrintString
    jmp End

PrintString:
    .setup:
    mov ax, VIDEOMEM
    mov es, ax
    mov bh, SETCHAR
    mov cx, STRINGLEN

    .PrintChar:
    mov bl, [ds:si]
    inc si
    mov [es:di], bl
    inc di
    mov [es:di], bh
    inc di
    or bl, NULL
    jz .ret
    loop .PrintChar
    
    .ret:
    ret

Sayhello db 'Hi there, I am Print asm'
         db 0x00
Saybye   db 'bye'
         db 0x00

End: jmp End
times 510-($-$$) db 0
db 0x55, 0xaa