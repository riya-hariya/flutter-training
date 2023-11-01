#include<stdio.h>
int main(){
    //circumference of rectangle
    float width=0,length=0,c=0;
    

    printf("Enter width:");
    scanf("%f",&width);

    printf("Enter length:");
    scanf("%f",&length);

    c=2*(length+width);
    printf("circumference=%f",c);  
}