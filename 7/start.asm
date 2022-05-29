mov ax, 0x0b800
mov ds, ax

mov byte [0x00], 'H'
mov byte [0x01], 0x0c
mov byte [0x02], 'e'
mov byte [0x04], 'l'
mov byte [0x06], 'l'
mov byte [0x08], 'o'
mov byte [0x0a], ','
mov byte [0x0c], 'W'
mov byte [0x0e], 'o'
mov byte [0x10], 'r'
mov byte [0x12], 'l'
mov byte [0x14], 'd'
mov byte [0x16], '!'

jmp $

times 510-($-$$) db 0
db 0x55, 0xaa