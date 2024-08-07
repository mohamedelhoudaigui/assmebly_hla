;section .data
;	buf1 db 'hello', 10, 0
;	buf2 db ''

;section .text
;	global _start

;_start:

;	mov rsi, buf1
;	mov rdx, 7
;	call write

;	mov rsi, buf2
;	mov rdx, 7
;	call write

;	xor rax, rax
;	mov rdi, buf1
;	mov rsi, buf2

;	call ft_strcpy

;	mov rsi, buf1
;	mov rdx, 7
;	call write
;	mov rdx, 7
;	mov rsi, buf2
;	call write

;	call exit

ft_strcpy:
	mov rax, 0
	.loop:
		cmp byte [rdi + rax], 0
		je .done
		mov r8, [rdi + rax]
		mov [rsi + rax], r8
		add rax, 1
	.done:
		mov rax, rsi
		ret

;write:
;	; rsi -> buffer
;	; rdx -> size
;	mov rax, 1
;	mov rdi, 1
;	syscall
;	ret

;exit:
;	mov rax, 60
;    xor rdi, rdi
;    syscall