package javaBasic03.ch06.sec9;

import java.util.Scanner;

public class BankApplication {

	Scanner sc=new Scanner(System.in);
	
	Account[] accouts=new Account[100];
	
	
	
		// TODO Auto-generated method stub
	Account[] accounts[]=new Account[100];

	int count= 0; //���»��� ī��Ʈ ����
	
	
	public void ���»���() {
		accounts[count++]=new Account();
		System.out.println("------------------");
		System.out.println("���»���");
		System.out.println("------------------");
		System.out.print("���¹�ȣ:");
		accounts[count].���¹�ȣ=sc.next();
		System.out.print("������:");
		accounts[count].������=sc.next();
		System.out.print("�ʱ��Աݾ�:");
		accounts[count].�ʱ��Աݾ�=sc.nextInt();
		System.out.println("���:���°� �����Ǿ����ϴ�.");
		
	    count=count+1;
	    
	}

	public void ���¸��() {
		System.out.println("------------------------");
		System.out.println("���¸��");
		System.out.println("------------------------");
		for (i=0;2<count;i++) {
			System.out.println(accounts[i].get���¹�ȣ()+""+accounts[i].get������(),""+accounts[i].get�ܰ�());
		}
	}

	public void ����() {
		// TODO Auto-generated method stub
		
	}

	public void ���() {
		// TODO Auto-generated method stub
		
	}

	
	
	//���»��� 
	
	
	
	//���¸��
	
	//����
	
	//���
	
	
	
	
	
} //Ŭ����
