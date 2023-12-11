package javaBasic03.ch06.sec11;

import javaBasic03.ch06.example.calculator;

public class culculatorExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		calculator calculator=new calculator();
		calculator.powerOn();
		calculator.powerOff();
		
		calculator.powerOn();
		int result=calculator.plus(300,500);
		System.out.println(result);
		
		
	} //main

} //class
