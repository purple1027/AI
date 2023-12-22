package JavaApp2.ch15.sec02;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MapEx1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	Map<Integer,String> m1=new HashMap<Integer,String>();
	
    m1.put(1,"이순신");   
    m1.put(2,"박수연");
    m1.put(3,"홍길동");   
    m1.put(3,"홍길동1");
    m1.put(3,"홍길동2");
    
	Map<String, Double>m2=new HashMap<String, Double>();
	
	m2.put("a",2.5);
	m2.put("b",3.5);
	m2.put("b",3.5);
	m2.put("b",13.5);
	
	System.out.println(m1.get(1));
	System.out.println(m1.get(3));

	//3.5 출력해보기
	
	System.out.println(m2.get("b"));
	
	//크기 구하기
	
	System.out.println(m1.size()); //키가 동일하면 동등객체로 판단하고 새로운것으로 대체한다.
	
	
	Map<String, String>m3=new HashMap<String, String>();
	
	m3.put("홍길동","과장");
	m3.put("이순신","부장");
	m3.put("최경미","사원");	
	m3.put("홍길동","사장");
	
	System.out.println(m3.size());
	
	System.out.println(m3.get("이순신"));
	System.out.println(m3.get("최경미"));
	System.out.println(m3.get("홍길동"));
	
	m1.remove(3);
	System.out.println(m1.size());
	m3.remove("최경미");
	
	System.out.println(m3.get("홍길동"));
	System.out.println(m3.get("이순신"));
	
	Set<String> m3keys=m3.keySet();
	Iterator<String> it=m3keys.iterator();
	while(it.hasNext()) {
		System.out.println(it.next());
	}
	
	System.out.println(m3.get(it.next()));
	
	} //main

} //class
