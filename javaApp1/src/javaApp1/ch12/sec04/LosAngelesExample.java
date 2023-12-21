package javaApp1.ch12.sec04;

import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.TimeZone;

public class LosAngelesExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		TimeZone timeZone=TimeZone.getTimeZone("America/Los_Angeles");
		
		TimeZone timeZone1=TimeZone.getTimeZone("France/Los_Paris");
		
		
		Calendar now=Calendar.getInstance(timeZone1);
		
		LocalDateTime start=LocalDateTime.of(2023, 12, 20, 12, 00);
		LocalDateTime end=LocalDateTime.of(2023, 12, 25, 11, 59);
		LocalDateTime currnetDate=LocalDateTime.now();

		if(start.isBefore(end)&&currnetDate. isAfter(start)) {
			System.out.println("에빈트 중입니다.세일 70%입니다");
		} else if(currnetDate.isEqual(end)){
			System.out.println("이벤트 마감 세일 85%");

		}
		
		
				
				
	
	} //main

	
}//class
