
public class AnyEx {

	
	//�͸�Ŭ����
	public static void main(String[] args) {
		// TODO Auto-generated method stub

		AA aa=new AA();
		aa.iaM();
		
		A a =new A() {
			@Override
			void iaM() {
			System.out.println("�̸����� �ڽ�Ŭ���� ���� �θ� ��üȭ�� {}�ְ� �ٷ� �ڽ� Ŭ���� ����");
			}
			
		};
		
		a.iaM();
		
		  
	}

}

class A{
	
	void iaM() {
		
		System.out.println("�θ�Ŭ����");
	}
	
	
}

class AA extends A{
	
	@Override
	void iaM() {
		System.out.println("�ڽ�Ŭ����-�̸��ִ�");
	}
}
