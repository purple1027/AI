package javabasic.ch11.sec02.Exam01;

public class ExceptionEx3 {

	public static void main(String[] args) throws ArithmeticException{
		// TODO Auto-generated method stub

		B b=new B();
		b.b1();
		
		catch(ArithmeticException e) {
			 
			 System.out.println(e.getMessage()+"�и� 0 ����");
	
					 
			 finally {
			
			
			System.out.println("DB�ݱ�");
			System.out.println("�α׿���");}
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
