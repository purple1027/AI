package javaApp4;

public class LamdaEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		//방법 1
		Inter01Impl i01=new Inter01Impl();
		i01.a();
		
		//방법 2 익명구현클래스
		
     	inter01 i001=new inter01() {
			
			@Override
			public void a() {
				// TODO Auto-generated method stub
		   System.out.println("익명 구현 클래스");		
			}
		};	
		
		
		Inter02 i002=new Inter02() {
			
			@Override
			public void b() {
				System.out.println("익명 구현 클래스 2");
				
			}
		};
		
		//방법 3 람다식 (람다식 인터페이스 안에 추상메소드 1개밖에 없는 경우)
		
		
		inter01 lamda001=()->System.out.println("람다로 구현한 구현 클래스");		
				
		lamda001.a();
		
		
		Inter02 lamda002=()->System.out.println("람다로 구현한 클래스 3");
		lamda002.b();
		
	} //main

} //class

interface inter01 {
 void a();	
}

interface Inter02 {
	 void b();	
	}

class Inter01Impl implements inter01{
	
	 @Override
	public void a() {
	System.out.println("인터페이스를 구현한 클래스");	
	}
	 
	 
	 
}
