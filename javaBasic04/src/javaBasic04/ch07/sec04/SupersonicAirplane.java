package javaBasic04.ch07.sec04;

public class SupersonicAirplane extends Airplane{
	
	public static final int NORMAL=1;
	public static final int SUPERSONIC=2;
	public int flymode=NORMAL;
	
	@Override
	public void fly() {

		in(flyMode==SUPERSONIC) {System.out.println("������ �����մϴ�");
		
	} else {super.fly() ;

	
}
	
	