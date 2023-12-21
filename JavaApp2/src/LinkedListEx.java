import java.time.LocalDateTime;
import java.util.LinkedList;

public class LinkedListEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

	LinkedList<Board> BoardList=new LinkedList<Board>();
	Board b1=new Board(1,"제목1","내용1","홍길동",LocalDateTime.now());
	Board b2=new Board(2,"제목2","내용2","이순신",LocalDateTime.now());
	Board b3=new Board(3,"제목3","내용3","최경미",LocalDateTime.now());	
	
	BoardList.add(b1);	
	BoardList.add(b2);		
	BoardList.add(b3);
	
	System.out.println(BoardList.get(0).writter);
	System.out.println(BoardList.get(1).title);
	
	
	//0번 인덱스에 b0를 삽입하세요
	
	Board b0=new Board(0,"제목0","내용0","관리자",LocalDateTime.now());
	BoardList.add(0, b0);
	
	//최경미가 있습니까?
	
	Board findAddress=null;
	for (int i=0;1<BoardList.size();i++) {
		System.out.println(BoardList.get(i).writter);
		if(BoardList.get(i).writter.equals("최경미")){
		System.out.println("있습니다.");
		
		findAddress=BoardList.get(i);
		
	
	
	// 최경미씨의 게시글 내용을 찾으세요
	
	
		System.out.println("찾는사람 최경미씨가 작성한 게시글 내용은?"+findAddress.content);
		
		}
	}
	
	
	
	
	
	
	} //main

} //class

class Board{
	
	int no; //게시판 번호
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