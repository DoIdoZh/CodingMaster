section code align=16 vstart=0x7c00

    mov si, SayHello ; 将SayHello这段字符串的开始地址给si
    xor di, di ; 将di清零
    call PrintString ; 调用PrintString函数

    mov si, SayByeBye ; 将SayByeBye这段字符串的开始地址给si
    call PrintString ; 调用PrintString函数
    jmp END ; 执行完后，跳转到最后

PrintString: ; 标号
    .setup: ; 伪指令，用来标号
    mov ax, 0xb800 ; 0xb800文本模式下显存起始地址
    mov es, ax ; 初始化段地址

    mov bh, 0x0c ; 初始化字符属性
    mov cx, 0xffff ; 设置循环次数

    .printchar: ; 伪指令，用来标号
    mov bl, [ds:si] ; 从内存中取字符，复制到bl寄存器
    inc si ; 偏移地址自增
    mov [es:di], bl ; 将bl寄存器中的字符值复制到显存地址中
    inc di ; 显存地址自增
    mov [es:di], bh ; 字符属性复制到显存地址中
    inc di ; 显存地址自增
    or bl, 0x00 ; 将0与bl或起来
    jz .return ; 零标志位为零条状
    loop .printchar ; 循环指令
    .return: ; 伪指令，用来标号
    ret ; return

END: jmp END ; 死循环

SayHello db 'Hello!' ; 字节填写
         db 0x00
SayByeBye db 'ByeBye!'
          db 0x00

;循环即补0
jmp $
times 510-($-$$) db 0
db 0x55, 0xaa