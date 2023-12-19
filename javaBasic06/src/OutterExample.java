
public class OutterExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Outter1 o =new Outter1();
		Outter1.Inner1 i=o.new Inner1();
		//i.iaM();
		
		
	}

}
	class Outter1{
		
		int a= 10;
		void aM() {}
		static int sa=20;
	    static void saM() {};
			
			class Inner1{
				
//				int ia=100;
//				void iam() {};
				//ia=ia+20;
				//a=a+20;aM();
//				Outter.sa=Outer.sa+100;
//				Outter.saM();
				
				//static int sia=10;
				//static void siaM() {};
			
			}
		}


