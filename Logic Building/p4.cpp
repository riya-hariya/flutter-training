#include<stdio.h>
int main(){
    //area of circle
    float pi=3.14,area=0,radius=0;
    

    printf("Enter radius");
    scanf("%f",&radius);

    area=pi*radius*radius;
    printf("%f",area);
    
}