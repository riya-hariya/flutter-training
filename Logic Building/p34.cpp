//convert years into days and months

#include<stdio.h>
int main(){
    
    float days,months,years;

    printf("Enter the number of years: ");
    scanf("%f",&years);

    //converting into days
    days=(365*years)/1;


    months=(12*years)/1;

    printf("days=%.2f\n",days);
    printf("months=%.2f",months);
  
}

