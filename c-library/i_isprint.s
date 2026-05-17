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
	global _i_isprint

_i_isprint:
	mov rax, 1		; set return value to 1
	cmp rdi, 0x20	; cmp param1 32
	jl _istrue		; jump if less than 32 is true.
	cmp rdi, 0x7f	; cmp
	jge _istrue		; jump if greater than or equal 127 is true
	ret				; otherwise return 1(from beginning)


_istrue:
	mov rax, 0	; set return value to 0
	ret
