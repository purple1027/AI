package javaBasic03.ch06.sec11;

public class culculator {

	//형식[접근제한자(생략가능)], 리턴타입, 메소드면([매개변수]){} 
    //형식에서 [] 생략가능 ... 여러개
	
	void powerOn() {
	System.out.println( "전원을 켭니다.");	
	}
	
	void powerOff() {
		System.out.println("전원을 끕니다");
		
	}
	
	
	int plus(int x, int y) {
	int result=x+y;
			return result; // 메소드를 호출한 곳을 변수 result 값을 되돌려 줘라
	}
	
   double divide(int x, int y) {
	   double result= (double)x /(double) y;
	   return result;
	   
	
	   
	   //메소드는 설계하고 실행되지 않는다. 메소드를 실행하려면 호출해야 한다.
   }
	
}
