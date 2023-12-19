
public class EqualEx {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
 Student s1=new Student("a123","p1234");
 System.out.println(s1.hashCode());
 Student s2=new Student("a123","p1235");
 System.out.println(s2.hashCode());
 
 
 
	} //main

} //class


class Student {
	
	
	String id;
	String pwd;
	
	public Student(String id, String pwd) {
		// TODO Auto-generated constructor stub
	}
	
	@Override
	public int hashCode() {
		// TODO Auto-generated method stub
		return id.hashCode();
	}
	
	@Override
	public boolean equals(Object obj) {
		if (obj instanceof Student) {
		Student st=(Student)obj;
		}

		if(this.id.equals(st.id)&&this.pwd.equals(st.pwd))
		return super.equals(obj);
	}
	
	
}


