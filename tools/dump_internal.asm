$INCLUDE(MCU/80C515.mcu)

START CODE 86A0H

PIN EQ P57

ORG START

mov IEN0, #0 ; disable interupts
mov SCON, #0 ; disable serial

call long ; long pulse

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

call long ; long pulse
	
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
			clr PIN ; HIGH
			acall wait
			setb PIN ; LOW
			sjmp end_bit
		one_bit:
			; bit is one
			clr PIN ; HIGH
			acall wait
			acall wait
			setb PIN ; LOW
		end_bit:
	
		mov A, B
		rr A
			
		djnz r0, bit_by_bit
	ret
	
long:
	clr PIN ; HIGH
	acall wait
	acall wait
	acall wait
	acall wait
	acall wait
	acall wait
	acall wait
	acall wait
	setb PIN ; LOW

wait:
	mov r4, #255
wait1:
	djnz r4, wait1
	ret
	
	END