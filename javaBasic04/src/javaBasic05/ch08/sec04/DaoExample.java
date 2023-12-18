package javaBasic05.ch08.sec04;

public class DaoExample {

public static void deWork(DataAccessObject dao) {

		dao.select();
		
		dao.insert();
		
		dao.update();
		
		dao.delete();

}
		public static void main(String[] args) {

			// TODO Auto-generated method stub
		
			dbwork(new OracleDao());
			dbwork(new MySqlDao());
			
	} //main

} //class

interface DataAccessObject{
	void select();
	void insert();
	void update();
	void delete();
}

class MySqlDao implements DataAccessObject{

	@Override
	public void select() {
		System.out.println("MySql DB���� �˻�" );
		
	}

	@Override
	public void insert() {
		System.out.println("MySql DB���� ����");
		
	}

	@Override
	public void update() {
		System.out.println("MySql DB���� ����");
		
	}

	@Override
	public void delete() {
		System.out.println("MySql DB���� ����");
		
	}
	
}

class OracleDao implements DataAccessObject{

	@Override
	public void select() {
		System.out.println("Oracle DB���� �˻�");
		
	}

	@Override
	public void insert() {
		System.out.println("Oracle DB���� ����");
		
	}

	@Override
	public void update() {
		System.out.println("Oracle DB���� ����");
		
	}

	@Override
	public void delete() {
		System.out.println("Oracle DB���� ����");
	}
	
}








