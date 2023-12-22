package JavaApp2.ch15.sec01;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

public class SetEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Set<Integer> set=new HashSet<Integer>();
		set.add(10);
		set.add(50);
		set.add(80);
		set.add(10);
		
		System.out.println(set.size());
		
		Iterator<Integer> it=set.iterator(); // 반복
		while (it.hasNext()){
		System.out.println(it.next()); //순서없이 출력이 된다.
		}
		
		
		//set안에 40이 있나요?
		System.out.println(set.contains(50));
		
		// set안에 요소가 비어있나요?
		
		System.out.println(set.isEmpty());
		
		//50을 지워보세요
		
		set.remove(50);
				
		it=set.iterator(); // 반복
		while (it.hasNext()){
		System.out.println(it.next()); //순서없이 출력이 된다.
		}
		
		//set 안에 요소 100 추가하기
		set.add(100);
		
		//set안에 요소 80 삭제하기
		set.remove(80);
		
		// 출력하기
		
		it=set.iterator(); // 반복
		while (it.hasNext()){
		System.out.println(it.next()); //순서없이 출력이 된다.
		}
		
		
	} //main

} //class
