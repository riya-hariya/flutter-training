//accept salary from user and deduct 20% monthly premium of insurance,now calculate yearly insurance and total salary

#include<stdio.h>
int main(){
    //Salary 
    float salary,i,totalsal,deduction,insurance;
    
    printf("Enter  your salary:");
    scanf("%f",&salary);
    
    deduction=(salary*100)/20;
    totalsal=salary-deduction;
    insurance=12*deduction;

    printf("total insurance=%.2f",insurance);
    printf("total salary=.%.2f",totalsal);


}