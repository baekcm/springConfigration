package spring_di.exam05;

import java.util.ArrayList;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

//--- @Configuration : '이 클래스는 스프링 설정에 사용되는 클래스 입니다.' 라고 명시해 주는 어노테이션.
@Configuration
//--- @ImportResource : XML 설정 파일을 Import 하여 같이 사용하겠다.
@ImportResource("classpath:applicationCTX_exam05.xml")
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
	
}
