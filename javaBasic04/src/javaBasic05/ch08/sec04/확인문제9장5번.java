package javaBasic05.ch08.sec04;

public class Ȯ�ι���9��5�� {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
public static void printSound(Soundable soundable) {
	System.out.println(soundable.sound());
	
}
		
		Remocon r=new TV();
		r.powerOn();
		
		
		printSound(new Cat());
		printSound(new Dog());
		
		
		
	}

}
    
       interface Soundable{
       public String sound();
    }

       
       class Cat implements Soundable {

		@Override
		public String sound() {
			// TODO Auto-generated method stub
			return"�߿�";
		}
    	   
       }
       class Dog implements Soundable {

		@Override
		public String sound() {
			return "�۸�";
		}
    	   
       }
       
       
       
    interface Remocon{
	public void powerOn(); 
	
}
    
  class TV implements Remocon{

	@Override
	public void powerOn() {
		System.out.println("TV�� �մϴ�");
		
	}
	  
  }