;Laura Wilson
;
;date: 10/12/2022
; Program reads from array. Places value read into another array
;with the location shifted by certain amount.



.386
.model flat,stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD


.data
    shift dword 2
    input byte 1,2,3,4,5,6,7,8
    output byte lengthof input dup(?)	
.code


    main proc
	set ecx length input
	sub ecx, shift		;tells loop what to do and where to ready
						;This loop will iterate length - shift times. 
	edi, shift		;(this loop will place the 'non-wraped' values)
	esi, 0		;Start writing from input at shift
			;Start reading at 0

   

		
	l1:	;Loop 1
	al = input[esi]
	output[edi], al
	INC 



		
				
				
    	loop l1 ;loop

		ecx, shift
		esi, lengthof input
		edi, 0
		sub esi, shift


				
				
				
				
    l2:	;loop 2 

			
				
			
			
			mov al, input[edx] ;movrd gtom input inyo al
			mov output[ebx], al ;moves from al into output
			INC ebx ;incrementes input index
			INC edx ;increments output index



				

	loop l2 ;loops L2 

INVOKE ExitProcess,0
main ENDP
END main

