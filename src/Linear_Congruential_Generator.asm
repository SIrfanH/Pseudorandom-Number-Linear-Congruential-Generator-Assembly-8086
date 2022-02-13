STACKSG	SEGMENT PARA STACK 'STAK'
		DW	15 DUP(?)
STACKSG	ENDS

DATASG	SEGMENT PARA 'DATA'
M		DW	8191D
A		DW	884D
C		DW	1D
X		DW	?

DATASG	ENDS

CODESG	SEGMENT PARA 'CODE'
	ASSUME SS:STACKSG, DS:DATASG, CS:CODESG
	
MAIN PROC FAR
	PUSH DS
	XOR AX, AX
	PUSH AX
	MOV AX, DATASG
	MOV DS, AX
	
	
	MOV AX, CS:[23D]
	MOV BX, A
	MOV CX, M
	MOV SI, C
	JMP L2      ; ENTER INTO THE LOOP AT LEAST ONCE EVEN IF 
	            ; AX IS LESS THAN 255
	
L1: CMP AX, 255D
	JBE	L3
L2: MUL BX
	ADD AX, SI
	DIV CX
	MOV AX, DX
	MOV DX,0
	JMP L1  
	
L3:
	MOV X, AX
	
	
	RETF
MAIN ENDP
CODESG ENDS
	END MAIN
	