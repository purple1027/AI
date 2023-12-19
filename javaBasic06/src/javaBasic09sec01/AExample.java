package javaBasic09sec01;

public class AExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

class A {
	
	int a=10;
	void aM() {System.out.println(a);
	
	//b=b+20; // 내부클래스의 변수를 사용할 수 없다.
    //bM();

	
	
    
	
	
	
	}

	static int sa=200;
	static void sa() {
	
	System.out.println(sa);

	}	
	
	
	class B{
		// a=a+100; 메소드 안에 더해라 라고 명령해야 하는데 클래스에다가 명령을 주어서 안됨.
		//aM(); 
		
		int b=20;
		void bM() {
			a=a+100;
			System.out.println(b);
			
		}
		
		
		
		
	}
	
	
}