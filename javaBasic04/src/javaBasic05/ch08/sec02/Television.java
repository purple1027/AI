package javaBasic05.ch08.sec02;

public class Television implements RemoteControl{
	
	private int volume;

	@Override
	public void turnOn() {
		System.out.println("TV�� �մϴ�");
		
	}

	@Override
	public void turnOff() {
		System.out.println("TV�� ���ϴ�");
	}

	@Override
	public void setVolume(int volume) {
		if(volume=RemoteControl.MAX_VOLUME);
		
		
	}

}
