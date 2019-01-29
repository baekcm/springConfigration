AOP 용어

- Aspect : 공통 기능
- Advice : Aspect 의 기능 자체
- Jointpoint : Advice 를 적용해야 되는 부분 (ex. 필드, 메소드[스프링에서는 메소드만 해당])
- Pointcut : Jointpoint 의 부분으로 실제로 Advice 가 적용된 부분
- Weaving : Advice 를 핵심 기능에 적용하는 행위

스프링에서 AOP 구현 방법 : proxy 를 이용한다.

     호출부            =>      Proxy		=>		Target
(client)		  (대행)			    (핵심기능)