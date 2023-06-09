; csc 221-80
; project 03
; Program description: printing a numbers sequence
; Author: Achraf El Khatib
; Date: 10-8-2020

INCLUDE irvine32.inc
.data 
	message BYTE "The first six numbers in the Fibonacci Sequence are", 13, 10, 0
	var1 DWORD 0
	var2 DWORD 1
	
.code
main PROC
	mov edx, offset message
	
	call writeString
	call CRLF
	
	mov eax, var1
	
	call writeDec
	call CRLF
	
	mov eax, var2
	
	call writeDec
	call CRLF
	
	mov eax, var1
	add eax, var2

	
	call writeDec
	call CRLF
	
	mov var1, eax 
	add eax, var1 
	
	call writeDec
	call CRLF

	mov var2, eax 
	add eax, var1 
	
	call writeDec
	call CRLF
	
	mov var1, eax 
	add eax, var2 
	
	call writeDec
	call CRLF
	
	
	exit
main ENDP
end main
