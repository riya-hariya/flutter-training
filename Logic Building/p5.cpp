#include<stdio.h>
int main(){
    //area of circumference
    float pi=3.14,c=0,radius=0;
    

    printf("Enter radius");
    scanf("%f",&radius);

    c=2*pi*radius;
    printf("%f",c);  
}