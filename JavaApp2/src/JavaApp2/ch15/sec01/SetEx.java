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
		
		Iterator<Integer> it=set.iterator(); // �ݺ�
		while (it.hasNext()){
		System.out.println(it.next()); //�������� ����� �ȴ�.
		}
		
		
		//set�ȿ� 40�� �ֳ���?
		System.out.println(set.contains(50));
		
		// set�ȿ� ��Ұ� ����ֳ���?
		
		System.out.println(set.isEmpty());
		
		//50�� ����������
		
		set.remove(50);
				
		it=set.iterator(); // �ݺ�
		while (it.hasNext()){
		System.out.println(it.next()); //�������� ����� �ȴ�.
		}
		
		//set �ȿ� ��� 100 �߰��ϱ�
		set.add(100);
		
		//set�ȿ� ��� 80 �����ϱ�
		set.remove(80);
		
		// ����ϱ�
		
		it=set.iterator(); // �ݺ�
		while (it.hasNext()){
		System.out.println(it.next()); //�������� ����� �ȴ�.
		}
		
		
	} //main

} //class
