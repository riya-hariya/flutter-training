//WAp to calculate swap 2 numbers with using of multiplication and division.

#include<stdio.h>
int main(){
    
    int a,b,c;
    
    printf("Enter first number:");
    scanf("%d",&a);

    printf("Enter second number:");
    scanf("%d",&b);

    c=a*b;
    a=c/a;
    b=c/b;

    printf("after swap first number=%d",a);
    printf("\n");
    printf("after swap second number=%d",b);  
}