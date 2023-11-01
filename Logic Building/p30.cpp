//Accept 5 employees name and salary and count average and total salary

#include<stdio.h>
int main(){
    
    int i,salary[i],total_sal=0;
    char name[i];
    float avg;
    

    for(i=1;i<=5;i++){
        printf("Enter the name and salary of %d employee:",i);
        scanf("%s%d",&name[i],&salary[i]);
    }

    for(i=1;i<=5;i++){
         total_sal= total_sal+salary[i];
    }
   avg=total_sal/5;
   printf("total salary=%d rs\n",total_sal);
   printf("average salary=%.2f rs",avg);
    

    
}