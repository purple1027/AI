package javaApp1.ch12.sec05;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map.Entry;
import java.util.Set;

public class MatEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		HashMap<Integer, String> hm=new HashMap()<Integer, String>();
		
		hm.put(1,"ȫ�浿1");
		
		hm.put(2,"ȫ�浿2");
		
		hm.put(3,"ȫ�浿3");
		
		hm.put(4,"ȫ�浿4");
		
		System.out.println(hm.size());
		
		System.out.println(hm.containsKey(3));
		
		System.out.println(hm.containsValue("ȫ�浿5"));
		
		System.out.println(hm.get(2));
		
		hm.remove(4);
		
		System.out.println(hm.get(1));
		System.out.println(hm.get(2));
		System.out.println(hm.get(3));
		
	    Set<integer> keys=hm.keySet();
	    Iterator(Integer) it=keys.interator();
	    while(it.hasNext()) {
	    	System.out.println(hm.get(it.next));	    	
	    }

				
	    Set<Entry<Integer, String>> e=hm.entrySet();
	   Iterator<Entry<Integer,String>> it2= e.iterator();
	   while(it2.hasNext()) {
		   System.out.println(it2.next);
		   
		   Entry<Integer,String> e1=it2.next();
		   Integer keyE1=e1.getKey();
		   hm.get(keyE1);
		   e1.getValue();
		   
		   
		   
}
	    
	    
	}
	
	

}
