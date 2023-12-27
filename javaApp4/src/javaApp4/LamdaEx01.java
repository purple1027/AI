package javaApp4;

public class LamdaEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// 익명구현 클래스
		
		
		
		A a =new A () {
			
			@Override
			public int aM(int a, double b) {
				// TODO Auto-generated method stub
				return (int)(a+b);
			}
			
		};
		
		System.out.println(a.aM(10, 1.8));
		
		
		
		//람다식
		
		A a1=(int c, double d)->{return (int)(c+d); };
		
		System.out.println(a.aM(20,3.8));
		
		
		B b1=(x,y,z) -> {
        System.out.println("이름은"+x);
        System.out.println("키는"+y);
        if (z) System.out.println("남");
        else System.out.println("여");

		};
        
		
		
        b1.bM("홍길동", 170, true);
        b1.bM("이수연", 160, false);
		
	} //main

} //class


//인터페이스 안에 추상 메소드가 1개만 있다라는 성격

@FunctionalInterface
interface A{
	int aM(int a, double b);

}

@FunctionalInterface
interface B{
	int bM(String x, Integer y, Boolean z);
	
}

