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

	<a href="http://jquery.com">default click action is prevented</a>
	<div id="log"></div>

	<!-- event.preventDefault(); : a�±׸� Ŭ�������� ������ �̵��� �ϴ� �⺻�̺�Ʈ�� ���� -->
	<!-- event.stopPropagation(); : h1�±� �ȿ� �ִ� a�� Ŭ�������� h1���� �̺�Ʈ�� ���޵Ǵ� ���� ���� -->
	<script>
	$( "a" ).click(function( event ) {
	  	event.preventDefault();
	  	$( "<div>" )
	    .append( "default " + event.type + " prevented" )
	    .appendTo( "#log" );
	});
	</script>

</body>
</html>