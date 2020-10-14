section .data
msg db "Hola Omar", 0 ;Mensaje
    len equ $ - msg ;Tamaño del mensaje
    section .text
    global _start   ;Necesitamos exportar '_start' a ld, para que lo reconozca
                    ;como el punto de entrada del programa.
_start:
    ;Escribimos el saludo a stdout.
    mov eax, 4 ;Número de la llamada al sistema (sys_write).
    mov ebx, 1 ;Primer argumento: file handle (stdout).
    mov ecx, msg ;Segundo argumento: puntero a la cadena a escribir.
    mov edx, len ;Tercer argumento: tamaño de la cadena.
    int 80h ;Llama al Kernel.
    mov eax, 1 ;Número de la llamada al sistema (sys_exit).
    int 80h ;Llama al Kerne
