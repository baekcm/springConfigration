<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	p {
    	background: yellow;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	
	<p>there, friend!</p>
	<p>amigo!</p>
	
	<script type="text/javascript">
	$( "p" ).prepend( "<b>Hello </b>" );
	</script>
	
	<!-- 
	<p> is what was said.</p>
	<b>Hello</b>
	
	<script type="text/javascript">
	$( "p" ).prepend( $( "b" ) );
	</script>
	 -->

</body>
</html>