package javabasic.ch11.sec02.Exam01;

public class ExceptionEx3 {

	public static void main(String[] args) throws ArithmeticException{
		// TODO Auto-generated method stub

		B b=new B();
		b.b1();
		
		catch(ArithmeticException e) {
			 
			 System.out.println(e.getMessage()+"분모가 0 오류");
	
					 
			 finally {
			
			
			System.out.println("DB닫기");
			System.out.println("로그오프");}
		}
		
	} //main

} //class



class B{
	void b1() throws ArithmeticException{
	b2();	
	}
	
    void b2() throws ArithmeticException{
		
    	int a=10;
    	a=a/0;
	}
}
