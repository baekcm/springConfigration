<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	
	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>
		<a href="http://jquery.com">default click action is prevented</a>
	</div>
	
	<!-- ��� ���콺 �̺�Ʈ�� ���, �̺�Ʈ�� �߻����� ��, Ŀ���� ���ų� ���� ������Ʈ�� ����Ų��. -->
	<script type="text/javascript">
		$( "a" ).mouseout(function( event ) {
		  	alert( event.relatedTarget.nodeName );
		});
	</script>

</body>
</html>