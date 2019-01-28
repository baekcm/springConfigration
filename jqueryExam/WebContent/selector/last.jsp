<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	.highlight {
    	background-color: yellow;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p>
		<span>Look:</span> 
		<span>This is some text in a paragraph.</span> 
		<span>This is a note about it.</span>
	</p>

	<script type="text/javascript">
	$( "p span" ).last().addClass( "highlight" );
	</script>

</body>
</html>