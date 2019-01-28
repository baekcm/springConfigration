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

	<button>클릭</button>

	<!-- jQuery는 "$" 기호를  JQuery의 바로가기 기호로 사용하고 있다. -->
	<!-- 하지만 다른 자바스크립트 프레임워크에서도 "$" 기호를 사용할 경우가 있을 경우에 겹치게 되어 제대로 동작을 하지 않는다 -->
	<!-- 이때 jQuery의 바로가기 기호를 제거하거나 다른 기호나 문자로 변경할 때 사용 -->
	<script type="text/javascript">
	$.noConflict(); // jQuery 바로가기 기호 삭제
	//var jq = $.noConflict(); // jQuery 바로가기 기호 변경

	jQuery("button").click(function(){ // jq("button").click(function(){
		alert();
	});
	
	</script>

</body>
</html>