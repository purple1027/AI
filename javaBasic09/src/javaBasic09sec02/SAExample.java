package javaBasic09sec02;

public class SAExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}

class AA{
	int aa=20; 
	void aaM() {
		
	}
	static int sa=10;
	static void saM() {
		
	}
	
}

static class BB{
	
	static int bb=20;
	static void sbbM() {
	int ibb=30;
	
	}
	int ibb=30;
	void ibbM() {
		ibb=ibb+40;
		bbM();
		
	}
	void bbM() {
		
		//aa=aa+20;
		//aaM();
		AA.sa=100;
		AA.saM();
	}
}