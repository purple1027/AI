package javaApp1.ch12.sec07;

import java.util.TreeSet;

public class ComparableEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	Person p1=new Person("ȫ�浿",45);
	Person p2=new Person("ȫ�浿",25);
	Person p3=new Person("ȫ�浿",31);	
		
	TreeSet<Person> t1=new TreeSet<Person>();
		
	t1.add(p1);
	t1.add(p2);
	t1.add(p3);
	
	for (Person p:t1) {
		System.out.println(p);
	}
	

	
	
	
	} //main

} //class


class Person implements Comparable<Person>{
	
	String name;
	Integer age;
	
	public Person(String name, Integer age) {
		super();
		this.name = name;
		this.age = age;
		
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return name+" "+age;
	}

	@Override
	public int compareTo(Person o) {
    int result=name.compareTo(o.name);
	return result;
	}
	
	
}




