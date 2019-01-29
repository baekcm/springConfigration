AOP 용어

- Aspect : 공통 기능
- Advice : Aspect 의 기능 자체
- Jointpoint : Advice 를 적용해야 되는 부분 (ex. 필드, 메소드[스프링에서는 메소드만 해당])
- Pointcut : Jointpoint 의 부분으로 실제로 Advice 가 적용된 부분
- Weaving : Advice 를 핵심 기능에 적용하는 행위

스프링에서 AOP 구현 방법 : proxy 를 이용한다.

     호출부            =>      Proxy		=>		Target
(client)		  (대행)			    (핵심기능)


[Advice 종류]

<aop:before> : 메소드 실행 전에 advice 실행
<aop:after-returning> : 정상적으로 메소드 실행 후에 advice 실행
<aop:after-throwing> : 메소드 실행 중 exception 발생 시 advice 실행
<aop:after> : 메소드 실행 중 exception 이 발생하여도 advice 실행
<aop:around> : 메소드 실행 전/후 및 exception 발생하여도 advice 실행


[AspectJ Pointcut 표현식]

* : 모든
. : 현재
.. : 0개 이상


------------------------------------------------------------------------------------------------------------------------
Execution : 

@Pointcut("execution(public void get*(..))") // public void 인 모든 get 메소드(파라미터 갯수는 상관없이)
@Pointcut("execution(spring_di.exam13.*.*())") // spring_di.exam13 패키지에 파라미터가 없는 모든 메소드
@Pointcut("execution(spring_di.exam13..*.*())") // spring_di.exam13 패키지 & spring_di.exam13 하위 패키지에 파라미터가 없는 모든 메소드
@Pointcut("execution(spring_di.exam13.LogAop.*())") // spring_di.exam13.LogAop 안의 모든 메소드(특정 클래스를 지정)

------------------------------------------------------------------------------------------------------------------------
within :

@Pointcut("within(spring_di.exam13.*)") // spring_di.exam13 패키지 안에 있는 모든 메소드
@Pointcut("within(spring_di.exam13..*)") // spring_di.exam13 패키지 및 하위 패키지 안에 있는 모든 메소드
@Pointcut("within(spring_di.exam13.LogAop)") // spring_di.exam13.LogAop 모든 메소드

------------------------------------------------------------------------------------------------------------------------

bean

@Pointcut("bean(student)") // student 빈에만 적용
@Pointcut("bean(*ker)") // ~ker 로 끝나는 빈에만 적용


------------------------------------------------------------------------------------------------------------------------