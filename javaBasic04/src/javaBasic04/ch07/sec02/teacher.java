package javaBasic04.ch07.sec02;

public class teacher extends student{

	
	String major;
	public void teaching( ) {
		System.out.println("����ģ��");
	}
	
	
	public teacher() {
		
		super("ȫ�浿",30,"��ǻ�Ͱ���"); // �θ� ������ ȣ��
		System.out.println("�ڽ�Ŭ���� ��");
	}
	
	public teacher(String name, int age, String dept, String major) {
		this.name=name;
		this.age=age;
		this.dept=dept;
		this.major=major;
		
	}
}
