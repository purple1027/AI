package JavaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	 //String ��ü set �ֱ�
    // ���ϰ���: ��� �� �� �ٳ��� ��� ��, �츮�� �Ȱ� �ִ� ������ ������ ����?
   // set ��� �ֱ�
  // set ���� Ŭ���� HashSet, TreeSet
		
	Set<String> set=new HashSet<String>();
		
    set.add("���");
		
    set.add("��");
    
    set.add("��");

    set.add("�ٳ���");
    
    set.add("���");

    set.add("��");
    
 
    //set�ȿ� ��� ���� ���ϱ�, �츮�� �Ȱ� �ִ� ���� ������ ����?
   
    System.out.println(set.size());
    
    
    
    // �޷� �Ⱦƿ�?
    
    System.out.println(set.contains("�޷�"));
    
    
    //set �ȿ� �ִ� �� ��� ����ϱ�
    Iterator<String> it=set.iterator();
    while(it.hasNext()) {
    	System.out.println(it.next());
    	   }
    
    //set�ȿ� �ִ� ��� ��� �����ϱ�
    
    set.clear();
    
    System.out.println(set.size());
    
    
    
    
    
	} //main

} //class
