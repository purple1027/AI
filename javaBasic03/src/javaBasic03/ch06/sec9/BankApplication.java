package javaBasic03.ch06.sec9;

import java.util.Scanner;

public class BankApplication {

	Scanner sc=new Scanner(System.in);
	
	Account[] accouts=new Account[100];
	
	
	
		// TODO Auto-generated method stub
	Account[] accounts[]=new Account[100];

	int count= 0; //°èÁÂ»ý¼º Ä«¿îÆ® º¯¼ö
	
	
	public void °èÁÂ»ý¼º() {
		accounts[count++]=new Account();
		System.out.println("------------------");
		System.out.println("°èÁÂ»ý¼º");
		System.out.println("------------------");
		System.out.print("°èÁÂ¹øÈ£:");
		accounts[count].°èÁÂ¹øÈ£=sc.next();
		System.out.print("°èÁÂÁÖ:");
		accounts[count].°èÁÂÁÖ=sc.next();
		System.out.print("ÃÊ±âÀÔ±Ý¾×:");
		accounts[count].ÃÊ±âÀÔ±Ý¾×=sc.nextInt();
		System.out.println("°á°ú:°èÁÂ°¡ »ý¼ºµÇ¾ú½À´Ï´Ù.");
		
	    count=count+1;
	    
	}

	public void °èÁÂ¸ñ·Ï() {
		System.out.println("------------------------");
		System.out.println("°èÁÂ¸ñ·Ï");
		System.out.println("------------------------");
		for (i=0;2<count;i++) {
			System.out.println(accounts[i].get°èÁÂ¹øÈ£()+""+accounts[i].get°èÁÂÁÖ(),""+accounts[i].getÀÜ°í());
		}
	}

	public void ¿¹±Ý() {
		// TODO Auto-generated method stub
		
	}

	public void Ãâ±Ý() {
		// TODO Auto-generated method stub
		
	}

	
	
	//°èÁÂ»ý¼º 
	
	
	
	//°èÁÂ¸ñ·Ï
	
	//¿¹±Ý
	
	//Ãâ±Ý
	
	
	
	
	
} //Å¬·¡½º
