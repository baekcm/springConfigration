package spring_di.exam06;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

//--- Interface Implement 를 활용한 방법.
//--- bean 생성 초기화하는 과정 또는 소멸하는 과정에서 어떠한 작업을 하기 위해 
//--- InitializingBean(생성초기화), DisposableBean(소멸) Interface 구현.
public class Student implements InitializingBean, DisposableBean {

	private String name;
	private String age;
	
	public Student(String name, String age) {
		super();
		this.name = name;
		this.age = age;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAge() {
		return age;
	}

	public void setAge(String age) {
		this.age = age;
	}

	//--- bean 생성 초기화하는 과정에서 (어떠한 작업을 위해) 호출된다.
	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("afterPropertiesSet()");
	}
	
	//--- bean 소멸하는 과정에서 (어떠한 작업을 위해) 호출된다.
	@Override
	public void destroy() throws Exception {
		System.out.println("destroy()");
	}

}
