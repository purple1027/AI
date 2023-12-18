package javaBasic05.ch08.sec04;

public class È®ÀÎ¹®Á¦9Àå5¹ø {

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
			return"¾ß¿Ë";
		}
    	   
       }
       class Dog implements Soundable {

		@Override
		public String sound() {
			return "¸Û¸Û";
		}
    	   
       }
       
       
       
    interface Remocon{
	public void powerOn(); 
	
}
    
  class TV implements Remocon{

	@Override
	public void powerOn() {
		System.out.println("TV¸¦ ÄÕ´Ï´Ù");
		
	}
	  
  }