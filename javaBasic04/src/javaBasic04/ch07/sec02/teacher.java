package javaBasic04.ch07.sec02;

public class teacher extends student{

	
	String major;
	public void teaching( ) {
		System.out.println("가르친다");
	}
	
	
	public teacher() {
		
		super("홍길동",30,"컴퓨터공학"); // 부모 생성자 호출
		System.out.println("자식클래스 나");
	}
	
	public teacher(String name, int age, String dept, String major) {
		this.name=name;
		this.age=age;
		this.dept=dept;
		this.major=major;
		
	}
}
