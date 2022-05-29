mov ax, 0x7c00
mov ds, ax
mov bx, 0x3536

jmp $   
times 510-($-$$) db 0
db 0x55, 0xaa