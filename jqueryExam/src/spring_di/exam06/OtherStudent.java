package spring_di.exam06;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

//--- Annotation 을 활용한 방법.
//--- bean 생성 초기화하는 과정 또는 소멸하는 과정에서 어떠한 작업을 하기 위해 
//--- @PostConstruct(생성초기화), @PreDestroy(소멸) Annotation 을 method 위에 명시.
public class OtherStudent {

	private String name;
	private String age;
	
	public OtherStudent(String name, String age) {
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
	@PostConstruct
	public void initMethod() {
		System.out.println("initMethod()");
	}
	
	//--- bean 소멸하는 과정에서 (어떠한 작업을 위해) 호출된다.
	@PreDestroy
	public void destroyMethod() {
		System.out.println("destroyMethod()");
	}
	
}
