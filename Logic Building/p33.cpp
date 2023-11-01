//convert days into months

#include<stdio.h>
int main(){
    
    float days,months;

    printf("Enter the number of days: ");
    scanf("%f",&days);

    months=(12*days)/365;
    printf("months=%.2f ",months);
}

