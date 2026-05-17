;                       __________________							  ;
;                        S |-| - D - \/\/ 							  ;
;                       ==================							  ;
;																	  ;
;   	   Original code developed during 42.fr curriculum. 		  ;
; 			  Project renamed and refactored for clarity.			  ;
;             Created: 2017-11-04 by S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ				  ;
;																	  ;
;   Copyright [2026] [S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ] under Apache 2.0 License	  ;

section		.data

section		.text
	global _i_memset

_i_memset:
	push rdi	; push rdi onto stack
	mov rcx, rdx	; mov param3 into rcx: for length.
	mov rax, rsi	; 2nd param into return register
	cld		; clear line descriptor
	rep stosb	; al at address es:(e)di
	pop rax		; pop rax from stack
	ret		; 
