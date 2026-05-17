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
	global _i_isascii

_i_isascii:
	mov rax, 1		; initially true until proven false.
	cmp rdi, 0x00	; cmp 0
	jl _istrue		; jump if less than 0 is true
	cmp rdi, 0x80	; cmp param1 128
	jge _istrue		; jump if >= is true
	ret				; otherwise return (1) from the get-go.


_istrue:
	mov rax, 0		; set to false (0)
	ret				; return (0);
