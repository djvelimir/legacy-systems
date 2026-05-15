.MODEL SMALL
.STACK 100h

.DATA
    prompt      DB 'Enter year: $'
    msgLeap     DB 0Dh,0Ah,'Leap year$'
    msgNotLeap  DB 0Dh,0Ah,'Not leap year$'
    buffer      DB 6,0,6 DUP(?)   ; DOS buffered input

.CODE

; -----------------------------
; IsLeap PROC
; Input : AX = year
; Output: AX = 1 (leap), 0 (not leap)
; -----------------------------
IsLeap PROC
    PUSH BX
    PUSH DX

    ; if (year % 400 == 0) => leap
    MOV BX, 400
    XOR DX, DX
    DIV BX
    CMP DX, 0
    JE  YesLeap

    ; if (year % 100 == 0) => not leap
    MOV AX, year_val
    MOV BX, 100
    XOR DX, DX
    DIV BX
    CMP DX, 0
    JE  NoLeap

    ; if (year % 4 == 0) => leap
    MOV AX, year_val
    MOV BX, 4
    XOR DX, DX
    DIV BX
    CMP DX, 0
    JE  YesLeap

NoLeap:
    XOR AX, AX        ; return 0
    JMP Done

YesLeap:
    MOV AX, 1         ; return 1

Done:
    POP DX
    POP BX
    RET
IsLeap ENDP


; -----------------------------
; ASCII -> integer (decimal)
; Input: buffer
; Output: AX = number
; -----------------------------
ReadYear PROC
    PUSH BX
    PUSH CX
    PUSH DX

    LEA SI, buffer+2
    MOV CL, buffer+1
    XOR CH, CH

    XOR AX, AX

ConvertLoop:
    MOV BL, [SI]
    SUB BL, '0'

    MOV DX, 10
    MUL DX          ; AX = AX * 10

    XOR BH, BH
    ADD AX, BX

    INC SI
    LOOP ConvertLoop

    POP DX
    POP CX
    POP BX
    RET
ReadYear ENDP


; -----------------------------
; MAIN
; -----------------------------
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; prompt
    MOV AH, 09h
    LEA DX, prompt
    INT 21h

    ; read input
    MOV AH, 0Ah
    LEA DX, buffer
    INT 21h

    ; convert to number
    CALL ReadYear
    MOV year_val, AX

    ; call IsLeap
    CALL IsLeap

    ; print result
    CMP AX, 1
    JE PrintLeap

    MOV AH, 09h
    LEA DX, msgNotLeap
    INT 21h
    JMP Exit

PrintLeap:
    MOV AH, 09h
    LEA DX, msgLeap
    INT 21h

Exit:
    MOV AX, 4C00h
    INT 21h

MAIN ENDP

.DATA?
    year_val DW ?

END MAIN