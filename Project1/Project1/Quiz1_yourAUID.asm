;submitter: 
;Date: 
;Please describe your code  
.386 
.model flat,stdcall 
.stack 4096 
ExitProcess proto,dwExitCode:dword 
 
.code 
main proc 
 mov eax,5      
 add eax,6      
 
 invoke ExitProcess,0 
MAIN ENDP 

END main