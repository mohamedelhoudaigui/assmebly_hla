section .data
	msg db 'test register', 0

section .text
global _start

_start:
    ; Call the function
	mov rdi, msg
    call print

    ; Exit the program
    mov eax, 1          ; syscall number for sys_exit
    xor ebx, ebx        ; exit code 0
    int 0x80            ; interrupt to invoke syscall

; Define the function
print:
    ; Print the message
    mov eax, 4          ; syscall number for sys_write
    mov ebx, 1          ; file descriptor 1 (stdout)
    mov ecx, [rdi]        ; pointer to the message
    mov edx, 21         ; message length
    int 0x80            ; interrupt to invoke syscall

    ; Return from the function
    ret
