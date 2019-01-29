package spring_di.exam12;

import org.aspectj.lang.ProceedingJoinPoint;

public class LogAop {

	//--- Proxy : 대행자
	//--- Joinpoint : Advice 를 적용해야 되는 부분. 핵심기능. (ex. 필드, 메소드[스프링에서는 메소드만 해당])
	public Object loggerAop(ProceedingJoinPoint joinpoint) throws Throwable {
		
		//--- joinpoint.getSignature().toShortString() : 어떤 메소드인지 출력.
		String signatureStr = joinpoint.getSignature().toShortString();
		System.out.println(signatureStr + " is start.");
		long startTime = System.currentTimeMillis();
		
		try {
			//--- joinpoint.proceed() : 핵심 기능을 실행한다.
			Object obj = joinpoint.proceed();
			return obj;
		} finally {
			long endTime = System.currentTimeMillis();
			System.out.println(signatureStr + " is finished.");
			System.out.println(signatureStr + " 경과 시간 : "+ (endTime - startTime));
		}
		
	}
	
}
