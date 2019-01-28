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

	<!-- event.preventDefault(); : a태그를 클릭했을때 페이지 이동을 하는 기본이벤트를 제거 -->
	<!-- event.stopPropagation(); : h1태그 안에 있는 a를 클릭했을때 h1까지 이벤트가 전달되는 것을 제거 -->
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