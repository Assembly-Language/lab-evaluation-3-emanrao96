INCLUDE Irvine32.inc
.data
;public asmfunc

msg2 db "Sum: ",0




.code
asmfunc PROC array:DWORD , p2:DWORD
    
   
   mov eax,0
   mov ebx,0
   mov esi,array
   mov ecx,p2
   next:
   mov eax,[esi]
   TEST eax,1h
   jz skip
   mov ebx,eax                ;convert ax to eax
   add sum,ebx                 ;add eax to sum
                    
    skip:
         add esi,4                  ;move to next element
         loop loop1                   ;loop until ecx is 0

   
    
skip:
add esi,type array
LOOP next




mov ecx,0
;total positive numbers value
mov edx,offset msg1
call writestring
call crlf
mov eax,0
mov eax,ebx
call writeint
call crlf






    ret
asmfunc ENDP
end