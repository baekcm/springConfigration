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