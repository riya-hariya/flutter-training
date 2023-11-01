#include<stdio.h>
int main(){
    //area of triangle
    float height=0,base=0,area=0;
    

    printf("Enter height:");
    scanf("%f",&height);

    printf("Enter base:");
    scanf("%f",&base);

    area=(height*base)/2;
    printf("area=%f",area);  
}