import java.util.Vector;

public class vectorEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		//쓰레드 : 여러개의 CPU를 사용하면서 멀티 프로그래밍 하는 것이다.
		//vector 컬랙션은 스레드의 자료를 담기위한 구조. 이용분야는 스레드로 멀티프로그래밍 할 때 순서가 있고 중복저장할 수 있는 자료구조.
		
		Vector<Double> dArr=new Vector<Double>();
		
		dArr.add(10.4);
		dArr.add(8.8);
		dArr.add(9.4);
		dArr.add(3.7);
		
		
		dArr.add(2, 7.9);
		
		//3.7이 있습니까?
		
		if (dArr.contains(3.7)) {
			System.out.println("있습니다");
			
		}else {System.out.println("없습니다");
		}
		//10.4를 삭제하기
		dArr.remove(0);

//		//전체출력하기
//		for(int i=0;i<dArr.size();i++) {
//			System.out.println(dArr.get(i)+" ");
		}
		
	
	
	
		
	} //main

 //class
