;
; floatx.asm
;
; Test hexadecimal floating-point numbers

%define Inf __Infinity__
%define NaN __QNaN__

; 16-bit
	dw 1.0
	dw 0x1.0
	dw 2.0
	dw 0x2.0
	dw 0x1.0p+1
	dw 0x1.0p-1
	dw 0x0.0
	dw 0x1.23456789
	dw 0x0.123456789
	dw 0x0.0000123456789
	dw 0x1.23456789p10
	dw 0x1.23456789p+10
	dw 0x1.23456789p-10
	dw 0x0.123456789p10
	dw 0x0.123456789p+10
	dw 0x0.123456789abcdef0123456789abcdef012345p-10
	dw 0x0.0000123456789
	dw 0x0.0000123456789p+10
	dw 0x0.0000123456789p-10
	dw 0x1.0p-25		; Underflow
	dw 0x1.0p-24		; Smallest denorm
	dw 0x1.0p-15		; Denorm
	dw 0x1.0p-14		; Smallest non-denorm
	dw 0x1.0p+15		; Biggest possible exponent
	dw Inf			; Infinity
	dw NaN

; 32-bit
	dd 1.0
	dd 0x1.0
	dd 2.0
	dd 0x2.0
	dd 0x1.0p+1
	dd 0x1.0p-1
	dd 0x0.0
	dd 0x1.23456789
	dd 0x0.123456789
	dd 0x0.0000123456789
	dd 0x1.23456789p10
	dd 0x1.23456789p+10
	dd 0x1.23456789p-10
	dd 0x0.123456789p10
	dd 0x0.123456789p+10
	dd 0x0.123456789abcdef0123456789abcdef012345p-10
	dd 0x0.0000123456789
	dd 0x0.0000123456789p+10
	dd 0x0.0000123456789p-10
	dd 0x123456789.0
	dd 0x0000123456789.0
	dd 0x123456789.0p+0
	dd 0x123456789.0p+64
	dd 0x1.0p-150		; Underflow
	dd 0x1.0p-149		; Smallest denorm
	dd 0x1.0p-127		; Denorm
	dd 0x1.0p-126		; Smallest non-denorm
	dd 0x1.0p+127		; Biggest possible exponent
	dd Inf			; Infinity
	dd NaN

; 64-bit
	dq 1.0
	dq 0x1.0
	dq 2.0
	dq 0x2.0
	dq 0x1.0p+1
	dq 0x1.0p-1
	dq 0x0.0
	dq 0x1.23456789
	dq 0x0.123456789
	dq 0x0.0000123456789
	dq 0x1.23456789p10
	dq 0x1.23456789p+10
	dq 0x1.23456789p-10
	dq 0x0.123456789p10
	dq 0x0.123456789p+10
	dq 0x0.123456789abcdef0123456789abcdef012345p-10
	dq 0x0.0000123456789
	dq 0x0.0000123456789p+10
	dq 0x0.0000123456789p-10
	dq 0x123456789.0
	dq 0x0000123456789.0
	dq 0x123456789.0p+0
	dq 0x123456789.0p+300
	dq 0x1.0p-1075		; Underflow
	dq 0x1.0p-1074		; Smallest denorm
	dq 0x1.0p-1023		; Denorm
	dq 0x1.0p-1022		; Smallest non-denorm
	dq 0x1.0p+1023		; Biggest possible exponent
	dq Inf			; Infinity
	dq NaN

; 80-bit
	dt 1.0
	dt 0x1.0
	dt 2.0
	dt 0x2.0
	dt 0x1.0p+1
	dt 0x1.0p-1
	dt 0x0.0
	dt 0x1.23456789
	dt 0x0.123456789
	dt 0x0.0000123456789
	dt 0x1.23456789p10
	dt 0x1.23456789p+10
	dt 0x1.23456789p-10
	dt 0x0.123456789p10
	dt 0x0.123456789p+10
	dt 0x0.123456789abcdef0123456789abcdef012345p-10
	dt 0x0.0000123456789
	dt 0x0.0000123456789p+10
	dt 0x0.0000123456789p-10
	dt 0x123456789.0
	dt 0x0000123456789.0
	dt 0x123456789.0p+0
	dt 0x123456789.0p+1024
	dt 0x1.0p-16446		; Underflow
	dt 0x1.0p-16445		; Smallest denorm
	dt 0x1.0p-16383		; Denorm
	dt 0x1.0p-16382		; Smallest non-denorm
	dt 0x1.0p+16383		; Biggest possible exponent
	dt Inf			; Infinity
	dt NaN

; 128-bit
	do 1.0
	do 0x1.0
	do 2.0
	do 0x2.0
	do 0x1.0p+1
	do 0x1.0p-1
	do 0x0.0
	do 0x1.23456789
	do 0x0.123456789
	do 0x0.0000123456789
	do 0x1.23456789p10
	do 0x1.23456789p+10
	do 0x1.23456789p-10
	do 0x0.123456789p10
	do 0x0.123456789p+10
	do 0x0.123456789abcdef0123456789abcdef012345p-10
	do 0x0.0000123456789
	do 0x0.0000123456789p+10
	do 0x0.0000123456789p-10
	do 0x123456789.0
	do 0x0000123456789.0
	do 0x123456789.0p+0
	do 0x123456789.0p+1024
	do 0x1.0p-16495		; Underflow
	do 0x1.0p-16494		; Smallest denorm
	do 0x1.0p-16383		; Denorm
	do 0x1.0p-16382		; Smallest non-denorm
	do 0x1.0p+16383		; Biggest possible exponent
	do Inf			; Infinity
	do NaN
