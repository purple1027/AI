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
	
	// �ʵ带 �����ϴµ� �θ�Ÿ�� DB��� �ʵ� ����
	
	DB db;
	public void dbRun() {
		db.runDb();
		
	}
	
	
}