package javaBasic03.ch06.sec2;

public class 변수의생명주기 {
     int c=10; //전역변수
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		int a=10;//변수 태어나기 생성. main() 안에서만 쓸 수 있다. 생성된 곳의 {} 안에서만 가능함 //지역변수
		System.out.println(c);

		for(int i=0; i<10; i++) {
			
		}
		
		
			
	} //메인

	void method01() {int b=20;
System.out.println(c); } //변수가 선언되지 않았다 에러

void method02() { 	System.out.println(c); }
	



} //클래스

 