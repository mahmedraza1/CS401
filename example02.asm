mov ax, [num1] ; load 5 in ax
mov bx, [num1 + 2] ; load 10 in bx

add ax, bx ; add ax and bx
mov bx, [num1 + 4] ; load 15 in bx
add ax, bx ; add ax and bx again
mov [num1 + 6], ax ; store result in num1 + 6
mov ax, 0x4c00 ; terminate program
int 0x21 ; call DOS interrupt to exit

; execution never comes at this point
num1: dw 5, 10, 15, 0 ; define num1 with initial values
; num1[0] = 5, num1[1] = 10, num1[2] = 15, num1[3] = 0