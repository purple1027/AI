package javaApp4;

public class LamdaEx01 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		// �͸��� Ŭ����
		
		
		
		A a =new A () {
			
			@Override
			public int aM(int a, double b) {
				// TODO Auto-generated method stub
				return (int)(a+b);
			}
			
		};
		
		System.out.println(a.aM(10, 1.8));
		
		
		
		//���ٽ�
		
		A a1=(int c, double d)->{return (int)(c+d); };
		
		System.out.println(a.aM(20,3.8));
		
		
		B b1=(x,y,z) -> {
        System.out.println("�̸���"+x);
        System.out.println("Ű��"+y);
        if (z) System.out.println("��");
        else System.out.println("��");

		};
        
		
		
        b1.bM("ȫ�浿", 170, true);
        b1.bM("�̼���", 160, false);
		
	} //main

} //class


//�������̽� �ȿ� �߻� �޼ҵ尡 1���� �ִٶ�� ����

@FunctionalInterface
interface A{
	int aM(int a, double b);

}

@FunctionalInterface
interface B{
	int bM(String x, Integer y, Boolean z);
	
}

