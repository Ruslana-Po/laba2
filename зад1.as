section .data
;число
    n dq 145
section .text
    global _start
;гл функция
_start:
    ;отправить в стек
    push rbp      
    mov  rbp, rsp
    ;записываем в 2 ячейки
    mov rax, [n]
    mov [rbp-24], rax
    mov [rbp-32], rax
    ;Проверка вниз
    ;приб+1
    add byte[rbp-24],1
    prim:
    ;-1
        sub byte[rbp-24],1
        ;делители перебор
        mov byte[rbp-8], 1
        dels:
            ;начинаем с 2
            add byte[rbp-8], 1
            ;копия n
            mov rax, [rbp-24]
            ; делим на делитель
            div byte[rbp-8]
            ; остаток от деления
            cmp ah, 1
            ; сравниваем ост с 1 и если меньше отправляется обратно в цикл и начинаем с следующего число
            jl prim
            ; если больше 1 отправляем в копию число
            mov rax, [rbp-24]
            ; вычитаем 1 чтобы не делить на самого себя
            sub rax, 1
            cmp [rbp-8], rax
            jl dels
;+1
    add byte[rbp-8],1
    ;отпр в регистр
    mov rax, [rbp-8]
    ;сохраняем тут 1 простое число если идти вниз
    mov [rbp-16], rax
    ;тот же ццикл только вверх
    sub byte[rbp-32],1
    prim2:
        add byte[rbp-32],1
        mov byte[rbp-8], 1
        dels2:
            add byte[rbp-8], 1
            mov rax, [rbp-32]
            div byte[rbp-8]
            cmp ah, 1
            jl prim2
            
            mov rax, [rbp-32]
            sub rax, 1
            cmp [rbp-8], rax
            jl dels2

    add byte[rbp-8],1

;отправляем в регистр n
    mov rax, [n]
    ; разница между самим числом и близ снизу
    sub rax, [rbp-16]
    ;сохр
    mov rbx, rax
    ;близ сверху
    mov rax, [rbp-8]
    ;разница между верхним и n
    sub rax, [n]
    ; сравнение rax-вер rbx-низ
    cmp rax, rbx
    ; если rax<rbx прыгаем в  higher: пропуская 2 стр
    jl higher
        ; если нет то прыгаем в both: rdi то что выводим
        mov rdi, rbx
        jmp both
    higher:
     mov rdi, rax
     both:
     ; в число 
    mov rax, 60
    syscall
