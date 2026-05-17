;                       __________________							  ;
;                        S |-| - D - \/\/ 							  ;
;                       ==================							  ;
;																	  ;
;   	   Original code developed during 42.fr curriculum. 		  ;
; 			  Project renamed and refactored for clarity.			  ;
;             Created: 2017-11-04 by S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ				  ;
;																	  ;
;   Copyright [2026] [S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ] under Apache 2.0 License	  ;

section .data

section .text
	global _i_strcat

_i_strcat:
	mov rax, rdi		; mov param1, rax
	jmp _loop

_loop:
	cmp [rdi], byte 0x0	; checks for the '\0'
	je _copy
	inc rdi
	jmp _loop

_copy:
	movsq				; move qword from address (R|E)SI to (R|E)DI.
	cmp [rsi], byte 0x0	; checks for '\0'
	je _istrue			;
	inc rdi				; increments param1
	inc rsi				; increments param2
	jmp _copy

_istrue:
	ret					; returns
