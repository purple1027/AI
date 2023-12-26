package javaApp1.ch12.sec07;

import java.util.TreeSet;

public class ComparableEx2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		Board b1=new Board(1,"제목1","작성자1");
		Board b2=new Board(1,"제목8","작성자9");
		Board b3=new Board(1,"제목0","작성자10");
		Board b4=new Board(1,"제목2","작성자8");
		
		
		TreeSet<Board> ts=new TreeSet<Board>();
		ts.add(b1);
		ts.add(b2);
		ts.add(b3);
		ts.add(b4);
		
		
		for (Board b:ts) {
			System.out.println(b);

	}
		
		//번호 순서대로 나오게 해 보세요
		
		
		
		
		
	} //main

} //class

class Board implements Comparable<Board>{
	
	Integer no; 
	String title;
	String writer;
	
	public Board(Integer no, String title, String writer) {
		super();
		this.no = no;
		this.title = title;
		this.writer = writer;
	}
	
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return no+""+title+""+writer;	
	}
	
	@Override
	public int compareTo(Board o) {
	 if(no==o.no) return 0;
	 else if (no<o.no) return -1;
	 else return 1;
	}
	
} //class
