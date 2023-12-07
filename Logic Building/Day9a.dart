//multilevel inheritance
class A{
    static int num1=20;
}

class B extends A{
    static int num2=30;
}
class C extends B{
    int ans=B.num2 + A.num1;
}

void main()
{
    var obj=new C();
    print(obj.ans);
}