/*
hierarchical inheritance:

    A
    |
---------
B       C
*/
class A{
    static int num1=20;
    static int num2=30;
}

class B extends A{
    int ans=A.num1; 
}

class C extends A{
    int ans=A.num2;
}

void main()
{
    var obj=new B();
    print(obj.ans);
}