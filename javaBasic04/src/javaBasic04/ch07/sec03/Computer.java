package javaBasic04.ch07.sec03;
//calculator �ڽ��� Ŭ����

public class Computer extends Calculator{
	
	@Override
	public double areaCircle(double r) {
        System.out.println("computer ��ü�� areaCircle() ����");
		return 2*3.14*r; //���ѷ� ���ϱ� 
				
	}

}
