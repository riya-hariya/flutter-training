/*A1. All the banks operating in India are controlled by RBI. RBI has set a well-defined guideline (e.g. minimum interest rate,
 minimum balance allowed, maximum withdrawal limit etc) which all banks must follow. For example, suppose RBI has set minimum interest rate 
 applicable to a saving bank account to be 4% annually; however, banks are free to use 4% interest rate or to set any rates above it. 
 Write a DART program to implement bank functionality in the above scenario and demonstrate the dynamic polymorphism concept. 
 Note: Create few classes namely Customer, Account, RBI (Base Class) and few derived classes (SBI, ICICI, PNB etc).
  Assume and implement required member variables and functions in each class.*/
import 'dart:io';

class Customer{
    var name,address,acc_num;
    int? age;

    Customer(var name, var address,var acc_num,int age){
        this.name=name;
        this.address=address;
        this.acc_num=acc_num;
        this.age=age;
    }
}

class Account{
    var acc_type,branch;

    Account(var acc_type,var branch){
        this.acc_type=acc_type;
        this.branch=branch;
    }
}

class RBI{
    double min_r=4.0, min_bal=1000.0, max_wdl=1000000.0;

    void set_minrate(double min_r){
       
        if(min_r>=this.min_r){
            this.min_r=min_r;
        }
        else{
            print("As per RBI guidelines minimum interest rate must be $min_r");
        }
    }
    void set_minbal(double min_bal){
       
        if(min_bal>=this.min_bal){
            this.min_bal=min_bal;
        }
        else{
            print("As per RBI guidelines minimum balance must be $min_bal");
        }
    }
    void set_maxwithdrawal(double max_wdl){
       
        if(max_wdl>this.max_wdl){
            this.max_wdl=max_wdl;
        }
        else{
            print("As per RBI guidelines maximum withdrawal allowance must be $max_wdl");
        }
    }

    void updated_info(){
        print("Updated min rate of RBI=$min_r");
        print("Updated min balance of RBI=$min_bal");
        print("Updated max withdrawal of RBI=$max_wdl");
    }

}

class SBI extends RBI{
    SBI(double min_r, double min_bal, double max_wdl) {
                set_minrate(min_r);
                set_minbal(min_bal); 
                set_maxwithdrawal(max_wdl);
    }
    void updated_info(){
        print("Updated min rate of RBI=$min_r");
        print("Updated min balance of RBI=$min_bal");
        print("Updated max withdrawal of RBI=$max_wdl");
    }
}

class ICICI extends RBI{
    ICICI(double min_r, double min_bal, double max_wdl) {
                set_minrate(min_r);
                set_minbal(min_bal); 
                set_maxwithdrawal(max_wdl);
    }
    void updated_info(){
        print("Updated min rate of RBI=$min_r");
        print("Updated min balance of RBI=$min_bal");
        print("Updated max withdrawal of RBI=$max_wdl");
    }
}

class PNB extends RBI{
    PNB(double min_r, double min_bal, double max_wdl) {
                set_minrate(min_r);
                set_minbal(min_bal); 
                set_maxwithdrawal(max_wdl);
    }
    void updated_info(){
        print("Updated min rate of RBI=$min_r");
        print("Updated min balance of RBI=$min_bal");
        print("Updated max withdrawal of RBI=$max_wdl");
    }
}

void main(){
    print("Enter choice of bank to update detail 1:SBI 2:ICICI 3:PNB");
    int choice=int.parse(stdin.readLineSync()!);

    print("enter minimum rate");
    double a=double.parse(stdin.readLineSync()!);
    print("enter minimum balance");
    double b=double.parse(stdin.readLineSync()!);
    print("enter max withdrawal");
    double c=double.parse(stdin.readLineSync()!);

    RBI bank;
    switch(choice){
        case 1:
            bank = new SBI(a,b,c);
            bank.updated_info();
            break;
        case 2:
            bank = new ICICI(a,b,c);
            bank.updated_info();
            break;
        case 3:
            bank = new PNB(a,b,c);
            bank.updated_info();
            break;
        default:
            print("Invalid");
    }
}