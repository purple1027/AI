package javaBasic03.ch06.sec3;

import javaBasic03.ch06.sec4.AA;

public class 접근제한자 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		A클래스 aAdd=new A클래스();
		System.out.println(aAdd.a); // 오류 프라이베잇은 다른 객체에서 쓸 수 없다
		
		
		System.out.println(aAdd.b); // 접근제한자가 디폴트니까 같은 패키지는 가능하다.
		
		System.out.println(aAdd.c); // 접근제한자가 퍼블릭이니까 같은 패키지는 가능하다.
		
		
		aAdd.a1(); //오류
		aAdd.b1();
		aAdd.c1();
		
		
		AA aaAdd=new AA();
	System.out.println(aaAdd.a); //에러 프라이빗 다른 객체에서 못씀
		
	System.out.println(aaAdd.b); //에러 다른 패키지이기 때문에 에러가 남
		
	System.out.println(aaAdd.c); //퍼블릭이니까 가능
		
	} //메인

} //클래스
