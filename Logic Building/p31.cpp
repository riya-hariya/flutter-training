//Accept 5 expense from user and find average of expense

#include<stdio.h>
int main(){
    
    int i,expense[i],total_exp=0;
    float avg;
    

    for(i=1;i<=5;i++){
        printf("Enter the expense of %d employee:",i);
        scanf("%d",&expense[i]);
    }

    for(i=1;i<=5;i++){
         total_exp= total_exp+expense[i];
    }
   avg=total_exp/5;
   printf("total expense=%d rs\n",total_exp);
   printf("average expense=%.2f rs",avg);
      
}
