package javaBasic03.ch06.sec7;

import java.util.Scanner;

public class 확인문제612 {
    
	Scanner sc = new Scanner(System.in);
	
//	System.out.print("id>");
//	String id=sc.next();
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
	MemberService memberService =new MemberService();
	boolean result=memberService.login("hong","12345");
	
	if(result) {
		
		System.out.println("로그인 되었습니다");
	    memberService.logout("hong");
	    	}
	else { System.out.println("id 또는 password가 올바르지 않습니다");
		
	}
		
	} //메인

} //클래스
