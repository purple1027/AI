package javaApp4;

public class LamdaEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		//��� 1
		Inter01Impl i01=new Inter01Impl();
		i01.a();
		
		//��� 2 �͸���Ŭ����
		
     	inter01 i001=new inter01() {
			
			@Override
			public void a() {
				// TODO Auto-generated method stub
		   System.out.println("�͸� ���� Ŭ����");		
			}
		};	
		
		
		Inter02 i002=new Inter02() {
			
			@Override
			public void b() {
				System.out.println("�͸� ���� Ŭ���� 2");
				
			}
		};
		
		//��� 3 ���ٽ� (���ٽ� �������̽� �ȿ� �߻�޼ҵ� 1���ۿ� ���� ���)
		
		
		inter01 lamda001=()->System.out.println("���ٷ� ������ ���� Ŭ����");		
				
		lamda001.a();
		
		
		Inter02 lamda002=()->System.out.println("���ٷ� ������ Ŭ���� 3");
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
	System.out.println("�������̽��� ������ Ŭ����");	
	}
	 
	 
	 
}
