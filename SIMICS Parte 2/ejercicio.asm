ORG 0x0                 ; add to offsets

start:  
    mov eax, 0x4D       ; letra segundo apellido en hexadecimal (Monge) y en binario: 01001101
    mov ecx, 100        ; 100 números a calcular
    mov edi, numbers    ; se carga puntero con dir. inicial del arreglo

    calculate:          ; ciclo para calcular los 100 números pseudo-aleatorios
        mov edx, 0      ; se reinicia el valor de edx
        mov [edi], eax  ; se accede a dir. de memoria para almacenar valor de eax
        add edi, 4      ; se colocan los números en espacios consecutivos +4

        mov ebx, eax    ; se mueve número a ebx para el cálculo
        shr ebx, 3      ; se mueve bit 4 a LSB
        and ebx, 1      ; se aplica máscara para aislar LSB
        mov edx, ebx    ; se mueve bit resultante a edx

        mov ebx, eax    ; se mueve número a ebx par el cálculo
        shr ebx, 4      ; se mueve bit 5 a LSB
        and ebx, 1      ; se aplica máscara para aislar LSB
        xor edx, ebx    ; se mueve bit resultante a edx

        mov ebx, eax    ; se mueve número a ebx para el cálculo
        shr ebx, 5      ; se mueve bit 6 a LSB
        and ebx, 1      ; se aplica máscara para aislar LSB
        xor edx, ebx    ; se mueve bit resultante a edx

        mov ebx, eax    ; se mueve número a ebx para el cálculo
        shr ebx, 7      ; se mueve bit 8 a LSB
        and ebx, 1      ; se aplica máscara para aislar LSB
        xor edx, ebx    ; se mueve bit resultante a edx

        shr eax, 1      ; se descarta LSB del número
        shl edx, 7      ; se mueve bit resultante de operaciones a MSB
        or eax, edx     ; se aplica máscara para mover bit de edx a MSB de eax
        
        dec ecx         ; se decrementa contador
        jnz calculate   ; mientras sigan números por calcular repetir

section .bss
    numbers resb 400    ; se reservan 100 espacios en arreglo
