package javaBasic04.ch07.sec13;

public class DBMAIN {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Connect myConnect=new Connect();
		
		
		
		
		myConnect.db=new Oracle();
		myConnect.dbrun();
		
		
		myConnect.db=new MySql();
		myConnect.MySql();
	
		
		myConnect.db=new MonggoDb();
		myConnect.MySql();
		
		
	} //main

} //class

class connect{
	
	// 필드를 선언하는데 부모타입 DB라는 필드 선언
	
	DB db;
	public void dbRun() {
		db.runDb();
		
	}
	
	
}