package spring_di.exam01;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

	private static GenericXmlApplicationContext ctx;
	//private static ApplicationContext ctx;

	public static void main(String[] args) {
		
		String configLocation = "classpath:applicationCTX.xml";
		ctx = new GenericXmlApplicationContext(configLocation);
		
		StudentInfo studentInfo = ctx.getBean("studentInfo", StudentInfo.class);
		studentInfo.getStudent();
		
		Student student = ctx.getBean("student2", Student.class);
		studentInfo.setStudent(student);
		studentInfo.getStudent();

	}

}
