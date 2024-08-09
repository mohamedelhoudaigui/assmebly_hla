;section .data
;	buff db 'hello world !', 10, 0

;section .text
;	global _start

; write params:
; rax -> syscall code
; rdi -> fd number
; rsi -> buffer addr
; rdx -> number of bytes

;_start:
;	mov rdi, 1
;	mov rsi, buff
;	mov rdx, 14
;	call ft_write
;	call exit


ft_write:
	mov rax, 1
	syscall
	ret

;exit:
;	mov rax, 60
;	mov rdi, 0
;	syscall