;                        __________________							   ;
;                         S |-| - D - \/\/ 							   ;
;                        ==================							   ;
; 																	   ;
;    	   Original code developed during 42.fr curriculum. 		   ;
;  			  Project renamed and refactored for clarity.			   ;
;              Created: 2017-11-04 by S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ				   ;
; 																	   ;
;    Copyright [2026] [S𝔥𝔞⁽ᵃʰⁱ⁾d M𝔞𝔥𝔬𝔪𝔢ᵈ] under Apache 2.0 License	   ;

# 1. if statements:

cmp 1, 2	; compare values/registers
jl		; lhs < rhs
jg		; lhs > rhs
je		; lhs == rhs
jge		; lhs >= rhs
jle		; lhs <= rhs

jnge		; !(lhs >= rhs)
jnl		; !(lhs < rhs)
jng		; !(lhs > rhs)
jnle		; !(lhs <= rhs)

inc		; increment a register
dec		; decrement a register

mov [register], byte 0x0 ; places something at index point of specific register?

cld	; Clears the DF flag in the EFLAGS register. When the DF flag is set to 0, string operations increment the index registers (ESI and/or EDI).
	; operation: DF = 0;
	; The DF flag is set to 0. The CF, OF, ZF, SF, AF, and PF flags are unaffected. 


todo:
	document in image ascii table + above documents.
	part1:
		ft_strcat
		ft_puts
	part2:
		memset 
		memcpy ; get explanation on cld and rep movsb | (preferably test with actual memcpy)
		strdup
	part3:
		ft_cat

bonus:
	ft_strncmp
	ft_strcmp
	ft_putstr
	(etc)



resources:
	http://www.felixcloutier.com/x86/MOVS:MOVSB:MOVSW:MOVSD:MOVSQ.html
	http://faydoc.tripod.com/cpu/movsb.htm
