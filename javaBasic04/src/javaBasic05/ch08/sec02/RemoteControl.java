package javaBasic05.ch08.sec02;

//������ �߻� �޼ҵ�� �����Ѵ�
public interface RemoteControl {

	// ��� ����. �������̽��� ����ۿ� ���ü��� �ִ�
	final static int MAX_VOLUME=10;
	final static int MIN_VOLUME=0;
	
	
	// �߻�޼ҵ� ����. abstract ��������
	void turnOn();
	void turnOff();
	void setVolume(int volum);
	
	
	
}
