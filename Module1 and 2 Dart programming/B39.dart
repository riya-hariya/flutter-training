/*B39. Create a class named 'Member' having the following members: Data members 1 - Name 2 - Age 3 - Phone number 4 
- Address 5 - Salary It also has a method named 'printSalary' which prints the salary of the members. Two classes 'Employee' and 'Manager'
 inherits the 'Member' class. The 'Employee' and 'Manager' classes have data members 'specialization' and 'department' respectively. 
 Now, assign name, age, phone number, address and salary to an employee and a manager by making an object of both of these classes and print the same.*/

 class Member{
    late String name;
    late  int age;
    late String phoneNumber;
     late String address;
     late double salary;

     Member(String name, int age, String phoneNumber,String address, double salary,String specialization) {
    
        this.name=name; 
        this.age=age;
         this.phoneNumber=phoneNumber; 
         this.address=address; 
         this.salary=salary;
     }


     void printSalary(){
    print("salary= $salary");
    }
  }

 class Employee extends Member{
       late String specialization;

  Employee(String name, int age, String phoneNumber,String address, double salary,String specialization) {
    
       super(name, age, phoneNumber, address, salary);
         this.specialization=specialization;
     }

 }
 class Manager extends Member{
       late String department;

  Manager(String name, int age, String phoneNumber,String address, double salary, String department) {
    super(name, age, phoneNumber, address, salary);
         this.department=department;
        }
 }                  

 void  main() {
  Employee employee = new Employee("riya", 25, "87767777", "riverfront Ahmedabad", 25000, "IT");
  Manager manager = new Manager("harsh", 30, "78989998", "Morbi", 80000, "IT");
        employee.printSalary();
        manager.printSalary();
}
 