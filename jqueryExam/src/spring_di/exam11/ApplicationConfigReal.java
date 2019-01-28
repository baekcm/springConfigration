package spring_di.exam11;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Configuration
@Profile("real")
public class ApplicationConfigReal {

	@Bean
	public ServerInfo serverInfo() {
		
		ServerInfo info = new ServerInfo();
		
		info.setIpNum("100.100.107.247");
		info.setPortNum("8090");
		
		return info;
		
	}
	
}
