format ELF64 executable 3

segment readable executable

entry main

main:
        mov     rdx, 14         ; move rax to rdx
        lea     rsi, [msg]      ; move rdi to rsi
        mov     rax, 1          ; sys_write
        syscall
        xor     rdi, rdi        ; exit code 0
        mov     rax, 60         ; sys_exit
        syscall

segment readable writable

msg     db 'Hello world!', 10, 0
