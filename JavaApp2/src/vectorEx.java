import java.util.Vector;

public class vectorEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//������ : �������� CPU�� ����ϸ鼭 ��Ƽ ���α׷��� �ϴ� ���̴�.
		//vector �÷����� �������� �ڷḦ ������� ����. �̿�оߴ� ������� ��Ƽ���α׷��� �� �� ������ �ְ� �ߺ������� �� �ִ� �ڷᱸ��.
		
		Vector<Double> dArr=new Vector<Double>();
		
		dArr.add(10.4);
		dArr.add(8.8);
		dArr.add(9.4);
		dArr.add(3.7);
		
		
		dArr.add(2, 7.9);
		
		//3.7�� �ֽ��ϱ�?
		
		if (dArr.contains(3.7)) {
			System.out.println("�ֽ��ϴ�");
			
		}else {System.out.println("�����ϴ�");
		}
		//10.4�� �����ϱ�
		dArr.remove(0);

//		//��ü����ϱ�
//		for(int i=0;i<dArr.size();i++) {
//			System.out.println(dArr.get(i)+" ");
		}
		
	
	
	
		
	} //main

 //class
