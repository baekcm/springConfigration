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

	<dl>
	  	<dt id="term-1">term 1</dt>
	  	<dd>definition 1-a</dd>
	  	<dd>definition 1-b</dd>
	  	<dd>definition 1-c</dd>
	  	<dd>definition 1-d</dd>
	
	  	<dt id="term-2">term 2</dt>
	  	<dd>definition 2-a</dd>
	  	<dd>definition 2-b</dd>
	  	<dd>definition 2-c</dd>
	
	  	<dt id="term-3">term 3</dt>
	  	<dd>definition 3-a</dd>
	  	<dd>definition 3-b</dd>
	</dl>
	
	<script type="text/javascript">
	$( "#term-2" )
	.prevUntil( "dt" )
	.css( "background-color", "red" );
	
	var term1 = document.getElementById( "term-1" );
	$( "#term-3" )
	.prevUntil( term1, "dd" )
	.css( "color", "green" );
	</script>

</body>
</html>