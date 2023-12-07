//Convert kms into meters

#include<stdio.h>
int main(){
    
    float km,meters;
    

    printf("Enter the kilometers: ");
    scanf("%f",&km);

    //converting into meters
    meters=(1000*km)/1;
    
    printf("meters = %.2f meters\n",meters);
}