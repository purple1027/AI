import java.time.LocalDateTime;
import java.util.LinkedList;

public class LinkedListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	LinkedList<Board> BoardList=new LinkedList<Board>();
	Board b1=new Board(1,"����1","����1","ȫ�浿",LocalDateTime.now());
	Board b2=new Board(2,"����2","����2","�̼���",LocalDateTime.now());
	Board b3=new Board(3,"����3","����3","�ְ��",LocalDateTime.now());	
	
	BoardList.add(b1);	
	BoardList.add(b2);		
	BoardList.add(b3);
	
	System.out.println(BoardList.get(0).writter);
	System.out.println(BoardList.get(1).title);
	
	
	//0�� �ε����� b0�� �����ϼ���
	
	Board b0=new Board(0,"����0","����0","������",LocalDateTime.now());
	BoardList.add(0, b0);
	
	//�ְ�̰� �ֽ��ϱ�?
	
	Board findAddress=null;
	for (int i=0;1<BoardList.size();i++) {
		System.out.println(BoardList.get(i).writter);
		if(BoardList.get(i).writter.equals("�ְ��")){
		System.out.println("�ֽ��ϴ�.");
		
		findAddress=BoardList.get(i);
		
	
	
	// �ְ�̾��� �Խñ� ������ ã������
	
	
		System.out.println("ã�»�� �ְ�̾��� �ۼ��� �Խñ� ������?"+findAddress.content);
		
		}
	}
	
	
	
	
	
	
	} //main

} //class

class Board{
	
	int no; //�Խ��� ��ȣ
	String title; 
	String contents;
	String writter;
	LocalDateTime writeDate;
	
	public Board(int no, String title, String contents, String writter, LocalDateTime writeDate) {
		super();
		this.no = no;
		this.title = title;
		this.contents = contents;
		this.writter = writter;
		this.writeDate = writeDate;
	}
	
	
	
}