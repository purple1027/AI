package javaBasic05.ch08.sec05;

public class Example {

	
	public static void action(A a) {
		a.method1();
		if(a instanceof C) {
		C c=(C) a;
			c.method2();
		}
	}

	public static void main(String[] args) {
		action(new B());
		action(new C());
	}

}

public interface A{public void method1();
	}
public class B implements A {

	@Override
	public void method1() {
		System.out.println("B-method1()");
}
	
	
}