package javaBasic04.ch07.sec03;
//calculator 자식의 클래스

public class Computer extends Calculator{
	
	@Override
	public double areaCircle(double r) {
        System.out.println("computer 객체의 areaCircle() 실행");
		return 2*3.14*r; //원둘레 구하기 
				
	}

}
