<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>텍스트 포함 요소를 선택</title>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>John Resig</div>
	<div>George Martin</div>
	<div>Malcom John Sinclair</div>
	<div>J. Ohn</div>

	<script>
		$( "div:contains('John')" ).css( "text-decoration", "underline" );
	</script>

</body>
</html>