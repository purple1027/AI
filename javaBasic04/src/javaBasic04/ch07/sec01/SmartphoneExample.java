package javaBasic04.ch07.sec01;

public class SmartphoneExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
	phone p=new phone();
		p.bell();
		
		p.sendVoice("�����?");
		
		p.receiveVoice("�� ��� �ʵ� �����?");
		
		
		SmartPhone sp= new SmartPhone();
		p.sendVoice("���� ���Ҳ���");
		p.receiveVoice("�����Ҳ���");
		
		SmartPhone sp2=new SmartPhone("������","���");
		System.out.println(sp2.model);
		System.out.println(false);
		
		if(sp2.wifi) {System.out.println("�������̰� �˴ϴ�.");
		}
	    else {System.out.println(sp2.color+" �ڵ����� �������̰� �ȵ˴ϴ�");
		}
		
		
		
		
		
		
	} // ����
 
} //Ŭ����
