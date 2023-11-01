//find factorial of given number by user.

#include<stdio.h>
int main(){
    
    int a,i,fact=1;
    
    printf("Enter the number:");
    scanf("%d",&a);

    for(i=a;i>0;i--){
        fact=fact*i;
    }

    printf("Factorial of %d =%d",a,fact);
   
}