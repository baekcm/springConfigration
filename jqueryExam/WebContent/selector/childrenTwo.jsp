<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	body {
    	font-size: 16px;
    	font-weight: bolder;
  	}

  	p {
    	margin: 10px 0;
  	}
  	</style>
  	
  	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<div>
	  	<span>Hello</span>
	  	<p class="selected">Hello Again</p>
	  	<div class="selected">And Again</div>
	  	<p>And One Last Time</p>
	</div>
	
	<script>
		$( "div" ).children( ".selected" ).css( "color", "blue" );
	</script>

</body>
</html>