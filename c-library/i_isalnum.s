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
	extern _i_isalpha
	extern _i_isdigit
	global _i_isalnum

_i_isalnum:
	call _i_isalpha		; calls with rdi already set
	cmp rax, 1		; if is 1 then is alpha
	je _istrue		; then it is isalpha
	call _i_isdigit		; calls with rdi already set
	cmp rax, 1		; if is 1 then is digit
	je _istrue		; then it is digit
	ret			; return value is false (as last would set it so)


_istrue:
	ret			; return (1); //as value is set in alnum or alpha 
