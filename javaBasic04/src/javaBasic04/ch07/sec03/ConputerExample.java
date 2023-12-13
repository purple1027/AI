package javaBasic04.ch07.sec03;

public class ConputerExample {

	public static void main(String[] args) {
		// 부모 클래스 객체 생성하기
		
		Calculator cal=new Calculator();
       System.out.println(cal.areaCircle(10)); // 부모 메소드 호출
        
       
       Computer com=new Computer();
       System.out.println(com.areaCircle(10)); // 자식 클래스 메소드 호출
    		   
	}

}
