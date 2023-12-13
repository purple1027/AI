package javaBasic04.ch07.sec08;

import javaBasic04.ch07.sec04.A;

public class D extends A{

	public D() {
		super();
	}
	
	public void method() {
		this.field="value";
		this.method();
	}
	
//	public void method() {
//		A a=new A();
//		a.field="value";
//		a method();
//		
//	}
	
	
	
}
