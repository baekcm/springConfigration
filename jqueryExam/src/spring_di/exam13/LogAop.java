package spring_di.exam13;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class LogAop {

	//--- AOP Annotation 사용 시 Pointcut 이라는 메소드를 하나 가지고 있어야 한다.(내용이 없어도 된다.)
	@Pointcut("within(spring_di.exam13.*)")
	private void pointcutMethod() {}
	
	//--- Proxy : 대행자
	//--- Joinpoint : Advice 를 적용해야 되는 부분. 핵심기능. (ex. 필드, 메소드[스프링에서는 메소드만 해당])
	@Around("pointcutMethod()")
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
	
	//--- @Pointcut Annotation 을 이용하지 않는 방법.
	//--- 핵심 기능이 실행되기 전에 한번 메소드가 실행된다.
	@Before("within(spring_di.exam13.*)")
	public void beforeAdvice() {
		System.out.println("beforeAdvice");
	}
	
}
