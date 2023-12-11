package javaBasic03.ch06.sec2;

public class 정적클래스 {

	static final int st=10;
	int it=100;
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//정적이라는 말은 Static이 붙어있는 변수, 메소드
		
     
	//	m1();
		정적클래스 i1 = new 정적클래스(); // static이 안붙어 있는 멤버들이 힙 메모리에 올라간다.
		i1.m2();
		
	System.out.println(st);	
		System.out.println(i1.it);
		
		m1(i1);
		
	}// 메인
	
	static void m1(정적클래스 i1) { //자바가 빌드단계에서 자동으로 스택메모리에 올려 둠
		
		System.out.println("정적 메소드입니다.");
		System.out.println(st);	
		System.out.println(i1.it);
	}
	
    void m2() { //자바가 빌드단계에서 자동으로 스택메모리에 올려 두지 않음, new를 해야 함
		
		System.out.println("인스턴스 메소드입니다.");
		System.out.println(st);	
		System.out.println(it);
	}

} //클래스
