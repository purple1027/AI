package javaBasic04.ch07.sec04;

// fanal example ������ �θ� Ŭ����
// class ��  final�� ������ �θ�Ŭ������ �� �� ����
public class Person {

	String name;
	int age;

	
// �޼ҵ忡 final ������ �����Ǹ� �� �� ����
// �ʵ忡 final ������ �� ���� ������ ���̰� �� �̻� ���� �ٲ��� �ʴ´ٴ� ��. ���ó�� �� �� �̿� . final static
	
	
	
	public final void eat() {
		System.out.println("�Ϲ� ���� �Դ´�.");
	}
	
	
	
	
//�⺻������ ����
	
	public Person() {
		// TODO Auto-generated constructor stub
	}

//���ͼ���
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	

	
	
}
