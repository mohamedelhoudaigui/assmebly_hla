;section .data
;    msg db 'test', 0
;    len db 0

;section .text
;    global _start

;_start:
;   mov rdi, msg
;   xor rax, rax
;   call ft_strlen

;    add rax, 48
;    mov [len], rax

;    mov rsi, len
;    call write

;    call exit

; functions can have blocks in them, return value in rax
ft_strlen:
    .loop:
        cmp byte [rdi + rax], 0
        je .done
        add rax, 1
        jmp .loop
    .done:
        ret

;write:
;	mov rax, 1
;	mov rdi, 1
;	mov rdx, 1
;	syscall
;	ret

;exit:
;	mov rax, 60
;    xor rdi, rdi
;    syscall
