$INCLUDE(MCU/80C515.mcu)

START CODE 86A0H

ORG START

mov IEN0, #0 ; disable interupts

;r0 -> bit counter
;r2 -> lower counter
;r3 -> upper counter
mov DPTR, #0
mov r3, #32
upper_loop:
	mov r2, #255
	lower_loop:	
		acall dump_byte
		inc DPTR
		djnz r2, lower_loop
	acall dump_byte
	inc DPTR
	djnz r3, upper_loop
	
loop:
	sjmp loop ; inifity loop
	
; dump byte from dptr
dump_byte:
	setb WDT ; IEN0.6
	setb SWDT ; reset watchdog
	mov A, #0
	movc A, @A+DPTR
	mov r0, #8
	bit_by_bit:	
		mov B, A
			
		anl A, #1
		cjne A, #0, one_bit
			; bit is zero
			mov P1, #0
			acall wait
			mov P1, #255
			sjmp end_bit
		one_bit:
			; bit is one
			mov P1, #0
			acall wait
			acall wait
			mov P1, #255
		end_bit:
	
		mov A, B
		rr A
			
		djnz r0, bit_by_bit
	ret

wait:
	mov r4, #255
wait1:
	djnz r4, wait1
	ret
	
	END