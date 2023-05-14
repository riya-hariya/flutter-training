//B37. Create a class to print the area of a square and a rectangle. The class has two methods with the same name but different number of parameters.
 //The method for printing area of a rectangle has two parameters which are length and breadth respectively while the other method for printing area
 // of square has one parameter which is side of square.
 
 class Square{
    int totalArea=0;
    void area(int l,int w){     //method to find ara of square
    totalArea=l*l;
    print("Area of square= $totalArea");  
   }  
 }
 class Rectangle extends Square{

    void area(int l, int w){  //method to find area of rectangle
    totalArea=l*w;
    print("Area of rectangle= $totalArea");
    super.area(5,4);  
   }
 }
 

 void main(){
  Rectangle r = new Rectangle();
  r.area(3,4);
 }