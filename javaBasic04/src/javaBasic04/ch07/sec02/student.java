package javaBasic04.ch07.sec02;


// ������ �ƴ� ��!


public class student extends Person{

	String dept;
	public void study( ) {
		System.out.println("�����Ѵ�");
	}
	
	
	public student() {
		
		System.out.println("�θ�Ŭ���� �ƹ��� Ŭ����");
	}
	
public student(String �̸�, int ����, String ����) {
		this.name=�̸�;
		this.age=����;
		this.dept=����;
	
		
		System.out.println("�θ�Ŭ���� �ƹ��� Ŭ����"+name);
	}
	
	
}
