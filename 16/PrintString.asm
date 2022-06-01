section code align=16 vstart=0x7c00

    mov si, SayHello
    xor di, di
    call PrintString

    mov si, SayByeBye
    call PrintString
    jmp END

PrintString:
    .setup:
    mov ax, 0xb800
    mov es, ax

    mov bh, 0x07
    mov cx, 0xffff

    .printchar:
    mov bl, [ds:si]
    inc si
    mov [es:di], bl
    inc di
    mov [es:di], bh
    inc di
    or bl, 0x00
    jz .return
    loop .printchar
    .return:
    ret

END: jmp END

SayHello db 'Hello!'
         db 0x00
SayByeBye db 'ByeBye!'
          db 0x00

;循环即补0
jmp $
times 510-($-$$) db 0
db 0x55, 0xaa