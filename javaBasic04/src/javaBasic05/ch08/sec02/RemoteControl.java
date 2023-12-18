package javaBasic05.ch08.sec02;

//역할을 추상 메소드로 구현한다
public interface RemoteControl {

	// 상수 생략. 인터페이스는 상수밖에 들어올수가 있다
	final static int MAX_VOLUME=10;
	final static int MIN_VOLUME=0;
	
	
	// 추상메소드 선언. abstract 생략가능
	void turnOn();
	void turnOff();
	void setVolume(int volum);
	
	
	
}
