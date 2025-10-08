data segment
N1 DW 00FFH
N2 DW 00FFH
N3 DW ?
data ends
code segment
assume cs:code , ds:data
START:
MOV AX,DATA
MOV DS,AX
XOR AX,AX
MOV BX,AX
MOV CX,AX
MOV AX,N1
MOV BX,N2
MUL BX
MOV N3,AX
JNC STOP
INC CX
STOP:
int 3
code ends
END START