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

	<p>
		Click this paragraph to see it fade.
	</p>
	
	<p>
		Compare to this one that won't fade.
	</p>
	
	<script type="text/javascript">
	$( "p:first" ).click(function() {
	  	$( this ).fadeTo( "slow", 0.33 );
	});
	</script>

</body>
</html>