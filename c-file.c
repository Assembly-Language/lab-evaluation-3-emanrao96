
#include <stdio.h>


//extern "C" void __stdcall asmfunc(void);

#ifdef __cplusplus
extern "C" {
#endif

void __stdcall asmfunc(void);

#ifdef __cplusplus
}
#endif


int main() {
    system("cls");
    int abc;
    printf("assembly proc calling from  from C! \n");
getch();

    
    asmfunc(); //assembly proc calling
   
   getch();
    
    
    printf("back to  C! \n"); // printing in c
    
  
    
    return 0;
}