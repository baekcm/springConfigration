AOP ���

- Aspect : ���� ���
- Advice : Aspect �� ��� ��ü
- Jointpoint : Advice �� �����ؾ� �Ǵ� �κ� (ex. �ʵ�, �޼ҵ�[������������ �޼ҵ常 �ش�])
- Pointcut : Jointpoint �� �κ����� ������ Advice �� ����� �κ�
- Weaving : Advice �� �ٽ� ��ɿ� �����ϴ� ����

���������� AOP ���� ��� : proxy �� �̿��Ѵ�.

     ȣ���            =>      Proxy		=>		Target
(client)		  (����)			    (�ٽɱ��)


[Advice ����]

<aop:before> : �޼ҵ� ���� ���� advice ����
<aop:after-returning> : ���������� �޼ҵ� ���� �Ŀ� advice ����
<aop:after-throwing> : �޼ҵ� ���� �� exception �߻� �� advice ����
<aop:after> : �޼ҵ� ���� �� exception �� �߻��Ͽ��� advice ����
<aop:around> : �޼ҵ� ���� ��/�� �� exception �߻��Ͽ��� advice ����


[AspectJ Pointcut ǥ����]

* : ���
. : ����
.. : 0�� �̻�


------------------------------------------------------------------------------------------------------------------------
Execution : 

@Pointcut("execution(public void get*(..))") // public void �� ��� get �޼ҵ�(�Ķ���� ������ �������)
@Pointcut("execution(spring_di.exam13.*.*())") // spring_di.exam13 ��Ű���� �Ķ���Ͱ� ���� ��� �޼ҵ�
@Pointcut("execution(spring_di.exam13..*.*())") // spring_di.exam13 ��Ű�� & spring_di.exam13 ���� ��Ű���� �Ķ���Ͱ� ���� ��� �޼ҵ�
@Pointcut("execution(spring_di.exam13.LogAop.*())") // spring_di.exam13.LogAop ���� ��� �޼ҵ�(Ư�� Ŭ������ ����)

------------------------------------------------------------------------------------------------------------------------
within :

@Pointcut("within(spring_di.exam13.*)") // spring_di.exam13 ��Ű�� �ȿ� �ִ� ��� �޼ҵ�
@Pointcut("within(spring_di.exam13..*)") // spring_di.exam13 ��Ű�� �� ���� ��Ű�� �ȿ� �ִ� ��� �޼ҵ�
@Pointcut("within(spring_di.exam13.LogAop)") // spring_di.exam13.LogAop ��� �޼ҵ�

------------------------------------------------------------------------------------------------------------------------

bean

@Pointcut("bean(student)") // student �󿡸� ����
@Pointcut("bean(*ker)") // ~ker �� ������ �󿡸� ����


------------------------------------------------------------------------------------------------------------------------