package javaBasic03.ch06.sec;

import java.text.SimpleDateFormat;
import java.util.Date;

public class 대출현황표_메인 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Date now = new Date();
		String nowTime = now.toString();
		System.out.println(nowTime);
		
		SimpleDateFormat sdf=new SimpleDateFormat("yyyy-mm=dd");
		
		//System.out.println(sdf.format(nowTime));
		
		
		//동일한 객체를 생성하고 내용만 다를 때 배열을 사용한다.
		
		대출현황표 d1= new 대출현황표("J02-38", "이민주", new Date(),"주택자금대출",27000000, 48);
		대출현황표 d2= new 대출현황표("Y04-15", "진영태", new Date(),"예부적금담보대출",3000000, 36);
		대출현황표 d3= new 대출현황표("M02-06", "최철식", new Date(),"무보증신용대출",20000000, 36);
		대출현황표 d4= new 대출현황표("K03-05", "민승렬", new Date(),"국민주택기금대출",15000000, 60);
		
		대출현황표[] dArr= {new 대출현황표("J02-38", "이민주", new Date(),"주택자금대출",27000000, 48)	,		
		new 대출현황표("Y04-15", "진영태", new Date(),"예부적금담보대출",3000000, 36),			
		new 대출현황표("M02-06", "최철식", new Date(),"무보증신용대출",20000000, 36),
		new 대출현황표("K03-05", "민승렬", new Date(),"국민주택기금대출",15000000, 60)
		
		};
		

		for (int i=0; i<dArr.length;i++) {
			System.out.println(dArr[i].get대출번호()+" " + dArr[i].get성명()+""+dArr[i].get대출일()+""+dArr[i].get대출종류()+""+dArr[i].get대출금액()+"" + dArr[i].get기간() );
			}
		
		int 대출금총합=0;
		int 기간총합=0;
		for (int i=0;i<dArr.length; i++) {
			대출금총합=대출금총합+dArr[i].get대출금액();
			기간총합=기간총합+dArr[i].get기간();
			
		double 기간평균=기간총합/(double)dArr.length;	
		System.out.println("대출금액 총합"+대출금총합);
		System.out.println("기간의 평균"+기간평균);
		}
		
		
		
		
		
	} //main

} //class
