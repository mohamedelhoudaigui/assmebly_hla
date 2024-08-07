; hello.asm - A simple assembly program that prints "Hello, World!"

section .data
    msg db 'Hello, World!', 0

section .text
    global _start

_start:
    ; Write the message to stdout
    mov eax, 4          ; sys_write system call
    mov ebx, 1          ; file descriptor 1 is stdout
    mov ecx, msg        ; pointer to the message
    mov edx, 13         ; length of the message
    int 0x80            ; call kernel

    ; Exit the program
    mov eax, 1          ; sys_exit system call
    xor ebx, ebx        ; exit code 0
    int 0x80            ; call kernel
