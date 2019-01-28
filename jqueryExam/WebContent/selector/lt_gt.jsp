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

	<table border="1">
  		<tr>
  			<td>TD #0</td>
  			<td>TD #1</td>
  			<td>TD #2</td>
  		</tr>
  		<tr>
  			<td>TD #3</td>
  			<td>TD #4</td>
  			<td>TD #5</td>
  		</tr>
  		<tr>
  			<td>TD #6</td>
  			<td>TD #7</td>
  			<td>TD #8</td>
  		</tr>
	</table>

	<script type="text/javascript">
	$( "td:lt(4)" ).css( "backgroundColor", "yellow" );
	$( "td:lt(-2)" ).css( "color", "red" );
	//$( "td:gt(4)" ).css( "backgroundColor", "yellow" );
	//$( "td:gt(-2)" ).css( "color", "red" );
	</script>

</body>
</html>