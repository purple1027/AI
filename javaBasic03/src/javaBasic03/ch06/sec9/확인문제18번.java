package javaBasic03.ch06.sec9;

public class 확인문제18번 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		ShopService  obj1=ShopService.getInstance(); 
		ShopService  obj2=ShopService.getInstance(); 
		
		
		System.out.println(obj1);
		System.out.println(obj2);
		
		
		
		if(obj1==obj2) {
			System.out.println("같은 ShopService 객체입니다");
			
		} else {
		System.out.println("다른 ShopService 객체입니다");
				}
	
		
		
		
		
		
	}
		
		
	
	
		
	} //메인

// 클래스
