//Calculate compound interest. Formula:Amount=P(1+R/100)t
//compound interest=Amount-P

#include<stdio.h>
int main(){
    
    float ci,p,r,t,amount;
    
    printf("Enter the Principal amount:");
    scanf("%f",&p);
    
    printf("Enter the rate of interest:");
    scanf("%f",&r);
   
    printf("Enter the time period:");
    scanf("%f",&t);

    amount=p*(1+r/100)*t;
    ci=amount-p;
    
    printf("Compond interest=%.2frs",ci);


}