package JavaApp2.ch15.sec02;

import java.util.Comparator;
import java.util.TreeSet;

public class ComparatorEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		Fruit f1=new Fruit("포도",3000);
		Fruit f2=new Fruit("수박",10000);
		Fruit f3=new Fruit("딸기",6000);
		
		TreeSet<Fruit> ts=new TreeSet<Fruit>();
		
		ts.add(f1);
		ts.add(f2);
		ts.add(f3);
		
	}//main

} //class


class Fruit implements Comparable<Fruit>{
	
	String name; //과일명
	Integer price; // 과일가격
	
	public Fruit(String name, Integer price) {
		super();
		this.name = name;
		this.price = price;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return super.toString();
	}
	@Override
	public int compareTo(Fruit o) {
		// TODO Auto-generated method stub
		return name.compareTo(o.name);
	}
}




class FruitCom implements Comparator<Fruit>{

	@Override
	public int compare(Fruit o1, Fruit o2) {
		// TODO Auto-generated method stub
		return 0;
	}

	return o1.name.compareTo(o2.name);
	
	
}