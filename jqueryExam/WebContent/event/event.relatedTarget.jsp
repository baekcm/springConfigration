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
	
	<!-- 몇몇 마우스 이벤트의 경우, 이벤트가 발생했을 때, 커서가 들어가거나 나온 엘리먼트를 가리킨다. -->
	<script type="text/javascript">
		$( "a" ).mouseout(function( event ) {
		  	alert( event.relatedTarget.nodeName );
		});
	</script>

</body>
</html>