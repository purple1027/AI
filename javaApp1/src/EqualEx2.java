
public class EqualEx2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Netplex n1=new Netplex("100","123","p123");

		Netplex n2=new Netplex("100","124","p1234");
		Netplex n3=new Netplex("100","125","p1235");
		
		Netplex n4=new Netplex("100","126","p1237");
		Netplex n5=new Netplex("100","125","p1235");
		Netplex n6=new Netplex("100","126","p1237");
		
		
		if(n2.equals(n6)){
			System.out.println("°°Àº°´Ã¼");
		}else {
			System.out.println("´Ù¸¥°´Ã¼");
		}
		
		
	}//main

} //class


class Netplex{
	String Key;
	public Netplex(String key, String id, String pwd) {
		super();
		Key = key;
		this.id = id;
		this.pwd = pwd;
	}
	String id;
	String pwd;
	
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return Key.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if(obj instanceof Netplex) {
			Netplex	np=(Netplex)obj;
			if(this.Key.equals(np.Key)) {
				return true;
				
			}
		}
		return false;
	}
	
}

