
public class AnyEx {

	
	//익명클래스
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		AA aa=new AA();
		aa.iaM();
		
		A a =new A() {
			@Override
			void iaM() {
			System.out.println("이름없는 자식클래스 내용 부모 객체화에 {}넣고 바로 자식 클래스 만듬");
			}
			
		};
		
		a.iaM();
		
		  
	}

}

class A{
	
	void iaM() {
		
		System.out.println("부모클래스");
	}
	
	
}

class AA extends A{
	
	@Override
	void iaM() {
		System.out.println("자식클래스-이름있다");
	}
}
