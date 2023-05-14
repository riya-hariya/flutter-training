/*B40. Create a class named 'Rectangle' with two data members 'length' and 'breadth' and two methods to print the area and perimeter of the rectangle respectively.
Its constructor having parameters for length and breadth is used to initialize the length and breadth of the rectangle. Let class 'Square' inherit 
the 'Rectangle' class with its constructor having a parameter for its side (suppose s) calling the constructor of its parent class 
as 'super (s, s)'. Print the area and perimeter of a rectangle and a square*/
//doubt
class Rectangle{    
    int length=0,breadth=0;  
      Rectangle(int l, int b){  
        length = l; 
        breadth = b; 
        }  
    void print_area(){    
        print(length*breadth);   
    } 

    void print_perimeter(){                                         
        print(2*(length+breadth));  
    }
 }
class Square extends Rectangle{

    Square(int s):super(s,s){
    
    }       
}

 void main() {
    Rectangle r = new Rectangle(4,5); 
    Square s = new Square(4);       
    r.print_area();       
    r.print_perimeter();       
    s.print_area();        
    s.print_perimeter();  
}
