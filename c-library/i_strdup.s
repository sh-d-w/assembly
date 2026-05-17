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
	global _i_strdup
	extern _i_strlen
	extern _i_memcpy
	extern _malloc

_i_strdup:
	push		rbp		; Init stack base pointer (on stack ?)
	mov		rbp, rsp	; base pointer = stack pointer;
	sub		rsp, 16		; -16 from stack pointer, is this address?
	
	push		rdi		; Push the first argument to the stack
	call		_i_strlen	; why did rdi have to be pushed?

	inc		rax		; Account for the null character ?
	mov		rdi, rax	; output of strlen to input for malloc call

	push		rdi		; Push the answer from strlen as an arg
	call		_malloc		; 
	mov		rdi, rax	; put return malloc value into param1 for next function call

	pop		rdx		; Reposition the stack : ?
	pop		rsi		; ?
	push		rdx		; ?
	push		rsi		; ?
	push		rdi		; ?

	call		_i_memcpy
	leave				; stack overflow: LEAVE is the counterpart to ENTER. The ENTER instruction sets up a stack frame by first pushing EBP onto the stack and then copies ESP into EBP, so LEAVE has to do the opposite, i.e. copy EBP to ESP and then restore the old EBP from the stack.
	ret
