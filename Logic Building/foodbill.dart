//Food bill
import 'dart:io';
void main()
{
    int choice,qua,price;

    print("--------Menu-------");
    print("Vadapav         35");
    print("Dabeli          20");
    print("Sandwich       110");
    print("pizza          250");

print("enter 1 for Vadapav  2 for dabeli  3 for sandwich  4 for pizza");
choice=int.parse(stdin.readLineSync()!);
print("enter quantity");
qua=int.parse(stdin.readLineSync()!);

if(choice==1){
    price = qua*35;
    print("total price for vadapav=$price rs");
}
if(choice==2){
    price = qua*20;
    print("total price for dabeli=$price rs");
}
if(choice==3){
    price = qua*110;
    print("total price for sandwich=$price rs");
}
if(choice==4){
    price = qua*250;
    print("total price for pizza=$price rs");
}
}