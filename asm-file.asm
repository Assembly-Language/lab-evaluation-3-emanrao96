

INCLUDE Irvine32.inc
.data
;public asmfunc
array sword -3,-2,-1,7,4,5,9,10       ;Declared an array
msg db "Sum of Odd numbers: ",0          ;print a message for Sum
msg2 db "Total number of Odd numbers: ",0    ;Print a message for Total number of odds
sum dword 0            ;declare a variable for sum and set its value to 0
count dword 0           ;;declare a variable for count and set its value to 0 
.code
asmfunc PROC
    
    mov esi ,offset array        ;move address of array to esi
    mov ecx,lengthof array        ;move length of array to ecx
    loop1:
         mov ax,word ptr[esi]       ;mov value of array to ax
         test ax,1h                 ;check if number is odd  
         jz skip
         movsx eax,ax                ;convert ax to eax
         add sum,eax                 ;add eax to sum
         inc count                   ;increment count
    skip:
         add esi,2                   ;move to next element
         loop loop1                   ;loop until ecx is 0

    mov edx,offset msg2               ;move address of msg2 to edx
    call writestring                   ;print msg2
    call crlf                         ;print new line

    mov eax,count                    ;mov value of count to eax
    call writeint
    call crlf    
    
    mov edx,offset msg
    call writestring
    call crlf

    mov eax,sum
    call writeint
    call crlf    

    
    
    ret
asmfunc ENDP
end