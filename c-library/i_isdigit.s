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
	global _i_isdigit

_i_isdigit:
	mov	rax, 1		; true
	cmp	rdi, 0x30	; compare lhs and rhs
	jl 	_istrue		; cmp '0' <
	cmp	rdi, 0x3a	; cmp ':' >=
	jge	_istrue		;
	ret				; otherwise would come herer and return rax

_istrue:
	mov	rax, 0		; rax value
	ret				; return
