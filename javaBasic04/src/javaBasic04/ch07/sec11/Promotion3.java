package javaBasic04.ch07.sec11;

public class Promotion3 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		A a = new A();
		a.eat();

		B b = new B();
		b.eat();

		BB bb = new BB();
		bb.eat();

	} // main

} // class

class A {
	void eat() {
		System.out.println("��");
	}

}

class B extends A {
	@Override
	void eat() {
		{
			System.out.println("������");
		}
	}
}

class C extends B {
	@Override
	void eat() {
		{
			System.out.println("����");
		}
	}
}

class BB extends A {
	@Override
	void eat() {
		{
			System.out.println("�ܹ���");

		}

	}

}
