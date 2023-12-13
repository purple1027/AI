package javaBasic04.ch07.sec01;

public class SmartphoneExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
	phone p=new phone();
		p.bell();
		
		p.sendVoice("잘잤어?");
		
		p.receiveVoice("잘 잤어 너도 잘잤어?");
		
		
		SmartPhone sp= new SmartPhone();
		p.sendVoice("오늘 뭐할꺼야");
		p.receiveVoice("공부할꺼야");
		
		SmartPhone sp2=new SmartPhone("아이폰","흰색");
		System.out.println(sp2.model);
		System.out.println(false);
		
		if(sp2.wifi) {System.out.println("와이파이가 됩니다.");
		}
	    else {System.out.println(sp2.color+" 핸드폰은 와이파이가 안됩니다");
		}
		
		
		
		
		
		
	} // 메인
 
} //클래스
