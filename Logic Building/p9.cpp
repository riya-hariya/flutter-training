#include<stdio.h>
int main(){
    //perimeter of triangle
    float a=0,b=0,c=0,perimeter=0;
    

    printf("Enter first side:");
    scanf("%f",&a);

    printf("Enter second side:");
    scanf("%f",&b);

    printf("Enter third side:");
    scanf("%f",&c);

    perimeter=a+b+c;
    printf("perimeter=%f",perimeter);  
}