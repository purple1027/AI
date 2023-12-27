package javaApp4;

public class LamdaEx02 {

	public static void main(String[] args) {
		
 colleage<String> s1=(name)->{return name+"대학교";};
		
System.out.println(s1.cName("서울"));
System.out.println(s1.cName("인천"));
		
		

Fruit<String> s2=(name)->{return name+"사세요";};

System.out.println(s2.fName("사과"));
System.out.println(s2.fName("배"));




	} //main

} //class

@FunctionalInterface
interface colleage<T>{
	
	T cName(T name);
}

interface Fruit<A>{
	
	A fName(A name);
	
}
