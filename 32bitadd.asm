data segment
list dd 72345678h,91234567h
n3 dw ?
n4 dw ?
data ends
code segment
assume cs:code, ds:data
start:
mov ax,data
mov ds,ax
xor ax,ax
mov cl,al
mov ax, word ptr list
add ax, word ptr list+4
mov bx,ax
mov n3,ax
mov ax, word ptr list+2
adc ax, word ptr list+6
mov dx,ax
mov n4,ax
jnc stop
inc cl
stop:
int 3
code ends
end start