package javaApp1.ch12.sec05;

import java.util.HashMap;
import java.util.Set;

public class MapEx02 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Member m1=new Member("a100",123);
    	Member m2=new Member("a200",234);
		Member m3=new Member("a300",345);
		
		HashMap<Integer,Member> hmap=new HashMap<Integer,Member>();
		
		hmap.put(1, m1);
		hmap.put(2, m2);
		hmap.put(3, m3);
		
		//"a300",345 출력하기 힌트:키는 3이다.
		
		System.out.println(hmap.get(3));
		
		//키들만 출력하기
		
		Set<Integer> keys=hmap keySet();
		Iterator<Integer>it=keys.iterator()
		while(it.hasNext()) {
			
			Integer itkey=it.next();
			System.out.println(itKey+" "+hmap.get(itkey));
			
		
		//id값 pwd
		
			

			Member m1=new Member("a100",123);
	    	Member m2=new Member("a200",234);
			Member m3=new Member("a300",345);
			
			HashMap<String,Integer> hmap2=new HashMap(String,Integer)();
			hMap2.put(m1.id,m1.pwd);
			hMap2.put(m2.id,m2.pwd);
			hMap2.put(m3.id,m3.pwd);
			
			//a100일떄 pwd는?
					
			System.out.println(hMap2.get(m1,id));

			Member m3=new Member("a300",345);
			hMap2.put(m4.id,m4.pwd);
			
			
			Member m3=new Member("a300",345);
			hMap2.put(m5.id,m5.pwd);
			
			System.out.println(hMap2.size());

			
			
			
		}
		
	} //main

} //class




class Member {
	String id;
	Integer pwd;
	
	public Member(String id, Integer pwd) {
		this.id = id;
		this.pwd = pwd;
		
	}	
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
		
	}
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return id.hashCode()+pwd.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof member) {
			Member m=(member) obj; if(id.equals(m.id)&&pwd==m.pwd) return true;
		}
	}
	
	}
	
