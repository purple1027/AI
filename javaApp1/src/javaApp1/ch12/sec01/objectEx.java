package javaApp1.ch12.sec01;

public class objectEx extends object {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		Member obj1=new Member("blue");
		Member obj2=new Member("blue");
		Member obj3=new Member("Red");
		
		if (obj1==obj2) {
			System.out.println("같다");
		}else {
			System.out.println("다르다");
		}
				
		
		if (obj1.equals (obj2)) {
			System.out.println("같다");
		}else {
			System.out.println("다르다");
		}
	} //main

} //class

class Member{
	
	public String id;
	
	public Member(String id) {
		this.id=id;

            
	}
	
}
