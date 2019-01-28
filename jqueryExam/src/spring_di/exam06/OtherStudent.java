package spring_di.exam06;

import javax.annotation.PostConstruct;
import javax.annotation.PreDestroy;

//--- Annotation �� Ȱ���� ���.
//--- bean ���� �ʱ�ȭ�ϴ� ���� �Ǵ� �Ҹ��ϴ� �������� ��� �۾��� �ϱ� ���� 
//--- @PostConstruct(�����ʱ�ȭ), @PreDestroy(�Ҹ�) Annotation �� method ���� ���.
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
	
	//--- bean ���� �ʱ�ȭ�ϴ� �������� (��� �۾��� ����) ȣ��ȴ�.
	@PostConstruct
	public void initMethod() {
		System.out.println("initMethod()");
	}
	
	//--- bean �Ҹ��ϴ� �������� (��� �۾��� ����) ȣ��ȴ�.
	@PreDestroy
	public void destroyMethod() {
		System.out.println("destroyMethod()");
	}
	
}
