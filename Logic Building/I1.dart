/*I1. Write a program to print the factorial of a number by defining a method named 'Factorial'. Factorial of any number n 
is represented by n! and is equal to 1*2*3*.... *(n-1) *n. E.g.- 4! = 1*2*3*4 = 24 3! = 3*2*1 = 6 2! = 2*1 = 2 Also, 1! = 1 0! = 0
*/
class Fact{
    void Factorial(int number){
        int i,fact=1;     
        for(i=1;i<=number;i++){    
            fact=fact*i;    
        }    
        print("Factorial of $number is: $fact");  
    }
}
void main(){
    Fact f=new Fact();
    f.Factorial(5);
}