package javaBasic05.ch08.sec03;

public class CarExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		CarRun carRun=new CarRun();
		
		Bus bus=new Bus();
		carRun.drive(bus);
		
		Taxi taxi=new Taxi();
		carRun.drive(taxi);
		
		Train train=new Train();
		carRun.drive(train);
	}

}
