//Convert temperature Fahrenheit to Celsius.C=(F-32)*5/9

#include<stdio.h>
int main(){
    
    float celsius,fahrenheit;

    printf("Enter the temperature in Fahrenheit: ");
    scanf("%f",&fahrenheit);

    celsius=(fahrenheit-32)*5/9;  
   
    printf("celsius=%.2f",celsius);   
}