/*B45. We have to calculate the percentage of marks obtained in three subjects (each out of 100) by student A and in four subjects 
(each out of 100) by student B. Create an abstract class 'Marks' with an abstract method 'getPercentage'. It is inherited by 
two other classes 'A' and 'B' each having a method with the same name which returns the percentage of the students. 
The constructor of student A takes the marks in three subjects as its parameters and the marks in four subjects as its parameters for student B.
Create an object for each of the two classes and print the percentage of marks for both the students*/
//doubt

abstract class Marks {
    double getPercent();
    double getPercentage();
}

 

class A extends Marks {
    double getPercent(double m1,double m2, double m3) {
          return ((m1 + m2 + m3) / 300) * 100;
    }
}

class B extends Marks {

    double getPercentage(double m1,double m2,double m3,double m4) {
         return ((m1 + m2 + m3 + m4) / 400) * 100;
    }
}


  void main(){
        A a = new A();
        B b = new B();
        double s1=a.getPercent(33,56,69);
        double s2=b.getPercentage(67,78,44,55);
        print("Percentage of student A=$s1");
        print("Percentage of student B=$s2");
    }
  