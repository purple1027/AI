package javaBasic03.ch06.sec3;

public class A클래스 {

	private int a=10; // 객체 내부에서만 사용하는 것
	int b=20;
	public int c=30;
	
	private void a1() {
		a=a+100;
		b=b+100;
	    c=c+100;
	}
	
	void b1() {
		a=a+200;
		b=b+200;
		c=c+200;
	}
	
	public void c1() {
		a=a+300;
		b=b+300;
		c=c+300;
	}
	
	
	
}
