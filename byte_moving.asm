.186

code SEGMENT				 ; 7 6 5 4 3 2 1 0
	ASSUME cs:code		     
	                          
	
							 ; 5 3 6 4 1 3 5 1
	
	                             
begin:
		mov al, 10101011b ;  до метаморфоз маємо число 171  --> після 207  ( 1 0 1 0 1 0 1 1 --> 1 1 0 0 1 1 1 1 )
		xor bh, bh
		
		
		
		
		;операція над третім розрядом
		mov ah, al
		and ah, 00001000b  ; обираємо відповідний розряд
		mov cl, 1
		shr ah, cl ; вправо на 1 розряд
		or bh, ah 
		mov cl, 4
		shl ah, cl ; вліво на 4 розряди
		or bh, ah 
		xor ah, ah
		
		;операція над п'ятим розрядом
		mov ah, al
		and ah, 00100000b
		mov cl, 4
		shr ah, cl ; вправо на 4 розряди
		or bh, ah
		mov cl, 6 
		shl ah, cl ; вліво на 6 розрядів
		or bh, ah
		xor ah, ah
		
	
		;операція над 4 розрядом
		mov ah, al
		and ah, 00010000b
		or bh, ah
		xor ah, ah
		
		
		
		;операція над першим розрядом
		mov ah, al
		and ah, 00000010b
		mov cl, 1
		shr ah, cl ;
		or bh, ah
		mov cl, 3
		shl ah, cl ;
		or bh, ah
		xor ah, ah

		;операція над шостим розрядом
		mov ah, al
		and ah, 01000000b
		mov cl, 1
		shr ah, cl 
		or bh, ah
		xor ah, ah
		
		
		mov ax, 4c00h    ;  повернення в ОС
		int 21h

code ENDS
	end begin
		
		 