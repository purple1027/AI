package javaBasic04.ch07.sec02;


// 공통이 아닌 것!


public class student extends Person{

	String dept;
	public void study( ) {
		System.out.println("공부한다");
	}
	
	
	public student() {
		
		System.out.println("부모클래스 아버지 클래스");
	}
	
public student(String 이름, int 나이, String 전공) {
		this.name=이름;
		this.age=나이;
		this.dept=전공;
	
		
		System.out.println("부모클래스 아버지 클래스"+name);
	}
	
	
}
