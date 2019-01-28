package spring_di.exam10;

import java.util.Scanner;

import org.springframework.context.support.GenericXmlApplicationContext;

public class MainClass {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		String config = null;
		String str = scanner.next();
		
		config = ("dev".equals(str)) ? "dev" : "real";

		scanner.close();
		
		GenericXmlApplicationContext ctx = new GenericXmlApplicationContext();
		ctx.getEnvironment().setActiveProfiles(config);
		ctx.load("applicationCTX_dev.xml", "applicationCTX_real.xml");
		
		ctx.refresh();
		
		ServerInfo info = ctx.getBean("serverInfo", ServerInfo.class);
		System.out.println("ip : "+ info.getIpNum());
		System.out.println("port : "+ info.getPortNum());
		
		ctx.close();
	}

}
