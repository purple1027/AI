package javaBasic04.ch07.sec04;

// fanal example 파일의 부모 클래스
// class 에  final이 붙으면 부모클래스가 될 수 없다
public class Person {

	String name;
	int age;

	
// 메소드에 final 붙으면 재정의를 할 수 없다
// 필드에 final 붙으면 이 값이 마지막 값이고 더 이상 값을 바꾸지 않는다는 뜻. 상수처리 할 때 이용 . final static
	
	
	
	public final void eat() {
		System.out.println("일반 밥을 먹는다.");
	}
	
	
	
	
//기본생성자 설정
	
	public Person() {
		// TODO Auto-generated constructor stub
	}

//게터세터
	
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
