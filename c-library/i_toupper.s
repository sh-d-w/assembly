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
	global _i_toupper

_i_toupper:
	mov rax, rdi	; move param1 into return var
	cmp rdi, 0x61	; cmp param1 with 'a'
	jl _istrue		; jump if less than 'a' is true.
	cmp rdi, 0x7A	; cmp param1 with 'z'
	jg _istrue		; jump if greater than 'z' is true.
	sub rax, 32		; a->z becomes A->Z by subtracting ascii 32
	ret				; return rax


_istrue:			; jumps to here.
	ret				; return rax
