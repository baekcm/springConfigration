<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	p {
    	margin-left: 10px;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p>Hello</p><p>2nd Paragraph</p>

	<!-- 대상이 시작되는 x좌표와 y좌표 값을 리턴 -->
	<!-- 선택된 대상의 위치 반환하고 그 위치를 변경하고 싶을때 사용 -->
	<script type="text/javascript">
	var p = $( "p:last" );
	var offset = p.offset();
	p.html( "left: " + offset.left + ", top: " + offset.top );
	</script>

</body>
</html>