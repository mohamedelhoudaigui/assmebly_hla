;section .data
;	buff1	db "hello", 10, 0
;	buff2	dq 0
;	size	db 0

;section .text
;	global _start

;_start:
;	mov rdi, buff1
;	call ft_strlen

;	mov [size], rax

;	mov rdi, rax
;	call malloc ; gives pointer in rax

;	mov	[buff2], rax ; move pointer to data section

;	mov rdi, buff1 ; buffer 1
;	mov rsi, [buff2] ; buffer 2 (malloc)
;	call ft_strdup

;	mov rsi, [buff2]
;	mov rdx, [size]
;	call ft_write

;	mov rsi, buff1
;	mov rdx, [size]
;	call ft_write

;	mov rdi, [buff2]
;	call free

;	call exit

ft_strdup:
	xor rax, rax
	.loop:
		cmp byte [rdi + rax], 0
		je .done
		mov	r8b, [rdi + rax]
		mov [rsi + rax], r8b
		add	rax, 1
		jmp .loop
	.done:
		mov rax, rsi
		ret

;ft_strlen:
;	xor rax, rax
;	.loop:
;		cmp byte [rdi + rax], 0
;		je .done
;		add rax, 1
;		jmp .loop
;	.done:
;		ret

;exit:
;	xor rax, rax
;	xor rdi, rdi
;	mov rax, 60
;	syscall

;ft_write:
;	mov rax, 1
;	mov rdi, 1
;	syscall
;	ret

;extern malloc
;extern free