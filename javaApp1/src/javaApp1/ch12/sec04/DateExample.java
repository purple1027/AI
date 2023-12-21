package javaApp1.ch12.sec04;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		Date date=new Date();		
	
		String strNow1=now.toString();
		
		System.out.println(strNow1);
		
		new SimpleDateFormat sdf("yyyy.mm.dd HH:mm;ss");
		String strNow2=sdf.format(now);
		System.out.println(strNow2);
		
		
		
		
		
	} //main

} //class
