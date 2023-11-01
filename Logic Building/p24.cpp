//Accept number of students from user. I need to give 5 apples to each student. How many apples are required?

#include<stdio.h>
int main(){
    
    int stu_num,num_of_apple;
    
    printf("Enter the number of students:");
    scanf("%d",&stu_num);
    
    num_of_apple=5*stu_num;

    printf("total number of apples=%d",num_of_apple);
    


}