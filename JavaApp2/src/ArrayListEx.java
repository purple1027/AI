import java.util.ArrayList;

public class ArrayListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		int[] iarr= {1,2};
		for (int i=0; i<iarr.length;i++) {
			System.out.println(iarr[i]);
		}
		
	
		
		// list의 구현 클래스인 Arrayslist를 이용
		
		ArrayList<Integer> arrList=new ArrayList<Integer>();
		
		//<E> 제네릭, 자료의 형을 미리 지정하는것.

		arrList.add(1);
		arrList.add(2);
		
		System.out.println(arrList.size());
		
		//3,4, 추가하고 싶다.
		
		arrList.add(3);
		arrList.add(4);
		
		// 0번 인넥스에 -7을 넣기
		
		arrList.add(0, -7);
		
		//전체출력하고 싶다 
		
		for(int i=0;i<arrList.size();i++) {
			System.out.println(arrList.get(i));
		} // 인덱스 번호에 있는 요소를 출력하기
		
		
		//문자열을 ArrayList에 넣어보기
		
		ArrayList<String> sArr=new ArrayList<String>();
        
		// 사과 배 귤 바나나 입력(삽입)하기
		
		sArr.add("사과");
		
		sArr.add("배");
		
		sArr.add("귤");
		
		sArr.add("바나나");
		
		sArr.add("사과");
		
		sArr.add("사과");
		
		//귤과 바나나 사이에 파인애플 넣기
		
		 sArr.add(3, "파인애플");
		 sArr.add(1, "메론");
		 
		 // 전체 출력하기
		 
		 for(int i=0 ; i<sArr.size();i++) {
			 System.out.println(sArr.get(i)+ " ");
		 }
		
		 // 귤을 천혜향으로 수정하기
		 
		 sArr.set(3,"천혜향");
		 sArr.remove(5);
		 
		 // 파인애플이 있습니까?
		 
		 if (sArr.contains("파인애플")) {
			 System.out.println("있습니다");
		 }else {
			 System.out.println("없습니다");
		 } 
		 
		 if(sArr.contains("사과") && sArr.contains("배")) {
			System.out.println("있습니다");
		 } else {
			 System.out.println("없습니다");
		 }
		 
		 
		 //가게에 물건이 모두 없나요?
		 // 배열 리스트가 비어있나요? isEmpty()
		 // 가게에 물건이 있으면 모두 치워주세요
		 
		 
		 if (sArr.isEmpty()) {
			 sArr.clear(); //요소를 모두 다 지우기
			 System.out.println("가게 물건을 모두 치웠습니다.");
		 }
		 
		 
	
		
	} //main

} // class
