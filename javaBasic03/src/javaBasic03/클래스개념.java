package javaBasic03;

public class 클래스개념 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//객체 생성 하자마자 값을 넣어주기
		Student st1 = new Student("230101","홍길동","AI",100,"010-1234-5678");
		
		teacher t1 = new teacher("A32","정현희","컴공",1000000,"전임",20);
	
	//"230101" 출력하고자 할 때
		
		System.out.println(st1.get학번());
		System.out.println(st1.get점수());
		System.out.println(t1.get이름());
		System.out.println(t1.get구분());
		
		
		
		
		//필요할 때 마다 넣기
		// 빈 객체 생성하기
		
		Student st2=new Student();
		teacher tc3=new teacher();
		
		
		st2.set학번("2201");
		st2.set이름("이순신");
	    st2.set학과("경영학과");
	    st2.set점수("85");
		st2.set전화번호(010-1213-6456);
	
		tc3.set코드("B101");
		tc3.set이름("박희연");
		tc3.set전공("피아노");
		tc3.set급여(2000000);
		tc3.set구분("시간강사");
		tc3.set시수(30);
		
		
		
		System.out.println(st2.get학번()+" "+st2.get이름()+" "+st2.get학과());
	
	
		자동차판매현황 car1=new 자동차판매현황("싼타페", 35000000,15000000,2000000,36,55555);
		
	
	
	
	
	} //main

} //class
