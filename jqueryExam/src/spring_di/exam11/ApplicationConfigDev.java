package spring_di.exam11;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Profile;

@Configuration
@Profile("dev")
public class ApplicationConfigDev {

	@Bean
	public ServerInfo serverInfo() {
		
		ServerInfo info = new ServerInfo();
		
		info.setIpNum("127.0.0.1");
		info.setPortNum("80");
		
		return info;
		
	}
	
}
