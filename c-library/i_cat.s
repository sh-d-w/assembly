;                       __________________				  ;
;                        S |-| - D - \/\/ 				  ;
;                       ==================				  ;
;									  ;
;   	   Original code developed during 42.fr curriculum. 		  ;
; 			  Project renamed and refactored for clarity.	  ;
;             Created: 2017-11-04 by S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ			  ;
;									  ;
;   Copyright [2026] [S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ] under Apache 2.0 License	  ;

%define MACH_SYSCALL(nb) 0x2000000 | nb         ; from tutorial
%define READ 3                                  ; : syscall numbers
%define WRITE 4                                 ;
%define LSEEK 19                                ;
%define STDOUT 1                                ;
%define SEEK_CUR 1                              ;

section .text
        global _i_cat

_i_cat:
	push rbp                                ; save base pointer
        mov rbp, rsp                            ; place base pointer on stack
        sub rsp, 16                             ; align stack to keep 16 bytes $
        push rdi                                ; save function parameter (int $

read:
        mov rdi, [rsp]                          ; 1st param - get fd from stack
        lea rsi, [rbp-16]                       ; reset

        mov rdx, 16                             ; 3rd param - buffer size
        mov rax, 0x2000003			; read
        syscall                                 ;
        jc _istrue                              ;
        cmp rax, 0                              ; if read return <= 0 jump to e$
        jng _istrue                             ;

write:
        push rax                                ; save read return
        mov rdi, STDOUT                         ; 1st param
        lea rsi, [rbp-16]

        mov rdx, rax                            ; 3rd param - read return
        mov rax, 0x2000004			; write
        syscall
        jc _istrue
        pop rax
        cmp rax, 0                              ; if read return < 16 then it i$
        jne read

_istrue:
        mov rsp, rbp                            ; restore stack and base pointe$
        pop rbp                                 ;
        ret                                     ; return
