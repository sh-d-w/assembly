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
	global _i_isalpha

_i_isalpha:
	mov rax, 1		; default value is to return 1
	cmp rdi, 0x41		; cmp param1 with 'A'
	jl _istrue		; if < : return 0
	cmp rdi, 0x7A		; cmp param1 with 'z'
	jg _istrue		; if > : return 0
	cmp rdi, 0x5A		; cmp param1 with 'Z'
	jg _next		; if > : test 'next' scenario
	ret

_next:
	cmp rdi, 0x61		; cmp param1 with 'a'
	jl _istrue		; (j)ump if (l)ess than 'istrue'
	ret			; 

_istrue:
	mov rax, 0
	ret
