<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	span {
    	color: blue;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<p><span>Hello</span>, how are you?</p>
	<p>Me? I'm <span>good</span>.</p>
	<div>Did you <span>eat</span> yet?</div>

	<script type="text/javascript">
	$( "p" ).find( "span" ).css( "color", "red" );
	</script>

</body>
</html>