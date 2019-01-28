package spring_di.exam06;

import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {
	
	private static GenericXmlApplicationContext ctx;

	public static void main(String[] args) {
		
		ctx = new GenericXmlApplicationContext();
		
		ctx.load("classpath:applicationCTX_exam06.xml");
		
		ctx.refresh();
		
		ctx.close();

	}

}
