package javaApp1.ch12.sec01;

public class objectEx extends object {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		Member obj1=new Member("blue");
		Member obj2=new Member("blue");
		Member obj3=new Member("Red");
		
		if (obj1==obj2) {
			System.out.println("����");
		}else {
			System.out.println("�ٸ���");
		}
				
		
		if (obj1.equals (obj2)) {
			System.out.println("����");
		}else {
			System.out.println("�ٸ���");
		}
	} //main

} //class

class Member{
	
	public String id;
	
	public Member(String id) {
		this.id=id;

            
	}
	
}
