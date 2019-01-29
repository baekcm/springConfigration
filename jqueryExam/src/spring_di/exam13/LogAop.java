package spring_di.exam13;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;

@Aspect
public class LogAop {

	//--- AOP Annotation ��� �� Pointcut �̶�� �޼ҵ带 �ϳ� ������ �־�� �Ѵ�.(������ ��� �ȴ�.)
	@Pointcut("within(spring_di.exam13.*)")
	private void pointcutMethod() {}
	
	//--- Proxy : ������
	//--- Joinpoint : Advice �� �����ؾ� �Ǵ� �κ�. �ٽɱ��. (ex. �ʵ�, �޼ҵ�[������������ �޼ҵ常 �ش�])
	@Around("pointcutMethod()")
	public Object loggerAop(ProceedingJoinPoint joinpoint) throws Throwable {
		
		//--- joinpoint.getSignature().toShortString() : � �޼ҵ����� ���.
		String signatureStr = joinpoint.getSignature().toShortString();
		System.out.println(signatureStr + " is start.");
		long startTime = System.currentTimeMillis();
		
		try {
			//--- joinpoint.proceed() : �ٽ� ����� �����Ѵ�.
			Object obj = joinpoint.proceed();
			return obj;
		} finally {
			long endTime = System.currentTimeMillis();
			System.out.println(signatureStr + " is finished.");
			System.out.println(signatureStr + " ��� �ð� : "+ (endTime - startTime));
		}
		
	}
	
	//--- @Pointcut Annotation �� �̿����� �ʴ� ���.
	//--- �ٽ� ����� ����Ǳ� ���� �ѹ� �޼ҵ尡 ����ȴ�.
	@Before("within(spring_di.exam13.*)")
	public void beforeAdvice() {
		System.out.println("beforeAdvice");
	}
	
}
