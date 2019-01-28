<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

	<style>
  	img {
    	padding: 10px;
  	}

  	div {
	    color: red;
	    font-size: 24px;
  	}
  	</style>

	<script src="https://code.jquery.com/jquery-1.10.2.js"></script>

</head>
<body>

	<input type="checkbox" checked="checked">
  	<input type="checkbox">
  	<input type="checkbox">
  	<input type="checkbox" checked="checked">
	
	<script type="text/javascript">
	$( "input[type='checkbox']" ).prop({
	  	disabled: true
	});
	</script>

</body>
</html>