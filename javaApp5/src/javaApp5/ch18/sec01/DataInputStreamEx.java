package javaApp5.ch18.sec01;

import java.io.DataOutputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

public class DataInputStreamEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		try {
			OutputStream os=new FileOutputStream("D:\\\\\\\\AI\\\\\\\\study folder\\\\\\\\java study\\\\\\\\data \\\\\\\\ p.db");
			
			DataOutputStream dos=new DataOutputStream(os);
			
			dos.writeUTF("È«±æµ¿");
			dos.writeDouble(95.5);
			dos.writeInt(1);
			
			dos.writeUTF("±èÀÚ¹Ù");
			dos.writeDouble(90.3);
			dos.writeInt(2);
			
		    dos.flush();
		    dos.close();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
	}

}
