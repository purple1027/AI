package javaApp4;

public class LamdaEx02 {

	public static void main(String[] args) {
		
 colleage<String> s1=(name)->{return name+"���б�";};
		
System.out.println(s1.cName("����"));
System.out.println(s1.cName("��õ"));
		
		

Fruit<String> s2=(name)->{return name+"�缼��";};

System.out.println(s2.fName("���"));
System.out.println(s2.fName("��"));




	} //main

} //class

@FunctionalInterface
interface colleage<T>{
	
	T cName(T name);
}

interface Fruit<A>{
	
	A fName(A name);
	
}
