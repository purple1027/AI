package JavaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	 //String 객체 set 넣기
    // 과일가게: 사과 배 귤 바나나 사과 배, 우리가 팔고 있는 과일의 종류가 뭐야?
   // set 요소 넣기
  // set 구현 클래스 HashSet, TreeSet
		
	Set<String> set=new HashSet<String>();
		
    set.add("사과");
		
    set.add("배");
    
    set.add("귤");

    set.add("바나나");
    
    set.add("사과");

    set.add("배");
    
 
    //set안에 요소 갯수 구하기, 우리가 팔고 있는 과일 종류가 뭐야?
   
    System.out.println(set.size());
    
    
    
    // 메론 팔아요?
    
    System.out.println(set.contains("메론"));
    
    
    //set 안에 있는 것 모두 출력하기
    Iterator<String> it=set.iterator();
    while(it.hasNext()) {
    	System.out.println(it.next());
    	   }
    
    //set안에 있는 모든 요소 삭제하기
    
    set.clear();
    
    System.out.println(set.size());
    
    
    
    
    
	} //main

} //class
