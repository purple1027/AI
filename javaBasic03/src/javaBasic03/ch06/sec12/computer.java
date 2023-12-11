package javaBasic03.ch06.sec12;

public class computer {

	
	
	int sum (int...values) {
		int sumVar=0;
		for(int i=0;i<values.length;i++) {
			
			sumVar += values[i];
			
			
			
		}
		return sumVar;
		
		
	}

}

