BITS 64 

jmp short b
a:
    xor rax, rax 
    pop rcx
    mov rbx, 1
    mov rdx, 4
    mov rax, 4
    int 0x80

    mov rax, 0
    jmp rax

b:
    call a
    db "evil"
