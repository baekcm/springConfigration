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
	  	<input type="checkbox" name="a">
	  	<span>Mary</span>
	</div>
	
	<div>
	  	<input type="checkbox" name="b">
	  	<span>lcm</span>
	</div>
	
	<div>
	  	<input type="checkbox" name="c" checked="checked">
	  	<span>Peter</span>
	</div>
	
	<script type="text/javascript">
	$( "input:not(:checked) + span" )
	.css( "background-color", "yellow" );
	
	$( "input").attr( "disabled", "disabled" );
	</script>

</body>
</html>