package javaApp1.ch12.sec03;

import java.util.Arrays;

public class StringEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		String data="자바";
		byte[] arr1=data.getBytes();
		System.out.println(arr1[1]);
		System.out.println(arr1.length);
		
		
      String str1=Arrays.toString(arr1);
      System.out.println(str1);
      
      
      StringBuilder sb= new StringBuilder();
      sb.append("자바");
      System.out.println(sb);
      sb.append("자바");
      System.out.println(sb);
      sb.insert(0,"a");
      System.out.println(sb);
      
      
	}

}
