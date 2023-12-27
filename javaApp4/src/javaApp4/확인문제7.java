package javaApp4;

public class 확인문제7 {

	private static int[] scores= {10,50,3};
	public static int maxOrMin(Operator operator) {
		int result=scores[0];
		for(int score: scores) {
		result=operator.apply(result, score);	
			
		}
		return result;
		
	}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		int max= maxOrMin()
		System.out.println("최대값:"+max);		
		
		
	} //main

} //class


@FunctionalInterface

interface Operator{
	public int apply(int x,int y);
	
	
}
