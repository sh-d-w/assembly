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
	global _i_tolower


_i_tolower:		; if is upper then lower the char
	mov rax, rdi	; puts param1 into return var rax
	cmp rdi, 0x41	; cmp param1 'A'
	jl _istrue		; jump if less than
	cmp rdi, 0x5A	; cmp param1 'Z'
	jg _istrue		; 
	add rax, 32		; increments 'A'->'Z' to 'a'->'z'
	ret

_istrue:			; compare if is out of top bound
	ret				; 
