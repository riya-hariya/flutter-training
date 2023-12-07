//convert minutes into seconds and hours.

#include<stdio.h>
int main(){
    
    float minutes,seconds,hours;
    

    printf("Enter the minutes: ");
    scanf("%f",&minutes);

    //converting into seconds
    seconds=(60*minutes)/1;
    hours=(1*minutes)/60; //converting into hours

    printf("seconds=%.2f sec\n",seconds);
    printf("hours=%.2f hr\n",hours);  
}
