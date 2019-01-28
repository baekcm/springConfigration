package spring_di.exam06;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

//--- Interface Implement �� Ȱ���� ���.
//--- bean ���� �ʱ�ȭ�ϴ� ���� �Ǵ� �Ҹ��ϴ� �������� ��� �۾��� �ϱ� ���� 
//--- InitializingBean(�����ʱ�ȭ), DisposableBean(�Ҹ�) Interface ����.
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

	//--- bean ���� �ʱ�ȭ�ϴ� �������� (��� �۾��� ����) ȣ��ȴ�.
	@Override
	public void afterPropertiesSet() throws Exception {
		System.out.println("afterPropertiesSet()");
	}
	
	//--- bean �Ҹ��ϴ� �������� (��� �۾��� ����) ȣ��ȴ�.
	@Override
	public void destroy() throws Exception {
		System.out.println("destroy()");
	}

}
