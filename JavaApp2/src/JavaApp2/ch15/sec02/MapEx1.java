package JavaApp2.ch15.sec02;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class MapEx1 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	Map<Integer,String> m1=new HashMap<Integer,String>();
	
    m1.put(1,"�̼���");   
    m1.put(2,"�ڼ���");
    m1.put(3,"ȫ�浿");   
    m1.put(3,"ȫ�浿1");
    m1.put(3,"ȫ�浿2");
    
	Map<String, Double>m2=new HashMap<String, Double>();
	
	m2.put("a",2.5);
	m2.put("b",3.5);
	m2.put("b",3.5);
	m2.put("b",13.5);
	
	System.out.println(m1.get(1));
	System.out.println(m1.get(3));

	//3.5 ����غ���
	
	System.out.println(m2.get("b"));
	
	//ũ�� ���ϱ�
	
	System.out.println(m1.size()); //Ű�� �����ϸ� ���ü�� �Ǵ��ϰ� ���ο������ ��ü�Ѵ�.
	
	
	Map<String, String>m3=new HashMap<String, String>();
	
	m3.put("ȫ�浿","����");
	m3.put("�̼���","����");
	m3.put("�ְ��","���");	
	m3.put("ȫ�浿","����");
	
	System.out.println(m3.size());
	
	System.out.println(m3.get("�̼���"));
	System.out.println(m3.get("�ְ��"));
	System.out.println(m3.get("ȫ�浿"));
	
	m1.remove(3);
	System.out.println(m1.size());
	m3.remove("�ְ��");
	
	System.out.println(m3.get("ȫ�浿"));
	System.out.println(m3.get("�̼���"));
	
	Set<String> m3keys=m3.keySet();
	Iterator<String> it=m3keys.iterator();
	while(it.hasNext()) {
		System.out.println(it.next());
	}
	
	System.out.println(m3.get(it.next()));
	
	} //main

} //class
