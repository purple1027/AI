import java.util.ArrayList;

public class ArrayListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[] iarr= {1,2};
		for (int i=0; i<iarr.length;i++) {
			System.out.println(iarr[i]);
		}
		
	
		
		// list�� ���� Ŭ������ Arrayslist�� �̿�
		
		ArrayList<Integer> arrList=new ArrayList<Integer>();
		
		//<E> ���׸�, �ڷ��� ���� �̸� �����ϴ°�.

		arrList.add(1);
		arrList.add(2);
		
		System.out.println(arrList.size());
		
		//3,4, �߰��ϰ� �ʹ�.
		
		arrList.add(3);
		arrList.add(4);
		
		// 0�� �γؽ��� -7�� �ֱ�
		
		arrList.add(0, -7);
		
		//��ü����ϰ� �ʹ� 
		
		for(int i=0;i<arrList.size();i++) {
			System.out.println(arrList.get(i));
		} // �ε��� ��ȣ�� �ִ� ��Ҹ� ����ϱ�
		
		
		//���ڿ��� ArrayList�� �־��
		
		ArrayList<String> sArr=new ArrayList<String>();
        
		// ��� �� �� �ٳ��� �Է�(����)�ϱ�
		
		sArr.add("���");
		
		sArr.add("��");
		
		sArr.add("��");
		
		sArr.add("�ٳ���");
		
		sArr.add("���");
		
		sArr.add("���");
		
		//�ְ� �ٳ��� ���̿� ���ξ��� �ֱ�
		
		 sArr.add(3, "���ξ���");
		 sArr.add(1, "�޷�");
		 
		 // ��ü ����ϱ�
		 
		 for(int i=0 ; i<sArr.size();i++) {
			 System.out.println(sArr.get(i)+ " ");
		 }
		
		 // ���� õ�������� �����ϱ�
		 
		 sArr.set(3,"õ����");
		 sArr.remove(5);
		 
		 // ���ξ����� �ֽ��ϱ�?
		 
		 if (sArr.contains("���ξ���")) {
			 System.out.println("�ֽ��ϴ�");
		 }else {
			 System.out.println("�����ϴ�");
		 } 
		 
		 if(sArr.contains("���") && sArr.contains("��")) {
			System.out.println("�ֽ��ϴ�");
		 } else {
			 System.out.println("�����ϴ�");
		 }
		 
		 
		 //���Կ� ������ ��� ������?
		 // �迭 ����Ʈ�� ����ֳ���? isEmpty()
		 // ���Կ� ������ ������ ��� ġ���ּ���
		 
		 
		 if (sArr.isEmpty()) {
			 sArr.clear(); //��Ҹ� ��� �� �����
			 System.out.println("���� ������ ��� ġ�����ϴ�.");
		 }
		 
		 
	
		
	} //main

} // class
