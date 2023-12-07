/*I4. Create a class named 'Shape' with a method to print "This is shape". Then create two other classes named 'Rectangle', 
'Circle' inheriting the Shape class, both having a method to print "This is rectangular shape" and "This is circular shape" respectively.
 Create a subclass 'Square' of 'Rectangle' having a method to print "Square is a rectangle". Now call the method of 'Shape' and 'Rectangle' 
 class by the object of 'Square' class.*/

class Shape{
    void displayShape(){
        print("This is Shape");
    }
}
class Rectangle extends Shape{
    void displayRectangle(){
        print("This is rectangular shape");
    }
}
class Square extends Rectangle{
    void displaySquare(){
        print("square is rectangle");
    }
}

class Circle extends Shape{
    void displayCircle(){
        print("This is circular shape");
    }
}

void main(){
    Square s=new Square();
    s.displayRectangle();
    s.displayShape();
}