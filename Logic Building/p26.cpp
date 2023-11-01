//Accept 2 numbers from user and swap 2 numbers using 3rd variable and without using 3rd variable

#include<stdio.h>
int main(){
    
    int a,b,c;
    
    printf("Enter first number:");
    scanf("%d",&a);

    printf("Enter second number:");
    scanf("%d",&b);

    c=a;
    a=b;
    b=c;

    printf("after swap first number=%d",a);
    printf("\n");
    printf("after swap second number=%d",b);  
}