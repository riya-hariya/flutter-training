#include<stdio.h>
int main(){
    //area of rectangle
    float width=0,length=0,area=0;
    

    printf("Enter width:");
    scanf("%f",&width);

    printf("Enter length:");
    scanf("%f",&length);

    area=width*length;
    printf("area=%f",area);  
}