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
	global _i_bzero

_i_bzero:
	cmp rsi, 0b0		; cmp param2 with 0
	jle _istrue			; jump if < equal istrue
	mov [rdi], byte 0x0	; move rdi[] <- 0x0 == 0 == '\0'
	dec rsi				; decrements rsi
	inc rdi				; aparently increments its index pointer?
	jmp _i_bzero		; until rsi <= 0.0
	ret					; 



_istrue:
	ret		;return
