#include<stdio.h>
int main(){
    //Simple interest
    float p,r,n,s;
    
    printf("Enter  your principal amount:");
    scanf("%f",&p);
    
    printf("Enter  rate of interest:");
    scanf("%f",&r);

    printf("Enter number of year:");
    scanf("%f",&n);

    s=(p*r*n)/100;
    printf("SI=%.2frs",s);
}