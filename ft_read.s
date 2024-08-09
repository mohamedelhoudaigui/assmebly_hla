;section .data
;	buff db '       '

;section .text
;	global _start

; read params:
; rax -> syscall code
; rdi -> fd number
; rsi -> buffer addr
; rdx -> number of bytes

;_start:
;	mov rdi, 0
;	mov rsi, buff
;	mov rdx, 3
;	call ft_read
;	call exit

ft_read:
	mov rax, 0
	syscall
	ret

;ft_write:
;	mov rax, 1
;	syscall
;	ret

;exit:
;	mov rax, 60
;	mov rdi, 0
;	syscall