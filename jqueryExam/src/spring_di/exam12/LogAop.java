package spring_di.exam12;

import org.aspectj.lang.ProceedingJoinPoint;

public class LogAop {

	//--- Proxy : ������
	//--- Joinpoint : Advice �� �����ؾ� �Ǵ� �κ�. �ٽɱ��. (ex. �ʵ�, �޼ҵ�[������������ �޼ҵ常 �ش�])
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
	
}
