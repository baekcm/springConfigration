package spring_di.exam03;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

//--- @Configuration : '이 클래스는 스프링 설정에 사용되는 클래스 입니다.' 라고 명시해 주는 어노테이션.
@Configuration
public class ApplicationConfig {

	@Bean
	public Student student1() {
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("수영");
		hobbys.add("요리");
		
		Student student = new Student("홍길동", "20", hobbys);
		student.setHeight(180);
		student.setWeight(78);
		
		return student;
	}
	
	@Bean
	public Student student2() {
		ArrayList<String> hobbys = new ArrayList<String>();
		hobbys.add("독서");
		hobbys.add("음악감상");
		
		Student student = new Student("예나", "21", hobbys);
		student.setHeight(159);
		student.setWeight(46);
		
		return student;
	}
	
}
