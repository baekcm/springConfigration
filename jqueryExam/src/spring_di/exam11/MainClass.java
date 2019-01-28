package spring_di.exam11;

import java.util.Scanner;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class MainClass {

	public static void main(String[] args) {
		
		Scanner scanner = new Scanner(System.in);
		
		String config = null;
		String str = scanner.next();
		
		config = ("dev".equals(str)) ? "dev" : "real";

		scanner.close();
		
		AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext();
		ctx.getEnvironment().setActiveProfiles(config);
		ctx.register(ApplicationConfigDev.class, ApplicationConfigReal.class);
		
		ctx.refresh();
		
		ServerInfo info = ctx.getBean("serverInfo", ServerInfo.class);
		System.out.println("ip : "+ info.getIpNum());
		System.out.println("port : "+ info.getPortNum());
		
		ctx.close();
	}

}
