package spring_di.exam03;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

//--- @Configuration : '�� Ŭ������ ������ ������ ���Ǵ� Ŭ���� �Դϴ�.' ��� ����� �ִ� ������̼�.
@Configuration
public class ApplicationConfig {

	@Bean
	public Student student1() {
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("����");
		hobbys.add("�丮");
		
		Student student = new Student("ȫ�浿", "20", hobbys);
		student.setHeight(180);
		student.setWeight(78);
		
		return student;
	}
	
	@Bean
	public Student student2() {
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("����");
		hobbys.add("���ǰ���");
		
		Student student = new Student("����", "21", hobbys);
		student.setHeight(159);
		student.setWeight(46);
		
		return student;
	}
	
}
