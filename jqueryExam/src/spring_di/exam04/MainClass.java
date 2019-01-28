package spring_di.exam04;

import org.springframework.context.support.AbstractApplicationContext;
import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {
	
	private static AbstractApplicationContext ctx;

	public static void main(String[] args) {
		
		String configLocation = "classpath:applicationCTX_exam04.xml";
		ctx = new GenericXmlApplicationContext(configLocation);
		
		Student student1 = ctx.getBean("student1", Student.class);
		System.out.println("�̸� : "+ student1.getName());
		System.out.println("���� : "+ student1.getAge());
		System.out.println("��� : "+ student1.getHobbys());
		System.out.println("���� : "+ student1.getHeight());
		System.out.println("������ : "+ student1.getWeight());
		
		Student student2 = ctx.getBean("student2", Student.class);
		System.out.println("�̸� : "+ student2.getName());
		System.out.println("���� : "+ student2.getAge());
		System.out.println("��� : "+ student2.getHobbys());
		System.out.println("���� : "+ student2.getHeight());
		System.out.println("������ : "+ student2.getWeight());
		
		ctx.close();
		
	}

}
