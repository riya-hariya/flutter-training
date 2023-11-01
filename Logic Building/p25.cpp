//Calculate compound interest

#include<stdio.h>
int main(){
    
    int n,t;
    float p,r,ci,i;
    
    printf("Enter principal amount:");
    scanf("%f",&p);

    printf("Enter rate of interest:");
    scanf("%f",&r);

    printf("Enter number of times interest applied:");
    scanf("%d",&n);

    printf("Enter time period:");
    scanf("%d",&t);
    
    i=(r/n)*n*t;
    ci=p*(1+i);

    printf("Compound interest=%.2f",ci);
    
}