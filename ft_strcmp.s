;section .data
;	buf1 db 'hello', 0
;	buf2 db 'hello', 0
;	result db 0

;section .text
;	global _start

;_start:
;	xor rax, rax
;	mov rdi, buf1
;	mov rsi, buf2

;	call ft_strcmp

;	add rax, 48
;	mov [result], rax

;	mov rsi, result
;	mov rdx, 1
;	call write
;	call exit


ft_strcmp:
	.loop:
		mov r8b, [rdi + rax]
		cmp r8b, [rsi + rax]
		jl .less
		jg .greater
		cmp r8b, 0
		je .equal
		add rax, 1
		jmp .loop

	.less:
		xor rax, rax
		mov rax, -1
		ret

	.greater:
		xor rax, rax
			mov rax, 1
			ret

	.equal:
		xor rax, rax
		ret

;write:
;	mov rax, 1
;	mov rdi, 1
;	syscall


;exit:
;	mov rax, 60
;	xor rdi, rdi
;	syscall