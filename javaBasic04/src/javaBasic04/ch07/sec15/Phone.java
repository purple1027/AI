package javaBasic04.ch07.sec15;
//부보 클래스

public class Phone {

	
	String owner;
	public Phone() {
		// TODO Auto-generated constructor stub
	}
	
	public Phone(String owner) {
	this.owner=owner;
	
	}
	
	public void turnOn() {System.out.println("폰 전원을 켠다");
	}
	
	public void turnOff() {System.out.println("폰 전원을 끕니다.");
	
	}
	
}
