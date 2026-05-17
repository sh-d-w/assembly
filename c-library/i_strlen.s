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
	global _i_strlen

_i_strlen:	; loop through string, increment counter
	mov rax, 0
	mov r15, rdi
	cmp byte[r15], 0x0
	jne _loop
	ret

_loop:
	cmp byte[r15], 0
	je _istrue
	inc rax
	inc r15
	jmp _loop

_istrue:		;
	ret
