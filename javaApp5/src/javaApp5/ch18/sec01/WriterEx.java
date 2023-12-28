package javaApp5.ch18.sec01;

import java.io.FileNotFoundException;
import java.io.FileOutputStream;

public class WriterEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		 new FileOutputStream("D:\AI\study folder\java study\data\test1.db)"
		
		
		byte a=10;
		byte b=20;
		byte c=30;
		
		byte[]bArr= {100,127,-127};
		
		
		os.write(a);
		os.write(b);
		os.write(c);
		
		os.write(bArr);
		
		os.flush();
		os.close();
		
		
	} catch (FileNotFoundException e) {
		 e.printStackTrace();
	}
	
	 catch (IOException e) {
		 e.printStackTrace();
	}
		
	} //main

}//class
