DATA SEGMENT
    MESS DB 'ChenFan 2205030208$'
DATA ENDS
EXT SEGMENT
    BUFF DB 19 DUP(?)
EXT ENDS
CODE SEGMENT
    ASSUME CS:CODE, DS:DATA, ES:EXT
START:
MOV AX, DATA
MOV DS, AX
MOV AX, EXT
MOV ES, AX
LEA SI, MESS
LEA DI, BUFF
MOV CX, 19
CLD
REP MOVSB
MOV BX, ES
MOV DS, BX
LEA DX, BUFF
MOV AH, 9
INT 21H
MOV AH, 4CH
INT 21H
CODE ENDS
END START