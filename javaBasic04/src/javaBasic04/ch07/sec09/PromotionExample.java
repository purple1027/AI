package javaBasic04.ch07.sec09;

public class PromotionExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 자료형 변수명 = 힙메모리에 올려라
		
		
		A a=new A();		
		B b=new B();
		C c=new C();
		D d=new D();
		E e=new E();
		
		A b1=new B(); // 자식의 객체화할때 변수를 부모변수로 받는다.
		A c1=new C(); 
		B d1=new D();
		D e1=new D();
		
		
		
	} //main

} //class
