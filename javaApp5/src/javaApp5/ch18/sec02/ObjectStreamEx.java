package javaApp5.ch18.sec02;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.OutputStream;
import java.io.Serializable;

public class ObjectStreamEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
    try {
		OutputStream os=new FileOutputStream("D:\\AI\\study folder\\java study\\data\\member.dat");
	  
		BufferedOutputStream bos=new BufferedOutputStream(os);
        ObjectOutputStream oos=new ObjectOutputStream(bos); 
		
        Member m1=new Member("fall","¥‹«≥¿Ã",10);
		oos.writeObject(m1);
		oos.flush();
		oos.close();
		
        InputStream is=new FileInputStream("D:\\AI\\study folder\\java study\\data\\member.dat");
		BufferedInputStream bis=new BufferedInputStream(is);
        ObjectInputStream ois=new ObjectInputStream(bis);
        
        Member iM=(Member)ois.readObject();		
        		
        System.out.println(iM);		
        		
    } catch (IOException | ClassNotFoundException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
    
		
		
		
	} //main

} //class

class Member implements Serializable{
	String id;
	String name;
	int age;
	
	public Member(String id, String name, int age) {
		super();
		this.id = id;
		this.name = name;
		this.age = age;
	}
	
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return id+" "+name+" "+ age;
	}
	
}