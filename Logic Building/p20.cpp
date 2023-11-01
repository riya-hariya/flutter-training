#include<stdio.h>
int main(){
    //String
    char c[20];
    
    printf("Enter  your country name:");
    scanf("%s",c);
    
    printf("%c%c%c",c[0],c[1],c[2]);
}