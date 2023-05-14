/*I2. We have to calculate the area of a rectangle, a square and a circle. Create an abstract class 'Shape' with 
three abstract methods namely 'RectangleArea' taking two parameters, 'SquareArea' and 'CircleArea' taking one parameter each. 
The parameters of 'RectangleArea' are its length and breadth, that of 'SquareArea' is its side and that of 'CircleArea' is its radius. 
Now create another class 'Area' containing all the three methods 'RectangleArea', 'SquareArea' and 'CircleArea' for printing the area of rectangle, 
square and circle respectively. Create an object of class 'Area' and call all the three methods.*/

abstract class Shape{
    final pi=3.14;
    double? area;
    void RectangleArea(double length,double breadth);
    void SquareArea(double side);
    void CircleArea(double radius);
}

class Area extends Shape{

    void RectangleArea(double length,double breadth){
        area=length*breadth;
        print("Area of rectangle =$area");
    }
    void SquareArea(double side){
        area = side*side;
        print("Area of square =$area");
    }
    void CircleArea(double radius){
        area = pi*radius*radius;
        print("Area of circle =$area");
    }
}

void main(){
    Area a=new Area();
    a.RectangleArea(3,4);
    a.SquareArea(5);
    a.CircleArea(4);
}