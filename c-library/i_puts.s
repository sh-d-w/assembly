;                       __________________							  ;
;                        S |-| - D - \/\/ 							  ;
;                       ==================							  ;
;																	  ;
;   	   Original code developed during 42.fr curriculum. 		  ;
; 			  Project renamed and refactored for clarity.			  ;
;             Created: 2017-11-04 by S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ				  ;
;																	  ;
;   Copyright [2026] [S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ] under Apache 2.0 License	  ;

global _i_puts


section .text

_i_puts:
mov		rsi, rdi			; assign rsi <- rdi

_i_putchar:					; should make its own extern function
cmp		[rsi], byte 0x0			; check \0
je		_istrue				; jmp _leave rsi == 0x0
mov     	rax, 0x2000004 			; write
mov     	rdi, 1 				; init rdi stdout
mov     	rdx, 1				; len write
syscall						; call write
inc		rsi					; incremente rsi
jmp		_i_putchar			; jump _write_char

_istrue:
push		0x0A				; push on the stack \n
mov		rsi, rsp			; assign rsi <- rsp
mov		rax, 0x2000004 			; write
mov		rdi, 1 				; stdout
mov		rdx, 1				; len write
syscall						; call write

pop		rsi				; pop \n on the stack
mov		rax, 0x0A			; ret value
mov		rdi,0				; init rdi stdin
ret						; return
