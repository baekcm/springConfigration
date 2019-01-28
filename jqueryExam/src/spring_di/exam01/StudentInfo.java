package spring_di.exam01;

public class StudentInfo {

	private Student student;
	
	public StudentInfo(Student student) {
		this.student = student;
	}
	
	public void getStudent() {
		if(student != null) {
			System.out.println("�̸� : "+ student.getName());
			System.out.println("���� : "+ student.getAge());
			System.out.println("�г� : "+ student.getGradeNum());
			System.out.println("�� : "+ student.getClassNum());
		}
	}
	
	public void setStudent(Student student) {
		this.student = student;
	}
	
}
