/*A3 Create a program for asynchronous programming using async & await .*/

void main() async {
    print("Line1");
    await display();
    print("Line3");
}

Future<void> display() async{
    Future.delayed(Duration(seconds:5),()=>print("Line2"));
}
